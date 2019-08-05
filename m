Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C959825FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 22:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nW7cJ2raMOhfI4ecRNtMasgOvC5lOMXcueN1meIg89o=; b=YPfZO36ZfKaBb9
	2cyC65H9XEn6AhS4/5FhAbWanM2FvlYoGrw1BdPz3dRc2kLAc3tzjFPTeATMiC68eyRyIrMtteyNK
	v9HdK/Ide7+y7Uactcac49uY8JjuQwUD4uAsYYQvDWAdmyQoPGvKs6H23cmXOOzCpI9yO5VOdZAeB
	Vuyce0sCIIzMfnDM7Q9gmeUmB/wP4tW9ALtLf4zQoNl965tRPSiMMrKlA2ofmpf32ZZf+m1U4DVh6
	Fd2Sx0/trookfmHnVf5ldeArYYx1yMmm5iugkVFZeZGA+Pq+9Dxh329yzFoAv/250jYm/DiFGjrpS
	uu+nwhQ0J8eCHP+rYnhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hujSy-00010B-Cc; Mon, 05 Aug 2019 20:20:24 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hujSp-0000zo-0a
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 20:20:17 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 6C84980407;
 Mon,  5 Aug 2019 22:20:09 +0200 (CEST)
Date: Mon, 5 Aug 2019 22:20:08 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 3/4 v2] drm/panel: simple: Support TI nspire panels
Message-ID: <20190805202008.GA3984@ravnborg.org>
References: <20190805085847.25554-1-linus.walleij@linaro.org>
 <20190805085847.25554-4-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805085847.25554-4-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8
 a=KKAkSRfTAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8 a=MlHxxIA_3piCZjP8AjAA:9
 a=2FTAOhErDaQBMf8p:21 a=rnw9exMtts0kOuDd:21 a=CjuIK1q_8ugA:10
 a=cvBusfyB2V15izCimMoJ:22 a=E9Po1WZjFZOl8hwRPBS3:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_132015_425508_945FF7E9 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Hi Linus,

On Mon, Aug 05, 2019 at 10:58:46AM +0200, Linus Walleij wrote:
> This adds support for the TI nspire panels to the simple panel
> roster. This code is based on arch/arm/mach-nspire/clcd.c.
> This includes likely the first grayscale panel supported.
> 
> These panels will be used with the PL11x DRM driver.
> 
> Cc: Daniel Tang <dt.tangr@gmail.com>
> Cc: Fabian Vogt <fabian@ritter-vogt.de>
> Tested-by: Fabian Vogt <fabian@ritter-vogt.de>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

You can now add my:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

I assume this will be applied as one series and you will do it when
ready.

	Sam

> ---
> ChangeLog v1->v2:
> - Bump clock frequency to 10 MHz after Fabian's trial-and-error
> - Changed vsymbol names to ti_nspire_*
> - Sorted alphabetically
> - Specify positive edge on the classic display bus
> ---
>  drivers/gpu/drm/panel/panel-simple.c | 64 ++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 5a93c4edf1e4..96f894b44313 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2578,6 +2578,64 @@ static const struct panel_desc tianma_tm070rvhg71 = {
>  	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
>  };
>  
> +static const struct drm_display_mode ti_nspire_cx_lcd_mode[] = {
> +	{
> +		.clock = 10000,
> +		.hdisplay = 320,
> +		.hsync_start = 320 + 50,
> +		.hsync_end = 320 + 50 + 6,
> +		.htotal = 320 + 50 + 6 + 38,
> +		.vdisplay = 240,
> +		.vsync_start = 240 + 3,
> +		.vsync_end = 240 + 3 + 1,
> +		.vtotal = 240 + 3 + 1 + 17,
> +		.vrefresh = 60,
> +		.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> +	},
> +};
> +
> +static const struct panel_desc ti_nspire_cx_lcd_panel = {
> +	.modes = ti_nspire_cx_lcd_mode,
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
> +static const struct drm_display_mode ti_nspire_classic_lcd_mode[] = {
> +	{
> +		.clock = 10000,
> +		.hdisplay = 320,
> +		.hsync_start = 320 + 6,
> +		.hsync_end = 320 + 6 + 6,
> +		.htotal = 320 + 6 + 6 + 6,
> +		.vdisplay = 240,
> +		.vsync_start = 240 + 0,
> +		.vsync_end = 240 + 0 + 1,
> +		.vtotal = 240 + 0 + 1 + 0,
> +		.vrefresh = 60,
> +		.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
> +	},
> +};
> +
> +static const struct panel_desc ti_nspire_classic_lcd_panel = {
> +	.modes = ti_nspire_classic_lcd_mode,
> +	.num_modes = 1,
> +	/* The grayscale panel has 8 bit for the color .. Y (black) */
> +	.bpc = 8,
> +	.size = {
> +		.width = 71,
> +		.height = 53,
> +	},
> +	/* This is the grayscale bus format */
> +	.bus_format = MEDIA_BUS_FMT_Y8_1X8,
> +	.bus_flags = DRM_BUS_FLAG_PIXDATA_POSEDGE,
> +};
> +
>  static const struct drm_display_mode toshiba_lt089ac29000_mode = {
>  	.clock = 79500,
>  	.hdisplay = 1280,
> @@ -3029,6 +3087,12 @@ static const struct of_device_id platform_of_match[] = {
>  	}, {
>  		.compatible = "tianma,tm070rvhg71",
>  		.data = &tianma_tm070rvhg71,
> +	}, {
> +		.compatible = "ti,nspire-cx-lcd-panel",
> +		.data = &ti_nspire_cx_lcd_panel,
> +	}, {
> +		.compatible = "ti,nspire-classic-lcd-panel",
> +		.data = &ti_nspire_classic_lcd_panel,
>  	}, {
>  		.compatible = "toshiba,lt089ac29000",
>  		.data = &toshiba_lt089ac29000,
> -- 
> 2.21.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
