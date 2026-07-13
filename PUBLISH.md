# 公開手順（GitHub Pages）

このフォルダは GitHub リポジトリ `nimahashi-cyber/lp` に接続済みです。
更新後はコミットして push すると、GitHub Pages の公開内容に反映されます。

## 更新を公開する
このフォルダで次を実行します。

```bash
git add .
git commit -m "Update ONE LAUNCH LP"
git push origin main
```

## 公開URL
- サイト（ショーケース）: `https://nimahashi-cyber.github.io/lp/`
- 各テンプレのダウンロード:
  - サロン:            `.../lp/dl/one-launch-salon.zip`
  - クリニック/コスメ: `.../lp/dl/one-launch-clinic-cosme.zip`
  - ショップ:          `.../lp/dl/one-launch-shop.zip`
  - スポーツ:          `.../lp/dl/one-launch-sports.zip`
  - EV:                `.../lp/dl/one-launch-ev.zip`
  - スタンダード:      `.../lp/dl/one-launch-standard.zip`

LINE の自動応答／リッチメニューにあるURLは、この公開URLを使います。

## メモ
- ダウンロードZIPは `build-downloads.ps1` で再生成できます（テンプレ更新時）。
- `dl/` 配下のZIPは git 追跡対象・Pages で配信されます。
- 生成スクリプト・ジョブJSON・`.claude/` は `.gitignore` で公開対象外にしています。
