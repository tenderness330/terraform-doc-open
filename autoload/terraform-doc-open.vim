function! terraform_doc_open#remove_quote(s) abort
  return  substitute(a:s, "\"", "", "g")
endfunction 


function! terraform_doc_open#open_resource_page() abort
  let current_line = getline('.')
  let words =  split(current_line, '\s\+')
  let resource_name = terraform_doc_open#remove_quote(substitute(words[1], "aws_", "", "g"))
  let base = 'https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/'
  let url = base . resource_name

  silent execute "OpenBrowser" . " " . url
endfunction
