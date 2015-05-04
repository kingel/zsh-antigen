ZSHA_BASE=$HOME/.zsh-antigen
source $ZSHA_BASE/antigen/antigen.zsh

antigen-use oh-my-zsh
antigen-bundle git

if [ "$OSTYPE"="darwin11.0" ]; then
	antigen-bundle osx
fi

antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle $ZSHA_BASE/bundles/git-completion
antigen-bundle $ZSHA_BASE/bundles/stv
antigen-bundle $ZSHA_BASE/bundles/virtualenv
antigen-bundle arialdomartini/oh-my-git
antigen theme arialdomartini/oh-my-git-themes oppa-lana-style


antigen-apply

export EDITOR=vim

alias pretty='pygmentize -g -O encoding=utf-8'
alias glp="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
