# �ṩ��ǰ�ļ���·�������붨��������� Android.mk �ļ��Ŀ�ʼ��
LOCAL_PATH := $(call my-dir)

# CLEAR_VARS ������������ϵͳ���ṩ�ģ�
# ����ָ��һ������� GNU Makefile �ļ�Ϊ��������� LOCAL_PATH ��������� LOCAL_* ������
# ���Ǳ���ģ���Ϊȫ�������ɿ����ļ�����һ�������� GNU Make ִ�л����б������ģ�
# ���������еı�����ȫ�ֵġ�
include $(CLEAR_VARS)

# �ñ����Ǳ��붨��ģ�������ʶ��� Android.mk �ļ���������ÿ��ģ�飬
# ģ�����ֱ�����Ψһ�ģ����Ҳ��ܰ����κεĿո�
LOCAL_MODULE:= libkkdvtca

# �ñ����Ǳ��������Ҫ�����һ���һ��ģ������� C / C++ Դ�ļ����б�
# ע�⣺���г�ͷ�ļ��Ͱ����ļ��������Ϊ����ϵͳ���Զ���Ϊ�����������
#LOCAL_SRC_FILES := ���Դ�����ļ�(*.c)�ÿո�ָ�
#LOCAL_SRC_FILES := test.c

MY_CPP_PATH  := $(LOCAL_PATH)/
My_All_Files := $(shell find $(MY_CPP_PATH)/.)
My_All_Files := $(My_All_Files:$(MY_CPP_PATH)/./%=$(MY_CPP_PATH)%)
MY_CPP_LIST  := $(filter %.cpp %.c,$(My_All_Files)) 
MY_CPP_LIST  := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

LOCAL_SRC_FILES := $(MY_CPP_LIST)

# һ����ѡ��·���б���Ϊ include ����·��֮һ��
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/\
    $(LOCAL_PATH)/Inc\


LOCAL_ALLOW_UNDEFINED_SYMBOLS := true

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)