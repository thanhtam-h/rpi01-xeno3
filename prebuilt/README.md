# prebuilt kernel and xenomai for rpi01 (include zero W)
built 4.1.21 ipipe patched kernel + prebuilt xenomai user-space libraries and tool. Pull down and deploy

Manually deploy
------------
Download and transfer all files in this directory to rpi01. From rpi:

     sudo dpkg -i linux-image*
     sudo dpkg -i linux-headers*
<<<<<<< HEAD
     tar -xjvf linux-dts-4.1.*.tar.bz2
=======
     sudo tar -xjvf linux-dts-4.1.21-xeno3+.tar.bz2
>>>>>>> f69c145c3f3c97c9d809dc77f818f9f83456fcdc
     cd dts
     sudo cp -rf * /boot/
     sudo mv /boot/vmlinuz-4.1.21-xeno3+ /boot/kernel.img
	 cd ..
     sudo tar -xjvf rpi01-xeno3-deploy.tar.bz2 -C /
     sudo cp xenomai.conf /etc/ld.so.conf.d/
     sudo ldconfig
     sudo reboot
     
Automatically deploy
------------
	Run these commands and deploy, your rasperry pi will be updated and rebooted 
	
	 chmod +x deploy.sh
	 ./deploy.sh
	
	
Test xenomai on rpi:
------------   
In order to test whether your kernel is really patched with xenomai, run the latency test from xenomai tool:

      sudo /usr/xenomai/bin/latency
If latency tool get start and show some result, you are now have realtime kernel for your rpi
