" Manage python dependencies for nvim plugins

" No python 2
let g:python_support_python2_require = 0

" work outside of venv
let g:python_support_python2_venv = 0
let g:python_support_python3_venv = 0

" BEGIN python deps for nvim-completion-manager
" for python completions
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'jedi')
" language specific completions on markdown file
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'mistune')

" utils, optional
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'psutil')
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'setproctitle')
" END python deps for nvim-completion-manager
