BODY="Area"
if [ $1 == "--fullscreen" ]; then
    BODY="FullScreen Captured"
fi
wl-paste > /tmp/tempimg.png
notify-send -t 2000 -i /tmp/tempimg.png "Screenshot" "$BODY"
rm /tmp/tempimg.png
