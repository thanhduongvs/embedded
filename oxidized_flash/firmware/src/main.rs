#![no_std]
#![no_main]
#![deny(unsafe_code)]

extern crate panic_halt;

extern crate atsamd_hal as hal;

use cortex_m_rt::entry;

use hal::clock::GenericClockController;
use hal::delay::Delay;
use hal::gpio::{Floating, GpioExt, Input, OpenDrain, Output, Port, PullUp};
use hal::prelude::*;
use hal::sercom::{PadPin, SPIMaster2};
use hal::target_device as pac;
use hal::time::KiloHertz;
use hal::*;

use apa102_spi::Apa102;
use smart_leds::SmartLedsWrite;
use smart_leds_trait::RGB8;

define_pins!(
    struct Pins,
    target_device: target_device,

    pin ok_led = a20,
    pin button_switch = a21,

    // APA102 LEDs
    pin apa_di = a12,
    pin apa_ci = a13,
    // Need a NC, since we don't get any data back from the APA102s
    pin apa_nc = a14,
);

struct Devices {
    pub ok_led: gpio::Pa20<Output<OpenDrain>>,
    pub button_switch: gpio::Pa21<Input<PullUp>>,
    pub apa102: Apa102<
        SPIMaster2<
            hal::sercom::Sercom2Pad2<gpio::Pa14<gpio::PfC>>,
            hal::sercom::Sercom2Pad0<gpio::Pa12<gpio::PfC>>,
            hal::sercom::Sercom2Pad1<gpio::Pa13<gpio::PfC>>,
        >,
    >,
    pub delay: Delay,
}

impl Devices {
    fn setup() -> Devices {
        let mut peripherals = pac::Peripherals::take().unwrap();
        let core = pac::CorePeripherals::take().unwrap();
        let mut clocks = GenericClockController::with_internal_32kosc(
            peripherals.GCLK,
            &mut peripherals.MCLK,
            &mut peripherals.OSC32KCTRL,
            &mut peripherals.OSCCTRL,
            &mut peripherals.NVMCTRL,
        );
        let mut pins = Pins::new(peripherals.PORT);
        let ok_led = pins.ok_led.into_open_drain_output(&mut pins.port);
        let button_switch = pins.button_switch.into_pull_up_input(&mut pins.port);

        let apa_di = pins.apa_di.into_push_pull_output(&mut pins.port);
        let apa_ci = pins.apa_ci.into_push_pull_output(&mut pins.port);
        let apa_nc = pins.apa_nc.into_pull_up_input(&mut pins.port);
        let gclk0 = clocks.gclk0();
        let spi: SPIMaster2<
            hal::sercom::Sercom2Pad2<gpio::Pa14<gpio::PfC>>,
            hal::sercom::Sercom2Pad0<gpio::Pa12<gpio::PfC>>,
            hal::sercom::Sercom2Pad1<gpio::Pa13<gpio::PfC>>,
        > = SPIMaster2::new(
            &clocks.sercom2_core(&gclk0).unwrap(),
            KiloHertz(5),
            hal::hal::spi::Mode {
                phase: hal::hal::spi::Phase::CaptureOnFirstTransition,
                polarity: hal::hal::spi::Polarity::IdleLow,
            },
            peripherals.SERCOM2,
            &mut peripherals.MCLK,
            (
                apa_nc.into_pad(&mut pins.port),
                apa_di.into_pad(&mut pins.port),
                apa_ci.into_pad(&mut pins.port),
            ),
        );
        let apa102 = Apa102::new(spi);
        let delay = Delay::new(core.SYST, &mut clocks);
        Devices {
            ok_led,
            button_switch,
            apa102,
            delay,
        }
    }
}

#[entry]
fn main() -> ! {
    let mut devices = Devices::setup();

    loop {
        let c0: [RGB8; 2] = [RGB8 { r: 0, g: 0, b: 0 }, RGB8 { r: 0, g: 0, b: 0 }];
        let c1: [RGB8; 2] = [RGB8 { r: 0, g: 64, b: 0 }, RGB8 { r: 64, g: 0, b: 0 }];
        let c2: [RGB8; 2] = [RGB8 { r: 0, g: 64, b: 0 }, RGB8 { r: 0, g: 64, b: 0 }];
        let c3: [RGB8; 2] = [RGB8 { r: 0, g: 64, b: 0 }, RGB8 { r: 0, g: 0, b: 64 }];

        devices.apa102.write(c0.iter().cloned()).unwrap();
        if devices.button_switch.is_low().unwrap() {
            devices.apa102.write(c1.iter().cloned()).unwrap();
            devices.delay.delay_ms(200u8);
            devices.apa102.write(c2.iter().cloned()).unwrap();
            devices.ok_led.set_high().unwrap();
            devices.delay.delay_ms(200u8);
            devices.apa102.write(c3.iter().cloned()).unwrap();
            devices.ok_led.set_low().unwrap();
            devices.delay.delay_ms(200u8);
        }
    }
}