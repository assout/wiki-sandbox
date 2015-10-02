# Title: Tools/Programs

Date: 2015-10-01 11:05
Tags: []
Categories: []

---

## Prelude

* Linux限定のものは、ref. <2014-09-09-linux.md>
* Windows限定のものは、ref. <2014-12-04-windows.md>
* 重要なものは別ファイル化
	* Git : <2015-02-02-git.md>
	* Docker : <2015-08-10-docker.md>
	* And other

## Tools

### Pandoc

* markdownからtextileに変換
		pandoc -s hogehohe.md -o hogehohe.textile

### Redpen

* Spelling機能は半角スペースで区切られた単語にたいしてのみ動作する点に注意してください

### Shell Syntax check tools

* ShellCheck
* checkbashisms
* bashate

#### bashate

	bashate -i E002,E003

## Tools key unity

Commands      | Vim          | Vrapper      | cVim        | tmux                    | Cmder             | RLogin
---           | ---          | ---          | ---         | ---                     | ---               | ---
Cut           | `x`          | `x`          | -           | -                       | n/a               | n/a
Copy          | `y`          | `y`          | `y`         | `<C-s>[`                | n/a(mouse only)   | `<A-c>`
Paste         | `p`          | `p`          | `p`         | `<C-s>]`<br />`<C-S-v>` | `<A-v>`           | `<A-v>`
Tab move      | `<C-{h,l}>`  | `<C-{h,l}>`  | `<C-{h,l}>` | -                       | TODO              | TODO
Pain move     | `s{h,j,k,l>` | `s{h,j,k,l>` | n/a         | `<C-s>{h,l,j,k}`        | `<C-S-{h,l,j,k}>` | TODO
Pain split    | `sp`         | `sp`         | -           | `<C-s>p`                | `<C-S-p>`         | `<C-S-p>`
Pain vsplit   | `sv`         | `sv`         | -           | `<C-s>v`                | `<C-S-v>`         | `<C-S-v>`
Pain maximize | `<C-t>`      | `<C-t>`      | TODO        | `<C-s>t`                | `<C-S-t>`         | TODO
Pain close    | `<C-c>`      | `<C-c>`      | `x`         | `<C-s>c`                | `<C-S-c>`         | `<C-S-c>`
Shutdown      | `:qa`        | `:qa`        | `:qa`       | `<C-s>q`                | `<C-S-q>`         | TODO

Hint

* `<C-S-hoge>`のような3キー同時押しは、cVim, Cmder, RLoginのみで可能
* `<C-S>hoge`のようなprefix -> キーという定義は、Vim, Vrapper, tmuxのみで可能
* RLoginはやめて、Cmderをsshクライアントとしたい
* CmderのPasteが微妙(他と合ってない)

