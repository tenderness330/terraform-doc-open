# terraform-doc-open

terraformのドキュメントを開くvimプラグインです。

## 依存

[open-browser.vim](https://github.com/tyru/open-browser.vim)に依存しています。



## 使い方

ドキュメントを開きたいリソースに行を合わせて `:OpenTerraformResourcePage` を実行してください。

```terraform
1 resource "aws_vpc" "test" {
2   cidr_block = "10.0.0.0/16"
3 }
```



### その他

もっといいプラグインの書き方募集中



### やりたいこと

[] dataに対応
[] providerに対応
[] vim内で開きたい
