Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46058DD910
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 16:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TIyoCPyJkURLd5M9LfmWBgOjVIh9jzXZRtsS4OU0BE=; b=KMWPJ4WIeTwY7w
	HbBr5QYOsMNrbSz/6zaxe3J+Um/K4x+fo+Tnvh8wQWo+VN9HTs3+R6k4+XzXBexm2zm/jD1jiyUoE
	ES+xJoaM/rzcnBuli48CiEwPhCb9c+f/Ztjn9yfzmI0MoDrhzANCwMEjekgJ+da0Ry+mU9WM1Gm5X
	I/spRalhonK3nH5MMb7ujdtV/oY9Y4ZByAiZYmYO3eXhwrgMKGXYMvxGcaIzRoA5AzZ1ewvi27J1R
	LefEbu8ESFmuEXM6EggusrJsbuVS2Pa523incditsheGJD7VeoiEZNrJAGvvr2gETIjqfP9OTQcRx
	3q6n4KKTsDVTkpadUEAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLpb3-0007kU-TB; Sat, 19 Oct 2019 14:20:45 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLpat-0007jP-UD
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 14:20:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id B22B34F1C0;
 Sat, 19 Oct 2019 16:20:26 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id DjxP6GpsWBXi; Sat, 19 Oct 2019 16:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 7EC60501B1;
 Sat, 19 Oct 2019 16:20:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 6LVNgAAGEd2u; Sat, 19 Oct 2019 16:20:12 +0200 (CEST)
Received: from nedofet.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id D9D2B4F1C0;
 Sat, 19 Oct 2019 16:20:10 +0200 (CEST)
Message-ID: <4d6920e9fab519ddf69aae9da13a1cd02d13bddd.camel@v3.sk>
Subject: Re: [PATCH 44/46] ARM: mmp: remove tavorevb board support
From: Lubomir Rintel <lkundrak@v3.sk>
To: Arnd Bergmann <arnd@arndb.de>, Daniel Mack <daniel@zonque.org>, Haojian
 Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 19 Oct 2019 16:20:07 +0200
In-Reply-To: <20191018154201.1276638-44-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-44-arnd@arndb.de>
User-Agent: Evolution 3.34.0 (3.34.0-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_072036_282596_A89570B8 
X-CRM114-Status: GOOD (  22.30  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-10-18 at 17:41 +0200, Arnd Bergmann wrote:
> There are two tavorevb boards in the kernel, one using a PXA930 chip in
> mach-pxa, and one using the later PXA910 chip in mach-mmp.  They use the
> same board number, which is generally a bad idea, and in a multiplatform
> kernel, we can end up with funny link errors like this one resulting
> from two boards gettting controlled by the same Kconfig symbol:
> 
> arch/arm/mach-mmp/tavorevb.o: In function `tavorevb_init':
> tavorevb.c:(.init.text+0x4c): undefined reference to `pxa910_device_uart1'
> tavorevb.c:(.init.text+0x50): undefined reference to `pxa910_device_gpio'
> tavorevb.o:(.arch.info.init+0x54): undefined reference to `pxa910_init_irq'
> tavorevb.o:(.arch.info.init+0x58): undefined reference to `pxa910_timer_init'
> 
> The mach-pxa TavorEVB seems much more complete than the mach-mmp one
> that supports only uart, gpio and ethernet. Further, I could find no
> information about the board on the internet aside from references to
> the Linux kernel, so I assume this was never available outside of Marvell
> and can be removed entirely.
> 
> There is a third board named TavorEVB in the Kconfig description,
> but this refers to the "TTC_DKB" machine. The two are clearly
> related, so I change the Kconfig description to just list both
> names.
> 
> Cc: Lubomir Rintel <lkundrak@v3.sk>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Lubomir Rintel <lkundrak@v3.sk>

In fact, I'd love to see more non-DT boards go from mach-mmp. There are
good indications nobody is looking after MMP2-based "Jasper", "Flint"
and "Brownstone" and they probably weren't seen outside Marvell either.
The latter has a DTS file.

Would anybody miss them?

Thanks
Lubo

> ---
>  arch/arm/mach-mmp/Kconfig    |  10 +---
>  arch/arm/mach-mmp/Makefile   |   1 -
>  arch/arm/mach-mmp/tavorevb.c | 113 -----------------------------------
>  3 files changed, 1 insertion(+), 123 deletions(-)
>  delete mode 100644 arch/arm/mach-mmp/tavorevb.c
> 
> diff --git a/arch/arm/mach-mmp/Kconfig b/arch/arm/mach-mmp/Kconfig
> index 0440109e973b..fc8cbe0064ae 100644
> --- a/arch/arm/mach-mmp/Kconfig
> +++ b/arch/arm/mach-mmp/Kconfig
> @@ -39,16 +39,8 @@ config MACH_AVENGERS_LITE
>  	  Say 'Y' here if you want to support the Marvell PXA168-based
>  	  Avengers Lite Development Board.
>  
> -config MACH_TAVOREVB
> -	bool "Marvell's PXA910 TavorEVB Development Board"
> -	depends on ARCH_MULTI_V5
> -	select CPU_PXA910
> -	help
> -	  Say 'Y' here if you want to support the Marvell PXA910-based
> -	  TavorEVB Development Board.
> -
>  config MACH_TTC_DKB
> -	bool "Marvell's PXA910 TavorEVB Development Board"
> +	bool "Marvell's PXA910 TavorEVB/TTC_DKB Development Board"
>  	depends on ARCH_MULTI_V5
>  	select CPU_PXA910
>  	help
> diff --git a/arch/arm/mach-mmp/Makefile b/arch/arm/mach-mmp/Makefile
> index 8f267c7bc6e8..0dc07e1f3196 100644
> --- a/arch/arm/mach-mmp/Makefile
> +++ b/arch/arm/mach-mmp/Makefile
> @@ -27,7 +27,6 @@ endif
>  obj-$(CONFIG_MACH_ASPENITE)	+= aspenite.o
>  obj-$(CONFIG_MACH_ZYLONITE2)	+= aspenite.o
>  obj-$(CONFIG_MACH_AVENGERS_LITE)+= avengers_lite.o
> -obj-$(CONFIG_MACH_TAVOREVB)	+= tavorevb.o
>  obj-$(CONFIG_MACH_TTC_DKB)	+= ttc_dkb.o
>  obj-$(CONFIG_MACH_BROWNSTONE)	+= brownstone.o
>  obj-$(CONFIG_MACH_FLINT)	+= flint.o
> diff --git a/arch/arm/mach-mmp/tavorevb.c b/arch/arm/mach-mmp/tavorevb.c
> deleted file mode 100644
> index 3261d2322198..000000000000
> --- a/arch/arm/mach-mmp/tavorevb.c
> +++ /dev/null
> @@ -1,113 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - *  linux/arch/arm/mach-mmp/tavorevb.c
> - *
> - *  Support for the Marvell PXA910-based TavorEVB Development Platform.
> - */
> -#include <linux/gpio.h>
> -#include <linux/gpio-pxa.h>
> -#include <linux/init.h>
> -#include <linux/kernel.h>
> -#include <linux/platform_device.h>
> -#include <linux/smc91x.h>
> -
> -#include <asm/mach-types.h>
> -#include <asm/mach/arch.h>
> -#include "addr-map.h"
> -#include "mfp-pxa910.h"
> -#include "pxa910.h"
> -#include "irqs.h"
> -
> -#include "common.h"
> -
> -static unsigned long tavorevb_pin_config[] __initdata = {
> -	/* UART2 */
> -	GPIO47_UART2_RXD,
> -	GPIO48_UART2_TXD,
> -
> -	/* SMC */
> -	SM_nCS0_nCS0,
> -	SM_ADV_SM_ADV,
> -	SM_SCLK_SM_SCLK,
> -	SM_SCLK_SM_SCLK,
> -	SM_BE0_SM_BE0,
> -	SM_BE1_SM_BE1,
> -
> -	/* DFI */
> -	DF_IO0_ND_IO0,
> -	DF_IO1_ND_IO1,
> -	DF_IO2_ND_IO2,
> -	DF_IO3_ND_IO3,
> -	DF_IO4_ND_IO4,
> -	DF_IO5_ND_IO5,
> -	DF_IO6_ND_IO6,
> -	DF_IO7_ND_IO7,
> -	DF_IO8_ND_IO8,
> -	DF_IO9_ND_IO9,
> -	DF_IO10_ND_IO10,
> -	DF_IO11_ND_IO11,
> -	DF_IO12_ND_IO12,
> -	DF_IO13_ND_IO13,
> -	DF_IO14_ND_IO14,
> -	DF_IO15_ND_IO15,
> -	DF_nCS0_SM_nCS2_nCS0,
> -	DF_ALE_SM_WEn_ND_ALE,
> -	DF_CLE_SM_OEn_ND_CLE,
> -	DF_WEn_DF_WEn,
> -	DF_REn_DF_REn,
> -	DF_RDY0_DF_RDY0,
> -};
> -
> -static struct pxa_gpio_platform_data pxa910_gpio_pdata = {
> -	.irq_base	= MMP_GPIO_TO_IRQ(0),
> -};
> -
> -static struct smc91x_platdata tavorevb_smc91x_info = {
> -	.flags	= SMC91X_USE_16BIT | SMC91X_NOWAIT,
> -};
> -
> -static struct resource smc91x_resources[] = {
> -	[0] = {
> -		.start	= SMC_CS1_PHYS_BASE + 0x300,
> -		.end	= SMC_CS1_PHYS_BASE + 0xfffff,
> -		.flags	= IORESOURCE_MEM,
> -	},
> -	[1] = {
> -		.start	= MMP_GPIO_TO_IRQ(80),
> -		.end	= MMP_GPIO_TO_IRQ(80),
> -		.flags	= IORESOURCE_IRQ | IORESOURCE_IRQ_HIGHEDGE,
> -	}
> -};
> -
> -static struct platform_device smc91x_device = {
> -	.name		= "smc91x",
> -	.id		= 0,
> -	.dev		= {
> -		.platform_data = &tavorevb_smc91x_info,
> -	},
> -	.num_resources	= ARRAY_SIZE(smc91x_resources),
> -	.resource	= smc91x_resources,
> -};
> -
> -static void __init tavorevb_init(void)
> -{
> -	mfp_config(ARRAY_AND_SIZE(tavorevb_pin_config));
> -
> -	/* on-chip devices */
> -	pxa910_add_uart(1);
> -	platform_device_add_data(&pxa910_device_gpio, &pxa910_gpio_pdata,
> -				 sizeof(struct pxa_gpio_platform_data));
> -	platform_device_register(&pxa910_device_gpio);
> -
> -	/* off-chip devices */
> -	platform_device_register(&smc91x_device);
> -}
> -
> -MACHINE_START(TAVOREVB, "PXA910 Evaluation Board (aka TavorEVB)")
> -	.map_io		= mmp_map_io,
> -	.nr_irqs	= MMP_NR_IRQS,
> -	.init_irq       = pxa910_init_irq,
> -	.init_time	= pxa910_timer_init,
> -	.init_machine   = tavorevb_init,
> -	.restart	= mmp_restart,
> -MACHINE_END


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
