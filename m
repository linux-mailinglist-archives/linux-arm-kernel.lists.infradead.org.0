Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4AB13031E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:22:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6csXS3xRnX+XWfK0awrNwuKDsDZdaYypad7dJEjnWpk=; b=Vi0t22WR3/Bh0sHGG2eWeLd38b
	y7KYwCryssXEl+p7hNmW0zyBINDOnFmWuqENgmLwyiZHH/ThVWtgiL60OB4WFq6KBPy89mvLVD0RI
	NU4nZbH5tfmp2W+Fr5Qz8tTIEAqNgID4oWGGi8KevC9liFT4yII1oPF54LGPaVAfDbC9n7y9xUDfu
	uIaT55hxxAUoVXIQByFhwJ+T6sMrCoN4I5zb2pAoNCapDw29YrVcH/Gq9Ikb8LNVgzWGWyc2hFEHN
	NvIM7HPOPUNTRk8L3WmjR/QOC0k9W/F3ZFX19Jr5gKUva9EheER3/G3UfERu4SoE3QzgnNOCNCgCB
	WdBI2AuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inlGL-0001aD-88; Sat, 04 Jan 2020 15:22:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inlFT-000112-Ai
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 15:21:57 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E48821734;
 Sat,  4 Jan 2020 15:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578151314;
 bh=T/vy9MvjG1dq+hJ9DC0hgDXW/72BInj4eDdKiNpHXfY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=soi5W+rANhT4PM1ORSwAA4nUsbEFQ6pNL5dGCeGjqhidbh8ZpLc83RBiZ6GXDPkLU
 jAN4VKJg+vEwmT85wunXmxAaEQmtMycVN1st27SYifhENhX6INdB0pvCQ0En9I2LGc
 cOIvJ8kFngTA3mpaQYqIAu204RV4OymKxZeF6v04=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/20] ARM: samsung: Rename Samsung and Exynos to lowercase
Date: Sat,  4 Jan 2020 16:20:51 +0100
Message-Id: <20200104152107.11407-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200104152107.11407-1-krzk@kernel.org>
References: <20200104152107.11407-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_072155_545292_FEC6CB7D 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Samsung"
and "Exynos" names.

"SAMSUNG" and "EXYNOS" are not abbreviations but regular trademarked
names.  Therefore they should be written with lowercase letters starting
with capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Although advertisement materials usually use uppercase "SAMSUNG", the
lowercase version is used in all legal aspects (e.g. on Wikipedia and in
privacy/legal statements on
https://www.samsung.com/semiconductor/privacy-global/).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/mach-exynos/Kconfig                  | 36 +++++++++----------
 arch/arm/mach-exynos/common.h                 |  2 +-
 arch/arm/mach-exynos/exynos.c                 |  4 +--
 arch/arm/mach-exynos/include/mach/map.h       |  2 +-
 arch/arm/mach-exynos/pm.c                     |  2 +-
 arch/arm/mach-exynos/smc.h                    |  2 +-
 arch/arm/mach-exynos/suspend.c                |  2 +-
 arch/arm/mach-s3c24xx/Kconfig                 | 16 ++++-----
 arch/arm/plat-samsung/adc.c                   |  2 +-
 arch/arm/plat-samsung/devs.c                  |  2 +-
 arch/arm/plat-samsung/gpio-samsung.c          |  2 +-
 .../plat-samsung/include/plat/samsung-time.h  |  2 +-
 12 files changed, 37 insertions(+), 37 deletions(-)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 9fb045ab80e4..73ce92a0cdb2 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -3,10 +3,10 @@
 # Copyright (c) 2010-2011 Samsung Electronics Co., Ltd.
 #		http://www.samsung.com/
 
-# Configuration options for the EXYNOS
+# Configuration options for the Samsung Exynos
 
 menuconfig ARCH_EXYNOS
-	bool "Samsung EXYNOS"
+	bool "Samsung Exynos"
 	depends on ARCH_MULTI_V7
 	select ARCH_HAS_HOLES_MEMORYMODEL
 	select ARCH_SUPPORTS_BIG_ENDIAN
@@ -41,7 +41,7 @@ menuconfig ARCH_EXYNOS
 	select POWER_RESET_SYSCON
 	select POWER_RESET_SYSCON_POWEROFF
 	help
-	  Support for SAMSUNG EXYNOS SoCs
+	  Support for Samsung Exynos SoCs
 
 if ARCH_EXYNOS
 
@@ -51,14 +51,14 @@ config S5P_DEV_MFC
 	  Compile in setup memory (init) code for MFC
 
 config ARCH_EXYNOS3
-	bool "SAMSUNG EXYNOS3"
+	bool "Samsung Exynos3"
 	default y
 	select ARM_CPU_SUSPEND if PM
 	help
-	  Samsung EXYNOS3 (Cortex-A7) SoC based systems
+	  Samsung Exynos3 (Cortex-A7) SoC based systems
 
 config ARCH_EXYNOS4
-	bool "SAMSUNG EXYNOS4"
+	bool "Samsung Exynos4"
 	default y
 	select ARM_CPU_SUSPEND if PM_SLEEP
 	select CLKSRC_SAMSUNG_PWM if CPU_EXYNOS4210
@@ -66,48 +66,48 @@ config ARCH_EXYNOS4
 	select GIC_NON_BANKED
 	select MIGHT_HAVE_CACHE_L2X0
 	help
-	  Samsung EXYNOS4 (Cortex-A9) SoC based systems
+	  Samsung Exynos4 (Cortex-A9) SoC based systems
 
 config ARCH_EXYNOS5
-	bool "SAMSUNG EXYNOS5"
+	bool "Samsung Exynos5"
 	default y
 	help
-	  Samsung EXYNOS5 (Cortex-A15/A7) SoC based systems
+	  Samsung Exynos5 (Cortex-A15/A7) SoC based systems
 
-comment "EXYNOS SoCs"
+comment "Exynos SoCs"
 
 config SOC_EXYNOS3250
-	bool "SAMSUNG EXYNOS3250"
+	bool "Samsung Exynos3250"
 	default y
 	depends on ARCH_EXYNOS3
 
 config CPU_EXYNOS4210
-	bool "SAMSUNG EXYNOS4210"
+	bool "Samsung Exynos4210"
 	default y
 	depends on ARCH_EXYNOS4
 
 config SOC_EXYNOS4412
-	bool "SAMSUNG EXYNOS4412"
+	bool "Samsung Exynos4412"
 	default y
 	depends on ARCH_EXYNOS4
 
 config SOC_EXYNOS5250
-	bool "SAMSUNG EXYNOS5250"
+	bool "Samsung Exynos5250"
 	default y
 	depends on ARCH_EXYNOS5
 
 config SOC_EXYNOS5260
-	bool "SAMSUNG EXYNOS5260"
+	bool "Samsung Exynos5260"
 	default y
 	depends on ARCH_EXYNOS5
 
 config SOC_EXYNOS5410
-	bool "SAMSUNG EXYNOS5410"
+	bool "Samsung Exynos5410"
 	default y
 	depends on ARCH_EXYNOS5
 
 config SOC_EXYNOS5420
-	bool "SAMSUNG EXYNOS5420"
+	bool "Samsung Exynos5420"
 	default y
 	depends on ARCH_EXYNOS5
 	select EXYNOS_MCPM if SMP
@@ -115,7 +115,7 @@ config SOC_EXYNOS5420
 	select ARM_CPU_SUSPEND
 
 config SOC_EXYNOS5800
-	bool "SAMSUNG EXYNOS5800"
+	bool "Samsung EXYNOS5800"
 	default y
 	depends on SOC_EXYNOS5420
 
diff --git a/arch/arm/mach-exynos/common.h b/arch/arm/mach-exynos/common.h
index 56411bb63d45..afd988a92836 100644
--- a/arch/arm/mach-exynos/common.h
+++ b/arch/arm/mach-exynos/common.h
@@ -3,7 +3,7 @@
  * Copyright (c) 2011 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * Common Header for EXYNOS machines
+ * Common Header for Exynos machines
  */
 
 #ifndef __ARCH_ARM_MACH_EXYNOS_COMMON_H
diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
index 9aa483366ebc..7a8d1555db40 100644
--- a/arch/arm/mach-exynos/exynos.c
+++ b/arch/arm/mach-exynos/exynos.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 //
-// SAMSUNG EXYNOS Flattened Device Tree enabled machine
+// Samsung Exynos Flattened Device Tree enabled machine
 //
 // Copyright (c) 2010-2014 Samsung Electronics Co., Ltd.
 //		http://www.samsung.com
@@ -192,7 +192,7 @@ static void __init exynos_dt_fixup(void)
 	of_fdt_limit_memory(8);
 }
 
-DT_MACHINE_START(EXYNOS_DT, "SAMSUNG EXYNOS (Flattened Device Tree)")
+DT_MACHINE_START(EXYNOS_DT, "Samsung Exynos (Flattened Device Tree)")
 	.l2c_aux_val	= 0x3c400001,
 	.l2c_aux_mask	= 0xc20fffff,
 	.smp		= smp_ops(exynos_smp_ops),
diff --git a/arch/arm/mach-exynos/include/mach/map.h b/arch/arm/mach-exynos/include/mach/map.h
index 22ebe3654633..8d58faa54ff7 100644
--- a/arch/arm/mach-exynos/include/mach/map.h
+++ b/arch/arm/mach-exynos/include/mach/map.h
@@ -3,7 +3,7 @@
  * Copyright (c) 2010-2011 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com/
  *
- * EXYNOS - Memory map definitions
+ * Exynos - Memory map definitions
  */
 
 #ifndef __ASM_ARCH_MAP_H
diff --git a/arch/arm/mach-exynos/pm.c b/arch/arm/mach-exynos/pm.c
index 48e7fb38613e..78af34cc89cc 100644
--- a/arch/arm/mach-exynos/pm.c
+++ b/arch/arm/mach-exynos/pm.c
@@ -3,7 +3,7 @@
 // Copyright (c) 2011-2014 Samsung Electronics Co., Ltd.
 //		http://www.samsung.com
 //
-// EXYNOS - Power Management support
+// Exynos - Power Management support
 //
 // Based on arch/arm/mach-s3c2410/pm.c
 // Copyright (c) 2006 Simtec Electronics
diff --git a/arch/arm/mach-exynos/smc.h b/arch/arm/mach-exynos/smc.h
index 98832e50852d..5c30feb8f07d 100644
--- a/arch/arm/mach-exynos/smc.h
+++ b/arch/arm/mach-exynos/smc.h
@@ -2,7 +2,7 @@
 /*
  *  Copyright (c) 2012 Samsung Electronics.
  *
- * EXYNOS - SMC Call
+ * Exynos - SMC Call
  */
 
 #ifndef __ASM_ARCH_EXYNOS_SMC_H
diff --git a/arch/arm/mach-exynos/suspend.c b/arch/arm/mach-exynos/suspend.c
index 6a0d3448ea00..3bf14ca78b62 100644
--- a/arch/arm/mach-exynos/suspend.c
+++ b/arch/arm/mach-exynos/suspend.c
@@ -3,7 +3,7 @@
 // Copyright (c) 2011-2014 Samsung Electronics Co., Ltd.
 //		http://www.samsung.com
 //
-// EXYNOS - Suspend support
+// Exynos - Suspend support
 //
 // Based on arch/arm/mach-s3c2410/pm.c
 // Copyright (c) 2006 Simtec Electronics
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
index 686f0bbde998..c5c06d98b147 100644
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ b/arch/arm/mach-s3c24xx/Kconfig
@@ -19,12 +19,12 @@ config PLAT_S3C24XX
 
 
 
-menu "SAMSUNG S3C24XX SoCs Support"
+menu "Samsung S3C24XX SoCs Support"
 
 comment "S3C24XX SoCs"
 
 config CPU_S3C2410
-	bool "SAMSUNG S3C2410"
+	bool "Samsung S3C2410"
 	default y
 	select CPU_ARM920T
 	select S3C2410_COMMON_CLK
@@ -35,7 +35,7 @@ config CPU_S3C2410
 	  of Samsung Mobile CPUs.
 
 config CPU_S3C2412
-	bool "SAMSUNG S3C2412"
+	bool "Samsung S3C2412"
 	select CPU_ARM926T
 	select S3C2412_COMMON_CLK
 	select S3C2412_PM if PM_SLEEP
@@ -43,7 +43,7 @@ config CPU_S3C2412
 	  Support for the S3C2412 and S3C2413 SoCs from the S3C24XX line
 
 config CPU_S3C2416
-	bool "SAMSUNG S3C2416/S3C2450"
+	bool "Samsung S3C2416/S3C2450"
 	select CPU_ARM926T
 	select S3C2416_PM if PM_SLEEP
 	select S3C2443_COMMON_CLK
@@ -51,7 +51,7 @@ config CPU_S3C2416
 	  Support for the S3C2416 SoC from the S3C24XX line
 
 config CPU_S3C2440
-	bool "SAMSUNG S3C2440"
+	bool "Samsung S3C2440"
 	select CPU_ARM920T
 	select S3C2410_COMMON_CLK
 	select S3C2410_PM if PM_SLEEP
@@ -59,7 +59,7 @@ config CPU_S3C2440
 	  Support for S3C2440 Samsung Mobile CPU based systems.
 
 config CPU_S3C2442
-	bool "SAMSUNG S3C2442"
+	bool "Samsung S3C2442"
 	select CPU_ARM920T
 	select S3C2410_COMMON_CLK
 	select S3C2410_PM if PM_SLEEP
@@ -71,7 +71,7 @@ config CPU_S3C244X
 	depends on CPU_S3C2440 || CPU_S3C2442
 
 config CPU_S3C2443
-	bool "SAMSUNG S3C2443"
+	bool "Samsung S3C2443"
 	select CPU_ARM920T
 	select S3C2443_COMMON_CLK
 	help
@@ -591,6 +591,6 @@ config PM_H1940
 	help
 	  Internal node for H1940 and related PM
 
-endmenu	# SAMSUNG S3C24XX SoCs Support
+endmenu	# Samsung S3C24XX SoCs Support
 
 endif	# ARCH_S3C24XX
diff --git a/arch/arm/plat-samsung/adc.c b/arch/arm/plat-samsung/adc.c
index ee3d5c989a76..4f7b27239bd4 100644
--- a/arch/arm/plat-samsung/adc.c
+++ b/arch/arm/plat-samsung/adc.c
@@ -40,7 +40,7 @@ enum s3c_cpu_type {
 	TYPE_ADCV11, /* S3C2443 */
 	TYPE_ADCV12, /* S3C2416, S3C2450 */
 	TYPE_ADCV2, /* S3C64XX */
-	TYPE_ADCV3, /* S5PV210, S5PC110, EXYNOS4210 */
+	TYPE_ADCV3, /* S5PV210, S5PC110, Exynos4210 */
 };
 
 struct s3c_adc_client {
diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
index 1602f6dc900b..089a17687104 100644
--- a/arch/arm/plat-samsung/devs.c
+++ b/arch/arm/plat-samsung/devs.c
@@ -3,7 +3,7 @@
 // Copyright (c) 2011 Samsung Electronics Co., Ltd.
 //		http://www.samsung.com
 //
-// Base SAMSUNG platform device definitions
+// Base Samsung platform device definitions
 
 #include <linux/kernel.h>
 #include <linux/types.h>
diff --git a/arch/arm/plat-samsung/gpio-samsung.c b/arch/arm/plat-samsung/gpio-samsung.c
index f66c820cd82b..8955fd675265 100644
--- a/arch/arm/plat-samsung/gpio-samsung.c
+++ b/arch/arm/plat-samsung/gpio-samsung.c
@@ -8,7 +8,7 @@
 //      Ben Dooks <ben@simtec.co.uk>
 //      http://armlinux.simtec.co.uk/
 //
-// SAMSUNG - GPIOlib support
+// Samsung - GPIOlib support
 
 #include <linux/kernel.h>
 #include <linux/irq.h>
diff --git a/arch/arm/plat-samsung/include/plat/samsung-time.h b/arch/arm/plat-samsung/include/plat/samsung-time.h
index d16eefe9ae78..32ab0860f631 100644
--- a/arch/arm/plat-samsung/include/plat/samsung-time.h
+++ b/arch/arm/plat-samsung/include/plat/samsung-time.h
@@ -9,7 +9,7 @@
 #ifndef __ASM_PLAT_SAMSUNG_TIME_H
 #define __ASM_PLAT_SAMSUNG_TIME_H __FILE__
 
-/* SAMSUNG HR-Timer Clock mode */
+/* Samsung HR-Timer Clock mode */
 enum samsung_timer_mode {
 	SAMSUNG_PWM0,
 	SAMSUNG_PWM1,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
