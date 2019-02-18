echo Begining Updates 
echo 3 seconds to cancel 
sleep 3
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
echo rebooting 
echo 10 seconds to cancel 
sleep 10
sudo reboot