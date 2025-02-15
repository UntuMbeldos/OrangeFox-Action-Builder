# OrangeFox Action Builder
🦊 A Workflow to build OrangeFox recovery automatically

![banner](https://i.imgur.com/hdLJ3Hi.png "banner")

[![](https://img.shields.io/github/actions/workflow/status/UntuMbeldos/OrangeFox-Action-Builder/test.yml?style=for-the-badge&color=fee4d0&logo=githubactions&logoColor=fee4d0)](https://github.com/UntuMbeldos/OrangeFox-Action-Builder/actions/workflows/test.yml)
[![](https://img.shields.io/github/issues/UntuMbeldos/OrangeFox-Action-Builder?style=for-the-badge&color=fee4d0&logo=files&logoColor=fee4d0)](https://github.com/UntuMbeldos/OrangeFox-Action-Builder/issues)
[![](https://img.shields.io/github/stars/UntuMbeldos/OrangeFox-Action-Builder?style=for-the-badge&color=fee4d0&logo=starship&logoColor=fee4d0)](https://github.com/UntuMbeldos/OrangeFox-Action-Builder/stargazers)
[![](https://img.shields.io/github/forks/UntuMbeldos/OrangeFox-Action-Builder?style=for-the-badge&color=fee4d0&logo=git&logoColor=fee4d0)](https://github.com/UntuMbeldos/OrangeFox-Action-Builder/forks)
[![](https://img.shields.io/github/license/UntuMbeldos/OrangeFox-Action-Builder?style=for-the-badge&color=fee4d0&logo=apache&logoColor=fee4d0)](https://github.com/UntuMbeldos/OrangeFox-Action-Builder/blob/main/LICENSE)
[![](https://img.shields.io/github/v/release/UntuMbeldos/OrangeFox-Action-Builder?style=for-the-badge&color=fee4d0&logo=github&logoColor=fee4d0)](https://github.com/UntuMbeldos/OrangeFox-Action-Builder/releases/latest)
[![](https://img.shields.io/github/last-commit/UntuMbeldos/OrangeFox-Action-Builder?style=for-the-badge&color=fee4d0&logo=codeigniter&logoColor=fee4d0)](https://github.com/UntuMbeldos/OrangeFox-Action-Builder/commits/main/)

> [!WARNING]
>
> These workflows are designed only for building orangefox recovery 12.1

> [!IMPORTANT]
> This workflow is universal. You need to have a certain foundation in writing github workflows and a little knowledge of the OrangeFox device tree to use this.

## How to use?
- Find your kernel source || orf common tree || orf device tree repository and configure the workflow file according to the following example and README.md:

```yml
name: OrangeFox - Builder

on:
  workflow_dispatch:

jobs:
  build:
    name: 🦊 Building OrangeFox Recovery
    runs-on: ubuntu-latest
    env:
      GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    permissions: write-all
    steps:
    - name: Checkout
      uses: actions/checkout@v4

    - name: OrangeFox Build Test
      uses: UntuMbeldos/OrangeFox-Action-Builder@v1
      with:
        FOX_SYNC_BRANCH: '12.1'
        DEVICE_TREE: 'https://github.com/UntuKemeng/ORF_device_vivo_1938'
        DEVICE_TREE_BRANCH: '12.1'
        DEVICE_PATH: 'device/vivo/1938'
        DEVICE_NAME: '1938'
        BUILD_TARGET: 'recovery'
        TG_CHAT_ID: '${{ secrets.TG_CHAT_ID }}'
        TG_TOKEN: '${{ secrets.TG_TOKEN }}'
        MAINTAINER_URL: 'https://i.ibb.co.com/8gyjXq06/maintainer.png'
        GH_RELEASE: 'true'
```

> [!NOTE]
> You do not need to fork this repository.
>
> If you just want to compile the Orangefox recovery, please do not submit PR after modification!

- Finally, run the workflow you just wrote.
## Inputs
| input               | required | description | example value |
|---------------------|----------|-------------|---------|
| KERNEL_TREE | false | URL of Android kernel source code for your phone | https://github.com/username/project |
| KERNEL_BRANCH | false | Branch On Your Kernel Tree | 12.1 |
| KERNEL_PATH | false | Path On Your Kernel Directory | kernel/vivo/1938 |
| DEVICE_TREE | true | URL of Orangefox device tree in your phone | https://github.com/username/project |
| DEVICE_TREE_BRANCH | true | OrangeFox Device Tree Branch | 12.1 |
| DEVICE_PATH | true | Specify Your Device Path | device/vivo/1938 |
| DEVICE_NAME | true | Specify Your Device Codename | 1938 |
| BUILD_TARGET | true | Specify Your Build Target [boot, recovery, vendorboot] | recovery |
| COMMON_TREE | false | URL Common Tree On Your Device | https://github.com/username/project |
| COMMON_BRANCH | false | Branch On Your Common Tree | 12.1 |
| COMMON_PATH | false | Path On Your Common Directory | common/vivo/1938 |
| MAINTAINER_URL | false | Image size must be 192x192 | https://github.com/username/project |
| GH_RELEASE | true | Upload Build To Github Release | Default is [false] |
| TG_CHAT_ID | false | Telegram Chat ID | -123456789 |
| TG_TOKEN | false | Telegram Bot Token | 123456:12345678987654321 |
