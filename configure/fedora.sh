# Disabl SELinux
rpm -q grubby
sudo grubby --update-kernel ALL --args selinux=0

# Fix openssh mal configuration
sudo sed -i -e 's/^GSSAPIKexAlgorithms/#GSSAPIKexAlgorithms/' /etc/crypto-policies/back-ends/openssh.config

# Support window manager
sudo dnf install xorg-x11-xinit-session
