# HoppelLodge Home-Assistant Project

[![Main][main_s]][main]

---

### To-Do

- [X] DISABLED: [HA-Bridge](https://github.com/bwssytems/ha-bridge)
- [X] [Integrate NEST into HA](https://www.home-assistant.io/components/nest)
- [ ] Integrate IoT Tardis into HA
- [X] OK: SmartThings battery levels are not being read
- [X] test if things work well after reboot
- [ ] [Integrate X-10 devices with HA](https://www.home-assistant.io/components/light.x10/)
- [X] [apply security](https://www.home-assistant.io/docs/configuration/securing/)
- [X] [add IP Cam support](https://www.home-assistant.io/components/camera.generic/)
- [X] [Customize entities](https://www.home-assistant.io/docs/configuration/customizing-devices/)
- [X] [HA ESP8266 Integration](https://www.home-assistant.io/blog/2018/06/05/esphomelib/)
  - [X] [checkout esphome.lib](https://esphomelib.com/esphomeyaml/index.html#sensor-components)
  - [X] [esphomeyaml](https://esphomelib.com/esphomeyaml/index.html)

#### [Evernote Development Log (raspi2A)](https://www.evernote.com/l/AAP1ClDH_KNDMITT7rDInX9GBZm8hRmLzk8/)

### Recent Changes

- [12/7/2018] Initial implementation

### Synopsis

Implement an instance of [Home Assistant](https://www.home-assistant.io/) for the HoppelLodge which integrate all the existing [SmartThings](https://www.smartthings.com) devices.   This includes motion, contact, water detection, outlet, and smoke detection devices.  All the devices will also continue to be under the control of the [SmartThings Hub](https://www.smartthings.com/products/smartthings-hub).   The [SmartThings-MQTT-bridge](https://github.com/stjohnjohnson/smartthings-mqtt-bridge) will allow SmartThings devices to be monitored and controlled using [MQTT](https://en.wikipedia.org/wiki/MQTT) protocol.  This will all a quantum leap for future capabilities.  This platform will make possible the integration of the [IoT Tardis](http://demo.techdogs.us/) project which brings [Node-Red](https://nodered.org/) Integration using [IoT K9 modules](http://demo.techdogs.us/resources/png/IoT_TARDIS_Demo_bb.png) which uses [ES8266](https://en.wikipedia.org/wiki/ESP8266) low cost devices with incredible capabilities.

### Installation

- https://www.home-assistant.io/docs/installation/raspberry-pi/
- https://www.home-assistant.io/docs/configuration/securing/
- https://www.home-assistant.io/docs/autostart/systemd/


### local environment

- __~/.bash_aliases:__ local commands for easy HA operation

### [SmartThings-MQTT-Bridge](https://github.com/stjohnjohnson/smartthings-mqtt-bridge)

Node.js app which integrates SmartThings and MQTT

- config.yml configuration 
- PM2 manages operation

### [Home Assistant Configuration](https://github.com/home-assistant/home-assistant)

#### structure

- python3 app
- service: __"sudo systemd start home-assistant@pi"__
- directory: __~/.homeassistant__
  - themes: store alternates
  - resources: images, etc.

#### git repository

- https://github.com/rhoppel/home-assistant.git

#### configuration

- __automations.yaml__ : dimmer slider implementation
- __cameras.yaml__:  IP camera support
- __configuration.yaml:__ main configuration, references all yaml configs
- __customize.yaml:__ not used at this time 
- __groups.yaml:__ creates menu grouping using entities
- __inputs-select.yaml__ : theme selection 
- __lights.yaml:__ switch or dimming lights
- __secrets.yaml:__ stores passwords
- __scripts.yaml;__ not used at this time
- __sensors.yaml:__ motion, water, contact, temperature sensors
- __switches.yaml:__ outlets based switches
- __mqtt-topics:__ list of SmartThings MQTT topics
- __plex.conf:__ plex media player config [not working]
- __state.json:__ mqtt topics and saved state for a restartBB 

#### Anomalies

- groups.yaml: modified to accomodate the following
- enity instantiation: HA is not consistent with entities with the same name
  - HA has an algorhthm for instantiating entities with the same name
  - example:  this specific anomaly will cycle between different motion entities

##### MOTION DETECTOR  yaml configuration

    - platform: mqtt
      name: "Motion - Kitchen"
      state_topic: "smartthings/Motion - Kitchen/motion"
    - platform: mqtt
      name: "Motion - Kitchen"
      state_topic: "smartthings/Motion - Kitchen/temperature"
      unit_of_measurement: "°F"
    - platform: mqtt
      name: "Motion - Kitchen"
      state_topic: "smartthings/Motion - Kitchen/battery"
      unit_of_measurement: "%"

##### Entity Instantiation for above in order

- sensor.motion__kitchen [anomaly: temperature; should be: detection]
- sensor.motion__kitchen_2 [anomaly: battery; should be: temperature]
- sensor.motion__kitchen_3 [anomaly: detection; should be: battery]

## Screenshots

### Device Activity

[![activity][activity_s]][activity]

### Tabs 

---

##### [click on thumbnail to see full screen image]

| Areas | Audio | Battery | Camera |
| --- | ---- | --- | --- |
| [![areas_tn][areas_tn]][areas] | [![audio_tn][audio_tn]][audio] | [![battery_tn][battery_tn]][battery] | [![cameras_tn][cameras_tn]][cameras] |
| Contacts | Environment | Home | Lights |
| [![contacts_tn][contacts_tn]][contacts] | [![envrnmnt_tn][envrnmnt_tn]][envrnmnt] | [![home_tn][home_tn]][home] | [![lights_tn][lights_tn]][lights] | 
| Modules | Nest |  Power | Sensors |
|  [![modules_tn][modules_tn]][modules] | [![nest_tn][nest_tn]][nest] | [![power_tn][power_tn]][power] | [![sensors_tn][sensors_tn]][sensors]  |
| System | Temperatures | Video |
| [![system_tn][system_tn]][system] | [![temperatures_tn][temperatures_tn]][temperatures] | [![video_tn][video_tn]][video]  |

---

### Other Screens

| Main Screen | Activity |
| ---- | ---- |
| ![main_tn][main_tn]  | ![activity_tn][activity_tn]  |

---

<!--
![areas_tn][areas_tn]
![audio_tn][audio_tn]
![battery_tn][battery_tn]
![cameras_tn][cameras_tn]
![contacts_tn][contacts_tn]
![envrnmnt_tn][envrnmnt_tn]
![activity_tn][activity_tn]
![main_tn][main_tn]
![home_tn][home_tn]
![lights_tn][lights_tn]
![modules_tn][modules_tn]
![nest_tn][nest_tn]
![power_tn][power_tn]
![sensors_tn][sensors_tn]
![system_tn][system_tn]
![temperatures_tn][temperatures_tn]
![video_tn][video_tn]

![areas_s][areas_s]
![audio_s][audio_s]
![battery_s][battery_s]
![cameras_s][cameras_s]
![contacts_s][contacts_s]
![envrnmnt_tn][envrnmnt_tn]
![activity_s][activity_s]
![main_s][main_s]
![home_s][home_s]
![lights_s][lights_s]
![modules_s][modules_s]
![nest_s][nest_s]
![power_s][power_s]
![sensors_s][sensors_s]
![system_s][system_s]
![temperatures_s][temperatures_s]
![video_s][video_s]



![areas][areas]
![audio][audio]
![battery][battery]
![cameras][cameras]
![contacts][contacts]
![envrnmnt][envrnmnt]
![activity][activity]
![main][main]
![home][home]
![lights][lights]
![modules][modules]
![nest][nest]
![power][power]
![sensors][sensors]
![system][system]
![temperatures][temperatures]
![video][video]

---
-->

[areas_tn]: https://files.hoppel.us/home-assistant/areas_tn.png
[audio_tn]: https://files.hoppel.us/home-assistant/audio_tn.png
[battery_tn]: https://files.hoppel.us/home-assistant/battery_tn.png
[cameras_tn]: https://files.hoppel.us/home-assistant/cameras_tn.png
[contacts_tn]: https://files.hoppel.us/home-assistant/contacts_tn.png
[envrnmnt_tn]: https://files.hoppel.us/home-assistant/envrnmnt_tn.png
[activity_tn]: https://files.hoppel.us/home-assistant/activity_tn.png
[main_tn]: https://files.hoppel.us/home-assistant/main_tn.png
[home_tn]: https://files.hoppel.us/home-assistant/home_tn.png
[lights_tn]: https://files.hoppel.us/home-assistant/lights_tn.png
[modules_tn]: https://files.hoppel.us/home-assistant/modules_tn.png
[nest_tn]: https://files.hoppel.us/home-assistant/nest_tn.png
[power_tn]: https://files.hoppel.us/home-assistant/power_tn.png
[sensors_tn]: https://files.hoppel.us/home-assistant/sensors_tn.png
[system_tn]: https://files.hoppel.us/home-assistant/system_tn.png
[temperatures_tn]: https://files.hoppel.us/home-assistant/temperatures_tn.png
[video_tn]: https://files.hoppel.us/home-assistant/video_tn.png

[areas_s]: https://files.hoppel.us/home-assistant/areas_s.png
[audio_s]: https://files.hoppel.us/home-assistant/audio_s.png
[battery_s]: https://files.hoppel.us/home-assistant/battery_s.png
[cameras_s]: https://files.hoppel.us/home-assistant/cameras_s.png
[contacts_s]: https://files.hoppel.us/home-assistant/contacts_s.png
[envrnmnt_s]: https://files.hoppel.us/home-assistant/envrnmnt_s.png
[activity_s]: https://files.hoppel.us/home-assistant/activity_s.png
[main_s]: https://files.hoppel.us/home-assistant/main_s.png
[home_s]: https://files.hoppel.us/home-assistant/home_s.png
[lights_s]: https://files.hoppel.us/home-assistant/lights_s.png
[modules_s]: https://files.hoppel.us/home-assistant/modules_s.png
[nest_s]: https://files.hoppel.us/home-assistant/nest_s.png
[power_s]: https://files.hoppel.us/home-assistant/power_s.png
[sensors_s]: https://files.hoppel.us/home-assistant/sensors_s.png
[system_s]: https://files.hoppel.us/home-assistant/system_s.png
[temperatures_s]: https://files.hoppel.us/home-assistant/temperatures_s.png
[video_s]: https://files.hoppel.us/home-assistant/video_s.png

[areas]: https://files.hoppel.us/home-assistant/areas.png
[audio]: https://files.hoppel.us/home-assistant/audio.png
[battery]: https://files.hoppel.us/home-assistant/battery.png
[cameras]: https://files.hoppel.us/home-assistant/cameras.png
[contacts]: https://files.hoppel.us/home-assistant/contacts.png
[envrnmnt]: https://files.hoppel.us/home-assistant/envrnmnt.png
[activity]: https://files.hoppel.us/home-assistant/activity.png
[main]: https://files.hoppel.us/home-assistant/main.png
[home]: https://files.hoppel.us/home-assistant/home.png
[lights]: https://files.hoppel.us/home-assistant/lights.png
[modules]: https://files.hoppel.us/home-assistant/modules.png
[nest]: https://files.hoppel.us/home-assistant/nest.png
[power]: https://files.hoppel.us/home-assistant/power.png
[sensors]: https://files.hoppel.us/home-assistant/sensors.png
[system]: https://files.hoppel.us/home-assistant/system.png
[temperatures]: https://files.hoppel.us/home-assistant/temperatures.png
[video]: https://files.hoppel.us/home-assistant/video.png