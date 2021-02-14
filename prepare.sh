rm ./src/plugins -r && rm ./src/libs -r
echo "clear old files"
mkdir -p ./src/plugins && mkdir -p ./src/libs;
cp start* ./src && cp docker-en* ./src;
chmod +x ./src/start* && chmod +x ./src/docker-en*;
echo "mkdir success\ndownloading mirai-console-2.3.2-all.jar...\n==================================================================================="
curl -fSL https://maven.aliyun.com/repository/public/net/mamoe/mirai-console/2.3.2/mirai-console-2.3.2-all.jar -o ./src/libs/mirai-console-2.3.2-all.jar;
echo "success\ndownloading mirai-console-terminal-2.3.2-all.jar...\n================================================================================"
curl -fSL https://maven.aliyun.com/repository/public/net/mamoe/mirai-console-terminal/2.3.2/mirai-console-terminal-2.3.2-all.jar -o ./src/libs/mirai-console-terminal-2.3.2-all.jar;
echo "success\ndownloading mirai-core-all-2.3.2-all.jar...\n========================================================================================"
curl -fSL https://maven.aliyun.com/repository/public/net/mamoe/mirai-core-all/2.3.2/mirai-core-all-2.3.2-all.jar -o ./src/libs/mirai-core-all-2.3.2-all.jar;
echo "success\ndownloading mirai-api-http-v1.9.8.mirai.jar...\n====================================================================================="
curl -fSL https://github.com/project-mirai/mirai-api-http/releases/download/v1.9.8/mirai-api-http-v1.9.8.mirai.jar -o ./src/plugins/mirai-api-http-v1.9.8.mirai.jar;
echo "download files finished"