#include "stm32f0xx_hal.h"
#include "drivers/stm32/gpio_bus.h"
#include "drivers/stm32/scan_matrix.h"
#include "drivers/stm32/status_led.h"

using namespace stm32;

GPIOBus gpioa(GPIOBus::Id::A);
GPIOBus gpiob(GPIOBus::Id::B);

GPIOPin scan_rows[] = {
    GPIOPin(gpiob, 3),
    GPIOPin(gpiob, 4)
};

GPIOPin scan_columns[] = {
    GPIOPin(gpioa, 0),
    GPIOPin(gpioa, 1),
};

const uint8_t row_count = sizeof(scan_rows) / sizeof(GPIOPin);
const uint8_t column_count = sizeof(scan_columns) / sizeof(GPIOPin);

// Make sure to update this with the number of columns
bool *key_scans[row_count] = {
    {},
    {}
};

GPIOPin st1_ok(gpioa, 7);
GPIOPin st1_err(gpioa, 8);
GPIOPin st2_ok(gpioa, 9);
GPIOPin st2_err(gpioa, 10);

StatusLed st1(st1_ok, st1_err);
StatusLed st2(st2_ok, st2_err);

ScanMatrix scan_matrix(scan_rows,
                       scan_columns,
                       row_count,
                       column_count);

static void Init() {
    HAL_Init();

    gpioa.Init();
    gpiob.Init();
    st1.Init();
    st2.Init();
    scan_matrix.Init();
}

static void scan_and_update() {
    scan_matrix.Scan(key_scans, row_count, column_count);
    st1.SetOk(key_scans[0][0]);
    st1.SetError(key_scans[0][1]);
    st2.SetOk(key_scans[1][0]);
    st2.SetError(key_scans[1][1]);
}

int main() {
    Init();

    while (true) {
        scan_and_update();
    }
}

extern "C" {
void __cxa_pure_virtual() {
}
}

