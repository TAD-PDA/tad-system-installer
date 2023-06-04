cd /home/pi/
apt install raspberrypi-kernel-headers git -y
mkdir git
mkdir nta
cd git
git clone https://github.com/TAD-PDA/tad-nta.git
git clone https://github.com/TAD-PDA/tad-fofsweeper.git
git clone https://github.com/TAD-PDA/soft_uart.git
cp ./tad-nta/scripts/keyboard.sh /home/pi/nta/keyboard.sh
modprobe uinput
cd ./soft_uart
make
make install
cd /home/pi/
git clone https://github.com/waveshare/LCD-show.git
cp 99-input.rules /etc/udev/rules.d/99-input.rules
cp 99-calibration.conf /etc/X11/xorg.conf.d/99-calibration.conf
cd /home/pi/LCD-show
chmod +x LCD35B-show-V2
apt install zsh -y
chsh -s /bin/zsh pi
 ./LCD35B-show-V2 lite
