setopt pushd_ignore_dups

setopt print_eight_bit

setopt interactive_comments

zstyle ':completion:*' list-colors ''
# -------------------------------------------------
#  rbenv PATH
# -------------------------------------------------
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(rbenv init -)"

# -------------------------------------------------
#  pyenv PATH
# -------------------------------------------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# -------------------------------------------------
#  nodebrew PATH
# -------------------------------------------------
export PATH=$HOME/.nodebrew/current/bin:$PATH

# --------------------------------------------------
#  カレントディレクトリ表示（左）
# --------------------------------------------------

PROMPT='
%F{green}%d%f
%F{green}%f'

# --------------------------------------------------
#  git branch状態を表示（右）
# --------------------------------------------------

autoload -Uz vcs_info
setopt prompt_subst

# true | false
# trueで作業ブランチの状態に応じて表示を変える
zstyle ':vcs_info:*' check-for-changes false
# addしてない場合の表示
zstyle ':vcs_info:*' unstagedstr "%F{red}%B＋%b%f"
# commitしてない場合の表示
zstyle ':vcs_info:*' stagedstr "%F{yellow}★ %f"
# デフォルトの状態の表示
zstyle ':vcs_info:*' formats "%u%c%F{green}【 %b 】%f"
# コンフリクトが起きたり特別な状態になるとformatsの代わりに表示
zstyle ':vcs_info:*' actionformats '【%b | %a】'

precmd () { vcs_info }

RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# --------------------------------------------------
#  gitコマンド補完機能セット
# --------------------------------------------------

# autoloadの文より前に記述
fpath=(~/.zsh/completion $fpath)

# cdを使わずにディレクトリを移動できる
setopt auto_cd

# --------------------------------------------------
# alias
# --------------------------------------------------
alias ll='ls -laG'
