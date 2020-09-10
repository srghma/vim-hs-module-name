command! InsertPurescriptModuleName exe "normal! i".pursModule#MkModuleHeader()

if !exists('g:purs_module_no_mappings')
  if !exists('g:purs_module_mapping')
    let g:purs_module_mapping = 'M'
  endif

  exec 'autocmd FileType purescript nnoremap <buffer> ' .
     \ g:purs_module_mapping .
     \ ' :InsertPurescriptModuleName<CR>'
endif

if !exists('g:purs_module_no_auto')
  autocmd BufNewFile *.purs InsertPurescriptModuleName
endif
