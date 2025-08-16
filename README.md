# BSPWM (Gerenciador de janelas)
```
Notas Importantes:
- Passo a Passo para instalação e configuração do BSPWM 
- Procedimentos deve ser feito após uma instalação mínima do sistema.
```
<img src = "screenshots/captura_1.png">

## 1 - instalação (Gerenciador + Ambiente de trabalho mínimo)

### 1.1 - Base
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
```
Nota:
- Com a instalação acima ja é possível acessar desktop (mínimo) com startx.                                                  
```
### 1.3 - Polybar (Barra de status)
```
xdg-user-dirs-update
sudo apt install polybar
mkdir ~/.config/polybar
cp /usr/share/doc/polybar/examples/config.ini ~/.config/polybar
echo "polybar -c $HOME/.config/polybar/config.ini &" >> ~/.config/bspwm/bspwmrc
echo 'xsetroot -cursor_name left_ptr &' >> ~/.config/bspwm/bspwmrc
```

### 1.4 - Feh (gerenciador de imagens)
```
sudo apt install feh git
cd ; git clone https://github.com/wsalmeida11/bspwm
cp -r $HOME/bspwm/wallpaper $HOME/Imagens
touch ~/.fehbg
chmod +x ~/.fehbg
echo '#!/bin/sh' > ~/.fehbg
echo "feh --no-fehbg --bg-scale '$HOME/Imagens/wallpaper/bspwm.jpg'" >> ~/.fehbg
echo -e '\n# Iniciar com sistema' >> ~/.config/bspwm/bspwmrc
echo "exec $HOME/.fehbg" >> ~/.config/bspwm/bspwmrc
echo 'xsetroot -cursor_name left_ptr &' >> ~/.config/bspwm/bspwmrc
```




