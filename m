Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678EDD3222
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICTFILoiPk58vNiGwax0jxiO/Mv12uw366sqdmewID8=; b=OEJE29i4C3nNN2
	bVoZzKzbAMSqKxVlp10/zcQS2osM+EfzUS0WN/+syTxAnlDIQWFq80CgHJM8uMNDSGR6dsmwMC/Ua
	b0Vy0eaA1pvUVhCfccqVtwaPOTEY5ZmD2Z3I/npdn0aKbqeAAgLdC6hSU7/8MDeTaZWUnvNZZei+R
	Ksz6LfJ2U+A+yD/N9N1HZDeLXB9A8CEjs2gizRGr570F7wc/ei8PdSZhJ2+2LvFK4pPq/HB3jeIAp
	YcRIydiA5VNWJ1vO2ofi0MYd8lsZ5OLz2ZA1yXliT1iZWeAuFvLvHWXmPVnNVsCsQRmkGKzBqZTAU
	E36HD0XjUf4bCUBbMvVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf8U-00039Z-8Q; Thu, 10 Oct 2019 20:34:10 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf8A-00038r-L8
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:33:53 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MMH2M-1iYg741pdG-00JLSO; Thu, 10 Oct 2019 22:33:44 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH 07/36] ARM: exynos: use private samsung_cpu_id copy
Date: Thu, 10 Oct 2019 22:29:51 +0200
Message-Id: <20191010203043.1241612-7-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:b9MxJc22ojVV03aQI4g1hMswAIJMjso6s4GXVBlN9VbVcHoYTRb
 3iyu7CbnJMT89XlWCnf8frmgACQN5evtlWJNiWG9bv1OfVvg8CWfOEUoXb37stRSawInWlj
 il+ob82bzA9kWe0gsTRifNAcl5Hltr5UOTzagnmvdFbza5tGwszZbH+0RLrBAEU9kKI1rhm
 hNIJXKtEmwVVKqI47CEkQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fzD7h19igLg=:BKV1tvTl03vsepORG2YJDW
 WGR1yUsjoYM1tqLeBmQ8pfxD5vzhyBF/yBVWAdPzmQaxGmF92k4I5ENC0pZTUckTXLwJEGcAv
 TQkN/6B3KdXq4w9XLOny0nWJGTSzOghmwZ3jUkfR7UBNs2uHH9+A7KUJW52dSaLmXJo3VY63b
 lHZQsVz1ne3EMXpGbXulp9hgUhIKR+tTDaw2zUJUAfKuakc3bSNElMoKPCokVlrHN2iXFsWLL
 ZR/zeGWMHH6wvc9WM6HZIT8z701yt7ew9A68Y6BF3OoDw5gGNpvefztsI+Z7VBcFVS1u8GA8/
 OOM9HrFuQCB+jDXKXIIwkuKPwxV5ZlDmHdO+QpIc7DHcnUJswwoGDBO5srlBbheBTC7j4mehH
 HO9SYGE/bzjTw2KI45pB1GFbgWH/2EEwpzdMgh0S/bc+3eg6H+tKYfBkghOKNpGG24w3D+Dit
 1iTLWVF7mYHzOjqNSOktdGykKRzsHkBdADmafS3KgacIaSJdY8ClcP0A+nNCgsCdGIF03ejn5
 FJtlIERVEebgwYFMQbiNtsRk/mE/J3JusTbtCkfxjbxSU3e3pFWAUlxUj89pM404Rk95JstwP
 kl7vqd/eXaXuL1h8CGy2bdNQiOAQjOY5kKMjH4SKZeAH3eKEGX3pRLVMEgK9LFGaKf7529Np3
 Wx2WVplAQrvCw9lMAqk+l0torrBmOkXmZpd5MamLA0r/h3BQM2u8RtUQAFKsQR3+uYb56KKbd
 8xWnd8fTK4CUZIvrEANU2osUQEZ42pUnAvEoQApd4tcIrNUG9nD6wZP4TWSrrr4oNIhhFyFEP
 q4J1ceIE/R4DEORzKFFThwuAXNL00e/0sYHXZYJ7bAYvZEdMw4ahqVH+KdI6GP6mIidhw+d3y
 7i0qi3j5RNMWVeTChflg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133351_007724_D1B6A880 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, Pankaj Dubey <pankaj.dubey@samsung.com>,
 linus.walleij@linaro.org, Tomasz Figa <tomasz.figa@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The only part of plat-samsung that is shared with arch-exynos
is the CPU identification code.

Having a separate exynos_cpu_id variable makes the two completely
independent and is actually a bit less code in total.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-exynos/common.h                |  6 +++---
 arch/arm/mach-exynos/exynos.c                | 19 +++++++++++++++----
 arch/arm/mach-exynos/include/mach/map.h      | 18 ------------------
 arch/arm/mach-exynos/platsmp.c               |  4 +---
 arch/arm/mach-exynos/pm.c                    |  8 ++++----
 arch/arm/plat-samsung/cpu.c                  | 17 -----------------
 arch/arm/plat-samsung/include/plat/cpu.h     |  2 --
 arch/arm/plat-samsung/include/plat/map-s5p.h |  2 --
 8 files changed, 23 insertions(+), 53 deletions(-)
 delete mode 100644 arch/arm/mach-exynos/include/mach/map.h

diff --git a/arch/arm/mach-exynos/common.h b/arch/arm/mach-exynos/common.h
index 56411bb63d45..adf7db9c0885 100644
--- a/arch/arm/mach-exynos/common.h
+++ b/arch/arm/mach-exynos/common.h
@@ -24,12 +24,12 @@
 #define EXYNOS5800_SOC_ID	0xE5422000
 #define EXYNOS5_SOC_MASK	0xFFFFF000
 
-extern unsigned long samsung_cpu_id;
+extern unsigned long exynos_cpu_id;
 
 #define IS_SAMSUNG_CPU(name, id, mask)		\
 static inline int is_samsung_##name(void)	\
 {						\
-	return ((samsung_cpu_id & mask) == (id & mask));	\
+	return ((exynos_cpu_id & mask) == (id & mask));	\
 }
 
 IS_SAMSUNG_CPU(exynos3250, EXYNOS3250_SOC_ID, EXYNOS3_SOC_MASK)
@@ -147,7 +147,7 @@ extern struct cpuidle_exynos_data cpuidle_coupled_exynos_data;
 
 extern void exynos_set_delayed_reset_assertion(bool enable);
 
-extern unsigned int samsung_rev(void);
+extern unsigned int exynos_rev(void);
 extern void exynos_core_restart(u32 core_id);
 extern int exynos_set_boot_addr(u32 core_id, unsigned long boot_addr);
 extern int exynos_get_boot_addr(u32 core_id, unsigned long *boot_addr);
diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
index 9aa483366ebc..da9300d655c6 100644
--- a/arch/arm/mach-exynos/exynos.c
+++ b/arch/arm/mach-exynos/exynos.c
@@ -19,11 +19,10 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <mach/map.h>
-#include <plat/cpu.h>
-
 #include "common.h"
 
+#define S5P_VA_CHIPID	((void __iomem __force *)0xF8000000)
+
 static struct platform_device exynos_cpuidle = {
 	.name              = "exynos_cpuidle",
 #ifdef CONFIG_ARM_EXYNOS_CPUIDLE
@@ -36,6 +35,14 @@ void __iomem *sysram_base_addr __ro_after_init;
 phys_addr_t sysram_base_phys __ro_after_init;
 void __iomem *sysram_ns_base_addr __ro_after_init;
 
+unsigned long exynos_cpu_id;
+static unsigned int exynos_cpu_rev;
+
+unsigned int exynos_rev(void)
+{
+	return exynos_cpu_rev;
+}
+
 void __init exynos_sysram_init(void)
 {
 	struct device_node *node;
@@ -86,7 +93,11 @@ static void __init exynos_init_io(void)
 	of_scan_flat_dt(exynos_fdt_map_chipid, NULL);
 
 	/* detect cpu id and rev. */
-	s5p_init_cpu(S5P_VA_CHIPID);
+	exynos_cpu_id = readl_relaxed(S5P_VA_CHIPID);
+	exynos_cpu_rev = exynos_cpu_id & 0xFF;
+
+	pr_info("Samsung CPU ID: 0x%08lx\n", exynos_cpu_id);
+
 }
 
 /*
diff --git a/arch/arm/mach-exynos/include/mach/map.h b/arch/arm/mach-exynos/include/mach/map.h
deleted file mode 100644
index 22ebe3654633..000000000000
--- a/arch/arm/mach-exynos/include/mach/map.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (c) 2010-2011 Samsung Electronics Co., Ltd.
- *		http://www.samsung.com/
- *
- * EXYNOS - Memory map definitions
- */
-
-#ifndef __ASM_ARCH_MAP_H
-#define __ASM_ARCH_MAP_H __FILE__
-
-#include <plat/map-base.h>
-
-#include <plat/map-s5p.h>
-
-#define EXYNOS_PA_CHIPID		0x10000000
-
-#endif /* __ASM_ARCH_MAP_H */
diff --git a/arch/arm/mach-exynos/platsmp.c b/arch/arm/mach-exynos/platsmp.c
index 0cbbae8bf1f8..d7fedbb2eefe 100644
--- a/arch/arm/mach-exynos/platsmp.c
+++ b/arch/arm/mach-exynos/platsmp.c
@@ -22,8 +22,6 @@
 #include <asm/smp_scu.h>
 #include <asm/firmware.h>
 
-#include <mach/map.h>
-
 #include "common.h"
 
 extern void exynos4_secondary_startup(void);
@@ -188,7 +186,7 @@ void exynos_scu_enable(void)
 
 static void __iomem *cpu_boot_reg_base(void)
 {
-	if (soc_is_exynos4210() && samsung_rev() == EXYNOS4210_REV_1_1)
+	if (soc_is_exynos4210() && exynos_rev() == EXYNOS4210_REV_1_1)
 		return pmu_base_addr + S5P_INFORM5;
 	return sysram_base_addr;
 }
diff --git a/arch/arm/mach-exynos/pm.c b/arch/arm/mach-exynos/pm.c
index 48e7fb38613e..624585641a9c 100644
--- a/arch/arm/mach-exynos/pm.c
+++ b/arch/arm/mach-exynos/pm.c
@@ -26,18 +26,18 @@
 
 static inline void __iomem *exynos_boot_vector_addr(void)
 {
-	if (samsung_rev() == EXYNOS4210_REV_1_1)
+	if (exynos_rev() == EXYNOS4210_REV_1_1)
 		return pmu_base_addr + S5P_INFORM7;
-	else if (samsung_rev() == EXYNOS4210_REV_1_0)
+	else if (exynos_rev() == EXYNOS4210_REV_1_0)
 		return sysram_base_addr + 0x24;
 	return pmu_base_addr + S5P_INFORM0;
 }
 
 static inline void __iomem *exynos_boot_vector_flag(void)
 {
-	if (samsung_rev() == EXYNOS4210_REV_1_1)
+	if (exynos_rev() == EXYNOS4210_REV_1_1)
 		return pmu_base_addr + S5P_INFORM6;
-	else if (samsung_rev() == EXYNOS4210_REV_1_0)
+	else if (exynos_rev() == EXYNOS4210_REV_1_0)
 		return sysram_base_addr + 0x20;
 	return pmu_base_addr + S5P_INFORM1;
 }
diff --git a/arch/arm/plat-samsung/cpu.c b/arch/arm/plat-samsung/cpu.c
index e1ba88ba31d8..8acba21bbf4b 100644
--- a/arch/arm/plat-samsung/cpu.c
+++ b/arch/arm/plat-samsung/cpu.c
@@ -14,13 +14,6 @@
 #include <plat/cpu.h>
 
 unsigned long samsung_cpu_id;
-static unsigned int samsung_cpu_rev;
-
-unsigned int samsung_rev(void)
-{
-	return samsung_cpu_rev;
-}
-EXPORT_SYMBOL(samsung_rev);
 
 void __init s3c64xx_init_cpu(void)
 {
@@ -34,15 +27,5 @@ void __init s3c64xx_init_cpu(void)
 		samsung_cpu_id = readl_relaxed(S3C_VA_SYS + 0xA1C);
 	}
 
-	samsung_cpu_rev = 0;
-
-	pr_info("Samsung CPU ID: 0x%08lx\n", samsung_cpu_id);
-}
-
-void __init s5p_init_cpu(const void __iomem *cpuid_addr)
-{
-	samsung_cpu_id = readl_relaxed(cpuid_addr);
-	samsung_cpu_rev = samsung_cpu_id & 0xFF;
-
 	pr_info("Samsung CPU ID: 0x%08lx\n", samsung_cpu_id);
 }
diff --git a/arch/arm/plat-samsung/include/plat/cpu.h b/arch/arm/plat-samsung/include/plat/cpu.h
index fadcddbea064..02d7f991d5a3 100644
--- a/arch/arm/plat-samsung/include/plat/cpu.h
+++ b/arch/arm/plat-samsung/include/plat/cpu.h
@@ -111,8 +111,6 @@ extern void s3c24xx_init_io(struct map_desc *mach_desc, int size);
 extern void s3c64xx_init_cpu(void);
 extern void s5p_init_cpu(const void __iomem *cpuid_addr);
 
-extern unsigned int samsung_rev(void);
-
 extern void s3c24xx_init_uarts(struct s3c2410_uartcfg *cfg, int no);
 
 extern void s3c24xx_init_clocks(int xtal);
diff --git a/arch/arm/plat-samsung/include/plat/map-s5p.h b/arch/arm/plat-samsung/include/plat/map-s5p.h
index d69a0ca09fb5..3812085f8761 100644
--- a/arch/arm/plat-samsung/include/plat/map-s5p.h
+++ b/arch/arm/plat-samsung/include/plat/map-s5p.h
@@ -9,8 +9,6 @@
 #ifndef __ASM_PLAT_MAP_S5P_H
 #define __ASM_PLAT_MAP_S5P_H __FILE__
 
-#define S5P_VA_CHIPID		S3C_ADDR(0x02000000)
-
 #define VA_VIC(x)		(S3C_VA_IRQ + ((x) * 0x10000))
 #define VA_VIC0			VA_VIC(0)
 #define VA_VIC1			VA_VIC(1)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
