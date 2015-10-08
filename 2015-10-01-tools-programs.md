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

### Lint tool list

* ansible
	* ansible-lint
* json
	* jsonlint
* shell
	* shellcheck
	* bashate
	* checkbashisms
* sql
	* sqlint : Error出て入れれてない
* markdown
	* mdl
* yaml
	* js-yaml
	* yaml-lint
* text
	* Redpen

### Pandoc

* markdownからtextileに変換
		pandoc -s hogehohe.md -o hogehohe.textile

### Redpen

* Spelling機能は半角スペースで区切られた単語にたいしてのみ動作する点に注意してください

### Shell Syntax check tools

* ShellCheck
* bashate
* checkbashisms

#### ShellCheck

* SC2034
	* -> for文とかではdummyとして`_`を使う
			for _ in ${1..10} ; do foo; done

#### bashate

	bashate -i E002,E003

* E002: ensure that indents are only spaces, and not hard tabs
* E003: Not an indent with multiple of 4

## Tools key unity

Commands        | Vim          | Vrapper      | cVim          | tmux                    | Cmder             | RLogin
---             | ---          | ---          | ---           | ---                     | ---               | ---
Cut             | `x`          | `x`          | -             | -                       | n/a               | n/a
Copy            | `y`          | `y`          | `y`           | `<C-s>[`                | n/a(mouse only?)  | `<A-c>`
Paste           | `p`          | `p`          | `p`           | `<C-s>]`<br />`<C-S-v>` | `<C-S-v>`         | `<A-v>`
Pain move       | `s{h,j,k,l>` | `s{h,j,k,l>` | n/a           | `<C-s>{h,l,j,k}`        | `<Alt-{h,l,j,k}>` | ?
Pain split      | `sp`         | `sp`         | -             | `<C-s>p`                | `<Alt-p>`         | `<C-S-p>`
Pain vsplit     | `sv`         | `sv`         | -             | `<C-s>v`                | `<Alt-v>`         | `<C-S-v>`
Pain maximize   | `<C-t>`      | `<C-t>`      | ?             | `<C-s>t`                | `<Alt-t>`         | ?
Pain close      | `<C-c>`      | `<C-c>`      | `x`           | `<C-s>c`                | `<Alt-c>`         | `<C-S-c>`
Shutdown        | `:qa`        | `:qa`        | `:qa`         | `<C-s>q`                | `<Alt-q>`         | ?
Tab move        | `<C-{h,l}>`  | `<C-{h,l}>`  | `<C-{h,l}>`   | -                       | `<C-S-{h,l}`      | ?
Tab open        | `:tabe[dit]` | `:tabe[dit]` | `<C-t>`       | -                       | `<C-S-t>`         | ?
Tab close other | n/a          | n/a          | `<C-S-{h,l}>` | -                       | n/a               | ?

Hint

* `<C-S-hoge>`のような3キー同時押しは、cVim, Cmder, RLoginのみで可能
* `<C-S>hoge`のようなprefix -> キーという定義は、Vim, Vrapper, tmuxのみで可能
* RLoginはやめて、Cmderをsshクライアントとしたい(いろいろめんどい)
* CmderのPaste,Tab move,Tab openが微妙(他と合ってない)
* cVim <--> Cmderで`<C-S-{h,l}>`の挙動がちがうのが紛らわしい

