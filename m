Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB2B88AC8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 12:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OuiTSKu/JcMcQcbE37wTnSvlCzeOOp5pv7SPXlQAbmA=; b=i182LGZOY1au/4
	Ze0+QCoaeYUeri6jdKJ1igx9teWSf7CVAHbyBuYxaEtWeu45zyCXgJ0oobi4L1xFWdeARwb2WViPG
	5H5fpE+LWcC7jG3nBPI6lvxgWKjiwgOb7GWXA9AANqH3WOJg2/vCg6Vvs1ceAy/Tm+F6ZuBrnKz4e
	ECxX8NrzNudVi4Qh4NZ5XSYXMqB7E5k+dPdMDIKiL1/3+RBnUr8l2KvrQYRlxIbLOYy5g/Sv5Y49l
	T+o53qdNJFy3K0gI1+rjQ/SxW0mY4ii6qvJjm1/OdKnc1LXf8gKaksZDK+N7G4sPiyoC0RxluQbo3
	GmuxkSNpeM1s+KWPXv3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwObx-0008DG-HX; Sat, 10 Aug 2019 10:28:33 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hwObc-0008Cz-I6; Sat, 10 Aug 2019 10:28:12 +0000
Date: Sat, 10 Aug 2019 03:28:12 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 03/22] ARM: omap1: move omap15xx local bus handling to
 usb.c
Message-ID: <20190810102812.GA25939@infradead.org>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-4-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808212234.2213262-4-arnd@arndb.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: linux-usb@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Alan Stern <stern@rowland.harvard.edu>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for doing this!  The odd platforms have always been very
confusing.

> diff --git a/arch/arm/mach-omap1/include/mach/omap1510.h b/arch/arm/mach-omap1/include/mach/omap1510.h
> index 3d235244bf5c..7af9c0c7c5ab 100644
> --- a/arch/arm/mach-omap1/include/mach/omap1510.h
> +++ b/arch/arm/mach-omap1/include/mach/omap1510.h
> @@ -159,4 +159,3 @@
>  #define OMAP1510_INT_FPGA23		(OMAP_FPGA_IRQ_BASE + 23)
>  
>  #endif /*  __ASM_ARCH_OMAP15XX_H */
> -

Spurious whitespace change?

> diff --git a/arch/arm/mach-omap1/usb.c b/arch/arm/mach-omap1/usb.c
> index d8e9bbda8f7b..740c876ae46b 100644
> --- a/arch/arm/mach-omap1/usb.c
> +++ b/arch/arm/mach-omap1/usb.c
> @@ -10,6 +10,7 @@
>  #include <linux/init.h>
>  #include <linux/platform_device.h>
>  #include <linux/io.h>
> +#include <linux/delay.h>
>  
>  #include <asm/irq.h>
>  
> @@ -127,6 +128,7 @@ omap_otg_init(struct omap_usb_config *config)
>  
>  		syscon &= ~HST_IDLE_EN;
>  		ohci_device->dev.platform_data = config;
> +
>  		status = platform_device_register(ohci_device);

Same here.

> +#define OMAP1510_LB_OFFSET	   UL(0x30000000)
> +#define OMAP1510_LB_DMA_PFN_OFFSET ((OMAP1510_LB_OFFSET - PAGE_OFFSET) >> PAGE_SHIFT)

Overly long line.

> +/*
> + * OMAP-1510 specific Local Bus clock on/off
> + */
> +static int omap_1510_local_bus_power(int on)
> +{
> +	if (on) {
> +		omap_writel((1 << 1) | (1 << 0), OMAP1510_LB_MMU_CTL);
> +		udelay(200);
> +	} else {
> +		omap_writel(0, OMAP1510_LB_MMU_CTL);
> +	}
> +
> +	return 0;
> +}

The caller never checks the const return value, and on is always true as
well.  In fact it seems like omap_1510_local_bus_power and
omap_1510_local_bus_init could probably just be merged into the caller.

> +
> +/*
> + * OMAP-1510 specific Local Bus initialization
> + * NOTE: This assumes 32MB memory size in OMAP1510LB_MEMSIZE.
> + *       See also arch/mach-omap/memory.h for __virt_to_dma() and
> + *       __dma_to_virt() which need to match with the physical
> + *       Local Bus address below.

I think that NOTE is out of date, as __virt_to_dma and __dma_to_virt
don't exist anymore.

> +static int omap_1510_local_bus_init(void)
> +{
> +	unsigned int tlb;
> +	unsigned long lbaddr, physaddr;
> +
> +	omap_writel((omap_readl(OMAP1510_LB_CLOCK_DIV) & 0xfffffff8) | 0x4,
> +	       OMAP1510_LB_CLOCK_DIV);
> +
> +	/* Configure the Local Bus MMU table */
> +	for (tlb = 0; tlb < OMAP1510_LB_MEMSIZE; tlb++) {
> +		lbaddr = tlb * 0x00100000 + OMAP1510_LB_OFFSET;
> +		physaddr = tlb * 0x00100000 + PHYS_OFFSET;
> +		omap_writel((lbaddr & 0x0fffffff) >> 22, OMAP1510_LB_MMU_CAM_H);
> +		omap_writel(((lbaddr & 0x003ffc00) >> 6) | 0xc,
> +		       OMAP1510_LB_MMU_CAM_L);
> +		omap_writel(physaddr >> 16, OMAP1510_LB_MMU_RAM_H);
> +		omap_writel((physaddr & 0x0000fc00) | 0x300, OMAP1510_LB_MMU_RAM_L);

Another > 80 chars line.

> +		omap_writel(tlb << 4, OMAP1510_LB_MMU_LCK);
> +		omap_writel(0x1, OMAP1510_LB_MMU_LD_TLB);
> +	}
> +
> +	/* Enable the walking table */
> +	omap_writel(omap_readl(OMAP1510_LB_MMU_CTL) | (1 << 3), OMAP1510_LB_MMU_CTL);

One more.

> +	udelay(200);
> +
> +	return 0;

The return value is ignored.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
