" Fold files

" profile files
au BufWinLeave .profile mkview
au BufWinEnter .profile silent loadview
au BufWinLeave .bash_profile mkview
au BufWinEnter .bash_profile silent loadview
au BufWinLeave .zprofile mkview
au BufWinEnter .zprofile silent loadview

" aliases
au BufWinLeave aliases mkview
au BufWinEnter aliases silent loadview
au BufWinLeave bash_aliases mkview
au BufWinEnter bash_aliases silent loadview

" Other files
au BufWinLeave comandos mkview
au BufWinEnter comandos silent loadview
au BufWinLeave i3.config mkview
au BufWinEnter i3.config silent loadview
au BufWinLeave config mkview
au BufWinEnter config silent loadview
