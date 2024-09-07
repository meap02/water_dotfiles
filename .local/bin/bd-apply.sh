# This script will be called before discord is launched, ensuring that betterdiscord is injected before the app is launched, mostly in the case of an official discord update
# Author: meap02
# Date: 08/04/2024

status=$(betterdiscordctl status | grep injected | awk -F " " '{print $NF}')
if [ $status = "yes" ]; then
    echo "BetterDiscord is already injected"
else
    betterdicordctl install
    sleep 2
    killall discord
    echo "BetterDiscord has been injected"
fi
