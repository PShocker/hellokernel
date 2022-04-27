obj-m := hello.o
KDIR := /home/shocker/Xiaomi_Kernel_OpenSource-zeus-s-oss/out
CFLAGS_MODULE=-fno-pic
ARCH=arm64

all:
	make -C $(KDIR) M=$(PWD) modules 
clean:    
	rm -f *.ko *.o *.mod.o *.mod.c *.symvers *.order