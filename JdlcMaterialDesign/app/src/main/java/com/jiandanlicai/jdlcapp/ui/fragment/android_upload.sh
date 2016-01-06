#!/bin/bash

usage() {
    cat <<EOF
上传 apk 文件，同时更新 app.jiandanlicai.com 服务器中的版本号

Usage: $0 apk_file

ARGUMENTS
    apk_file
        apk文件绝对地址

EXAMPLES

bash android_upload.sh jdlc-v2.0.0.apk

END

EOF
    exit
}

################ 工具函数
msg() {
    printf '%b\n' "$1" >&2
}

success() {
    msg "\e[32m[✔]\e[0m ${1}${2}"
}

error() {
    msg "\e[31m[✘]\e[0m ${1}${2}"
    exit 1
}

program_exist() {
    type $1 >/dev/null 2>&1

    if [[ $? -ne 0 ]]; then
        error "$2"
    fi
}

##################### WORK

[[ $# != 1 ]] && usage

scp $1 apk@120.27.37.45:/alidata/www/download/
[[ $? -ne 0 ]] && error '上传 apk 失败,联系后端~'



success "上传 apk 成功!"
success "Done!"
