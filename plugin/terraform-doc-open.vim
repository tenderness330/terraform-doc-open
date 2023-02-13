if exists('g:loaded_terraform_doc')
  finish
endif

let g:loaded_terraform_doc = 1
command! OpenTerraformResourcePage call terraform_doc_open#open_resource_page()
