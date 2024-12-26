# ESP32-C3 Air Quality Monitor Kit

The Air Quality Monitor Kit is designed to provide real-time data on air quality, utilizing the Seeed Xiao ESP32-C3 and the PMS7003 particulate matter sensor. This kit is ideal for environmental monitoring with high accuracy and low power consumption.

### Features:
- Utilizes Seeed Xiao ESP32-C3.
- Measures PM1.0, PM2.5, and PM10.
- Includes WS2812B LED on GPIO20.
- Serial communication via UART.

### Quick Start Guide:

#### Pinout:

|              | XIAO PIN | C3     | C6     | S3     |
|--------------|----------|--------|--------|--------|
| ESPHOME      | N/A      | ✅      |        | ✅      |
| TASMOTA      | N/A      | ✅      | ✅      | ✅      |
| PMS7003 RST. | D0       | GPIO2  | GPIO0  | GPIO1  |
| PMS7003 RX.  | D1       | GPIO3  | GPIO1  | GPIO2  |
| PMS7003 TX.  | D2       | GPIO4  | GPIO2  | GPIO3  |
| PMS7003 SET  | D4       | GPIO6  | GPIO22 | GPIO43 |
| WS2812B      | D7       | GPIO20 | GPIO17 | GPIO44 |
|              |          |        |        |        |
|              |          |        |        |        |
|              |          |        |        |        |

 - [Tasmota Instructions](tasmota.md)
 - [ESPHome Configuration File](esphome.yml)

### Configuration:
This kit supports multiple Xiao modules but comes standard with the ESP32-C3 for optimal performance. For further customization and expansion, additional breakout pins are provided.

### Purchase:
For purchasing information, please visit our [Product Page](https://shop.silocitylabs.com/products/esp32-air-quality-sensor).
