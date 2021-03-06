version=1.0.0
temp_folder=/tmp/openvpnd_$(version)_armhf

build:
	mkdir $(temp_folder)
	cp -R DEBIAN $(temp_folder)/
	mkdir -p $(temp_folder)/usr/bin
	cp ./openvpnd $(temp_folder)/usr/bin
	mkdir -p $(temp_folder)/etc/systemd/system
	cp ./openvpnd.service $(temp_folder)/etc/systemd/system/
	mkdir $(temp_folder)/etc/openvpnd/
	mkdir $(temp_folder)/etc/openvpnd/poststart.d
	mkdir $(temp_folder)/etc/openvpnd/poststop.d
	cp ./openvpnd.conf $(temp_folder)/etc/openvpnd/
	touch $(temp_folder)/etc/openvpnd/auth.txt
	dpkg-deb --build $(temp_folder)
	mv $(temp_folder).deb .
	rm -rf $(temp_folder)

