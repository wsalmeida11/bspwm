# BSPWM (Gerenciador de janelas)
```
Nota Importantes:
- Esse passo a passo aborda 1 (instalação) 2 personalização através dos arquivos de configuração
- Procedimentos deve ser feito após uma instalação mínima do sistema.
- Escolha entre instalação e configuração não execute os dois juntos.
```
<img src = "screenshots/captura_1.png">

## 1 - instalação

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
