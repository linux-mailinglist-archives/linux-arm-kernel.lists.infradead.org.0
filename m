Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC6B71E15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=su+/hpkxJjOsee/pKMYvdfZQZEENZIcwBmLeLg7q/FI=; b=TOP+5tUXw4xP1m
	ety0eB/h4SQtXhpYk3gjgaIXFUkw+aKTpAu4R6zGYb7tOUX3S8InATUi6d+4kdhbBeuzrQgbnJCEJ
	oAv/BlH5qaDUeZGMuus+QAbci2Hu+ne5c+7BHmO8897B2W8CZf/bSXmcVWOF7e4A0VzE3k2wTo70t
	9bZNDCu7X3GysuWlEOw4lSlEn8O+aHQ0amDIieZzUefsukTwjyCh+XyEwElwPtvs2vKhZRnWuReci
	lwv1DYK2vXb4PyuZkZs00GIWvQSw8uMlP3WnzVC9A2SRIz9fSZOzkj/4qRQipluln1IlddfPrcQkK
	IVkVZ2CYbCVy02cIrE4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz0T-0002Zl-99; Tue, 23 Jul 2019 17:55:21 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz00-0002PH-QU
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:54:54 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 50C8A8068F;
 Tue, 23 Jul 2019 19:54:47 +0200 (CEST)
Date: Tue, 23 Jul 2019 19:54:45 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/3] RTF: drm/panel: simple: Add TI nspire panels
Message-ID: <20190723175445.GA23588@ravnborg.org>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-3-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723133755.22677-3-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8
 a=KKAkSRfTAAAA:8 a=T5r2WWZvf5h2a8X_6a4A:9 a=Ko3t5gmH71VfCjYo:21
 a=ZW5hSrRc54LFy5dK:21 a=CjuIK1q_8ugA:10 a=cvBusfyB2V15izCimMoJ:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105453_336612_6D1033D0 
X-CRM114-Status: GOOD (  20.76  )
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus

Good to see more panels and work on moving from fb to drm.

Also good to use media_bus_format to signal this is a greyscale display.

On Tue, Jul 23, 2019 at 03:37:54PM +0200, Linus Walleij wrote:
> This adds support for the TI nspire panels to the simple panel
> roster. This code is based on arch/arm/mach-nspire/clcd.c.
> This includes likely the first grayscale panel supported.
> 
> These panels will be used with the PL11x DRM driver.
> 
> Cc: Daniel Tang <dt.tangr@gmail.com>
> Cc: Fabian Vogt <fabian@ritter-vogt.de>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/gpu/drm/panel/panel-simple.c | 63 ++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 5a93c4edf1e4..e5cfe1398a3b 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2761,6 +2761,63 @@ static const struct panel_desc arm_rtsm = {
>  	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
>  };
>  
> +static const struct drm_display_mode nspire_cx_lcd_mode[] = {
Please name the variables like the compatible.
So something like ti_nspire_xxxx
Relevant for all variables.

When names are adjusted make sure the entries are sorted properly.
> +	{
> +		.clock = 1000,
> +		.hdisplay = 320,
> +		.hsync_start = 320 + 50,
> +		.hsync_end = 320 + 50 + 6,
> +		.htotal = 320 + 50 + 6 + 38,
> +		.vdisplay = 240,
> +		.vsync_start = 240 + 3,
> +		.vsync_end = 240 + 3 + 1,
> +		.vtotal = 240 + 3 + 1 + 17,
> +		.vrefresh = 60,
Can we achieve this refresh rate with a slow clock like this?

> +		.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+1 for specifying .flags.

> +	},
> +};
> +
> +static const struct panel_desc nspire_cx_lcd_panel = {
> +	.modes = nspire_cx_lcd_mode,
> +	.num_modes = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 65,
> +		.height = 49,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +	.bus_flags = DRM_BUS_FLAG_PIXDATA_NEGEDGE,
> +};
> +
> +static const struct drm_display_mode nspire_classic_lcd_mode[] = {
> +	{
> +		.clock = 1000,
> +		.hdisplay = 320,
> +		.hsync_start = 320 + 6,
> +		.hsync_end = 320 + 6 + 6,
> +		.htotal = 320 + 6 + 6 + 6,
> +		.vdisplay = 240,
> +		.vsync_start = 240 + 0,
> +		.vsync_end = 240 + 0 + 1,
> +		.vtotal = 240 + 0 + 1 + 0,
> +		.vrefresh = 60,
Ditto

> +		.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
> +	},
> +};
> +
> +static const struct panel_desc nspire_classic_lcd_panel = {
> +	.modes = nspire_classic_lcd_mode,
> +	.num_modes = 1,
> +	/* The grayscale panel has 8 bit for the color .. Y (black) */
> +	.bpc = 8,
> +	.size = {
> +		.width = 71,
> +		.height = 53,
> +	},
> +	/* This is the grayscale bus format */
> +	.bus_format = MEDIA_BUS_FMT_Y8_1X8,
No DRM_BUS_FLAG_PIXDATA here?
> +};
> +
>  static const struct of_device_id platform_of_match[] = {
>  	{
>  		.compatible = "ampire,am-480272h3tmqw-t01h",
> @@ -2966,6 +3023,12 @@ static const struct of_device_id platform_of_match[] = {
>  	}, {
>  		.compatible = "nlt,nl192108ac18-02d",
>  		.data = &nlt_nl192108ac18_02d,
> +	}, {
> +		.compatible = "ti,nspire-cx-lcd-panel",
> +		.data = &nspire_cx_lcd_panel,
> +	}, {
> +		.compatible = "ti,nspire-classic-lcd-panel",
> +		.data = &nspire_classic_lcd_panel,
>  	}, {

Should be sorted after compatible.
And with fixed naming this is the same as if name is used for sorting.

>  		.compatible = "nvd,9128",
>  		.data = &nvd_9128,


Furthermore I did not see any bindings for the panels.
If they indeed are missing, then please provide bindings in the yaml
format.

Thanks,

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
