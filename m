Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E32F4E55
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNVeIqv/uVtuNZXhIbAly/97+iMVV+qw382Q7aSc77c=; b=nvlJa7MDLby3GK
	sFzaS/F7uN7FmybXpND9sQPgBBOAeVLZSJGfN7uM4fVpx8+F3zzpZzdXGZojGQBOdSAzjLR1eYOs9
	ULNqTqDAvgHOfZpNNuRtOFlPMx0ephm9zj70to9ZHdk+A8v0gqXrQvkBgxaP4x6cOXghIyRbG8t6S
	J7kV/H0jy0IV3wFGe4BKbrbuvH07mXJ7TPoKzQXcFSm0SK8r/UzmmkMQZA7n75moMo+nRzCdJpR8I
	CO46txIpIcjrQd0AAYb+u9DIKFIpjVj3KJ/MlnKoVHAeMTyGgK/gnveHQih2fRq9LvKeDo24Z4KJF
	RFcuCGpIiZq9HY78mfYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5RZ-0006sW-MI; Fri, 08 Nov 2019 14:40:57 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5RL-0006pN-IQ
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:40:47 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191108144042euoutp01e651023fcd13a27b15e24877a840c7af~VNu5eVDkw3121831218euoutp018
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  8 Nov 2019 14:40:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191108144042euoutp01e651023fcd13a27b15e24877a840c7af~VNu5eVDkw3121831218euoutp018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573224042;
 bh=FgyVFyuCJHWS+qKVf2bnwTdN8Rtc4PgvOj9/7MINFoo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=isAkNQJugGMm/PP/gcNnzlZGm2sIqBg/pXvVDSYMLN9+B+Pr0T50HNNhqlEIgdA77
 D23JGzpthdwvaNGI8KZf9Gy1SN3X/LVrQ+WP9E5oQMO/9E5YbYNBjldsk+gAfK/9p/
 97qpn5y4VG5KPguGAUuOMcPg2FZld6Vj6u4cC2F0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191108144042eucas1p11915113d458b62a08bafa3c8c7423875~VNu5RiSp52585925859eucas1p1r;
 Fri,  8 Nov 2019 14:40:42 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id D1.5C.04469.96E75CD5; Fri,  8
 Nov 2019 14:40:41 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191108144041eucas1p184de963ca635a6d6325903bf960b1652~VNu4_mk802593625936eucas1p1m;
 Fri,  8 Nov 2019 14:40:41 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191108144041eusmtrp1cd3a7901aa05aeda9a3daa9efdac2cfe~VNu4971TZ1442914429eusmtrp1b;
 Fri,  8 Nov 2019 14:40:41 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-5a-5dc57e6964c7
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 55.B9.04117.96E75CD5; Fri,  8
 Nov 2019 14:40:41 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191108144041eusmtip245f93ed2e2edcb2559c51f012b5153e2~VNu4lB6L71069710697eusmtip2D;
 Fri,  8 Nov 2019 14:40:41 +0000 (GMT)
Subject: Re: [PATCH 14/46] ARM: pxa: use pdev resource for palmld mmio
To: Arnd Bergmann <arnd@arndb.de>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <490c888b-a034-c883-2f6e-d8a08753ef4d@samsung.com>
Date: Fri, 8 Nov 2019 15:40:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-14-arnd@arndb.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRTHe3ZfdjecXKfpSc1opJGRLxR20ZISq0ufjKCssJx5mUM3ZXOW
 BiUqaiJamqRDKCJdGup8n9qH1HxjZC+alCjMl0KkmenKLLWcV8lvv/M///Oc/4GHwqSdhDul
 VCdzGrU8QUaK8Zbe5cFDyts9UQFWC8OsFvUKmefjhSSTsTqLM29rjzIPVgwCpmFqhGB6TZMC
 Zqi9nGT0X51PiNg/v4sQW1i7SLBt+nEhO/Rax46NvCDZxqd32MUGL7a1w4BHUJfFx2K5BGUK
 p/EPjRbHZVrNRFKz1825XwtYOirZlYdEFNBHwNi0SuQhMSWlnyGob/i+WdgQmO9WkXyxiKBg
 fgDfGunqNuB8w4DA2Lck4AsrgsyeGqHd5UyfhjF9NmFnF3ovlMx8weyM0ZUCKMyKsTNJB8P9
 nGpkZwkdCqW2pQ0PTu+Dir/TpJ130pGwYOkmeI8TDJRNb6QQ0UGQVWMW8m+6wej0IwHPe6DV
 Wo7ZAwE9IoTR0s+bscOhonQC49kZZvuahDx7grk4H+cHahGs5s5sTrciMBSvkbwrBLr73q3H
 oNZXHIC6dn9ePgnWMZPALgPtCB+tTnwIRyhqeYjxsgRys6W82weMlUZya21eWxV2D8n0207T
 bztHv+0c/f+9jxFejdw4nVal4LSBau6Gn1au0urUCr/riaoGtP6xzGt9Cyb0431MF6IpJHOQ
 RHq+ipIS8hRtqqoLAYXJXCSirHVJEitPTeM0idc0ugRO24U8KFzmJrm1w3JFSivkyVw8xyVx
 mq2ugBK5p6P4oDNj3uUO1DeTasXS3QnSotqzTSnVveTBeczY4u0TXr92PMQ0obyq+en7SXxh
 rkwSHO7wZtDjSfnkxYKE/dGHk6tybP75daxrhVv/uYwPtpzGZQXhE6dUTK9MNYfRutQ02hYh
 w9mJaHVAfyM5vFz38lLYqfMdnWddrbstwzJcGycP9MU0Wvk/szZfdFQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEIsWRmVeSWpSXmKPExsVy+t/xe7qZdUdjDa5N07T4O+kYu8Xqu/1s
 Fk1/X7FYXFhnbjHlz3Imi02Pr7FaHNvxiMni8q45bBaz3gg7cHr8/jWJ0aN/3WdWj52z7rJ7
 XD5b6nHn2h42j81L6j0+b5Lz2L57OUsAR5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6h
 sXmslZGpkr6dTUpqTmZZapG+XYJeRvPb06wFW+Uq3v34xNzAOFWyi5GTQ0LAROLQ4eUsXYxc
 HEICSxklzq7awtjFyAGUkJE4vr4MokZY4s+1LjaImteMEgfmnmMGSQgLuEncmdXGCmKLCChK
 TH3xjBmkiFlgGZPE/7tLGUESQgJbGCW+rFQFsdkErCQmtq8Ci/MK2EnM+PIdbBCLgIrE0v9P
 2EBsUYEIicM7ZkHVCEqcnPmEBcTmFDCTaFl7mh3EZhZQl/gz7xIzhC0ucevJfCYIW15i+9s5
 zBMYhWYhaZ+FpGUWkpZZSFoWMLKsYhRJLS3OTc8tNtIrTswtLs1L10vOz93ECIzPbcd+btnB
 2PUu+BCjAAejEg/vi+qjsUKsiWXFlbmHGCU4mJVEeDlbjsQK8aYkVlalFuXHF5XmpBYfYjQF
 em4is5Rocj4wdeSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamBs
 y7v+aWX1z8QbXMWnLxVpsIiqNDopn/a4pWVin2gm5c/Y0RIVUZ51UVb85+S+gHsmmafLbKVu
 xZ8v6/0eKtkbWy5e5tkhKSnYsHjWfLktvg5VTvZ3P/9uLmhzMDLrbDvBrVlV8VqKK6KD4+Ci
 VXsyT51TTU3Yv+7FbV2lnPZmzxW8IZ5mSizFGYmGWsxFxYkAa5A+X+UCAAA=
X-CMS-MailID: 20191108144041eucas1p184de963ca635a6d6325903bf960b1652
X-Msg-Generator: CA
X-RootMTR: 20191018154230epcas4p3a961777ba34c3eaa7d416665f934185d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191018154230epcas4p3a961777ba34c3eaa7d416665f934185d
References: <20191018154052.1276506-1-arnd@arndb.de>
 <CGME20191018154230epcas4p3a961777ba34c3eaa7d416665f934185d@epcas4p3.samsung.com>
 <20191018154201.1276638-14-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064043_765658_33A034A0 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-ide@vger.kernel.org, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/18/19 5:41 PM, Arnd Bergmann wrote:
> The palmld header is almost unused in drivers, the only
> remaining thing now is the PATA device address, which should
> really be passed as a resource.
> 
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: Jens Axboe <axboe@kernel.dk>
> Cc: linux-ide@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> ---
>  arch/arm/mach-pxa/palmld-pcmcia.c             |  3 ++-
>  arch/arm/mach-pxa/palmld.c                    | 12 +++++++++---
>  arch/arm/mach-pxa/{include/mach => }/palmld.h |  2 +-
>  drivers/ata/pata_palmld.c                     |  3 +--
>  4 files changed, 13 insertions(+), 7 deletions(-)
>  rename arch/arm/mach-pxa/{include/mach => }/palmld.h (98%)
> 
> diff --git a/arch/arm/mach-pxa/palmld-pcmcia.c b/arch/arm/mach-pxa/palmld-pcmcia.c
> index 07e0f7438db1..720294a50864 100644
> --- a/arch/arm/mach-pxa/palmld-pcmcia.c
> +++ b/arch/arm/mach-pxa/palmld-pcmcia.c
> @@ -13,9 +13,10 @@
>  #include <linux/gpio.h>
>  
>  #include <asm/mach-types.h>
> -#include <mach/palmld.h>
>  #include <pcmcia/soc_common.h>
>  
> +#include "palmld.h"
> +
>  static struct gpio palmld_pcmcia_gpios[] = {
>  	{ GPIO_NR_PALMLD_PCMCIA_POWER,	GPIOF_INIT_LOW,	"PCMCIA Power" },
>  	{ GPIO_NR_PALMLD_PCMCIA_RESET,	GPIOF_INIT_HIGH,"PCMCIA Reset" },
> diff --git a/arch/arm/mach-pxa/palmld.c b/arch/arm/mach-pxa/palmld.c
> index d85146957004..d821606ce0b5 100644
> --- a/arch/arm/mach-pxa/palmld.c
> +++ b/arch/arm/mach-pxa/palmld.c
> @@ -29,8 +29,8 @@
>  #include <asm/mach/map.h>
>  
>  #include "pxa27x.h"
> +#include "palmld.h"
>  #include <linux/platform_data/asoc-pxa.h>
> -#include <mach/palmld.h>
>  #include <linux/platform_data/mmc-pxamci.h>
>  #include <linux/platform_data/video-pxafb.h>
>  #include <linux/platform_data/irda-pxaficp.h>
> @@ -279,9 +279,15 @@ static inline void palmld_leds_init(void) {}
>   * HDD
>   ******************************************************************************/
>  #if defined(CONFIG_PATA_PALMLD) || defined(CONFIG_PATA_PALMLD_MODULE)
> +static struct resource palmld_ide_resources[] = {
> +	DEFINE_RES_MEM(PALMLD_IDE_PHYS, 0x1000),
> +};
> +
>  static struct platform_device palmld_ide_device = {
> -	.name	= "pata_palmld",
> -	.id	= -1,
> +	.name		= "pata_palmld",
> +	.id		= -1,
> +	.resource	= palmld_ide_resources,
> +	.num_resources	= ARRAY_SIZE(palmld_ide_resources),
>  };
>  
>  static struct gpiod_lookup_table palmld_ide_gpio_table = {
> diff --git a/arch/arm/mach-pxa/include/mach/palmld.h b/arch/arm/mach-pxa/palmld.h
> similarity index 98%
> rename from arch/arm/mach-pxa/include/mach/palmld.h
> rename to arch/arm/mach-pxa/palmld.h
> index 99a6d8b3a1e3..ee3bc15b71a2 100644
> --- a/arch/arm/mach-pxa/include/mach/palmld.h
> +++ b/arch/arm/mach-pxa/palmld.h
> @@ -9,7 +9,7 @@
>  #ifndef _INCLUDE_PALMLD_H_
>  #define _INCLUDE_PALMLD_H_
>  
> -#include "irqs.h" /* PXA_GPIO_TO_IRQ */
> +#include <mach/irqs.h> /* PXA_GPIO_TO_IRQ */
>  
>  /** HERE ARE GPIOs **/
>  
> diff --git a/drivers/ata/pata_palmld.c b/drivers/ata/pata_palmld.c
> index 2448441571ed..400e65190904 100644
> --- a/drivers/ata/pata_palmld.c
> +++ b/drivers/ata/pata_palmld.c
> @@ -25,7 +25,6 @@
>  #include <linux/gpio/consumer.h>
>  
>  #include <scsi/scsi_host.h>
> -#include <mach/palmld.h>
>  
>  #define DRV_NAME "pata_palmld"
>  
> @@ -63,7 +62,7 @@ static int palmld_pata_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	/* remap drive's physical memory address */
> -	mem = devm_ioremap(dev, PALMLD_IDE_PHYS, 0x1000);
> +	mem = devm_platform_ioremap_resource(pdev, 0);
>  	if (!mem)
>  		return -ENOMEM;
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
