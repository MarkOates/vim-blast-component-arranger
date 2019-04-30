"if exists("g:loaded_comparr")
  "finish
"endif
"let g:loaded_comparr = 1


function! FileExists(filename_arg)
  let l:filename = a:filename_arg

  if filereadable(expand(l:filename))
    return 1
  else
    return 0
  endif
endfunction


function ArrangeVimFor(type)
  let l:basename = a:type
  let l:component_quintessence_filename = "quintessence/" . l:basename . ".q.yml"
  let l:component_test_filename = "tests/" . l:basename . "Test.cpp"

  if FileExists(l:component_quintessence_filename)
    echo "✅ exists: " . l:component_quintessence_filename
    echo "✅ exists: " . l:component_test_filename
  else
    echohl Error
    echo "basename does not exist: " . l:component_quintessence_filename
    echo "basename does not exist: " . l:component_test_filename
    echohl Normal
  endif
endfunction
