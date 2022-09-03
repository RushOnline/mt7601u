# SPDX-License-Identifier: GPL-2.0-only
ifneq ($(KERNELRELEASE),)
obj-$(CONFIG_MT7601U)	+= mt7601u.o

mt7601u-objs	= \
	usb.o init.o main.o mcu.o trace.o dma.o core.o eeprom.o phy.o \
	mac.o util.o debugfs.o tx.o

CFLAGS_trace.o := -I$(src)
else
KDIR ?= /lib/modules/`uname -r`/build

all:
	make modules
	sudo make modules_install
	sudo depmod -a

%: force
	$(MAKE) -C $(KDIR) M=$$PWD $@

force: ;

endif
