#/usr/bin/bash
cd $MC_SERVER_PATH

rm server.pipe

mkfifo server.pipe

java -Xms3G -Xmx3G -jar server.jar --nogui < server.pipe > ../out 2>&1 &

sleep infinity > server.pipe &