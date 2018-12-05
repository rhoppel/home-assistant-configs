#
# Home Assistamt
#
alias ha-su='sudo -u homeassistant -H -s; cd /home/homeassistant/.homeassistant'
alias ha-update='sudo -u homeassistant -H -s; source /srv/homeassistant/bin/activate; pip3 install --upgrade homeassistant'
alias vbha='vi ~/.homeassistant/.bash_aliases'
alias  vha='vi ~/.homeassistant/configuration.yaml'

alias virt-activ='sudo -u homeassistant -H -s; source /srv/homeassistant/bin/activate'

alias   ha-start='sudo systemctl start home-assistant@homeassistant'
alias    ha-stop='sudo systemctl stop home-assistant@homeassistant'
alias  ha-status='sudo systemctl status home-assistant@homeassistant'
alias ha-restart='sudo systemctl restart home-assistant@homeassistant'
alias ha-journal='sudo journalctl -f -u home-assistant@homeassistant'
alias   ha-error='sudo journalctl -f -u home-assistanthomeassistantpi | grep -i "error"'
alias    ha-full='sudo systemctl restart home-assistant@homeassistant && sudo journalctl -f -u home-assistant@homeassistant'

alias     mbridge='cd ~/.homeassistant; smartthings-mqtt-bridge'
alias     pm2mqtt='cd ~/.homeassistant; pm2 start smartthings-mqtt-bridge'
alias mbridge-log='pm2 logs smartthings-mqtt-bridge'
alias        pm2l='pm2 logs --raw smartthings-mqtt-bridge'

alias pm2startup='sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u pi --hp /home/pi'
