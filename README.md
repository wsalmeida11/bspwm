# BSPWM (Gerenciador de janelas)
<img src = "screenshots/captura_1.png">

## 1 - instalação manual 

### 1.1 - Base do gerenciador
```
sudo apt install xorg xinit bspwm xfce4-terminal
```
### 1.2 - Configurações iniciais
```
mkdir -p ~/.config/{bspwm,sxhkd}
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
sed -i 's/urxvt/xfce4-terminal/g' ~/.config/sxhkd/sxhkdrc
```
