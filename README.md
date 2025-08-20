# BSPWM (Gerenciador de janelas)
```
Notas Importantes:
- Backup do sistema através dos arquivos de configuração 
- Procedimentos deve ser feito após uma instalação mínima do sistema.
```
<img src = "screenshots/captura_1.png">

## 1 - instalação (Gerenciador + Ambiente de trabalho mínimo)

### 1.1 - Base
```
sudo apt install xorg xinit bspwm xfce4-terminal git vim rofi polybar pulseaudio feh
```
### 1.2 - Configuração através do home
```
cd ; git clone https://github.com/wsalmeida11/bspwm
cp -r ~/bspwm/home/.* ~/ ; cp -r ~/bspwm/home/* ~/
```
