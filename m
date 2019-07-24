Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6A273709
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 20:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8FlHFhy8yFOdyDPi72XjZl2Dm69qvZh9UdOOZAWYEw=; b=fix9ebPNFd3oeE
	ZCJkHafHmVCrZSXlBhGwzuS+i4aIQ/5fWAvmKdgQDPmxWi2fU+aeuf62WVb0NXTbqglcTEa0BBay6
	JahlaGbViRjrkR64zuOrqpGRCRCRAu0sBonCKkAU3C4qKEAjMy2alaIrjyHdAaZOflUMF/JmluI/W
	nCxwKGLah6rO+ICm+IppNUsdqVdupwBctvecyhwPyCkU3s0jkLUWt9CD3pfJHZP/x8AguCL2SECHk
	NrEkD+22WPc5h9ewnxWjsVMPRN4f8WqXXfwkHvVgFUXJSgm0+MActiX8A899nK6fZvOATdwO24Ijc
	eO75yrwgya2AB1GLg0Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMPL-0006uG-22; Wed, 24 Jul 2019 18:54:35 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMP6-0006tb-GP
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 18:54:21 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id BD1A680622;
 Wed, 24 Jul 2019 20:54:18 +0200 (CEST)
Date: Wed, 24 Jul 2019 20:54:17 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] drm/pl111: Drop special pads config check
Message-ID: <20190724185417.GC22640@ravnborg.org>
References: <20190724134959.2365-1-linus.walleij@linaro.org>
 <20190724134959.2365-2-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724134959.2365-2-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=7CQSdrXTAAAA:8 a=KKAkSRfTAAAA:8 a=YUqRonFL-ueWVgxenA0A:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=a-qgeE7W1pNrGK8U0ZQC:22
 a=cvBusfyB2V15izCimMoJ:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_115420_718769_66A6D87F 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Pawel Moll <pawel.moll@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 03:49:59PM +0200, Linus Walleij wrote:
> This drops the check of the surplus "pads" configuration
> from the device tree that is completely unused in the DRM
> driver.
> 
> This was only used to work around limitations in the earlier
> fbdev driver.
> 
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Pawel Moll <pawel.moll@arm.com>
> Cc: Liviu Dudau <Liviu.Dudau@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Always good to delete code.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  drivers/gpu/drm/pl111/pl111_display.c | 16 ----------------
>  1 file changed, 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/pl111/pl111_display.c b/drivers/gpu/drm/pl111/pl111_display.c
> index e42fb6353623..8595a676b084 100644
> --- a/drivers/gpu/drm/pl111/pl111_display.c
> +++ b/drivers/gpu/drm/pl111/pl111_display.c
> @@ -572,24 +572,8 @@ int pl111_display_init(struct drm_device *drm)
>  {
>  	struct pl111_drm_dev_private *priv = drm->dev_private;
>  	struct device *dev = drm->dev;
> -	struct device_node *endpoint;
> -	u32 tft_r0b0g0[3];
>  	int ret;
>  
> -	endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
> -	if (!endpoint)
> -		return -ENODEV;
> -
> -	if (of_property_read_u32_array(endpoint,
> -				       "arm,pl11x,tft-r0g0b0-pads",
> -				       tft_r0b0g0,
> -				       ARRAY_SIZE(tft_r0b0g0)) != 0) {
> -		dev_err(dev, "arm,pl11x,tft-r0g0b0-pads should be 3 ints\n");
> -		of_node_put(endpoint);
> -		return -ENOENT;
> -	}
> -	of_node_put(endpoint);
> -
>  	ret = pl111_init_clock_divider(drm);
>  	if (ret)
>  		return ret;
> -- 
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
