export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin
export PATH="/home/shifter/.local/bin:$PATH"

ZSH_THEME="af-magic"
FONT="Hack Regular"

plugins=(git)

source $ZSH/oh-my-zsh.sh
alias cpbuff='xclip -selection clipboard'
