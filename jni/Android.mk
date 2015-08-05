# 提供当前文件的路径，必须定义它在你的 Android.mk 文件的开始处
LOCAL_PATH := $(call my-dir)

# CLEAR_VARS 变量是由生成系统已提供的，
# 并且指出一个特殊的 GNU Makefile 文件为你清除除了 LOCAL_PATH 以外的许多的 LOCAL_* 变量，
# 这是必须的，因为全部的生成控制文件是在一个单独的 GNU Make 执行环境中被分析的，
# 在那里所有的变量是全局的。
include $(CLEAR_VARS)

# 该变量是必须定义的，用来标识你的 Android.mk 文件中描述的每个模块，
# 模块名字必须是唯一的，并且不能包含任何的空格。
LOCAL_MODULE:= libkkdvtca

# 该变量是必须包含将要生成且汇编成一个模块所需的 C / C++ 源文件的列表。
# 注意：不列出头文件和包含文件在这里，因为生成系统将自动地为你估算信赖。
#LOCAL_SRC_FILES := 多个源代码文件(*.c)用空格分隔
#LOCAL_SRC_FILES := test.c

MY_CPP_PATH  := $(LOCAL_PATH)/
My_All_Files := $(shell find $(MY_CPP_PATH)/.)
My_All_Files := $(My_All_Files:$(MY_CPP_PATH)/./%=$(MY_CPP_PATH)%)
MY_CPP_LIST  := $(filter %.cpp %.c,$(My_All_Files)) 
MY_CPP_LIST  := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

LOCAL_SRC_FILES := $(MY_CPP_LIST)

# 一个可选的路径列表，做为 include 搜索路径之一。
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/\
    $(LOCAL_PATH)/Inc\


LOCAL_ALLOW_UNDEFINED_SYMBOLS := true

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)