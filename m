Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC32F320B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 23:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7M/zZxyL7bAqHwxFXzSr+oo/mPOx6vPRynWWgHYVqA=; b=j9Enk09lZ1ckTi
	Hr3+ylGCXfn/P5ppNKw8u1t/Jhu4pPnPaRobnZrDGPDMVSkTuJoTIAYl/VxkC0vBK29KRAuls3AzO
	+WDBAYuiivaLR6of5I5tWb9pkiIgq8QKmCAcKmuVU8Fqf6aHAdnu3aPTGkRn3xynLS2Q5l/w9wI/M
	7t90VmPNmcpb2OT7uLu+hlOv1ARpIwLThIMKxCNorI4YetlKK6aNendWOjS91pLFxgI8VECkgMuk6
	KCdYirnHy51i9DRh7y3F8XZBTdRN6VJJLCGt+q7x5Wy8sjduwj+HIQjeRS9Su7x8rgcipEfVnd8dC
	ezeDbOKtFWx81de8S6MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXBDi-0002KM-Gh; Sat, 01 Jun 2019 21:07:18 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXBDb-0002JV-NU
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 21:07:13 +0000
X-Originating-IP: 82.246.155.60
Received: from localhost (hy283-1-82-246-155-60.fbx.proxad.net [82.246.155.60])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0904CE0005;
 Sat,  1 Jun 2019 21:06:53 +0000 (UTC)
Date: Sat, 1 Jun 2019 23:06:51 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [PATCH v3] video: fbdev: atmel_lcdfb: add COMPILE_TEST support
Message-ID: <20190601210651.GB3558@piout.net>
References: <CGME20190530123016eucas1p2e18747b8ac1d156657232eab52876a61@eucas1p2.samsung.com>
 <69cd6b8b-1fd1-86fa-2070-99d0ce15a868@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69cd6b8b-1fd1-86fa-2070-99d0ce15a868@samsung.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_140711_923300_5C954E8B 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/05/2019 14:30:19+0200, Bartlomiej Zolnierkiewicz wrote:
> Add COMPILE_TEST support to atmel_lcdfb driver for better compile
> testing coverage.
> 
> While at it fix improper use of UL (to silence build warnings on
> x86_64).
> 
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> ---
> v3: fix build warnings on x86_64

Hopefully, no building errors anymore ;)

> 
> v2: add missing HAVE_CLK && HAS IOMEM dependencies
> 
>  drivers/video/fbdev/Kconfig       |    3 ++-
>  drivers/video/fbdev/atmel_lcdfb.c |    4 ++--
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> Index: b/drivers/video/fbdev/Kconfig
> ===================================================================
> --- a/drivers/video/fbdev/Kconfig
> +++ b/drivers/video/fbdev/Kconfig
> @@ -855,7 +855,8 @@ config FB_S1D13XXX
>  
>  config FB_ATMEL
>  	tristate "AT91 LCD Controller support"
> -	depends on FB && OF && HAVE_FB_ATMEL
> +	depends on FB && OF && HAVE_CLK && HAS_IOMEM
> +	depends on HAVE_FB_ATMEL || COMPILE_TEST
>  	select FB_BACKLIGHT
>  	select FB_CFB_FILLRECT
>  	select FB_CFB_COPYAREA
> Index: b/drivers/video/fbdev/atmel_lcdfb.c
> ===================================================================
> --- a/drivers/video/fbdev/atmel_lcdfb.c
> +++ b/drivers/video/fbdev/atmel_lcdfb.c
> @@ -673,7 +673,7 @@ static int atmel_lcdfb_set_par(struct fb
>  	lcdc_writel(sinfo, ATMEL_LCDC_MVAL, 0);
>  
>  	/* Disable all interrupts */
> -	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0UL);
> +	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0U);
>  	/* Enable FIFO & DMA errors */
>  	lcdc_writel(sinfo, ATMEL_LCDC_IER, ATMEL_LCDC_UFLWI | ATMEL_LCDC_OWRI | ATMEL_LCDC_MERI);
>  
> @@ -1291,7 +1291,7 @@ static int atmel_lcdfb_suspend(struct pl
>  	 * We don't want to handle interrupts while the clock is
>  	 * stopped. It may take forever.
>  	 */
> -	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0UL);
> +	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0U);
>  
>  	sinfo->saved_lcdcon = lcdc_readl(sinfo, ATMEL_LCDC_CONTRAST_CTR);
>  	lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_CTR, 0);

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
