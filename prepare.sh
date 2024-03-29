rm -rf ./src/plugins && rm -rf ./src/libs
echo "clear old files"
mkdir -p ./src/plugins && mkdir -p ./src/libs;
cp start* ./src && cp docker-en* ./src;
chmod +x ./src/start* && chmod +x ./src/docker-en*;
echo "mkdir success\ndownloading mirai-console-2.14.0-all.jar...\n================================================================================"
curl -fSL https://maven.aliyun.com/repository/public/net/mamoe/mirai-console/2.14.0/mirai-console-2.14.0-all.jar -o ./src/libs/mirai-console-2.14.0-all.jar;
echo "success\ndownloading mirai-console-terminal-2.14.0-all.jar...\n================================================================================"
curl -fSL https://maven.aliyun.com/repository/public/net/mamoe/mirai-console-terminal/2.14.0/mirai-console-terminal-2.14.0-all.jar -o ./src/libs/mirai-console-terminal-2.14.0-all.jar;
echo "success\ndownloading mirai-core-all-2.14.0-all.jar...\n================================================================================"
curl -fSL https://maven.aliyun.com/repository/public/net/mamoe/mirai-core-all/2.14.0/mirai-core-all-2.14.0-all.jar -o ./src/libs/mirai-core-all-2.14.0-all.jar;
echo "success\ndownloading mirai-api-http-v2.9.1.mirai.jar...\n================================================================================"
curl -fSL https://ghproxy.com/https://github.com/project-mirai/mirai-api-http/releases/download/v2.9.1/mirai-api-http-2.9.1.mirai2.jar -o ./src/plugins/mirai-api-http-v2.9.1.mirai.jar;
echo "download files finished\n"
echo "remove old config file and copy new Mirai Api Http config file\n"
mkdir -p ./src/config/net.mamoe.mirai-api-http
sudo rm -rf ./src/config/net.mamoe.mirai-api-http/setting.yml
sudo cp setting.yml ./src/config/net.mamoe.mirai-api-http/
