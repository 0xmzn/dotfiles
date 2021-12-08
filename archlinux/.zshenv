# NNN
BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

# fzf
FZF_DEFAULT_OPS="--extended"
FZF_COMPLETION_TRIGGER='`'
FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude .git"
FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git"
FZF_CTRL_T_COMMAND="fd --hidden --follow --exclude .git"
