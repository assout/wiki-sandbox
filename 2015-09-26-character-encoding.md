# Title: Character encoding

Date: 2015-09-26 18:56
Tags: []
Categories: []

---

## Notes

BOM

BOM付き(UTF-8)の場合、先頭に三バイトのBOMを付加してあります。BOMは具体的には0xEF 0xBB 0xBF です。
BOM無し(UTF-8N)にはこの三バイトが付きません。

BOM＝バイト順マーク（Byte Order Mark）は、文書ファイルの先頭に付ける EF BB BF という３バイトのバイナリデータです。
ファイルの文字コード（符号化方式）がUTF-8であることを明示するために付ける場合があります。
