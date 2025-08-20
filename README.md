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
Observação:
- Aprtir desse ponto o sistema pode ser iniciado com startx
```

## 2 - Configuração através do home
```
- Instalar apliactivos adicionais
- Baixar o orquivo home do github e extrair para home do usuário.
```
### 2.1 - Instalando aplicativos adicionais
```
sudo apt install git vim rofi polybar pulseaudio
cd ; git clone https://github.com/wsalmeida11/bspwm
cp -r ~/bspwm/home/* ~/

