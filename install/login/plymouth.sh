if [[ $(plymouth-set-default-theme) != "omarchy" ]]; then
  sudo cp -r "$HOME/.local/share/omarchy/default/plymouth" /usr/share/plymouth/themes/omarchy/

  # Override with user customizations (e.g. custom logo.png or lock.png)
  if compgen -G "$HOME/.local/share/omarchy/config/plymouth/*.png" &>/dev/null; then
    sudo cp "$HOME/.local/share/omarchy/config/plymouth/"*.png /usr/share/plymouth/themes/omarchy/
  fi

  sudo plymouth-set-default-theme omarchy
fi
