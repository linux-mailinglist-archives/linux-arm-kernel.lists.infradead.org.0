Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E04D87651
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s00qY5tAcWkEwgfXJDAWsKyg9Y99bUI+A1wnxVy9+Os=; b=ATdpAMJ8FhpCY+
	ZD9F2zSE90zmUwasBPvGBeLIZbzBTomUWjW70fzie/noEwoDXTLnuvU9bZc8uXvLJzZeq0e6kNSYg
	8jPNwFTrxaNxWptYjs6qUdgwRfNHs+UTtNHyV69WxmSMu+FoV7jayL2qdjCojloVH9GF6P/feI/XT
	uIHfJEKbkPbCjCykyUL59GmqB8C5DxxW1XytyvDeAFt9VIKg2ilmhK+4QcB0SxA6cFzgxFwEvNnvy
	4xyX2NXRpHSu2gKw4ovkWSeli62fVntHLinY+/Rfk9+fR5okNSnzUj9pAKl1fsw243ddGNvO5TJL2
	NdtqDafdZjJgkNXKpCDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1KJ-0008TK-SJ; Fri, 09 Aug 2019 09:36:47 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1H2-0003ss-Dd
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:33:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id AEDC1D63CC;
 Fri,  9 Aug 2019 11:33:22 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id eBW5DF4ovYvg; Fri,  9 Aug 2019 11:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 9ED04D63C7;
 Fri,  9 Aug 2019 11:32:31 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xGzhapdrExV8; Fri,  9 Aug 2019 11:32:27 +0200 (CEST)
Received: from furthur.local (ip-37-188-137-236.eurotel.cz [37.188.137.236])
 by zimbra.v3.sk (Postfix) with ESMTPSA id DCC87D63D3;
 Fri,  9 Aug 2019 11:32:20 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 14/19] ARM: mmp: add support for MMP3 SoC
Date: Fri,  9 Aug 2019 11:31:53 +0200
Message-Id: <20190809093158.7969-15-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190809093158.7969-1-lkundrak@v3.sk>
References: <20190809093158.7969-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_023324_962359_202B666D 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similar to MMP2, which this patch is based on. Known differencies from MMP2
are:

* Two PJ4B cores instead of one PJ4
* Tauros 3 L2 cache controller instead of Tauros 2
* A GIC interrupt controller optionally used instead of the MMP one
* A TWD local timer
* Different USB2 PHY
* A USB3 SS controller
* More interrupt muxes

Hard to tell what else is different, because documentation is not
available.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/mach-mmp/Kconfig   | 22 ++++++++++++++++++++--
 arch/arm/mach-mmp/Makefile  |  1 +
 arch/arm/mach-mmp/cputype.h | 27 +++++++++++++++++++++++++++
 arch/arm/mach-mmp/mmp3.c    | 29 +++++++++++++++++++++++++++++
 arch/arm/mach-mmp/time.c    |  3 ++-
 drivers/clk/mmp/Makefile    |  1 +
 6 files changed, 80 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-mmp/mmp3.c

diff --git a/arch/arm/mach-mmp/Kconfig b/arch/arm/mach-mmp/Kconfig
index 0440109e973b9..b58a03b18bdef 100644
--- a/arch/arm/mach-mmp/Kconfig
+++ b/arch/arm/mach-mmp/Kconfig
@@ -1,13 +1,13 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menuconfig ARCH_MMP
-	bool "Marvell PXA168/910/MMP2"
+	bool "Marvell PXA168/910/MMP2/MMP3"
 	depends on ARCH_MULTI_V5 || ARCH_MULTI_V7
 	select GPIO_PXA
 	select GPIOLIB
 	select PINCTRL
 	select PLAT_PXA
 	help
-	  Support for Marvell's PXA168/PXA910(MMP) and MMP2 processor line.
+	  Support for Marvell's PXA168/PXA910(MMP), MMP2, and MMP3 processor lines.
 
 if ARCH_MMP
 
@@ -129,6 +129,24 @@ config MACH_MMP2_DT
 	  Include support for Marvell MMP2 based platforms using
 	  the device tree.
 
+config MACH_MMP3_DT
+	bool "Support MMP3 (ARMv7) platforms"
+	depends on ARCH_MULTI_V7
+	select ARM_GIC
+	select HAVE_ARM_SCU if SMP
+	select HAVE_ARM_TWD if SMP
+	select CACHE_L2X0
+	select PINCTRL
+	select PINCTRL_SINGLE
+	select ARCH_HAS_RESET_CONTROLLER
+	select CPU_PJ4B
+	select PM_GENERIC_DOMAINS if PM
+	select PM_GENERIC_DOMAINS_OF if PM && OF
+	help
+	  Say 'Y' here if you want to include support for platforms
+	  with Marvell MMP3 processor, also known as PXA2128 or
+	  Armada 620.
+
 endmenu
 
 config CPU_PXA168
diff --git a/arch/arm/mach-mmp/Makefile b/arch/arm/mach-mmp/Makefile
index 8f267c7bc6e86..322c1c97dc900 100644
--- a/arch/arm/mach-mmp/Makefile
+++ b/arch/arm/mach-mmp/Makefile
@@ -34,5 +34,6 @@ obj-$(CONFIG_MACH_FLINT)	+= flint.o
 obj-$(CONFIG_MACH_MARVELL_JASPER) += jasper.o
 obj-$(CONFIG_MACH_MMP_DT)	+= mmp-dt.o
 obj-$(CONFIG_MACH_MMP2_DT)	+= mmp2-dt.o
+obj-$(CONFIG_MACH_MMP3_DT)	+= mmp3.o
 obj-$(CONFIG_MACH_TETON_BGA)	+= teton_bga.o
 obj-$(CONFIG_MACH_GPLUGD)	+= gplugd.o
diff --git a/arch/arm/mach-mmp/cputype.h b/arch/arm/mach-mmp/cputype.h
index a96abcf521b4b..c3ec88983e940 100644
--- a/arch/arm/mach-mmp/cputype.h
+++ b/arch/arm/mach-mmp/cputype.h
@@ -18,6 +18,8 @@
  * MMP2	     Z0	   0x560f5811   0x00F00410
  * MMP2      Z1    0x560f5811   0x00E00410
  * MMP2      A0    0x560f5811   0x00A0A610
+ * MMP3      A0    0x562f5842   0x00A02128
+ * MMP3      B0    0x562f5842   0x00B02128
  */
 
 extern unsigned int mmp_chip_id;
@@ -55,4 +57,29 @@ static inline int cpu_is_mmp2(void)
 #define cpu_is_mmp2()	(0)
 #endif
 
+#ifdef CONFIG_MACH_MMP3_DT
+static inline int cpu_is_mmp3(void)
+{
+	return (((read_cpuid_id() >> 8) & 0xff) == 0x58) &&
+		((mmp_chip_id & 0xffff) == 0x2128);
+}
+
+static inline int cpu_is_mmp3_a0(void)
+{
+	return (cpu_is_mmp3() &&
+		((mmp_chip_id & 0x00ff0000) == 0x00a00000));
+}
+
+static inline int cpu_is_mmp3_b0(void)
+{
+	return (cpu_is_mmp3() &&
+		((mmp_chip_id & 0x00ff0000) == 0x00b00000));
+}
+
+#else
+#define cpu_is_mmp3()		(0)
+#define cpu_is_mmp3_a0()	(0)
+#define cpu_is_mmp3_b0()	(0)
+#endif
+
 #endif /* __ASM_MACH_CPUTYPE_H */
diff --git a/arch/arm/mach-mmp/mmp3.c b/arch/arm/mach-mmp/mmp3.c
new file mode 100644
index 0000000000000..b0e86964f302a
--- /dev/null
+++ b/arch/arm/mach-mmp/mmp3.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *  Marvell MMP3 aka PXA2128 aka 88AP2128 support
+ *
+ *  Copyright (C) 2019 Lubomir Rintel <lkundrak@v3.sk>
+ */
+
+#include <linux/io.h>
+#include <linux/irqchip.h>
+#include <linux/of_platform.h>
+#include <linux/clk-provider.h>
+#include <asm/mach/arch.h>
+#include <asm/hardware/cache-l2x0.h>
+
+#include "common.h"
+
+static const char *const mmp3_dt_board_compat[] __initconst = {
+	"marvell,mmp3",
+	NULL,
+};
+
+DT_MACHINE_START(MMP2_DT, "Marvell MMP3")
+	.map_io		= mmp2_map_io,
+	.dt_compat	= mmp3_dt_board_compat,
+	.l2c_aux_val	= 1 << L310_AUX_CTRL_FWA_SHIFT |
+			  L310_AUX_CTRL_DATA_PREFETCH |
+			  L310_AUX_CTRL_INSTR_PREFETCH,
+	.l2c_aux_mask	= 0xc20fffff,
+MACHINE_END
diff --git a/arch/arm/mach-mmp/time.c b/arch/arm/mach-mmp/time.c
index 3f6fd0be00512..8f4cacbf640e9 100644
--- a/arch/arm/mach-mmp/time.c
+++ b/arch/arm/mach-mmp/time.c
@@ -155,7 +155,8 @@ static void __init timer_config(void)
 
 	__raw_writel(0x0, mmp_timer_base + TMR_CER); /* disable */
 
-	ccr &= (cpu_is_mmp2()) ? (TMR_CCR_CS_0(0) | TMR_CCR_CS_1(0)) :
+	ccr &= (cpu_is_mmp2() || cpu_is_mmp3()) ?
+		(TMR_CCR_CS_0(0) | TMR_CCR_CS_1(0)) :
 		(TMR_CCR_CS_0(3) | TMR_CCR_CS_1(3));
 	__raw_writel(ccr, mmp_timer_base + TMR_CCR);
 
diff --git a/drivers/clk/mmp/Makefile b/drivers/clk/mmp/Makefile
index 7bc7ac69391e3..deb069a4e4215 100644
--- a/drivers/clk/mmp/Makefile
+++ b/drivers/clk/mmp/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_RESET_CONTROLLER) += reset.o
 
 obj-$(CONFIG_MACH_MMP_DT) += clk-of-pxa168.o clk-of-pxa910.o
 obj-$(CONFIG_MACH_MMP2_DT) += clk-of-mmp2.o
+obj-$(CONFIG_MACH_MMP3_DT) += clk-of-mmp2.o
 
 obj-$(CONFIG_CPU_PXA168) += clk-pxa168.o
 obj-$(CONFIG_CPU_PXA910) += clk-pxa910.o
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
