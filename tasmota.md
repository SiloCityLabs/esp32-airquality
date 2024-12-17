#### Setting Up Tasmota Rules for PMS7003 Sensor

To wake up the PMS7003 sensor every 5 minutes for a reading and then put it back to sleep, you can use Tasmota rules to control the SET and RST pins. Here's how you can configure it:

#### Step-by-Step Configuration

1.  **Configure GPIO Pins in Tasmota:**
2.  **D0 (GPIO2)**: Set as `Relay2` for RST.
3.  **D1 (GPIO3)**: Set as `PMS5003 RX`.
4.  **D2 (GPIO4)**: Set as `PMS5003 TX`.
5.  **D4 (GPIO6)**: Set as `Relay1` for SET.

6.  **Create Tasmota Rules:**

7.  **Rule1**: To wake up the sensor every 5 minutes.
8.  **Rule2**: To put the sensor back to sleep after taking a reading.

#### Example Tasmota Rules

##### Rule1: Wake Up the Sensor

This rule will wake up the sensor by setting the SET pin high every 5 minutes. `Rule1 ON Time#Minute|5 DO Power1 1 ENDON Rule1 1` - `Time#Minute|5` triggers every 5 minutes. - `Power1 1` sets GPIO6 (SET pin) high to wake up the sensor.

##### Rule2: Put the Sensor to Sleep

This rule will put the sensor back to sleep after a short delay (e.g., 30 seconds) to allow for a reading. `Rule2 ON Time#Minute|5 DO backlog Delay 30; Power1 0 ENDON Rule2 1` - `Time#Minute|5` triggers every 5 minutes. - `backlog Delay 30; Power1 0` waits for 30 seconds and then sets GPIO6 (SET pin) low to put the sensor to sleep.

##### Rule3: Reset the Sensor

This rule will reset the sensor at boot. `Rule3 ON System#Boot DO Power2 1 ENDON Rule3 1` - `System#Boot` triggers at system boot. - `Power2 1` sets GPIO2 (RST pin) high to reset the sensor.

#### Summary

-   **Rule1** wakes up the sensor every 5 minutes.
-   **Rule2** puts the sensor back to sleep after 30 seconds.
-   **Rule3** resets the sensor at boot.

By following these steps, you can ensure that your PMS7003 sensor wakes up every 5 minutes for a reading and then goes back to sleep, conserving power and extending the sensor's lifespan.
