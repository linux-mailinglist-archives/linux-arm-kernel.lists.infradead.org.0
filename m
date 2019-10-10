Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B284D3228
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xqzjy93ZscHdVScMwmJoc2xmxDzllat0QdVjqi519DM=; b=XqxxzsGPlB9kGr
	AmWVOC/m7fHHz95OOO0HEe6dSLQFhrT9j1Z/DjjkZBMMePMZ0PNlOnnESk50drH8v2lB+KwDRbtdP
	yKSjmnk9oWUgN8Cmbqa8bZP8wgtGKLgLo+Tdu8OeioP5pRYTnKCwVE92RzMb9nqT7/iiCHtF/ZUld
	kLQOG1y4Lm2RzUBB0lN7D7g0A4/yJFxTomPCvmaHqK2THqJfA/1hLt5xZ9k8G1558hBfLt4eyloFW
	vJNTFjcH7jOk2L8vx9OhSMgnOZokvXuHjrSl6r+kQtFyjXfw/QMjQ3x2JBdANsf5k4Xzq8UxsS+vk
	PB96F8Y996piK7r8CMHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfAP-0005Qm-D4; Thu, 10 Oct 2019 20:36:09 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfAE-0005Q8-6z
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:36:00 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N7gfa-1i4rQr2Dv0-014nhA; Thu, 10 Oct 2019 22:35:51 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>
Subject: [PATCH 09/36] ARM: samsung: move pm check code to drivers/soc
Date: Thu, 10 Oct 2019 22:29:53 +0200
Message-Id: <20191010203043.1241612-9-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:K7Pp8lz4oEGFgdpuLCrdq/vsf/YBGIb6Lw7G2f0vWzebgPoLyzT
 1AQm8/sarFF2+QJFLMgdyUDqRsJnVhIyLUi09fcmq3MPCpVO1grWYDCu9LwnymGpXPxgS/Z
 4wgWrgKIPk1prkmEtPoLMOinYWnZmYh7qPIGGxSVdI45oP7N29+jE3tWa86Uz73j1J4QzvZ
 gSBwdx5VY+qcmadk/GdPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rwC7bMXZlVo=:GXnt7mvTtQyD56sqmJrpuq
 ypSf2LDJw5ag8E57yiPKCWm4Zwe7RRw0hZU+QrFB1rhhxAUU93HRrHCf51Hl+li/ZMQraJyoO
 bCo0liU8PEs3z3m5VGKAs1bmAzN7x3Fe+nsrq6XWf28XwZEXMoj7Dfb7eoUCdp9ts3ozxoZdV
 IvnTQtudLnMD1QT/eGgYQBnfGde3c9zVVorrMdx/f0YYNtpdrLk5mCBCSGnkN1eMN5NBB9Ks9
 LxijrvVD0I2j49knvFigWZSTt7NVILW8imVNYLaZhDWEzYYEurHmsNDrY4GaStXCuQDH6xISI
 MmzbPDqx6Af4MU4ypGurANAThZtCFszuaziPfn9QlrpRZ1GcggiiTWGGv0TyzB0XMW5JdKTFq
 hdUTFTf1gW1BWnSoN+2iUOecCevF/SvzW+WxpVnSttz9F6FM7XAY789vbc2N45z5XUzaKhJk1
 JigFqCrAy1kpLYiWH7y6F5Xy2bcVm1taMk+hUJzG6LhLx8KxwaPdoj2o3qHuqvKkUbqBSCsyB
 Dmmp/Qj1L0hEvV4XeEgrn2xPxfpUpBc2H1SW6oZuStEgCtxy6bmQh8TOej1Ei620KLnvEYZTg
 WBcOEvkRfh0ZBR2IfJXnN4yxyp6FmCmVFfd5tO1h9LIvp++r9Kl0zsnkJj4l4ZcW63nv8tj2N
 7gdH094UgNeHITbPDPzrVCuvczjh0nC6qePY4hRITY6aEjxdNkJTT9hJR5tji/+Ic67kInjv6
 v7jHo5Yjh8AOaCInoYqwENVVtP0kxkb/LEKmyTpBgsbNMTmA8hs9w+X/M9WAMGrUkEi5tyfzC
 jxc1SN7Zf8zYR8svo8gwiNhXQTOEA8duVBvQFV/qsYy8FBSbABcgXMwNWBZZmdsb5BtiPEf0c
 s32cQ5bAuTJZGJ4DRAQw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133558_548443_74122F08 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pankaj Dubey <pankaj.dubey@samsung.com>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the only part of plat-samsung that is really
shared between the s3c and s5p ports. Moving it to
drivers/soc/ lets us make them completely independent.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s5pv210/Kconfig                 |  1 +
 arch/arm/plat-samsung/Kconfig                 | 49 +----------
 arch/arm/plat-samsung/Makefile                |  2 -
 .../arm/plat-samsung/include/plat/pm-common.h | 70 +---------------
 drivers/soc/samsung/Kconfig                   | 48 ++++++++++-
 drivers/soc/samsung/Makefile                  |  3 +
 .../soc/samsung/s3c-pm-check.c                |  2 +-
 .../soc/samsung/s3c-pm-debug.c                |  3 +-
 include/linux/soc/samsung/s3c-pm.h            | 84 +++++++++++++++++++
 9 files changed, 139 insertions(+), 123 deletions(-)
 rename arch/arm/plat-samsung/pm-check.c => drivers/soc/samsung/s3c-pm-check.c (99%)
 rename arch/arm/plat-samsung/pm-debug.c => drivers/soc/samsung/s3c-pm-debug.c (97%)
 create mode 100644 include/linux/soc/samsung/s3c-pm.h

diff --git a/arch/arm/mach-s5pv210/Kconfig b/arch/arm/mach-s5pv210/Kconfig
index 03984a791879..d2b0e64bad7e 100644
--- a/arch/arm/mach-s5pv210/Kconfig
+++ b/arch/arm/mach-s5pv210/Kconfig
@@ -18,6 +18,7 @@ config ARCH_S5PV210
 	select HAVE_S3C_RTC if RTC_CLASS
 	select PINCTRL
 	select PINCTRL_EXYNOS
+	select SOC_SAMSUNG
 	help
 	  Samsung S5PV210/S5PC110 series based systems
 
diff --git a/arch/arm/plat-samsung/Kconfig b/arch/arm/plat-samsung/Kconfig
index e31a156a27df..740bdb23f38a 100644
--- a/arch/arm/plat-samsung/Kconfig
+++ b/arch/arm/plat-samsung/Kconfig
@@ -8,6 +8,7 @@ config PLAT_SAMSUNG
 	default y
 	select GENERIC_IRQ_CHIP
 	select NO_IOPORT_MAP
+	select SOC_SAMSUNG
 	help
 	  Base platform code for all Samsung SoC based systems
 
@@ -234,54 +235,6 @@ config SAMSUNG_PM_GPIO
 	  pinctrl-samsung driver.
 endif
 
-comment "Power management"
-
-config SAMSUNG_PM_DEBUG
-	bool "Samsung PM Suspend debug"
-	depends on PM && DEBUG_KERNEL
-	depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210
-	depends on DEBUG_S3C24XX_UART || DEBUG_S3C2410_UART
-	help
-	  Say Y here if you want verbose debugging from the PM Suspend and
-	  Resume code. See <file:Documentation/arm/samsung-s3c24xx/suspend.rst>
-	  for more information.
-
-config S3C_PM_DEBUG_LED_SMDK
-       bool "SMDK LED suspend/resume debugging"
-       depends on PM && (MACH_SMDK6410)
-       help
-         Say Y here to enable the use of the SMDK LEDs on the baseboard
-	 for debugging of the state of the suspend and resume process.
-
-	 Note, this currently only works for S3C64XX based SMDK boards.
-
-config SAMSUNG_PM_CHECK
-	bool "S3C2410 PM Suspend Memory CRC"
-	depends on PM && (PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210)
-	select CRC32
-	help
-	  Enable the PM code's memory area checksum over sleep. This option
-	  will generate CRCs of all blocks of memory, and store them before
-	  going to sleep. The blocks are then checked on resume for any
-	  errors.
-
-	  Note, this can take several seconds depending on memory size
-	  and CPU speed.
-
-	  See <file:Documentation/arm/samsung-s3c24xx/suspend.rst>
-
-config SAMSUNG_PM_CHECK_CHUNKSIZE
-	int "S3C2410 PM Suspend CRC Chunksize (KiB)"
-	depends on PM && SAMSUNG_PM_CHECK
-	default 64
-	help
-	  Set the chunksize in Kilobytes of the CRC for checking memory
-	  corruption over suspend and resume. A smaller value will mean that
-	  the CRC data block will take more memory, but will identify any
-	  faults with better precision.
-
-	  See <file:Documentation/arm/samsung-s3c24xx/suspend.rst>
-
 config SAMSUNG_WAKEMASK
 	bool
 	depends on PM
diff --git a/arch/arm/plat-samsung/Makefile b/arch/arm/plat-samsung/Makefile
index 3db9d2c38258..d88b9b84f3a9 100644
--- a/arch/arm/plat-samsung/Makefile
+++ b/arch/arm/plat-samsung/Makefile
@@ -28,8 +28,6 @@ obj-$(CONFIG_PM_SLEEP)		+= pm-common.o
 obj-$(CONFIG_EXYNOS_CPU_SUSPEND) += pm-common.o
 obj-$(CONFIG_SAMSUNG_PM)	+= pm.o
 obj-$(CONFIG_SAMSUNG_PM_GPIO)	+= pm-gpio.o
-obj-$(CONFIG_SAMSUNG_PM_CHECK)	+= pm-check.o
-obj-$(CONFIG_SAMSUNG_PM_DEBUG)	+= pm-debug.o
 
 obj-$(CONFIG_SAMSUNG_WAKEMASK)	+= wakeup-mask.o
 obj-$(CONFIG_SAMSUNG_WDT_RESET)	+= watchdog-reset.o
diff --git a/arch/arm/plat-samsung/include/plat/pm-common.h b/arch/arm/plat-samsung/include/plat/pm-common.h
index 87fa97fd6e8b..18b9607e1e39 100644
--- a/arch/arm/plat-samsung/include/plat/pm-common.h
+++ b/arch/arm/plat-samsung/include/plat/pm-common.h
@@ -11,6 +11,7 @@
 #define __PLAT_SAMSUNG_PM_COMMON_H __FILE__
 
 #include <linux/irq.h>
+#include <linux/soc/samsung/s3c-pm.h>
 
 /* sleep save info */
 
@@ -36,73 +37,4 @@ extern void s3c_pm_do_save(struct sleep_save *ptr, int count);
 extern void s3c_pm_do_restore(const struct sleep_save *ptr, int count);
 extern void s3c_pm_do_restore_core(const struct sleep_save *ptr, int count);
 
-/* PM debug functions */
-
-/**
- * struct pm_uart_save - save block for core UART
- * @ulcon: Save value for S3C2410_ULCON
- * @ucon: Save value for S3C2410_UCON
- * @ufcon: Save value for S3C2410_UFCON
- * @umcon: Save value for S3C2410_UMCON
- * @ubrdiv: Save value for S3C2410_UBRDIV
- *
- * Save block for UART registers to be held over sleep and restored if they
- * are needed (say by debug).
-*/
-struct pm_uart_save {
-	u32	ulcon;
-	u32	ucon;
-	u32	ufcon;
-	u32	umcon;
-	u32	ubrdiv;
-	u32	udivslot;
-};
-
-#ifdef CONFIG_SAMSUNG_PM_DEBUG
-/**
- * s3c_pm_dbg() - low level debug function for use in suspend/resume.
- * @msg: The message to print.
- *
- * This function is used mainly to debug the resume process before the system
- * can rely on printk/console output. It uses the low-level debugging output
- * routine printascii() to do its work.
- */
-extern void s3c_pm_dbg(const char *msg, ...);
-
-#define S3C_PMDBG(fmt...) s3c_pm_dbg(fmt)
-
-extern void s3c_pm_save_uarts(bool is_s3c24xx);
-extern void s3c_pm_restore_uarts(bool is_s3c24xx);
-
-#ifdef CONFIG_ARCH_S3C64XX
-extern void s3c_pm_arch_update_uart(void __iomem *regs,
-				    struct pm_uart_save *save);
-#else
-static inline void
-s3c_pm_arch_update_uart(void __iomem *regs, struct pm_uart_save *save)
-{
-}
-#endif
-
-#else
-#define S3C_PMDBG(fmt...) pr_debug(fmt)
-
-static inline void s3c_pm_save_uarts(bool is_s3c24xx) { }
-static inline void s3c_pm_restore_uarts(bool is_s3c24xx) { }
-#endif
-
-/* suspend memory checking */
-
-#ifdef CONFIG_SAMSUNG_PM_CHECK
-extern void s3c_pm_check_prepare(void);
-extern void s3c_pm_check_restore(void);
-extern void s3c_pm_check_cleanup(void);
-extern void s3c_pm_check_store(void);
-#else
-#define s3c_pm_check_prepare() do { } while (0)
-#define s3c_pm_check_restore() do { } while (0)
-#define s3c_pm_check_cleanup() do { } while (0)
-#define s3c_pm_check_store()   do { } while (0)
-#endif
-
 #endif
diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
index 33ad0de2de3c..0ea7402ffba3 100644
--- a/drivers/soc/samsung/Kconfig
+++ b/drivers/soc/samsung/Kconfig
@@ -25,6 +25,52 @@ config EXYNOS_PMU_ARM_DRIVERS
 
 config EXYNOS_PM_DOMAINS
 	bool "Exynos PM domains" if COMPILE_TEST
-	depends on PM_GENERIC_DOMAINS || COMPILE_TEST
+	depends on (ARCH_EXYNOS && PM_GENERIC_DOMAINS) || COMPILE_TEST
+
+config SAMSUNG_PM_DEBUG
+	bool "Samsung PM Suspend debug"
+	depends on PM && DEBUG_KERNEL
+	depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210
+	depends on DEBUG_S3C24XX_UART || DEBUG_S3C2410_UART
+	help
+	  Say Y here if you want verbose debugging from the PM Suspend and
+	  Resume code. See <file:Documentation/arm/samsung-s3c24xx/suspend.rst>
+	  for more information.
+
+config S3C_PM_DEBUG_LED_SMDK
+       bool "SMDK LED suspend/resume debugging"
+       depends on PM && (MACH_SMDK6410)
+       help
+         Say Y here to enable the use of the SMDK LEDs on the baseboard
+	 for debugging of the state of the suspend and resume process.
+
+	 Note, this currently only works for S3C64XX based SMDK boards.
+
+config SAMSUNG_PM_CHECK
+	bool "S3C2410 PM Suspend Memory CRC"
+	depends on PM && (PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210)
+	select CRC32
+	help
+	  Enable the PM code's memory area checksum over sleep. This option
+	  will generate CRCs of all blocks of memory, and store them before
+	  going to sleep. The blocks are then checked on resume for any
+	  errors.
+
+	  Note, this can take several seconds depending on memory size
+	  and CPU speed.
+
+	  See <file:Documentation/arm/samsung-s3c24xx/suspend.rst>
+
+config SAMSUNG_PM_CHECK_CHUNKSIZE
+	int "S3C2410 PM Suspend CRC Chunksize (KiB)"
+	depends on PM && SAMSUNG_PM_CHECK
+	default 64
+	help
+	  Set the chunksize in Kilobytes of the CRC for checking memory
+	  corruption over suspend and resume. A smaller value will mean that
+	  the CRC data block will take more memory, but will identify any
+	  faults with better precision.
+
+	  See <file:Documentation/arm/samsung-s3c24xx/suspend.rst>
 
 endif
diff --git a/drivers/soc/samsung/Makefile b/drivers/soc/samsung/Makefile
index 3b6a8797416c..88ae7a522055 100644
--- a/drivers/soc/samsung/Makefile
+++ b/drivers/soc/samsung/Makefile
@@ -6,3 +6,6 @@ obj-$(CONFIG_EXYNOS_PMU)	+= exynos-pmu.o
 obj-$(CONFIG_EXYNOS_PMU_ARM_DRIVERS)	+= exynos3250-pmu.o exynos4-pmu.o \
 					exynos5250-pmu.o exynos5420-pmu.o
 obj-$(CONFIG_EXYNOS_PM_DOMAINS) += pm_domains.o
+
+obj-$(CONFIG_SAMSUNG_PM_CHECK)	+= s3c-pm-check.o
+obj-$(CONFIG_SAMSUNG_PM_DEBUG)	+= s3c-pm-debug.o
diff --git a/arch/arm/plat-samsung/pm-check.c b/drivers/soc/samsung/s3c-pm-check.c
similarity index 99%
rename from arch/arm/plat-samsung/pm-check.c
rename to drivers/soc/samsung/s3c-pm-check.c
index cd2c02c68bc3..ff3e099fc208 100644
--- a/arch/arm/plat-samsung/pm-check.c
+++ b/drivers/soc/samsung/s3c-pm-check.c
@@ -15,7 +15,7 @@
 #include <linux/ioport.h>
 #include <linux/slab.h>
 
-#include <plat/pm-common.h>
+#include <linux/soc/samsung/s3c-pm.h>
 
 #if CONFIG_SAMSUNG_PM_CHECK_CHUNKSIZE < 1
 #error CONFIG_SAMSUNG_PM_CHECK_CHUNKSIZE must be a positive non-zero value
diff --git a/arch/arm/plat-samsung/pm-debug.c b/drivers/soc/samsung/s3c-pm-debug.c
similarity index 97%
rename from arch/arm/plat-samsung/pm-debug.c
rename to drivers/soc/samsung/s3c-pm-debug.c
index 482d53753e93..b5ce0e9a41e5 100644
--- a/arch/arm/plat-samsung/pm-debug.c
+++ b/drivers/soc/samsung/s3c-pm-debug.c
@@ -15,8 +15,7 @@
 
 #include <asm/mach/map.h>
 
-#include <plat/cpu.h>
-#include <plat/pm-common.h>
+#include <linux/soc/samsung/s3c-pm.h>
 
 static struct pm_uart_save uart_save;
 
diff --git a/include/linux/soc/samsung/s3c-pm.h b/include/linux/soc/samsung/s3c-pm.h
new file mode 100644
index 000000000000..d477b314d034
--- /dev/null
+++ b/include/linux/soc/samsung/s3c-pm.h
@@ -0,0 +1,84 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2013 Samsung Electronics Co., Ltd.
+ *	Tomasz Figa <t.figa@samsung.com>
+ * Copyright (c) 2004 Simtec Electronics
+ *	http://armlinux.simtec.co.uk/
+ *	Written by Ben Dooks, <ben@simtec.co.uk>
+ */
+
+#ifndef __SAMSUNG_SOC_S3C_PM_H
+#define __SAMSUNG_SOC_S3C_PM_H __FILE__
+
+#include <linux/types.h>
+
+/* PM debug functions */
+
+/**
+ * struct pm_uart_save - save block for core UART
+ * @ulcon: Save value for S3C2410_ULCON
+ * @ucon: Save value for S3C2410_UCON
+ * @ufcon: Save value for S3C2410_UFCON
+ * @umcon: Save value for S3C2410_UMCON
+ * @ubrdiv: Save value for S3C2410_UBRDIV
+ *
+ * Save block for UART registers to be held over sleep and restored if they
+ * are needed (say by debug).
+*/
+struct pm_uart_save {
+	u32	ulcon;
+	u32	ucon;
+	u32	ufcon;
+	u32	umcon;
+	u32	ubrdiv;
+	u32	udivslot;
+};
+
+#ifdef CONFIG_SAMSUNG_PM_DEBUG
+/**
+ * s3c_pm_dbg() - low level debug function for use in suspend/resume.
+ * @msg: The message to print.
+ *
+ * This function is used mainly to debug the resume process before the system
+ * can rely on printk/console output. It uses the low-level debugging output
+ * routine printascii() to do its work.
+ */
+extern void s3c_pm_dbg(const char *msg, ...);
+
+#define S3C_PMDBG(fmt...) s3c_pm_dbg(fmt)
+
+extern void s3c_pm_save_uarts(bool is_s3c24xx);
+extern void s3c_pm_restore_uarts(bool is_s3c24xx);
+
+#ifdef CONFIG_ARCH_S3C64XX
+extern void s3c_pm_arch_update_uart(void __iomem *regs,
+				    struct pm_uart_save *save);
+#else
+static inline void
+s3c_pm_arch_update_uart(void __iomem *regs, struct pm_uart_save *save)
+{
+}
+#endif
+
+#else
+#define S3C_PMDBG(fmt...) pr_debug(fmt)
+
+static inline void s3c_pm_save_uarts(bool is_s3c24xx) { }
+static inline void s3c_pm_restore_uarts(bool is_s3c24xx) { }
+#endif
+
+/* suspend memory checking */
+
+#ifdef CONFIG_SAMSUNG_PM_CHECK
+extern void s3c_pm_check_prepare(void);
+extern void s3c_pm_check_restore(void);
+extern void s3c_pm_check_cleanup(void);
+extern void s3c_pm_check_store(void);
+#else
+#define s3c_pm_check_prepare() do { } while (0)
+#define s3c_pm_check_restore() do { } while (0)
+#define s3c_pm_check_cleanup() do { } while (0)
+#define s3c_pm_check_store()   do { } while (0)
+#endif
+
+#endif
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
