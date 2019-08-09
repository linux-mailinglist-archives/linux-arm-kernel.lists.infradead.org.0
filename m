Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119A4883DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 22:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPOx2pBsntxyOcVYUrNvRNcvhmUq5EW3fP5uOki36QU=; b=WBzRSqQWIDDKzR
	B15PbbqBI5FB+znnXggorYV+J9y6G0FejawAjFLO21cwCQgEdo9GY1QUFte1M11hIEflIbqtZUZOu
	f2ojkxQtSaVq5sTTKrpXEYkE8KNtkv9eWPgnAxIoS8G/PiUn4l+roeghaVdZSECxrHXSK8JyC2ENh
	EM/MKU+XXCX+141XJfAqEs3Q3f5P0evdmil8U8NO4MitVZNQDpBVkWObeucM3oRJcgCkCSv6Izt0c
	o0FG/dNksTMF0qbdptSIn/mP4z5QXzCKillr4nASII8XGxc0fNIEQAh67+QA2NQDBGpDAllspB0cz
	VY9lS3FFGDkpKKGQLByQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwBV1-00011K-Kk; Fri, 09 Aug 2019 20:28:31 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwBUo-000109-3Z
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 20:28:25 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MOzKm-1hfbTW3TbA-00PMlU; Fri, 09 Aug 2019 22:28:15 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH 01/16] ARM: remove ks8695 platform
Date: Fri,  9 Aug 2019 22:27:29 +0200
Message-Id: <20190809202749.742267-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809202749.742267-1-arnd@arndb.de>
References: <20190809202749.742267-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:p3iQksRod1HjACdCz5LO1NL9+Gppnd3Nlk0MzAx7vRVrAH36l0i
 1Bln2Q/wBz9qzzyYNEVTto7XuTrld4tX45r1tl/xDF2CqlyHqDRlmtB59JifOllucCFlSap
 KWe3o9JFHIweP3bQi5UCRbhyJVAb/+NymVJRogr8wL2Quq6ghX97wN1GXTq0D0sG3xSRPj+
 85WnB6ZlZlC5LvNgi1+cw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fSC2t+hn6yU=:TWmTEcUsU243TuhvprcPr4
 YTV8WOTCCaxOsbSQFq50FFKdm9rqSECVTpGRa3eFRMqogf1nRPqpKTm4vTOR6ElG30Pix84vk
 8RB6UfxI1uBdwB8z3LIN5NmSkPREZmmhfJDC6ksjllF24lyRKEObQV34WSo7TWQIY0EQLvVS5
 LjSNGU/UpMZYgTwqVk/8IeD42h0SrWHIDUU5Uq1et1+t8tzgeTzatURMj3yRH3vkC7Ro6yvFe
 KrRYzQVsNQtTW5Qk/zzmEx6B3oOu6uTm7d5DRUpU38NPwxM3z56xsNuIcVgl4b3M5YPXj/Yrs
 CKQMSL5IaEvSYCuccuq7hOKyVmpSdU6Xm4d1ts8x0worXAEAWwgp3SG22wy80G8xx4pD+V6Wv
 vI6hrl1DxR9tBqDw1j29tiCTtDmOArePFQMHQDT5QvxlM5NBvJXSAJ5WQf5xMKOJwUBvzlcWs
 83fAvhSJ9tChgme52zgc19QPIHbWoG7ZySz2QD0/fftpJfIIHiruk5FWsVtgDHhXjrZANkDKF
 RypOqnwLWg9BZgE31N/v7bc13J+QplInzgY9clmf+TK2RIebdZ2J93dbjGCwoG8Gfqa7VWbD2
 cbewgEWEBgqx3wSAtpNf+5bfLhO71ELyQE9OeT+LilnCC3wpdMqmrEhH89q8mXHJlbJhTco+0
 kSZK2hcOFZdxpLlQUCrOqLru4KlHyWsAx3HFsudEmh5Wwv07YfNLEvUuorCEmTzbx4ZNN4E57
 0YJ9ptj40UFK/3hKGExhAaFT1cJn0l0CKLejRA==
X-Spam-Note: CRM114 run bypassed due to message size (102293 bytes)
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>, Greg Ungerer <gerg@kernel.org>,
 linux-kernel@vger.kernel.org, Ben Dooks <ben.dooks@codethink.co.uk>,
 Andrew Victor <linux@maxim.org.za>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ks8695 is an older SoC originally made by Kendin, which was later acquired
by Micrel, and subsequently by Microchip.

The platform port was originally contributed by Andrew Victor and Ben
Dooks, and later maintained by Greg Ungerer.

When I recently submitted cleanups, but Greg noted that the platform no
longer boots and nobody is using it any more, we decided to remove it.

Cc: Greg Ungerer <gerg@kernel.org>
Cc: Andrew Victor <linux@maxim.org.za>
Cc: Ben Dooks <ben.dooks@codethink.co.uk>
Link: https://wikidevi.com/wiki/Micrel
Link: https://lore.kernel.org/linux-arm-kernel/2bc41895-d4f9-896c-0726-0b2862fcbf25@kernel.org/
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 MAINTAINERS                                   |   6 -
 arch/arm/Kconfig                              |  16 +-
 arch/arm/Kconfig.debug                        |   8 -
 arch/arm/Makefile                             |   1 -
 arch/arm/configs/acs5k_defconfig              |  77 ------
 arch/arm/configs/acs5k_tiny_defconfig         |  69 -----
 arch/arm/configs/ks8695_defconfig             |  67 -----
 arch/arm/include/debug/ks8695.S               |  37 ---
 arch/arm/mach-ks8695/Kconfig                  |  88 -------
 arch/arm/mach-ks8695/Makefile                 |  23 --
 arch/arm/mach-ks8695/Makefile.boot            |   9 -
 arch/arm/mach-ks8695/board-acs5k.c            | 238 -----------------
 arch/arm/mach-ks8695/board-dsm320.c           | 127 ---------
 arch/arm/mach-ks8695/board-micrel.c           |  59 -----
 arch/arm/mach-ks8695/board-og.c               | 197 --------------
 arch/arm/mach-ks8695/board-sg.c               | 118 ---------
 arch/arm/mach-ks8695/cpu.c                    |  60 -----
 arch/arm/mach-ks8695/devices.c                | 197 --------------
 arch/arm/mach-ks8695/devices.h                |  29 --
 arch/arm/mach-ks8695/generic.h                |  12 -
 .../mach-ks8695/include/mach/entry-macro.S    |  47 ----
 .../mach-ks8695/include/mach/gpio-ks8695.h    |  36 ---
 arch/arm/mach-ks8695/include/mach/hardware.h  |  42 ---
 arch/arm/mach-ks8695/include/mach/irqs.h      |  51 ----
 arch/arm/mach-ks8695/include/mach/memory.h    |  51 ----
 arch/arm/mach-ks8695/include/mach/regs-gpio.h |  55 ----
 arch/arm/mach-ks8695/include/mach/regs-irq.h  |  41 ---
 arch/arm/mach-ks8695/include/mach/regs-misc.h |  97 -------
 .../mach-ks8695/include/mach/regs-switch.h    |  66 -----
 arch/arm/mach-ks8695/include/mach/regs-uart.h |  89 -------
 .../arm/mach-ks8695/include/mach/uncompress.h |  33 ---
 arch/arm/mach-ks8695/irq.c                    | 164 ------------
 arch/arm/mach-ks8695/pci.c                    | 247 ------------------
 arch/arm/mach-ks8695/regs-hpna.h              |  25 --
 arch/arm/mach-ks8695/regs-lan.h               |  65 -----
 arch/arm/mach-ks8695/regs-mem.h               |  89 -------
 arch/arm/mach-ks8695/regs-pci.h               |  53 ----
 arch/arm/mach-ks8695/regs-sys.h               |  34 ---
 arch/arm/mach-ks8695/regs-wan.h               |  65 -----
 arch/arm/mach-ks8695/time.c                   | 159 -----------
 arch/arm/mm/Kconfig                           |   2 +-
 41 files changed, 5 insertions(+), 2944 deletions(-)
 delete mode 100644 arch/arm/configs/acs5k_defconfig
 delete mode 100644 arch/arm/configs/acs5k_tiny_defconfig
 delete mode 100644 arch/arm/configs/ks8695_defconfig
 delete mode 100644 arch/arm/include/debug/ks8695.S
 delete mode 100644 arch/arm/mach-ks8695/Kconfig
 delete mode 100644 arch/arm/mach-ks8695/Makefile
 delete mode 100644 arch/arm/mach-ks8695/Makefile.boot
 delete mode 100644 arch/arm/mach-ks8695/board-acs5k.c
 delete mode 100644 arch/arm/mach-ks8695/board-dsm320.c
 delete mode 100644 arch/arm/mach-ks8695/board-micrel.c
 delete mode 100644 arch/arm/mach-ks8695/board-og.c
 delete mode 100644 arch/arm/mach-ks8695/board-sg.c
 delete mode 100644 arch/arm/mach-ks8695/cpu.c
 delete mode 100644 arch/arm/mach-ks8695/devices.c
 delete mode 100644 arch/arm/mach-ks8695/devices.h
 delete mode 100644 arch/arm/mach-ks8695/generic.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/entry-macro.S
 delete mode 100644 arch/arm/mach-ks8695/include/mach/gpio-ks8695.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/irqs.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/memory.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/regs-gpio.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/regs-irq.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/regs-misc.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/regs-switch.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/regs-uart.h
 delete mode 100644 arch/arm/mach-ks8695/include/mach/uncompress.h
 delete mode 100644 arch/arm/mach-ks8695/irq.c
 delete mode 100644 arch/arm/mach-ks8695/pci.c
 delete mode 100644 arch/arm/mach-ks8695/regs-hpna.h
 delete mode 100644 arch/arm/mach-ks8695/regs-lan.h
 delete mode 100644 arch/arm/mach-ks8695/regs-mem.h
 delete mode 100644 arch/arm/mach-ks8695/regs-pci.h
 delete mode 100644 arch/arm/mach-ks8695/regs-sys.h
 delete mode 100644 arch/arm/mach-ks8695/regs-wan.h
 delete mode 100644 arch/arm/mach-ks8695/time.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 6426db5198f0..9ac40a896ee6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1921,12 +1921,6 @@ S:	Maintained
 F:	drivers/phy/mediatek/
 F:	Documentation/devicetree/bindings/phy/phy-mtk-*
 
-ARM/MICREL KS8695 ARCHITECTURE
-M:	Greg Ungerer <gerg@uclinux.org>
-L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-F:	arch/arm/mach-ks8695/
-S:	Odd Fixes
-
 ARM/Microchip (AT91) SoC support
 M:	Nicolas Ferre <nicolas.ferre@microchip.com>
 M:	Alexandre Belloni <alexandre.belloni@bootlin.com>
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 33b00579beff..61deacf68e13 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -264,7 +264,6 @@ config PHYS_OFFSET
 			ARCH_FOOTBRIDGE || \
 			ARCH_INTEGRATOR || \
 			ARCH_IOP13XX || \
-			ARCH_KS8695 || \
 			ARCH_REALVIEW
 	default 0x10000000 if ARCH_OMAP1 || ARCH_RPC
 	default 0x20000000 if ARCH_S5PV210
@@ -451,17 +450,6 @@ config ARCH_DOVE
 	help
 	  Support for the Marvell Dove SoC 88AP510
 
-config ARCH_KS8695
-	bool "Micrel/Kendin KS8695"
-	select CLKSRC_MMIO
-	select CPU_ARM922T
-	select GENERIC_CLOCKEVENTS
-	select GPIOLIB
-	select NEED_MACH_MEMORY_H
-	help
-	  Support for Micrel/Kendin KS8695 "Centaur" (ARM922T) based
-	  System-on-Chip devices.
-
 config ARCH_W90X900
 	bool "Nuvoton W90X900 CPU"
 	select CLKDEV_LOOKUP
@@ -744,7 +732,11 @@ source "arch/arm/mach-ixp4xx/Kconfig"
 
 source "arch/arm/mach-keystone/Kconfig"
 
+<<<<<<< HEAD
 source "arch/arm/mach-ks8695/Kconfig"
+=======
+source "arch/arm/mach-lpc32xx/Kconfig"
+>>>>>>> ARM: remove ks8695 platform
 
 source "arch/arm/mach-mediatek/Kconfig"
 
diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 85710e078afb..2496f1c89b88 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -509,13 +509,6 @@ choice
 		  Say Y here if you want the debug print routines to direct
 		  their output to UART1 serial port on KEYSTONE2 devices.
 
-	config DEBUG_KS8695_UART
-		bool "KS8695 Debug UART"
-		depends on ARCH_KS8695
-		help
-		  Say Y here if you want kernel low-level debugging support
-		  on KS8695.
-
 	config DEBUG_LPC18XX_UART0
 		bool "Kernel low-level debugging via LPC18xx/43xx UART0"
 		depends on ARCH_LPC18XX
@@ -1533,7 +1526,6 @@ config DEBUG_LL_INCLUDE
 				 DEBUG_IMX6SX_UART || \
 				 DEBUG_IMX6UL_UART || \
 				 DEBUG_IMX7D_UART
-	default "debug/ks8695.S" if DEBUG_KS8695_UART
 	default "debug/msm.S" if DEBUG_QCOM_UARTDM
 	default "debug/omap2plus.S" if DEBUG_OMAP2PLUS_UART
 	default "debug/renesas-scif.S" if DEBUG_R7S72100_SCIF2
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..c9daa4adc6fd 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -178,7 +178,6 @@ machine-$(CONFIG_ARCH_IOP32X)		+= iop32x
 machine-$(CONFIG_ARCH_IOP33X)		+= iop33x
 machine-$(CONFIG_ARCH_IXP4XX)		+= ixp4xx
 machine-$(CONFIG_ARCH_KEYSTONE)		+= keystone
-machine-$(CONFIG_ARCH_KS8695)		+= ks8695
 machine-$(CONFIG_ARCH_LPC18XX)		+= lpc18xx
 machine-$(CONFIG_ARCH_LPC32XX)		+= lpc32xx
 machine-$(CONFIG_ARCH_MESON)		+= meson
diff --git a/arch/arm/configs/acs5k_defconfig b/arch/arm/configs/acs5k_defconfig
deleted file mode 100644
index bcb8bda09158..000000000000
--- a/arch/arm/configs/acs5k_defconfig
+++ /dev/null
@@ -1,77 +0,0 @@
-# CONFIG_SWAP is not set
-CONFIG_SYSVIPC=y
-CONFIG_POSIX_MQUEUE=y
-CONFIG_LOG_BUF_SHIFT=14
-CONFIG_SYSFS_DEPRECATED_V2=y
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_SLAB=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-# CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
-CONFIG_ARCH_KS8695=y
-CONFIG_MACH_KS8695=y
-CONFIG_MACH_DSM320=y
-CONFIG_MACH_ACS5K=y
-# CONFIG_ARM_THUMB is not set
-CONFIG_PCI=y
-CONFIG_PCI_DEBUG=y
-CONFIG_PCCARD=y
-CONFIG_YENTA=y
-CONFIG_AEABI=y
-CONFIG_ZBOOT_ROM_TEXT=0x0
-CONFIG_ZBOOT_ROM_BSS=0x0
-CONFIG_CMDLINE="mem=32M console=ttyS0,115200 initrd=0x20410000,3145728 root=/dev/ram0 rw"
-CONFIG_NET=y
-CONFIG_PACKET=y
-CONFIG_UNIX=y
-CONFIG_INET=y
-CONFIG_IP_PNP=y
-CONFIG_IP_PNP_DHCP=y
-# CONFIG_IPV6 is not set
-CONFIG_MTD=y
-CONFIG_MTD_BLOCK=y
-CONFIG_MTD_CFI=y
-CONFIG_MTD_JEDECPROBE=y
-CONFIG_MTD_CFI_ADV_OPTIONS=y
-CONFIG_MTD_CFI_INTELEXT=y
-CONFIG_MTD_CFI_AMDSTD=y
-CONFIG_MTD_PHYSMAP=y
-CONFIG_BLK_DEV_RAM=y
-CONFIG_BLK_DEV_RAM_SIZE=8192
-CONFIG_NETDEVICES=y
-CONFIG_NET_ETHERNET=y
-CONFIG_ARM_KS8695_ETHER=y
-CONFIG_PRISM54=m
-# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
-# CONFIG_INPUT_KEYBOARD is not set
-# CONFIG_INPUT_MOUSE is not set
-# CONFIG_SERIO is not set
-CONFIG_SERIAL_KS8695=y
-CONFIG_SERIAL_KS8695_CONSOLE=y
-CONFIG_I2C=y
-CONFIG_I2C_CHARDEV=y
-CONFIG_I2C_GPIO=y
-CONFIG_GPIO_SYSFS=y
-CONFIG_GPIO_PCA953X=y
-CONFIG_WATCHDOG=y
-CONFIG_KS8695_WATCHDOG=y
-# CONFIG_VGA_CONSOLE is not set
-CONFIG_RTC_CLASS=y
-CONFIG_RTC_DRV_PCF8563=y
-CONFIG_EXT2_FS=y
-CONFIG_TMPFS=y
-CONFIG_JFFS2_FS=y
-CONFIG_JFFS2_SUMMARY=y
-CONFIG_JFFS2_COMPRESSION_OPTIONS=y
-CONFIG_JFFS2_RUBIN=y
-CONFIG_CRAMFS=y
-CONFIG_NFS_FS=y
-CONFIG_NFS_V3=y
-CONFIG_ROOT_NFS=y
-CONFIG_DEBUG_KERNEL=y
-CONFIG_DEBUG_MUTEXES=y
-# CONFIG_FTRACE is not set
-CONFIG_DEBUG_USER=y
-CONFIG_DEBUG_LL=y
diff --git a/arch/arm/configs/acs5k_tiny_defconfig b/arch/arm/configs/acs5k_tiny_defconfig
deleted file mode 100644
index e802cdebfd0b..000000000000
--- a/arch/arm/configs/acs5k_tiny_defconfig
+++ /dev/null
@@ -1,69 +0,0 @@
-# CONFIG_SWAP is not set
-CONFIG_SYSVIPC=y
-CONFIG_POSIX_MQUEUE=y
-CONFIG_LOG_BUF_SHIFT=14
-CONFIG_SYSFS_DEPRECATED_V2=y
-CONFIG_SLAB=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-# CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
-CONFIG_ARCH_KS8695=y
-CONFIG_MACH_ACS5K=y
-# CONFIG_ARM_THUMB is not set
-CONFIG_AEABI=y
-CONFIG_ZBOOT_ROM_TEXT=0x0
-CONFIG_ZBOOT_ROM_BSS=0x0
-CONFIG_CMDLINE="console=ttyAM0,115200 init=/bin/sh"
-CONFIG_FPE_NWFPE=y
-CONFIG_NET=y
-CONFIG_PACKET=y
-CONFIG_UNIX=y
-CONFIG_INET=y
-# CONFIG_INET_XFRM_MODE_TRANSPORT is not set
-# CONFIG_INET_XFRM_MODE_TUNNEL is not set
-# CONFIG_INET_XFRM_MODE_BEET is not set
-# CONFIG_IPV6 is not set
-CONFIG_MTD=y
-CONFIG_MTD_BLOCK=y
-CONFIG_MTD_CFI=y
-CONFIG_MTD_JEDECPROBE=y
-CONFIG_MTD_CFI_ADV_OPTIONS=y
-CONFIG_MTD_CFI_INTELEXT=y
-CONFIG_MTD_CFI_AMDSTD=y
-CONFIG_MTD_PHYSMAP=y
-# CONFIG_BLK_DEV is not set
-CONFIG_NETDEVICES=y
-CONFIG_NET_ETHERNET=y
-CONFIG_ARM_KS8695_ETHER=y
-# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
-# CONFIG_INPUT_KEYBOARD is not set
-# CONFIG_INPUT_MOUSE is not set
-# CONFIG_SERIO is not set
-CONFIG_SERIAL_KS8695=y
-CONFIG_SERIAL_KS8695_CONSOLE=y
-# CONFIG_HW_RANDOM is not set
-CONFIG_I2C=y
-CONFIG_I2C_CHARDEV=y
-CONFIG_I2C_GPIO=y
-CONFIG_GPIO_SYSFS=y
-CONFIG_GPIO_PCA953X=y
-# CONFIG_HWMON is not set
-CONFIG_WATCHDOG=y
-CONFIG_KS8695_WATCHDOG=y
-# CONFIG_VGA_CONSOLE is not set
-# CONFIG_USB_SUPPORT is not set
-CONFIG_RTC_CLASS=y
-CONFIG_RTC_DRV_PCF8563=y
-CONFIG_TMPFS=y
-CONFIG_JFFS2_FS=y
-CONFIG_JFFS2_SUMMARY=y
-CONFIG_JFFS2_COMPRESSION_OPTIONS=y
-CONFIG_JFFS2_RUBIN=y
-CONFIG_SQUASHFS=y
-# CONFIG_NETWORK_FILESYSTEMS is not set
-CONFIG_DEBUG_KERNEL=y
-CONFIG_DEBUG_MUTEXES=y
-# CONFIG_FTRACE is not set
-CONFIG_DEBUG_USER=y
diff --git a/arch/arm/configs/ks8695_defconfig b/arch/arm/configs/ks8695_defconfig
deleted file mode 100644
index df62d4dfbbb7..000000000000
--- a/arch/arm/configs/ks8695_defconfig
+++ /dev/null
@@ -1,67 +0,0 @@
-# CONFIG_SWAP is not set
-CONFIG_SYSVIPC=y
-CONFIG_LOG_BUF_SHIFT=14
-CONFIG_SYSFS_DEPRECATED_V2=y
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_SLAB=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-# CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
-CONFIG_ARCH_KS8695=y
-CONFIG_MACH_KS8695=y
-CONFIG_MACH_DSM320=y
-# CONFIG_ARM_THUMB is not set
-CONFIG_PCI=y
-CONFIG_PCI_DEBUG=y
-CONFIG_PCCARD=y
-CONFIG_YENTA=y
-CONFIG_AEABI=y
-CONFIG_ZBOOT_ROM_TEXT=0x0
-CONFIG_ZBOOT_ROM_BSS=0x0
-CONFIG_CMDLINE="mem=32M console=ttyS0,115200 initrd=0x20410000,3145728 root=/dev/ram0 rw"
-CONFIG_NET=y
-CONFIG_PACKET=y
-CONFIG_UNIX=y
-CONFIG_INET=y
-CONFIG_IP_PNP=y
-CONFIG_IP_PNP_DHCP=y
-# CONFIG_IPV6 is not set
-CONFIG_MTD=y
-CONFIG_MTD_REDBOOT_PARTS=y
-CONFIG_MTD_CMDLINE_PARTS=y
-CONFIG_MTD_BLOCK=y
-CONFIG_MTD_CFI=y
-CONFIG_MTD_JEDECPROBE=y
-CONFIG_MTD_CFI_INTELEXT=y
-CONFIG_MTD_PHYSMAP=y
-CONFIG_BLK_DEV_RAM=y
-CONFIG_BLK_DEV_RAM_SIZE=8192
-CONFIG_NETDEVICES=y
-CONFIG_NET_ETHERNET=y
-CONFIG_MII=y
-CONFIG_PRISM54=m
-# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
-# CONFIG_INPUT_KEYBOARD is not set
-# CONFIG_INPUT_MOUSE is not set
-# CONFIG_SERIO is not set
-CONFIG_SERIAL_KS8695=y
-CONFIG_SERIAL_KS8695_CONSOLE=y
-# CONFIG_HWMON is not set
-# CONFIG_VGA_CONSOLE is not set
-CONFIG_EXT2_FS=y
-CONFIG_TMPFS=y
-CONFIG_JFFS2_FS=y
-CONFIG_JFFS2_SUMMARY=y
-CONFIG_JFFS2_COMPRESSION_OPTIONS=y
-CONFIG_JFFS2_RUBIN=y
-CONFIG_CRAMFS=y
-CONFIG_NFS_FS=y
-CONFIG_NFS_V3=y
-CONFIG_ROOT_NFS=y
-CONFIG_DEBUG_KERNEL=y
-CONFIG_DEBUG_MUTEXES=y
-# CONFIG_FTRACE is not set
-CONFIG_DEBUG_USER=y
-CONFIG_DEBUG_LL=y
diff --git a/arch/arm/include/debug/ks8695.S b/arch/arm/include/debug/ks8695.S
deleted file mode 100644
index eb4d371b5eea..000000000000
--- a/arch/arm/include/debug/ks8695.S
+++ /dev/null
@@ -1,37 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/include/debug/ks8695.S
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- *
- * KS8695 - Debug macros
- */
-
-#define KS8695_UART_PA	0x03ffe000
-#define KS8695_UART_VA	0xf00fe000
-#define KS8695_URTH	(0x04)
-#define KS8695_URLS	(0x14)
-#define URLS_URTE	(1 << 6)
-#define URLS_URTHRE	(1 << 5)
-
-	.macro	addruart, rp, rv, tmp
-		ldr	\rp, =KS8695_UART_PA		@ physical base address
-		ldr	\rv, =KS8695_UART_VA		@ virtual base address
-	.endm
-
-	.macro	senduart, rd, rx
-		str	\rd, [\rx, #KS8695_URTH]	@ Write to Transmit Holding Register
-	.endm
-
-	.macro	busyuart, rd, rx
-1001:		ldr	\rd, [\rx, #KS8695_URLS]	@ Read Line Status Register
-		tst	\rd, #URLS_URTE			@ Holding & Shift registers empty?
-		beq	1001b
-	.endm
-
-	.macro	waituart, rd, rx
-1001:		ldr	\rd, [\rx, #KS8695_URLS]	@ Read Line Status Register
-		tst	\rd, #URLS_URTHRE		@ Holding Register empty?
-		beq	1001b
-	.endm
diff --git a/arch/arm/mach-ks8695/Kconfig b/arch/arm/mach-ks8695/Kconfig
deleted file mode 100644
index 724d7d039f74..000000000000
--- a/arch/arm/mach-ks8695/Kconfig
+++ /dev/null
@@ -1,88 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-if ARCH_KS8695
-
-menu "Kendin/Micrel KS8695 Implementations"
-
-config MACH_KS8695
-	bool "KS8695 development board"
-	select HAVE_PCI
-	help
-	  Say 'Y' here if you want your kernel to run on the original
-	  Kendin-Micrel KS8695 development board.
-
-config MACH_DSM320
-	bool "DSM-320 Wireless Media Player"
-	help
-	  Say 'Y' here if you want your kernel to run on the D-Link
-	  DSM-320 Wireless Media Player.
-
-config MACH_ACS5K
-	bool "Brivo Systems LLC, ACS-5000 Master board"
-	help
-	  say 'Y' here if you want your kernel to run on the Brivo
-	  Systems LLC, ACS-5000 Master board.
-
-config MACH_LITE300
-	bool "SecureComputing SG300"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  SecureComputing / SnapGear SG300 VPN Internet Router.
-	  See http://www.securecomputing.com for more details.
-
-config MACH_SG310
-	bool "McAfee SG310"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  McAfee / SnapGear SG310 VPN Internet Router.
-	  See http://www.mcafee.com for more details.
-
-config MACH_SE4200
-	bool "SecureComputing SE4200"
-	help
-	  Say 'Y' here if you want your kernel to support the
-	  SecureComputing / SnapGear SE4200 Secure Wireless VPN
-	  Internet Router.
-	  See http://www.securecomputing.com for more details.
-
-config MACH_CM4002
-	bool "OpenGear CM4002"
-	help
-	  Say 'Y' here if you want your kernel to support the OpenGear
-	  CM4002 Secure Access Server. See http://www.opengear.com for
-	  more details.
-
-config MACH_CM4008
-	bool "OpenGear CM4008"
-	select HAVE_PCI
-	help
-	  Say 'Y' here if you want your kernel to support the OpenGear
-	  CM4008 Console Server. See http://www.opengear.com for more
-	  details.
-
-config MACH_CM41xx
-	bool "OpenGear CM41xx"
-	select HAVE_PCI
-	help
-	  Say 'Y' here if you want your kernel to support the OpenGear
-	  CM4016 or CM4048 Console Servers. See http://www.opengear.com for
-	  more details.
-
-config MACH_IM4004
-	bool "OpenGear IM4004"
-	select HAVE_PCI
-	help
-	  Say 'Y' here if you want your kernel to support the OpenGear
-	  IM4004 Secure Access Server. See http://www.opengear.com for
-	  more details.
-
-config MACH_IM42xx
-	bool "OpenGear IM42xx"
-	select HAVE_PCI
-	help
-	  Say 'Y' here if you want your kernel to support the OpenGear
-	  IM4216 or IM4248 Console Servers. See http://www.opengear.com for
-	  more details.
-
-endmenu
-
-endif
diff --git a/arch/arm/mach-ks8695/Makefile b/arch/arm/mach-ks8695/Makefile
deleted file mode 100644
index 439b22255a32..000000000000
--- a/arch/arm/mach-ks8695/Makefile
+++ /dev/null
@@ -1,23 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-# arch/arm/mach-ks8695/Makefile
-#
-# Makefile for KS8695 architecture support
-#
-
-obj-y				:= cpu.o irq.o time.o devices.o
-
-# PCI support is optional
-obj-$(CONFIG_PCI)		+= pci.o
-
-# Board-specific support
-obj-$(CONFIG_MACH_KS8695)	+= board-micrel.o
-obj-$(CONFIG_MACH_DSM320)	+= board-dsm320.o
-obj-$(CONFIG_MACH_ACS5K)	+= board-acs5k.o
-obj-$(CONFIG_MACH_LITE300)	+= board-sg.o
-obj-$(CONFIG_MACH_SG310)	+= board-sg.o
-obj-$(CONFIG_MACH_SE4200)	+= board-sg.o
-obj-$(CONFIG_MACH_CM4002)	+= board-og.o
-obj-$(CONFIG_MACH_CM4008)	+= board-og.o
-obj-$(CONFIG_MACH_CM41xx)	+= board-og.o
-obj-$(CONFIG_MACH_IM4004)	+= board-og.o
-obj-$(CONFIG_MACH_IM42xx)	+= board-og.o
diff --git a/arch/arm/mach-ks8695/Makefile.boot b/arch/arm/mach-ks8695/Makefile.boot
deleted file mode 100644
index cf32eb605bd8..000000000000
--- a/arch/arm/mach-ks8695/Makefile.boot
+++ /dev/null
@@ -1,9 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-# Note: the following conditions must always be true:
-#   ZRELADDR == virt_to_phys(TEXTADDR)
-#   PARAMS_PHYS must be within 4MB of ZRELADDR
-#   INITRD_PHYS must be in RAM
-
-   zreladdr-y	+= 0x00008000
-params_phys-y	:= 0x00000100
-initrd_phys-y	:= 0x00800000
diff --git a/arch/arm/mach-ks8695/board-acs5k.c b/arch/arm/mach-ks8695/board-acs5k.c
deleted file mode 100644
index f319258d1226..000000000000
--- a/arch/arm/mach-ks8695/board-acs5k.c
+++ /dev/null
@@ -1,238 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-ks8695/board-acs5k.c
- *
- * Brivo Systems LLC, ACS-5000 Master Board
- *
- * Copyright 2008 Simtec Electronics
- *		  Daniel Silverstone <dsilvers@simtec.co.uk>
- */
-#include <linux/gpio.h>
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/interrupt.h>
-#include <linux/init.h>
-#include <linux/platform_device.h>
-#include <linux/gpio/machine.h>
-#include <linux/i2c.h>
-#include <linux/i2c-algo-bit.h>
-#include <linux/platform_data/i2c-gpio.h>
-#include <linux/platform_data/pca953x.h>
-
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/map.h>
-#include <linux/mtd/physmap.h>
-#include <linux/mtd/partitions.h>
-
-#include <asm/mach-types.h>
-
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-#include <asm/mach/irq.h>
-
-#include "devices.h"
-#include <mach/gpio-ks8695.h>
-
-#include "generic.h"
-
-static struct gpiod_lookup_table acs5k_i2c_gpiod_table = {
-	.dev_id		= "i2c-gpio",
-	.table		= {
-		GPIO_LOOKUP_IDX("KS8695", 4, NULL, 0,
-				GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN),
-		GPIO_LOOKUP_IDX("KS8695", 5, NULL, 1,
-				GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN),
-	},
-};
-
-static struct i2c_gpio_platform_data acs5k_i2c_device_platdata = {
-	.udelay		= 10,
-};
-
-static struct platform_device acs5k_i2c_device = {
-	.name		= "i2c-gpio",
-	.id		= -1,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev		= {
-		.platform_data	= &acs5k_i2c_device_platdata,
-	},
-};
-
-static int acs5k_pca9555_setup(struct i2c_client *client,
-			       unsigned gpio_base, unsigned ngpio,
-			       void *context)
-{
-	static int acs5k_gpio_value[] = {
-		-1, -1, -1, -1, -1, -1, -1, 0, 1, 1, -1, 0, 1, 0, -1, -1
-	};
-	int n;
-
-	for (n = 0; n < ARRAY_SIZE(acs5k_gpio_value); ++n) {
-		gpio_request(gpio_base + n, "ACS-5000 GPIO Expander");
-		if (acs5k_gpio_value[n] < 0)
-			gpio_direction_input(gpio_base + n);
-		else
-			gpio_direction_output(gpio_base + n,
-					      acs5k_gpio_value[n]);
-		gpio_export(gpio_base + n, 0); /* Export, direction locked down */
-	}
-
-	return 0;
-}
-
-static struct pca953x_platform_data acs5k_i2c_pca9555_platdata = {
-	.gpio_base	= 16, /* Start directly after the CPU's GPIO */
-	.invert		= 0, /* Do not invert */
-	.setup		= acs5k_pca9555_setup,
-};
-
-static struct i2c_board_info acs5k_i2c_devs[] __initdata = {
-	{
-		I2C_BOARD_INFO("pcf8563", 0x51),
-	},
-	{
-		I2C_BOARD_INFO("pca9555", 0x20),
-		.platform_data = &acs5k_i2c_pca9555_platdata,
-	},
-};
-
-static void __init acs5k_i2c_init(void)
-{
-	/* The gpio interface */
-	gpiod_add_lookup_table(&acs5k_i2c_gpiod_table);
-	platform_device_register(&acs5k_i2c_device);
-	/* I2C devices */
-	i2c_register_board_info(0, acs5k_i2c_devs,
-				ARRAY_SIZE(acs5k_i2c_devs));
-}
-
-static struct mtd_partition acs5k_nor_partitions[] = {
-	[0] = {
-		.name	= "Boot Agent and config",
-		.size	= SZ_256K,
-		.offset	= 0,
-		.mask_flags = MTD_WRITEABLE,
-	},
-	[1] = {
-		.name	= "Kernel",
-		.size	= SZ_1M,
-		.offset	= SZ_256K,
-	},
-	[2] = {
-		.name	= "SquashFS1",
-		.size	= SZ_2M,
-		.offset	= SZ_256K + SZ_1M,
-	},
-	[3] = {
-		.name	= "SquashFS2",
-		.size	= SZ_4M + SZ_2M,
-		.offset	= SZ_256K + SZ_1M + SZ_2M,
-	},
-	[4] = {
-		.name	= "Data",
-		.size	= SZ_16M + SZ_4M + SZ_2M + SZ_512K, /* 22.5 MB */
-		.offset	= SZ_256K + SZ_8M + SZ_1M,
-	}
-};
-
-static struct physmap_flash_data acs5k_nor_pdata = {
-	.width		= 4,
-	.nr_parts	= ARRAY_SIZE(acs5k_nor_partitions),
-	.parts		= acs5k_nor_partitions,
-};
-
-static struct resource acs5k_nor_resource[] = {
-	[0] = {
-		.start = SZ_32M, /* We expect the bootloader to map
-				  * the flash here.
-				  */
-		.end   = SZ_32M + SZ_16M - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = SZ_32M + SZ_16M,
-		.end   = SZ_32M + SZ_32M - SZ_256K - 1,
-		.flags = IORESOURCE_MEM,
-	}
-};
-
-static struct platform_device acs5k_device_nor = {
-	.name		= "physmap-flash",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(acs5k_nor_resource),
-	.resource	= acs5k_nor_resource,
-	.dev		= {
-		.platform_data = &acs5k_nor_pdata,
-	},
-};
-
-static void __init acs5k_register_nor(void)
-{
-	int ret;
-
-	if (acs5k_nor_partitions[0].mask_flags == 0)
-		printk(KERN_WARNING "Warning: Unprotecting bootloader and configuration partition\n");
-
-	ret = platform_device_register(&acs5k_device_nor);
-	if (ret < 0)
-		printk(KERN_ERR "failed to register physmap-flash device\n");
-}
-
-static int __init acs5k_protection_setup(char *s)
-{
-	/* We can't allocate anything here but we should be able
-	 * to trivially parse s and decide if we can protect the
-	 * bootloader partition or not
-	 */
-	if (strcmp(s, "no") == 0)
-		acs5k_nor_partitions[0].mask_flags = 0;
-
-	return 1;
-}
-
-__setup("protect_bootloader=", acs5k_protection_setup);
-
-static void __init acs5k_init_gpio(void)
-{
-	int i;
-
-	ks8695_register_gpios();
-	for (i = 0; i < 4; ++i)
-		gpio_request(i, "ACS5K IRQ");
-	gpio_request(7, "ACS5K KS_FRDY");
-	for (i = 8; i < 16; ++i)
-		gpio_request(i, "ACS5K Unused");
-
-	gpio_request(3, "ACS5K CAN Control");
-	gpio_request(6, "ACS5K Heartbeat");
-	gpio_direction_output(3, 1); /* Default CAN_RESET high */
-	gpio_direction_output(6, 0); /* Default KS8695_ACTIVE low */
-	gpio_export(3, 0); /* export CAN_RESET as output only */
-	gpio_export(6, 0); /* export KS8695_ACTIVE as output only */
-}
-
-static void __init acs5k_init(void)
-{
-	acs5k_init_gpio();
-
-	/* Network device */
-	ks8695_add_device_lan();	/* eth0 = LAN */
-	ks8695_add_device_wan();	/* ethX = WAN */
-
-	/* NOR devices */
-	acs5k_register_nor();
-
-	/* I2C bus */
-	acs5k_i2c_init();
-}
-
-MACHINE_START(ACS5K, "Brivo Systems LLC ACS-5000 Master board")
-	/* Maintainer: Simtec Electronics. */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= acs5k_init,
-	.init_time	= ks8695_timer_init,
-	.restart	= ks8695_restart,
-MACHINE_END
diff --git a/arch/arm/mach-ks8695/board-dsm320.c b/arch/arm/mach-ks8695/board-dsm320.c
deleted file mode 100644
index d5f435cae6e0..000000000000
--- a/arch/arm/mach-ks8695/board-dsm320.c
+++ /dev/null
@@ -1,127 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-ks8695/board-dsm320.c
- *
- * DSM-320 D-Link Wireless Media Player, board support.
- *
- * Copyright 2008 Simtec Electronics
- *		  Daniel Silverstone <dsilvers@simtec.co.uk>
- */
-#include <linux/gpio.h>
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/interrupt.h>
-#include <linux/init.h>
-#include <linux/platform_device.h>
-
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/map.h>
-#include <linux/mtd/physmap.h>
-#include <linux/mtd/partitions.h>
-
-#include <asm/mach-types.h>
-
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-#include <asm/mach/irq.h>
-
-#include "devices.h"
-#include <mach/gpio-ks8695.h>
-
-#include "generic.h"
-
-#ifdef CONFIG_PCI
-static int dsm320_pci_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
-{
-	switch (slot) {
-	case 0:
-		/* PCI-AHB bridge? */
-		return KS8695_IRQ_EXTERN0;
-	case 18:
-		/* Mini PCI slot */
-		return KS8695_IRQ_EXTERN2;
-	case 20:
-		/* RealMAGIC chip */
-		return KS8695_IRQ_EXTERN0;
-	}
-	BUG();
-}
-
-static struct ks8695_pci_cfg __initdata dsm320_pci = {
-	.mode		= KS8695_MODE_MINIPCI,
-	.map_irq	= dsm320_pci_map_irq,
-};
-
-static void __init dsm320_register_pci(void)
-{
-	/* Initialise the GPIO lines for interrupt mode */
-	/* RealMAGIC */
-	ks8695_gpio_interrupt(KS8695_GPIO_0, IRQ_TYPE_LEVEL_LOW);
-	/* MiniPCI Slot */
-	ks8695_gpio_interrupt(KS8695_GPIO_2, IRQ_TYPE_LEVEL_LOW);
-
-	ks8695_init_pci(&dsm320_pci);
-}
-
-#else
-static inline void __init dsm320_register_pci(void) { }
-#endif
-
-static struct physmap_flash_data dsm320_nor_pdata = {
-	.width		= 4,
-	.nr_parts	= 0,
-};
-
-static struct resource dsm320_nor_resource[] = {
-	[0] = {
-		.start = SZ_32M, /* We expect the bootloader to map
-				  * the flash here.
-				  */
-		.end   = SZ_32M + SZ_4M - 1,
-		.flags = IORESOURCE_MEM,
-	}
-};
-
-static struct platform_device dsm320_device_nor = {
-	.name		= "physmap-flash",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(dsm320_nor_resource),
-	.resource	= dsm320_nor_resource,
-	.dev		= {
-		.platform_data = &dsm320_nor_pdata,
-	},
-};
-
-void __init dsm320_register_nor(void)
-{
-	int ret;
-
-	ret = platform_device_register(&dsm320_device_nor);
-	if (ret < 0)
-		printk(KERN_ERR "failed to register physmap-flash device\n");
-}
-
-static void __init dsm320_init(void)
-{
-	/* GPIO registration */
-	ks8695_register_gpios();
-
-	/* PCI registration */
-	dsm320_register_pci();
-
-	/* Network device */
-	ks8695_add_device_lan();	/* eth0 = LAN */
-
-	/* NOR devices */
-	dsm320_register_nor();
-}
-
-MACHINE_START(DSM320, "D-Link DSM-320 Wireless Media Player")
-	/* Maintainer: Simtec Electronics. */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= dsm320_init,
-	.init_time	= ks8695_timer_init,
-	.restart	= ks8695_restart,
-MACHINE_END
diff --git a/arch/arm/mach-ks8695/board-micrel.c b/arch/arm/mach-ks8695/board-micrel.c
deleted file mode 100644
index bf8856ce3fbb..000000000000
--- a/arch/arm/mach-ks8695/board-micrel.c
+++ /dev/null
@@ -1,59 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-ks8695/board-micrel.c
- */
-#include <linux/gpio.h>
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/interrupt.h>
-#include <linux/init.h>
-#include <linux/platform_device.h>
-
-#include <asm/mach-types.h>
-
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-#include <asm/mach/irq.h>
-
-#include <mach/gpio-ks8695.h>
-#include "devices.h"
-
-#include "generic.h"
-
-#ifdef CONFIG_PCI
-static int micrel_pci_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
-{
-	return KS8695_IRQ_EXTERN0;
-}
-
-static struct ks8695_pci_cfg __initdata micrel_pci = {
-	.mode		= KS8695_MODE_MINIPCI,
-	.map_irq	= micrel_pci_map_irq,
-};
-#endif
-
-
-static void __init micrel_init(void)
-{
-	printk(KERN_INFO "Micrel KS8695 Development Board initializing\n");
-
-	ks8695_register_gpios();
-
-#ifdef CONFIG_PCI
-	ks8695_init_pci(&micrel_pci);
-#endif
-
-	/* Add devices */
-	ks8695_add_device_wan();	/* eth0 = WAN */
-	ks8695_add_device_lan();	/* eth1 = LAN */
-}
-
-MACHINE_START(KS8695, "KS8695 Centaur Development Board")
-	/* Maintainer: Micrel Semiconductor Inc. */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= micrel_init,
-	.init_time	= ks8695_timer_init,
-	.restart	= ks8695_restart,
-MACHINE_END
diff --git a/arch/arm/mach-ks8695/board-og.c b/arch/arm/mach-ks8695/board-og.c
deleted file mode 100644
index 12ffe9227f9c..000000000000
--- a/arch/arm/mach-ks8695/board-og.c
+++ /dev/null
@@ -1,197 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * board-og.c -- support for the OpenGear KS8695 based boards.
- */
-
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/interrupt.h>
-#include <linux/init.h>
-#include <linux/delay.h>
-#include <linux/platform_device.h>
-#include <linux/serial_8250.h>
-#include <linux/gpio.h>
-#include <linux/irq.h>
-#include <asm/mach-types.h>
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-#include "devices.h"
-#include <mach/regs-gpio.h>
-#include <mach/gpio-ks8695.h>
-#include "generic.h"
-
-static int og_pci_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
-{
-	if (machine_is_im4004() && (slot == 8))
-		return KS8695_IRQ_EXTERN1;
-	return KS8695_IRQ_EXTERN0;
-}
-
-static struct ks8695_pci_cfg __initdata og_pci = {
-	.mode		= KS8695_MODE_PCI,
-	.map_irq	= og_pci_map_irq,
-};
-
-static void __init og_register_pci(void)
-{
-	/* Initialize the GPIO lines for interrupt mode */
-	ks8695_gpio_interrupt(KS8695_GPIO_0, IRQ_TYPE_LEVEL_LOW);
-
-	/* Cardbus Slot */
-	if (machine_is_im4004())
-		ks8695_gpio_interrupt(KS8695_GPIO_1, IRQ_TYPE_LEVEL_LOW);
-
-	if (IS_ENABLED(CONFIG_PCI))
-		ks8695_init_pci(&og_pci);
-}
-
-/*
- * The PCI bus reset is driven by a dedicated GPIO line. Toggle it here
- * and bring the PCI bus out of reset.
- */
-static void __init og_pci_bus_reset(void)
-{
-	unsigned int rstline = 1;
-
-	/* Some boards use a different GPIO as the PCI reset line */
-	if (machine_is_im4004())
-		rstline = 2;
-	else if (machine_is_im42xx())
-		rstline = 0;
-
-	gpio_request(rstline, "PCI reset");
-	gpio_direction_output(rstline, 0);
-
-	/* Drive a reset on the PCI reset line */
-	gpio_set_value(rstline, 1);
-	gpio_set_value(rstline, 0);
-	mdelay(100);
-	gpio_set_value(rstline, 1);
-	mdelay(100);
-}
-
-/*
- * Direct connect serial ports (non-PCI that is).
- */
-#define	S8250_PHYS	0x03800000
-#define	S8250_VIRT	0xf4000000
-#define	S8250_SIZE	0x00100000
-
-static struct map_desc og_io_desc[] __initdata = {
-	{
-		.virtual	= S8250_VIRT,
-		.pfn		= __phys_to_pfn(S8250_PHYS),
-		.length		= S8250_SIZE,
-		.type		= MT_DEVICE,
-	}
-};
-
-static struct resource og_uart_resources[] = {
-	{
-		.start		= S8250_VIRT,
-		.end		= S8250_VIRT + S8250_SIZE,
-		.flags		= IORESOURCE_MEM
-	},
-};
-
-static struct plat_serial8250_port og_uart_data[] = {
-	{
-		.mapbase	= S8250_VIRT,
-		.membase	= (char *) S8250_VIRT,
-		.irq		= 3,
-		.flags		= UPF_BOOT_AUTOCONF | UPF_SKIP_TEST,
-		.iotype		= UPIO_MEM,
-		.regshift	= 2,
-		.uartclk	= 115200 * 16,
-	},
-	{ },
-};
-
-static struct platform_device og_uart = {
-	.name			= "serial8250",
-	.id			= 0,
-	.dev.platform_data	= og_uart_data,
-	.num_resources		= 1,
-	.resource		= og_uart_resources
-};
-
-static struct platform_device *og_devices[] __initdata = {
-	&og_uart
-};
-
-static void __init og_init(void)
-{
-	ks8695_register_gpios();
-
-	if (machine_is_cm4002()) {
-		ks8695_gpio_interrupt(KS8695_GPIO_1, IRQ_TYPE_LEVEL_HIGH);
-		iotable_init(og_io_desc, ARRAY_SIZE(og_io_desc));
-		platform_add_devices(og_devices, ARRAY_SIZE(og_devices));
-	} else {
-		og_pci_bus_reset();
-		og_register_pci();
-	}
-
-	ks8695_add_device_lan();
-	ks8695_add_device_wan();
-}
-
-#ifdef CONFIG_MACH_CM4002
-MACHINE_START(CM4002, "OpenGear/CM4002")
-	/* OpenGear Inc. */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= og_init,
-	.init_time	= ks8695_timer_init,
-	.restart        = ks8695_restart,
-MACHINE_END
-#endif
-
-#ifdef CONFIG_MACH_CM4008
-MACHINE_START(CM4008, "OpenGear/CM4008")
-	/* OpenGear Inc. */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= og_init,
-	.init_time	= ks8695_timer_init,
-	.restart        = ks8695_restart,
-MACHINE_END
-#endif
-
-#ifdef CONFIG_MACH_CM41xx
-MACHINE_START(CM41XX, "OpenGear/CM41xx")
-	/* OpenGear Inc. */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= og_init,
-	.init_time	= ks8695_timer_init,
-	.restart        = ks8695_restart,
-MACHINE_END
-#endif
-
-#ifdef CONFIG_MACH_IM4004
-MACHINE_START(IM4004, "OpenGear/IM4004")
-	/* OpenGear Inc. */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= og_init,
-	.init_time	= ks8695_timer_init,
-	.restart        = ks8695_restart,
-MACHINE_END
-#endif
-
-#ifdef CONFIG_MACH_IM42xx
-MACHINE_START(IM42XX, "OpenGear/IM42xx")
-	/* OpenGear Inc. */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= og_init,
-	.init_time	= ks8695_timer_init,
-	.restart        = ks8695_restart,
-MACHINE_END
-#endif
diff --git a/arch/arm/mach-ks8695/board-sg.c b/arch/arm/mach-ks8695/board-sg.c
deleted file mode 100644
index d5ec85a56375..000000000000
--- a/arch/arm/mach-ks8695/board-sg.c
+++ /dev/null
@@ -1,118 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * board-sg.c -- support for the SnapGear KS8695 based boards
- */
-
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/init.h>
-#include <linux/platform_device.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/map.h>
-#include <linux/mtd/physmap.h>
-#include <linux/mtd/partitions.h>
-#include <asm/mach-types.h>
-#include <asm/mach/arch.h>
-#include "devices.h"
-#include "generic.h"
-
-/*
- * The SG310 machine type is fitted with a conventional 8MB Strataflash
- * device. Define its partitioning.
- */
-#define	FL_BASE		0x02000000
-#define	FL_SIZE		SZ_8M
-
-static struct mtd_partition sg_mtd_partitions[] = {
-	[0] = {
-		.name	= "SnapGear Boot Loader",
-		.size	= SZ_128K,
-	},
-	[1] = {
-		.name	= "SnapGear non-volatile configuration",
-		.size	= SZ_512K,
-		.offset	= SZ_256K,
-	},
-	[2] = {
-		.name	= "SnapGear image",
-		.offset	= SZ_512K + SZ_256K,
-	},
-	[3] = {
-		.name	= "SnapGear StrataFlash",
-	},
-	[4] = {
-		.name	= "SnapGear Boot Tags",
-		.size	= SZ_128K,
-		.offset	= SZ_128K,
-	},
-};
-
-static struct physmap_flash_data sg_mtd_pdata = {
-	.width		= 1,
-	.nr_parts	= ARRAY_SIZE(sg_mtd_partitions),
-	.parts		= sg_mtd_partitions,
-};
-
-
-static struct resource sg_mtd_resource[] = {
-	[0] = {
-		.start = FL_BASE,
-		.end   = FL_BASE + FL_SIZE - 1,
-		.flags = IORESOURCE_MEM,
-	},
-};
-
-static struct platform_device sg_mtd_device = {
-	.name		= "physmap-flash",
-	.id		= 0,
-	.num_resources	= ARRAY_SIZE(sg_mtd_resource),
-	.resource	= sg_mtd_resource,
-	.dev		= {
-		.platform_data = &sg_mtd_pdata,
-	},
-};
-
-static void __init sg_init(void)
-{
-	ks8695_add_device_lan();
-	ks8695_add_device_wan();
-
-	if (machine_is_sg310())
-		platform_device_register(&sg_mtd_device);
-}
-
-#ifdef CONFIG_MACH_LITE300
-MACHINE_START(LITE300, "SecureComputing/SG300")
-	/* SnapGear */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= sg_init,
-	.init_time	= ks8695_timer_init,
-	.restart	= ks8695_restart,
-MACHINE_END
-#endif
-
-#ifdef CONFIG_MACH_SG310
-MACHINE_START(SG310, "McAfee/SG310")
-	/* SnapGear */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= sg_init,
-	.init_time	= ks8695_timer_init,
-	.restart	= ks8695_restart,
-MACHINE_END
-#endif
-
-#ifdef CONFIG_MACH_SE4200
-MACHINE_START(SE4200, "SecureComputing/SE4200")
-	/* SnapGear */
-	.atag_offset	= 0x100,
-	.map_io		= ks8695_map_io,
-	.init_irq	= ks8695_init_irq,
-	.init_machine	= sg_init,
-	.init_time	= ks8695_timer_init,
-	.restart	= ks8695_restart,
-MACHINE_END
-#endif
diff --git a/arch/arm/mach-ks8695/cpu.c b/arch/arm/mach-ks8695/cpu.c
deleted file mode 100644
index aa6bb0c93aa8..000000000000
--- a/arch/arm/mach-ks8695/cpu.c
+++ /dev/null
@@ -1,60 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * arch/arm/mach-ks8695/cpu.c
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- *
- * KS8695 CPU support
- */
-
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/init.h>
-#include <linux/io.h>
-
-#include <mach/hardware.h>
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-
-#include "regs-sys.h"
-#include <mach/regs-misc.h>
-
-
-static struct map_desc ks8695_io_desc[] __initdata = {
-	{
-		.virtual	= (unsigned long)KS8695_IO_VA,
-		.pfn		= __phys_to_pfn(KS8695_IO_PA),
-		.length		= KS8695_IO_SIZE,
-		.type		= MT_DEVICE,
-	}
-};
-
-static void __init ks8695_processor_info(void)
-{
-	unsigned long id, rev;
-
-	id = __raw_readl(KS8695_MISC_VA + KS8695_DID);
-	rev = __raw_readl(KS8695_MISC_VA + KS8695_RID);
-
-	printk("KS8695 ID=%04lx  SubID=%02lx  Revision=%02lx\n", (id & DID_ID), (rev & RID_SUBID), (rev & RID_REVISION));
-}
-
-static unsigned int sysclk[8] = { 125000000, 100000000, 62500000, 50000000, 41700000, 33300000, 31300000, 25000000 };
-static unsigned int cpuclk[8] = { 166000000, 166000000, 83000000, 83000000, 55300000, 55300000, 41500000, 41500000 };
-
-static void __init ks8695_clock_info(void)
-{
-	unsigned int scdc = __raw_readl(KS8695_SYS_VA + KS8695_CLKCON) & CLKCON_SCDC;
-
-	printk("Clocks: System %u MHz, CPU %u MHz\n",
-			sysclk[scdc] / 1000000, cpuclk[scdc] / 1000000);
-}
-
-void __init ks8695_map_io(void)
-{
-	iotable_init(ks8695_io_desc, ARRAY_SIZE(ks8695_io_desc));
-
-	ks8695_processor_info();
-	ks8695_clock_info();
-}
diff --git a/arch/arm/mach-ks8695/devices.c b/arch/arm/mach-ks8695/devices.c
deleted file mode 100644
index 61cf20beb45f..000000000000
--- a/arch/arm/mach-ks8695/devices.c
+++ /dev/null
@@ -1,197 +0,0 @@
-/*
- * arch/arm/mach-ks8695/devices.c
- *
- * Copyright (C) 2006 Andrew Victor
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-
-#include <linux/gpio.h>
-#include <linux/platform_device.h>
-
-#include <mach/irqs.h>
-#include "regs-wan.h"
-#include "regs-lan.h"
-#include "regs-hpna.h"
-#include <mach/regs-switch.h>
-#include <mach/regs-misc.h>
-
-
-/* --------------------------------------------------------------------
- *  Ethernet
- * -------------------------------------------------------------------- */
-
-static u64 eth_dmamask = 0xffffffffUL;
-
-static struct resource ks8695_wan_resources[] = {
-	[0] = {
-		.start	= KS8695_WAN_PA,
-		.end	= KS8695_WAN_PA + 0x00ff,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.name	= "WAN RX",
-		.start	= KS8695_IRQ_WAN_RX_STATUS,
-		.end	= KS8695_IRQ_WAN_RX_STATUS,
-		.flags	= IORESOURCE_IRQ,
-	},
-	[2] = {
-		.name	= "WAN TX",
-		.start	= KS8695_IRQ_WAN_TX_STATUS,
-		.end	= KS8695_IRQ_WAN_TX_STATUS,
-		.flags	= IORESOURCE_IRQ,
-	},
-	[3] = {
-		.name	= "WAN Link",
-		.start	= KS8695_IRQ_WAN_LINK,
-		.end	= KS8695_IRQ_WAN_LINK,
-		.flags	= IORESOURCE_IRQ,
-	},
-	[4] = {
-		.name	= "WAN PHY",
-		.start	= KS8695_MISC_PA,
-		.end	= KS8695_MISC_PA + 0x1f,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct platform_device ks8695_wan_device = {
-	.name		= "ks8695_ether",
-	.id		= 0,
-	.dev		= {
-				.dma_mask		= &eth_dmamask,
-				.coherent_dma_mask	= 0xffffffff,
-	},
-	.resource	= ks8695_wan_resources,
-	.num_resources	= ARRAY_SIZE(ks8695_wan_resources),
-};
-
-
-static struct resource ks8695_lan_resources[] = {
-	[0] = {
-		.start	= KS8695_LAN_PA,
-		.end	= KS8695_LAN_PA + 0x00ff,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.name	= "LAN RX",
-		.start	= KS8695_IRQ_LAN_RX_STATUS,
-		.end	= KS8695_IRQ_LAN_RX_STATUS,
-		.flags	= IORESOURCE_IRQ,
-	},
-	[2] = {
-		.name	= "LAN TX",
-		.start	= KS8695_IRQ_LAN_TX_STATUS,
-		.end	= KS8695_IRQ_LAN_TX_STATUS,
-		.flags	= IORESOURCE_IRQ,
-	},
-	[3] = {
-		.name	= "LAN SWITCH",
-		.start	= KS8695_SWITCH_PA,
-		.end	= KS8695_SWITCH_PA + 0x4f,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct platform_device ks8695_lan_device = {
-	.name		= "ks8695_ether",
-	.id		= 1,
-	.dev		= {
-				.dma_mask		= &eth_dmamask,
-				.coherent_dma_mask	= 0xffffffff,
-	},
-	.resource	= ks8695_lan_resources,
-	.num_resources	= ARRAY_SIZE(ks8695_lan_resources),
-};
-
-
-static struct resource ks8695_hpna_resources[] = {
-	[0] = {
-		.start	= KS8695_HPNA_PA,
-		.end	= KS8695_HPNA_PA + 0x00ff,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.name	= "HPNA RX",
-		.start	= KS8695_IRQ_HPNA_RX_STATUS,
-		.end	= KS8695_IRQ_HPNA_RX_STATUS,
-		.flags	= IORESOURCE_IRQ,
-	},
-	[2] = {
-		.name	= "HPNA TX",
-		.start	= KS8695_IRQ_HPNA_TX_STATUS,
-		.end	= KS8695_IRQ_HPNA_TX_STATUS,
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device ks8695_hpna_device = {
-	.name		= "ks8695_ether",
-	.id		= 2,
-	.dev		= {
-				.dma_mask		= &eth_dmamask,
-				.coherent_dma_mask	= 0xffffffff,
-	},
-	.resource	= ks8695_hpna_resources,
-	.num_resources	= ARRAY_SIZE(ks8695_hpna_resources),
-};
-
-void __init ks8695_add_device_wan(void)
-{
-	platform_device_register(&ks8695_wan_device);
-}
-
-void __init ks8695_add_device_lan(void)
-{
-	platform_device_register(&ks8695_lan_device);
-}
-
-void __init ks8696_add_device_hpna(void)
-{
-	platform_device_register(&ks8695_hpna_device);
-}
-
-
-/* --------------------------------------------------------------------
- *  Watchdog
- * -------------------------------------------------------------------- */
-
-static struct platform_device ks8695_wdt_device = {
-	.name		= "ks8695_wdt",
-	.id		= -1,
-	.num_resources	= 0,
-};
-
-static void __init ks8695_add_device_watchdog(void)
-{
-	platform_device_register(&ks8695_wdt_device);
-}
-
-
-/* -------------------------------------------------------------------- */
-
-/*
- * These devices are always present and don't need any board-specific
- * setup.
- */
-static int __init ks8695_add_standard_devices(void)
-{
-	ks8695_add_device_watchdog();
-	return 0;
-}
-
-arch_initcall(ks8695_add_standard_devices);
diff --git a/arch/arm/mach-ks8695/devices.h b/arch/arm/mach-ks8695/devices.h
deleted file mode 100644
index cc23ee3820ea..000000000000
--- a/arch/arm/mach-ks8695/devices.h
+++ /dev/null
@@ -1,29 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-ks8695/include/mach/devices.h
- *
- * Copyright (C) 2006 Andrew Victor
- */
-
-#ifndef __ASM_ARCH_DEVICES_H
-#define __ASM_ARCH_DEVICES_H
-
-#include <linux/pci.h>
-
- /* Ethernet */
-extern void __init ks8695_add_device_wan(void);
-extern void __init ks8695_add_device_lan(void);
-extern void __init ks8695_add_device_hpna(void);
-
- /* PCI */
-#define KS8695_MODE_PCI		0
-#define KS8695_MODE_MINIPCI	1
-#define KS8695_MODE_CARDBUS	2
-
-struct ks8695_pci_cfg {
-	short mode;
-	int (*map_irq)(const struct pci_dev *, u8, u8);
-};
-extern __init void ks8695_init_pci(struct ks8695_pci_cfg *);
-
-#endif
diff --git a/arch/arm/mach-ks8695/generic.h b/arch/arm/mach-ks8695/generic.h
deleted file mode 100644
index 9e9cbdd436a9..000000000000
--- a/arch/arm/mach-ks8695/generic.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-ks8695/generic.h
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
-*/
-
-extern __init void ks8695_map_io(void);
-extern __init void ks8695_init_irq(void);
-extern void ks8695_restart(enum reboot_mode, const char *);
-extern void ks8695_timer_init(void);
diff --git a/arch/arm/mach-ks8695/include/mach/entry-macro.S b/arch/arm/mach-ks8695/include/mach/entry-macro.S
deleted file mode 100644
index 7ff812cb010b..000000000000
--- a/arch/arm/mach-ks8695/include/mach/entry-macro.S
+++ /dev/null
@@ -1,47 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/entry-macro.S
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- *
- * Low-level IRQ helper macros for KS8695
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
-*/
-
-#include <mach/hardware.h>
-#include <mach/regs-irq.h>
-
-	.macro  get_irqnr_preamble, base, tmp
-		ldr	\base, =KS8695_IRQ_VA			@ Base address of interrupt controller
-	.endm
-
-	.macro	get_irqnr_and_base, irqnr, irqstat, base, tmp
-		ldr	\irqstat, [\base, #KS8695_INTMS]	@ Mask Status register
-
-		teq	\irqstat, #0
-		beq	1001f
-
-		mov	\irqnr, #0
-
-		tst	\irqstat, #0xff
-		moveq	\irqstat, \irqstat, lsr #8
-		addeq	\irqnr, \irqnr, #8
-		tsteq	\irqstat, #0xff
-		moveq	\irqstat, \irqstat, lsr #8
-		addeq	\irqnr, \irqnr, #8
-		tsteq	\irqstat, #0xff
-		moveq	\irqstat, \irqstat, lsr #8
-		addeq	\irqnr, \irqnr, #8
-		tst	\irqstat, #0x0f
-		moveq	\irqstat, \irqstat, lsr #4
-		addeq	\irqnr, \irqnr, #4
-		tst	\irqstat, #0x03
-		moveq	\irqstat, \irqstat, lsr #2
-		addeq	\irqnr, \irqnr, #2
-		tst	\irqstat, #0x01
-		addseq	\irqnr, \irqnr, #1
-1001:
-	.endm
diff --git a/arch/arm/mach-ks8695/include/mach/gpio-ks8695.h b/arch/arm/mach-ks8695/include/mach/gpio-ks8695.h
deleted file mode 100644
index 600115f48fb3..000000000000
--- a/arch/arm/mach-ks8695/include/mach/gpio-ks8695.h
+++ /dev/null
@@ -1,36 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2006 Andrew Victor
- */
-
-#ifndef __MACH_KS8659_GPIO_H
-#define __MACH_KS8659_GPIO_H
-
-#include <linux/kernel.h>
-
-#define KS8695_GPIO_0		0
-#define KS8695_GPIO_1		1
-#define KS8695_GPIO_2		2
-#define KS8695_GPIO_3		3
-#define KS8695_GPIO_4		4
-#define KS8695_GPIO_5		5
-#define KS8695_GPIO_6		6
-#define KS8695_GPIO_7		7
-#define KS8695_GPIO_8		8
-#define KS8695_GPIO_9		9
-#define KS8695_GPIO_10		10
-#define KS8695_GPIO_11		11
-#define KS8695_GPIO_12		12
-#define KS8695_GPIO_13		13
-#define KS8695_GPIO_14		14
-#define KS8695_GPIO_15		15
-
-/*
- * Configure GPIO pin as external interrupt source.
- */
-extern int ks8695_gpio_interrupt(unsigned int pin, unsigned int type);
-
-/* Register the GPIOs */
-extern void ks8695_register_gpios(void);
-
-#endif /* __MACH_KS8659_GPIO_H */
diff --git a/arch/arm/mach-ks8695/include/mach/hardware.h b/arch/arm/mach-ks8695/include/mach/hardware.h
deleted file mode 100644
index 0fb889be8112..000000000000
--- a/arch/arm/mach-ks8695/include/mach/hardware.h
+++ /dev/null
@@ -1,42 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-ks8695/include/mach/hardware.h
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- *
- * KS8695 - Memory Map definitions
-*/
-
-#ifndef __ASM_ARCH_HARDWARE_H
-#define __ASM_ARCH_HARDWARE_H
-
-#include <linux/sizes.h>
-
-/*
- * Clocks are derived from MCLK, which is 25MHz
- */
-#define KS8695_CLOCK_RATE	25000000
-
-/*
- * Physical RAM address.
- */
-#define KS8695_SDRAM_PA		0x00000000
-
-
-/*
- * We map an entire MiB with the System Configuration Registers in even
- * though only 64KiB is needed. This makes it easier for use with the
- * head debug code as the initial MMU setup only deals in L1 sections.
- */
-#define KS8695_IO_PA		0x03F00000
-#define KS8695_IO_VA		IOMEM(0xF0000000)
-#define KS8695_IO_SIZE		SZ_1M
-
-#define KS8695_PCIMEM_PA	0x60000000
-#define KS8695_PCIMEM_SIZE	SZ_512M
-
-#define KS8695_PCIIO_PA		0x80000000
-#define KS8695_PCIIO_SIZE	SZ_64K
-
-#endif
diff --git a/arch/arm/mach-ks8695/include/mach/irqs.h b/arch/arm/mach-ks8695/include/mach/irqs.h
deleted file mode 100644
index 0cbb30672427..000000000000
--- a/arch/arm/mach-ks8695/include/mach/irqs.h
+++ /dev/null
@@ -1,51 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-ks8695/include/mach/irqs.h
- *
- * Copyright (C) 2006 Simtec Electronics
- *   Ben Dooks <ben@simtec.co.uk>
- */
-
-#ifndef __ASM_ARCH_IRQS_H
-#define __ASM_ARCH_IRQS_H
-
-
-#define NR_IRQS				32
-
-/*
- * IRQ definitions
- */
-#define KS8695_IRQ_COMM_RX		0
-#define KS8695_IRQ_COMM_TX		1
-#define KS8695_IRQ_EXTERN0		2
-#define KS8695_IRQ_EXTERN1		3
-#define KS8695_IRQ_EXTERN2		4
-#define KS8695_IRQ_EXTERN3		5
-#define KS8695_IRQ_TIMER0		6
-#define KS8695_IRQ_TIMER1		7
-#define KS8695_IRQ_UART_TX		8
-#define KS8695_IRQ_UART_RX		9
-#define KS8695_IRQ_UART_LINE_STATUS	10
-#define KS8695_IRQ_UART_MODEM_STATUS	11
-#define KS8695_IRQ_LAN_RX_STOP		12
-#define KS8695_IRQ_LAN_TX_STOP		13
-#define KS8695_IRQ_LAN_RX_BUF		14
-#define KS8695_IRQ_LAN_TX_BUF		15
-#define KS8695_IRQ_LAN_RX_STATUS	16
-#define KS8695_IRQ_LAN_TX_STATUS	17
-#define KS8695_IRQ_HPNA_RX_STOP		18
-#define KS8695_IRQ_HPNA_TX_STOP		19
-#define KS8695_IRQ_HPNA_RX_BUF		20
-#define KS8695_IRQ_HPNA_TX_BUF		21
-#define KS8695_IRQ_HPNA_RX_STATUS	22
-#define KS8695_IRQ_HPNA_TX_STATUS	23
-#define KS8695_IRQ_BUS_ERROR		24
-#define KS8695_IRQ_WAN_RX_STOP		25
-#define KS8695_IRQ_WAN_TX_STOP		26
-#define KS8695_IRQ_WAN_RX_BUF		27
-#define KS8695_IRQ_WAN_TX_BUF		28
-#define KS8695_IRQ_WAN_RX_STATUS	29
-#define KS8695_IRQ_WAN_TX_STATUS	30
-#define KS8695_IRQ_WAN_LINK		31
-
-#endif
diff --git a/arch/arm/mach-ks8695/include/mach/memory.h b/arch/arm/mach-ks8695/include/mach/memory.h
deleted file mode 100644
index ab0d27fa8969..000000000000
--- a/arch/arm/mach-ks8695/include/mach/memory.h
+++ /dev/null
@@ -1,51 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/memory.h
- *
- * Copyright (C) 2006 Andrew Victor
- *
- * KS8695 Memory definitions
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef __ASM_ARCH_MEMORY_H
-#define __ASM_ARCH_MEMORY_H
-
-#include <mach/hardware.h>
-
-#ifndef __ASSEMBLY__
-
-#ifdef CONFIG_PCI
-
-/* PCI mappings */
-#define __virt_to_bus(x)	((x) - PAGE_OFFSET + KS8695_PCIMEM_PA)
-#define __bus_to_virt(x)	((x) - KS8695_PCIMEM_PA + PAGE_OFFSET)
-
-/* Platform-bus mapping */
-extern struct bus_type platform_bus_type;
-#define is_lbus_device(dev)		(dev && dev->bus == &platform_bus_type)
-#define __arch_dma_to_virt(dev, x)	({ (void *) (is_lbus_device(dev) ? \
-					__phys_to_virt(x) : __bus_to_virt(x)); })
-#define __arch_virt_to_dma(dev, x)	({ is_lbus_device(dev) ? \
-					(dma_addr_t)__virt_to_phys((unsigned long)x) \
-					: (dma_addr_t)__virt_to_bus(x); })
-#define __arch_pfn_to_dma(dev, pfn)	\
-	({ dma_addr_t __dma = __pfn_to_phys(pfn); \
-	   if (!is_lbus_device(dev)) \
-		__dma = __dma - PHYS_OFFSET + KS8695_PCIMEM_PA; \
-	   __dma; })
-
-#define __arch_dma_to_pfn(dev, x)	\
-	({ dma_addr_t __dma = x;				\
-	   if (!is_lbus_device(dev))				\
-		__dma += PHYS_OFFSET - KS8695_PCIMEM_PA;	\
-	   __phys_to_pfn(__dma);				\
-	})
-
-#endif
-
-#endif
-
-#endif
diff --git a/arch/arm/mach-ks8695/include/mach/regs-gpio.h b/arch/arm/mach-ks8695/include/mach/regs-gpio.h
deleted file mode 100644
index 90614a7d0548..000000000000
--- a/arch/arm/mach-ks8695/include/mach/regs-gpio.h
+++ /dev/null
@@ -1,55 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-gpio.h
- *
- * Copyright (C) 2007 Andrew Victor
- *
- * KS8695 - GPIO control registers and bit definitions.
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef KS8695_GPIO_H
-#define KS8695_GPIO_H
-
-#define KS8695_GPIO_OFFSET	(0xF0000 + 0xE600)
-#define KS8695_GPIO_VA		(KS8695_IO_VA + KS8695_GPIO_OFFSET)
-#define KS8695_GPIO_PA		(KS8695_IO_PA + KS8695_GPIO_OFFSET)
-
-
-#define KS8695_IOPM		(0x00)		/* I/O Port Mode Register */
-#define KS8695_IOPC		(0x04)		/* I/O Port Control Register */
-#define KS8695_IOPD		(0x08)		/* I/O Port Data Register */
-
-
-/* Port Mode Register */
-#define IOPM(x)			(1 << (x))	/* Mode for GPIO Pin x */
-
-/* Port Control Register */
-#define IOPC_IOTIM1EN		(1 << 17)	/* GPIO Pin for Timer1 Enable */
-#define IOPC_IOTIM0EN		(1 << 16)	/* GPIO Pin for Timer0 Enable */
-#define IOPC_IOEINT3EN		(1 << 15)	/* GPIO Pin for External/Soft Interrupt 3 Enable */
-#define IOPC_IOEINT3TM		(7 << 12)	/* GPIO Pin for External/Soft Interrupt 3 Trigger Mode */
-#define IOPC_IOEINT3_MODE(x)	((x) << 12)
-#define IOPC_IOEINT2EN		(1 << 11)	/* GPIO Pin for External/Soft Interrupt 2 Enable */
-#define IOPC_IOEINT2TM		(7 << 8)	/* GPIO Pin for External/Soft Interrupt 2 Trigger Mode */
-#define IOPC_IOEINT2_MODE(x)	((x) << 8)
-#define IOPC_IOEINT1EN		(1 << 7)	/* GPIO Pin for External/Soft Interrupt 1 Enable */
-#define IOPC_IOEINT1TM		(7 << 4)	/* GPIO Pin for External/Soft Interrupt 1 Trigger Mode */
-#define IOPC_IOEINT1_MODE(x)	((x) << 4)
-#define IOPC_IOEINT0EN		(1 << 3)	/* GPIO Pin for External/Soft Interrupt 0 Enable */
-#define IOPC_IOEINT0TM		(7 << 0)	/* GPIO Pin for External/Soft Interrupt 0 Trigger Mode */
-#define IOPC_IOEINT0_MODE(x)	((x) << 0)
-
- /* Trigger Modes */
-#define IOPC_TM_LOW		(0)		/* Level Detection (Active Low) */
-#define IOPC_TM_HIGH		(1)		/* Level Detection (Active High) */
-#define IOPC_TM_RISING		(2)		/* Rising Edge Detection */
-#define IOPC_TM_FALLING		(4)		/* Falling Edge Detection */
-#define IOPC_TM_EDGE		(6)		/* Both Edge Detection */
-
-/* Port Data Register */
-#define IOPD(x)			(1 << (x))	/* Signal Level of GPIO Pin x */
-
-#endif
diff --git a/arch/arm/mach-ks8695/include/mach/regs-irq.h b/arch/arm/mach-ks8695/include/mach/regs-irq.h
deleted file mode 100644
index 352b7e8704d5..000000000000
--- a/arch/arm/mach-ks8695/include/mach/regs-irq.h
+++ /dev/null
@@ -1,41 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-irq.h
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- *
- * KS8695 - IRQ registers and bit definitions
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef KS8695_IRQ_H
-#define KS8695_IRQ_H
-
-#define KS8695_IRQ_OFFSET	(0xF0000 + 0xE200)
-#define KS8695_IRQ_VA		(KS8695_IO_VA + KS8695_IRQ_OFFSET)
-#define KS8695_IRQ_PA		(KS8695_IO_PA + KS8695_IRQ_OFFSET)
-
-
-/*
- * Interrupt Controller registers
- */
-#define KS8695_INTMC		(0x00)		/* Mode Control Register */
-#define KS8695_INTEN		(0x04)		/* Interrupt Enable Register */
-#define KS8695_INTST		(0x08)		/* Interrupt Status Register */
-#define KS8695_INTPW		(0x0c)		/* Interrupt Priority (WAN MAC) */
-#define KS8695_INTPH		(0x10)		/* Interrupt Priority (HPNA) [KS8695 only] */
-#define KS8695_INTPL		(0x14)		/* Interrupt Priority (LAN MAC) */
-#define KS8695_INTPT		(0x18)		/* Interrupt Priority (Timer) */
-#define KS8695_INTPU		(0x1c)		/* Interrupt Priority (UART) */
-#define KS8695_INTPE		(0x20)		/* Interrupt Priority (External Interrupt) */
-#define KS8695_INTPC		(0x24)		/* Interrupt Priority (Communications Channel) */
-#define KS8695_INTPBE		(0x28)		/* Interrupt Priority (Bus Error Response) */
-#define KS8695_INTMS		(0x2c)		/* Interrupt Mask Status Register */
-#define KS8695_INTHPF		(0x30)		/* Interrupt Pending Highest Priority (FIQ) */
-#define KS8695_INTHPI		(0x34)		/* Interrupt Pending Highest Priority (IRQ) */
-
-
-#endif
diff --git a/arch/arm/mach-ks8695/include/mach/regs-misc.h b/arch/arm/mach-ks8695/include/mach/regs-misc.h
deleted file mode 100644
index 2740c52494a0..000000000000
--- a/arch/arm/mach-ks8695/include/mach/regs-misc.h
+++ /dev/null
@@ -1,97 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-misc.h
- *
- * Copyright (C) 2006 Andrew Victor
- *
- * KS8695 - Miscellaneous Registers
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef KS8695_MISC_H
-#define KS8695_MISC_H
-
-#define KS8695_MISC_OFFSET	(0xF0000 + 0xEA00)
-#define KS8695_MISC_VA		(KS8695_IO_VA + KS8695_MISC_OFFSET)
-#define KS8695_MISC_PA		(KS8695_IO_PA + KS8695_MISC_OFFSET)
-
-
-/*
- * Miscellaneous registers
- */
-#define KS8695_DID		(0x00)		/* Device ID */
-#define KS8695_RID		(0x04)		/* Revision ID */
-#define KS8695_HMC		(0x08)		/* HPNA Miscellaneous Control [KS8695 only] */
-#define KS8695_WMC		(0x0c)		/* WAN Miscellaneous Control */
-#define KS8695_WPPM		(0x10)		/* WAN PHY Power Management */
-#define KS8695_PPS		(0x1c)		/* PHY PowerSave */
-
-/* Device ID Register */
-#define DID_ID			(0xffff << 0)	/* Device ID */
-
-/* Revision ID Register */
-#define RID_SUBID		(0xf << 4)	/* Sub-Device ID */
-#define RID_REVISION		(0xf << 0)	/* Revision ID */
-
-/* HPNA Miscellaneous Control Register */
-#define HMC_HSS			(1 << 1)	/* Speed */
-#define HMC_HDS			(1 << 0)	/* Duplex */
-
-/* WAN Miscellaneous Control Register */
-#define WMC_WANC		(1 << 30)	/* Auto-negotiation complete */
-#define WMC_WANR		(1 << 29)	/* Auto-negotiation restart */
-#define WMC_WANAP		(1 << 28)	/* Advertise Pause */
-#define WMC_WANA100F		(1 << 27)	/* Advertise 100 FDX */
-#define WMC_WANA100H		(1 << 26)	/* Advertise 100 HDX */
-#define WMC_WANA10F		(1 << 25)	/* Advertise 10 FDX */
-#define WMC_WANA10H		(1 << 24)	/* Advertise 10 HDX */
-#define WMC_WLS			(1 << 23)	/* Link status */
-#define WMC_WDS			(1 << 22)	/* Duplex status */
-#define WMC_WSS			(1 << 21)	/* Speed status */
-#define WMC_WLPP		(1 << 20)	/* Link Partner Pause */
-#define WMC_WLP100F		(1 << 19)	/* Link Partner 100 FDX */
-#define WMC_WLP100H		(1 << 18)	/* Link Partner 100 HDX */
-#define WMC_WLP10F		(1 << 17)	/* Link Partner 10 FDX */
-#define WMC_WLP10H		(1 << 16)	/* Link Partner 10 HDX */
-#define WMC_WAND		(1 << 15)	/* Auto-negotiation disable */
-#define WMC_WANF100		(1 << 14)	/* Force 100 */
-#define WMC_WANFF		(1 << 13)	/* Force FDX */
-#define WMC_WLED1S		(7 <<  4)	/* LED1 Select */
-#define		WLED1S_SPEED		(0 << 4)
-#define		WLED1S_LINK		(1 << 4)
-#define		WLED1S_DUPLEX		(2 << 4)
-#define		WLED1S_COLLISION	(3 << 4)
-#define		WLED1S_ACTIVITY		(4 << 4)
-#define		WLED1S_FDX_COLLISION	(5 << 4)
-#define		WLED1S_LINK_ACTIVITY	(6 << 4)
-#define WMC_WLED0S		(7 << 0)	/* LED0 Select */
-#define		WLED0S_SPEED		(0 << 0)
-#define		WLED0S_LINK		(1 << 0)
-#define		WLED0S_DUPLEX		(2 << 0)
-#define		WLED0S_COLLISION	(3 << 0)
-#define		WLED0S_ACTIVITY		(4 << 0)
-#define		WLED0S_FDX_COLLISION	(5 << 0)
-#define		WLED0S_LINK_ACTIVITY	(6 << 0)
-
-/* WAN PHY Power Management Register */
-#define WPPM_WLPBK		(1 << 14)	/* Local Loopback */
-#define WPPM_WRLPKB		(1 << 13)	/* Remove Loopback */
-#define WPPM_WPI		(1 << 12)	/* PHY isolate */
-#define WPPM_WFL		(1 << 10)	/* Force link */
-#define WPPM_MDIXS		(1 << 9)	/* MDIX Status */
-#define WPPM_FEF		(1 << 8)	/* Far End Fault */
-#define WPPM_AMDIXP		(1 << 7)	/* Auto MDIX Parameter */
-#define WPPM_TXDIS		(1 << 6)	/* Disable transmitter */
-#define WPPM_DFEF		(1 << 5)	/* Disable Far End Fault */
-#define WPPM_PD			(1 << 4)	/* Power Down */
-#define WPPM_DMDX		(1 << 3)	/* Disable Auto MDI/MDIX */
-#define WPPM_FMDX		(1 << 2)	/* Force MDIX */
-#define WPPM_LPBK		(1 << 1)	/* MAX Loopback */
-
-/* PHY Power Save Register */
-#define PPS_PPSM		(1 << 0)	/* PHY Power Save Mode */
-
-
-#endif
diff --git a/arch/arm/mach-ks8695/include/mach/regs-switch.h b/arch/arm/mach-ks8695/include/mach/regs-switch.h
deleted file mode 100644
index 97e8acb1cf6c..000000000000
--- a/arch/arm/mach-ks8695/include/mach/regs-switch.h
+++ /dev/null
@@ -1,66 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-switch.h
- *
- * Copyright (C) 2006 Andrew Victor
- *
- * KS8695 - Switch Registers and bit definitions.
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef KS8695_SWITCH_H
-#define KS8695_SWITCH_H
-
-#define KS8695_SWITCH_OFFSET	(0xF0000 + 0xe800)
-#define KS8695_SWITCH_VA	(KS8695_IO_VA + KS8695_SWITCH_OFFSET)
-#define KS8695_SWITCH_PA	(KS8695_IO_PA + KS8695_SWITCH_OFFSET)
-
-
-/*
- * Switch registers
- */
-#define KS8695_SEC0		(0x00)		/* Switch Engine Control 0 */
-#define KS8695_SEC1		(0x04)		/* Switch Engine Control 1 */
-#define KS8695_SEC2		(0x08)		/* Switch Engine Control 2 */
-
-#define KS8695_SEPXCZ(x,z)	(0x0c + (((x)-1)*3 + ((z)-1))*4)	/* Port Configuration Registers */
-
-#define KS8695_SEP12AN		(0x48)		/* Port 1 & 2 Auto-Negotiation */
-#define KS8695_SEP34AN		(0x4c)		/* Port 3 & 4 Auto-Negotiation */
-#define KS8695_SEIAC		(0x50)		/* Indirect Access Control */
-#define KS8695_SEIADH2		(0x54)		/* Indirect Access Data High 2 */
-#define KS8695_SEIADH1		(0x58)		/* Indirect Access Data High 1 */
-#define KS8695_SEIADL		(0x5c)		/* Indirect Access Data Low */
-#define KS8695_SEAFC		(0x60)		/* Advance Feature Control */
-#define KS8695_SEDSCPH		(0x64)		/* TOS Priority High */
-#define KS8695_SEDSCPL		(0x68)		/* TOS Priority Low */
-#define KS8695_SEMAH		(0x6c)		/* Switch Engine MAC Address High */
-#define KS8695_SEMAL		(0x70)		/* Switch Engine MAC Address Low */
-#define KS8695_LPPM12		(0x74)		/* Port 1 & 2 PHY Power Management */
-#define KS8695_LPPM34		(0x78)		/* Port 3 & 4 PHY Power Management */
-
-
-/* Switch Engine Control 0 */
-#define SEC0_LLED1S		(7 << 25)	/* LED1 Select */
-#define		LLED1S_SPEED		(0 << 25)
-#define		LLED1S_LINK		(1 << 25)
-#define		LLED1S_DUPLEX		(2 << 25)
-#define		LLED1S_COLLISION	(3 << 25)
-#define		LLED1S_ACTIVITY		(4 << 25)
-#define		LLED1S_FDX_COLLISION	(5 << 25)
-#define		LLED1S_LINK_ACTIVITY	(6 << 25)
-#define SEC0_LLED0S		(7 << 22)	/* LED0 Select */
-#define		LLED0S_SPEED		(0 << 22)
-#define		LLED0S_LINK		(1 << 22)
-#define		LLED0S_DUPLEX		(2 << 22)
-#define		LLED0S_COLLISION	(3 << 22)
-#define		LLED0S_ACTIVITY		(4 << 22)
-#define		LLED0S_FDX_COLLISION	(5 << 22)
-#define		LLED0S_LINK_ACTIVITY	(6 << 22)
-#define SEC0_ENABLE		(1 << 0)	/* Enable Switch */
-
-
-
-#endif
diff --git a/arch/arm/mach-ks8695/include/mach/regs-uart.h b/arch/arm/mach-ks8695/include/mach/regs-uart.h
deleted file mode 100644
index 941a542c5f23..000000000000
--- a/arch/arm/mach-ks8695/include/mach/regs-uart.h
+++ /dev/null
@@ -1,89 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-ks8695/include/mach/regs-uart.h
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- *
- * KS8695 - UART register and bit definitions.
- */
-
-#ifndef KS8695_UART_H
-#define KS8695_UART_H
-
-#define KS8695_UART_OFFSET	(0xF0000 + 0xE000)
-#define KS8695_UART_VA		(KS8695_IO_VA + KS8695_UART_OFFSET)
-#define KS8695_UART_PA		(KS8695_IO_PA + KS8695_UART_OFFSET)
-
-
-/*
- * UART registers
- */
-#define KS8695_URRB	(0x00)		/* Receive Buffer Register */
-#define KS8695_URTH	(0x04)		/* Transmit Holding Register */
-#define KS8695_URFC	(0x08)		/* FIFO Control Register */
-#define KS8695_URLC	(0x0C)		/* Line Control Register */
-#define KS8695_URMC	(0x10)		/* Modem Control Register */
-#define KS8695_URLS	(0x14)		/* Line Status Register */
-#define KS8695_URMS	(0x18)		/* Modem Status Register */
-#define KS8695_URBD	(0x1C)		/* Baud Rate Divisor Register */
-#define KS8695_USR	(0x20)		/* Status Register */
-
-
-/* FIFO Control Register */
-#define URFC_URFRT	(3 << 6)	/* Receive FIFO Trigger Level */
-#define		URFC_URFRT_1	(0 << 6)
-#define		URFC_URFRT_4	(1 << 6)
-#define		URFC_URFRT_8	(2 << 6)
-#define		URFC_URFRT_14	(3 << 6)
-#define URFC_URTFR	(1 << 2)	/* Transmit FIFO Reset */
-#define URFC_URRFR	(1 << 1)	/* Receive FIFO Reset */
-#define URFC_URFE	(1 << 0)	/* FIFO Enable */
-
-/* Line Control Register */
-#define URLC_URSBC	(1 << 6)	/* Set Break Condition */
-#define URLC_PARITY	(7 << 3)	/* Parity */
-#define		URPE_NONE	(0 << 3)
-#define		URPE_ODD	(1 << 3)
-#define		URPE_EVEN	(3 << 3)
-#define		URPE_MARK	(5 << 3)
-#define		URPE_SPACE	(7 << 3)
-#define URLC_URSB	(1 << 2)	/* Stop Bits */
-#define URLC_URCL	(3 << 0)	/* Character Length */
-#define		URCL_5		(0 << 0)
-#define		URCL_6		(1 << 0)
-#define		URCL_7		(2 << 0)
-#define		URCL_8		(3 << 0)
-
-/* Modem Control Register */
-#define URMC_URLB	(1 << 4)	/* Loop-back mode */
-#define URMC_UROUT2	(1 << 3)	/* OUT2 signal */
-#define URMC_UROUT1	(1 << 2)	/* OUT1 signal */
-#define URMC_URRTS	(1 << 1)	/* Request to Send */
-#define URMC_URDTR	(1 << 0)	/* Data Terminal Ready */
-
-/* Line Status Register */
-#define URLS_URRFE	(1 << 7)	/* Receive FIFO Error */
-#define URLS_URTE	(1 << 6)	/* Transmit Empty */
-#define URLS_URTHRE	(1 << 5)	/* Transmit Holding Register Empty */
-#define URLS_URBI	(1 << 4)	/* Break Interrupt */
-#define URLS_URFE	(1 << 3)	/* Framing Error */
-#define URLS_URPE	(1 << 2)	/* Parity Error */
-#define URLS_URROE	(1 << 1)	/* Receive Overrun Error */
-#define URLS_URDR	(1 << 0)	/* Receive Data Ready */
-
-/* Modem Status Register */
-#define URMS_URDCD	(1 << 7)	/* Data Carrier Detect */
-#define URMS_URRI	(1 << 6)	/* Ring Indicator */
-#define URMS_URDSR	(1 << 5)	/* Data Set Ready */
-#define URMS_URCTS	(1 << 4)	/* Clear to Send */
-#define URMS_URDDCD	(1 << 3)	/* Delta Data Carrier Detect */
-#define URMS_URTERI	(1 << 2)	/* Trailing Edge Ring Indicator */
-#define URMS_URDDST	(1 << 1)	/* Delta Data Set Ready */
-#define URMS_URDCTS	(1 << 0)	/* Delta Clear to Send */
-
-/* Status Register */
-#define USR_UTI		(1 << 0)	/* Timeout Indication */
-
-
-#endif
diff --git a/arch/arm/mach-ks8695/include/mach/uncompress.h b/arch/arm/mach-ks8695/include/mach/uncompress.h
deleted file mode 100644
index dc78a29759b5..000000000000
--- a/arch/arm/mach-ks8695/include/mach/uncompress.h
+++ /dev/null
@@ -1,33 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-ks8695/include/mach/uncompress.h
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- *
- * KS8695 - Kernel uncompressor
- */
-
-#ifndef __ASM_ARCH_UNCOMPRESS_H
-#define __ASM_ARCH_UNCOMPRESS_H
-
-#include <linux/io.h>
-#include <mach/regs-uart.h>
-
-static inline void putc(char c)
-{
-	while (!(__raw_readl((void __iomem*)KS8695_UART_PA + KS8695_URLS) & URLS_URTHRE))
-		barrier();
-
-	__raw_writel(c, (void __iomem*)KS8695_UART_PA + KS8695_URTH);
-}
-
-static inline void flush(void)
-{
-	while (!(__raw_readl((void __iomem*)KS8695_UART_PA + KS8695_URLS) & URLS_URTE))
-		barrier();
-}
-
-#define arch_decomp_setup()
-
-#endif
diff --git a/arch/arm/mach-ks8695/irq.c b/arch/arm/mach-ks8695/irq.c
deleted file mode 100644
index 4b7ec8d9300c..000000000000
--- a/arch/arm/mach-ks8695/irq.c
+++ /dev/null
@@ -1,164 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * arch/arm/mach-ks8695/irq.c
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- */
-
-#include <linux/init.h>
-#include <linux/module.h>
-#include <linux/interrupt.h>
-#include <linux/ioport.h>
-#include <linux/device.h>
-#include <linux/io.h>
-
-#include <mach/hardware.h>
-#include <asm/irq.h>
-
-#include <asm/mach/irq.h>
-
-#include <mach/regs-irq.h>
-#include <mach/regs-gpio.h>
-
-static void ks8695_irq_mask(struct irq_data *d)
-{
-	unsigned long inten;
-
-	inten = __raw_readl(KS8695_IRQ_VA + KS8695_INTEN);
-	inten &= ~(1 << d->irq);
-
-	__raw_writel(inten, KS8695_IRQ_VA + KS8695_INTEN);
-}
-
-static void ks8695_irq_unmask(struct irq_data *d)
-{
-	unsigned long inten;
-
-	inten = __raw_readl(KS8695_IRQ_VA + KS8695_INTEN);
-	inten |= (1 << d->irq);
-
-	__raw_writel(inten, KS8695_IRQ_VA + KS8695_INTEN);
-}
-
-static void ks8695_irq_ack(struct irq_data *d)
-{
-	__raw_writel((1 << d->irq), KS8695_IRQ_VA + KS8695_INTST);
-}
-
-
-static struct irq_chip ks8695_irq_level_chip;
-static struct irq_chip ks8695_irq_edge_chip;
-
-
-static int ks8695_irq_set_type(struct irq_data *d, unsigned int type)
-{
-	unsigned long ctrl, mode;
-	unsigned short level_triggered = 0;
-
-	ctrl = __raw_readl(KS8695_GPIO_VA + KS8695_IOPC);
-
-	switch (type) {
-		case IRQ_TYPE_LEVEL_HIGH:
-			mode = IOPC_TM_HIGH;
-			level_triggered = 1;
-			break;
-		case IRQ_TYPE_LEVEL_LOW:
-			mode = IOPC_TM_LOW;
-			level_triggered = 1;
-			break;
-		case IRQ_TYPE_EDGE_RISING:
-			mode = IOPC_TM_RISING;
-			break;
-		case IRQ_TYPE_EDGE_FALLING:
-			mode = IOPC_TM_FALLING;
-			break;
-		case IRQ_TYPE_EDGE_BOTH:
-			mode = IOPC_TM_EDGE;
-			break;
-		default:
-			return -EINVAL;
-	}
-
-	switch (d->irq) {
-		case KS8695_IRQ_EXTERN0:
-			ctrl &= ~IOPC_IOEINT0TM;
-			ctrl |= IOPC_IOEINT0_MODE(mode);
-			break;
-		case KS8695_IRQ_EXTERN1:
-			ctrl &= ~IOPC_IOEINT1TM;
-			ctrl |= IOPC_IOEINT1_MODE(mode);
-			break;
-		case KS8695_IRQ_EXTERN2:
-			ctrl &= ~IOPC_IOEINT2TM;
-			ctrl |= IOPC_IOEINT2_MODE(mode);
-			break;
-		case KS8695_IRQ_EXTERN3:
-			ctrl &= ~IOPC_IOEINT3TM;
-			ctrl |= IOPC_IOEINT3_MODE(mode);
-			break;
-		default:
-			return -EINVAL;
-	}
-
-	if (level_triggered) {
-		irq_set_chip_and_handler(d->irq, &ks8695_irq_level_chip,
-					 handle_level_irq);
-	}
-	else {
-		irq_set_chip_and_handler(d->irq, &ks8695_irq_edge_chip,
-					 handle_edge_irq);
-	}
-
-	__raw_writel(ctrl, KS8695_GPIO_VA + KS8695_IOPC);
-	return 0;
-}
-
-static struct irq_chip ks8695_irq_level_chip = {
-	.irq_ack	= ks8695_irq_mask,
-	.irq_mask	= ks8695_irq_mask,
-	.irq_unmask	= ks8695_irq_unmask,
-	.irq_set_type	= ks8695_irq_set_type,
-};
-
-static struct irq_chip ks8695_irq_edge_chip = {
-	.irq_ack	= ks8695_irq_ack,
-	.irq_mask	= ks8695_irq_mask,
-	.irq_unmask	= ks8695_irq_unmask,
-	.irq_set_type	= ks8695_irq_set_type,
-};
-
-void __init ks8695_init_irq(void)
-{
-	unsigned int irq;
-
-	/* Disable all interrupts initially */
-	__raw_writel(0, KS8695_IRQ_VA + KS8695_INTMC);
-	__raw_writel(0, KS8695_IRQ_VA + KS8695_INTEN);
-
-	for (irq = 0; irq < NR_IRQS; irq++) {
-		switch (irq) {
-			/* Level-triggered interrupts */
-			case KS8695_IRQ_BUS_ERROR:
-			case KS8695_IRQ_UART_MODEM_STATUS:
-			case KS8695_IRQ_UART_LINE_STATUS:
-			case KS8695_IRQ_UART_RX:
-			case KS8695_IRQ_COMM_TX:
-			case KS8695_IRQ_COMM_RX:
-				irq_set_chip_and_handler(irq,
-							 &ks8695_irq_level_chip,
-							 handle_level_irq);
-				break;
-
-			/* Edge-triggered interrupts */
-			default:
-				/* clear pending bit */
-				ks8695_irq_ack(irq_get_irq_data(irq));
-				irq_set_chip_and_handler(irq,
-							 &ks8695_irq_edge_chip,
-							 handle_edge_irq);
-		}
-
-		irq_clear_status_flags(irq, IRQ_NOREQUEST);
-	}
-}
diff --git a/arch/arm/mach-ks8695/pci.c b/arch/arm/mach-ks8695/pci.c
deleted file mode 100644
index 83f330bf07dd..000000000000
--- a/arch/arm/mach-ks8695/pci.c
+++ /dev/null
@@ -1,247 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * arch/arm/mach-ks8695/pci.c
- *
- *  Copyright (C) 2003, Micrel Semiconductors
- *  Copyright (C) 2006, Greg Ungerer <gerg@snapgear.com>
- *  Copyright (C) 2006, Ben Dooks
- *  Copyright (C) 2007, Andrew Victor
- */
-
-#include <linux/kernel.h>
-#include <linux/pci.h>
-#include <linux/mm.h>
-#include <linux/init.h>
-#include <linux/irq.h>
-#include <linux/delay.h>
-#include <linux/io.h>
-
-#include <asm/signal.h>
-#include <asm/mach/pci.h>
-#include <mach/hardware.h>
-
-#include "devices.h"
-#include "regs-pci.h"
-
-
-static int pci_dbg;
-
-static void ks8695_pci_setupconfig(unsigned int bus_nr, unsigned int devfn, unsigned int where)
-{
-	unsigned long pbca;
-
-	pbca = PBCA_ENABLE | (where & ~3);
-	pbca |= PCI_SLOT(devfn) << 11 ;
-	pbca |= PCI_FUNC(devfn) << 8;
-	pbca |= bus_nr << 16;
-
-	if (bus_nr == 0) {
-		/* use Type-0 transaction */
-		__raw_writel(pbca, KS8695_PCI_VA + KS8695_PBCA);
-	} else {
-		/* use Type-1 transaction */
-		__raw_writel(pbca | PBCA_TYPE1, KS8695_PCI_VA + KS8695_PBCA);
-	}
-}
-
-static void __iomem *ks8695_pci_map_bus(struct pci_bus *bus, unsigned int devfn,
-					int where)
-{
-	ks8695_pci_setupconfig(bus->number, devfn, where);
-	return KS8695_PCI_VA +  KS8695_PBCD;
-}
-
-static void ks8695_local_writeconfig(int where, u32 value)
-{
-	ks8695_pci_setupconfig(0, 0, where);
-	__raw_writel(value, KS8695_PCI_VA + KS8695_PBCD);
-}
-
-static struct pci_ops ks8695_pci_ops = {
-	.map_bus = ks8695_pci_map_bus,
-	.read	= pci_generic_config_read32,
-	.write	= pci_generic_config_write32,
-};
-
-static struct resource pci_mem = {
-	.name	= "PCI Memory space",
-	.start	= KS8695_PCIMEM_PA,
-	.end	= KS8695_PCIMEM_PA + (KS8695_PCIMEM_SIZE - 1),
-	.flags	= IORESOURCE_MEM,
-};
-
-static struct resource pci_io = {
-	.name	= "PCI IO space",
-	.start	= KS8695_PCIIO_PA,
-	.end	= KS8695_PCIIO_PA + (KS8695_PCIIO_SIZE - 1),
-	.flags	= IORESOURCE_IO,
-};
-
-static int __init ks8695_pci_setup(int nr, struct pci_sys_data *sys)
-{
-	if (nr > 0)
-		return 0;
-
-	request_resource(&iomem_resource, &pci_mem);
-	request_resource(&ioport_resource, &pci_io);
-
-	pci_add_resource_offset(&sys->resources, &pci_io, sys->io_offset);
-	pci_add_resource_offset(&sys->resources, &pci_mem, sys->mem_offset);
-
-	/* Assign and enable processor bridge */
-	ks8695_local_writeconfig(PCI_BASE_ADDRESS_0, KS8695_PCIMEM_PA);
-
-	/* Enable bus-master & Memory Space access */
-	ks8695_local_writeconfig(PCI_COMMAND, PCI_COMMAND_MASTER | PCI_COMMAND_MEMORY);
-
-	/* Set cache-line size & latency. */
-	ks8695_local_writeconfig(PCI_CACHE_LINE_SIZE, (32 << 8) | (L1_CACHE_BYTES / sizeof(u32)));
-
-	/* Reserve PCI memory space for PCI-AHB resources */
-	if (!request_mem_region(KS8695_PCIMEM_PA, SZ_64M, "PCI-AHB Bridge")) {
-		printk(KERN_ERR "Cannot allocate PCI-AHB Bridge memory.\n");
-		return -EBUSY;
-	}
-
-	return 1;
-}
-
-static inline unsigned int size_mask(unsigned long size)
-{
-	return (~size) + 1;
-}
-
-static int ks8695_pci_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
-{
-	unsigned long pc = instruction_pointer(regs);
-	unsigned long instr = *(unsigned long *)pc;
-	unsigned long cmdstat;
-
-	cmdstat = __raw_readl(KS8695_PCI_VA + KS8695_CRCFCS);
-
-	printk(KERN_ERR "PCI abort: address = 0x%08lx fsr = 0x%03x PC = 0x%08lx LR = 0x%08lx [%s%s%s%s%s]\n",
-		addr, fsr, regs->ARM_pc, regs->ARM_lr,
-		cmdstat & (PCI_STATUS_SIG_TARGET_ABORT << 16) ? "GenTarget" : " ",
-		cmdstat & (PCI_STATUS_REC_TARGET_ABORT << 16) ? "RecvTarget" : " ",
-		cmdstat & (PCI_STATUS_REC_MASTER_ABORT << 16) ? "MasterAbort" : " ",
-		cmdstat & (PCI_STATUS_SIG_SYSTEM_ERROR << 16) ? "SysError" : " ",
-		cmdstat & (PCI_STATUS_DETECTED_PARITY << 16)  ? "Parity" : " "
-	);
-
-	__raw_writel(cmdstat, KS8695_PCI_VA + KS8695_CRCFCS);
-
-	/*
-	 * If the instruction being executed was a read,
-	 * make it look like it read all-ones.
-	 */
-	if ((instr & 0x0c100000) == 0x04100000) {
-		int reg = (instr >> 12) & 15;
-		unsigned long val;
-
-		if (instr & 0x00400000)
-			val = 255;
-		else
-			val = -1;
-
-		regs->uregs[reg] = val;
-		regs->ARM_pc += 4;
-		return 0;
-	}
-
-	if ((instr & 0x0e100090) == 0x00100090) {
-		int reg = (instr >> 12) & 15;
-
-		regs->uregs[reg] = -1;
-		regs->ARM_pc += 4;
-		return 0;
-	}
-
-	return 1;
-}
-
-static void __init ks8695_pci_preinit(void)
-{
-	/* make software reset to avoid freeze if PCI bus was messed up */
-	__raw_writel(0x80000000, KS8695_PCI_VA + KS8695_PBCS);
-
-	/* stage 1 initialization, subid, subdevice = 0x0001 */
-	__raw_writel(0x00010001, KS8695_PCI_VA + KS8695_CRCSID);
-
-	/* stage 2 initialization */
-	/* prefetch limits with 16 words, retry enable */
-	__raw_writel(0x40000000, KS8695_PCI_VA + KS8695_PBCS);
-
-	/* configure memory mapping */
-	__raw_writel(KS8695_PCIMEM_PA, KS8695_PCI_VA + KS8695_PMBA);
-	__raw_writel(size_mask(KS8695_PCIMEM_SIZE), KS8695_PCI_VA + KS8695_PMBAM);
-	__raw_writel(KS8695_PCIMEM_PA, KS8695_PCI_VA + KS8695_PMBAT);
-	__raw_writel(0, KS8695_PCI_VA + KS8695_PMBAC);
-
-	/* configure IO mapping */
-	__raw_writel(KS8695_PCIIO_PA, KS8695_PCI_VA + KS8695_PIOBA);
-	__raw_writel(size_mask(KS8695_PCIIO_SIZE), KS8695_PCI_VA + KS8695_PIOBAM);
-	__raw_writel(KS8695_PCIIO_PA, KS8695_PCI_VA + KS8695_PIOBAT);
-	__raw_writel(0, KS8695_PCI_VA + KS8695_PIOBAC);
-
-	/* hook in fault handlers */
-	hook_fault_code(8, ks8695_pci_fault, SIGBUS, 0, "external abort on non-linefetch");
-	hook_fault_code(10, ks8695_pci_fault, SIGBUS, 0, "external abort on non-linefetch");
-}
-
-static void ks8695_show_pciregs(void)
-{
-	if (!pci_dbg)
-		return;
-
-	printk(KERN_INFO "PCI: CRCFID = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_CRCFID));
-	printk(KERN_INFO "PCI: CRCFCS = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_CRCFCS));
-	printk(KERN_INFO "PCI: CRCFRV = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_CRCFRV));
-	printk(KERN_INFO "PCI: CRCFLT = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_CRCFLT));
-	printk(KERN_INFO "PCI: CRCBMA = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_CRCBMA));
-	printk(KERN_INFO "PCI: CRCSID = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_CRCSID));
-	printk(KERN_INFO "PCI: CRCFIT = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_CRCFIT));
-
-	printk(KERN_INFO "PCI: PBM    = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PBM));
-	printk(KERN_INFO "PCI: PBCS   = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PBCS));
-
-	printk(KERN_INFO "PCI: PMBA   = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PMBA));
-	printk(KERN_INFO "PCI: PMBAC  = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PMBAC));
-	printk(KERN_INFO "PCI: PMBAM  = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PMBAM));
-	printk(KERN_INFO "PCI: PMBAT  = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PMBAT));
-
-	printk(KERN_INFO "PCI: PIOBA  = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PIOBA));
-	printk(KERN_INFO "PCI: PIOBAC = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PIOBAC));
-	printk(KERN_INFO "PCI: PIOBAM = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PIOBAM));
-	printk(KERN_INFO "PCI: PIOBAT = %08x\n", __raw_readl(KS8695_PCI_VA + KS8695_PIOBAT));
-}
-
-
-static struct hw_pci ks8695_pci __initdata = {
-	.nr_controllers	= 1,
-	.ops		= &ks8695_pci_ops,
-	.preinit	= ks8695_pci_preinit,
-	.setup		= ks8695_pci_setup,
-	.postinit	= NULL,
-	.map_irq	= NULL,
-};
-
-void __init ks8695_init_pci(struct ks8695_pci_cfg *cfg)
-{
-	if (__raw_readl(KS8695_PCI_VA + KS8695_CRCFRV) & CFRV_GUEST) {
-		printk("PCI: KS8695 in guest mode, not initialising\n");
-		return;
-	}
-
-	pcibios_min_io = 0;
-	pcibios_min_mem = 0;
-
-	printk(KERN_INFO "PCI: Initialising\n");
-	ks8695_show_pciregs();
-
-	/* set Mode */
-	__raw_writel(cfg->mode << 29, KS8695_PCI_VA + KS8695_PBM);
-
-	ks8695_pci.map_irq = cfg->map_irq;	/* board-specific map_irq method */
-
-	pci_common_init(&ks8695_pci);
-}
diff --git a/arch/arm/mach-ks8695/regs-hpna.h b/arch/arm/mach-ks8695/regs-hpna.h
deleted file mode 100644
index 815ce5c2e3b9..000000000000
--- a/arch/arm/mach-ks8695/regs-hpna.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-wan.h
- *
- * Copyright (C) 2006 Andrew Victor
- *
- * KS8695 - HPNA Registers and bit definitions.
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef KS8695_HPNA_H
-#define KS8695_HPNA_H
-
-#define KS8695_HPNA_OFFSET	(0xF0000 + 0xA000)
-#define KS8695_HPNA_VA		(KS8695_IO_VA + KS8695_HPNA_OFFSET)
-#define KS8695_HPNA_PA		(KS8695_IO_PA + KS8695_HPNA_OFFSET)
-
-
-/*
- * HPNA registers
- */
-
-#endif
diff --git a/arch/arm/mach-ks8695/regs-lan.h b/arch/arm/mach-ks8695/regs-lan.h
deleted file mode 100644
index 82c5f3791afb..000000000000
--- a/arch/arm/mach-ks8695/regs-lan.h
+++ /dev/null
@@ -1,65 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-lan.h
- *
- * Copyright (C) 2006 Andrew Victor
- *
- * KS8695 - LAN Registers and bit definitions.
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef KS8695_LAN_H
-#define KS8695_LAN_H
-
-#define KS8695_LAN_OFFSET	(0xF0000 + 0x8000)
-#define KS8695_LAN_VA		(KS8695_IO_VA + KS8695_LAN_OFFSET)
-#define KS8695_LAN_PA		(KS8695_IO_PA + KS8695_LAN_OFFSET)
-
-
-/*
- * LAN registers
- */
-#define KS8695_LMDTXC		(0x00)		/* DMA Transmit Control */
-#define KS8695_LMDRXC		(0x04)		/* DMA Receive Control */
-#define KS8695_LMDTSC		(0x08)		/* DMA Transmit Start Command */
-#define KS8695_LMDRSC		(0x0c)		/* DMA Receive Start Command */
-#define KS8695_LTDLB		(0x10)		/* Transmit Descriptor List Base Address */
-#define KS8695_LRDLB		(0x14)		/* Receive Descriptor List Base Address */
-#define KS8695_LMAL		(0x18)		/* MAC Station Address Low */
-#define KS8695_LMAH		(0x1c)		/* MAC Station Address High */
-#define KS8695_LMAAL(n)		(0x80 + ((n)*8))	/* MAC Additional Station Address (0..15) Low */
-#define KS8695_LMAAH(n)		(0x84 + ((n)*8))	/* MAC Additional Station Address (0..15) High */
-
-
-/* DMA Transmit Control Register */
-#define LMDTXC_LMTRST		(1    << 31)	/* Soft Reset */
-#define LMDTXC_LMTBS		(0x3f << 24)	/* Transmit Burst Size */
-#define LMDTXC_LMTUCG		(1    << 18)	/* Transmit UDP Checksum Generate */
-#define LMDTXC_LMTTCG		(1    << 17)	/* Transmit TCP Checksum Generate */
-#define LMDTXC_LMTICG		(1    << 16)	/* Transmit IP Checksum Generate */
-#define LMDTXC_LMTFCE		(1    <<  9)	/* Transmit Flow Control Enable */
-#define LMDTXC_LMTLB		(1    <<  8)	/* Loopback mode */
-#define LMDTXC_LMTEP		(1    <<  2)	/* Transmit Enable Padding */
-#define LMDTXC_LMTAC		(1    <<  1)	/* Transmit Add CRC */
-#define LMDTXC_LMTE		(1    <<  0)	/* TX Enable */
-
-/* DMA Receive Control Register */
-#define LMDRXC_LMRBS		(0x3f << 24)	/* Receive Burst Size */
-#define LMDRXC_LMRUCC		(1    << 18)	/* Receive UDP Checksum check */
-#define LMDRXC_LMRTCG		(1    << 17)	/* Receive TCP Checksum check */
-#define LMDRXC_LMRICG		(1    << 16)	/* Receive IP Checksum check */
-#define LMDRXC_LMRFCE		(1    <<  9)	/* Receive Flow Control Enable */
-#define LMDRXC_LMRB		(1    <<  6)	/* Receive Broadcast */
-#define LMDRXC_LMRM		(1    <<  5)	/* Receive Multicast */
-#define LMDRXC_LMRU		(1    <<  4)	/* Receive Unicast */
-#define LMDRXC_LMRERR		(1    <<  3)	/* Receive Error Frame */
-#define LMDRXC_LMRA		(1    <<  2)	/* Receive All */
-#define LMDRXC_LMRE		(1    <<  1)	/* RX Enable */
-
-/* Additional Station Address High */
-#define LMAAH_E			(1    << 31)	/* Address Enabled */
-
-
-#endif
diff --git a/arch/arm/mach-ks8695/regs-mem.h b/arch/arm/mach-ks8695/regs-mem.h
deleted file mode 100644
index 55806bc68ce3..000000000000
--- a/arch/arm/mach-ks8695/regs-mem.h
+++ /dev/null
@@ -1,89 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-mem.h
- *
- * Copyright (C) 2006 Andrew Victor
- *
- * KS8695 - Memory Controller registers and bit definitions
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef KS8695_MEM_H
-#define KS8695_MEM_H
-
-#define KS8695_MEM_OFFSET	(0xF0000 + 0x4000)
-#define KS8695_MEM_VA		(KS8695_IO_VA + KS8695_MEM_OFFSET)
-#define KS8695_MEM_PA		(KS8695_IO_PA + KS8695_MEM_OFFSET)
-
-
-/*
- * Memory Controller Registers
- */
-#define KS8695_EXTACON0		(0x00)		/* External I/O 0 Access Control */
-#define KS8695_EXTACON1		(0x04)		/* External I/O 1 Access Control */
-#define KS8695_EXTACON2		(0x08)		/* External I/O 2 Access Control */
-#define KS8695_ROMCON0		(0x10)		/* ROM/SRAM/Flash 1 Control Register */
-#define KS8695_ROMCON1		(0x14)		/* ROM/SRAM/Flash 2 Control Register */
-#define KS8695_ERGCON		(0x20)		/* External I/O and ROM/SRAM/Flash General Register */
-#define KS8695_SDCON0		(0x30)		/* SDRAM Control Register 0 */
-#define KS8695_SDCON1		(0x34)		/* SDRAM Control Register 1 */
-#define KS8695_SDGCON		(0x38)		/* SDRAM General Control */
-#define KS8695_SDBCON		(0x3c)		/* SDRAM Buffer Control */
-#define KS8695_REFTIM		(0x40)		/* SDRAM Refresh Timer */
-
-
-/* External I/O Access Control Registers */
-#define EXTACON_EBNPTR		(0x3ff << 22)		/* Last Address Pointer */
-#define EXTACON_EBBPTR		(0x3ff << 12)		/* Base Pointer */
-#define EXTACON_EBTACT		(7     <<  9)		/* Write Enable/Output Enable Active Time */
-#define EXTACON_EBTCOH		(7     <<  6)		/* Chip Select Hold Time */
-#define EXTACON_EBTACS		(7     <<  3)		/* Address Setup Time before ECSN */
-#define EXTACON_EBTCOS		(7     <<  0)		/* Chip Select Time before OEN */
-
-/* ROM/SRAM/Flash Control Register */
-#define ROMCON_RBNPTR		(0x3ff << 22)		/* Next Pointer */
-#define ROMCON_RBBPTR		(0x3ff << 12)		/* Base Pointer */
-#define ROMCON_RBTACC		(7     <<  4)		/* Access Cycle Time */
-#define ROMCON_RBTPA		(3     <<  2)		/* Page Address Access Time */
-#define ROMCON_PMC		(3     <<  0)		/* Page Mode Configuration */
-#define		PMC_NORMAL		(0 << 0)
-#define		PMC_4WORD		(1 << 0)
-#define		PMC_8WORD		(2 << 0)
-#define		PMC_16WORD		(3 << 0)
-
-/* External I/O and ROM/SRAM/Flash General Register */
-#define ERGCON_TMULT		(3 << 28)		/* Time Multiplier */
-#define ERGCON_DSX2		(3 << 20)		/* Data Width (External I/O Bank 2) */
-#define ERGCON_DSX1		(3 << 18)		/* Data Width (External I/O Bank 1) */
-#define ERGCON_DSX0		(3 << 16)		/* Data Width (External I/O Bank 0) */
-#define ERGCON_DSR1		(3 <<  2)		/* Data Width (ROM/SRAM/Flash Bank 1) */
-#define ERGCON_DSR0		(3 <<  0)		/* Data Width (ROM/SRAM/Flash Bank 0) */
-
-/* SDRAM Control Register */
-#define SDCON_DBNPTR		(0x3ff << 22)		/* Last Address Pointer */
-#define SDCON_DBBPTR		(0x3ff << 12)		/* Base Pointer */
-#define SDCON_DBCAB		(3     <<  8)		/* Column Address Bits */
-#define SDCON_DBBNUM		(1     <<  3)		/* Number of Banks */
-#define SDCON_DBDBW		(3     <<  1)		/* Data Bus Width */
-
-/* SDRAM General Control Register */
-#define SDGCON_SDTRC		(3 << 2)		/* RAS to CAS latency */
-#define SDGCON_SDCAS		(3 << 0)		/* CAS latency */
-
-/* SDRAM Buffer Control Register */
-#define SDBCON_SDESTA		(1 << 31)		/* SDRAM Engine Status */
-#define SDBCON_RBUFBDIS		(1 << 24)		/* Read Buffer Burst Enable */
-#define SDBCON_WFIFOEN		(1 << 23)		/* Write FIFO Enable */
-#define SDBCON_RBUFEN		(1 << 22)		/* Read Buffer Enable */
-#define SDBCON_FLUSHWFIFO	(1 << 21)		/* Flush Write FIFO */
-#define SDBCON_RBUFINV		(1 << 20)		/* Read Buffer Invalidate */
-#define SDBCON_SDINI		(3 << 16)		/* SDRAM Initialization Control */
-#define SDBCON_SDMODE		(0x3fff << 0)		/* SDRAM Mode Register Value Program */
-
-/* SDRAM Refresh Timer Register */
-#define REFTIM_REFTIM		(0xffff << 0)		/* Refresh Timer Value */
-
-
-#endif
diff --git a/arch/arm/mach-ks8695/regs-pci.h b/arch/arm/mach-ks8695/regs-pci.h
deleted file mode 100644
index 75a9db6edbd9..000000000000
--- a/arch/arm/mach-ks8695/regs-pci.h
+++ /dev/null
@@ -1,53 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-pci.h
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- *
- * KS8695 - PCI bridge registers and bit definitions.
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#define KS8695_PCI_OFFSET	(0xF0000 + 0x2000)
-#define KS8695_PCI_VA		(KS8695_IO_VA + KS8695_PCI_OFFSET)
-#define KS8695_PCI_PA		(KS8695_IO_PA + KS8695_PCI_OFFSET)
-
-
-#define KS8695_CRCFID		(0x000)		/* Configuration: Identification */
-#define KS8695_CRCFCS		(0x004)		/* Configuration: Command and Status */
-#define KS8695_CRCFRV		(0x008)		/* Configuration: Revision */
-#define KS8695_CRCFLT		(0x00C)		/* Configuration: Latency Timer */
-#define KS8695_CRCBMA		(0x010)		/* Configuration: Base Memory Address */
-#define KS8695_CRCSID		(0x02C)		/* Configuration: Subsystem ID */
-#define KS8695_CRCFIT		(0x03C)		/* Configuration: Interrupt */
-#define KS8695_PBCA		(0x100)		/* Bridge Configuration Address */
-#define KS8695_PBCD		(0x104)		/* Bridge Configuration Data */
-#define KS8695_PBM		(0x200)		/* Bridge Mode */
-#define KS8695_PBCS		(0x204)		/* Bridge Control and Status */
-#define KS8695_PMBA		(0x208)		/* Bridge Memory Base Address */
-#define KS8695_PMBAC		(0x20C)		/* Bridge Memory Base Address Control */
-#define KS8695_PMBAM		(0x210)		/* Bridge Memory Base Address Mask */
-#define KS8695_PMBAT		(0x214)		/* Bridge Memory Base Address Translation */
-#define KS8695_PIOBA		(0x218)		/* Bridge I/O Base Address */
-#define KS8695_PIOBAC		(0x21C)		/* Bridge I/O Base Address Control */
-#define KS8695_PIOBAM		(0x220)		/* Bridge I/O Base Address Mask */
-#define KS8695_PIOBAT		(0x224)		/* Bridge I/O Base Address Translation */
-
-
-/* Configuration: Identification */
-
-/* Configuration: Command and Status */
-
-/* Configuration: Revision */
-
-
-
-#define CFRV_GUEST		(1 << 23)
-
-#define PBCA_TYPE1		(1)
-#define PBCA_ENABLE		(1 << 31)
-
-
diff --git a/arch/arm/mach-ks8695/regs-sys.h b/arch/arm/mach-ks8695/regs-sys.h
deleted file mode 100644
index 57c20be0c129..000000000000
--- a/arch/arm/mach-ks8695/regs-sys.h
+++ /dev/null
@@ -1,34 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-sys.h
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- *
- * KS8695 - System control registers and bit definitions
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef KS8695_SYS_H
-#define KS8695_SYS_H
-
-#define KS8695_SYS_OFFSET	(0xF0000 + 0x0000)
-#define KS8695_SYS_VA		(KS8695_IO_VA + KS8695_SYS_OFFSET)
-#define KS8695_SYS_PA		(KS8695_IO_PA + KS8695_SYS_OFFSET)
-
-
-#define KS8695_SYSCFG		(0x00)		/* System Configuration Register */
-#define KS8695_CLKCON		(0x04)		/* System Clock and Bus Control Register */
-
-
-/* System Configuration Register */
-#define SYSCFG_SPRBP		(0x3ff << 16)	/* Register Bank Base Pointer */
-
-/* System Clock and Bus Control Register */
-#define CLKCON_SFMODE		(1 << 8)	/* System Fast Mode for Simulation */
-#define CLKCON_SCDC		(7 << 0)	/* System Clock Divider Select */
-
-
-#endif
diff --git a/arch/arm/mach-ks8695/regs-wan.h b/arch/arm/mach-ks8695/regs-wan.h
deleted file mode 100644
index c475bed22b8e..000000000000
--- a/arch/arm/mach-ks8695/regs-wan.h
+++ /dev/null
@@ -1,65 +0,0 @@
-/*
- * arch/arm/mach-ks8695/include/mach/regs-wan.h
- *
- * Copyright (C) 2006 Andrew Victor
- *
- * KS8695 - WAN Registers and bit definitions.
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
-
-#ifndef KS8695_WAN_H
-#define KS8695_WAN_H
-
-#define KS8695_WAN_OFFSET	(0xF0000 + 0x6000)
-#define KS8695_WAN_VA		(KS8695_IO_VA + KS8695_WAN_OFFSET)
-#define KS8695_WAN_PA		(KS8695_IO_PA + KS8695_WAN_OFFSET)
-
-
-/*
- * WAN registers
- */
-#define KS8695_WMDTXC		(0x00)		/* DMA Transmit Control */
-#define KS8695_WMDRXC		(0x04)		/* DMA Receive Control */
-#define KS8695_WMDTSC		(0x08)		/* DMA Transmit Start Command */
-#define KS8695_WMDRSC		(0x0c)		/* DMA Receive Start Command */
-#define KS8695_WTDLB		(0x10)		/* Transmit Descriptor List Base Address */
-#define KS8695_WRDLB		(0x14)		/* Receive Descriptor List Base Address */
-#define KS8695_WMAL		(0x18)		/* MAC Station Address Low */
-#define KS8695_WMAH		(0x1c)		/* MAC Station Address High */
-#define KS8695_WMAAL(n)		(0x80 + ((n)*8))	/* MAC Additional Station Address (0..15) Low */
-#define KS8695_WMAAH(n)		(0x84 + ((n)*8))	/* MAC Additional Station Address (0..15) High */
-
-
-/* DMA Transmit Control Register */
-#define WMDTXC_WMTRST		(1    << 31)	/* Soft Reset */
-#define WMDTXC_WMTBS		(0x3f << 24)	/* Transmit Burst Size */
-#define WMDTXC_WMTUCG		(1    << 18)	/* Transmit UDP Checksum Generate */
-#define WMDTXC_WMTTCG		(1    << 17)	/* Transmit TCP Checksum Generate */
-#define WMDTXC_WMTICG		(1    << 16)	/* Transmit IP Checksum Generate */
-#define WMDTXC_WMTFCE		(1    <<  9)	/* Transmit Flow Control Enable */
-#define WMDTXC_WMTLB		(1    <<  8)	/* Loopback mode */
-#define WMDTXC_WMTEP		(1    <<  2)	/* Transmit Enable Padding */
-#define WMDTXC_WMTAC		(1    <<  1)	/* Transmit Add CRC */
-#define WMDTXC_WMTE		(1    <<  0)	/* TX Enable */
-
-/* DMA Receive Control Register */
-#define WMDRXC_WMRBS		(0x3f << 24)	/* Receive Burst Size */
-#define WMDRXC_WMRUCC		(1    << 18)	/* Receive UDP Checksum check */
-#define WMDRXC_WMRTCG		(1    << 17)	/* Receive TCP Checksum check */
-#define WMDRXC_WMRICG		(1    << 16)	/* Receive IP Checksum check */
-#define WMDRXC_WMRFCE		(1    <<  9)	/* Receive Flow Control Enable */
-#define WMDRXC_WMRB		(1    <<  6)	/* Receive Broadcast */
-#define WMDRXC_WMRM		(1    <<  5)	/* Receive Multicast */
-#define WMDRXC_WMRU		(1    <<  4)	/* Receive Unicast */
-#define WMDRXC_WMRERR		(1    <<  3)	/* Receive Error Frame */
-#define WMDRXC_WMRA		(1    <<  2)	/* Receive All */
-#define WMDRXC_WMRE		(1    <<  0)	/* RX Enable */
-
-/* Additional Station Address High */
-#define WMAAH_E			(1    << 31)	/* Address Enabled */
-
-
-#endif
diff --git a/arch/arm/mach-ks8695/time.c b/arch/arm/mach-ks8695/time.c
deleted file mode 100644
index 50561eec0c32..000000000000
--- a/arch/arm/mach-ks8695/time.c
+++ /dev/null
@@ -1,159 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * arch/arm/mach-ks8695/time.c
- *
- * Copyright (C) 2006 Ben Dooks <ben@simtec.co.uk>
- * Copyright (C) 2006 Simtec Electronics
- */
-
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/irq.h>
-#include <linux/kernel.h>
-#include <linux/sched.h>
-#include <linux/io.h>
-#include <linux/clockchips.h>
-
-#include <asm/mach/time.h>
-#include <asm/system_misc.h>
-
-#include <mach/regs-irq.h>
-
-#include "generic.h"
-
-#define KS8695_TMR_OFFSET	(0xF0000 + 0xE400)
-#define KS8695_TMR_VA		(KS8695_IO_VA + KS8695_TMR_OFFSET)
-#define KS8695_TMR_PA		(KS8695_IO_PA + KS8695_TMR_OFFSET)
-
-/*
- * Timer registers
- */
-#define KS8695_TMCON		(0x00)		/* Timer Control Register */
-#define KS8695_T1TC		(0x04)		/* Timer 1 Timeout Count Register */
-#define KS8695_T0TC		(0x08)		/* Timer 0 Timeout Count Register */
-#define KS8695_T1PD		(0x0C)		/* Timer 1 Pulse Count Register */
-#define KS8695_T0PD		(0x10)		/* Timer 0 Pulse Count Register */
-
-/* Timer Control Register */
-#define TMCON_T1EN		(1 << 1)	/* Timer 1 Enable */
-#define TMCON_T0EN		(1 << 0)	/* Timer 0 Enable */
-
-/* Timer0 Timeout Counter Register */
-#define T0TC_WATCHDOG		(0xff)		/* Enable watchdog mode */
-
-static int ks8695_set_periodic(struct clock_event_device *evt)
-{
-	u32 rate = DIV_ROUND_CLOSEST(KS8695_CLOCK_RATE, HZ);
-	u32 half = DIV_ROUND_CLOSEST(rate, 2);
-	u32 tmcon;
-
-	/* Disable timer 1 */
-	tmcon = readl_relaxed(KS8695_TMR_VA + KS8695_TMCON);
-	tmcon &= ~TMCON_T1EN;
-	writel_relaxed(tmcon, KS8695_TMR_VA + KS8695_TMCON);
-
-	/* Both registers need to count down */
-	writel_relaxed(half, KS8695_TMR_VA + KS8695_T1TC);
-	writel_relaxed(half, KS8695_TMR_VA + KS8695_T1PD);
-
-	/* Re-enable timer1 */
-	tmcon |= TMCON_T1EN;
-	writel_relaxed(tmcon, KS8695_TMR_VA + KS8695_TMCON);
-	return 0;
-}
-
-static int ks8695_set_next_event(unsigned long cycles,
-				 struct clock_event_device *evt)
-
-{
-	u32 half = DIV_ROUND_CLOSEST(cycles, 2);
-	u32 tmcon;
-
-	/* Disable timer 1 */
-	tmcon = readl_relaxed(KS8695_TMR_VA + KS8695_TMCON);
-	tmcon &= ~TMCON_T1EN;
-	writel_relaxed(tmcon, KS8695_TMR_VA + KS8695_TMCON);
-
-	/* Both registers need to count down */
-	writel_relaxed(half, KS8695_TMR_VA + KS8695_T1TC);
-	writel_relaxed(half, KS8695_TMR_VA + KS8695_T1PD);
-
-	/* Re-enable timer1 */
-	tmcon |= TMCON_T1EN;
-	writel_relaxed(tmcon, KS8695_TMR_VA + KS8695_TMCON);
-
-	return 0;
-}
-
-static struct clock_event_device clockevent_ks8695 = {
-	.name			= "ks8695_t1tc",
-	/* Reasonably fast and accurate clock event */
-	.rating			= 300,
-	.features		= CLOCK_EVT_FEAT_ONESHOT |
-				  CLOCK_EVT_FEAT_PERIODIC,
-	.set_next_event		= ks8695_set_next_event,
-	.set_state_periodic	= ks8695_set_periodic,
-};
-
-/*
- * IRQ handler for the timer.
- */
-static irqreturn_t ks8695_timer_interrupt(int irq, void *dev_id)
-{
-	struct clock_event_device *evt = &clockevent_ks8695;
-
-	evt->event_handler(evt);
-	return IRQ_HANDLED;
-}
-
-static struct irqaction ks8695_timer_irq = {
-	.name		= "ks8695_tick",
-	.flags		= IRQF_TIMER,
-	.handler	= ks8695_timer_interrupt,
-};
-
-static void ks8695_timer_setup(void)
-{
-	unsigned long tmcon;
-
-	/* Disable timer 0 and 1 */
-	tmcon = readl_relaxed(KS8695_TMR_VA + KS8695_TMCON);
-	tmcon &= ~TMCON_T0EN;
-	tmcon &= ~TMCON_T1EN;
-	writel_relaxed(tmcon, KS8695_TMR_VA + KS8695_TMCON);
-
-	/*
-	 * Use timer 1 to fire IRQs on the timeline, minimum 2 cycles
-	 * (one on each counter) maximum 2*2^32, but the API will only
-	 * accept up to a 32bit full word (0xFFFFFFFFU).
-	 */
-	clockevents_config_and_register(&clockevent_ks8695,
-					KS8695_CLOCK_RATE, 2,
-					0xFFFFFFFFU);
-}
-
-void __init ks8695_timer_init(void)
-{
-	ks8695_timer_setup();
-
-	/* Enable timer interrupts */
-	setup_irq(KS8695_IRQ_TIMER1, &ks8695_timer_irq);
-}
-
-void ks8695_restart(enum reboot_mode reboot_mode, const char *cmd)
-{
-	unsigned int reg;
-
-	if (reboot_mode == REBOOT_SOFT)
-		soft_restart(0);
-
-	/* disable timer0 */
-	reg = readl_relaxed(KS8695_TMR_VA + KS8695_TMCON);
-	writel_relaxed(reg & ~TMCON_T0EN, KS8695_TMR_VA + KS8695_TMCON);
-
-	/* enable watchdog mode */
-	writel_relaxed((10 << 8) | T0TC_WATCHDOG, KS8695_TMR_VA + KS8695_T0TC);
-
-	/* re-enable timer0 */
-	writel_relaxed(reg | TMCON_T0EN, KS8695_TMR_VA + KS8695_TMCON);
-}
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index 820b60a50125..05143ec47d94 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -106,7 +106,7 @@ config CPU_ARM922T
 	help
 	  The ARM922T is a version of the ARM920T, but with smaller
 	  instruction and data caches. It is used in Altera's
-	  Excalibur XA device family and Micrel's KS8695 Centaur.
+	  Excalibur XA device family and the ARM Integrator.
 
 	  Say Y if you want support for the ARM922T processor.
 	  Otherwise, say N.
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
