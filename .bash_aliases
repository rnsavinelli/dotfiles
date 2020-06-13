# Custom aliases
alias cp='cp -i'      # confirm before overwriting something
alias df='df -h'      # human-readable sizes
alias free='free -m'  # show sizes in MB
alias more='less'
alias sizeof='du -sh'

alias vg='valgrind -q --tool=memcheck --leak-check=full'
alias cmp='g++ -std=c++17 -Wall -pedantic-errors -g3'
alias rot13='tr a-zA-Z n-za-mN-ZA-M'
alias spaces-to-tabs="sed -i 's/    /\t/g'"
alias camera='ffplay -f v4l2 -framerate 30 -vf hflip -video_size 640x480 /dev/video0'

# NVIDIA PRIME
alias offload='DRI_PRIME=1'

# Directory shortcuts
alias home='cd ~/'
alias downloads='cd ~/Downloads'
alias notes='cd ~/Documents/notes'
alias university='cd ~/Documents/university/courses'
alias github='cd ~/Documents/github'
