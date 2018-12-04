#
# Home Assistamt
#
alias vbha='vi ~/.homeassistant/.bash_aliases'
alias  vha='vi ~/.homeassistant/configuration.yaml'

alias   ha-start='sudo systemctl start home-assistant@pi'
alias    ha-stop='sudo systemctl stop home-assistant@pi'
alias ha-restart='sudo systemctl restart home-assistant@pi'
alias ha-journal='sudo journalctl -f -u home-assistant@pi'
alias   ha-error='sudo journalctl -f -u home-assistant@pi | grep -i "error"'
alias    ha-full='sudo systemctl restart home-assistant@pi && sudo journalctl -f -u home-assistant@pi'

alias     mbridge='cd ~/.homeassistant; smartthings-mqtt-bridge'
alias     pm2mqtt='cd ~/.homeassistant; pm2 start smartthings-mqtt-bridge'
alias mbridge-log='pm2 logs smartthings-mqtt-bridge'
alias        pm2l='pm2 logs --raw smartthings-mqtt-bridge'

alias pm2startup='sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u pi --hp /home/pi'
