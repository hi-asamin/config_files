setopt print_eight_bit

zstyle ':completion:*' list-colors ''
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
# alias
# --------------------------------------------------
alias ll='ls -laG'







========== m1

## 日本語ファイル名を表示可能にする↲
setopt print_eight_bit↲
↲
# autoload settings↲
autoload -Uz colors && colors↲
↲
# 補完 setting↲
bindkey -v↲
autoload -Uz compinit && compinit↲
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'↲
↲
# git settings↲
autoload -Uz vcs_info↲
setopt prompt_subst↲
zstyle ':vcs_info:git:*' check-for-changes true↲
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"↲
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"↲
zstyle ':vcs_info:*' formats "%F{green}%c%u(%b)%f"↲
zstyle ':vcs_info:*' actionformats '(%b|%a)'↲
precmd () { vcs_info }↲
↲
# prompt settings↲
PROMPT='%F{cyan}%~%f %F{green}$vcs_info_msg_0_%f \$ '↲
↲
# history settings↲
export HISTFILE=~/.zsh_history↲
export HISTSIZE=1000↲
export SAVEHIST=100000↲
setopt share_history↲
setopt hist_ignore_all_dups↲
↲
# alias settings↲
alias ll='ls -laG'↲
↲
# nodebrew↲
export PATH=$HOME/.nodebrew/current/bin:$PATH↲
↲
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)↲
export PATH="/Users/asamin/.rd/bin:$PATH"↲
### MANAGED BY RANCHER DESKTOP END (DO NOT EDI
