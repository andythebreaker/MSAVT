ffmpeg -re -loop 1 -i empty.jpg -f dshow -i audio="Microphone (High Definition Audio Device)" -c:v libx264 -tune stillimage -x264-params keyint=60:no-scenecut -b:v 3000k -pix_fmt yuv420p -profile:v baseline -level 3.0 -c:a aac -f flv rtmp://127.0.0.1/srv2cli/
ffmpeg -re -loop 1 -i empty.jpg -f dshow -i audio="Microphone (High Definition Audio Device)" -c:v libx264 -tune stillimage -c:a aac -strict experimental -f flv rtmp://127.0.0.1/srv2cli/ 