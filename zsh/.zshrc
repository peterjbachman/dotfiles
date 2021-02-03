
 if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export GOPATH=$HOME/go

export PATH=/Users/peter/go/bin:$PATH

# Various Flags for Compilation
LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

eval "$(starship init zsh)"

export HOMEBREW_INSTALL_BADGE=""

export PATH="/usr/local/sbin:$PATH"

export EDITOR="nvim"

export GPG_TTY=$(tty)
