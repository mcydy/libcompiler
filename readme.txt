注意：编译环境需要在Ubuntu linux系统下使用；

1、解析android-ndk-r8c-linux-x86.tar.bz2到/home目录，默认目录为android-ndk-r8c；

2、解压libcomplier到当前目录，如/home/user；

3、将*.c拷贝到/home/user/libcomplier/jni/Inc目录；

4、将*.h拷贝到/home/user/libcomplier/jni/Src目录；

5、切换到/home/user/libcomplier目录；

6、执行/home/android-ndk-r8c/ndk-build编译文件；（直接进入ndk-build可执行文件的目录执行）

7、生成的libtest.a在/home/libcomplier/obj/local/armeabi下；

