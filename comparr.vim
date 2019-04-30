"if exists("g:loaded_comparr")
  "finish
"endif
"let g:loaded_comparr = 1

function ArrangeVimFor(type)
  let l:basename = a:type
  let l:component_quintessence_filename = "quintessence/" . l:basename . ".q.yml"
  let l:component_test_filename = "test/" . l:basename . ".q.yml"

  echohl Error
  echo "basename: " . l:component_quintessence_filename
  echo "basename: " . l:component_test_filename
  echohl Normal
endfunction
