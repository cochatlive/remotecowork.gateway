./autogen.sh
./configure --prefix=/opt/janus --disable-unix-sockets --disable-rabbitmq --disable-mqtt --disable-plugin-audiobridge --disable-data-channels --disable-plugin-echotest --disable-plugin-recordplay --disable-plugin-sip --disable-plugin-sipre --disable-plugin-nosip --disable-plugin-textroom --disable-plugin-videocall --disable-plugin-videoroom --disable-plugin-voicemail
make CFLAGS='-std=c99'
mkdir docker/build || true
cp -r janus docker/build/janus