# Home-Assistant

### local lenvironment
- .bash_aliases: local commands for easy operation

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
- __customize.yaml:__ 
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
