Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237E9255B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhgnBZENIsDM7A0Nr/Pnl9K048yEoBob9WDk37DRaCQ=; b=SBciqOl/4LM7vI
	xe3vFisVcInwQ5kruq5hwJrH1xH6ZnKv8m2oZgy5zkUhiLgUR4eLRXtTGC7c6NWO5fENga8gJp41z
	bGYWDSJaNDfmnK8yaO6TAbWIsQd5YV/4eBD0XECci/OtWmKysFdH7+YVSI9/BLhnwB7I2ynbU9Lwt
	ASHHlwRomnrFcuA3KvcIF4ft42dGgzx7BUWJaCWJG5fxFNsuz7B30yF3T1FxAWSkDdBjIe3XfMyfT
	j5oM55Sw1Rr2xNL/tLsBOsCKXLDd2B7uF5NvCr2g/+70sFQoO4rTzkAjH5Bc8FnOHh4wNTms7Jsjq
	S24yBx76wH9TJXBXKrWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7iz-0008PG-IG; Tue, 21 May 2019 16:34:49 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7is-0008Ou-JU
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:34:44 +0000
X-Originating-IP: 90.66.53.80
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 47052E000E;
 Tue, 21 May 2019 16:34:20 +0000 (UTC)
Date: Tue, 21 May 2019 18:34:20 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [PATCH v2] video: fbdev: atmel_lcdfb: add COMPILE_TEST support
Message-ID: <20190521163420.GI3274@piout.net>
References: <CGME20190521105217eucas1p19796d2969c1a568fecb0750818226241@eucas1p1.samsung.com>
 <f9d56fc1-3e02-9716-b764-82e9600e5919@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9d56fc1-3e02-9716-b764-82e9600e5919@samsung.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_093442_787323_20CAE3D3 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 21/05/2019 12:52:17+0200, Bartlomiej Zolnierkiewicz wrote:
> Add COMPILE_TEST support to atmel_lcdfb driver for better compile
> testing coverage.
> 
> Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
> v2: add missing HAVE_CLK && HAS IOMEM dependencies
> 
>  drivers/video/fbdev/Kconfig |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> Index: b/drivers/video/fbdev/Kconfig
> ===================================================================
> --- a/drivers/video/fbdev/Kconfig
> +++ b/drivers/video/fbdev/Kconfig
> @@ -856,7 +856,8 @@ config FB_S1D13XXX
>  
>  config FB_ATMEL
>  	tristate "AT91 LCD Controller support"
> -	depends on FB && OF && HAVE_FB_ATMEL
> +	depends on FB && OF && HAVE_CLK && HAS_IOMEM
> +	depends on HAVE_FB_ATMEL || COMPILE_TEST
>  	select FB_BACKLIGHT
>  	select FB_CFB_FILLRECT
>  	select FB_CFB_COPYAREA

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
