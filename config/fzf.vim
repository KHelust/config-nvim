  " FZF

" This is the default extra key bindings
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }

" [Bufers] Jump to the existing window if possible
  let g:fzf_buffers_jump = 1
" [[B]Commits] Customize the options used by 'git log'
  let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" [Tags] Command to generate tags file
  let g:fzf_tags_command = 'ctags -R'
" [Commands] --expect expression for directly executing the command
  let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" [Window] Open a Big Window at the center
  let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.6 } }
