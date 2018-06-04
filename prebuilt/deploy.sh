sudo dpkg -i linux-image*
sudo dpkg -i linux-headers*
tar -xjvf linux-dts-4.1.*.tar.bz2
cd dts
sudo cp -rf * /boot/
sudo mv /boot/vmlinuz-4.1.21-xeno3+ /boot/kernel.img
cd ..
sudo tar -xjvf rpi01-xeno3-deploy.tar.bz2 -C /
sudo cp xenomai.conf /etc/ld.so.conf.d/
sudo ldconfig
sudo reboot
