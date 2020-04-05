Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4420219E8AA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 04:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0dYhd9cugu0d4wdtzH4nqQH2LY4ZFLh8TGwObC06Kc=; b=KJHi76PrTE4ReX
	k5ybkEvb9rf/py9eLcTEtD+2I+nAeHV7SkJFV/12mhGbkxkWFqDmtzibVDKCCUGarYXcDoQcRk+mt
	Y151dnkp2wnNpUY3pzubDCh/T2TuwnqWiNDYoSS9zEMJVT0IRdnUQsXsOvdBEav0ULvGPBkvrJbii
	MIubeg1awXQiF02mTatEgRGZdmI1jMV/BZtlb+bHdS4CS/VwpEhiZNPuXtiDrH9GuPgrtPxYwtTfA
	YngXnwHFqa8g7pG/Q9Iw+sJGQCOq9aw8/jTFus+lRyzQKDXaQN3rlt+UnNrbMfCsRZN6qWkHfOg40
	fPwT3zHgAwPmUGI/2Zvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKvP2-00077w-J0; Sun, 05 Apr 2020 02:52:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKvNg-00060o-UY
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 02:51:31 +0000
Received: from mail.kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBC7E2078A;
 Sun,  5 Apr 2020 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586055088;
 bh=i6TbvVSfhq0ypYUj4sK44OL2LSCg+j0dVDmZXfTTRqU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d7DbFc7X/K391FtnfsTDFXIp+ZDZJz4kv2jeMSbVxj/l5iDmXwMiY23zRoLHLft9x
 akBHRooPLFwFHG0qIYO597gXyUncj35wy99ojCQKtLfLC45J1MOz3iFjCn/JrQBgPL
 6zKW11Wk/+diPPEJ1xnHtczFrTkk9gtBekwjicVs=
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 7/9] ARM: mmp: Remove legacy clk code
Date: Sat,  4 Apr 2020 19:51:21 -0700
Message-Id: <20200405025123.154688-8-sboyd@kernel.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
In-Reply-To: <20200405025123.154688-1-sboyd@kernel.org>
References: <20200405025123.154688-1-sboyd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_195129_030713_30E69FEB 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove all the legacy clk code that supports a non-common clk framework
implementation of 'struct clk' in mach-mmp. This code doesn't look to be
compiled anymore given that the MMP is fully supported in the
multi-platform config via ARCH_MULTIPLATFORM as of commit 377524dc4d77
("ARM: mmp: move into ARCH_MULTIPLATFORM"). The ARCH_MULTIPLATFORM
config selects COMMON_CLK and therefore the Makefile rule can never
actually compile the code in these files.

Cc: Lubomir Rintel <lkundrak@v3.sk>
Cc: Russell King <linux@armlinux.org.uk>
Cc: <linux-arm-kernel@lists.infradead.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
---
 arch/arm/mach-mmp/Makefile       |   6 --
 arch/arm/mach-mmp/clock-mmp2.c   | 114 -------------------------------
 arch/arm/mach-mmp/clock-pxa168.c |  94 -------------------------
 arch/arm/mach-mmp/clock-pxa910.c |  70 -------------------
 arch/arm/mach-mmp/clock.c        | 105 ----------------------------
 arch/arm/mach-mmp/clock.h        |  65 ------------------
 6 files changed, 454 deletions(-)
 delete mode 100644 arch/arm/mach-mmp/clock-mmp2.c
 delete mode 100644 arch/arm/mach-mmp/clock-pxa168.c
 delete mode 100644 arch/arm/mach-mmp/clock-pxa910.c
 delete mode 100644 arch/arm/mach-mmp/clock.c
 delete mode 100644 arch/arm/mach-mmp/clock.h

diff --git a/arch/arm/mach-mmp/Makefile b/arch/arm/mach-mmp/Makefile
index 7b3a7f979eec..e3758f7e1fe7 100644
--- a/arch/arm/mach-mmp/Makefile
+++ b/arch/arm/mach-mmp/Makefile
@@ -12,12 +12,6 @@ obj-$(CONFIG_CPU_PXA910)	+= pxa910.o
 obj-$(CONFIG_CPU_MMP2)		+= mmp2.o
 obj-$(CONFIG_MMP_SRAM)		+= sram.o
 
-ifeq ($(CONFIG_COMMON_CLK), )
-obj-y				+= clock.o
-obj-$(CONFIG_CPU_PXA168)	+= clock-pxa168.o
-obj-$(CONFIG_CPU_PXA910)	+= clock-pxa910.o
-obj-$(CONFIG_CPU_MMP2)		+= clock-mmp2.o
-endif
 ifeq ($(CONFIG_PM),y)
 obj-$(CONFIG_CPU_PXA910)	+= pm-pxa910.o
 obj-$(CONFIG_CPU_MMP2)		+= pm-mmp2.o
diff --git a/arch/arm/mach-mmp/clock-mmp2.c b/arch/arm/mach-mmp/clock-mmp2.c
deleted file mode 100644
index 7536398bf1c1..000000000000
--- a/arch/arm/mach-mmp/clock-mmp2.c
+++ /dev/null
@@ -1,114 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/init.h>
-#include <linux/list.h>
-#include <linux/io.h>
-#include <linux/clk.h>
-#include <linux/clk/mmp.h>
-
-#include "addr-map.h"
-
-#include "common.h"
-#include "clock.h"
-
-/*
- * APB Clock register offsets for MMP2
- */
-#define APBC_RTC	APBC_REG(0x000)
-#define APBC_TWSI1	APBC_REG(0x004)
-#define APBC_TWSI2	APBC_REG(0x008)
-#define APBC_TWSI3	APBC_REG(0x00c)
-#define APBC_TWSI4	APBC_REG(0x010)
-#define APBC_KPC	APBC_REG(0x018)
-#define APBC_UART1	APBC_REG(0x02c)
-#define APBC_UART2	APBC_REG(0x030)
-#define APBC_UART3	APBC_REG(0x034)
-#define APBC_GPIO	APBC_REG(0x038)
-#define APBC_PWM0	APBC_REG(0x03c)
-#define APBC_PWM1	APBC_REG(0x040)
-#define APBC_PWM2	APBC_REG(0x044)
-#define APBC_PWM3	APBC_REG(0x048)
-#define APBC_SSP0	APBC_REG(0x04c)
-#define APBC_SSP1	APBC_REG(0x050)
-#define APBC_SSP2	APBC_REG(0x054)
-#define APBC_SSP3	APBC_REG(0x058)
-#define APBC_SSP4	APBC_REG(0x05c)
-#define APBC_SSP5	APBC_REG(0x060)
-#define APBC_TWSI5	APBC_REG(0x07c)
-#define APBC_TWSI6	APBC_REG(0x080)
-#define APBC_UART4	APBC_REG(0x088)
-
-#define APMU_USB	APMU_REG(0x05c)
-#define APMU_NAND	APMU_REG(0x060)
-#define APMU_SDH0	APMU_REG(0x054)
-#define APMU_SDH1	APMU_REG(0x058)
-#define APMU_SDH2	APMU_REG(0x0e8)
-#define APMU_SDH3	APMU_REG(0x0ec)
-
-static void sdhc_clk_enable(struct clk *clk)
-{
-	uint32_t clk_rst;
-
-	clk_rst  =  __raw_readl(clk->clk_rst);
-	clk_rst |= clk->enable_val;
-	__raw_writel(clk_rst, clk->clk_rst);
-}
-
-static void sdhc_clk_disable(struct clk *clk)
-{
-	uint32_t clk_rst;
-
-	clk_rst  =  __raw_readl(clk->clk_rst);
-	clk_rst &= ~clk->enable_val;
-	__raw_writel(clk_rst, clk->clk_rst);
-}
-
-struct clkops sdhc_clk_ops = {
-	.enable		= sdhc_clk_enable,
-	.disable	= sdhc_clk_disable,
-};
-
-/* APB peripheral clocks */
-static APBC_CLK(uart1, UART1, 1, 26000000);
-static APBC_CLK(uart2, UART2, 1, 26000000);
-static APBC_CLK(uart3, UART3, 1, 26000000);
-static APBC_CLK(uart4, UART4, 1, 26000000);
-static APBC_CLK(twsi1, TWSI1, 0, 26000000);
-static APBC_CLK(twsi2, TWSI2, 0, 26000000);
-static APBC_CLK(twsi3, TWSI3, 0, 26000000);
-static APBC_CLK(twsi4, TWSI4, 0, 26000000);
-static APBC_CLK(twsi5, TWSI5, 0, 26000000);
-static APBC_CLK(twsi6, TWSI6, 0, 26000000);
-static APBC_CLK(gpio, GPIO, 0, 26000000);
-
-static APMU_CLK(nand, NAND, 0xbf, 100000000);
-static APMU_CLK_OPS(sdh0, SDH0, 0x1b, 200000000, &sdhc_clk_ops);
-static APMU_CLK_OPS(sdh1, SDH1, 0x1b, 200000000, &sdhc_clk_ops);
-static APMU_CLK_OPS(sdh2, SDH2, 0x1b, 200000000, &sdhc_clk_ops);
-static APMU_CLK_OPS(sdh3, SDH3, 0x1b, 200000000, &sdhc_clk_ops);
-
-static struct clk_lookup mmp2_clkregs[] = {
-	INIT_CLKREG(&clk_uart1, "pxa2xx-uart.0", NULL),
-	INIT_CLKREG(&clk_uart2, "pxa2xx-uart.1", NULL),
-	INIT_CLKREG(&clk_uart3, "pxa2xx-uart.2", NULL),
-	INIT_CLKREG(&clk_uart4, "pxa2xx-uart.3", NULL),
-	INIT_CLKREG(&clk_twsi1, "pxa2xx-i2c.0", NULL),
-	INIT_CLKREG(&clk_twsi2, "pxa2xx-i2c.1", NULL),
-	INIT_CLKREG(&clk_twsi3, "pxa2xx-i2c.2", NULL),
-	INIT_CLKREG(&clk_twsi4, "pxa2xx-i2c.3", NULL),
-	INIT_CLKREG(&clk_twsi5, "pxa2xx-i2c.4", NULL),
-	INIT_CLKREG(&clk_twsi6, "pxa2xx-i2c.5", NULL),
-	INIT_CLKREG(&clk_nand, "pxa3xx-nand", NULL),
-	INIT_CLKREG(&clk_gpio, "mmp2-gpio", NULL),
-	INIT_CLKREG(&clk_sdh0, "sdhci-pxav3.0", "PXA-SDHCLK"),
-	INIT_CLKREG(&clk_sdh1, "sdhci-pxav3.1", "PXA-SDHCLK"),
-	INIT_CLKREG(&clk_sdh2, "sdhci-pxav3.2", "PXA-SDHCLK"),
-	INIT_CLKREG(&clk_sdh3, "sdhci-pxav3.3", "PXA-SDHCLK"),
-};
-
-void __init mmp2_clk_init(phys_addr_t mpmu_phys, phys_addr_t apmu_phys,
-			  phys_addr_t apbc_phys)
-{
-	clkdev_add_table(ARRAY_AND_SIZE(mmp2_clkregs));
-}
diff --git a/arch/arm/mach-mmp/clock-pxa168.c b/arch/arm/mach-mmp/clock-pxa168.c
deleted file mode 100644
index 2d4a5d96a1ff..000000000000
--- a/arch/arm/mach-mmp/clock-pxa168.c
+++ /dev/null
@@ -1,94 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/init.h>
-#include <linux/list.h>
-#include <linux/io.h>
-#include <linux/clk.h>
-#include <linux/clk/mmp.h>
-
-#include "addr-map.h"
-
-#include "common.h"
-#include "clock.h"
-
-/*
- * APB clock register offsets for PXA168
- */
-#define APBC_UART1	APBC_REG(0x000)
-#define APBC_UART2	APBC_REG(0x004)
-#define APBC_GPIO	APBC_REG(0x008)
-#define APBC_PWM1	APBC_REG(0x00c)
-#define APBC_PWM2	APBC_REG(0x010)
-#define APBC_PWM3	APBC_REG(0x014)
-#define APBC_PWM4	APBC_REG(0x018)
-#define APBC_RTC	APBC_REG(0x028)
-#define APBC_TWSI0	APBC_REG(0x02c)
-#define APBC_KPC	APBC_REG(0x030)
-#define APBC_TWSI1	APBC_REG(0x06c)
-#define APBC_UART3	APBC_REG(0x070)
-#define APBC_SSP1	APBC_REG(0x81c)
-#define APBC_SSP2	APBC_REG(0x820)
-#define APBC_SSP3	APBC_REG(0x84c)
-#define APBC_SSP4	APBC_REG(0x858)
-#define APBC_SSP5	APBC_REG(0x85c)
-
-#define APMU_NAND	APMU_REG(0x060)
-#define APMU_LCD	APMU_REG(0x04c)
-#define APMU_ETH	APMU_REG(0x0fc)
-#define APMU_USB	APMU_REG(0x05c)
-
-/* APB peripheral clocks */
-static APBC_CLK(uart1, UART1, 1, 14745600);
-static APBC_CLK(uart2, UART2, 1, 14745600);
-static APBC_CLK(uart3, UART3, 1, 14745600);
-static APBC_CLK(twsi0, TWSI0, 1, 33000000);
-static APBC_CLK(twsi1, TWSI1, 1, 33000000);
-static APBC_CLK(pwm1, PWM1, 1, 13000000);
-static APBC_CLK(pwm2, PWM2, 1, 13000000);
-static APBC_CLK(pwm3, PWM3, 1, 13000000);
-static APBC_CLK(pwm4, PWM4, 1, 13000000);
-static APBC_CLK(ssp1, SSP1, 4, 0);
-static APBC_CLK(ssp2, SSP2, 4, 0);
-static APBC_CLK(ssp3, SSP3, 4, 0);
-static APBC_CLK(ssp4, SSP4, 4, 0);
-static APBC_CLK(ssp5, SSP5, 4, 0);
-static APBC_CLK(gpio, GPIO, 0, 13000000);
-static APBC_CLK(keypad, KPC, 0, 32000);
-static APBC_CLK(rtc, RTC, 8, 32768);
-
-static APMU_CLK(nand, NAND, 0x19b, 156000000);
-static APMU_CLK(lcd, LCD, 0x7f, 312000000);
-static APMU_CLK(eth, ETH, 0x09, 0);
-static APMU_CLK(usb, USB, 0x12, 0);
-
-/* device and clock bindings */
-static struct clk_lookup pxa168_clkregs[] = {
-	INIT_CLKREG(&clk_uart1, "pxa2xx-uart.0", NULL),
-	INIT_CLKREG(&clk_uart2, "pxa2xx-uart.1", NULL),
-	INIT_CLKREG(&clk_uart3, "pxa2xx-uart.2", NULL),
-	INIT_CLKREG(&clk_twsi0, "pxa2xx-i2c.0", NULL),
-	INIT_CLKREG(&clk_twsi1, "pxa2xx-i2c.1", NULL),
-	INIT_CLKREG(&clk_pwm1, "pxa168-pwm.0", NULL),
-	INIT_CLKREG(&clk_pwm2, "pxa168-pwm.1", NULL),
-	INIT_CLKREG(&clk_pwm3, "pxa168-pwm.2", NULL),
-	INIT_CLKREG(&clk_pwm4, "pxa168-pwm.3", NULL),
-	INIT_CLKREG(&clk_ssp1, "pxa168-ssp.0", NULL),
-	INIT_CLKREG(&clk_ssp2, "pxa168-ssp.1", NULL),
-	INIT_CLKREG(&clk_ssp3, "pxa168-ssp.2", NULL),
-	INIT_CLKREG(&clk_ssp4, "pxa168-ssp.3", NULL),
-	INIT_CLKREG(&clk_ssp5, "pxa168-ssp.4", NULL),
-	INIT_CLKREG(&clk_nand, "pxa3xx-nand", NULL),
-	INIT_CLKREG(&clk_lcd, "pxa168-fb", NULL),
-	INIT_CLKREG(&clk_gpio, "mmp-gpio", NULL),
-	INIT_CLKREG(&clk_keypad, "pxa27x-keypad", NULL),
-	INIT_CLKREG(&clk_eth, "pxa168-eth", "MFUCLK"),
-	INIT_CLKREG(&clk_usb, NULL, "PXA168-USBCLK"),
-	INIT_CLKREG(&clk_rtc, "sa1100-rtc", NULL),
-};
-
-void __init pxa168_clk_init(phys_addr_t mpmu_phys, phys_addr_t apmu_phys,
-			    phys_addr_t apbc_phys)
-{
-	clkdev_add_table(ARRAY_AND_SIZE(pxa168_clkregs));
-}
diff --git a/arch/arm/mach-mmp/clock-pxa910.c b/arch/arm/mach-mmp/clock-pxa910.c
deleted file mode 100644
index 3cd83ff91bb0..000000000000
--- a/arch/arm/mach-mmp/clock-pxa910.c
+++ /dev/null
@@ -1,70 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/init.h>
-#include <linux/list.h>
-#include <linux/io.h>
-#include <linux/clk.h>
-#include <linux/clk/mmp.h>
-
-#include "addr-map.h"
-
-#include "common.h"
-#include "clock.h"
-
-/*
- * APB Clock register offsets for PXA910
- */
-#define APBC_UART0	APBC_REG(0x000)
-#define APBC_UART1	APBC_REG(0x004)
-#define APBC_GPIO	APBC_REG(0x008)
-#define APBC_PWM1	APBC_REG(0x00c)
-#define APBC_PWM2	APBC_REG(0x010)
-#define APBC_PWM3	APBC_REG(0x014)
-#define APBC_PWM4	APBC_REG(0x018)
-#define APBC_SSP1	APBC_REG(0x01c)
-#define APBC_SSP2	APBC_REG(0x020)
-#define APBC_RTC	APBC_REG(0x028)
-#define APBC_TWSI0	APBC_REG(0x02c)
-#define APBC_KPC	APBC_REG(0x030)
-#define APBC_SSP3	APBC_REG(0x04c)
-#define APBC_TWSI1	APBC_REG(0x06c)
-
-#define APMU_NAND	APMU_REG(0x060)
-#define APMU_USB	APMU_REG(0x05c)
-
-static APBC_CLK(uart1, UART0, 1, 14745600);
-static APBC_CLK(uart2, UART1, 1, 14745600);
-static APBC_CLK(twsi0, TWSI0, 1, 33000000);
-static APBC_CLK(twsi1, TWSI1, 1, 33000000);
-static APBC_CLK(pwm1, PWM1, 1, 13000000);
-static APBC_CLK(pwm2, PWM2, 1, 13000000);
-static APBC_CLK(pwm3, PWM3, 1, 13000000);
-static APBC_CLK(pwm4, PWM4, 1, 13000000);
-static APBC_CLK(gpio, GPIO, 0, 13000000);
-static APBC_CLK(rtc, RTC, 8, 32768);
-
-static APMU_CLK(nand, NAND, 0x19b, 156000000);
-static APMU_CLK(u2o, USB, 0x1b, 480000000);
-
-/* device and clock bindings */
-static struct clk_lookup pxa910_clkregs[] = {
-	INIT_CLKREG(&clk_uart1, "pxa2xx-uart.0", NULL),
-	INIT_CLKREG(&clk_uart2, "pxa2xx-uart.1", NULL),
-	INIT_CLKREG(&clk_twsi0, "pxa2xx-i2c.0", NULL),
-	INIT_CLKREG(&clk_twsi1, "pxa2xx-i2c.1", NULL),
-	INIT_CLKREG(&clk_pwm1, "pxa910-pwm.0", NULL),
-	INIT_CLKREG(&clk_pwm2, "pxa910-pwm.1", NULL),
-	INIT_CLKREG(&clk_pwm3, "pxa910-pwm.2", NULL),
-	INIT_CLKREG(&clk_pwm4, "pxa910-pwm.3", NULL),
-	INIT_CLKREG(&clk_nand, "pxa3xx-nand", NULL),
-	INIT_CLKREG(&clk_gpio, "mmp-gpio", NULL),
-	INIT_CLKREG(&clk_u2o, NULL, "U2OCLK"),
-	INIT_CLKREG(&clk_rtc, "sa1100-rtc", NULL),
-};
-
-void __init pxa910_clk_init(phys_addr_t mpmu_phys, phys_addr_t apmu_phys,
-			    phys_addr_t apbc_phys, phys_addr_t apbcp_phys)
-{
-	clkdev_add_table(ARRAY_AND_SIZE(pxa910_clkregs));
-}
diff --git a/arch/arm/mach-mmp/clock.c b/arch/arm/mach-mmp/clock.c
deleted file mode 100644
index 291fe41e3547..000000000000
--- a/arch/arm/mach-mmp/clock.c
+++ /dev/null
@@ -1,105 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- *  linux/arch/arm/mach-mmp/clock.c
- */
-
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/list.h>
-#include <linux/spinlock.h>
-#include <linux/clk.h>
-#include <linux/io.h>
-
-#include "regs-apbc.h"
-#include "clock.h"
-
-static void apbc_clk_enable(struct clk *clk)
-{
-	uint32_t clk_rst;
-
-	clk_rst = APBC_APBCLK | APBC_FNCLK | APBC_FNCLKSEL(clk->fnclksel);
-	__raw_writel(clk_rst, clk->clk_rst);
-}
-
-static void apbc_clk_disable(struct clk *clk)
-{
-	__raw_writel(0, clk->clk_rst);
-}
-
-struct clkops apbc_clk_ops = {
-	.enable		= apbc_clk_enable,
-	.disable	= apbc_clk_disable,
-};
-
-static void apmu_clk_enable(struct clk *clk)
-{
-	__raw_writel(clk->enable_val, clk->clk_rst);
-}
-
-static void apmu_clk_disable(struct clk *clk)
-{
-	__raw_writel(0, clk->clk_rst);
-}
-
-struct clkops apmu_clk_ops = {
-	.enable		= apmu_clk_enable,
-	.disable	= apmu_clk_disable,
-};
-
-static DEFINE_SPINLOCK(clocks_lock);
-
-int clk_enable(struct clk *clk)
-{
-	unsigned long flags;
-
-	spin_lock_irqsave(&clocks_lock, flags);
-	if (clk->enabled++ == 0)
-		clk->ops->enable(clk);
-	spin_unlock_irqrestore(&clocks_lock, flags);
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
-		clk->ops->disable(clk);
-	spin_unlock_irqrestore(&clocks_lock, flags);
-}
-EXPORT_SYMBOL(clk_disable);
-
-unsigned long clk_get_rate(struct clk *clk)
-{
-	unsigned long rate;
-
-	if (clk->ops->getrate)
-		rate = clk->ops->getrate(clk);
-	else
-		rate = clk->rate;
-
-	return rate;
-}
-EXPORT_SYMBOL(clk_get_rate);
-
-int clk_set_rate(struct clk *clk, unsigned long rate)
-{
-	unsigned long flags;
-	int ret = -EINVAL;
-
-	if (clk->ops->setrate) {
-		spin_lock_irqsave(&clocks_lock, flags);
-		ret = clk->ops->setrate(clk, rate);
-		spin_unlock_irqrestore(&clocks_lock, flags);
-	}
-
-	return ret;
-}
-EXPORT_SYMBOL(clk_set_rate);
diff --git a/arch/arm/mach-mmp/clock.h b/arch/arm/mach-mmp/clock.h
deleted file mode 100644
index 0256c894fa11..000000000000
--- a/arch/arm/mach-mmp/clock.h
+++ /dev/null
@@ -1,65 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <linux/clkdev.h>
-
-struct clkops {
-	void			(*enable)(struct clk *);
-	void			(*disable)(struct clk *);
-	unsigned long		(*getrate)(struct clk *);
-	int			(*setrate)(struct clk *, unsigned long);
-};
-
-struct clk {
-	const struct clkops	*ops;
-
-	void __iomem	*clk_rst;	/* clock reset control register */
-	int		fnclksel;	/* functional clock select (APBC) */
-	uint32_t	enable_val;	/* value for clock enable (APMU) */
-	unsigned long	rate;
-	int		enabled;
-};
-
-extern struct clkops apbc_clk_ops;
-extern struct clkops apmu_clk_ops;
-
-#define APBC_CLK(_name, _reg, _fnclksel, _rate)			\
-struct clk clk_##_name = {					\
-		.clk_rst	= APBC_##_reg,			\
-		.fnclksel	= _fnclksel,			\
-		.rate		= _rate,			\
-		.ops		= &apbc_clk_ops,		\
-}
-
-#define APBC_CLK_OPS(_name, _reg, _fnclksel, _rate, _ops)	\
-struct clk clk_##_name = {					\
-		.clk_rst	= APBC_##_reg,			\
-		.fnclksel	= _fnclksel,			\
-		.rate		= _rate,			\
-		.ops		= _ops,				\
-}
-
-#define APMU_CLK(_name, _reg, _eval, _rate)			\
-struct clk clk_##_name = {					\
-		.clk_rst	= APMU_##_reg,			\
-		.enable_val	= _eval,			\
-		.rate		= _rate,			\
-		.ops		= &apmu_clk_ops,		\
-}
-
-#define APMU_CLK_OPS(_name, _reg, _eval, _rate, _ops)		\
-struct clk clk_##_name = {					\
-		.clk_rst	= APMU_##_reg,			\
-		.enable_val	= _eval,			\
-		.rate		= _rate,			\
-		.ops		= _ops,				\
-}
-
-#define INIT_CLKREG(_clk, _devname, _conname)			\
-	{							\
-		.clk		= _clk,				\
-		.dev_id		= _devname,			\
-		.con_id		= _conname,			\
-	}
-
-extern struct clk clk_pxa168_gpio;
-extern struct clk clk_pxa168_timers;
-- 
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
