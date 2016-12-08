# SRS v1.0

Run

```
docker run -d -p 514:514 -p 1935:1935 peihsinsu/armv7l-srs-v1.0r3
```

Test

```
ffmpeg -re -i [select a movie file] -vcodec copy -acodec copy -f flv -y rtmp://localhost:1935/live/livestream
```

Then... Using VLC to open the rtmp://localhost/live/livestream for streaming endpoint...
