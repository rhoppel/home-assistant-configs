# Home-Assistant

### To-Do
- [ ] how to use ha-bridge.jar [](https://github.com/bwssytems/ha-bridge)

### local lenvironment
- __~/.bash_aliases:__ local commands for easy HA operation

### Smartthings-MQTT-Bridge
Node.js app which receives Smarthings events via MQTT
- config.yml configuration 
- PM2 manages operation

### HA Configuration

#### structure
- python3 app
- service: __"sudo systemd start home-assistant@pi"__
- directory: __~/.homeassistant__
  - themes: store alternates

#### git respository: 
- https://github.com/rhoppel/home-assistant.git

#### configuration
- __automations.yaml__ : dimmer slider implementation
- __configuration.yaml:__ main configuration, references all yaml configs
- __customize.yaml:__ not used at this time 
- __groups.yaml:__ creates menu grouping using entities
- __inputs-select.yaml__ : theme selection 
- __lights.yaml:__ switch or dimming lights
- __secrets.yaml:__ stores passwords
- __scripts.yaml;__ not used at this time
- __sensors.yaml:__ motion, water, contact, temperature sensors
- __switches.yaml:__ outlets based switches
- __mqtt-topics:__ list of smartthings MQTT topics
- __plex.conf:__ plex media player config [not working]
- __state.json:__ mqtt topics and saved state for a restartBB 

#### Anomalies
- groups.yaml: modified to accomodate the following
- enity instantiation: HA is not consistent with entities with the same name
  - HA has an algorhthm for instantiating entities with the same name
  - example:  this specific anomaly will cycle between different motion entities

###### MOTION DETECTOR  yaml configuration
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

###### Entity Instantiation for above in order
-  sensor.motion__kitchen [anomaly: temperature; should be: detection]
-  sensor.motion__kitchen_2 [anomaly: battery; should be: temperature]
-  sensor.motion__kitchen_3 [anomaly: detection; should be: battery]

