# ASCII-only. Reads line-templates.json (UTF-8) and writes line-flex-carousel.json.
# URLs use the public Cloudflare Pages host.
$ErrorActionPreference = 'Stop'
$site = 'https://one-launch.pages.dev'
$dir  = $PSScriptRoot

$templates = (Get-Content (Join-Path $dir 'line-templates.json') -Raw -Encoding UTF8) | ConvertFrom-Json
$copy = (Get-Content (Join-Path $dir 'line-copy.json') -Raw -Encoding UTF8) | ConvertFrom-Json

$bubbles = foreach ($t in $templates) {
  [ordered]@{
    type='bubble'; size='kilo'
    body=[ordered]@{
      type='box'; layout='vertical'; spacing='sm'; paddingAll='16px'
      contents=@(
        [ordered]@{ type='box'; layout='vertical'; height='6px'; backgroundColor=$t.accent; cornerRadius='3px'; contents=@() },
        [ordered]@{ type='text'; text=$t.tag; size='xxs'; color=$t.accent; weight='bold'; margin='md' },
        [ordered]@{ type='text'; text=$t.title; size='md'; weight='bold'; color='#1C2530'; wrap=$true },
        [ordered]@{ type='text'; text=$t.desc; size='xs'; color='#8A8F97'; wrap=$true }
      )
    }
    footer=[ordered]@{
      type='box'; layout='vertical'; spacing='sm'; paddingAll='12px'
      contents=@(
        [ordered]@{ type='button'; style='primary'; height='sm'; color='#06C755';
          action=[ordered]@{ type='uri'; label=$copy.dlLabel; uri=("{0}/dl/{1}" -f $site,$t.zip) } },
        [ordered]@{ type='button'; style='secondary'; height='sm';
          action=[ordered]@{ type='uri'; label=$copy.sampleLabel; uri=("{0}/{1}" -f $site,$t.page) } }
      )
    }
  }
}

$carousel = [ordered]@{ type='carousel'; contents=@($bubbles) }
$json = $carousel | ConvertTo-Json -Depth 20 -Compress
$out = Join-Path $dir 'line-flex-carousel.json'
[System.IO.File]::WriteAllText($out, $json, (New-Object System.Text.UTF8Encoding($false)))
Write-Host ("wrote {0} ({1} chars)" -f $out, $json.Length)
