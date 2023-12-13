#!/bin/bash

USER_DIR=/home/munir
DOTS_DIR=$USER_DIR/dots

foo () {
  rm -rf $USER_DIR/.config/$1
  ln -s $DOTS_DIR/configs/$1 $USER_DIR/.config
}

foo "rofi"
foo "kitty"
foo "i3"
foo "fish"
foo "helix"

# if [ -d $USER_DIR/.config/Code/User/ ]; then
  # ln -sf $DOTS_DIR/vscode/settings.json $USER_DIR/.config/Code/User/
# fi

# ln -sf $DOTS_DIR/misc/.gitconfig $USER_DIR/
ln -sf $DOTS_DIR/x11/user-dirs.dirs $USER_DIR/.config/
ln -sf $DOTS_DIR/x11/.xinitrc $USER_DIR/
# ln -sf $DOTS_DIR/misc/config $USER_DIR/.ssh/

cp $DOTS_DIR/x11/30-touchpad.conf /etc/X11/xorg.conf.d/

