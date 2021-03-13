
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#                               _ _       _                 _                 #
#     zsh config 2020          | (_)     ( )               | |                #
#   _ ____      ___ __ __ _  __| |_  ___ |/ ___     _______| |__  _ __ ___    #
#  | '_ \ \ /\ / / '__/ _` |/ _` | |/ _ \  / __|   |_  / __| '_ \| '__/ __|   #
#  | | | \ V  V /| | | (_| | (_| | | (_) | \__ \  _ / /\__ \ | | | | | (__    #
#  |_| |_|\_/\_/ |_|  \__,_|\__,_|_|\___/  |___/ (_)___|___/_| |_|_|  \___|   #
#                                                                             #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #                                                                                

# integration between omz (theming) and antibody (plugin handler)

# add custom binary folder to path (script storage)
export PATH="$PATH:$HOME/code/scripts:/usr/share/code/bin"
export ZSH=$HOME/.oh-my-zsh

########
#THEMES#
########

ZSH_THEME=lambda-gitster

########
#TWEAKS#
########

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

#########
#PLUGINS#
#########

source $ZSH/oh-my-zsh.sh

#handle antibody plugin loader
source <(antibody init)

antibody bundle < ~/.zshplugins

#########
#ALIASES#
#########

# Example aliases
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias cat="bat"

autoload -Uz promptinit; promptinit


################
#STARTUP SCRIPT#
################

#openshell | lolcat
curl -s "https://cascades.dev/api" | jq -r '.quote'
