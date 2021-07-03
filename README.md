# env

搞一些docker环境，以满足项目的编译运行

# 目前有哪些
## build_with_hk


用来 build go的项目

内含 HCNetSDK、mingw32

### HCNetSDK

这个默认带了的
```bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/var/lib/HCNetSDK/lib
```

### mingw32

这个主要是编译windows的可执行文件，并且使用了 cgo的情况才用

for win32:
```bash
export CXX=i686-w64-mingw32-g++-win32
export CC=i686-w64-mingw32-gcc-win32
```

for win64:
```bash
export CXX=x86_64-w64-mingw32-g++-win32
export CC=x86_64-w64-mingw32-gcc-win32
```
