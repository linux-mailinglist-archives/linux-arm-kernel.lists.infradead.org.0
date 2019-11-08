Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B21F4E4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:40:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdEJiUdHIMGLjfzM4eZF/eYHhqWI0CcRFCFWfY7geZ8=; b=H8t3h686qPnovf
	yadnAzR6XJPwIkjevgP5gmVVTqcIxtUw0TYw5yPoJTjt6PRDMQr4ThCIY62ql7I4nd6Z65WV9PD/5
	yJYrf6u+/3ybG0bzlujacm4QZ9FRK4+IA/zc0WjfVe2y3tOyw5EW6AWdmh+R+R4h5TS62ECZCxUjB
	HeIaKUqAyh4I/yG3EqnnoPWQLIuGbm7fuyhLcI11wiHvU98gA5fWdoEcfqPVFX7L3k0gfeYIXQcUf
	9L/is0hPTkrXAZDV29iWdW66utXO1MyLCRg98HRSadfJPXuuWSuqzAmGCqmdPLRwWek72/xfiNvvt
	eKVTQw0tAjSAvVr6HGug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5Qs-00050L-6Q; Fri, 08 Nov 2019 14:40:14 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5QW-0004sW-MR
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:39:54 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191108143949euoutp02f06022fe95a24d6fda31dda2b0897381~VNuH9eBcV1270312703euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  8 Nov 2019 14:39:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191108143949euoutp02f06022fe95a24d6fda31dda2b0897381~VNuH9eBcV1270312703euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573223989;
 bh=WRCpWfnxwI9IkpzX1p5dfM2HQZ4Vsv8ktaxb/cXKeoQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=C21Z+1B7T/a716efS4zN5pAstupQdaH2NBcQCIp//eTIzrcMFEHubD0goUrHDV3bQ
 UReIQtZkbRBevzVAX8zR3Lj3V/qla7f7jkCZg4GmCEtG7FnT4MqO4I7PtuW4evfzm3
 LVqoCPRAk1lSH48zUUp+PebyvsaEO5PY+b9iigyY=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191108143948eucas1p2b2c756dcdd6e0f8791a6282eb71dd3c0~VNuHypcrP0626906269eucas1p2S;
 Fri,  8 Nov 2019 14:39:48 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C8.3C.04469.43E75CD5; Fri,  8
 Nov 2019 14:39:48 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191108143948eucas1p29ae2cf253068f2b62af12720669614fb~VNuHThaJv0626906269eucas1p2R;
 Fri,  8 Nov 2019 14:39:48 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191108143948eusmtrp140652a1479d6fdc751fec181be2ef06d~VNuHNtxvY1383413834eusmtrp1X;
 Fri,  8 Nov 2019 14:39:48 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-cd-5dc57e3460f5
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E7.99.04117.43E75CD5; Fri,  8
 Nov 2019 14:39:48 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191108143947eusmtip2fb7dcbfd588e54581fcccae15248c7ab~VNuGsSw031049310493eusmtip2s;
 Fri,  8 Nov 2019 14:39:47 +0000 (GMT)
Subject: Re: [PATCH 06/46] ARM: pxa: stop using mach/bitfield.h
To: Arnd Bergmann <arnd@arndb.de>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <ec86366a-c2fc-9400-31dc-ed1440ec9904@samsung.com>
Date: Fri, 8 Nov 2019 15:39:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-6-arnd@arndb.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj22zlnOxMnn/OyV7OkEYHhJcNolFhC1H74I/olleXMk1o6dcd7
 ZGZR4gWvIQ5DS8vSUjHzjqWmppaZloWlDRJRc5SXEWrTdnaU/Pe8z/O8l+fjowlpO+VEh6tj
 GY1aFSEXWpKNvStD7t4pPYH7DcMHFMb8XpEizThHKj4afgkVwzWHFIV/KwWK+h9jlGK0tUSo
 0M7bHqOVa6v5SJlTs0QpW7QTIuW3sXah8ntmn0D5vOK6cql+l7KprZI8RZ+x9AlhIsLjGY2n
 b5BlWOlysSi6wyHxnl6LUlGjNAOJacDekKdrF2YgS1qKHyOo+aOjOEGKlxHUrlG8sIRgZqpN
 uNXxsHmV5IVKBEPpGyK+0CNoyHwh4Fy2+CjU94+IOGyHd8PdmWmCMxE4SwD3B8tJThDiw5B3
 pwpxWIJ9YTZbb8Yk3gNvZ96bsT0OgEVdN8V7bKC/eMrcK8YHoboz18wTWAbjU6UCHrtAk77E
 vAzwkAjKOmpNAm0qjsObT758BFuY62sQ8dgZBguySN5fg8CYPrPZ3ISgsmB9M/QR6O77QHGD
 COwKta2ePO0HTxe5o7n51vBFb8PfYA35jUUET0sg/fbmW++Fukd1wq21GS1PiFwk125Lpt2W
 Rrstjfb/3jJEViEZE8dGhjKsl5pJ8GBVkWycOtTjYlRkPTL9qcH1vsVmZBgJ7kKYRnIrSYDz
 60AppYpnkyK7ENCE3E4ivmWiJCGqpGRGE3VBExfBsF1oB03KZZKrFrqzUhyqimWuMEw0o9lS
 BbTYKRURCb93+vlXJ7E9ruMpyVmJbuJLaka6QCZgV9nlDfHoDdrRhnK0nzR8HTo51fTumdjZ
 o6Pi5YmbFmMVZfqsn9MLD7IdZoOLjPNpzqEyH8lA4umBhN7OoBzD6go7Vubu/zkwvDpm0qoq
 2O2868SruOm6cqLcpVBGxZTaXWskdefkJBum8tpHaFjVPwtjp0BPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRmVeSWpSXmKPExsVy+t/xe7omdUdjDf784bH4O+kYu0XT31cs
 Fle+vmezuLDO3GLKn+VMFpseX2O1uLxrDpvFrDfCDhwev39NYvToX/eZ1WPnrLvsHneu7WHz
 uN99nMlj85J6j8+b5Dy2717OEsARpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtl
 ZKqkb2eTkpqTWZZapG+XoJcx/8tM9oJ9YhVz385ibGDcJtTFyMkhIWAisXTHL5YuRi4OIYGl
 jBI37i5j62LkAErISBxfXwZRIyzx51oXG0TNa0aJNzNbWEASwgL2EptOXmIHsUUEFCWmvnjG
 DFLELNDDJLF61xOojs2MEv3XbjOBVLEJWElMbF/FCGLzCthJvOx9C2azCKhInHlxHswWFYiQ
 OLxjFlSNoMTJmU/AtnEKmEqsPjiBFcRmFlCX+DPvEjOELS5x68l8JghbXmL72znMExiFZiFp
 n4WkZRaSlllIWhYwsqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjMxtx35u2cHY9S74EKMA
 B6MSD++L6qOxQqyJZcWVuYcYJTiYlUR4OVuOxArxpiRWVqUW5ccXleakFh9iNAV6biKzlGhy
 PjBp5JXEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYPS72isxq8fm
 XhX74rBuF1WRO7XLlFnuH059oZ2mYn20/cVC/+ufVv1f/zlzgq9JatkmI7k1LgeS4tyUzscG
 7J+uLiEXLvBIm/3dnEOC/avXZu8/IsBlFJ7//2iXhMoMxkLXCcVPP+e7bg7pSJjI15yedcHf
 99N3Xpf1zgsKbnnUaPG49DWXKrEUZyQaajEXFScCAH5ir3viAgAA
X-CMS-MailID: 20191108143948eucas1p29ae2cf253068f2b62af12720669614fb
X-Msg-Generator: CA
X-RootMTR: 20191018154225epcas4p2b2e722620511ada1014107d9e100ab35
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191018154225epcas4p2b2e722620511ada1014107d9e100ab35
References: <20191018154052.1276506-1-arnd@arndb.de>
 <CGME20191018154225epcas4p2b2e722620511ada1014107d9e100ab35@epcas4p2.samsung.com>
 <20191018154201.1276638-6-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_063952_945078_3CE94DAA 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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
Cc: dri-devel@lists.freedesktop.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/18/19 5:41 PM, Arnd Bergmann wrote:
> There are two identical copies of mach/bitfield.h, one for
> mach-sa1100 and one for mach-pxa. The pxafb driver only
> makes use of two macros, which can be trivially open-coded
> in the header.
> 
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> ---
>  arch/arm/mach-pxa/idp.c                   | 1 -
>  arch/arm/mach-pxa/include/mach/regs-lcd.h | 5 +++--
>  arch/arm/mach-pxa/regs-u2d.h              | 2 --
>  drivers/video/fbdev/pxafb.c               | 1 -
>  4 files changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-pxa/idp.c b/arch/arm/mach-pxa/idp.c
> index 57c0511472bc..525d01ddfbbb 100644
> --- a/arch/arm/mach-pxa/idp.c
> +++ b/arch/arm/mach-pxa/idp.c
> @@ -30,7 +30,6 @@
>  #include "pxa25x.h"
>  #include "idp.h"
>  #include <linux/platform_data/video-pxafb.h>
> -#include <mach/bitfield.h>
>  #include <linux/platform_data/mmc-pxamci.h>
>  #include <linux/smc91x.h>
>  
> diff --git a/arch/arm/mach-pxa/include/mach/regs-lcd.h b/arch/arm/mach-pxa/include/mach/regs-lcd.h
> index e2b6e3d1f625..6a434675f84a 100644
> --- a/arch/arm/mach-pxa/include/mach/regs-lcd.h
> +++ b/arch/arm/mach-pxa/include/mach/regs-lcd.h
> @@ -2,8 +2,6 @@
>  #ifndef __ASM_ARCH_REGS_LCD_H
>  #define __ASM_ARCH_REGS_LCD_H
>  
> -#include <mach/bitfield.h>
> -
>  /*
>   * LCD Controller Registers and Bits Definitions
>   */
> @@ -86,6 +84,9 @@
>  #define LCCR0_OUC	(1 << 25)	/* Overlay Underlay control bit */
>  #define LCCR0_LDDALT	(1 << 26)	/* LDD alternate mapping control */
>  
> +#define Fld(Size, Shft)	(((Size) << 16) + (Shft))
> +#define FShft(Field)	((Field) & 0x0000FFFF)
> +
>  #define LCCR1_PPL	Fld (10, 0)	/* Pixels Per Line - 1 */
>  #define LCCR1_DisWdth(Pixel)	(((Pixel) - 1) << FShft (LCCR1_PPL))
>  
> diff --git a/arch/arm/mach-pxa/regs-u2d.h b/arch/arm/mach-pxa/regs-u2d.h
> index fe4c80ad87ec..ab517ba62c9a 100644
> --- a/arch/arm/mach-pxa/regs-u2d.h
> +++ b/arch/arm/mach-pxa/regs-u2d.h
> @@ -2,8 +2,6 @@
>  #ifndef __ASM_ARCH_PXA3xx_U2D_H
>  #define __ASM_ARCH_PXA3xx_U2D_H
>  
> -#include <mach/bitfield.h>
> -
>  /*
>   * USB2 device controller registers and bits definitions
>   */
> diff --git a/drivers/video/fbdev/pxafb.c b/drivers/video/fbdev/pxafb.c
> index ece691a0f18a..e68b8a69db92 100644
> --- a/drivers/video/fbdev/pxafb.c
> +++ b/drivers/video/fbdev/pxafb.c
> @@ -64,7 +64,6 @@
>  #include <asm/io.h>
>  #include <asm/irq.h>
>  #include <asm/div64.h>
> -#include <mach/bitfield.h>
>  #include <linux/platform_data/video-pxafb.h>
>  
>  /*
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
