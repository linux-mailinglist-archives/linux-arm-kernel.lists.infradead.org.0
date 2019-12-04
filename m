Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FD0112AEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JMzOtGTjwD0tnL+rZXqc/rU/vwkV8k0QlKNS01d+Go=; b=sZmzL04YU1OJT7
	FSWs21Bpqkb73wnMq9Mfd9h9tDMeQ3eRLOw38W8sBWtxDRDKxFd7UN9sTAAncIjOzbr5KUV1UUcg9
	BJVAGhhSwrtlwSQct7ihRcNefs0Nyxjn0II780vc6CguWuV9iLQ5YsGTX89nQk11N4d4ueFPSwMpv
	NPfUtfx0MXss/n0roDUGpj5fish5WBJaT7JCnt7kZzPh6dcALsfmTj07ct7EJ/GNBck2z3A8TwYUH
	2QOx8phTEURXfFARdodelcIh/QwNUBTQmUamt9+uLEouo6ONRHNYNpQl0BH6Cy0cWY+HrQi8yro87
	1uYgqnKD9UMXgm762hRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icTOU-0003kY-0N; Wed, 04 Dec 2019 12:04:34 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icTOM-0003iy-D7; Wed, 04 Dec 2019 12:04:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 0BFEDFB04;
 Wed,  4 Dec 2019 13:04:18 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1P6AeK0vdY6H; Wed,  4 Dec 2019 13:04:16 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 4AAF84964C; Wed,  4 Dec 2019 13:04:16 +0100 (CET)
Date: Wed, 4 Dec 2019 13:04:16 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 18/26] drm/panel: rocktech-jh057n00900: use drm_panel
 backlight support
Message-ID: <20191204120416.GA18094@bogon.m.sigxcpu.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-19-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202193230.21310-19-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_040426_606169_318EFEC6 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Stefan Agner <stefan@agner.ch>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 NXP Linux Team <linux-imx@nxp.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Mon, Dec 02, 2019 at 08:32:22PM +0100, Sam Ravnborg wrote:
> Use the backlight support in drm_panel to simplify the driver.
> While touching the include files sort them
> and divide them up in blocks.
> =

> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: "Guido G=FCnther" <agx@sigxcpu.org>
> Cc: Purism Kernel Team <kernel@puri.sm>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../drm/panel/panel-rocktech-jh057n00900.c    | 24 +++++++++----------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/panel/panel-rocktech-jh057n00900.c b/drivers=
/gpu/drm/panel/panel-rocktech-jh057n00900.c
> index 3a4f1c0fce86..38ff742bc120 100644
> --- a/drivers/gpu/drm/panel/panel-rocktech-jh057n00900.c
> +++ b/drivers/gpu/drm/panel/panel-rocktech-jh057n00900.c
> @@ -5,20 +5,22 @@
>   * Copyright (C) Purism SPC 2019
>   */
>  =

> -#include <drm/drm_mipi_dsi.h>
> -#include <drm/drm_modes.h>
> -#include <drm/drm_panel.h>
> -#include <drm/drm_print.h>
> -#include <linux/backlight.h>
>  #include <linux/debugfs.h>
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/media-bus-format.h>
> +#include <linux/mod_devicetable.h>
>  #include <linux/module.h>
>  #include <linux/regulator/consumer.h>
> +
>  #include <video/display_timing.h>
>  #include <video/mipi_display.h>
>  =

> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_print.h>
> +
>  #define DRV_NAME "panel-rocktech-jh057n00900"
>  =

>  /* Manufacturer specific Commands send via DSI */
> @@ -47,7 +49,6 @@ struct jh057n {
>  	struct device *dev;
>  	struct drm_panel panel;
>  	struct gpio_desc *reset_gpio;
> -	struct backlight_device *backlight;
>  	struct regulator *vcc;
>  	struct regulator *iovcc;
>  	bool prepared;
> @@ -152,7 +153,7 @@ static int jh057n_enable(struct drm_panel *panel)
>  		return ret;
>  	}
>  =

> -	return backlight_enable(ctx->backlight);
> +	return 0;
>  }
>  =

>  static int jh057n_disable(struct drm_panel *panel)
> @@ -160,7 +161,6 @@ static int jh057n_disable(struct drm_panel *panel)
>  	struct jh057n *ctx =3D panel_to_jh057n(panel);
>  	struct mipi_dsi_device *dsi =3D to_mipi_dsi_device(ctx->dev);
>  =

> -	backlight_disable(ctx->backlight);
>  	return mipi_dsi_dcs_set_display_off(dsi);
>  }
>  =

> @@ -321,10 +321,6 @@ static int jh057n_probe(struct mipi_dsi_device *dsi)
>  	dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO |
>  		MIPI_DSI_MODE_VIDEO_BURST | MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
>  =

> -	ctx->backlight =3D devm_of_find_backlight(dev);
> -	if (IS_ERR(ctx->backlight))
> -		return PTR_ERR(ctx->backlight);
> -
>  	ctx->vcc =3D devm_regulator_get(dev, "vcc");
>  	if (IS_ERR(ctx->vcc)) {
>  		ret =3D PTR_ERR(ctx->vcc);
> @@ -347,6 +343,10 @@ static int jh057n_probe(struct mipi_dsi_device *dsi)
>  	drm_panel_init(&ctx->panel, dev, &jh057n_drm_funcs,
>  		       DRM_MODE_CONNECTOR_DSI);
>  =

> +	ret =3D drm_panel_of_backlight(&ctx->panel);
> +	if (ret)
> +		return ret;
> +
>  	drm_panel_add(&ctx->panel);
>  =

>  	ret =3D mipi_dsi_attach(dsi);

Reviewed-by: Guido G=FCnther <agx@sigxcpu.org> =


> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
