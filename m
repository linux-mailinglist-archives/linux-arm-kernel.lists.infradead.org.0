Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD27AEABE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWRT7TmAMU8APnWV+WNoNSybKfZED67zAyWRBaA6HP8=; b=DKc4hMwnvcn6/k
	G56AedTIVGFaS8LH6pDqFtg6qtEoizKgjOfTAcQhy5rBElavRHViB5Pb3gAUBsj3h0BnnPZxb4qWu
	SE4lB5YEeQGMphJg4LVK40fQkL31URaCutBPTLlyeoG04bRZj99qvZ3ytHJV9hOcMkNwvZHlYZeXx
	kUFZI0FMgtpG+w5OBFQYGCqAoy6V8v/WiBv/8R/p5foNgIhCC1aNXwhbDB3Hw31neMVwci/Mswo0E
	d2aKrW7/0enskZjoTBxGL/5GcZ1IR1f5AafwEJiktrOkJiqqFNPQGwyu6RjLULO3maukmKL/UpTIQ
	d3OnEUwFLa+4mE6LKYDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6DW-00052k-SJ; Thu, 31 Oct 2019 08:54:06 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6D1-0004rR-K7
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:53:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E9CA8510EE;
 Thu, 31 Oct 2019 09:53:33 +0100 (CET)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id fJbrf0t7ts4K; Thu, 31 Oct 2019 09:53:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id BBC445110B;
 Thu, 31 Oct 2019 09:53:27 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gNDH4ZZFNXpJ; Thu, 31 Oct 2019 09:53:27 +0100 (CET)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id DC4F0510EE;
 Thu, 31 Oct 2019 09:53:26 +0100 (CET)
Message-ID: <8f1b6585e671b76120f0752b83fbe60c4c01d334.camel@v3.sk>
Subject: Re: [PATCH 46/46] ARM: pxa: move plat-pxa to drivers/soc/
From: Lubomir Rintel <lkundrak@v3.sk>
To: Arnd Bergmann <arnd@arndb.de>, Daniel Mack <daniel@zonque.org>, Haojian
 Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 31 Oct 2019 09:53:26 +0100
In-Reply-To: <20191018154201.1276638-46-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-46-arnd@arndb.de>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_015335_998744_84C4D7B6 
X-CRM114-Status: GOOD (  15.73  )
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

On Fri, 2019-10-18 at 17:42 +0200, Arnd Bergmann wrote:
> There are two drivers in arch/arm/plat-pxa: mfp and ssp. Both
> of them should ideally not be needed at all, as there are
> proper subsystems to replace them.
> 
> OTOH, they are self-contained and can simply be normal
> SoC drivers, so move them over there to eliminate one more
> of the plat-* directories.
> 
> Cc: Lubomir Rintel <lkundrak@v3.sk>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Lubomir Rintel <lkundrak@v3.sk> (mach-mmp)

> ---
>  arch/arm/Kconfig                                            | 3 ---
>  arch/arm/Makefile                                           | 1 -
>  arch/arm/mach-mmp/mfp.h                                     | 2 +-
>  arch/arm/mach-pxa/include/mach/mfp.h                        | 2 +-
>  arch/arm/mach-pxa/mfp-pxa2xx.h                              | 2 +-
>  arch/arm/mach-pxa/mfp-pxa3xx.h                              | 2 +-
>  drivers/soc/Kconfig                                         | 1 +
>  drivers/soc/Makefile                                        | 1 +
>  {arch/arm/plat-pxa => drivers/soc/pxa}/Kconfig              | 5 ++---
>  {arch/arm/plat-pxa => drivers/soc/pxa}/Makefile             | 4 ----
>  {arch/arm/plat-pxa => drivers/soc/pxa}/mfp.c                | 2 +-
>  {arch/arm/plat-pxa => drivers/soc/pxa}/ssp.c                | 0
>  .../plat-pxa/include/plat => include/linux/soc/pxa}/mfp.h   | 6 ++----
>  13 files changed, 11 insertions(+), 20 deletions(-)
>  rename {arch/arm/plat-pxa => drivers/soc/pxa}/Kconfig (83%)
>  rename {arch/arm/plat-pxa => drivers/soc/pxa}/Makefile (51%)
>  rename {arch/arm/plat-pxa => drivers/soc/pxa}/mfp.c (99%)
>  rename {arch/arm/plat-pxa => drivers/soc/pxa}/ssp.c (100%)
>  rename {arch/arm/plat-pxa/include/plat => include/linux/soc/pxa}/mfp.h (98%)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index b01f762abbda..330a1685101a 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -796,9 +796,6 @@ config PLAT_ORION_LEGACY
>  	bool
>  	select PLAT_ORION
>  
> -config PLAT_PXA
> -	bool
> -
>  config PLAT_VERSATILE
>  	bool
>  
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index db857d07114f..09622c26a8a4 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -238,7 +238,6 @@ plat-$(CONFIG_ARCH_OMAP)	+= omap
>  plat-$(CONFIG_ARCH_S3C64XX)	+= samsung
>  plat-$(CONFIG_ARCH_S5PV210)	+= samsung
>  plat-$(CONFIG_PLAT_ORION)	+= orion
> -plat-$(CONFIG_PLAT_PXA)		+= pxa
>  plat-$(CONFIG_PLAT_S3C24XX)	+= samsung
>  plat-$(CONFIG_PLAT_VERSATILE)	+= versatile
>  
> diff --git a/arch/arm/mach-mmp/mfp.h b/arch/arm/mach-mmp/mfp.h
> index 75a4acb33b1b..6f3057987756 100644
> --- a/arch/arm/mach-mmp/mfp.h
> +++ b/arch/arm/mach-mmp/mfp.h
> @@ -2,7 +2,7 @@
>  #ifndef __ASM_MACH_MFP_H
>  #define __ASM_MACH_MFP_H
>  
> -#include <plat/mfp.h>
> +#include <linux/soc/pxa/mfp.h>
>  
>  /*
>   * NOTE: the MFPR register bit definitions on PXA168 processor lines are a
> diff --git a/arch/arm/mach-pxa/include/mach/mfp.h b/arch/arm/mach-pxa/include/mach/mfp.h
> index dbb961fb570e..7e0879bd4102 100644
> --- a/arch/arm/mach-pxa/include/mach/mfp.h
> +++ b/arch/arm/mach-pxa/include/mach/mfp.h
> @@ -13,6 +13,6 @@
>  #ifndef __ASM_ARCH_MFP_H
>  #define __ASM_ARCH_MFP_H
>  
> -#include <plat/mfp.h>
> +#include <linux/soc/pxa/mfp.h>
>  
>  #endif /* __ASM_ARCH_MFP_H */
> diff --git a/arch/arm/mach-pxa/mfp-pxa2xx.h b/arch/arm/mach-pxa/mfp-pxa2xx.h
> index 980145e7ee99..683a3ea5f154 100644
> --- a/arch/arm/mach-pxa/mfp-pxa2xx.h
> +++ b/arch/arm/mach-pxa/mfp-pxa2xx.h
> @@ -2,7 +2,7 @@
>  #ifndef __ASM_ARCH_MFP_PXA2XX_H
>  #define __ASM_ARCH_MFP_PXA2XX_H
>  
> -#include <plat/mfp.h>
> +#include <linux/soc/pxa/mfp.h>
>  
>  /*
>   * the following MFP_xxx bit definitions in mfp.h are re-used for pxa2xx:
> diff --git a/arch/arm/mach-pxa/mfp-pxa3xx.h b/arch/arm/mach-pxa/mfp-pxa3xx.h
> index cdd830926d1c..81fec4fa5a0f 100644
> --- a/arch/arm/mach-pxa/mfp-pxa3xx.h
> +++ b/arch/arm/mach-pxa/mfp-pxa3xx.h
> @@ -2,7 +2,7 @@
>  #ifndef __ASM_ARCH_MFP_PXA3XX_H
>  #define __ASM_ARCH_MFP_PXA3XX_H
>  
> -#include <plat/mfp.h>
> +#include <linux/soc/pxa/mfp.h>
>  
>  #define MFPR_BASE	(0x40e10000)
>  
> diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
> index 833e04a7835c..fc30a33ada9b 100644
> --- a/drivers/soc/Kconfig
> +++ b/drivers/soc/Kconfig
> @@ -10,6 +10,7 @@ source "drivers/soc/fsl/Kconfig"
>  source "drivers/soc/imx/Kconfig"
>  source "drivers/soc/ixp4xx/Kconfig"
>  source "drivers/soc/mediatek/Kconfig"
> +source "drivers/soc/pxa/Kconfig"
>  source "drivers/soc/qcom/Kconfig"
>  source "drivers/soc/renesas/Kconfig"
>  source "drivers/soc/rockchip/Kconfig"
> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> index 2ec355003524..2934ad8c5a9f 100644
> --- a/drivers/soc/Makefile
> +++ b/drivers/soc/Makefile
> @@ -15,6 +15,7 @@ obj-$(CONFIG_ARCH_MXC)		+= imx/
>  obj-$(CONFIG_ARCH_IXP4XX)	+= ixp4xx/
>  obj-$(CONFIG_SOC_XWAY)		+= lantiq/
>  obj-y				+= mediatek/
> +obj-y				+= pxa/
>  obj-y				+= amlogic/
>  obj-y				+= qcom/
>  obj-y				+= renesas/
> diff --git a/arch/arm/plat-pxa/Kconfig b/drivers/soc/pxa/Kconfig
> similarity index 83%
> rename from arch/arm/plat-pxa/Kconfig
> rename to drivers/soc/pxa/Kconfig
> index 6f7a0a39c2b9..c5c265aa4f07 100644
> --- a/arch/arm/plat-pxa/Kconfig
> +++ b/drivers/soc/pxa/Kconfig
> @@ -1,9 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> -if PLAT_PXA
> +config PLAT_PXA
> +	bool
>  
>  config PXA_SSP
>  	tristate
>  	help
>  	  Enable support for PXA2xx SSP ports
> -
> -endif
> diff --git a/arch/arm/plat-pxa/Makefile b/drivers/soc/pxa/Makefile
> similarity index 51%
> rename from arch/arm/plat-pxa/Makefile
> rename to drivers/soc/pxa/Makefile
> index 349ea0af8450..413deceddbdd 100644
> --- a/arch/arm/plat-pxa/Makefile
> +++ b/drivers/soc/pxa/Makefile
> @@ -1,8 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> -#
> -# Makefile for code common across different PXA processor families
> -#
> -ccflags-$(CONFIG_ARCH_MMP) := -I$(srctree)/$(src)/include
>  
>  obj-$(CONFIG_PXA3xx)		+= mfp.o
>  obj-$(CONFIG_ARCH_MMP)		+= mfp.o
> diff --git a/arch/arm/plat-pxa/mfp.c b/drivers/soc/pxa/mfp.c
> similarity index 99%
> rename from arch/arm/plat-pxa/mfp.c
> rename to drivers/soc/pxa/mfp.c
> index 17fc4f33f35b..6220ba321cfc 100644
> --- a/arch/arm/plat-pxa/mfp.c
> +++ b/drivers/soc/pxa/mfp.c
> @@ -15,7 +15,7 @@
>  #include <linux/init.h>
>  #include <linux/io.h>
>  
> -#include <plat/mfp.h>
> +#include <linux/soc/pxa/mfp.h>
>  
>  #define MFPR_SIZE	(PAGE_SIZE)
>  
> diff --git a/arch/arm/plat-pxa/ssp.c b/drivers/soc/pxa/ssp.c
> similarity index 100%
> rename from arch/arm/plat-pxa/ssp.c
> rename to drivers/soc/pxa/ssp.c
> diff --git a/arch/arm/plat-pxa/include/plat/mfp.h b/include/linux/soc/pxa/mfp.h
> similarity index 98%
> rename from arch/arm/plat-pxa/include/plat/mfp.h
> rename to include/linux/soc/pxa/mfp.h
> index 3accaa9ee781..39779cbed0c0 100644
> --- a/arch/arm/plat-pxa/include/plat/mfp.h
> +++ b/include/linux/soc/pxa/mfp.h
> @@ -1,7 +1,5 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  /*
> - * arch/arm/plat-pxa/include/plat/mfp.h
> - *
>   *   Common Multi-Function Pin Definitions
>   *
>   * Copyright (C) 2007 Marvell International Ltd.
> @@ -453,8 +451,8 @@ struct mfp_addr_map {
>  
>  #define MFP_ADDR_END	{ MFP_PIN_INVALID, 0 }
>  
> -void __init mfp_init_base(void __iomem *mfpr_base);
> -void __init mfp_init_addr(struct mfp_addr_map *map);
> +void mfp_init_base(void __iomem *mfpr_base);
> +void mfp_init_addr(struct mfp_addr_map *map);
>  
>  /*
>   * mfp_{read, write}()	- for direct read/write access to the MFPR register


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
