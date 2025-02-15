#!/usr/bin/env bash

echo "
## OrangeFox Recovery Build - Unofficial
🖥 OrangeFox Branch: ${{ env.FOX_BRANCH }}
📱 Device: ${{ env.DEVICE }}
📝 CodeName: ${{ env.CODENAME }}
📂 Size: ${{ env.ORF_SIZE }}
👩‍💻 Top Commit: ${{ env.DT_COMMIT }}
📕 MD5: ${{ env.ORF_MD5 }}
📘 SHA1: ${{ env.ORF_SHA1 }}
" > ${GITHUB_ACTION_PATH}/release-notes.md
