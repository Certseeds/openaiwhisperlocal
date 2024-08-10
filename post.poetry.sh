#!/usr/bin/env bash
set -euox pipefail
main(){
    poetry run pip3 install "torch==2.3.1+cu121" -f https://mirror.sjtu.edu.cn/pytorch-wheels/torch_stable.html
}
main
