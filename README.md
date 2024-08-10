# using openai-whisper in local

主要是尝试使用poetry来在windows系统上安装openai-whisper, 希望能尽量使用上层命令.

1. torch安装速度问题

torch-cuda非常大, 所以它不在pypi镜像源上, download.pytorch.org上大概需要2个小时下载完, 这无法接受.
由于torch和torch-cuda共享依赖(cudnn之类的依赖怎么就能在pypi上呢...), 所以一个常见小技巧:

使用pypi-mirror下载好依赖, 再使用`poetry run pip install torch==${version}+cu${cuversion} -f ${pypi-mirror}`来安装torch-cuda.

这样也会带来另外的问题: poetry会发现torch的版本改变了, 进而在改动依赖时企图自动将其"update"回去, 所以搞好之后尽量别动了.

PS: 如果poetry能提供下载过程中url改写功能的话, 可以将`download.pytorch.org/whl`给rewrite成镜像站的地址, 这样就不用绕过poetry用pip了.

2. 执行问题

poetry可能是按名称搜索venv/base路径搜索的, 用`poetry run python3`就用的是base的python3, venv内没python3, 需要`poetry run python`

3. 可执行文件

注意`./.venv/Scripts`下面不同平台executable的区别, windows下是`.exe`, 写脚本得用`whisper.exe`
