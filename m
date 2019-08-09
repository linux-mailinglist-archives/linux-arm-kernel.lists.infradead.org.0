Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C50DD8840C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 22:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hS5WU2xdmxEAtNbor98/+9ws6eO19YG7GHKa29tLZNo=; b=ZHeXYlsSXaFW2Y
	5Tindsep1fyR9V4oqQrGwf/YYfDtZ9JdLbjASey82PkU0vwpQjTowvoIHRsyNcyE+7uA1vDQ4QQOr
	zaIv9vNN4jbqR7YwTNcxkc03Nt7hf/mopZOJ8LCyZR/HNtq6CKI8bFxR7ZotY0jhi0GPkFgV6T0xs
	2P7RkVTl9E8L5X4g9Eao7X8oyLNcfDASz9FtoqNFch3BHzZ1IOVbknGfIerIAcB5K4UdxAxxLV9Qb
	cJq0fFudifL3H15SB62dbovFJv+5q6EM0uHIC6U5g4AfM97df2hOUnLcfru0zhkGUNXL4BmRNc2bx
	YYsQz7xZhMZyvECrV3gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwBWG-0002DL-AH; Fri, 09 Aug 2019 20:29:48 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwBVz-00023M-Ix
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 20:29:38 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mwfj0-1iGJee1esk-00y9t0; Fri, 09 Aug 2019 22:29:18 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH 16/16] ARM: remove w90x900 platform
Date: Fri,  9 Aug 2019 22:27:44 +0200
Message-Id: <20190809202749.742267-17-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809202749.742267-1-arnd@arndb.de>
References: <20190809202749.742267-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:pprDy3CtzfFfZW0uX91aurJYE3vEFGerW8TlHYQ0t7K0D9DP7g8
 l+Q79SEf9RjNj8nUdmiCCyrIzzdwpHkbDrupIcxuv7B4Havn6JJ/52Qd0ZbTTlZSHX5qOEM
 CZAzNpV5dHxFZx4A1FLhkleCggAwDBFEJ/yEW2Z4eo7X3aBl8SkApiIrHH8Hfsm+HprC5MS
 aa89lrjUqgv3kHoecpb5w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PJLHs+iU8Zc=:oG22QZyjQnUph8QA18593Q
 4kFrWf3pgN9BPjbTt15QNgEb3IayZrd6JNUsjJOG+voWNTB2U6R0EAyXF0G0gsK3siPc2efD6
 d0IQF4Oyj254R1dKMUqhaVN7TBUMZAah/zqKS5cEI+1YMyWNhN4WI7JyJLtl5sboCkwOLaGfi
 w4ez4oueBEgugli1tizIIiNvF+jXFmKpPRyITU9X5SOKKLiyUzSr9An2+ZPKAwudG0cSPUUPV
 6f2+bcwDT6EE6+i9m/Tx4sjcoP/DKGzV4eymNpCOYpMOst9pFyF96zcJoWYjmynk/pB3gEVxm
 YdFWJjoPIztrOFJsIRE/S4NGm181DcWoAVIxng9K/lUHgMW+6P2PSWc7IRtwMc8MmJvpijPyN
 Ud4X7q16rw+YaedUabc+UXKuIPJs0GcQrs8ylkjMP0S8mKVjoHXBLQq2hERwnM+jaNkzbfAiN
 08GoshHDgkbzNW6GWCbuceXmPTs4vLOxdcyxbSHGRmUjVjAeMcwne1DPc/iJHyq6MC8xd4sOP
 jROITAxiDRUzPobbvSQOVakWHRdOClDkpNkMxzOQ0XUacVegNxiUsA4Cx+cGPKo8/w8b9Tra9
 sSyEZctMP+dHTB0X15MDw4YJ3W+5su3cS7Laojq5vmSpdO7t3AYiSpjUQspGLLvxKhS/DD341
 EfnCOrEKUBArjnl793NYsC6AbFAe0Tg2BOOvPHmdC5ngR8TcsacCZUKINh33yhMeF/lK803sS
 ePFLmTyxR+ctpnqZ4Ye0bWbhmBvK3REOalIyLw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_132932_289748_39719813 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 "Wanzongshun \(Vincent\)" <wanzongshun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This removes the old Winbond w90x900 platform, also known
as Nuvoton NUC900. Wan Zongshun originally contributed
the port and maintained it since then.

From all I can tell, this platform is no longer being used
with modern kernels, based on various indications:

- The supported chips (nuc910/950/960) are no longer marketed
  by the manufacturer

- Newer chips from the same family (nuc97x, nuc980, n329x)
  that are still marketed have Linux BSPs but those were never
  submitted for upstream inclusion.

- The last patch from the platform maintainer was in 2011.

- All patches to w90x900 platform specific files afterwards
  are cleanups that were apparently done without access to
  test hardware.

- Both the website and the email address listed in the
  MAINTAINERS have become unreachable.

Cc: "Wanzongshun (Vincent)" <wanzongshun@huawei.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 MAINTAINERS                                   |  16 -
 arch/arm/Kconfig                              |  18 -
 arch/arm/Makefile                             |   1 -
 arch/arm/configs/nuc910_defconfig             |  51 --
 arch/arm/configs/nuc950_defconfig             |  67 ---
 arch/arm/configs/nuc960_defconfig             |  57 --
 arch/arm/mach-w90x900/Kconfig                 |  50 --
 arch/arm/mach-w90x900/Makefile                |  20 -
 arch/arm/mach-w90x900/Makefile.boot           |   4 -
 arch/arm/mach-w90x900/clksel.c                |  88 ---
 arch/arm/mach-w90x900/clock.c                 | 121 ----
 arch/arm/mach-w90x900/clock.h                 |  40 --
 arch/arm/mach-w90x900/cpu.c                   | 238 --------
 arch/arm/mach-w90x900/cpu.h                   |  56 --
 arch/arm/mach-w90x900/dev.c                   | 537 ------------------
 arch/arm/mach-w90x900/gpio.c                  | 150 -----
 .../mach-w90x900/include/mach/entry-macro.S   |  26 -
 arch/arm/mach-w90x900/include/mach/hardware.h |  19 -
 arch/arm/mach-w90x900/include/mach/irqs.h     |  82 ---
 arch/arm/mach-w90x900/include/mach/map.h      | 153 -----
 arch/arm/mach-w90x900/include/mach/mfp.h      |  21 -
 .../mach-w90x900/include/mach/regs-clock.h    |  49 --
 arch/arm/mach-w90x900/include/mach/regs-irq.h |  46 --
 arch/arm/mach-w90x900/include/mach/regs-ldm.h | 248 --------
 .../mach-w90x900/include/mach/regs-serial.h   |  54 --
 .../mach-w90x900/include/mach/uncompress.h    |  43 --
 arch/arm/mach-w90x900/irq.c                   | 212 -------
 arch/arm/mach-w90x900/mach-nuc910evb.c        |  38 --
 arch/arm/mach-w90x900/mach-nuc950evb.c        |  42 --
 arch/arm/mach-w90x900/mach-nuc960evb.c        |  38 --
 arch/arm/mach-w90x900/mfp.c                   | 197 -------
 arch/arm/mach-w90x900/nuc910.c                |  58 --
 arch/arm/mach-w90x900/nuc910.h                |  17 -
 arch/arm/mach-w90x900/nuc950.c                |  52 --
 arch/arm/mach-w90x900/nuc950.h                |  17 -
 arch/arm/mach-w90x900/nuc960.c                |  50 --
 arch/arm/mach-w90x900/nuc960.h                |  17 -
 arch/arm/mach-w90x900/nuc9xx.h                |  22 -
 arch/arm/mach-w90x900/regs-ebi.h              |  29 -
 arch/arm/mach-w90x900/regs-gcr.h              |  34 --
 arch/arm/mach-w90x900/regs-timer.h            |  37 --
 arch/arm/mach-w90x900/regs-usb.h              |  31 -
 arch/arm/mach-w90x900/time.c                  | 168 ------
 43 files changed, 3314 deletions(-)
 delete mode 100644 arch/arm/configs/nuc910_defconfig
 delete mode 100644 arch/arm/configs/nuc950_defconfig
 delete mode 100644 arch/arm/configs/nuc960_defconfig
 delete mode 100644 arch/arm/mach-w90x900/Kconfig
 delete mode 100644 arch/arm/mach-w90x900/Makefile
 delete mode 100644 arch/arm/mach-w90x900/Makefile.boot
 delete mode 100644 arch/arm/mach-w90x900/clksel.c
 delete mode 100644 arch/arm/mach-w90x900/clock.c
 delete mode 100644 arch/arm/mach-w90x900/clock.h
 delete mode 100644 arch/arm/mach-w90x900/cpu.c
 delete mode 100644 arch/arm/mach-w90x900/cpu.h
 delete mode 100644 arch/arm/mach-w90x900/dev.c
 delete mode 100644 arch/arm/mach-w90x900/gpio.c
 delete mode 100644 arch/arm/mach-w90x900/include/mach/entry-macro.S
 delete mode 100644 arch/arm/mach-w90x900/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-w90x900/include/mach/irqs.h
 delete mode 100644 arch/arm/mach-w90x900/include/mach/map.h
 delete mode 100644 arch/arm/mach-w90x900/include/mach/mfp.h
 delete mode 100644 arch/arm/mach-w90x900/include/mach/regs-clock.h
 delete mode 100644 arch/arm/mach-w90x900/include/mach/regs-irq.h
 delete mode 100644 arch/arm/mach-w90x900/include/mach/regs-ldm.h
 delete mode 100644 arch/arm/mach-w90x900/include/mach/regs-serial.h
 delete mode 100644 arch/arm/mach-w90x900/include/mach/uncompress.h
 delete mode 100644 arch/arm/mach-w90x900/irq.c
 delete mode 100644 arch/arm/mach-w90x900/mach-nuc910evb.c
 delete mode 100644 arch/arm/mach-w90x900/mach-nuc950evb.c
 delete mode 100644 arch/arm/mach-w90x900/mach-nuc960evb.c
 delete mode 100644 arch/arm/mach-w90x900/mfp.c
 delete mode 100644 arch/arm/mach-w90x900/nuc910.c
 delete mode 100644 arch/arm/mach-w90x900/nuc910.h
 delete mode 100644 arch/arm/mach-w90x900/nuc950.c
 delete mode 100644 arch/arm/mach-w90x900/nuc950.h
 delete mode 100644 arch/arm/mach-w90x900/nuc960.c
 delete mode 100644 arch/arm/mach-w90x900/nuc960.h
 delete mode 100644 arch/arm/mach-w90x900/nuc9xx.h
 delete mode 100644 arch/arm/mach-w90x900/regs-ebi.h
 delete mode 100644 arch/arm/mach-w90x900/regs-gcr.h
 delete mode 100644 arch/arm/mach-w90x900/regs-timer.h
 delete mode 100644 arch/arm/mach-w90x900/regs-usb.h
 delete mode 100644 arch/arm/mach-w90x900/time.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 9ac40a896ee6..38de7f04c39f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2005,22 +2005,6 @@ F:	drivers/*/*npcm*
 F:	Documentation/devicetree/bindings/*/*npcm*
 F:	Documentation/devicetree/bindings/*/*/*npcm*
 
-ARM/NUVOTON W90X900 ARM ARCHITECTURE
-M:	Wan ZongShun <mcuos.com@gmail.com>
-L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-W:	http://www.mcuos.com
-S:	Maintained
-F:	arch/arm/mach-w90x900/
-F:	drivers/input/keyboard/w90p910_keypad.c
-F:	drivers/input/touchscreen/w90p910_ts.c
-F:	drivers/watchdog/nuc900_wdt.c
-F:	drivers/net/ethernet/nuvoton/w90p910_ether.c
-F:	drivers/mtd/nand/raw/nuc900_nand.c
-F:	drivers/rtc/rtc-nuc900.c
-F:	drivers/spi/spi-nuc900.c
-F:	drivers/usb/host/ehci-w90x900.c
-F:	drivers/video/fbdev/nuc900fb.c
-
 ARM/OPENMOKO NEO FREERUNNER (GTA02) MACHINE SUPPORT
 L:	openmoko-kernel@lists.openmoko.org (subscribers-only)
 W:	http://wiki.openmoko.org/wiki/Neo_FreeRunner
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 61deacf68e13..1597c542dc4f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -450,22 +450,6 @@ config ARCH_DOVE
 	help
 	  Support for the Marvell Dove SoC 88AP510
 
-config ARCH_W90X900
-	bool "Nuvoton W90X900 CPU"
-	select CLKDEV_LOOKUP
-	select CLKSRC_MMIO
-	select CPU_ARM926T
-	select GENERIC_CLOCKEVENTS
-	select GPIOLIB
-	help
-	  Support for Nuvoton (Winbond logic dept.) ARM9 processor,
-	  At present, the w90x900 has been renamed nuc900, regarding
-	  the ARM series product line, you can login the following
-	  link address to know more.
-
-	  <http://www.nuvoton.com/hq/enu/ProductAndSales/ProductLines/
-		ConsumerElectronicsIC/ARMMicrocontroller/ARMMicrocontroller>
-
 config ARCH_LPC32XX
 	bool "NXP LPC32XX"
 	select ARM_AMBA
@@ -822,8 +806,6 @@ source "arch/arm/plat-versatile/Kconfig"
 
 source "arch/arm/mach-vt8500/Kconfig"
 
-source "arch/arm/mach-w90x900/Kconfig"
-
 source "arch/arm/mach-zx/Kconfig"
 
 source "arch/arm/mach-zynq/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c9daa4adc6fd..04e3f2f5a6b4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -221,7 +221,6 @@ machine-$(CONFIG_ARCH_U8500)		+= ux500
 machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
 machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
 machine-$(CONFIG_ARCH_VT8500)		+= vt8500
-machine-$(CONFIG_ARCH_W90X900)		+= w90x900
 machine-$(CONFIG_ARCH_ZX)		+= zx
 machine-$(CONFIG_ARCH_ZYNQ)		+= zynq
 machine-$(CONFIG_PLAT_SPEAR)		+= spear
diff --git a/arch/arm/configs/nuc910_defconfig b/arch/arm/configs/nuc910_defconfig
deleted file mode 100644
index 63dba62c3326..000000000000
--- a/arch/arm/configs/nuc910_defconfig
+++ /dev/null
@@ -1,51 +0,0 @@
-# CONFIG_LOCALVERSION_AUTO is not set
-CONFIG_SYSVIPC=y
-CONFIG_BSD_PROCESS_ACCT=y
-CONFIG_SYSFS_DEPRECATED_V2=y
-CONFIG_RELAY=y
-CONFIG_USER_NS=y
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_KALLSYMS_EXTRA_PASS=y
-CONFIG_SLAB=y
-CONFIG_ARCH_W90X900=y
-CONFIG_PREEMPT=y
-CONFIG_AEABI=y
-CONFIG_CMDLINE="root=/dev/ram0 console=ttyS0,115200n8 rdinit=/sbin/init mem=64M"
-CONFIG_KEXEC=y
-CONFIG_FPE_NWFPE=y
-CONFIG_MTD=y
-CONFIG_MTD_BLOCK=y
-CONFIG_MTD_CFI=y
-CONFIG_MTD_CFI_AMDSTD=y
-CONFIG_MTD_PHYSMAP=y
-CONFIG_BLK_DEV_RAM=y
-CONFIG_BLK_DEV_RAM_SIZE=16384
-CONFIG_SCSI=y
-# CONFIG_SCSI_PROC_FS is not set
-CONFIG_BLK_DEV_SD=y
-# CONFIG_SCSI_LOWLEVEL is not set
-# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
-# CONFIG_INPUT_KEYBOARD is not set
-# CONFIG_INPUT_MOUSE is not set
-# CONFIG_SERIO is not set
-# CONFIG_DEVKMEM is not set
-CONFIG_SERIAL_8250=y
-CONFIG_SERIAL_8250_CONSOLE=y
-CONFIG_SERIAL_8250_NR_UARTS=1
-# CONFIG_LEGACY_PTYS is not set
-# CONFIG_HW_RANDOM is not set
-# CONFIG_HWMON is not set
-# CONFIG_VGA_CONSOLE is not set
-CONFIG_USB=y
-CONFIG_USB_MON=y
-CONFIG_USB_STORAGE=y
-# CONFIG_DNOTIFY is not set
-CONFIG_TMPFS=y
-CONFIG_TMPFS_POSIX_ACL=y
-CONFIG_ROMFS_FS=y
-CONFIG_PARTITION_ADVANCED=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-# CONFIG_ENABLE_MUST_CHECK is not set
-CONFIG_DEBUG_FS=y
-# CONFIG_CRC32 is not set
diff --git a/arch/arm/configs/nuc950_defconfig b/arch/arm/configs/nuc950_defconfig
deleted file mode 100644
index cb5a8788ebe8..000000000000
--- a/arch/arm/configs/nuc950_defconfig
+++ /dev/null
@@ -1,67 +0,0 @@
-# CONFIG_LOCALVERSION_AUTO is not set
-CONFIG_SYSVIPC=y
-CONFIG_BSD_PROCESS_ACCT=y
-CONFIG_SYSFS_DEPRECATED_V2=y
-CONFIG_RELAY=y
-CONFIG_USER_NS=y
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_KALLSYMS_EXTRA_PASS=y
-CONFIG_SLAB=y
-CONFIG_ARCH_W90X900=y
-# CONFIG_MACH_W90P910EVB is not set
-CONFIG_MACH_W90P950EVB=y
-CONFIG_NO_HZ=y
-CONFIG_HIGH_RES_TIMERS=y
-CONFIG_PREEMPT=y
-CONFIG_AEABI=y
-CONFIG_CMDLINE="root=/dev/ram0 console=ttyS0,115200n8 rdinit=/sbin/init mem=64M"
-CONFIG_KEXEC=y
-CONFIG_FPE_NWFPE=y
-CONFIG_BINFMT_AOUT=y
-CONFIG_BINFMT_MISC=y
-CONFIG_MTD=y
-CONFIG_MTD_BLOCK=y
-CONFIG_MTD_CFI=y
-CONFIG_MTD_CFI_AMDSTD=y
-CONFIG_MTD_PHYSMAP=y
-CONFIG_BLK_DEV_RAM=y
-CONFIG_BLK_DEV_RAM_SIZE=16384
-CONFIG_SCSI=y
-# CONFIG_SCSI_PROC_FS is not set
-CONFIG_BLK_DEV_SD=y
-# CONFIG_SCSI_LOWLEVEL is not set
-# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
-# CONFIG_INPUT_KEYBOARD is not set
-# CONFIG_INPUT_MOUSE is not set
-# CONFIG_SERIO is not set
-# CONFIG_DEVKMEM is not set
-CONFIG_SERIAL_8250=y
-CONFIG_SERIAL_8250_CONSOLE=y
-CONFIG_SERIAL_8250_NR_UARTS=1
-# CONFIG_LEGACY_PTYS is not set
-# CONFIG_HW_RANDOM is not set
-# CONFIG_HWMON is not set
-CONFIG_FB=y
-CONFIG_FB_NUC900=y
-CONFIG_GPM1040A0_320X240=y
-CONFIG_FB_NUC900_DEBUG=y
-# CONFIG_VGA_CONSOLE is not set
-CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=y
-CONFIG_FONTS=y
-CONFIG_FONT_8x16=y
-CONFIG_LOGO=y
-# CONFIG_LOGO_LINUX_MONO is not set
-# CONFIG_LOGO_LINUX_VGA16 is not set
-CONFIG_USB=y
-CONFIG_USB_MON=y
-CONFIG_USB_STORAGE=y
-# CONFIG_DNOTIFY is not set
-CONFIG_TMPFS=y
-CONFIG_TMPFS_POSIX_ACL=y
-CONFIG_ROMFS_FS=y
-CONFIG_PARTITION_ADVANCED=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-# CONFIG_ENABLE_MUST_CHECK is not set
-CONFIG_DEBUG_FS=y
diff --git a/arch/arm/configs/nuc960_defconfig b/arch/arm/configs/nuc960_defconfig
deleted file mode 100644
index f7af84e23a05..000000000000
--- a/arch/arm/configs/nuc960_defconfig
+++ /dev/null
@@ -1,57 +0,0 @@
-# CONFIG_LOCALVERSION_AUTO is not set
-CONFIG_SYSVIPC=y
-CONFIG_BSD_PROCESS_ACCT=y
-CONFIG_SYSFS_DEPRECATED_V2=y
-CONFIG_RELAY=y
-CONFIG_USER_NS=y
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_KALLSYMS_EXTRA_PASS=y
-CONFIG_SLAB=y
-CONFIG_ARCH_W90X900=y
-# CONFIG_MACH_W90P910EVB is not set
-CONFIG_MACH_W90N960EVB=y
-CONFIG_NO_HZ=y
-CONFIG_HIGH_RES_TIMERS=y
-CONFIG_PREEMPT=y
-CONFIG_AEABI=y
-CONFIG_CMDLINE="root=/dev/ram0 console=ttyS0,115200n8 rdinit=/sbin/init mem=64M"
-CONFIG_KEXEC=y
-CONFIG_FPE_NWFPE=y
-CONFIG_BINFMT_AOUT=y
-CONFIG_BINFMT_MISC=y
-CONFIG_MTD=y
-CONFIG_MTD_BLOCK=y
-CONFIG_MTD_CFI=y
-CONFIG_MTD_CFI_AMDSTD=y
-CONFIG_MTD_PHYSMAP=y
-CONFIG_BLK_DEV_RAM=y
-CONFIG_BLK_DEV_RAM_SIZE=16384
-CONFIG_SCSI=y
-# CONFIG_SCSI_PROC_FS is not set
-CONFIG_BLK_DEV_SD=y
-# CONFIG_SCSI_LOWLEVEL is not set
-# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
-# CONFIG_INPUT_KEYBOARD is not set
-# CONFIG_INPUT_MOUSE is not set
-# CONFIG_SERIO is not set
-# CONFIG_DEVKMEM is not set
-CONFIG_SERIAL_8250=y
-CONFIG_SERIAL_8250_CONSOLE=y
-CONFIG_SERIAL_8250_NR_UARTS=1
-# CONFIG_LEGACY_PTYS is not set
-# CONFIG_HW_RANDOM is not set
-# CONFIG_HWMON is not set
-# CONFIG_VGA_CONSOLE is not set
-CONFIG_USB=y
-CONFIG_USB_MON=y
-CONFIG_USB_STORAGE=y
-# CONFIG_DNOTIFY is not set
-CONFIG_TMPFS=y
-CONFIG_TMPFS_POSIX_ACL=y
-CONFIG_ROMFS_FS=y
-CONFIG_PARTITION_ADVANCED=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-# CONFIG_ENABLE_MUST_CHECK is not set
-CONFIG_DEBUG_FS=y
-# CONFIG_CRC32 is not set
diff --git a/arch/arm/mach-w90x900/Kconfig b/arch/arm/mach-w90x900/Kconfig
deleted file mode 100644
index b16ffc03bbe5..000000000000
--- a/arch/arm/mach-w90x900/Kconfig
+++ /dev/null
@@ -1,50 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-if ARCH_W90X900
-
-config CPU_W90P910
-	bool
-	help
-	  Support for W90P910 of Nuvoton W90X900 CPUs.
-
-config CPU_NUC950
-	bool
-	help
-	  Support for NUCP950 of Nuvoton NUC900 CPUs.
-
-config CPU_NUC960
-	bool
-	help
-	  Support for NUCP960 of Nuvoton NUC900 CPUs.
-
-menu "W90P910 Machines"
-
-config MACH_W90P910EVB
-	bool "Nuvoton W90P910 Evaluation Board"
-	default y
-	select CPU_W90P910
-	help
-	   Say Y here if you are using the Nuvoton W90P910EVB
-
-endmenu
-
-menu "NUC950 Machines"
-
-config MACH_W90P950EVB
-	bool "Nuvoton NUC950 Evaluation Board"
-	select CPU_NUC950
-	help
-	   Say Y here if you are using the Nuvoton NUC950EVB
-
-endmenu
-
-menu "NUC960 Machines"
-
-config MACH_W90N960EVB
-	bool "Nuvoton NUC960 Evaluation Board"
-	select CPU_NUC960
-	help
-	   Say Y here if you are using the Nuvoton NUC960EVB
-
-endmenu
-
-endif
diff --git a/arch/arm/mach-w90x900/Makefile b/arch/arm/mach-w90x900/Makefile
deleted file mode 100644
index 33b5bf53990f..000000000000
--- a/arch/arm/mach-w90x900/Makefile
+++ /dev/null
@@ -1,20 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-#
-# Makefile for the linux kernel.
-#
-
-# Object file lists.
-
-obj-y				:= irq.o time.o mfp.o gpio.o clock.o
-obj-y				+= clksel.o dev.o cpu.o
-# W90X900 CPU support files
-
-obj-$(CONFIG_CPU_W90P910)	+= nuc910.o
-obj-$(CONFIG_CPU_NUC950)	+= nuc950.o
-obj-$(CONFIG_CPU_NUC960)	+= nuc960.o
-
-# machine support
-
-obj-$(CONFIG_MACH_W90P910EVB)	+= mach-nuc910evb.o
-obj-$(CONFIG_MACH_W90P950EVB)	+= mach-nuc950evb.o
-obj-$(CONFIG_MACH_W90N960EVB)	+= mach-nuc960evb.o
diff --git a/arch/arm/mach-w90x900/Makefile.boot b/arch/arm/mach-w90x900/Makefile.boot
deleted file mode 100644
index 07d1b3b23ac0..000000000000
--- a/arch/arm/mach-w90x900/Makefile.boot
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-zreladdr-y	+= 0x00008000
-params_phys-y	:= 0x00000100
-
diff --git a/arch/arm/mach-w90x900/clksel.c b/arch/arm/mach-w90x900/clksel.c
deleted file mode 100644
index b50577a5a840..000000000000
--- a/arch/arm/mach-w90x900/clksel.c
+++ /dev/null
@@ -1,88 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/clksel.c
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/device.h>
-#include <linux/list.h>
-#include <linux/errno.h>
-#include <linux/err.h>
-#include <linux/string.h>
-#include <linux/clk.h>
-#include <linux/mutex.h>
-#include <linux/io.h>
-
-#include <mach/hardware.h>
-#include <mach/regs-clock.h>
-
-#define PLL0		0x00
-#define PLL1		0x01
-#define OTHER		0x02
-#define EXT		0x03
-#define MSOFFSET	0x0C
-#define ATAOFFSET	0x0a
-#define LCDOFFSET	0x06
-#define AUDOFFSET	0x04
-#define CPUOFFSET	0x00
-
-static DEFINE_MUTEX(clksel_sem);
-
-static void clock_source_select(const char *dev_id, unsigned int clkval)
-{
-	unsigned int clksel, offset;
-
-	clksel = __raw_readl(REG_CLKSEL);
-
-	if (strcmp(dev_id, "nuc900-ms") == 0)
-		offset = MSOFFSET;
-	else if (strcmp(dev_id, "nuc900-atapi") == 0)
-		offset = ATAOFFSET;
-	else if (strcmp(dev_id, "nuc900-lcd") == 0)
-		offset = LCDOFFSET;
-	else if (strcmp(dev_id, "nuc900-ac97") == 0)
-		offset = AUDOFFSET;
-	else
-		offset = CPUOFFSET;
-
-	clksel &= ~(0x03 << offset);
-	clksel |= (clkval << offset);
-
-	__raw_writel(clksel, REG_CLKSEL);
-}
-
-void nuc900_clock_source(struct device *dev, unsigned char *src)
-{
-	unsigned int clkval;
-	const char *dev_id;
-
-	BUG_ON(!src);
-	clkval = 0;
-
-	mutex_lock(&clksel_sem);
-
-	if (dev)
-		dev_id = dev_name(dev);
-	else
-		dev_id = "cpufreq";
-
-	if (strcmp(src, "pll0") == 0)
-		clkval = PLL0;
-	else if (strcmp(src, "pll1") == 0)
-		clkval = PLL1;
-	else if (strcmp(src, "ext") == 0)
-		clkval = EXT;
-	else if (strcmp(src, "oth") == 0)
-		clkval = OTHER;
-
-	clock_source_select(dev_id, clkval);
-
-	mutex_unlock(&clksel_sem);
-}
-EXPORT_SYMBOL(nuc900_clock_source);
-
diff --git a/arch/arm/mach-w90x900/clock.c b/arch/arm/mach-w90x900/clock.c
deleted file mode 100644
index df55aa8ce5ff..000000000000
--- a/arch/arm/mach-w90x900/clock.c
+++ /dev/null
@@ -1,121 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/clock.c
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/list.h>
-#include <linux/errno.h>
-#include <linux/err.h>
-#include <linux/string.h>
-#include <linux/clk.h>
-#include <linux/spinlock.h>
-#include <linux/platform_device.h>
-#include <linux/io.h>
-
-#include <mach/hardware.h>
-
-#include "clock.h"
-
-#define SUBCLK 0x24
-
-static DEFINE_SPINLOCK(clocks_lock);
-
-int clk_enable(struct clk *clk)
-{
-	unsigned long flags;
-
-	spin_lock_irqsave(&clocks_lock, flags);
-	if (clk->enabled++ == 0)
-		(clk->enable)(clk, 1);
-	spin_unlock_irqrestore(&clocks_lock, flags);
-
-	return 0;
-}
-EXPORT_SYMBOL(clk_enable);
-
-void clk_disable(struct clk *clk)
-{
-	unsigned long flags;
-
-	if (!clk)
-		return;
-
-	WARN_ON(clk->enabled == 0);
-
-	spin_lock_irqsave(&clocks_lock, flags);
-	if (--clk->enabled == 0)
-		(clk->enable)(clk, 0);
-	spin_unlock_irqrestore(&clocks_lock, flags);
-}
-EXPORT_SYMBOL(clk_disable);
-
-unsigned long clk_get_rate(struct clk *clk)
-{
-	return 15000000;
-}
-EXPORT_SYMBOL(clk_get_rate);
-
-void nuc900_clk_enable(struct clk *clk, int enable)
-{
-	unsigned int clocks = clk->cken;
-	unsigned long clken;
-
-	clken = __raw_readl(W90X900_VA_CLKPWR);
-
-	if (enable)
-		clken |= clocks;
-	else
-		clken &= ~clocks;
-
-	__raw_writel(clken, W90X900_VA_CLKPWR);
-}
-
-void nuc900_subclk_enable(struct clk *clk, int enable)
-{
-	unsigned int clocks = clk->cken;
-	unsigned long clken;
-
-	clken = __raw_readl(W90X900_VA_CLKPWR + SUBCLK);
-
-	if (enable)
-		clken |= clocks;
-	else
-		clken &= ~clocks;
-
-	__raw_writel(clken, W90X900_VA_CLKPWR + SUBCLK);
-}
-
-/* dummy functions, should not be called */
-long clk_round_rate(struct clk *clk, unsigned long rate)
-{
-	WARN_ON(clk);
-	return 0;
-}
-EXPORT_SYMBOL(clk_round_rate);
-
-int clk_set_rate(struct clk *clk, unsigned long rate)
-{
-	WARN_ON(clk);
-	return 0;
-}
-EXPORT_SYMBOL(clk_set_rate);
-
-int clk_set_parent(struct clk *clk, struct clk *parent)
-{
-	WARN_ON(clk);
-	return 0;
-}
-EXPORT_SYMBOL(clk_set_parent);
-
-struct clk *clk_get_parent(struct clk *clk)
-{
-	WARN_ON(clk);
-	return NULL;
-}
-EXPORT_SYMBOL(clk_get_parent);
diff --git a/arch/arm/mach-w90x900/clock.h b/arch/arm/mach-w90x900/clock.h
deleted file mode 100644
index e81c369430b3..000000000000
--- a/arch/arm/mach-w90x900/clock.h
+++ /dev/null
@@ -1,40 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * linux/arch/arm/mach-w90x900/clock.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/clkdev.h>
-
-void nuc900_clk_enable(struct clk *clk, int enable);
-void nuc900_subclk_enable(struct clk *clk, int enable);
-
-struct clk {
-	unsigned long		cken;
-	unsigned int		enabled;
-	void			(*enable)(struct clk *, int enable);
-};
-
-#define DEFINE_CLK(_name, _ctrlbit)			\
-struct clk clk_##_name = {				\
-		.enable	= nuc900_clk_enable,		\
-		.cken	= (1 << _ctrlbit),		\
-	}
-
-#define DEFINE_SUBCLK(_name, _ctrlbit)			\
-struct clk clk_##_name = {				\
-		.enable	= nuc900_subclk_enable,	\
-		.cken	= (1 << _ctrlbit),		\
-	}
-
-
-#define DEF_CLKLOOK(_clk, _devname, _conname)		\
-	{						\
-		.clk		= _clk,			\
-		.dev_id		= _devname,		\
-		.con_id		= _conname,		\
-	}
-
diff --git a/arch/arm/mach-w90x900/cpu.c b/arch/arm/mach-w90x900/cpu.c
deleted file mode 100644
index aeaafc2ebb01..000000000000
--- a/arch/arm/mach-w90x900/cpu.c
+++ /dev/null
@@ -1,238 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/cpu.c
- *
- * Copyright (c) 2009 Nuvoton corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * NUC900 series cpu common support
- */
-
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/interrupt.h>
-#include <linux/list.h>
-#include <linux/timer.h>
-#include <linux/init.h>
-#include <linux/platform_device.h>
-#include <linux/io.h>
-#include <linux/serial_8250.h>
-#include <linux/delay.h>
-
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-#include <asm/mach/irq.h>
-#include <asm/irq.h>
-#include <asm/system_misc.h>
-
-#include <mach/hardware.h>
-#include <mach/regs-serial.h>
-#include <mach/regs-clock.h>
-#include "regs-ebi.h"
-#include "regs-timer.h"
-
-#include "cpu.h"
-#include "clock.h"
-#include "nuc9xx.h"
-
-/* Initial IO mappings */
-
-static struct map_desc nuc900_iodesc[] __initdata = {
-	IODESC_ENT(IRQ),
-	IODESC_ENT(GCR),
-	IODESC_ENT(UART),
-	IODESC_ENT(TIMER),
-	IODESC_ENT(EBI),
-	IODESC_ENT(GPIO),
-};
-
-/* Initial clock declarations. */
-static DEFINE_CLK(lcd, 0);
-static DEFINE_CLK(audio, 1);
-static DEFINE_CLK(fmi, 4);
-static DEFINE_SUBCLK(ms, 0);
-static DEFINE_SUBCLK(sd, 1);
-static DEFINE_CLK(dmac, 5);
-static DEFINE_CLK(atapi, 6);
-static DEFINE_CLK(emc, 7);
-static DEFINE_SUBCLK(rmii, 2);
-static DEFINE_CLK(usbd, 8);
-static DEFINE_CLK(usbh, 9);
-static DEFINE_CLK(g2d, 10);
-static DEFINE_CLK(pwm, 18);
-static DEFINE_CLK(ps2, 24);
-static DEFINE_CLK(kpi, 25);
-static DEFINE_CLK(wdt, 26);
-static DEFINE_CLK(gdma, 27);
-static DEFINE_CLK(adc, 28);
-static DEFINE_CLK(usi, 29);
-static DEFINE_CLK(ext, 0);
-static DEFINE_CLK(timer0, 19);
-static DEFINE_CLK(timer1, 20);
-static DEFINE_CLK(timer2, 21);
-static DEFINE_CLK(timer3, 22);
-static DEFINE_CLK(timer4, 23);
-
-static struct clk_lookup nuc900_clkregs[] = {
-	DEF_CLKLOOK(&clk_lcd, "nuc900-lcd", NULL),
-	DEF_CLKLOOK(&clk_audio, "nuc900-ac97", NULL),
-	DEF_CLKLOOK(&clk_fmi, "nuc900-fmi", NULL),
-	DEF_CLKLOOK(&clk_ms, "nuc900-fmi", "MS"),
-	DEF_CLKLOOK(&clk_sd, "nuc900-fmi", "SD"),
-	DEF_CLKLOOK(&clk_dmac, "nuc900-dmac", NULL),
-	DEF_CLKLOOK(&clk_atapi, "nuc900-atapi", NULL),
-	DEF_CLKLOOK(&clk_emc, "nuc900-emc", NULL),
-	DEF_CLKLOOK(&clk_rmii, "nuc900-emc", "RMII"),
-	DEF_CLKLOOK(&clk_usbd, "nuc900-usbd", NULL),
-	DEF_CLKLOOK(&clk_usbh, "nuc900-usbh", NULL),
-	DEF_CLKLOOK(&clk_g2d, "nuc900-g2d", NULL),
-	DEF_CLKLOOK(&clk_pwm, "nuc900-pwm", NULL),
-	DEF_CLKLOOK(&clk_ps2, "nuc900-ps2", NULL),
-	DEF_CLKLOOK(&clk_kpi, "nuc900-kpi", NULL),
-	DEF_CLKLOOK(&clk_wdt, "nuc900-wdt", NULL),
-	DEF_CLKLOOK(&clk_gdma, "nuc900-gdma", NULL),
-	DEF_CLKLOOK(&clk_adc, "nuc900-ts", NULL),
-	DEF_CLKLOOK(&clk_usi, "nuc900-spi", NULL),
-	DEF_CLKLOOK(&clk_ext, NULL, "ext"),
-	DEF_CLKLOOK(&clk_timer0, NULL, "timer0"),
-	DEF_CLKLOOK(&clk_timer1, NULL, "timer1"),
-	DEF_CLKLOOK(&clk_timer2, NULL, "timer2"),
-	DEF_CLKLOOK(&clk_timer3, NULL, "timer3"),
-	DEF_CLKLOOK(&clk_timer4, NULL, "timer4"),
-};
-
-/* Initial serial platform data */
-
-struct plat_serial8250_port nuc900_uart_data[] = {
-	NUC900_8250PORT(UART0),
-	{},
-};
-
-struct platform_device nuc900_serial_device = {
-	.name			= "serial8250",
-	.id			= PLAT8250_DEV_PLATFORM,
-	.dev			= {
-		.platform_data	= nuc900_uart_data,
-	},
-};
-
-/*Set NUC900 series cpu frequence*/
-static int __init nuc900_set_clkval(unsigned int cpufreq)
-{
-	unsigned int pllclk, ahbclk, apbclk, val;
-
-	pllclk = 0;
-	ahbclk = 0;
-	apbclk = 0;
-
-	switch (cpufreq) {
-	case 66:
-		pllclk = PLL_66MHZ;
-		ahbclk = AHB_CPUCLK_1_1;
-		apbclk = APB_AHB_1_2;
-		break;
-
-	case 100:
-		pllclk = PLL_100MHZ;
-		ahbclk = AHB_CPUCLK_1_1;
-		apbclk = APB_AHB_1_2;
-		break;
-
-	case 120:
-		pllclk = PLL_120MHZ;
-		ahbclk = AHB_CPUCLK_1_2;
-		apbclk = APB_AHB_1_2;
-		break;
-
-	case 166:
-		pllclk = PLL_166MHZ;
-		ahbclk = AHB_CPUCLK_1_2;
-		apbclk = APB_AHB_1_2;
-		break;
-
-	case 200:
-		pllclk = PLL_200MHZ;
-		ahbclk = AHB_CPUCLK_1_2;
-		apbclk = APB_AHB_1_2;
-		break;
-	}
-
-	__raw_writel(pllclk, REG_PLLCON0);
-
-	val = __raw_readl(REG_CLKDIV);
-	val &= ~(0x03 << 24 | 0x03 << 26);
-	val |= (ahbclk << 24 | apbclk << 26);
-	__raw_writel(val, REG_CLKDIV);
-
-	return 	0;
-}
-static int __init nuc900_set_cpufreq(char *str)
-{
-	unsigned long cpufreq, val;
-
-	if (!*str)
-		return 0;
-
-	if (kstrtoul(str, 0, &cpufreq))
-		return 0;
-
-	nuc900_clock_source(NULL, "ext");
-
-	nuc900_set_clkval(cpufreq);
-
-	mdelay(1);
-
-	val = __raw_readl(REG_CKSKEW);
-	val &= ~0xff;
-	val |= DEFAULTSKEW;
-	__raw_writel(val, REG_CKSKEW);
-
-	nuc900_clock_source(NULL, "pll0");
-
-	return 1;
-}
-
-__setup("cpufreq=", nuc900_set_cpufreq);
-
-/*Init NUC900 evb io*/
-
-void __init nuc900_map_io(struct map_desc *mach_desc, int mach_size)
-{
-	unsigned long idcode = 0x0;
-
-	iotable_init(mach_desc, mach_size);
-	iotable_init(nuc900_iodesc, ARRAY_SIZE(nuc900_iodesc));
-
-	idcode = __raw_readl(NUC900PDID);
-	if (idcode == NUC910_CPUID)
-		printk(KERN_INFO "CPU type 0x%08lx is NUC910\n", idcode);
-	else if (idcode == NUC920_CPUID)
-		printk(KERN_INFO "CPU type 0x%08lx is NUC920\n", idcode);
-	else if (idcode == NUC950_CPUID)
-		printk(KERN_INFO "CPU type 0x%08lx is NUC950\n", idcode);
-	else if (idcode == NUC960_CPUID)
-		printk(KERN_INFO "CPU type 0x%08lx is NUC960\n", idcode);
-}
-
-/*Init NUC900 clock*/
-
-void __init nuc900_init_clocks(void)
-{
-	clkdev_add_table(nuc900_clkregs, ARRAY_SIZE(nuc900_clkregs));
-}
-
-#define	WTCR	(TMR_BA + 0x1C)
-#define	WTCLK	(1 << 10)
-#define	WTE	(1 << 7)
-#define	WTRE	(1 << 1)
-
-void nuc9xx_restart(enum reboot_mode mode, const char *cmd)
-{
-	if (mode == REBOOT_SOFT) {
-		/* Jump into ROM at address 0 */
-		soft_restart(0);
-	} else {
-		__raw_writel(WTE | WTRE | WTCLK, WTCR);
-	}
-}
diff --git a/arch/arm/mach-w90x900/cpu.h b/arch/arm/mach-w90x900/cpu.h
deleted file mode 100644
index a56f36d04bac..000000000000
--- a/arch/arm/mach-w90x900/cpu.h
+++ /dev/null
@@ -1,56 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/cpu.h
- *
- * Based on linux/include/asm-arm/plat-s3c24xx/cpu.h by Ben Dooks
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- * All rights reserved.
- *
- * Header file for NUC900 CPU support
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#define IODESC_ENT(y)                                  \
-{                                                      \
-       .virtual = (unsigned long)W90X900_VA_##y,       \
-       .pfn     = __phys_to_pfn(W90X900_PA_##y),       \
-       .length  = W90X900_SZ_##y,                      \
-       .type    = MT_DEVICE,                           \
-}
-
-#define NUC900_8250PORT(name)					\
-{								\
-	.membase	= name##_BA,				\
-	.mapbase	= name##_PA,				\
-	.irq		= IRQ_##name,				\
-	.uartclk	= 11313600,				\
-	.regshift	= 2,					\
-	.iotype		= UPIO_MEM,				\
-	.flags		= UPF_BOOT_AUTOCONF | UPF_SKIP_TEST,	\
-}
-
-/*Cpu identifier register*/
-
-#define NUC900PDID	W90X900_VA_GCR
-#define NUC910_CPUID	0x02900910
-#define NUC920_CPUID	0x02900920
-#define NUC950_CPUID	0x02900950
-#define NUC960_CPUID	0x02900960
-
-/* extern file from cpu.c */
-
-extern void nuc900_clock_source(struct device *dev, unsigned char *src);
-extern void nuc900_init_clocks(void);
-extern void nuc900_map_io(struct map_desc *mach_desc, int mach_size);
-extern void nuc900_board_init(struct platform_device **device, int size);
-
-/* for either public between 910 and 920, or between 920 and 950 */
-
-extern struct platform_device nuc900_serial_device;
-extern struct platform_device nuc900_device_fmi;
-extern struct platform_device nuc900_device_kpi;
-extern struct platform_device nuc900_device_rtc;
-extern struct platform_device nuc900_device_ts;
-extern struct platform_device nuc900_device_lcd;
diff --git a/arch/arm/mach-w90x900/dev.c b/arch/arm/mach-w90x900/dev.c
deleted file mode 100644
index ce5fe400cb99..000000000000
--- a/arch/arm/mach-w90x900/dev.c
+++ /dev/null
@@ -1,537 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/dev.c
- *
- * Copyright (C) 2009 Nuvoton corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/interrupt.h>
-#include <linux/list.h>
-#include <linux/timer.h>
-#include <linux/init.h>
-#include <linux/platform_device.h>
-#include <linux/slab.h>
-#include <linux/cpu.h>
-
-#include <linux/mtd/physmap.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/partitions.h>
-
-#include <linux/spi/spi.h>
-#include <linux/spi/flash.h>
-
-#include <asm/system_misc.h>
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-#include <asm/mach/irq.h>
-#include <asm/mach-types.h>
-
-#include <mach/regs-serial.h>
-#include <linux/platform_data/spi-nuc900.h>
-#include <mach/map.h>
-#include <linux/platform_data/video-nuc900fb.h>
-#include <mach/regs-ldm.h>
-#include <linux/platform_data/keypad-w90p910.h>
-
-#include "cpu.h"
-
-/*NUC900 evb norflash driver data */
-
-#define NUC900_FLASH_BASE	0xA0000000
-#define NUC900_FLASH_SIZE	0x400000
-#define SPIOFFSET		0x200
-#define SPIOREG_SIZE		0x100
-
-static struct mtd_partition nuc900_flash_partitions[] = {
-	{
-		.name	=	"NOR Partition 1 for kernel (960K)",
-		.size	=	0xF0000,
-		.offset	=	0x10000,
-	},
-	{
-		.name	=	"NOR Partition 2 for image (1M)",
-		.size	=	0x100000,
-		.offset	=	0x100000,
-	},
-	{
-		.name	=	"NOR Partition 3 for user (2M)",
-		.size	=	0x200000,
-		.offset	=	0x00200000,
-	}
-};
-
-static struct physmap_flash_data nuc900_flash_data = {
-	.width		=	2,
-	.parts		=	nuc900_flash_partitions,
-	.nr_parts	=	ARRAY_SIZE(nuc900_flash_partitions),
-};
-
-static struct resource nuc900_flash_resources[] = {
-	{
-		.start	=	NUC900_FLASH_BASE,
-		.end	=	NUC900_FLASH_BASE + NUC900_FLASH_SIZE - 1,
-		.flags	=	IORESOURCE_MEM,
-	}
-};
-
-static struct platform_device nuc900_flash_device = {
-	.name		=	"physmap-flash",
-	.id		=	0,
-	.dev		= {
-				.platform_data = &nuc900_flash_data,
-			},
-	.resource	=	nuc900_flash_resources,
-	.num_resources	=	ARRAY_SIZE(nuc900_flash_resources),
-};
-
-/* USB EHCI Host Controller */
-
-static struct resource nuc900_usb_ehci_resource[] = {
-	[0] = {
-		.start = W90X900_PA_USBEHCIHOST,
-		.end   = W90X900_PA_USBEHCIHOST + W90X900_SZ_USBEHCIHOST - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_USBH,
-		.end   = IRQ_USBH,
-		.flags = IORESOURCE_IRQ,
-	}
-};
-
-static u64 nuc900_device_usb_ehci_dmamask = 0xffffffffUL;
-
-static struct platform_device nuc900_device_usb_ehci = {
-	.name		  = "nuc900-ehci",
-	.id		  = -1,
-	.num_resources	  = ARRAY_SIZE(nuc900_usb_ehci_resource),
-	.resource	  = nuc900_usb_ehci_resource,
-	.dev              = {
-		.dma_mask = &nuc900_device_usb_ehci_dmamask,
-		.coherent_dma_mask = 0xffffffffUL
-	}
-};
-
-/* USB OHCI Host Controller */
-
-static struct resource nuc900_usb_ohci_resource[] = {
-	[0] = {
-		.start = W90X900_PA_USBOHCIHOST,
-		.end   = W90X900_PA_USBOHCIHOST + W90X900_SZ_USBOHCIHOST - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_USBH,
-		.end   = IRQ_USBH,
-		.flags = IORESOURCE_IRQ,
-	}
-};
-
-static u64 nuc900_device_usb_ohci_dmamask = 0xffffffffUL;
-static struct platform_device nuc900_device_usb_ohci = {
-	.name		  = "nuc900-ohci",
-	.id		  = -1,
-	.num_resources	  = ARRAY_SIZE(nuc900_usb_ohci_resource),
-	.resource	  = nuc900_usb_ohci_resource,
-	.dev              = {
-		.dma_mask = &nuc900_device_usb_ohci_dmamask,
-		.coherent_dma_mask = 0xffffffffUL
-	}
-};
-
-/* USB Device (Gadget)*/
-
-static struct resource nuc900_usbgadget_resource[] = {
-	[0] = {
-		.start = W90X900_PA_USBDEV,
-		.end   = W90X900_PA_USBDEV + W90X900_SZ_USBDEV - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_USBD,
-		.end   = IRQ_USBD,
-		.flags = IORESOURCE_IRQ,
-	}
-};
-
-static struct platform_device nuc900_device_usbgadget = {
-	.name		= "nuc900-usbgadget",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(nuc900_usbgadget_resource),
-	.resource	= nuc900_usbgadget_resource,
-};
-
-/* MAC device */
-
-static struct resource nuc900_emc_resource[] = {
-	[0] = {
-		.start = W90X900_PA_EMC,
-		.end   = W90X900_PA_EMC + W90X900_SZ_EMC - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_EMCTX,
-		.end   = IRQ_EMCTX,
-		.flags = IORESOURCE_IRQ,
-	},
-	[2] = {
-		.start = IRQ_EMCRX,
-		.end   = IRQ_EMCRX,
-		.flags = IORESOURCE_IRQ,
-	}
-};
-
-static u64 nuc900_device_emc_dmamask = 0xffffffffUL;
-static struct platform_device nuc900_device_emc = {
-	.name		= "nuc900-emc",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(nuc900_emc_resource),
-	.resource	= nuc900_emc_resource,
-	.dev              = {
-		.dma_mask = &nuc900_device_emc_dmamask,
-		.coherent_dma_mask = 0xffffffffUL
-	}
-};
-
-/* SPI device */
-
-static struct nuc900_spi_info nuc900_spiflash_data = {
-	.num_cs		= 1,
-	.lsb		= 0,
-	.txneg		= 1,
-	.rxneg		= 0,
-	.divider	= 24,
-	.sleep		= 0,
-	.txnum		= 0,
-	.txbitlen	= 8,
-	.bus_num	= 0,
-};
-
-static struct resource nuc900_spi_resource[] = {
-	[0] = {
-		.start = W90X900_PA_I2C + SPIOFFSET,
-		.end   = W90X900_PA_I2C + SPIOFFSET + SPIOREG_SIZE - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_SSP,
-		.end   = IRQ_SSP,
-		.flags = IORESOURCE_IRQ,
-	}
-};
-
-static struct platform_device nuc900_device_spi = {
-	.name		= "nuc900-spi",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(nuc900_spi_resource),
-	.resource	= nuc900_spi_resource,
-	.dev		= {
-				.platform_data = &nuc900_spiflash_data,
-			}
-};
-
-/* spi device, spi flash info */
-
-static struct mtd_partition nuc900_spi_flash_partitions[] = {
-	{
-		.name = "bootloader(spi)",
-		.size = 0x0100000,
-		.offset = 0,
-	},
-};
-
-static struct flash_platform_data nuc900_spi_flash_data = {
-	.name = "m25p80",
-	.parts =  nuc900_spi_flash_partitions,
-	.nr_parts = ARRAY_SIZE(nuc900_spi_flash_partitions),
-	.type = "w25x16",
-};
-
-static struct spi_board_info nuc900_spi_board_info[] __initdata = {
-	{
-		.modalias = "m25p80",
-		.max_speed_hz = 20000000,
-		.bus_num = 0,
-		.chip_select = 0,
-		.platform_data = &nuc900_spi_flash_data,
-		.mode = SPI_MODE_0,
-	},
-};
-
-/* WDT Device */
-
-static struct resource nuc900_wdt_resource[] = {
-	[0] = {
-		.start = W90X900_PA_TIMER,
-		.end   = W90X900_PA_TIMER + W90X900_SZ_TIMER - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_WDT,
-		.end   = IRQ_WDT,
-		.flags = IORESOURCE_IRQ,
-	}
-};
-
-static struct platform_device nuc900_device_wdt = {
-	.name		= "nuc900-wdt",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(nuc900_wdt_resource),
-	.resource	= nuc900_wdt_resource,
-};
-
-/*
- * public device definition between 910 and 920, or 910
- * and 950 or 950 and 960...,their dev platform register
- * should be in specific file such as nuc950, nuc960 c
- * files rather than the public dev.c file here. so the
- * corresponding platform_device definition should not be
- * static.
-*/
-
-/* RTC controller*/
-
-static struct resource nuc900_rtc_resource[] = {
-	[0] = {
-		.start = W90X900_PA_RTC,
-		.end   = W90X900_PA_RTC + 0xff,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_RTC,
-		.end   = IRQ_RTC,
-		.flags = IORESOURCE_IRQ,
-	},
-};
-
-struct platform_device nuc900_device_rtc = {
-	.name		= "nuc900-rtc",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(nuc900_rtc_resource),
-	.resource	= nuc900_rtc_resource,
-};
-
-/*TouchScreen controller*/
-
-static struct resource nuc900_ts_resource[] = {
-	[0] = {
-		.start = W90X900_PA_ADC,
-		.end   = W90X900_PA_ADC + W90X900_SZ_ADC-1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_ADC,
-		.end   = IRQ_ADC,
-		.flags = IORESOURCE_IRQ,
-	},
-};
-
-struct platform_device nuc900_device_ts = {
-	.name		= "nuc900-ts",
-	.id		= -1,
-	.resource	= nuc900_ts_resource,
-	.num_resources	= ARRAY_SIZE(nuc900_ts_resource),
-};
-
-/* FMI Device */
-
-static struct resource nuc900_fmi_resource[] = {
-	[0] = {
-		.start = W90X900_PA_FMI,
-		.end   = W90X900_PA_FMI + W90X900_SZ_FMI - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_FMI,
-		.end   = IRQ_FMI,
-		.flags = IORESOURCE_IRQ,
-	}
-};
-
-struct platform_device nuc900_device_fmi = {
-	.name		= "nuc900-fmi",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(nuc900_fmi_resource),
-	.resource	= nuc900_fmi_resource,
-};
-
-/* KPI controller*/
-
-static int nuc900_keymap[] = {
-	KEY(0, 0, KEY_A),
-	KEY(0, 1, KEY_B),
-	KEY(0, 2, KEY_C),
-	KEY(0, 3, KEY_D),
-
-	KEY(1, 0, KEY_E),
-	KEY(1, 1, KEY_F),
-	KEY(1, 2, KEY_G),
-	KEY(1, 3, KEY_H),
-
-	KEY(2, 0, KEY_I),
-	KEY(2, 1, KEY_J),
-	KEY(2, 2, KEY_K),
-	KEY(2, 3, KEY_L),
-
-	KEY(3, 0, KEY_M),
-	KEY(3, 1, KEY_N),
-	KEY(3, 2, KEY_O),
-	KEY(3, 3, KEY_P),
-};
-
-static struct matrix_keymap_data nuc900_map_data = {
-	.keymap			= nuc900_keymap,
-	.keymap_size		= ARRAY_SIZE(nuc900_keymap),
-};
-
-struct w90p910_keypad_platform_data nuc900_keypad_info = {
-	.keymap_data	= &nuc900_map_data,
-	.prescale	= 0xfa,
-	.debounce	= 0x50,
-};
-
-static struct resource nuc900_kpi_resource[] = {
-	[0] = {
-		.start = W90X900_PA_KPI,
-		.end   = W90X900_PA_KPI + W90X900_SZ_KPI - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_KPI,
-		.end   = IRQ_KPI,
-		.flags = IORESOURCE_IRQ,
-	}
-
-};
-
-struct platform_device nuc900_device_kpi = {
-	.name		= "nuc900-kpi",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(nuc900_kpi_resource),
-	.resource	= nuc900_kpi_resource,
-	.dev		= {
-				.platform_data = &nuc900_keypad_info,
-			}
-};
-
-/* LCD controller*/
-
-static struct nuc900fb_display nuc900_lcd_info[] = {
-	/* Giantplus Technology GPM1040A0 320x240 Color TFT LCD */
-	[0] = {
-		.type		= LCM_DCCS_VA_SRC_RGB565,
-		.width		= 320,
-		.height		= 240,
-		.xres		= 320,
-		.yres		= 240,
-		.bpp		= 16,
-		.pixclock	= 200000,
-		.left_margin	= 34,
-		.right_margin   = 54,
-		.hsync_len	= 10,
-		.upper_margin	= 18,
-		.lower_margin	= 4,
-		.vsync_len	= 1,
-		.dccs		= 0x8e00041a,
-		.devctl		= 0x060800c0,
-		.fbctrl		= 0x00a000a0,
-		.scale		= 0x04000400,
-	},
-};
-
-static struct nuc900fb_mach_info nuc900_fb_info = {
-#if defined(CONFIG_GPM1040A0_320X240)
-	.displays		= &nuc900_lcd_info[0],
-#else
-	.displays		= nuc900_lcd_info,
-#endif
-	.num_displays		= ARRAY_SIZE(nuc900_lcd_info),
-	.default_display	= 0,
-	.gpio_dir		= 0x00000004,
-	.gpio_dir_mask		= 0xFFFFFFFD,
-	.gpio_data		= 0x00000004,
-	.gpio_data_mask		= 0xFFFFFFFD,
-};
-
-static struct resource nuc900_lcd_resource[] = {
-	[0] = {
-		.start = W90X900_PA_LCD,
-		.end   = W90X900_PA_LCD + W90X900_SZ_LCD - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_LCD,
-		.end   = IRQ_LCD,
-		.flags = IORESOURCE_IRQ,
-	}
-};
-
-static u64 nuc900_device_lcd_dmamask = -1;
-struct platform_device nuc900_device_lcd = {
-	.name             = "nuc900-lcd",
-	.id               = -1,
-	.num_resources    = ARRAY_SIZE(nuc900_lcd_resource),
-	.resource         = nuc900_lcd_resource,
-	.dev              = {
-		.dma_mask               = &nuc900_device_lcd_dmamask,
-		.coherent_dma_mask      = -1,
-		.platform_data = &nuc900_fb_info,
-	}
-};
-
-/* AUDIO controller*/
-static u64 nuc900_device_audio_dmamask = -1;
-static struct resource nuc900_ac97_resource[] = {
-	[0] = {
-		.start = W90X900_PA_ACTL,
-		.end   = W90X900_PA_ACTL + W90X900_SZ_ACTL - 1,
-		.flags = IORESOURCE_MEM,
-	},
-	[1] = {
-		.start = IRQ_ACTL,
-		.end   = IRQ_ACTL,
-		.flags = IORESOURCE_IRQ,
-	}
-
-};
-
-struct platform_device nuc900_device_ac97 = {
-	.name		= "nuc900-ac97",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(nuc900_ac97_resource),
-	.resource	= nuc900_ac97_resource,
-	.dev              = {
-		.dma_mask               = &nuc900_device_audio_dmamask,
-		.coherent_dma_mask      = -1,
-	}
-};
-
-/*Here should be your evb resourse,such as LCD*/
-
-static struct platform_device *nuc900_public_dev[] __initdata = {
-	&nuc900_serial_device,
-	&nuc900_flash_device,
-	&nuc900_device_usb_ehci,
-	&nuc900_device_usb_ohci,
-	&nuc900_device_usbgadget,
-	&nuc900_device_emc,
-	&nuc900_device_spi,
-	&nuc900_device_wdt,
-	&nuc900_device_ac97,
-};
-
-/* Provide adding specific CPU platform devices API */
-
-void __init nuc900_board_init(struct platform_device **device, int size)
-{
-	cpu_idle_poll_ctrl(true);
-	platform_add_devices(device, size);
-	platform_add_devices(nuc900_public_dev, ARRAY_SIZE(nuc900_public_dev));
-	spi_register_board_info(nuc900_spi_board_info,
-					ARRAY_SIZE(nuc900_spi_board_info));
-}
-
diff --git a/arch/arm/mach-w90x900/gpio.c b/arch/arm/mach-w90x900/gpio.c
deleted file mode 100644
index cb5df211f1ed..000000000000
--- a/arch/arm/mach-w90x900/gpio.c
+++ /dev/null
@@ -1,150 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/gpio.c
- *
- * Generic nuc900 GPIO handling
- *
- *  Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/clk.h>
-#include <linux/errno.h>
-#include <linux/interrupt.h>
-#include <linux/irq.h>
-#include <linux/debugfs.h>
-#include <linux/seq_file.h>
-#include <linux/kernel.h>
-#include <linux/list.h>
-#include <linux/module.h>
-#include <linux/io.h>
-#include <linux/gpio/driver.h>
-
-#include <mach/hardware.h>
-
-#define GPIO_BASE 		(W90X900_VA_GPIO)
-#define GPIO_DIR		(0x04)
-#define GPIO_OUT		(0x08)
-#define GPIO_IN			(0x0C)
-#define GROUPINERV		(0x10)
-#define GPIO_GPIO(Nb)		(0x00000001 << (Nb))
-
-#define NUC900_GPIO_CHIP(name, base_gpio, nr_gpio)			\
-	{								\
-		.chip = {						\
-			.label		  = name,			\
-			.direction_input  = nuc900_dir_input,		\
-			.direction_output = nuc900_dir_output,		\
-			.get		  = nuc900_gpio_get,		\
-			.set		  = nuc900_gpio_set,		\
-			.base		  = base_gpio,			\
-			.ngpio		  = nr_gpio,			\
-		}							\
-	}
-
-struct nuc900_gpio_chip {
-	struct gpio_chip	chip;
-	void __iomem		*regbase;	/* Base of group register*/
-	spinlock_t 		gpio_lock;
-};
-
-static int nuc900_gpio_get(struct gpio_chip *chip, unsigned offset)
-{
-	struct nuc900_gpio_chip *nuc900_gpio = gpiochip_get_data(chip);
-	void __iomem *pio = nuc900_gpio->regbase + GPIO_IN;
-	unsigned int regval;
-
-	regval = __raw_readl(pio);
-	regval &= GPIO_GPIO(offset);
-
-	return (regval != 0);
-}
-
-static void nuc900_gpio_set(struct gpio_chip *chip, unsigned offset, int val)
-{
-	struct nuc900_gpio_chip *nuc900_gpio = gpiochip_get_data(chip);
-	void __iomem *pio = nuc900_gpio->regbase + GPIO_OUT;
-	unsigned int regval;
-	unsigned long flags;
-
-	spin_lock_irqsave(&nuc900_gpio->gpio_lock, flags);
-
-	regval = __raw_readl(pio);
-
-	if (val)
-		regval |= GPIO_GPIO(offset);
-	else
-		regval &= ~GPIO_GPIO(offset);
-
-	__raw_writel(regval, pio);
-
-	spin_unlock_irqrestore(&nuc900_gpio->gpio_lock, flags);
-}
-
-static int nuc900_dir_input(struct gpio_chip *chip, unsigned offset)
-{
-	struct nuc900_gpio_chip *nuc900_gpio = gpiochip_get_data(chip);
-	void __iomem *pio = nuc900_gpio->regbase + GPIO_DIR;
-	unsigned int regval;
-	unsigned long flags;
-
-	spin_lock_irqsave(&nuc900_gpio->gpio_lock, flags);
-
-	regval = __raw_readl(pio);
-	regval &= ~GPIO_GPIO(offset);
-	__raw_writel(regval, pio);
-
-	spin_unlock_irqrestore(&nuc900_gpio->gpio_lock, flags);
-
-	return 0;
-}
-
-static int nuc900_dir_output(struct gpio_chip *chip, unsigned offset, int val)
-{
-	struct nuc900_gpio_chip *nuc900_gpio = gpiochip_get_data(chip);
-	void __iomem *outreg = nuc900_gpio->regbase + GPIO_OUT;
-	void __iomem *pio = nuc900_gpio->regbase + GPIO_DIR;
-	unsigned int regval;
-	unsigned long flags;
-
-	spin_lock_irqsave(&nuc900_gpio->gpio_lock, flags);
-
-	regval = __raw_readl(pio);
-	regval |= GPIO_GPIO(offset);
-	__raw_writel(regval, pio);
-
-	regval = __raw_readl(outreg);
-
-	if (val)
-		regval |= GPIO_GPIO(offset);
-	else
-		regval &= ~GPIO_GPIO(offset);
-
-	__raw_writel(regval, outreg);
-
-	spin_unlock_irqrestore(&nuc900_gpio->gpio_lock, flags);
-
-	return 0;
-}
-
-static struct nuc900_gpio_chip nuc900_gpio[] = {
-	NUC900_GPIO_CHIP("GROUPC", 0, 16),
-	NUC900_GPIO_CHIP("GROUPD", 16, 10),
-	NUC900_GPIO_CHIP("GROUPE", 26, 14),
-	NUC900_GPIO_CHIP("GROUPF", 40, 10),
-	NUC900_GPIO_CHIP("GROUPG", 50, 17),
-	NUC900_GPIO_CHIP("GROUPH", 67, 8),
-	NUC900_GPIO_CHIP("GROUPI", 75, 17),
-};
-
-void __init nuc900_init_gpio(int nr_group)
-{
-	unsigned	i;
-	struct nuc900_gpio_chip *gpio_chip;
-
-	for (i = 0; i < nr_group; i++) {
-		gpio_chip = &nuc900_gpio[i];
-		spin_lock_init(&gpio_chip->gpio_lock);
-		gpio_chip->regbase = GPIO_BASE + i * GROUPINERV;
-		gpiochip_add_data(&gpio_chip->chip, gpio_chip);
-	}
-}
diff --git a/arch/arm/mach-w90x900/include/mach/entry-macro.S b/arch/arm/mach-w90x900/include/mach/entry-macro.S
deleted file mode 100644
index 0ff612ac95ba..000000000000
--- a/arch/arm/mach-w90x900/include/mach/entry-macro.S
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * arch/arm/mach-w90x900/include/mach/entry-macro.S
- *
- * Low-level IRQ helper macros for W90P910-based platforms
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
- */
-
-#include <mach/hardware.h>
-#include <mach/regs-irq.h>
-
-	.macro  get_irqnr_preamble, base, tmp
-	.endm
-
-	.macro	get_irqnr_and_base, irqnr, irqstat, base, tmp
-
-		mov	\base, #AIC_BA
-
-		ldr	\irqnr, [\base, #AIC_IPER]
-		ldr	\irqnr, [\base, #AIC_ISNR]
-		cmp	\irqnr, #0
-
-	.endm
diff --git a/arch/arm/mach-w90x900/include/mach/hardware.h b/arch/arm/mach-w90x900/include/mach/hardware.h
deleted file mode 100644
index 137403960483..000000000000
--- a/arch/arm/mach-w90x900/include/mach/hardware.h
+++ /dev/null
@@ -1,19 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-w90x900/include/mach/hardware.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- * All rights reserved.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * Based on arch/arm/mach-s3c2410/include/mach/hardware.h
- */
-
-#ifndef __ASM_ARCH_HARDWARE_H
-#define __ASM_ARCH_HARDWARE_H
-
-#include <linux/sizes.h>
-#include <mach/map.h>
-
-#endif /* __ASM_ARCH_HARDWARE_H */
diff --git a/arch/arm/mach-w90x900/include/mach/irqs.h b/arch/arm/mach-w90x900/include/mach/irqs.h
deleted file mode 100644
index 23ea01d97a02..000000000000
--- a/arch/arm/mach-w90x900/include/mach/irqs.h
+++ /dev/null
@@ -1,82 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/include/mach/irqs.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * Based on arch/arm/mach-s3c2410/include/mach/irqs.h
- */
-
-#ifndef __ASM_ARCH_IRQS_H
-#define __ASM_ARCH_IRQS_H
-
-/*
- * we keep the first set of CPU IRQs out of the range of
- * the ISA space, so that the PC104 has them to itself
- * and we don't end up having to do horrible things to the
- * standard ISA drivers....
- *
- */
-
-#define W90X900_IRQ(x)	(x)
-
-/* Main cpu interrupts */
-
-#define IRQ_WDT		W90X900_IRQ(1)
-#define IRQ_GROUP0	W90X900_IRQ(2)
-#define IRQ_GROUP1	W90X900_IRQ(3)
-#define IRQ_ACTL	W90X900_IRQ(4)
-#define IRQ_LCD		W90X900_IRQ(5)
-#define IRQ_RTC		W90X900_IRQ(6)
-#define IRQ_UART0	W90X900_IRQ(7)
-#define IRQ_UART1	W90X900_IRQ(8)
-#define IRQ_UART2	W90X900_IRQ(9)
-#define IRQ_UART3	W90X900_IRQ(10)
-#define IRQ_UART4	W90X900_IRQ(11)
-#define IRQ_TIMER0	W90X900_IRQ(12)
-#define IRQ_TIMER1	W90X900_IRQ(13)
-#define IRQ_T_INT_GROUP	W90X900_IRQ(14)
-#define IRQ_USBH	W90X900_IRQ(15)
-#define IRQ_EMCTX	W90X900_IRQ(16)
-#define IRQ_EMCRX	W90X900_IRQ(17)
-#define IRQ_GDMAGROUP	W90X900_IRQ(18)
-#define IRQ_DMAC	W90X900_IRQ(19)
-#define IRQ_FMI		W90X900_IRQ(20)
-#define IRQ_USBD	W90X900_IRQ(21)
-#define IRQ_ATAPI	W90X900_IRQ(22)
-#define IRQ_G2D		W90X900_IRQ(23)
-#define IRQ_PCI		W90X900_IRQ(24)
-#define IRQ_SCGROUP	W90X900_IRQ(25)
-#define IRQ_I2CGROUP	W90X900_IRQ(26)
-#define IRQ_SSP		W90X900_IRQ(27)
-#define IRQ_PWM		W90X900_IRQ(28)
-#define IRQ_KPI		W90X900_IRQ(29)
-#define IRQ_P2SGROUP	W90X900_IRQ(30)
-#define IRQ_ADC		W90X900_IRQ(31)
-#define NR_IRQS		(IRQ_ADC+1)
-
-/*for irq group*/
-
-#define	IRQ_PS2_PORT0	0x10000000
-#define	IRQ_PS2_PORT1	0x20000000
-#define	IRQ_I2C_LINE0	0x04000000
-#define	IRQ_I2C_LINE1	0x08000000
-#define	IRQ_SC_CARD0	0x01000000
-#define	IRQ_SC_CARD1	0x02000000
-#define	IRQ_GDMA_CH0	0x00100000
-#define	IRQ_GDMA_CH1	0x00200000
-#define	IRQ_TIMER2	0x00010000
-#define	IRQ_TIMER3	0x00020000
-#define	IRQ_TIMER4	0x00040000
-#define	IRQ_GROUP0_IRQ0	0x00000001
-#define	IRQ_GROUP0_IRQ1	0x00000002
-#define	IRQ_GROUP0_IRQ2	0x00000004
-#define	IRQ_GROUP0_IRQ3	0x00000008
-#define	IRQ_GROUP1_IRQ4	0x00000010
-#define	IRQ_GROUP1_IRQ5	0x00000020
-#define	IRQ_GROUP1_IRQ6	0x00000040
-#define	IRQ_GROUP1_IRQ7	0x00000080
-
-#endif /* __ASM_ARCH_IRQ_H */
diff --git a/arch/arm/mach-w90x900/include/mach/map.h b/arch/arm/mach-w90x900/include/mach/map.h
deleted file mode 100644
index 570a74e04b1c..000000000000
--- a/arch/arm/mach-w90x900/include/mach/map.h
+++ /dev/null
@@ -1,153 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/include/mach/map.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * Based on arch/arm/mach-s3c2410/include/mach/map.h
- */
-
-#ifndef __ASM_ARCH_MAP_H
-#define __ASM_ARCH_MAP_H
-
-#ifndef __ASSEMBLY__
-#define W90X900_ADDR(x)		((void __iomem *)(0xF0000000 + (x)))
-#else
-#define W90X900_ADDR(x)		(0xF0000000 + (x))
-#endif
-
-#define AHB_IO_BASE		0xB0000000
-#define APB_IO_BASE		0xB8000000
-#define CLOCKPW_BASE		(APB_IO_BASE+0x200)
-#define AIC_IO_BASE		(APB_IO_BASE+0x2000)
-#define TIMER_IO_BASE		(APB_IO_BASE+0x1000)
-
-/*
- * interrupt controller is the first thing we put in, to make
- * the assembly code for the irq detection easier
- */
-#define W90X900_VA_IRQ		W90X900_ADDR(0x00000000)
-#define W90X900_PA_IRQ		(0xB8002000)
-#define W90X900_SZ_IRQ		SZ_4K
-
-#define W90X900_VA_GCR		W90X900_ADDR(0x08002000)
-#define W90X900_PA_GCR		(0xB0000000)
-#define W90X900_SZ_GCR		SZ_4K
-
-/* Clock and Power management */
-#define W90X900_VA_CLKPWR	(W90X900_VA_GCR+0x200)
-#define W90X900_PA_CLKPWR	(0xB0000200)
-#define W90X900_SZ_CLKPWR	SZ_4K
-
-/* EBI management */
-#define W90X900_VA_EBI		W90X900_ADDR(0x00001000)
-#define W90X900_PA_EBI		(0xB0001000)
-#define W90X900_SZ_EBI		SZ_4K
-
-/* UARTs */
-#define W90X900_VA_UART		W90X900_ADDR(0x08000000)
-#define W90X900_PA_UART		(0xB8000000)
-#define W90X900_SZ_UART		SZ_4K
-
-/* Timers */
-#define W90X900_VA_TIMER	W90X900_ADDR(0x08001000)
-#define W90X900_PA_TIMER	(0xB8001000)
-#define W90X900_SZ_TIMER	SZ_4K
-
-/* GPIO ports */
-#define W90X900_VA_GPIO		W90X900_ADDR(0x08003000)
-#define W90X900_PA_GPIO		(0xB8003000)
-#define W90X900_SZ_GPIO		SZ_4K
-
-/* GDMA control */
-#define W90X900_VA_GDMA		W90X900_ADDR(0x00004000)
-#define W90X900_PA_GDMA		(0xB0004000)
-#define W90X900_SZ_GDMA		SZ_4K
-
-/* USB host controller*/
-#define W90X900_VA_USBEHCIHOST	W90X900_ADDR(0x00005000)
-#define W90X900_PA_USBEHCIHOST	(0xB0005000)
-#define W90X900_SZ_USBEHCIHOST	SZ_4K
-
-#define W90X900_VA_USBOHCIHOST	W90X900_ADDR(0x00007000)
-#define W90X900_PA_USBOHCIHOST	(0xB0007000)
-#define W90X900_SZ_USBOHCIHOST	SZ_4K
-
-/* I2C hardware controller */
-#define W90X900_VA_I2C		W90X900_ADDR(0x08006000)
-#define W90X900_PA_I2C		(0xB8006000)
-#define W90X900_SZ_I2C		SZ_4K
-
-/* Keypad Interface*/
-#define W90X900_VA_KPI		W90X900_ADDR(0x08008000)
-#define W90X900_PA_KPI		(0xB8008000)
-#define W90X900_SZ_KPI		SZ_4K
-
-/* Smart card host*/
-#define W90X900_VA_SC		W90X900_ADDR(0x08005000)
-#define W90X900_PA_SC		(0xB8005000)
-#define W90X900_SZ_SC		SZ_4K
-
-/* LCD controller*/
-#define W90X900_VA_LCD		W90X900_ADDR(0x00008000)
-#define W90X900_PA_LCD		(0xB0008000)
-#define W90X900_SZ_LCD		SZ_4K
-
-/* 2D controller*/
-#define W90X900_VA_GE		W90X900_ADDR(0x0000B000)
-#define W90X900_PA_GE		(0xB000B000)
-#define W90X900_SZ_GE		SZ_4K
-
-/* ATAPI */
-#define W90X900_VA_ATAPI	W90X900_ADDR(0x0000A000)
-#define W90X900_PA_ATAPI	(0xB000A000)
-#define W90X900_SZ_ATAPI	SZ_4K
-
-/* ADC */
-#define W90X900_VA_ADC		W90X900_ADDR(0x0800A000)
-#define W90X900_PA_ADC		(0xB800A000)
-#define W90X900_SZ_ADC		SZ_4K
-
-/* PS2 Interface*/
-#define W90X900_VA_PS2		W90X900_ADDR(0x08009000)
-#define W90X900_PA_PS2		(0xB8009000)
-#define W90X900_SZ_PS2		SZ_4K
-
-/* RTC */
-#define W90X900_VA_RTC		W90X900_ADDR(0x08004000)
-#define W90X900_PA_RTC		(0xB8004000)
-#define W90X900_SZ_RTC		SZ_4K
-
-/* Pulse Width Modulation(PWM) Registers */
-#define W90X900_VA_PWM		W90X900_ADDR(0x08007000)
-#define W90X900_PA_PWM		(0xB8007000)
-#define W90X900_SZ_PWM		SZ_4K
-
-/* Audio Controller controller */
-#define W90X900_VA_ACTL		W90X900_ADDR(0x00009000)
-#define W90X900_PA_ACTL		(0xB0009000)
-#define W90X900_SZ_ACTL		SZ_4K
-
-/* DMA controller */
-#define W90X900_VA_DMA		W90X900_ADDR(0x0000c000)
-#define W90X900_PA_DMA		(0xB000c000)
-#define W90X900_SZ_DMA		SZ_4K
-
-/* FMI controller */
-#define W90X900_VA_FMI		W90X900_ADDR(0x0000d000)
-#define W90X900_PA_FMI		(0xB000d000)
-#define W90X900_SZ_FMI		SZ_4K
-
-/* USB Device port */
-#define W90X900_VA_USBDEV	W90X900_ADDR(0x00006000)
-#define W90X900_PA_USBDEV	(0xB0006000)
-#define W90X900_SZ_USBDEV	SZ_4K
-
-/* External MAC control*/
-#define W90X900_VA_EMC		W90X900_ADDR(0x00003000)
-#define W90X900_PA_EMC		(0xB0003000)
-#define W90X900_SZ_EMC		SZ_4K
-
-#endif /* __ASM_ARCH_MAP_H */
diff --git a/arch/arm/mach-w90x900/include/mach/mfp.h b/arch/arm/mach-w90x900/include/mach/mfp.h
deleted file mode 100644
index be5485efab0a..000000000000
--- a/arch/arm/mach-w90x900/include/mach/mfp.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/include/mach/mfp.h
- *
- * Copyright (c) 2010 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * Based on arch/arm/mach-s3c2410/include/mach/map.h
- */
-
-#ifndef __ASM_ARCH_MFP_H
-#define __ASM_ARCH_MFP_H
-
-extern void mfp_set_groupf(struct device *dev);
-extern void mfp_set_groupc(struct device *dev);
-extern void mfp_set_groupi(struct device *dev);
-extern void mfp_set_groupg(struct device *dev, const char *subname);
-extern void mfp_set_groupd(struct device *dev, const char *subname);
-
-#endif /* __ASM_ARCH_MFP_H */
diff --git a/arch/arm/mach-w90x900/include/mach/regs-clock.h b/arch/arm/mach-w90x900/include/mach/regs-clock.h
deleted file mode 100644
index f06245d26bd7..000000000000
--- a/arch/arm/mach-w90x900/include/mach/regs-clock.h
+++ /dev/null
@@ -1,49 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/include/mach/regs-clock.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#ifndef __ASM_ARCH_REGS_CLOCK_H
-#define __ASM_ARCH_REGS_CLOCK_H
-
-/* Clock Control Registers  */
-#define CLK_BA		W90X900_VA_CLKPWR
-#define REG_CLKEN	(CLK_BA + 0x00)
-#define REG_CLKSEL	(CLK_BA + 0x04)
-#define REG_CLKDIV	(CLK_BA + 0x08)
-#define REG_PLLCON0	(CLK_BA + 0x0C)
-#define REG_PLLCON1	(CLK_BA + 0x10)
-#define REG_PMCON	(CLK_BA + 0x14)
-#define REG_IRQWAKECON	(CLK_BA + 0x18)
-#define REG_IRQWAKEFLAG	(CLK_BA + 0x1C)
-#define REG_IPSRST	(CLK_BA + 0x20)
-#define REG_CLKEN1	(CLK_BA + 0x24)
-#define REG_CLKDIV1	(CLK_BA + 0x28)
-
-/* Define PLL freq setting */
-#define PLL_DISABLE		0x12B63
-#define	PLL_66MHZ		0x2B63
-#define	PLL_100MHZ		0x4F64
-#define PLL_120MHZ		0x4F63
-#define	PLL_166MHZ		0x4124
-#define	PLL_200MHZ		0x4F24
-
-/* Define AHB:CPUFREQ ratio */
-#define	AHB_CPUCLK_1_1		0x00
-#define	AHB_CPUCLK_1_2		0x01
-#define	AHB_CPUCLK_1_4		0x02
-#define	AHB_CPUCLK_1_8		0x03
-
-/* Define APB:AHB ratio */
-#define APB_AHB_1_2		0x01
-#define APB_AHB_1_4		0x02
-#define APB_AHB_1_8		0x03
-
-/* Define clock skew */
-#define DEFAULTSKEW		0x48
-
-#endif /*  __ASM_ARCH_REGS_CLOCK_H */
diff --git a/arch/arm/mach-w90x900/include/mach/regs-irq.h b/arch/arm/mach-w90x900/include/mach/regs-irq.h
deleted file mode 100644
index 89fcbc60b60a..000000000000
--- a/arch/arm/mach-w90x900/include/mach/regs-irq.h
+++ /dev/null
@@ -1,46 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-w90x900/include/mach/regs-irq.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- * All rights reserved.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * Based on arch/arm/mach-s3c2410/include/mach/regs-irq.h
- */
-
-#ifndef ___ASM_ARCH_REGS_IRQ_H
-#define ___ASM_ARCH_REGS_IRQ_H
-
-/* Advance Interrupt Controller (AIC) Registers */
-
-#define AIC_BA    		W90X900_VA_IRQ
-
-#define REG_AIC_IRQSC		(AIC_BA+0x80)
-#define REG_AIC_GEN		(AIC_BA+0x84)
-#define REG_AIC_GASR		(AIC_BA+0x88)
-#define REG_AIC_GSCR		(AIC_BA+0x8C)
-#define REG_AIC_IRSR		(AIC_BA+0x100)
-#define REG_AIC_IASR		(AIC_BA+0x104)
-#define REG_AIC_ISR		(AIC_BA+0x108)
-#define REG_AIC_IPER		(AIC_BA+0x10C)
-#define REG_AIC_ISNR		(AIC_BA+0x110)
-#define REG_AIC_IMR		(AIC_BA+0x114)
-#define REG_AIC_OISR		(AIC_BA+0x118)
-#define REG_AIC_MECR		(AIC_BA+0x120)
-#define REG_AIC_MDCR		(AIC_BA+0x124)
-#define REG_AIC_SSCR		(AIC_BA+0x128)
-#define REG_AIC_SCCR		(AIC_BA+0x12C)
-#define REG_AIC_EOSCR		(AIC_BA+0x130)
-#define AIC_IPER		(0x10C)
-#define AIC_ISNR		(0x110)
-
-/*16-18 bits of REG_AIC_GEN define irq(2-4) group*/
-
-#define TIMER2_IRQ		(1 << 16)
-#define TIMER3_IRQ		(1 << 17)
-#define TIMER4_IRQ		(1 << 18)
-#define TIME_GROUP_IRQ		(TIMER2_IRQ|TIMER3_IRQ|TIMER4_IRQ)
-
-#endif /* ___ASM_ARCH_REGS_IRQ_H */
diff --git a/arch/arm/mach-w90x900/include/mach/regs-ldm.h b/arch/arm/mach-w90x900/include/mach/regs-ldm.h
deleted file mode 100644
index ffe7e67c99de..000000000000
--- a/arch/arm/mach-w90x900/include/mach/regs-ldm.h
+++ /dev/null
@@ -1,248 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-w90x900/include/mach/regs-serial.h
- *
- * Copyright (c) 2009 Nuvoton technology corporation
- * All rights reserved.
- *
- *  Description:
- *     Nuvoton Display, LCM Register list
- *  Author:  Wang Qiang (rurality.linux@gmail.com) 2009/12/11
- */
-
-
-#ifndef __ASM_ARM_W90X900_REGS_LDM_H
-#define __ASM_ARM_W90X900_REGS_LDM_H
-
-#include <mach/map.h>
-
-/* Display Controller Control/Status Register */
-#define REG_LCM_DCCS			(0x00)
-
-#define LCM_DCCS_ENG_RST		(1 << 0)
-#define LCM_DCCS_VA_EN			(1 << 1)
-#define LCM_DCCS_OSD_EN			(1 << 2)
-#define LCM_DCCS_DISP_OUT_EN		(1 << 3)
-#define LCM_DCCS_DISP_INT_EN		(1 << 4)
-#define LCM_DCCS_CMD_ON			(1 << 5)
-#define LCM_DCCS_FIELD_INTR		(1 << 6)
-#define LCM_DCCS_SINGLE			(1 << 7)
-
-enum LCM_DCCS_VA_SRC {
-	LCM_DCCS_VA_SRC_YUV422		= (0 << 8),
-	LCM_DCCS_VA_SRC_YCBCR422	= (1 << 8),
-	LCM_DCCS_VA_SRC_RGB888		= (2 << 8),
-	LCM_DCCS_VA_SRC_RGB666		= (3 << 8),
-	LCM_DCCS_VA_SRC_RGB565		= (4 << 8),
-	LCM_DCCS_VA_SRC_RGB444LOW	= (5 << 8),
-	LCM_DCCS_VA_SRC_RGB444HIGH 	= (7 << 8)
-};
-
-
-/* Display Device Control Register */
-#define REG_LCM_DEV_CTRL		(0x04)
-
-enum LCM_DEV_CTRL_SWAP_YCbCr {
-	LCM_DEV_CTRL_SWAP_UYVY		= (0 << 1),
-	LCM_DEV_CTRL_SWAP_YUYV		= (1 << 1),
-	LCM_DEV_CTRL_SWAP_VYUY		= (2 << 1),
-	LCM_DEV_CTRL_SWAP_YVYU		= (3 << 1)
-};
-
-enum LCM_DEV_CTRL_RGB_SHIFT {
-	LCM_DEV_CTRL_RGB_SHIFT_NOT 	= (0 << 3),
-	LCM_DEV_CTRL_RGB_SHIFT_ONECYCLE = (1 << 3),
-	LCM_DEV_CTRL_RGB_SHIFT_TWOCYCLE = (2 << 3),
-	LCM_DEV_CTRL_RGB_SHIFT_NOT_DEF	= (3 << 3)
-};
-
-enum LCM_DEV_CTRL_DEVICE {
-	LCM_DEV_CTRL_DEVICE_YUV422	= (0 << 5),
-	LCM_DEV_CTRL_DEVICE_YUV444	= (1 << 5),
-	LCM_DEV_CTRL_DEVICE_UNIPAC	= (4 << 5),
-	LCM_DEV_CTRL_DEVICE_SEIKO_EPSON	= (5 << 5),
-	LCM_DEV_CTRL_DEVICE_HIGH_COLOR	= (6 << 5),
-	LCM_DEV_CTRL_DEVICE_MPU		= (7 << 5)
-};
-
-#define LCM_DEV_CTRL_LCD_DDA		(8)
-#define LCM_DEV_CTRL_YUV2CCIR		(16)
-
-enum LCM_DEV_CTRL_LCD_SEL {
-	LCM_DEV_CTRL_LCD_SEL_RGB_GBR	= (0 << 17),
-	LCM_DEV_CTRL_LCD_SEL_BGR_RBG	= (1 << 17),
-	LCM_DEV_CTRL_LCD_SEL_GBR_RGB	= (2 << 17),
-	LCM_DEV_CTRL_LCD_SEL_RBG_BGR	= (3 << 17)
-};
-
-enum LCM_DEV_CTRL_FAL_D {
-	LCM_DEV_CTRL_FAL_D_FALLING	= (0 << 19),
-	LCM_DEV_CTRL_FAL_D_RISING	= (1 << 19),
-};
-
-enum LCM_DEV_CTRL_H_POL {
-	LCM_DEV_CTRL_H_POL_LOW		= (0 << 20),
-	LCM_DEV_CTRL_H_POL_HIGH		= (1 << 20),
-};
-
-enum LCM_DEV_CTRL_V_POL {
-	LCM_DEV_CTRL_V_POL_LOW		= (0 << 21),
-	LCM_DEV_CTRL_V_POL_HIGH		= (1 << 21),
-};
-
-enum LCM_DEV_CTRL_VR_LACE {
-	LCM_DEV_CTRL_VR_LACE_NINTERLACE	= (0 << 22),
-	LCM_DEV_CTRL_VR_LACE_INTERLACE	= (1 << 22),
-};
-
-enum LCM_DEV_CTRL_LACE {
-	LCM_DEV_CTRL_LACE_NINTERLACE	= (0 << 23),
-	LCM_DEV_CTRL_LACE_INTERLACE	= (1 << 23),
-};
-
-enum LCM_DEV_CTRL_RGB_SCALE {
-	LCM_DEV_CTRL_RGB_SCALE_4096 	= (0 << 24),
-	LCM_DEV_CTRL_RGB_SCALE_65536 	= (1 << 24),
-	LCM_DEV_CTRL_RGB_SCALE_262144 	= (2 << 24),
-	LCM_DEV_CTRL_RGB_SCALE_16777216 = (3 << 24),
-};
-
-enum LCM_DEV_CTRL_DBWORD {
-	LCM_DEV_CTRL_DBWORD_HALFWORD	= (0 << 26),
-	LCM_DEV_CTRL_DBWORD_FULLWORD	= (1 << 26),
-};
-
-enum LCM_DEV_CTRL_MPU68 {
-	LCM_DEV_CTRL_MPU68_80_SERIES	= (0 << 27),
-	LCM_DEV_CTRL_MPU68_68_SERIES	= (1 << 27),
-};
-
-enum LCM_DEV_CTRL_DE_POL {
-	LCM_DEV_CTRL_DE_POL_HIGH	= (0 << 28),
-	LCM_DEV_CTRL_DE_POL_LOW		= (1 << 28),
-};
-
-#define LCM_DEV_CTRL_CMD16		(29)
-#define LCM_DEV_CTRL_CM16t18		(30)
-#define LCM_DEV_CTRL_CMD_LOW		(31)
-
-/* MPU-Interface LCD Write Command */
-#define REG_LCM_MPU_CMD			(0x08)
-
-/* Interrupt Control/Status Register */
-#define REG_LCM_INT_CS			(0x0c)
-#define LCM_INT_CS_DISP_F_EN		(1 << 0)
-#define LCM_INT_CS_UNDERRUN_EN   	(1 << 1)
-#define LCM_INT_CS_BUS_ERROR_INT 	(1 << 28)
-#define LCM_INT_CS_UNDERRUN_INT  	(1 << 29)
-#define LCM_INT_CS_DISP_F_STATUS 	(1 << 30)
-#define LCM_INT_CS_DISP_F_INT		(1 << 31)
-
-/* CRTC Display Size Control Register */
-#define REG_LCM_CRTC_SIZE		(0x10)
-#define LCM_CRTC_SIZE_VTTVAL(x)		((x) << 16)
-#define LCM_CRTC_SIZE_HTTVAL(x)		((x) << 0)
-
-/* CRTC Display Enable End */
-#define REG_LCM_CRTC_DEND		(0x14)
-#define LCM_CRTC_DEND_VDENDVAL(x)	((x) << 16)
-#define LCM_CRTC_DEND_HDENDVAL(x)	((x) << 0)
-
-/* CRTC Internal Horizontal Retrace Control Register */
-#define REG_LCM_CRTC_HR			(0x18)
-#define LCM_CRTC_HR_EVAL(x)		((x) << 16)
-#define LCM_CRTC_HR_SVAL(x)		((x) << 0)
-
-/* CRTC Horizontal Sync Control Register */
-#define REG_LCM_CRTC_HSYNC		(0x1C)
-#define LCM_CRTC_HSYNC_SHIFTVAL(x)	((x) << 30)
-#define LCM_CRTC_HSYNC_EVAL(x)		((x) << 16)
-#define LCM_CRTC_HSYNC_SVAL(x)		((x) << 0)
-
-/* CRTC Internal Vertical Retrace Control Register */
-#define REG_LCM_CRTC_VR			(0x20)
-#define LCM_CRTC_VR_EVAL(x)		((x) << 16)
-#define LCM_CRTC_VR_SVAL(x)		((x) << 0)
-
-/* Video Stream Frame Buffer-0 Starting Address */
-#define REG_LCM_VA_BADDR0		(0x24)
-
-/* Video Stream Frame Buffer-1 Starting Address */
-#define REG_LCM_VA_BADDR1		(0x28)
-
-/* Video Stream Frame Buffer Control Register */
-#define REG_LCM_VA_FBCTRL		(0x2C)
-#define LCM_VA_FBCTRL_IO_REGION_HALF	(1 << 28)
-#define LCM_VA_FBCTRL_FIELD_DUAL  	(1 << 29)
-#define LCM_VA_FBCTRL_START_BUF 	(1 << 30)
-#define LCM_VA_FBCTRL_DB_EN		(1 << 31)
-
-/* Video Stream Scaling Control Register */
-#define REG_LCM_VA_SCALE		(0x30)
-#define LCM_VA_SCALE_XCOPY_INTERPOLATION (0 << 15)
-#define LCM_VA_SCALE_XCOPY_DUPLICATION	 (1 << 15)
-
-/* Image Stream Active Window Coordinates */
-#define REG_LCM_VA_WIN			(0x38)
-
-/* Image Stream Stuff Pixel */
-#define REG_LCM_VA_STUFF		(0x3C)
-
-/* OSD Window Starting Coordinates */
-#define REG_LCM_OSD_WINS		(0x40)
-
-/* OSD Window Ending Coordinates */
-#define REG_LCM_OSD_WINE		(0x44)
-
-/* OSD Stream Frame Buffer Starting Address */
-#define REG_LCM_OSD_BADDR		(0x48)
-
-/* OSD Stream Frame Buffer Control Register */
-#define REG_LCM_OSD_FBCTRL		(0x4c)
-
-/* OSD Overlay Control Register */
-#define REG_LCM_OSD_OVERLAY		(0x50)
-
-/* OSD Overlay Color-Key Pattern Register */
-#define REG_LCM_OSD_CKEY		(0x54)
-
-/* OSD Overlay Color-Key Mask Register */
-#define REG_LCM_OSD_CMASK		(0x58)
-
-/* OSD Window Skip1 Register */
-#define REG_LCM_OSD_SKIP1		(0x5C)
-
-/* OSD Window Skip2 Register */
-#define REG_LCM_OSD_SKIP2		(0x60)
-
-/* OSD horizontal up scaling control register */
-#define REG_LCM_OSD_SCALE		(0x64)
-
-/* MPU Vsync control register */
-#define REG_LCM_MPU_VSYNC		(0x68)
-
-/* Hardware cursor control Register */
-#define REG_LCM_HC_CTRL			(0x6C)
-
-/* Hardware cursot tip point potison on va picture */
-#define REG_LCM_HC_POS			(0x70)
-
-/* Hardware Cursor Window Buffer Control Register */
-#define REG_LCM_HC_WBCTRL		(0x74)
-
-/* Hardware cursor memory base address register */
-#define REG_LCM_HC_BADDR		(0x78)
-
-/* Hardware cursor color ram register mapped to bpp = 0 */
-#define REG_LCM_HC_COLOR0		(0x7C)
-
-/* Hardware cursor color ram register mapped to bpp = 1 */
-#define REG_LCM_HC_COLOR1		(0x80)
-
-/* Hardware cursor color ram register mapped to bpp = 2 */
-#define REG_LCM_HC_COLOR2		(0x84)
-
-/* Hardware cursor color ram register mapped to bpp = 3 */
-#define REG_LCM_HC_COLOR3		(0x88)
-
-#endif /* __ASM_ARM_W90X900_REGS_LDM_H */
diff --git a/arch/arm/mach-w90x900/include/mach/regs-serial.h b/arch/arm/mach-w90x900/include/mach/regs-serial.h
deleted file mode 100644
index 797c9727a157..000000000000
--- a/arch/arm/mach-w90x900/include/mach/regs-serial.h
+++ /dev/null
@@ -1,54 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-w90x900/include/mach/regs-serial.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- * All rights reserved.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * Based on arch/arm/mach-s3c2410/include/mach/regs-serial.h
- */
-
-#ifndef __ASM_ARM_REGS_SERIAL_H
-#define __ASM_ARM_REGS_SERIAL_H
-
-#define UART0_BA	W90X900_VA_UART
-#define UART1_BA	(W90X900_VA_UART+0x100)
-#define UART2_BA	(W90X900_VA_UART+0x200)
-#define UART3_BA	(W90X900_VA_UART+0x300)
-#define UART4_BA	(W90X900_VA_UART+0x400)
-
-#define UART0_PA	W90X900_PA_UART
-#define UART1_PA	(W90X900_PA_UART+0x100)
-#define UART2_PA	(W90X900_PA_UART+0x200)
-#define UART3_PA	(W90X900_PA_UART+0x300)
-#define UART4_PA	(W90X900_PA_UART+0x400)
-
-#ifndef __ASSEMBLY__
-
-struct w90x900_uart_clksrc {
-	const char	*name;
-	unsigned int	divisor;
-	unsigned int	min_baud;
-	unsigned int	max_baud;
-};
-
-struct w90x900_uartcfg {
-	unsigned char	hwport;
-	unsigned char	unused;
-	unsigned short	flags;
-	unsigned long	uart_flags;
-
-	unsigned long	ucon;
-	unsigned long	ulcon;
-	unsigned long	ufcon;
-
-	struct w90x900_uart_clksrc *clocks;
-	unsigned int	clocks_size;
-};
-
-#endif /* __ASSEMBLY__ */
-
-#endif /* __ASM_ARM_REGS_SERIAL_H */
-
diff --git a/arch/arm/mach-w90x900/include/mach/uncompress.h b/arch/arm/mach-w90x900/include/mach/uncompress.h
deleted file mode 100644
index 32e92a77ccae..000000000000
--- a/arch/arm/mach-w90x900/include/mach/uncompress.h
+++ /dev/null
@@ -1,43 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-w90x900/include/mach/uncompress.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- * All rights reserved.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * Based on arch/arm/mach-s3c2410/include/mach/uncompress.h
- */
-
-#ifndef __ASM_ARCH_UNCOMPRESS_H
-#define __ASM_ARCH_UNCOMPRESS_H
-
-/* Defines for UART registers */
-
-#include <mach/regs-serial.h>
-#include <mach/map.h>
-#include <linux/serial_reg.h>
-
-#define TX_DONE	(UART_LSR_TEMT | UART_LSR_THRE)
-static volatile u32 * const uart_base = (u32 *)UART0_PA;
-
-static inline void putc(int ch)
-{
-	/* Check THRE and TEMT bits before we transmit the character.
-	 */
-	while ((uart_base[UART_LSR] & TX_DONE) != TX_DONE)
-		barrier();
-
-	*uart_base = ch;
-}
-
-static inline void flush(void)
-{
-}
-
-static void arch_decomp_setup(void)
-{
-}
-
-#endif/* __ASM_W90X900_UNCOMPRESS_H */
diff --git a/arch/arm/mach-w90x900/irq.c b/arch/arm/mach-w90x900/irq.c
deleted file mode 100644
index 081b0f65477a..000000000000
--- a/arch/arm/mach-w90x900/irq.c
+++ /dev/null
@@ -1,212 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/irq.c
- *
- * based on linux/arch/arm/plat-s3c24xx/irq.c by Ben Dooks
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- * All rights reserved.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/init.h>
-#include <linux/module.h>
-#include <linux/interrupt.h>
-#include <linux/ioport.h>
-#include <linux/ptrace.h>
-#include <linux/device.h>
-#include <linux/io.h>
-
-#include <asm/irq.h>
-#include <asm/mach/irq.h>
-
-#include <mach/hardware.h>
-#include <mach/regs-irq.h>
-
-#include "nuc9xx.h"
-
-struct group_irq {
-	unsigned long		gpen;
-	unsigned int		enabled;
-	void			(*enable)(struct group_irq *, int enable);
-};
-
-static DEFINE_SPINLOCK(groupirq_lock);
-
-#define DEFINE_GROUP(_name, _ctrlbit, _num)				\
-struct group_irq group_##_name = {					\
-		.enable		= nuc900_group_enable,			\
-		.gpen		= ((1 << _num) - 1) << _ctrlbit,	\
-	}
-
-static void nuc900_group_enable(struct group_irq *gpirq, int enable);
-
-static DEFINE_GROUP(nirq0, 0, 4);
-static DEFINE_GROUP(nirq1, 4, 4);
-static DEFINE_GROUP(usbh, 8, 2);
-static DEFINE_GROUP(ottimer, 16, 3);
-static DEFINE_GROUP(gdma, 20, 2);
-static DEFINE_GROUP(sc, 24, 2);
-static DEFINE_GROUP(i2c, 26, 2);
-static DEFINE_GROUP(ps2, 28, 2);
-
-static int group_irq_enable(struct group_irq *group_irq)
-{
-	unsigned long flags;
-
-	spin_lock_irqsave(&groupirq_lock, flags);
-	if (group_irq->enabled++ == 0)
-		(group_irq->enable)(group_irq, 1);
-	spin_unlock_irqrestore(&groupirq_lock, flags);
-
-	return 0;
-}
-
-static void group_irq_disable(struct group_irq *group_irq)
-{
-	unsigned long flags;
-
-	WARN_ON(group_irq->enabled == 0);
-
-	spin_lock_irqsave(&groupirq_lock, flags);
-	if (--group_irq->enabled == 0)
-		(group_irq->enable)(group_irq, 0);
-	spin_unlock_irqrestore(&groupirq_lock, flags);
-}
-
-static void nuc900_group_enable(struct group_irq *gpirq, int enable)
-{
-	unsigned int groupen = gpirq->gpen;
-	unsigned long regval;
-
-	regval = __raw_readl(REG_AIC_GEN);
-
-	if (enable)
-		regval |= groupen;
-	else
-		regval &= ~groupen;
-
-	__raw_writel(regval, REG_AIC_GEN);
-}
-
-static void nuc900_irq_mask(struct irq_data *d)
-{
-	struct group_irq *group_irq;
-
-	group_irq = NULL;
-
-	__raw_writel(1 << d->irq, REG_AIC_MDCR);
-
-	switch (d->irq) {
-	case IRQ_GROUP0:
-		group_irq = &group_nirq0;
-		break;
-
-	case IRQ_GROUP1:
-		group_irq = &group_nirq1;
-		break;
-
-	case IRQ_USBH:
-		group_irq = &group_usbh;
-		break;
-
-	case IRQ_T_INT_GROUP:
-		group_irq = &group_ottimer;
-		break;
-
-	case IRQ_GDMAGROUP:
-		group_irq = &group_gdma;
-		break;
-
-	case IRQ_SCGROUP:
-		group_irq = &group_sc;
-		break;
-
-	case IRQ_I2CGROUP:
-		group_irq = &group_i2c;
-		break;
-
-	case IRQ_P2SGROUP:
-		group_irq = &group_ps2;
-		break;
-	}
-
-	if (group_irq)
-		group_irq_disable(group_irq);
-}
-
-/*
- * By the w90p910 spec,any irq,only write 1
- * to REG_AIC_EOSCR for ACK
- */
-
-static void nuc900_irq_ack(struct irq_data *d)
-{
-	__raw_writel(0x01, REG_AIC_EOSCR);
-}
-
-static void nuc900_irq_unmask(struct irq_data *d)
-{
-	struct group_irq *group_irq;
-
-	group_irq = NULL;
-
-	__raw_writel(1 << d->irq, REG_AIC_MECR);
-
-	switch (d->irq) {
-	case IRQ_GROUP0:
-		group_irq = &group_nirq0;
-		break;
-
-	case IRQ_GROUP1:
-		group_irq = &group_nirq1;
-		break;
-
-	case IRQ_USBH:
-		group_irq = &group_usbh;
-		break;
-
-	case IRQ_T_INT_GROUP:
-		group_irq = &group_ottimer;
-		break;
-
-	case IRQ_GDMAGROUP:
-		group_irq = &group_gdma;
-		break;
-
-	case IRQ_SCGROUP:
-		group_irq = &group_sc;
-		break;
-
-	case IRQ_I2CGROUP:
-		group_irq = &group_i2c;
-		break;
-
-	case IRQ_P2SGROUP:
-		group_irq = &group_ps2;
-		break;
-	}
-
-	if (group_irq)
-		group_irq_enable(group_irq);
-}
-
-static struct irq_chip nuc900_irq_chip = {
-	.irq_ack	= nuc900_irq_ack,
-	.irq_mask	= nuc900_irq_mask,
-	.irq_unmask	= nuc900_irq_unmask,
-};
-
-void __init nuc900_init_irq(void)
-{
-	int irqno;
-
-	__raw_writel(0xFFFFFFFE, REG_AIC_MDCR);
-
-	for (irqno = IRQ_WDT; irqno <= IRQ_ADC; irqno++) {
-		irq_set_chip_and_handler(irqno, &nuc900_irq_chip,
-					 handle_level_irq);
-		irq_clear_status_flags(irqno, IRQ_NOREQUEST);
-	}
-}
diff --git a/arch/arm/mach-w90x900/mach-nuc910evb.c b/arch/arm/mach-w90x900/mach-nuc910evb.c
deleted file mode 100644
index e6d30af3e35a..000000000000
--- a/arch/arm/mach-w90x900/mach-nuc910evb.c
+++ /dev/null
@@ -1,38 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/mach-nuc910evb.c
- *
- * Based on mach-s3c2410/mach-smdk2410.c by Jonas Dietsche
- *
- * Copyright (C) 2008 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/platform_device.h>
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-#include <asm/mach-types.h>
-#include <mach/map.h>
-
-#include "nuc910.h"
-
-static void __init nuc910evb_map_io(void)
-{
-	nuc910_map_io();
-	nuc910_init_clocks();
-}
-
-static void __init nuc910evb_init(void)
-{
-	nuc910_board_init();
-}
-
-MACHINE_START(W90P910EVB, "W90P910EVB")
-	/* Maintainer: Wan ZongShun */
-	.map_io		= nuc910evb_map_io,
-	.init_irq	= nuc900_init_irq,
-	.init_machine	= nuc910evb_init,
-	.init_time	= nuc900_timer_init,
-	.restart	= nuc9xx_restart,
-MACHINE_END
diff --git a/arch/arm/mach-w90x900/mach-nuc950evb.c b/arch/arm/mach-w90x900/mach-nuc950evb.c
deleted file mode 100644
index 62547308c344..000000000000
--- a/arch/arm/mach-w90x900/mach-nuc950evb.c
+++ /dev/null
@@ -1,42 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/mach-nuc950evb.c
- *
- * Based on mach-s3c2410/mach-smdk2410.c by Jonas Dietsche
- *
- * Copyright (C) 2008 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- *   history:
- *     Wang Qiang (rurality.linux@gmail.com) add LCD support
- */
-
-#include <linux/platform_device.h>
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-#include <asm/mach-types.h>
-#include <mach/map.h>
-#include <linux/platform_data/video-nuc900fb.h>
-
-#include "nuc950.h"
-
-static void __init nuc950evb_map_io(void)
-{
-	nuc950_map_io();
-	nuc950_init_clocks();
-}
-
-static void __init nuc950evb_init(void)
-{
-	nuc950_board_init();
-}
-
-MACHINE_START(W90P950EVB, "W90P950EVB")
-	/* Maintainer: Wan ZongShun */
-	.map_io		= nuc950evb_map_io,
-	.init_irq	= nuc900_init_irq,
-	.init_machine	= nuc950evb_init,
-	.init_time	= nuc900_timer_init,
-	.restart	= nuc9xx_restart,
-MACHINE_END
diff --git a/arch/arm/mach-w90x900/mach-nuc960evb.c b/arch/arm/mach-w90x900/mach-nuc960evb.c
deleted file mode 100644
index 35a53459d0d2..000000000000
--- a/arch/arm/mach-w90x900/mach-nuc960evb.c
+++ /dev/null
@@ -1,38 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/mach-nuc960evb.c
- *
- * Based on mach-s3c2410/mach-smdk2410.c by Jonas Dietsche
- *
- * Copyright (C) 2008 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/platform_device.h>
-#include <asm/mach/arch.h>
-#include <asm/mach/map.h>
-#include <asm/mach-types.h>
-#include <mach/map.h>
-
-#include "nuc960.h"
-
-static void __init nuc960evb_map_io(void)
-{
-	nuc960_map_io();
-	nuc960_init_clocks();
-}
-
-static void __init nuc960evb_init(void)
-{
-	nuc960_board_init();
-}
-
-MACHINE_START(W90N960EVB, "W90N960EVB")
-	/* Maintainer: Wan ZongShun */
-	.map_io		= nuc960evb_map_io,
-	.init_irq	= nuc900_init_irq,
-	.init_machine	= nuc960evb_init,
-	.init_time	= nuc900_timer_init,
-	.restart	= nuc9xx_restart,
-MACHINE_END
diff --git a/arch/arm/mach-w90x900/mfp.c b/arch/arm/mach-w90x900/mfp.c
deleted file mode 100644
index 05f3779a3618..000000000000
--- a/arch/arm/mach-w90x900/mfp.c
+++ /dev/null
@@ -1,197 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/mfp.c
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/device.h>
-#include <linux/list.h>
-#include <linux/errno.h>
-#include <linux/err.h>
-#include <linux/string.h>
-#include <linux/clk.h>
-#include <linux/mutex.h>
-#include <linux/io.h>
-
-#include <mach/hardware.h>
-
-#define REG_MFSEL	(W90X900_VA_GCR + 0xC)
-
-#define GPSELF		(0x01 << 1)
-#define GPSELC		(0x03 << 2)
-#define GPSELD		(0x0f << 4)
-
-#define GPSELEI0	(0x01 << 26)
-#define GPSELEI1	(0x01 << 27)
-
-#define GPIOG0TO1	(0x03 << 14)
-#define GPIOG2TO3	(0x03 << 16)
-#define GPIOG22TO23	(0x03 << 22)
-#define GPIOG18TO20	(0x07 << 18)
-
-#define ENSPI		(0x0a << 14)
-#define ENI2C0		(0x01 << 14)
-#define ENI2C1		(0x01 << 16)
-#define ENAC97		(0x02 << 22)
-#define ENSD1		(0x02 << 18)
-#define ENSD0		(0x0a << 4)
-#define ENKPI		(0x02 << 2)
-#define ENNAND		(0x01 << 2)
-
-static DEFINE_MUTEX(mfp_mutex);
-
-void mfp_set_groupf(struct device *dev)
-{
-	unsigned long mfpen;
-	const char *dev_id;
-
-	BUG_ON(!dev);
-
-	mutex_lock(&mfp_mutex);
-
-	dev_id = dev_name(dev);
-
-	mfpen = __raw_readl(REG_MFSEL);
-
-	if (strcmp(dev_id, "nuc900-emc") == 0)
-		mfpen |= GPSELF;/*enable mac*/
-	else
-		mfpen &= ~GPSELF;/*GPIOF[9:0]*/
-
-	__raw_writel(mfpen, REG_MFSEL);
-
-	mutex_unlock(&mfp_mutex);
-}
-EXPORT_SYMBOL(mfp_set_groupf);
-
-void mfp_set_groupc(struct device *dev)
-{
-	unsigned long mfpen;
-	const char *dev_id;
-
-	BUG_ON(!dev);
-
-	mutex_lock(&mfp_mutex);
-
-	dev_id = dev_name(dev);
-
-	mfpen = __raw_readl(REG_MFSEL);
-
-	if (strcmp(dev_id, "nuc900-lcd") == 0)
-		mfpen |= GPSELC;/*enable lcd*/
-	else if (strcmp(dev_id, "nuc900-kpi") == 0) {
-		mfpen &= (~GPSELC);/*enable kpi*/
-		mfpen |= ENKPI;
-	} else if (strcmp(dev_id, "nuc900-nand") == 0) {
-		mfpen &= (~GPSELC);/*enable nand*/
-		mfpen |= ENNAND;
-	} else
-		mfpen &= (~GPSELC);/*GPIOC[14:0]*/
-
-	__raw_writel(mfpen, REG_MFSEL);
-
-	mutex_unlock(&mfp_mutex);
-}
-EXPORT_SYMBOL(mfp_set_groupc);
-
-void mfp_set_groupi(struct device *dev)
-{
-	unsigned long mfpen;
-	const char *dev_id;
-
-	BUG_ON(!dev);
-
-	mutex_lock(&mfp_mutex);
-
-	dev_id = dev_name(dev);
-
-	mfpen = __raw_readl(REG_MFSEL);
-
-	mfpen &= ~GPSELEI1;/*default gpio16*/
-
-	if (strcmp(dev_id, "nuc900-wdog") == 0)
-		mfpen |= GPSELEI1;/*enable wdog*/
-	else if (strcmp(dev_id, "nuc900-atapi") == 0)
-		mfpen |= GPSELEI0;/*enable atapi*/
-	else if (strcmp(dev_id, "nuc900-keypad") == 0)
-		mfpen &= ~GPSELEI0;/*enable keypad*/
-
-	__raw_writel(mfpen, REG_MFSEL);
-
-	mutex_unlock(&mfp_mutex);
-}
-EXPORT_SYMBOL(mfp_set_groupi);
-
-void mfp_set_groupg(struct device *dev, const char *subname)
-{
-	unsigned long mfpen;
-	const char *dev_id;
-
-	BUG_ON((!dev) && (!subname));
-
-	mutex_lock(&mfp_mutex);
-
-	if (subname != NULL)
-		dev_id = subname;
-	else
-		dev_id = dev_name(dev);
-
-	mfpen = __raw_readl(REG_MFSEL);
-
-	if (strcmp(dev_id, "nuc900-spi") == 0) {
-		mfpen &= ~(GPIOG0TO1 | GPIOG2TO3);
-		mfpen |= ENSPI;/*enable spi*/
-	} else if (strcmp(dev_id, "nuc900-i2c0") == 0) {
-		mfpen &= ~(GPIOG0TO1);
-		mfpen |= ENI2C0;/*enable i2c0*/
-	} else if (strcmp(dev_id, "nuc900-i2c1") == 0) {
-		mfpen &= ~(GPIOG2TO3);
-		mfpen |= ENI2C1;/*enable i2c1*/
-	} else if (strcmp(dev_id, "nuc900-ac97") == 0) {
-		mfpen &= ~(GPIOG22TO23);
-		mfpen |= ENAC97;/*enable AC97*/
-	} else if (strcmp(dev_id, "nuc900-mmc-port1") == 0) {
-		mfpen &= ~(GPIOG18TO20);
-		mfpen |= (ENSD1 | 0x01);/*enable sd1*/
-	} else {
-		mfpen &= ~(GPIOG0TO1 | GPIOG2TO3);/*GPIOG[3:0]*/
-	}
-
-	__raw_writel(mfpen, REG_MFSEL);
-
-	mutex_unlock(&mfp_mutex);
-}
-EXPORT_SYMBOL(mfp_set_groupg);
-
-void mfp_set_groupd(struct device *dev, const char *subname)
-{
-	unsigned long mfpen;
-	const char *dev_id;
-
-	BUG_ON((!dev) && (!subname));
-
-	mutex_lock(&mfp_mutex);
-
-	if (subname != NULL)
-		dev_id = subname;
-	else
-		dev_id = dev_name(dev);
-
-	mfpen = __raw_readl(REG_MFSEL);
-
-	if (strcmp(dev_id, "nuc900-mmc-port0") == 0) {
-		mfpen &= ~GPSELD;/*enable sd0*/
-		mfpen |= ENSD0;
-	} else
-		mfpen &= (~GPSELD);
-
-	__raw_writel(mfpen, REG_MFSEL);
-
-	mutex_unlock(&mfp_mutex);
-}
-EXPORT_SYMBOL(mfp_set_groupd);
diff --git a/arch/arm/mach-w90x900/nuc910.c b/arch/arm/mach-w90x900/nuc910.c
deleted file mode 100644
index 45ae8285bfc9..000000000000
--- a/arch/arm/mach-w90x900/nuc910.c
+++ /dev/null
@@ -1,58 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/nuc910.c
- *
- * Based on linux/arch/arm/plat-s3c24xx/s3c244x.c by Ben Dooks
- *
- * Copyright (c) 2009 Nuvoton corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * NUC910 cpu support
- */
-
-#include <linux/platform_device.h>
-#include <asm/mach/map.h>
-#include <mach/hardware.h>
-#include "cpu.h"
-#include "clock.h"
-
-/* define specific CPU platform device */
-
-static struct platform_device *nuc910_dev[] __initdata = {
-	&nuc900_device_ts,
-	&nuc900_device_rtc,
-	&nuc900_device_lcd,
-	&nuc900_device_kpi,
-};
-
-/* define specific CPU platform io map */
-
-static struct map_desc nuc910evb_iodesc[] __initdata = {
-	IODESC_ENT(USBEHCIHOST),
-	IODESC_ENT(USBOHCIHOST),
-	IODESC_ENT(KPI),
-	IODESC_ENT(USBDEV),
-	IODESC_ENT(ADC),
-};
-
-/*Init NUC910 evb io*/
-
-void __init nuc910_map_io(void)
-{
-	nuc900_map_io(nuc910evb_iodesc, ARRAY_SIZE(nuc910evb_iodesc));
-}
-
-/*Init NUC910 clock*/
-
-void __init nuc910_init_clocks(void)
-{
-	nuc900_init_clocks();
-}
-
-/*Init NUC910 board info*/
-
-void __init nuc910_board_init(void)
-{
-	nuc900_board_init(nuc910_dev, ARRAY_SIZE(nuc910_dev));
-}
diff --git a/arch/arm/mach-w90x900/nuc910.h b/arch/arm/mach-w90x900/nuc910.h
deleted file mode 100644
index 53be3323736f..000000000000
--- a/arch/arm/mach-w90x900/nuc910.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/nuc910.h
- *
- * Copyright (c) 2008 Nuvoton corporation
- *
- * Header file for NUC900 CPU support
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-#include "nuc9xx.h"
-
-/* extern file from nuc910.c */
-
-extern void nuc910_board_init(void);
-extern void nuc910_init_clocks(void);
-extern void nuc910_map_io(void);
diff --git a/arch/arm/mach-w90x900/nuc950.c b/arch/arm/mach-w90x900/nuc950.c
deleted file mode 100644
index 3be114249cd8..000000000000
--- a/arch/arm/mach-w90x900/nuc950.c
+++ /dev/null
@@ -1,52 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/nuc950.c
- *
- * Based on linux/arch/arm/plat-s3c24xx/s3c244x.c by Ben Dooks
- *
- * Copyright (c) 2008 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * NUC950 cpu support
- */
-
-#include <linux/platform_device.h>
-#include <asm/mach/map.h>
-#include <mach/hardware.h>
-
-#include "cpu.h"
-
-/* define specific CPU platform device */
-
-static struct platform_device *nuc950_dev[] __initdata = {
-	&nuc900_device_kpi,
-	&nuc900_device_fmi,
-	&nuc900_device_lcd,
-};
-
-/* define specific CPU platform io map */
-
-static struct map_desc nuc950evb_iodesc[] __initdata = {
-};
-
-/*Init NUC950 evb io*/
-
-void __init nuc950_map_io(void)
-{
-	nuc900_map_io(nuc950evb_iodesc, ARRAY_SIZE(nuc950evb_iodesc));
-}
-
-/*Init NUC950 clock*/
-
-void __init nuc950_init_clocks(void)
-{
-	nuc900_init_clocks();
-}
-
-/*Init NUC950 board info*/
-
-void __init nuc950_board_init(void)
-{
-	nuc900_board_init(nuc950_dev, ARRAY_SIZE(nuc950_dev));
-}
diff --git a/arch/arm/mach-w90x900/nuc950.h b/arch/arm/mach-w90x900/nuc950.h
deleted file mode 100644
index 23cff81ea630..000000000000
--- a/arch/arm/mach-w90x900/nuc950.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/nuc950.h
- *
- * Copyright (c) 2008 Nuvoton corporation
- *
- * Header file for NUC900 CPU support
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-#include "nuc9xx.h"
-
-/* extern file from nuc950.c */
-
-extern void nuc950_board_init(void);
-extern void nuc950_init_clocks(void);
-extern void nuc950_map_io(void);
diff --git a/arch/arm/mach-w90x900/nuc960.c b/arch/arm/mach-w90x900/nuc960.c
deleted file mode 100644
index 8a27d74b975e..000000000000
--- a/arch/arm/mach-w90x900/nuc960.c
+++ /dev/null
@@ -1,50 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-w90x900/nuc960.c
- *
- * Based on linux/arch/arm/plat-s3c24xx/s3c244x.c by Ben Dooks
- *
- * Copyright (c) 2008 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * NUC960 cpu support
- */
-
-#include <linux/platform_device.h>
-#include <asm/mach/map.h>
-#include <mach/hardware.h>
-#include "cpu.h"
-
-/* define specific CPU platform device */
-
-static struct platform_device *nuc960_dev[] __initdata = {
-	&nuc900_device_kpi,
-	&nuc900_device_fmi,
-};
-
-/* define specific CPU platform io map */
-
-static struct map_desc nuc960evb_iodesc[] __initdata = {
-};
-
-/*Init NUC960 evb io*/
-
-void __init nuc960_map_io(void)
-{
-	nuc900_map_io(nuc960evb_iodesc, ARRAY_SIZE(nuc960evb_iodesc));
-}
-
-/*Init NUC960 clock*/
-
-void __init nuc960_init_clocks(void)
-{
-	nuc900_init_clocks();
-}
-
-/*Init NUC960 board info*/
-
-void __init nuc960_board_init(void)
-{
-	nuc900_board_init(nuc960_dev, ARRAY_SIZE(nuc960_dev));
-}
diff --git a/arch/arm/mach-w90x900/nuc960.h b/arch/arm/mach-w90x900/nuc960.h
deleted file mode 100644
index 88bb13c971dc..000000000000
--- a/arch/arm/mach-w90x900/nuc960.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/nuc960.h
- *
- * Copyright (c) 2008 Nuvoton corporation
- *
- * Header file for NUC900 CPU support
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-#include "nuc9xx.h"
-
-/* extern file from nuc960.c */
-
-extern void nuc960_board_init(void);
-extern void nuc960_init_clocks(void);
-extern void nuc960_map_io(void);
diff --git a/arch/arm/mach-w90x900/nuc9xx.h b/arch/arm/mach-w90x900/nuc9xx.h
deleted file mode 100644
index 21f6f9c304e8..000000000000
--- a/arch/arm/mach-w90x900/nuc9xx.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/nuc9xx.h
- *
- * Copied from nuc910.h, which had:
- *
- * Copyright (c) 2008 Nuvoton corporation
- *
- * Header file for NUC900 CPU support
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/reboot.h>
-
-struct map_desc;
-
-/* core initialisation functions */
-
-extern void nuc900_init_irq(void);
-extern void nuc900_timer_init(void);
-extern void nuc9xx_restart(enum reboot_mode, const char *);
diff --git a/arch/arm/mach-w90x900/regs-ebi.h b/arch/arm/mach-w90x900/regs-ebi.h
deleted file mode 100644
index 3fb22702cfc0..000000000000
--- a/arch/arm/mach-w90x900/regs-ebi.h
+++ /dev/null
@@ -1,29 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/include/mach/regs-ebi.h
- *
- * Copyright (c) 2009 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#ifndef __ASM_ARCH_REGS_EBI_H
-#define __ASM_ARCH_REGS_EBI_H
-
-/* EBI Control Registers */
-
-#define EBI_BA		W90X900_VA_EBI
-#define REG_EBICON	(EBI_BA + 0x00)
-#define REG_ROMCON	(EBI_BA + 0x04)
-#define REG_SDCONF0	(EBI_BA + 0x08)
-#define REG_SDCONF1	(EBI_BA + 0x0C)
-#define REG_SDTIME0	(EBI_BA + 0x10)
-#define REG_SDTIME1	(EBI_BA + 0x14)
-#define REG_EXT0CON	(EBI_BA + 0x18)
-#define REG_EXT1CON	(EBI_BA + 0x1C)
-#define REG_EXT2CON	(EBI_BA + 0x20)
-#define REG_EXT3CON	(EBI_BA + 0x24)
-#define REG_EXT4CON	(EBI_BA + 0x28)
-#define REG_CKSKEW	(EBI_BA + 0x2C)
-
-#endif /*  __ASM_ARCH_REGS_EBI_H */
diff --git a/arch/arm/mach-w90x900/regs-gcr.h b/arch/arm/mach-w90x900/regs-gcr.h
deleted file mode 100644
index caf1090ecad8..000000000000
--- a/arch/arm/mach-w90x900/regs-gcr.h
+++ /dev/null
@@ -1,34 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-w90x900/include/mach/regs-gcr.h
- *
- * Copyright (c) 2010 Nuvoton technology corporation
- * All rights reserved.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#ifndef __ASM_ARCH_REGS_GCR_H
-#define __ASM_ARCH_REGS_GCR_H
-
-/* Global control registers */
-
-#define GCR_BA		W90X900_VA_GCR
-#define REG_PDID	(GCR_BA+0x000)
-#define REG_PWRON	(GCR_BA+0x004)
-#define REG_ARBCON	(GCR_BA+0x008)
-#define REG_MFSEL	(GCR_BA+0x00C)
-#define REG_EBIDPE	(GCR_BA+0x010)
-#define REG_LCDDPE	(GCR_BA+0x014)
-#define REG_GPIOCPE	(GCR_BA+0x018)
-#define REG_GPIODPE	(GCR_BA+0x01C)
-#define REG_GPIOEPE	(GCR_BA+0x020)
-#define REG_GPIOFPE	(GCR_BA+0x024)
-#define REG_GPIOGPE	(GCR_BA+0x028)
-#define REG_GPIOHPE	(GCR_BA+0x02C)
-#define REG_GPIOIPE	(GCR_BA+0x030)
-#define REG_GTMP1	(GCR_BA+0x034)
-#define REG_GTMP2	(GCR_BA+0x038)
-#define REG_GTMP3	(GCR_BA+0x03C)
-
-#endif /*  __ASM_ARCH_REGS_GCR_H */
diff --git a/arch/arm/mach-w90x900/regs-timer.h b/arch/arm/mach-w90x900/regs-timer.h
deleted file mode 100644
index d12807fd1e3e..000000000000
--- a/arch/arm/mach-w90x900/regs-timer.h
+++ /dev/null
@@ -1,37 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-w90x900/include/mach/regs-timer.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation
- * All rights reserved.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- *
- * Based on arch/arm/mach-s3c2410/include/mach/regs-timer.h
- */
-
-#ifndef __ASM_ARCH_REGS_TIMER_H
-#define __ASM_ARCH_REGS_TIMER_H
-
-/* Timer Registers */
-
-#define TMR_BA			W90X900_VA_TIMER
-#define REG_TCSR0		(TMR_BA+0x00)
-#define REG_TCSR1		(TMR_BA+0x04)
-#define REG_TICR0		(TMR_BA+0x08)
-#define REG_TICR1		(TMR_BA+0x0C)
-#define REG_TDR0		(TMR_BA+0x10)
-#define REG_TDR1		(TMR_BA+0x14)
-#define REG_TISR		(TMR_BA+0x18)
-#define REG_WTCR		(TMR_BA+0x1C)
-#define REG_TCSR2		(TMR_BA+0x20)
-#define REG_TCSR3		(TMR_BA+0x24)
-#define REG_TICR2		(TMR_BA+0x28)
-#define REG_TICR3		(TMR_BA+0x2C)
-#define REG_TDR2		(TMR_BA+0x30)
-#define REG_TDR3		(TMR_BA+0x34)
-#define REG_TCSR4		(TMR_BA+0x40)
-#define REG_TICR4		(TMR_BA+0x48)
-#define REG_TDR4		(TMR_BA+0x50)
-
-#endif /*  __ASM_ARCH_REGS_TIMER_H */
diff --git a/arch/arm/mach-w90x900/regs-usb.h b/arch/arm/mach-w90x900/regs-usb.h
deleted file mode 100644
index 98046c811bf7..000000000000
--- a/arch/arm/mach-w90x900/regs-usb.h
+++ /dev/null
@@ -1,31 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-w90x900/include/mach/regs-usb.h
- *
- * Copyright (c) 2008 Nuvoton technology corporation.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#ifndef __ASM_ARCH_REGS_USB_H
-#define __ASM_ARCH_REGS_USB_H
-
-/* usb Control Registers  */
-#define USBH_BA		W90X900_VA_USBEHCIHOST
-#define USBD_BA		W90X900_VA_USBDEV
-#define USBO_BA		W90X900_VA_USBOHCIHOST
-
-/* USB Host Control Registers */
-#define REG_UPSCR0	(USBH_BA+0x064)
-#define REG_UPSCR1	(USBH_BA+0x068)
-#define REG_USBPCR0	(USBH_BA+0x0C4)
-#define REG_USBPCR1	(USBH_BA+0x0C8)
-
-/* USBH OHCI Control Registers */
-#define REG_OpModEn	(USBO_BA+0x204)
-/*This bit controls the polarity of over
-*current flag from external power IC.
-*/
-#define OCALow		0x08
-
-#endif /*  __ASM_ARCH_REGS_USB_H */
diff --git a/arch/arm/mach-w90x900/time.c b/arch/arm/mach-w90x900/time.c
deleted file mode 100644
index dd20fab9a960..000000000000
--- a/arch/arm/mach-w90x900/time.c
+++ /dev/null
@@ -1,168 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * linux/arch/arm/mach-w90x900/time.c
- *
- * Based on linux/arch/arm/plat-s3c24xx/time.c by Ben Dooks
- *
- * Copyright (c) 2009 Nuvoton technology corporation
- * All rights reserved.
- *
- * Wan ZongShun <mcuos.com@gmail.com>
- */
-
-#include <linux/kernel.h>
-#include <linux/sched.h>
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/err.h>
-#include <linux/clk.h>
-#include <linux/io.h>
-#include <linux/leds.h>
-#include <linux/clocksource.h>
-#include <linux/clockchips.h>
-
-#include <asm/mach-types.h>
-#include <asm/mach/irq.h>
-#include <asm/mach/time.h>
-
-#include <mach/map.h>
-#include "regs-timer.h"
-
-#include "nuc9xx.h"
-
-#define RESETINT	0x1f
-#define PERIOD		(0x01 << 27)
-#define ONESHOT		(0x00 << 27)
-#define COUNTEN		(0x01 << 30)
-#define INTEN		(0x01 << 29)
-
-#define TICKS_PER_SEC	100
-#define PRESCALE	0x63 /* Divider = prescale + 1 */
-
-#define	TDR_SHIFT	24
-
-static unsigned int timer0_load;
-
-static int nuc900_clockevent_shutdown(struct clock_event_device *evt)
-{
-	unsigned int val = __raw_readl(REG_TCSR0) & ~(0x03 << 27);
-
-	__raw_writel(val, REG_TCSR0);
-	return 0;
-}
-
-static int nuc900_clockevent_set_oneshot(struct clock_event_device *evt)
-{
-	unsigned int val = __raw_readl(REG_TCSR0) & ~(0x03 << 27);
-
-	val |= (ONESHOT | COUNTEN | INTEN | PRESCALE);
-
-	__raw_writel(val, REG_TCSR0);
-	return 0;
-}
-
-static int nuc900_clockevent_set_periodic(struct clock_event_device *evt)
-{
-	unsigned int val = __raw_readl(REG_TCSR0) & ~(0x03 << 27);
-
-	__raw_writel(timer0_load, REG_TICR0);
-	val |= (PERIOD | COUNTEN | INTEN | PRESCALE);
-	__raw_writel(val, REG_TCSR0);
-	return 0;
-}
-
-static int nuc900_clockevent_setnextevent(unsigned long evt,
-		struct clock_event_device *clk)
-{
-	unsigned int val;
-
-	__raw_writel(evt, REG_TICR0);
-
-	val = __raw_readl(REG_TCSR0);
-	val |= (COUNTEN | INTEN | PRESCALE);
-	__raw_writel(val, REG_TCSR0);
-
-	return 0;
-}
-
-static struct clock_event_device nuc900_clockevent_device = {
-	.name			= "nuc900-timer0",
-	.features		= CLOCK_EVT_FEAT_PERIODIC |
-				  CLOCK_EVT_FEAT_ONESHOT,
-	.set_state_shutdown	= nuc900_clockevent_shutdown,
-	.set_state_periodic	= nuc900_clockevent_set_periodic,
-	.set_state_oneshot	= nuc900_clockevent_set_oneshot,
-	.tick_resume		= nuc900_clockevent_shutdown,
-	.set_next_event		= nuc900_clockevent_setnextevent,
-	.rating			= 300,
-};
-
-/*IRQ handler for the timer*/
-
-static irqreturn_t nuc900_timer0_interrupt(int irq, void *dev_id)
-{
-	struct clock_event_device *evt = &nuc900_clockevent_device;
-
-	__raw_writel(0x01, REG_TISR); /* clear TIF0 */
-
-	evt->event_handler(evt);
-	return IRQ_HANDLED;
-}
-
-static struct irqaction nuc900_timer0_irq = {
-	.name		= "nuc900-timer0",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= nuc900_timer0_interrupt,
-};
-
-static void __init nuc900_clockevents_init(void)
-{
-	unsigned int rate;
-	struct clk *clk = clk_get(NULL, "timer0");
-
-	BUG_ON(IS_ERR(clk));
-
-	__raw_writel(0x00, REG_TCSR0);
-
-	clk_enable(clk);
-	rate = clk_get_rate(clk) / (PRESCALE + 1);
-
-	timer0_load = (rate / TICKS_PER_SEC);
-
-	__raw_writel(RESETINT, REG_TISR);
-	setup_irq(IRQ_TIMER0, &nuc900_timer0_irq);
-
-	nuc900_clockevent_device.cpumask = cpumask_of(0);
-
-	clockevents_config_and_register(&nuc900_clockevent_device, rate,
-					0xf, 0xffffffff);
-}
-
-static void __init nuc900_clocksource_init(void)
-{
-	unsigned int val;
-	unsigned int rate;
-	struct clk *clk = clk_get(NULL, "timer1");
-
-	BUG_ON(IS_ERR(clk));
-
-	__raw_writel(0x00, REG_TCSR1);
-
-	clk_enable(clk);
-	rate = clk_get_rate(clk) / (PRESCALE + 1);
-
-	__raw_writel(0xffffffff, REG_TICR1);
-
-	val = __raw_readl(REG_TCSR1);
-	val |= (COUNTEN | PERIOD | PRESCALE);
-	__raw_writel(val, REG_TCSR1);
-
-	clocksource_mmio_init(REG_TDR1, "nuc900-timer1", rate, 200,
-		TDR_SHIFT, clocksource_mmio_readl_down);
-}
-
-void __init nuc900_timer_init(void)
-{
-	nuc900_clocksource_init();
-	nuc900_clockevents_init();
-}
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
