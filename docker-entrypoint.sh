#!/bin/bash

if [ -f "/usr/src/mirai/config/Console/AutoLogin.yml" ]; then
  sed -i '/account/s/account: .*/account: '"$QQ"'/g' /usr/src/mirai/config/Console/AutoLogin.yml;
  sed -i '/value/s/value: .*/value: '"$PASSWORD"'/g' /usr/src/mirai/config/Console/AutoLogin.yml;
  sed -i '/protocol/s/protocol: .*/protocol: '"$MODE"'/g' /usr/src/mirai/config/Console/AutoLogin.yml;
  echo "fuckkkkkk"
fi

sh /usr/src/mirai/start-mirai-console.sh;
