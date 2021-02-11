# Open VPN Service

Connects a RPi to OpenVPN using NordVPN Servers.

## Authentication

In order for this daemon to work properly, you must provide your credentials.

Go to [https://my.nordaccount.com/dashboard/nordvpn/] and get your user and password,
then go to the file located at `/etc/openvpnd/auth.txt` and put them in there, separated
by a line break. Example:

`
username_really_long_hash

password_also_long_hash
`

(Please notice the new line at the end of the file).

## Build and install

If you're trying to build this from scratch, I've provided a Makefile that'll generate a .deb
package, which in turn can be installed using `dpkg`.

Go to the project folder and run the following command:

`
make build
`

After the process has ended, you should have a new file with the name `openvpnd_1.0.0_armhf`.
In order to install the daemon in your system, you have to install it using this command:

`
sudo dpkg -i openvpnd_1.0.0_armhf
`

NOTICE: Always be aware that installing packages this way can be dangerous, since you're giving the script
root privileges. If you want to use the daemon without running the package manager, you'll have to
configure some of the routes and config files, but it should run fine that way.

