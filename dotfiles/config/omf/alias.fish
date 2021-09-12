# {{@@ header() @@}}

alias v="nvim"
alias c="clear"
alias ls="exa --icons"

## Go to
alias cdc="cd ~/.config"

alias cdd="cd $REPO_LOCATION"
alias cde="cd $REPO_LOCATION/EPITECH/"
alias cdg="cd $REPO_LOCATION/GIT/"
alias cdw="cd $REPO_LOCATION/EPITECH/delivery"
alias cdp="cd $REPO_LOCATION/EPITECH/EIP/Pizzi"

## Git
alias gs="git status"
alias gl="git log"

##Valgrind
alias valgrindf="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --dsymutil=yes --num-callers=500 --log-file=valgrind.txt"
alias valgrind-colour="cat valgrind.txt | colout -t valgrind | less"

#clang-format
alias clang-format-all="find . -name \"*.hpp\" -print -o -name \"*.cpp\" -print -o -name \"*.c\" -print -o -name \"*.h\" -print | xargs clang-format -i --verbose"
alias formatter="/usr/bin/clang-format -style=file -fallback-style=none -assume-filename="

if test -f ~/.config/omf/custom_alias.fish
    source ~/.config/omf/custom_alias.fish
end
