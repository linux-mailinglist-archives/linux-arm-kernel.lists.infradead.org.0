Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DD3F4E4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:40:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arjvL3TFif9DtezwUsAAwa4PFF9ii8HxXR3HvKRdDLU=; b=ilpEMRpd6tMQOR
	8vgWU0zcvTB/m/0LFkjxCJ4NgSj9TygADWhiDcRYQAgqn+SZ7ubIn9d+Pf2K0bND7T31jnYvBQweC
	aj1mtLFCpWltkRfPPAn/b2sKCD9kQKmjUAdJrEkXwZ1Y1hRrD8dc7eyllwbxAvc2HlVfnLL17K03j
	hVV38Y7OD0UhXRDz1cYHAXMb6iiTZP7JpRofXDrM1bPhQia7pdYoJtvgC74H6ULzOshstPZqKViRv
	osU9H26qGIQOEIhf59e4t6wWucQuFMxP/QGDJmmS07Vz0PtdXV1li7nDCQI67uwRC1JDHw/bMKYBZ
	SIBSSadCXhVAVmUXY9ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5RA-0006YI-OP; Fri, 08 Nov 2019 14:40:32 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5Qw-0006VK-CY
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:40:21 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191108144015euoutp01e6d3287ae93a69273a0b64e0cfd6a154~VNugyfKbu3073730737euoutp01Y
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  8 Nov 2019 14:40:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191108144015euoutp01e6d3287ae93a69273a0b64e0cfd6a154~VNugyfKbu3073730737euoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573224015;
 bh=Sdo2OlAKk5lZJHeBDxDNsoSau4WynKqL14NN7P1ChJw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=pTCRjZCUJjwLv6krIAaClpZu7cGN3XL2TE8T2i4Gl/VvcWn0kY1kruGYvPxkWTSG/
 XcMWhxGwmtMtso1N9Gv3zwliM8ntYuR/LkZvpIW71q0C2UCJCo/JG7rCKHocpxfd8D
 rGaGrMvoV/TweGJkuoNSyJy7kiIJL1zBc+Y/3lE4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191108144015eucas1p22977d97cbb1593efd33c49cab956c467~VNugljkrP2371823718eucas1p2Z;
 Fri,  8 Nov 2019 14:40:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id DF.4F.04374.F4E75CD5; Fri,  8
 Nov 2019 14:40:15 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191108144015eucas1p2f7d66a7ec555e974f0020af44fad8182~VNugSGFCp2371823718eucas1p2Y;
 Fri,  8 Nov 2019 14:40:15 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191108144015eusmtrp16509fb7a09e92da6264339de0556434b~VNugRdlYi1383413834eusmtrp1F;
 Fri,  8 Nov 2019 14:40:15 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-ce-5dc57e4fd382
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F1.A9.04117.F4E75CD5; Fri,  8
 Nov 2019 14:40:15 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191108144014eusmtip1f2509ea7ea40a7a330a80f3088cf449d~VNufrQ6qc0673806738eusmtip1r;
 Fri,  8 Nov 2019 14:40:14 +0000 (GMT)
Subject: Re: [PATCH 08/46] ARM: pxa: move regs-lcd.h into driver
To: Arnd Bergmann <arnd@arndb.de>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <ebbfe781-7b48-2ca8-e2b8-e5493e7cf20b@samsung.com>
Date: Fri, 8 Nov 2019 15:40:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-8-arnd@arndb.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDKsWRmVeSWpSXmKPExsWy7djP87r+dUdjDc58lLX4O+kYu0XT31cs
 Fle+vmezuLDO3GLKn+VMFpseX2O1ONH3gdXi8q45bBaz3gg7cHr8/jWJ0aN/3WdWj52z7rJ7
 3Lm2h83jfvdxJo/NS+o9Pm+S89i+ezlLAEcUl01Kak5mWWqRvl0CV8ba3iPMBQ+VK/Zelmhg
 PC7bxcjBISFgIrHvqmoXIxeHkMAKRon1s74zdzFyAjlfGCWu9MpDJD4zSvy63gSWAGlYfWM/
 M0RiOaPEgkcHGCGct4wS2zZvZgKpEhZwkJhx4jiYLSKgKDH1xTOwDmaB1UwSZxu+sYIk2ASs
 JCa2r2IEuYNXwE6iYa4nSJhFQEWi/dBXsG2iAhESnx4cBivnFRCUODnzCQuIzSlgKtF17g9Y
 DbOAuMStJ/OZIGx5ie1v50Bdeotd4ui5Mog3XSQWnZWACAtLvDq+hR3ClpE4PbmHBeQ0CYF1
 jBJ/O14wQzjbGSWWT/7HBlFlLXH4+EVWkEHMApoS63fpQ8x0lLi0uQ7C5JO48VYQ4gI+iUnb
 pjNDhHklOtqEIGaoSWxYtoENZmvXzpXMExiVZiH5axaSX2Yh+WUWwtoFjCyrGMVTS4tz01OL
 jfNSy/WKE3OLS/PS9ZLzczcxAtPU6X/Hv+5g3Pcn6RCjAAejEg9vhMyRWCHWxLLiytxDjBIc
 zEoivJwtQCHelMTKqtSi/Pii0pzU4kOM0hwsSuK81QwPooUE0hNLUrNTUwtSi2CyTBycUg2M
 G3n5Fvx+yvd3je/MmwbnNmqmXX558oP6fGvz1Xa5Mf4un+RuuRwwuvb97Hyjc8ea96glndn0
 q+LRpgdXIh+Gl1hM75n6ZOdK13WJG1c29e8vmWEwUeuVe5Gfbu3eX+u9FmWUNVj0f5z+Y8/l
 FZ0JkTG396/ZwNdadlZM4PX2equTH7qnW5/tq1JiKc5INNRiLipOBABI2nBWTwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEIsWRmVeSWpSXmKPExsVy+t/xu7r+dUdjDd7NZbf4O+kYu0XT31cs
 Fle+vmezuLDO3GLKn+VMFpseX2O1ONH3gdXi8q45bBaz3gg7cHr8/jWJ0aN/3WdWj52z7rJ7
 3Lm2h83jfvdxJo/NS+o9Pm+S89i+ezlLAEeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWe
 obF5rJWRqZK+nU1Kak5mWWqRvl2CXsba3iPMBQ+VK/ZelmhgPC7bxcjJISFgIrH6xn7mLkYu
 DiGBpYwS/3raWbsYOYASMhLH15dB1AhL/LnWxQZR85pRoqu5nx0kISzgIDHjxHEmEFtEQFFi
 6otnYIOYBVYzSbRO+MEC0bGZUeLI7AVsIFVsAlYSE9tXMYJs4BWwk2iY6wkSZhFQkWg/9JUZ
 xBYViJA4vGMWI4jNKyAocXLmExYQm1PAVKLr3B+wGmYBdYk/8y5B2eISt57MZ4Kw5SW2v53D
 PIFRaBaS9llIWmYhaZmFpGUBI8sqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwPjcduznlh2M
 Xe+CDzEKcDAq8fC+qD4aK8SaWFZcmXuIUYKDWUmEl7PlSKwQb0piZVVqUX58UWlOavEhRlOg
 5yYyS4km5wNTR15JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBkbJ
 6dv33DP7ffzZuoaLK3S+3s60tDjYecc1Mfp/6dT9uezJHUdi9/3oCjPVPt+7YV92177LM0KV
 ku7kOO1NOR6a/S/jick3I4ZpjyRv/mM8Vx+Qd/yRkazsmyj2SUyGMpNO1U013TqdR9LXMUFZ
 tj2i5vCNKcVtp77mmV5039tzfd0hXcsghQwlluKMREMt5qLiRAA+mMGJ5QIAAA==
X-CMS-MailID: 20191108144015eucas1p2f7d66a7ec555e974f0020af44fad8182
X-Msg-Generator: CA
X-RootMTR: 20191018154227epcas4p26ef3afdc09b34ce4db31b1a8c6ef54d7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191018154227epcas4p26ef3afdc09b34ce4db31b1a8c6ef54d7
References: <20191018154052.1276506-1-arnd@arndb.de>
 <CGME20191018154227epcas4p26ef3afdc09b34ce4db31b1a8c6ef54d7@epcas4p2.samsung.com>
 <20191018154201.1276638-8-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064019_909342_DC680088 
X-CRM114-Status: GOOD (  19.34  )
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
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/18/19 5:41 PM, Arnd Bergmann wrote:
> Only the pxafb driver uses this header, so move it into the
> same directory. The SMART_* macros are required by some
> platform data definitions and can go into the
> linux/platform_data/video-pxafb.h header.
> 
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-fbdev@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> ---
>  .../video/fbdev/pxa3xx-regs.h                 | 19 ----------------
>  drivers/video/fbdev/pxafb.c                   |  1 +
>  include/linux/platform_data/video-pxafb.h     | 22 ++++++++++++++++++-
>  3 files changed, 22 insertions(+), 20 deletions(-)
>  rename arch/arm/mach-pxa/include/mach/regs-lcd.h => drivers/video/fbdev/pxa3xx-regs.h (90%)
> 
> diff --git a/arch/arm/mach-pxa/include/mach/regs-lcd.h b/drivers/video/fbdev/pxa3xx-regs.h
> similarity index 90%
> rename from arch/arm/mach-pxa/include/mach/regs-lcd.h
> rename to drivers/video/fbdev/pxa3xx-regs.h
> index 6a434675f84a..6a96610ef9b5 100644
> --- a/arch/arm/mach-pxa/include/mach/regs-lcd.h
> +++ b/drivers/video/fbdev/pxa3xx-regs.h
> @@ -177,23 +177,4 @@
>  #define PRSR_ST_OK	(1 << 9)	/* Status OK */
>  #define PRSR_CON_NT	(1 << 10)	/* Continue to Next Command */
>  
> -#define SMART_CMD_A0			 (0x1 << 8)
> -#define SMART_CMD_READ_STATUS_REG	 (0x0 << 9)
> -#define SMART_CMD_READ_FRAME_BUFFER	((0x0 << 9) | SMART_CMD_A0)
> -#define SMART_CMD_WRITE_COMMAND		 (0x1 << 9)
> -#define SMART_CMD_WRITE_DATA		((0x1 << 9) | SMART_CMD_A0)
> -#define SMART_CMD_WRITE_FRAME		((0x2 << 9) | SMART_CMD_A0)
> -#define SMART_CMD_WAIT_FOR_VSYNC	 (0x3 << 9)
> -#define SMART_CMD_NOOP			 (0x4 << 9)
> -#define SMART_CMD_INTERRUPT		 (0x5 << 9)
> -
> -#define SMART_CMD(x)	(SMART_CMD_WRITE_COMMAND | ((x) & 0xff))
> -#define SMART_DAT(x)	(SMART_CMD_WRITE_DATA | ((x) & 0xff))
> -
> -/* SMART_DELAY() is introduced for software controlled delay primitive which
> - * can be inserted between command sequences, unused command 0x6 is used here
> - * and delay ranges from 0ms ~ 255ms
> - */
> -#define SMART_CMD_DELAY		(0x6 << 9)
> -#define SMART_DELAY(ms)		(SMART_CMD_DELAY | ((ms) & 0xff))
>  #endif /* __ASM_ARCH_REGS_LCD_H */
> diff --git a/drivers/video/fbdev/pxafb.c b/drivers/video/fbdev/pxafb.c
> index e68b8a69db92..a65453c6c390 100644
> --- a/drivers/video/fbdev/pxafb.c
> +++ b/drivers/video/fbdev/pxafb.c
> @@ -72,6 +72,7 @@
>  #define DEBUG_VAR 1
>  
>  #include "pxafb.h"
> +#include "pxa3xx-regs.h"
>  
>  /* Bits which should not be set in machine configuration structures */
>  #define LCCR0_INVALID_CONFIG_MASK	(LCCR0_OUM | LCCR0_BM | LCCR0_QDM |\
> diff --git a/include/linux/platform_data/video-pxafb.h b/include/linux/platform_data/video-pxafb.h
> index b3d574778326..6333bac166a5 100644
> --- a/include/linux/platform_data/video-pxafb.h
> +++ b/include/linux/platform_data/video-pxafb.h
> @@ -8,7 +8,6 @@
>   */
>  
>  #include <linux/fb.h>
> -#include <mach/regs-lcd.h>
>  
>  /*
>   * Supported LCD connections
> @@ -153,6 +152,27 @@ struct pxafb_mach_info {
>  void pxa_set_fb_info(struct device *, struct pxafb_mach_info *);
>  unsigned long pxafb_get_hsync_time(struct device *dev);
>  
> +/* smartpanel related */
> +#define SMART_CMD_A0			 (0x1 << 8)
> +#define SMART_CMD_READ_STATUS_REG	 (0x0 << 9)
> +#define SMART_CMD_READ_FRAME_BUFFER	((0x0 << 9) | SMART_CMD_A0)
> +#define SMART_CMD_WRITE_COMMAND		 (0x1 << 9)
> +#define SMART_CMD_WRITE_DATA		((0x1 << 9) | SMART_CMD_A0)
> +#define SMART_CMD_WRITE_FRAME		((0x2 << 9) | SMART_CMD_A0)
> +#define SMART_CMD_WAIT_FOR_VSYNC	 (0x3 << 9)
> +#define SMART_CMD_NOOP			 (0x4 << 9)
> +#define SMART_CMD_INTERRUPT		 (0x5 << 9)
> +
> +#define SMART_CMD(x)	(SMART_CMD_WRITE_COMMAND | ((x) & 0xff))
> +#define SMART_DAT(x)	(SMART_CMD_WRITE_DATA | ((x) & 0xff))
> +
> +/* SMART_DELAY() is introduced for software controlled delay primitive which
> + * can be inserted between command sequences, unused command 0x6 is used here
> + * and delay ranges from 0ms ~ 255ms
> + */
> +#define SMART_CMD_DELAY		(0x6 << 9)
> +#define SMART_DELAY(ms)		(SMART_CMD_DELAY | ((ms) & 0xff))
> +
>  #ifdef CONFIG_FB_PXA_SMARTPANEL
>  extern int pxafb_smart_queue(struct fb_info *info, uint16_t *cmds, int);
>  extern int pxafb_smart_flush(struct fb_info *info);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
