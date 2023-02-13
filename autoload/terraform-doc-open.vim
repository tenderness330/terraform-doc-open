function! terraform_doc_open#RemoveQuote(s) abort
  return  substitute(a:s, "\"", "", "g")
endfunction 


function! terraform_doc_open#OpenResourcePage() abort
  let current_line = getline('.')
  let words =  split(current_line, '\s\+')
  let resource_name = terraform_doc_open#RemoveQuote(substitute(words[1], "aws_", "", "g"))
  let base = 'https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/'
  let url = base . resource_name

  silent execute "OpenBrowser" . " " . url
endfunction
