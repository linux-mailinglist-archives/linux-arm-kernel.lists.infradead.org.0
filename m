Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 694A310D44
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 21:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyUO1uUsckuC0NamoZGPgrg9J/hMN3O7lHU6XRYMQkA=; b=kW3EdAsRvGgnpJ
	xBuRYtUGFPQ49aII5jHn0f24fAODU817MTrhGDrh7+aun0Ubl35aNi3L7snB0Y//88F2hn9Jg6KbQ
	U2cOwNyJvgkTTETs6sfAeqzK9yKTVT/JfxhNq6LqukZaraMAbx3saSV4g3y5zXnFPP/Q8lJjUBRYS
	xXYxkhhPglXUPbTFw1HgT0HtBfswSvC2dKjK12CCpTaPXL0rNl10cy9KQy97qe3WIZ47Pe5Ekfirz
	ADluASNk9Jyv5TzPSHs/VtBS0ElIRDxz+vo06j/9WcwEZGiaErefKiIjvLMoUGmG1GLOCV2a9hv0n
	nB7brQvco2FCMaRmQxww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLv09-0006Jj-7f; Wed, 01 May 2019 19:34:45 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLv03-0006Iv-6F; Wed, 01 May 2019 19:34:41 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id F0AB9804A7;
 Wed,  1 May 2019 21:34:30 +0200 (CEST)
Date: Wed, 1 May 2019 21:34:29 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280
 LCD panel
Message-ID: <20190501193429.GA9075@ravnborg.org>
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501121448.3812-1-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=dTbK6rJxFaEA:10
 a=pGLkceISAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8 a=iP-xVBlJAAAA:8
 a=zuLzuavZAAAA:8 a=Ojeavkj-tGznWrRYVDAA:9 a=CjuIK1q_8ugA:10
 a=tCw7dILebdcA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=lHLH-nfn2y1bM_0xSXwp:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_123439_580504_31CE3FF7 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jagan

On Wed, May 01, 2019 at 05:44:47PM +0530, Jagan Teki wrote:
> HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> resolution. It has built in Goodix, GT9271 captive touchscreen
> with backlight adjustable via PWM.
> 
> Add support for it.
> 
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Please submit the binding in a separate patch as per
Documentation/devicetree/bindings/submitting-patches.txt

The binding looks like it is compatible with common-panel and
simple-panel - please say so in the bindings.
See for example the last few binding documents added to the kernel tree.

> ---
>  .../display/panel/friendlyarm,hd702e.txt      | 29 +++++++++++++++++++
>  drivers/gpu/drm/panel/panel-simple.c          | 26 +++++++++++++++++
>  2 files changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> new file mode 100644
> index 000000000000..67349d7f79be
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> @@ -0,0 +1,29 @@
> +FriendlyELEC HD702E 800x1280 LCD panel
> +
> +HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> +resolution. It has built in Goodix, GT9271 captive touchscreen
> +with backlight adjustable via PWM.
> +
> +Required properties:
> +- compatible: should be "friendlyarm,hd702e"
> +- power-supply: regulator to provide the supply voltage
> +
> +Optional properties:
> +- backlight: phandle of the backlight device attached to the panel
> +
> +Optional nodes:
> +- Video port for LCD panel input.
> +
> +Example:
> +
> +	panel {
> +		compatible ="friendlyarm,hd702e";
> +		backlight = <&backlight>;
> +		power-supply = <&vcc3v3_sys>;
> +
> +		port {
> +			panel_in_edp: endpoint {
> +				remote-endpoint = <&edp_out_panel>;
> +			};
> +		};
> +	};
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 9e8218f6a3f2..9db3c0c65ef2 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -1184,6 +1184,29 @@ static const struct panel_desc foxlink_fl500wvr00_a0t = {
>  	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
>  };
>  
> +static const struct drm_display_mode friendlyarm_hd702e_mode = {
> +	.clock		= 67185,
> +	.hdisplay	= 800,
> +	.hsync_start	= 800 + 20,
> +	.hsync_end	= 800 + 20 + 24,
> +	.htotal		= 800 + 20 + 24 + 20,
> +	.vdisplay	= 1280,
> +	.vsync_start	= 1280 + 4,
> +	.vsync_end	= 1280 + 4 + 8,
> +	.vtotal		= 1280 + 4 + 8 + 4,
> +	.vrefresh	= 60,
> +	.flags 		= DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> +};
> +
> +static const struct panel_desc friendlyarm_hd702e = {
> +	.modes = &friendlyarm_hd702e_mode,
> +	.num_modes = 1,
> +	.size = {
> +		.width	= 94,
> +		.height	= 151,
> +	},
> +};
As I read the datasheet then this panel needs at least a prepare delay
of 10 ms (it says > 10 ms from VGH until Data).
And then we also know that VGH shall be valid at least 10 ms after DVDD
so prepare is likely 20 ms.

Based on datasheet found here:
https://pan.baidu.com/s/1geEfBLh/

Please evaluate all delays.

> +
>  static const struct drm_display_mode giantplus_gpg482739qs5_mode = {
>  	.clock = 9000,
>  	.hdisplay = 480,
> @@ -2634,6 +2657,9 @@ static const struct of_device_id platform_of_match[] = {
>  	}, {
>  		.compatible = "edt,etm0700g0edh6",
>  		.data = &edt_etm0700g0bdh6,
> +	}, {
> +		.compatible = "friendlyarm,hd702e",
> +		.data = &friendlyarm_hd702e,
>  	}, {
>  		.compatible = "foxlink,fl500wvr00-a0t",
>  		.data = &foxlink_fl500wvr00_a0t,

Add these in sorted order.
"fox" is before "fri"

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
