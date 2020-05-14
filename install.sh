#!/bin/bash

if [[ ! -d "$HOME/" ]]; then
  mkdir -p "$HOME/"
fi
VARIANTS=("dark" "light" "quit")
select variant in "${VARIANTS[@]}"; do
  case $variant in
    "dark")
      echo "Installing Isotope Dark theme to $HOME/.Xresources"
      curl -s https://raw.githubusercontent.com/Isotope-Theme/xresources/master/Xresources-dark >> $HOME/.Xresources
      break
      ;;
    "light")
      echo "Installing Isotope Light theme to $HOME/.Xresources"
      curl -s https://raw.githubusercontent.com/Isotope-Theme/xresources/master/Xresources-light.conf >> $HOME/.Xresources
      break
      ;;
    "quit")
      break
      ;;
    *)
      echo "invalid variant $REPLY"
      ;;
  esac
done
