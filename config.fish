# CONFIGURACIÓN INICIAL DE FISH
# @aherreros-dev

# Establecer rutas importantes en el PATH
set -U fish_user_paths /opt/homebrew/bin /opt/homebrew/sbin $fish_user_paths  # (Apple Silicon)
#set -U fish_user_paths /usr/local/bin /usr/local/sbin $fish_user_paths  # (Mac Intel)

# Usar una mejor historia de comandos
set -g fish_history my_custom_history

# Habilitar colores bonitos en ls
set -x LSCOLORS gxfxcxdxbxegedabagacad
set -x LS_COLORS "di=34:ln=36:so=35:pi=33:ex=32:bd=34;46:cd=34;43:su=37;41:sg=30;43:tw=30;42:ow=30;43"

# Configuración del mensaje de bienvenida del shell (para que aparezca el logo de Fish)

function fish_greeting
fish_logo red brred yellow #para que se vea naranja y amarillo acorde con el tema que elegimos en Ghostty
# fish_logo | lolcat #para que se vea multicolor
#fortune | cowsay -r | lolcat #para que aparezca algo aleatorio y nos de un mensaje colorido 
#echo The time is (set_color yellow)(date +%T)(set_color normal) and this machine is called $hostname

   
   set_color yellow
    echo "╭──────────────────────────────────────────╮"
    echo "│              [ SYSTEM INFO ]             │"
    echo "├──────────────────────────────────────────┤"
    set_color brmagenta
    printf "│ » Time    :  %-26s  │\n" (date '+%H:%M:%S')
    printf "│ » Date    :  %-26s  │\n" (date '+%A, %d %B %Y')
    printf "│ » Host    :  %-26s  │\n" (scutil --get LocalHostName)
    printf "│ » Uptime  :  %-26s  │\n" (uptime | awk -F', ' '{print $1}' | cut -d ' ' -f3-)
    printf "│ » Memory  :  %-6s /   %-6s GB        │\n" (vm_stat | awk '/Pages free/ {printf "%.2f", $NF * 4096 / 1024^3}') (vm_stat | awk '/Pages active/ {printf "%.2f", $NF * 4096 / 1024^3}')
    set_color yellow
    echo "╰──────────────────────────────────────────╯"
    set_color normal


end










