if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/fabio/.config/nvim,/etc/xdg/nvim,/Users/fabio/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.4.4/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/fabio/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/fabio/.config/nvim/after,/Users/fabio/.cache/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/fabio/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/fabio/.config/nvim/bundles'
let g:dein#_runtime_path = '/Users/fabio/.cache/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/fabio/.cache/dein/.cache/init.vim'
let &runtimepath = '/Users/fabio/.config/nvim,/etc/xdg/nvim,/Users/fabio/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/fabio/.cache/dein/repos/github.com/Shougo/dein.vim,/Users/fabio/.config/nvim/bundles/repos/github.com/tbodt/deoplete-tabnine,/Users/fabio/.cache/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.4.4/share/nvim/runtime,/Users/fabio/.cache/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/fabio/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/fabio/.config/nvim/after,/Users/fabio/.config/nvim/bundles/repos/github.com/Shougo/dein.vim'
filetype off
