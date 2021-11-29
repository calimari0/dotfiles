#! /bin/bash

echo "Welcome."

sudo pacman -Syyu
sudo pacman -S git fish xorg lightdm lightdm-gtk-greeter xf86-video-intel 
mkdir ~/github/
cd ~/github/
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
yay -S pfetch kitty dunst bspwm polybar sxhkd discord btop nerd-fonts-jetbrains-mono xfce4-screenshooter gthumb libreoffice-fresh librewolf-bin mpv thunar rofi spotify picom feh
sudo cp .config/* ~/.config/
mkdir ~/.themes/
cp .themes/* ~/.themes/
sudo systemctl enable lightdm-gtk-greeter
chsh -s /usr/bin/fish

echo "Rebooting in 30 seconds, please Ctrl + C if you wish to stop.

sleep 28

echo "Sayonara."

sleep 2

reboot
