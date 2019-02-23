echo Begining Updates 
echo 3 seconds to cancel 
sleep 3
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y
echo rebooting 
echo 10 seconds to cancel 
sleep 1
echo 9 seconds to cancel 
sleep 1
echo 8 seconds to cancel 
sleep 1
echo 7 seconds to cancel 
sleep 1
echo 6 seconds to cancel 
sleep 1
echo 5 seconds to cancel 
sleep 1
echo 4 seconds to cancel 
sleep 1
echo 3 seconds to cancel 
sleep 1
echo 2 seconds to cancel 
sleep 1
echo 1 seconds to cancel 
sleep 1
echo goodbye
sudo reboot