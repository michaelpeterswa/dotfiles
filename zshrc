
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#                               _ _       _                 _                 #
#     zsh config 2019          | (_)     ( )               | |                #
#   _ ____      ___ __ __ _  __| |_  ___ |/ ___     _______| |__  _ __ ___    #
#  | '_ \ \ /\ / / '__/ _` |/ _` | |/ _ \  / __|   |_  / __| '_ \| '__/ __|   #
#  | | | \ V  V /| | | (_| | (_| | | (_) | \__ \  _ / /\__ \ | | | | | (__    #
#  |_| |_|\_/\_/ |_|  \__,_|\__,_|_|\___/  |___/ (_)___|___/_| |_|_|  \___|   #
#                                                                             #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #                                                                                

# add custom binary folder to path (script storage)
export PATH="$PATH:$HOME/custombin"

# Linux antigen file
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

########
#THEMES#
########

#antigen theme cloud
antigen theme miloshadzic

# Load the theme
antigen apply

########
#TWEAKS#
########

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

#########
#PLUGINS#
#########

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#########
#ALIASES#
#########

# Example aliases
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"

autoload -Uz promptinit; promptinit

################
#STARTUP SCRIPT#
################

openshell | lolcat
