# ESP32-C3 Air Quality Monitor Kit

The Air Quality Monitor Kit is designed to provide real-time data on air quality, utilizing the Seeed Xiao ESP32-C3 and the PMS7003 particulate matter sensor. This kit is ideal for environmental monitoring with high accuracy and low power consumption.

### Features:
- Utilizes Seeed Xiao ESP32-C3.
- Measures PM1.0, PM2.5, and PM10.
- Includes WS2812B LED on GPIO20.
- Serial communication via UART.

### Quick Start Guide:

#### Pinout:
 - D0 (GPIO2): Set as Relay2 for RST.
 - D1 (GPIO3): Set as PMS5003 RX.
 - D2 (GPIO4): Set as PMS5003 TX.
 - D4 (GPIO6): Set as Relay1 for SET.
 - D7 (GPIO20): WS2812B-2020

 - [Tasmota Instructions](tasmota.md)
 - [ESPHome Configuration File](esphome.yml)

### Configuration:
This kit supports multiple Xiao modules but comes standard with the ESP32-C3 for optimal performance. For further customization and expansion, additional breakout pins are provided.

### Purchase:
For purchasing information, please visit our [Product Page](https://shop.silocitylabs.com/products/esp32-air-quality-sensor).
