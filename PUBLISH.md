# 公開手順（Cloudflare Pages）

このフォルダは GitHub リポジトリと Cloudflare Pages に接続済みです。
更新後はコミットして push すると、Cloudflare Pages の公開内容に自動反映されます。

## 更新を公開する
このフォルダで次を実行します。

```bash
git add .
git commit -m "Update ONE LAUNCH LP"
git push origin main
```

## 公開URL
- サイト（ショーケース）: `https://one-launch.pages.dev/`
- 各テンプレのダウンロード:
  - サロン:            `https://one-launch.pages.dev/dl/one-launch-salon.zip`
  - クリニック/コスメ: `https://one-launch.pages.dev/dl/one-launch-clinic-cosme.zip`
  - ショップ:          `https://one-launch.pages.dev/dl/one-launch-shop.zip`
  - スポーツ:          `https://one-launch.pages.dev/dl/one-launch-sports.zip`
  - EV:                `https://one-launch.pages.dev/dl/one-launch-ev.zip`
  - スタンダード:      `https://one-launch.pages.dev/dl/one-launch-standard.zip`

LINE の自動応答／リッチメニューにあるURLは、この公開URLを使います。

## メモ
- ダウンロードZIPは `build-downloads.ps1` で再生成できます（テンプレ更新時）。
- `dl/` 配下のZIPは git 追跡対象・Cloudflare Pages で配信されます。
- 生成スクリプト・ジョブJSON・`.claude/` は `.gitignore` で公開対象外にしています。
