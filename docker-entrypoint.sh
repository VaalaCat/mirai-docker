#!/bin/bash

if [ -f "/usr/src/mirai/config/Console/AutoLogin.yml" ]; then
  sed -i '/account/s/account: .*/account: '"$QQ"'/g' /usr/src/mirai/config/Console/AutoLogin.yml;
  sed -i '/value/s/value: .*/value: '"$PASSWORD"'/g' /usr/src/mirai/config/Console/AutoLogin.yml;
  sed -i '/protocol/s/protocol: .*/protocol: '"$MODE"'/g' /usr/src/mirai/config/Console/AutoLogin.yml;
  echo "fuckkkkkk"
fi

if [ -f "/usr/src/mirai/config/net.mamoe.mirai-api-http/setting.yml" ]; then
  sed -i 's/port: .*/port: '"$EXPPORT"'/g' /usr/src/mirai/config/net.mamoe.mirai-api-http/setting.yml;
  sed -i 's/authKey: .*/authKey: '"$AUTHKEY"'/g' /usr/src/mirai/config/net.mamoe.mirai-api-http/setting.yml;
fi

sh /usr/src/mirai/start-mirai-console.sh;
