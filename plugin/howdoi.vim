if exists("g:howdoi")
  finish
endif

command! Howdoi call s:HowDoI()

fun! s:HowDoI()
  let currentLine = getline('.')
  let question = substitute(currentLine, '^\s*\(.\{-}\)\s*$', '\1', '')
  let command = 'howdoi ' . question
  let result = system(command)
  let lineNumber = line('.')
  normal! 0D
  if lineNumber == 0
      call append(lineNumber, split(result, '\n'))
  else
      call append(lineNumber - 1, split(result, '\n'))
  endif
  normal! =i{
endfun
