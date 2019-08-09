Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D403878A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vi5y2LaItkpoNHFxTEfFVorGKlJlvS3l6gcurgDgPwg=; b=CP5BuVqqAFROgo
	RSJf2fu2m+4n4UaRpLJaSoqyLbec+OZ1wOntBn0KpDWpndZWmaK6Kne4opvAKm+0Pq+umFsJQV6P+
	8Bx7mcqmx5p2RXlErJX3nSewe0TP3rG07bEK6K48Rs+BvEpD1r/sPg9+Y2HVILGdRHFQUFIObOpI6
	gsqAb393YmjImWwNyp5tZPJwlt3bKBVWJtV3wSlGwlekeLlFkvIjZilVVzcDocSZhAGoGrZD0dyC8
	DGXz7QEMhOcz31XOuxuW2Cdu10d211IETolE783d/ukgtXPcnsrRZD4ox1N18pgmAVY2bspTqOG1x
	DcMou2fR0mxu+tp7KNaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw38g-0002cV-SE; Fri, 09 Aug 2019 11:32:54 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw38S-0002bI-N0
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:32:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190809113239euoutp02558abe33377c5e1a35cbe399ef194cbb~5Pdu4T2lU2240322403euoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  9 Aug 2019 11:32:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190809113239euoutp02558abe33377c5e1a35cbe399ef194cbb~5Pdu4T2lU2240322403euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565350359;
 bh=9H6TCVWxS4WWp834lv0vZ+JUTMfTrMl9tabw47/GFkk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=vBnovRQbyCM1RWq5UqTaXaCMltY4xTo6TNsGvm21W9ZRiBZRaTA3m3s70On40phQO
 mHoA/f1Xgiui4XuqGHLjlgYyj8NKdIyFk48xWW/XoKVpx9uXElp+nufu8gliNcrcxu
 v8+eqvTUUvTW2SB7EXem4q2jzBWQY51SLBFPKD+4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190809113238eucas1p2c887f5d6009e59875c58507eeba05c70~5PduP21MZ1899918999eucas1p2Q;
 Fri,  9 Aug 2019 11:32:38 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C9.F3.04374.6D95D4D5; Fri,  9
 Aug 2019 12:32:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190809113237eucas1p2e210b031bcdd1d5e304b35a3f628c3f6~5PdtZNi7b1899918999eucas1p2M;
 Fri,  9 Aug 2019 11:32:37 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190809113237eusmtrp1c901dac16d018bbf5bbc28326f238bc3~5PdtKroRF0542805428eusmtrp1K;
 Fri,  9 Aug 2019 11:32:37 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-ea-5d4d59d6f137
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 89.DD.04166.5D95D4D5; Fri,  9
 Aug 2019 12:32:37 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190809113236eusmtip18f72046dc1c7701d44cdaa48f0f30158~5PdsoPzFW0514405144eusmtip1_;
 Fri,  9 Aug 2019 11:32:36 +0000 (GMT)
Subject: Re: [PATCH 02/22] ARM: omap1: make omapfb standalone compilable
To: Arnd Bergmann <arnd@arndb.de>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <55c9608d-68c4-17f6-2682-7668d5d7720a@samsung.com>
Date: Fri, 9 Aug 2019 13:32:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190808212234.2213262-3-arnd@arndb.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFKsWRmVeSWpSXmKPExsWy7djP87rXIn1jDU5vkLBY88LB4u+kY+wW
 V76+Z7NoXryezWLKn+VMFpseX2O1uLxrDpvF7CX9LBbr599is9h/xcuBy+P3r0mMHt++TmLx
 OPx1IYvHnWt72Dz2z13D7nG/+ziTx+Yl9R7Hb2xn8vi8SS6AM4rLJiU1J7MstUjfLoErY3fL
 c7aCt0UVh56eZmpg3BfbxcjJISFgIrH90QrmLkYuDiGBFYwSm85/Y4VwvjBKzPt9AyrzmVHi
 w45+NpiWuTs7WSASyxklpm16zgThvGWU+D69mx2kSljAQ6J9z2kwW0RAUWLqi2fMIDazwDUm
 iabfiiA2m4CVxMT2VYwgNq+AncTPHR1gNouAikTX72lgtqhAhMT9YxtYIWoEJU7OfMICYnMK
 mEo8bvnFBDFTXOLWk/lQtrzE9rdzmCEufckucfagYRcjB5DtIjGvNwIiLCzx6vgWdghbRuL0
 5B6wZyQE1jFK/O14wQzhbGeUWD75H9TL1hKHj19kBRnELKApsX6XPkTYUeLdn/WMEPP5JG68
 FYQ4gU9i0rbpzBBhXomONiGIajWJDcs2sMGs7dq5knkCo9IsJI/NQvLMLCTPzELYu4CRZRWj
 eGppcW56arFxXmq5XnFibnFpXrpecn7uJkZgCjv97/jXHYz7/iQdYhTgYFTi4W1Q9IkVYk0s
 K67MPcQowcGsJMJ7hcM3Vog3JbGyKrUoP76oNCe1+BCjNAeLkjhvNcODaCGB9MSS1OzU1ILU
 IpgsEwenVAMj17af37udWI7qXU1bKzbnUcPesuLMFs53tpIrheeXfOTSqrFSDhRzfnbmsfCu
 PRvXZi56sWbv/11y35uzFrcflrp6n7HjYRWf30bjzrMTYyffe29zdJFQUZ2I/oUVCq5WG+Tu
 JJXprrPceSiR/RKTsofIv1ty/RM2M7aILvvydLfbP2VRM+FjSizFGYmGWsxFxYkAOFZvil0D
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHIsWRmVeSWpSXmKPExsVy+t/xu7pXI31jDSYekbJY88LB4u+kY+wW
 V76+Z7NoXryezWLKn+VMFpseX2O1uLxrDpvF7CX9LBbr599is9h/xcuBy+P3r0mMHt++TmLx
 OPx1IYvHnWt72Dz2z13D7nG/+ziTx+Yl9R7Hb2xn8vi8SS6AM0rPpii/tCRVISO/uMRWKdrQ
 wkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEvY3fLc7aCt0UVh56eZmpg3BfbxcjJ
 ISFgIjF3ZydLFyMXh5DAUkaJ1R1/GLsYOYASMhLH15dB1AhL/LnWxQZR85pR4md/GyNIQljA
 Q6J9z2l2EFtEQFFi6otnzCBFzAI3mCQevulkhejYzCjx7NZZFpAqNgEriYntq8C6eQXsJH7u
 6ACzWQRUJLp+TwOzRQUiJM68X8ECUSMocXLmEzCbU8BU4nHLLyYQm1lAXeLPvEvMELa4xK0n
 86Hi8hLb385hnsAoNAtJ+ywkLbOQtMxC0rKAkWUVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZG
 YNxuO/Zz8w7GSxuDDzEKcDAq8fA2KPrECrEmlhVX5h5ilOBgVhLhvcLhGyvEm5JYWZValB9f
 VJqTWnyI0RTouYnMUqLJ+cCUklcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUI
 po+Jg1OqgdFwQeHdnR/V2GRlT2/yXyw3N0BNvbpjrvwty46AH+erVx65MfFkYm/VGa9nK8qe
 FXB996hYY7VzQcVT29X5ql23JkT83228wja16f+pD3N9t1+qjXxz69Ab/pKArpOxQobOPZ0h
 TIybdnm9NQ27mr/UKHpNh6hvT17hY7tnx5LPqHs85rJQClFiKc5INNRiLipOBADNOYTX8QIA
 AA==
X-CMS-MailID: 20190809113237eucas1p2e210b031bcdd1d5e304b35a3f628c3f6
X-Msg-Generator: CA
X-RootMTR: 20190808212453epcas2p44ff418662ee1acf428c6842ee4488f9f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190808212453epcas2p44ff418662ee1acf428c6842ee4488f9f
References: <20190808212234.2213262-1-arnd@arndb.de>
 <CGME20190808212453epcas2p44ff418662ee1acf428c6842ee4488f9f@epcas2p4.samsung.com>
 <20190808212234.2213262-3-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_043241_023279_048E58E6 
X-CRM114-Status: GOOD (  25.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 8/8/19 11:22 PM, Arnd Bergmann wrote:
> The omapfb driver is split into platform specific code for omap1, and
> driver code that is also specific to omap1.
> 
> Moving both parts into the driver directory simplifies the structure
> and avoids the dependency on certain omap machine header files.
> 
> The interrupt numbers in particular however must not be referenced
> directly from the driver to allow building in a multiplatform
> configuration, so these have to be passed through resources, is
> done for all other omap drivers.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

For fbdev part:

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

[ It seems that adding of static inline for omap_set_dma_priority()
  when ARCH_OMAP=n should be in patch #9 but this is a minor issue. ]

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> ---
>  arch/arm/mach-omap1/Makefile                  |  4 --
>  arch/arm/mach-omap1/fb.c                      | 19 +++++++-
>  arch/arm/mach-omap1/include/mach/lcdc.h       | 44 -------------------
>  drivers/video/fbdev/Makefile                  |  2 +-
>  drivers/video/fbdev/omap/Makefile             |  5 +++
>  .../video/fbdev/omap}/lcd_dma.c               |  4 +-
>  .../video/fbdev/omap}/lcd_dma.h               |  2 -
>  drivers/video/fbdev/omap/lcdc.c               |  8 ++--
>  drivers/video/fbdev/omap/lcdc.h               | 35 +++++++++++++++
>  drivers/video/fbdev/omap/omapfb.h             |  2 +
>  drivers/video/fbdev/omap/omapfb_main.c        | 16 ++++++-
>  drivers/video/fbdev/omap/sossi.c              |  3 +-
>  include/linux/omap-dma.h                      |  7 ++-
>  13 files changed, 90 insertions(+), 61 deletions(-)
>  delete mode 100644 arch/arm/mach-omap1/include/mach/lcdc.h
>  rename {arch/arm/mach-omap1 => drivers/video/fbdev/omap}/lcd_dma.c (99%)
>  rename {arch/arm/mach-omap1/include/mach => drivers/video/fbdev/omap}/lcd_dma.h (98%)
> 
> diff --git a/arch/arm/mach-omap1/Makefile b/arch/arm/mach-omap1/Makefile
> index c757a52d0801..450bbf552b57 100644
> --- a/arch/arm/mach-omap1/Makefile
> +++ b/arch/arm/mach-omap1/Makefile
> @@ -57,7 +57,3 @@ obj-$(CONFIG_ARCH_OMAP730)		+= gpio7xx.o
>  obj-$(CONFIG_ARCH_OMAP850)		+= gpio7xx.o
>  obj-$(CONFIG_ARCH_OMAP15XX)		+= gpio15xx.o
>  obj-$(CONFIG_ARCH_OMAP16XX)		+= gpio16xx.o
> -
> -ifneq ($(CONFIG_FB_OMAP),)
> -obj-y += lcd_dma.o
> -endif
> diff --git a/arch/arm/mach-omap1/fb.c b/arch/arm/mach-omap1/fb.c
> index 0e32a959f254..b093375afc27 100644
> --- a/arch/arm/mach-omap1/fb.c
> +++ b/arch/arm/mach-omap1/fb.c
> @@ -17,9 +17,12 @@
>  #include <linux/io.h>
>  #include <linux/omapfb.h>
>  #include <linux/dma-mapping.h>
> +#include <linux/irq.h>
>  
>  #include <asm/mach/map.h>
>  
> +#include <mach/irqs.h>
> +
>  #if IS_ENABLED(CONFIG_FB_OMAP)
>  
>  static bool omapfb_lcd_configured;
> @@ -27,6 +30,19 @@ static struct omapfb_platform_data omapfb_config;
>  
>  static u64 omap_fb_dma_mask = ~(u32)0;
>  
> +struct resource omap_fb_resources[] = {
> +	{
> +		.name  = "irq",
> +		.start = INT_LCD_CTRL,
> +		.flags = IORESOURCE_IRQ,
> +	},
> +	{
> +		.name  = "irq",
> +		.start = INT_SOSSI_MATCH,
> +		.flags = IORESOURCE_IRQ,
> +	},
> +};
> +
>  static struct platform_device omap_fb_device = {
>  	.name		= "omapfb",
>  	.id		= -1,
> @@ -35,7 +51,8 @@ static struct platform_device omap_fb_device = {
>  		.coherent_dma_mask	= DMA_BIT_MASK(32),
>  		.platform_data		= &omapfb_config,
>  	},
> -	.num_resources = 0,
> +	.num_resources = ARRAY_SIZE(omap_fb_resources),
> +	.resource = omap_fb_resources,
>  };
>  
>  void __init omapfb_set_lcd_config(const struct omap_lcd_config *config)
> diff --git a/arch/arm/mach-omap1/include/mach/lcdc.h b/arch/arm/mach-omap1/include/mach/lcdc.h
> deleted file mode 100644
> index 7152db1f5361..000000000000
> --- a/arch/arm/mach-omap1/include/mach/lcdc.h
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-or-later */
> -/*
> - * arch/arm/mach-omap1/include/mach/lcdc.h
> - *
> - * Extracted from drivers/video/omap/lcdc.c
> - * Copyright (C) 2004 Nokia Corporation
> - * Author: Imre Deak <imre.deak@nokia.com>
> - */
> -#ifndef __MACH_LCDC_H__
> -#define __MACH_LCDC_H__
> -
> -#define OMAP_LCDC_BASE			0xfffec000
> -#define OMAP_LCDC_SIZE			256
> -#define OMAP_LCDC_IRQ			INT_LCD_CTRL
> -
> -#define OMAP_LCDC_CONTROL		(OMAP_LCDC_BASE + 0x00)
> -#define OMAP_LCDC_TIMING0		(OMAP_LCDC_BASE + 0x04)
> -#define OMAP_LCDC_TIMING1		(OMAP_LCDC_BASE + 0x08)
> -#define OMAP_LCDC_TIMING2		(OMAP_LCDC_BASE + 0x0c)
> -#define OMAP_LCDC_STATUS		(OMAP_LCDC_BASE + 0x10)
> -#define OMAP_LCDC_SUBPANEL		(OMAP_LCDC_BASE + 0x14)
> -#define OMAP_LCDC_LINE_INT		(OMAP_LCDC_BASE + 0x18)
> -#define OMAP_LCDC_DISPLAY_STATUS	(OMAP_LCDC_BASE + 0x1c)
> -
> -#define OMAP_LCDC_STAT_DONE		(1 << 0)
> -#define OMAP_LCDC_STAT_VSYNC		(1 << 1)
> -#define OMAP_LCDC_STAT_SYNC_LOST	(1 << 2)
> -#define OMAP_LCDC_STAT_ABC		(1 << 3)
> -#define OMAP_LCDC_STAT_LINE_INT		(1 << 4)
> -#define OMAP_LCDC_STAT_FUF		(1 << 5)
> -#define OMAP_LCDC_STAT_LOADED_PALETTE	(1 << 6)
> -
> -#define OMAP_LCDC_CTRL_LCD_EN		(1 << 0)
> -#define OMAP_LCDC_CTRL_LCD_TFT		(1 << 7)
> -#define OMAP_LCDC_CTRL_LINE_IRQ_CLR_SEL	(1 << 10)
> -
> -#define OMAP_LCDC_IRQ_VSYNC		(1 << 2)
> -#define OMAP_LCDC_IRQ_DONE		(1 << 3)
> -#define OMAP_LCDC_IRQ_LOADED_PALETTE	(1 << 4)
> -#define OMAP_LCDC_IRQ_LINE_NIRQ		(1 << 5)
> -#define OMAP_LCDC_IRQ_LINE		(1 << 6)
> -#define OMAP_LCDC_IRQ_MASK		(((1 << 5) - 1) << 2)
> -
> -#endif /* __MACH_LCDC_H__ */
> diff --git a/drivers/video/fbdev/Makefile b/drivers/video/fbdev/Makefile
> index aab7155884ea..3324301e4c36 100644
> --- a/drivers/video/fbdev/Makefile
> +++ b/drivers/video/fbdev/Makefile
> @@ -111,7 +111,7 @@ obj-$(CONFIG_FB_UDL)		  += udlfb.o
>  obj-$(CONFIG_FB_SMSCUFX)	  += smscufx.o
>  obj-$(CONFIG_FB_XILINX)           += xilinxfb.o
>  obj-$(CONFIG_FB_SH_MOBILE_LCDC)	  += sh_mobile_lcdcfb.o
> -obj-$(CONFIG_FB_OMAP)             += omap/
> +obj-y				  += omap/
>  obj-y                             += omap2/
>  obj-$(CONFIG_XEN_FBDEV_FRONTEND)  += xen-fbfront.o
>  obj-$(CONFIG_FB_CARMINE)          += carminefb.o
> diff --git a/drivers/video/fbdev/omap/Makefile b/drivers/video/fbdev/omap/Makefile
> index daaa73a94e7f..b88e02f5cb1f 100644
> --- a/drivers/video/fbdev/omap/Makefile
> +++ b/drivers/video/fbdev/omap/Makefile
> @@ -5,6 +5,11 @@
>  
>  obj-$(CONFIG_FB_OMAP) += omapfb.o
>  
> +ifdef CONFIG_FB_OMAP
> +# must be built-in
> +obj-y += lcd_dma.o
> +endif
> +
>  objs-yy := omapfb_main.o lcdc.o
>  
>  objs-y$(CONFIG_FB_OMAP_LCDC_EXTERNAL) += sossi.o
> diff --git a/arch/arm/mach-omap1/lcd_dma.c b/drivers/video/fbdev/omap/lcd_dma.c
> similarity index 99%
> rename from arch/arm/mach-omap1/lcd_dma.c
> rename to drivers/video/fbdev/omap/lcd_dma.c
> index a72ac0c02b4f..867a63c06f42 100644
> --- a/arch/arm/mach-omap1/lcd_dma.c
> +++ b/drivers/video/fbdev/omap/lcd_dma.c
> @@ -26,7 +26,9 @@
>  #include <linux/omap-dma.h>
>  
>  #include <mach/hardware.h>
> -#include <mach/lcdc.h>
> +
> +#include "lcdc.h"
> +#include "lcd_dma.h"
>  
>  int omap_lcd_dma_running(void)
>  {
> diff --git a/arch/arm/mach-omap1/include/mach/lcd_dma.h b/drivers/video/fbdev/omap/lcd_dma.h
> similarity index 98%
> rename from arch/arm/mach-omap1/include/mach/lcd_dma.h
> rename to drivers/video/fbdev/omap/lcd_dma.h
> index 1a3c0cf17899..1b4780197381 100644
> --- a/arch/arm/mach-omap1/include/mach/lcd_dma.h
> +++ b/drivers/video/fbdev/omap/lcd_dma.h
> @@ -60,6 +60,4 @@ extern void omap_set_lcd_dma_b1_vxres(unsigned long vxres);
>  extern void omap_set_lcd_dma_b1_mirror(int mirror);
>  extern void omap_set_lcd_dma_b1_scale(unsigned int xscale, unsigned int yscale);
>  
> -extern int omap_lcd_dma_running(void);
> -
>  #endif /* __MACH_OMAP1_LCD_DMA_H__ */
> diff --git a/drivers/video/fbdev/omap/lcdc.c b/drivers/video/fbdev/omap/lcdc.c
> index fa73acfc1371..65953b7fbdb9 100644
> --- a/drivers/video/fbdev/omap/lcdc.c
> +++ b/drivers/video/fbdev/omap/lcdc.c
> @@ -17,7 +17,6 @@
>  #include <linux/clk.h>
>  #include <linux/gfp.h>
>  
> -#include <mach/lcdc.h>
>  #include <linux/omap-dma.h>
>  
>  #include <asm/mach-types.h>
> @@ -25,6 +24,7 @@
>  #include "omapfb.h"
>  
>  #include "lcdc.h"
> +#include "lcd_dma.h"
>  
>  #define MODULE_NAME			"lcdc"
>  
> @@ -713,7 +713,7 @@ static int omap_lcdc_init(struct omapfb_device *fbdev, int ext_mode,
>  	}
>  	clk_enable(lcdc.lcd_ck);
>  
> -	r = request_irq(OMAP_LCDC_IRQ, lcdc_irq_handler, 0, MODULE_NAME, fbdev);
> +	r = request_irq(fbdev->int_irq, lcdc_irq_handler, 0, MODULE_NAME, fbdev);
>  	if (r) {
>  		dev_err(fbdev->dev, "unable to get IRQ\n");
>  		goto fail2;
> @@ -744,7 +744,7 @@ static int omap_lcdc_init(struct omapfb_device *fbdev, int ext_mode,
>  fail4:
>  	omap_free_lcd_dma();
>  fail3:
> -	free_irq(OMAP_LCDC_IRQ, lcdc.fbdev);
> +	free_irq(fbdev->int_irq, lcdc.fbdev);
>  fail2:
>  	clk_disable(lcdc.lcd_ck);
>  fail1:
> @@ -759,7 +759,7 @@ static void omap_lcdc_cleanup(void)
>  		free_palette_ram();
>  	free_fbmem();
>  	omap_free_lcd_dma();
> -	free_irq(OMAP_LCDC_IRQ, lcdc.fbdev);
> +	free_irq(lcdc.fbdev->int_irq, lcdc.fbdev);
>  	clk_disable(lcdc.lcd_ck);
>  	clk_put(lcdc.lcd_ck);
>  }
> diff --git a/drivers/video/fbdev/omap/lcdc.h b/drivers/video/fbdev/omap/lcdc.h
> index 8a7607d861c1..cbbfd9b9e949 100644
> --- a/drivers/video/fbdev/omap/lcdc.h
> +++ b/drivers/video/fbdev/omap/lcdc.h
> @@ -1,6 +1,41 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
>  #ifndef LCDC_H
>  #define LCDC_H
> +/*
> + * Copyright (C) 2004 Nokia Corporation
> + * Author: Imre Deak <imre.deak@nokia.com>
> + */
> +#define OMAP_LCDC_BASE			0xfffec000
> +#define OMAP_LCDC_SIZE			256
> +#define OMAP_LCDC_IRQ			INT_LCD_CTRL
> +
> +#define OMAP_LCDC_CONTROL		(OMAP_LCDC_BASE + 0x00)
> +#define OMAP_LCDC_TIMING0		(OMAP_LCDC_BASE + 0x04)
> +#define OMAP_LCDC_TIMING1		(OMAP_LCDC_BASE + 0x08)
> +#define OMAP_LCDC_TIMING2		(OMAP_LCDC_BASE + 0x0c)
> +#define OMAP_LCDC_STATUS		(OMAP_LCDC_BASE + 0x10)
> +#define OMAP_LCDC_SUBPANEL		(OMAP_LCDC_BASE + 0x14)
> +#define OMAP_LCDC_LINE_INT		(OMAP_LCDC_BASE + 0x18)
> +#define OMAP_LCDC_DISPLAY_STATUS	(OMAP_LCDC_BASE + 0x1c)
> +
> +#define OMAP_LCDC_STAT_DONE		(1 << 0)
> +#define OMAP_LCDC_STAT_VSYNC		(1 << 1)
> +#define OMAP_LCDC_STAT_SYNC_LOST	(1 << 2)
> +#define OMAP_LCDC_STAT_ABC		(1 << 3)
> +#define OMAP_LCDC_STAT_LINE_INT		(1 << 4)
> +#define OMAP_LCDC_STAT_FUF		(1 << 5)
> +#define OMAP_LCDC_STAT_LOADED_PALETTE	(1 << 6)
> +
> +#define OMAP_LCDC_CTRL_LCD_EN		(1 << 0)
> +#define OMAP_LCDC_CTRL_LCD_TFT		(1 << 7)
> +#define OMAP_LCDC_CTRL_LINE_IRQ_CLR_SEL	(1 << 10)
> +
> +#define OMAP_LCDC_IRQ_VSYNC		(1 << 2)
> +#define OMAP_LCDC_IRQ_DONE		(1 << 3)
> +#define OMAP_LCDC_IRQ_LOADED_PALETTE	(1 << 4)
> +#define OMAP_LCDC_IRQ_LINE_NIRQ		(1 << 5)
> +#define OMAP_LCDC_IRQ_LINE		(1 << 6)
> +#define OMAP_LCDC_IRQ_MASK		(((1 << 5) - 1) << 2)
>  
>  int omap_lcdc_set_dma_callback(void (*callback)(void *data), void *data);
>  void omap_lcdc_free_dma_callback(void);
> diff --git a/drivers/video/fbdev/omap/omapfb.h b/drivers/video/fbdev/omap/omapfb.h
> index d930152c289c..313a051fe7a4 100644
> --- a/drivers/video/fbdev/omap/omapfb.h
> +++ b/drivers/video/fbdev/omap/omapfb.h
> @@ -204,6 +204,8 @@ struct omapfb_device {
>  	struct lcd_panel	*panel;			/* LCD panel */
>  	const struct lcd_ctrl	*ctrl;			/* LCD controller */
>  	const struct lcd_ctrl	*int_ctrl;		/* internal LCD ctrl */
> +	int			ext_irq;
> +	int			int_irq;
>  	struct lcd_ctrl_extif	*ext_if;		/* LCD ctrl external
>  							   interface */
>  	struct device		*dev;
> diff --git a/drivers/video/fbdev/omap/omapfb_main.c b/drivers/video/fbdev/omap/omapfb_main.c
> index 90eca64e3144..dc06057de91d 100644
> --- a/drivers/video/fbdev/omap/omapfb_main.c
> +++ b/drivers/video/fbdev/omap/omapfb_main.c
> @@ -1618,7 +1618,7 @@ static int omapfb_do_probe(struct platform_device *pdev,
>  
>  	init_state = 0;
>  
> -	if (pdev->num_resources != 0) {
> +	if (pdev->num_resources != 1) {
>  		dev_err(&pdev->dev, "probed for an unknown device\n");
>  		r = -ENODEV;
>  		goto cleanup;
> @@ -1637,6 +1637,20 @@ static int omapfb_do_probe(struct platform_device *pdev,
>  		r = -ENOMEM;
>  		goto cleanup;
>  	}
> +	fbdev->int_irq = platform_get_irq(pdev, 0);
> +	if (!fbdev->int_irq) {
> +		dev_err(&pdev->dev, "unable to get irq\n");
> +		r = ENXIO;
> +		goto cleanup;
> +	}
> +
> +	fbdev->ext_irq = platform_get_irq(pdev, 1);
> +	if (!fbdev->ext_irq) {
> +		dev_err(&pdev->dev, "unable to get irq\n");
> +		r = ENXIO;
> +		goto cleanup;
> +	}
> +
>  	init_state++;
>  
>  	fbdev->dev = &pdev->dev;
> diff --git a/drivers/video/fbdev/omap/sossi.c b/drivers/video/fbdev/omap/sossi.c
> index 80ac67f27f0d..ade9d452254c 100644
> --- a/drivers/video/fbdev/omap/sossi.c
> +++ b/drivers/video/fbdev/omap/sossi.c
> @@ -15,6 +15,7 @@
>  #include <linux/omap-dma.h>
>  
>  #include "omapfb.h"
> +#include "lcd_dma.h"
>  #include "lcdc.h"
>  
>  #define MODULE_NAME		"omapfb-sossi"
> @@ -638,7 +639,7 @@ static int sossi_init(struct omapfb_device *fbdev)
>  	l &= ~(1 << 31); /* REORDERING */
>  	sossi_write_reg(SOSSI_INIT1_REG, l);
>  
> -	if ((r = request_irq(INT_1610_SoSSI_MATCH, sossi_match_irq,
> +	if ((r = request_irq(fbdev->ext_irq, sossi_match_irq,
>  			     IRQ_TYPE_EDGE_FALLING,
>  	     "sossi_match", sossi.fbdev->dev)) < 0) {
>  		dev_err(sossi.fbdev->dev, "can't get SoSSI match IRQ\n");
> diff --git a/include/linux/omap-dma.h b/include/linux/omap-dma.h
> index ba3cfbb52312..e9d76ac6321d 100644
> --- a/include/linux/omap-dma.h
> +++ b/include/linux/omap-dma.h
> @@ -346,8 +346,8 @@ extern void omap_dma_set_global_params(int arb_rate, int max_fifo_depth,
>  void omap_dma_global_context_save(void);
>  void omap_dma_global_context_restore(void);
>  
> -#if defined(CONFIG_ARCH_OMAP1) && IS_ENABLED(CONFIG_FB_OMAP)
> -#include <mach/lcd_dma.h>
> +#if IS_ENABLED(CONFIG_FB_OMAP)
> +extern int omap_lcd_dma_running(void);
>  #else
>  static inline int omap_lcd_dma_running(void)
>  {
> @@ -356,6 +356,9 @@ static inline int omap_lcd_dma_running(void)
>  #endif
>  
>  #else /* CONFIG_ARCH_OMAP */
> +static inline void omap_set_dma_priority(int lch, int dst_port, int priority)
> +{
> +}
>  
>  static inline struct omap_system_dma_plat_info *omap_get_plat_info(void)
>  {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
