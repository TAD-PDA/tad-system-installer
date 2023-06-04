# tad-system-installer
The TAD system installer, meant to be ran on top of a normal raspbian install.

# Usage
- Clone contents of this repository directly into the home folder of the Pi user on a new raspbian install.
- Run install.sh as root

Note that this installs zsh as the default shell for Pi.

If you want to select another shell, install it manually and __copy .zshrc.local to your shell rc__.

# More users
This installer only installs to the Pi user of the system. If you wish to use the system with multiple users, derive them from the Pi user by copying the home contents of the Pi user to your newly created user. Make sure to also select zsh as the default shell for the new user.
