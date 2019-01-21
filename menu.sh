#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by cryptopool.builders for crypto use...
#####################################################

source /etc/functions.sh

RESULT=$(dialog --stdout --title "Ultimate Crypto-Server Setup Installer v1.46" --menu "Choose one" -1 60 4 \
1 "YiiMP Single Server" \
2 "NOMP Server" \
3 "Coin Daemon Installer" \
4 Exit)
if [ $RESULT = ]
then
exit;
fi

if [ $RESULT = 1 ]
then
clear;
cd $HOME/multipool/install
source bootstrap_single.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/multipool/install
source bootstrap_multi.sh;
fi

if [ $RESULT = 3 ]
then
clear;
cd $HOME/multipool/install
source bootstrap_coin.sh;
fi

if [ $RESULT = 4 ]
then
clear;
exit;
fi
