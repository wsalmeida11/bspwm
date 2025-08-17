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
sudo apt install xorg xinit bspwm xfce4-terminal vim rofi
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
- Você pode optar por continuar os passos de instalação ou pular para configuração através do dotfile.                                        
```
