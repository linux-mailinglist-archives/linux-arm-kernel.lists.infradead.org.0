Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8990DC9BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBeGIdgLkbyqmYLng6J5WtndAIiwmsZLaAAKMaUsxr0=; b=kh7dWuJFSxczuA
	FYBE08eUA2rBJ/TLLcg8P2mhoZfCoeZHhmsUz5IX7d4Lx/X7MRqCVafwXPXb7GBJN2F1eMMV191df
	N6AqBu83kGoGrbgMrJxWEGbYTnuWcpO3G8TKPoU8lU8rSyeYZy/2cr841E9wUblQ5ya82sac4xg1j
	C8ZL4xSax5xkKiD5QTQJvcmoxFuOWSvbUwWcIHIa2OtGWGb0AEKLTrNR8hQpMFt37Hqef++vZyuyR
	fdk8HcbFTJXjuMIoIrwXe3wE5bfY86bIMb83/gD5ckaHjmX/PnRVhLj1YSXDSat0jCZ72I86R9AcP
	W257y6Nst1UP1ZOZMA9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUWj-0000kU-Om; Fri, 18 Oct 2019 15:50:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOp-0008F4-RA
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:42:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3zNDqoR21iiDlrvH61Y9d+R74PA0ir7d0cvN8AwAN3A=; b=SmJOlVHC9S5f4kHdq0PGK1Vx8o
 ZPoxIztwIu4l5u4f3geLW1th6D14bye2wOfBt0q98ueeSuZEiv62wJF9p8XF1OP7azxJYZv7UPcwn
 N89vWBqmZ/gTUwTP6BLQOGBYRL825Sa7E7sN9wc22eCzse7XZ5p4EfZbFf1Qf8qISYq8lf/P1wIML
 R09slsVv42ZS+mYd4Cj4ueunVbiCNH+WWyg3FlCY7BCL4uqkexpmYp5MrQiYIlDlawL1kMMbr6I03
 LJaZG6hWn+7GvYZXoSsYVwMITh0kuk3uE028SMfsYqCWplUXxoUoNzcPEa/xOKjdQICZBtjwXJZXc
 LszWQqrA==;
Received: from mout.kundenserver.de ([212.227.17.13])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOn-0007Xp-8H
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:42 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MnJZ4-1heU8G45uW-00jFeL; Fri, 18 Oct 2019 17:42:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 44/46] ARM: mmp: remove tavorevb board support
Date: Fri, 18 Oct 2019 17:41:59 +0200
Message-Id: <20191018154201.1276638-44-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:y7jfEvjTLo4pTZYmZ7+Kwb0GbtokFQyw9nT4Q8thdVUDgZEqLai
 kYUJ22LKQiw34r7mZjKIfEMQ179OUSE4H6wahEtjMQ/n6sUP7QPBoRs7FWIFxJmgy1vszL4
 d3C3GoeKRsN02viG5z2R5MuEUvUs77CWO+wnJEptznToF7y/0Pd+Rc/iuyztnQQ0xAooYwB
 6sf0Z3PnpyPwhCkVppnrw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zXNHNBbGRJA=:3eLOkhGGq/04MUXSvwVhzf
 orGo7MwbjtoXptBsbS7kZX+VkRtNYlyRyAog+zwhLMx27XPSI2AtYiVj+xsEFkbwDCNvXwtqj
 W4q4S8KF0aYf5V1A7SU3VaFaBy86zQL6ZcUFQhBRV9PUiQpk9sUBGn/Ik5Clz4ivmw80L4eWJ
 JMGRtE5sbku1s5qEZcB4B6REeTJWdak40Du26wlEN7Qyfa3mlsrJinCzyPgZUhHINMyYd5DFj
 qDu21Y4u+Jot+bQ3zjRPgqZ+/Opbpe4KvBYoiLb9tPQVed7WSp/d9jLvwi8G+dyduMsvbQtpM
 3lBkBplG/Q895dpxNipn5xsYksBq7jM3UjFoR0A3FFpBOd+51rJ/7QWuYHprm9W+l7v++Y1S1
 hl6xDX2stm0SIGeDv/BsEPtVjTA5CosNkwEVgzf7WuQY0/udXjVjJKJGRpAU2Zab7fMrja5+v
 3h2iHFX5vQmZ19tsFSwYpdQMAlMHnUjPK0E9O2FaSpecJVFFb2U2hJ6qr5vcijL7QtYrZzW9O
 WA15ssRHLPrRGHnROym1YiuBqT6yEDeXXKxKAKj9vJJkD6nn4UcFAJ9NiSVFimJlDt8w/Qulu
 VvBqzcTgKHjz9hxPtCFtSt9o4zQytABBbIzc2BitS27g4+donqpuYAUX6yCcW1le0W/IW1Cr1
 7zUjw58NT0ukVJbO2maoqFASAuTroDLGU3gkFyLlAJ3lLJtj/OHzCb1ODp0MO85+DuoRss4aI
 8fm1D3j+wsaIfQBxjl7VXkivFXX7SN688e2TBh7drEt+1vrAy03m62CGWciMP76Uo3J6QRGfg
 cSicPDmII80XqNOt72SD7wx5+m9yvhTWbZdgbiVfVfqdzGqKy9rA08CrxatC9iGxOV9sKlABJ
 pEC+zDkEM17umT87QyqA==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lubomir Rintel <lkundrak@v3.sk>, Linus Walleij <linus.walleij@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two tavorevb boards in the kernel, one using a PXA930 chip in
mach-pxa, and one using the later PXA910 chip in mach-mmp.  They use the
same board number, which is generally a bad idea, and in a multiplatform
kernel, we can end up with funny link errors like this one resulting
from two boards gettting controlled by the same Kconfig symbol:

arch/arm/mach-mmp/tavorevb.o: In function `tavorevb_init':
tavorevb.c:(.init.text+0x4c): undefined reference to `pxa910_device_uart1'
tavorevb.c:(.init.text+0x50): undefined reference to `pxa910_device_gpio'
tavorevb.o:(.arch.info.init+0x54): undefined reference to `pxa910_init_irq'
tavorevb.o:(.arch.info.init+0x58): undefined reference to `pxa910_timer_init'

The mach-pxa TavorEVB seems much more complete than the mach-mmp one
that supports only uart, gpio and ethernet. Further, I could find no
information about the board on the internet aside from references to
the Linux kernel, so I assume this was never available outside of Marvell
and can be removed entirely.

There is a third board named TavorEVB in the Kconfig description,
but this refers to the "TTC_DKB" machine. The two are clearly
related, so I change the Kconfig description to just list both
names.

Cc: Lubomir Rintel <lkundrak@v3.sk>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-mmp/Kconfig    |  10 +---
 arch/arm/mach-mmp/Makefile   |   1 -
 arch/arm/mach-mmp/tavorevb.c | 113 -----------------------------------
 3 files changed, 1 insertion(+), 123 deletions(-)
 delete mode 100644 arch/arm/mach-mmp/tavorevb.c

diff --git a/arch/arm/mach-mmp/Kconfig b/arch/arm/mach-mmp/Kconfig
index 0440109e973b..fc8cbe0064ae 100644
--- a/arch/arm/mach-mmp/Kconfig
+++ b/arch/arm/mach-mmp/Kconfig
@@ -39,16 +39,8 @@ config MACH_AVENGERS_LITE
 	  Say 'Y' here if you want to support the Marvell PXA168-based
 	  Avengers Lite Development Board.
 
-config MACH_TAVOREVB
-	bool "Marvell's PXA910 TavorEVB Development Board"
-	depends on ARCH_MULTI_V5
-	select CPU_PXA910
-	help
-	  Say 'Y' here if you want to support the Marvell PXA910-based
-	  TavorEVB Development Board.
-
 config MACH_TTC_DKB
-	bool "Marvell's PXA910 TavorEVB Development Board"
+	bool "Marvell's PXA910 TavorEVB/TTC_DKB Development Board"
 	depends on ARCH_MULTI_V5
 	select CPU_PXA910
 	help
diff --git a/arch/arm/mach-mmp/Makefile b/arch/arm/mach-mmp/Makefile
index 8f267c7bc6e8..0dc07e1f3196 100644
--- a/arch/arm/mach-mmp/Makefile
+++ b/arch/arm/mach-mmp/Makefile
@@ -27,7 +27,6 @@ endif
 obj-$(CONFIG_MACH_ASPENITE)	+= aspenite.o
 obj-$(CONFIG_MACH_ZYLONITE2)	+= aspenite.o
 obj-$(CONFIG_MACH_AVENGERS_LITE)+= avengers_lite.o
-obj-$(CONFIG_MACH_TAVOREVB)	+= tavorevb.o
 obj-$(CONFIG_MACH_TTC_DKB)	+= ttc_dkb.o
 obj-$(CONFIG_MACH_BROWNSTONE)	+= brownstone.o
 obj-$(CONFIG_MACH_FLINT)	+= flint.o
diff --git a/arch/arm/mach-mmp/tavorevb.c b/arch/arm/mach-mmp/tavorevb.c
deleted file mode 100644
index 3261d2322198..000000000000
--- a/arch/arm/mach-mmp/tavorevb.c
+++ /dev/null
@@ -1,113 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- *  linux/arch/arm/mach-mmp/tavorevb.c
- *
- *  Support for the Marvell PXA910-based TavorEVB Development Platform.
- */
-#include <linux/gpio.h>
-#include <linux/gpio-pxa.h>
-#include <linux/init.h>
-#include <linux/kernel.h>
-#include <linux/platform_device.h>
-#include <linux/smc91x.h>
-
-#include <asm/mach-types.h>
-#include <asm/mach/arch.h>
-#include "addr-map.h"
-#include "mfp-pxa910.h"
-#include "pxa910.h"
-#include "irqs.h"
-
-#include "common.h"
-
-static unsigned long tavorevb_pin_config[] __initdata = {
-	/* UART2 */
-	GPIO47_UART2_RXD,
-	GPIO48_UART2_TXD,
-
-	/* SMC */
-	SM_nCS0_nCS0,
-	SM_ADV_SM_ADV,
-	SM_SCLK_SM_SCLK,
-	SM_SCLK_SM_SCLK,
-	SM_BE0_SM_BE0,
-	SM_BE1_SM_BE1,
-
-	/* DFI */
-	DF_IO0_ND_IO0,
-	DF_IO1_ND_IO1,
-	DF_IO2_ND_IO2,
-	DF_IO3_ND_IO3,
-	DF_IO4_ND_IO4,
-	DF_IO5_ND_IO5,
-	DF_IO6_ND_IO6,
-	DF_IO7_ND_IO7,
-	DF_IO8_ND_IO8,
-	DF_IO9_ND_IO9,
-	DF_IO10_ND_IO10,
-	DF_IO11_ND_IO11,
-	DF_IO12_ND_IO12,
-	DF_IO13_ND_IO13,
-	DF_IO14_ND_IO14,
-	DF_IO15_ND_IO15,
-	DF_nCS0_SM_nCS2_nCS0,
-	DF_ALE_SM_WEn_ND_ALE,
-	DF_CLE_SM_OEn_ND_CLE,
-	DF_WEn_DF_WEn,
-	DF_REn_DF_REn,
-	DF_RDY0_DF_RDY0,
-};
-
-static struct pxa_gpio_platform_data pxa910_gpio_pdata = {
-	.irq_base	= MMP_GPIO_TO_IRQ(0),
-};
-
-static struct smc91x_platdata tavorevb_smc91x_info = {
-	.flags	= SMC91X_USE_16BIT | SMC91X_NOWAIT,
-};
-
-static struct resource smc91x_resources[] = {
-	[0] = {
-		.start	= SMC_CS1_PHYS_BASE + 0x300,
-		.end	= SMC_CS1_PHYS_BASE + 0xfffff,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= MMP_GPIO_TO_IRQ(80),
-		.end	= MMP_GPIO_TO_IRQ(80),
-		.flags	= IORESOURCE_IRQ | IORESOURCE_IRQ_HIGHEDGE,
-	}
-};
-
-static struct platform_device smc91x_device = {
-	.name		= "smc91x",
-	.id		= 0,
-	.dev		= {
-		.platform_data = &tavorevb_smc91x_info,
-	},
-	.num_resources	= ARRAY_SIZE(smc91x_resources),
-	.resource	= smc91x_resources,
-};
-
-static void __init tavorevb_init(void)
-{
-	mfp_config(ARRAY_AND_SIZE(tavorevb_pin_config));
-
-	/* on-chip devices */
-	pxa910_add_uart(1);
-	platform_device_add_data(&pxa910_device_gpio, &pxa910_gpio_pdata,
-				 sizeof(struct pxa_gpio_platform_data));
-	platform_device_register(&pxa910_device_gpio);
-
-	/* off-chip devices */
-	platform_device_register(&smc91x_device);
-}
-
-MACHINE_START(TAVOREVB, "PXA910 Evaluation Board (aka TavorEVB)")
-	.map_io		= mmp_map_io,
-	.nr_irqs	= MMP_NR_IRQS,
-	.init_irq       = pxa910_init_irq,
-	.init_time	= pxa910_timer_init,
-	.init_machine   = tavorevb_init,
-	.restart	= mmp_restart,
-MACHINE_END
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
