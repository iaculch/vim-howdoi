"howdoi vim wrapper written by Christian Iacullo

if exists("g:howdoi")
  finish
endif

command! Howdoi call s:HowDoI()

fun! s:HowDoI()
  "run howdoi with text from current line
  let currentLine = getline('.')
  let question = substitute(currentLine, '^\s*\(.\{-}\)\s*$', '\1', '')
  let command = 'howdoi ' . question
  let result = system(command)
  let lineNumber = line('.')
  "clear the current line
  normal! 0D
  "paste code block
  if lineNumber == 0
      call append(lineNumber, split(result, '\n'))
  else
      call append(lineNumber - 1, split(result, '\n'))
  endif
  "indent block after paste
  normal! =i{
endfun
"funs over
