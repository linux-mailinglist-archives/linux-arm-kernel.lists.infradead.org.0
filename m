Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FD07632C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RudApuFE/WRbkiBfNMtfk8L8RjVvRCi4Ngbj56ePfuM=; b=bxj3Xn2uVqdsg9
	K2WJza/53QwRDYaC3n2WiGZ9H4WKSEsZppqDKUluOnKaJIc5W0WbrBnhhKF/gygmn8WtdbTM0oswx
	Vs4FIDu1upXI16xknsgYz/8XrIQPEmPdcCckMCSIlY8mbUhvLPxi5jsqONZ/Fru6Srug89TYv3gG/
	Brq2kRZLBIY2SPa7NslnfDLdxtFoUGtS1NzzLjGSieq6EOvEfVqhHCnCJgRDCXh5cxJJDiqYeVvDg
	XuCdlyV5C+AHXJhWVs0BndETRUsO0H1vY8hvqDWJC803bUpHsX6KMXccaXo3VAZMr/QGoVCzyjq7N
	oEzPYvj/rlrQsUd0ml+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqx9T-000575-U6; Fri, 26 Jul 2019 10:08:40 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqx9E-000562-9u
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:08:26 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 3739C20038;
 Fri, 26 Jul 2019 12:08:19 +0200 (CEST)
Date: Fri, 26 Jul 2019 12:08:17 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH 3/3] drm/bridge: Add NWL MIPI DSI host controller support
Message-ID: <20190726100817.GB9754@ravnborg.org>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <3158f4f8c97c21f98c394e5631d74bc60d796522.1563983037.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3158f4f8c97c21f98c394e5631d74bc60d796522.1563983037.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10
 a=aMlwc4_KtA_XG01HkD8A:9 a=wPNLvfGTeEIA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_030824_688278_C860DD58 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robert Chiras <robert.chiras@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guido.

Following some trivial comments.
As for the overall design I already commented on that in the binding.
(bridge versus display controller)
That it can work on top of mxsfb is a good indication that it is a
bridge but I just do not see the full picture.

In general the code looked clean and neat.

On Wed, Jul 24, 2019 at 05:52:26PM +0200, Guido G=FCnther wrote:
> This adds initial support for the NWL MIPI DSI Host controller found on
> i.MX8 SoCs.
> =

> It adds support for the i.MX8MQ but the same IP can be found on
> e.g. the i.MX8QXP.
> =

> It has been tested on the Librem 5 devkit using mxsfb.

Looking at mxsfb I wonder hw this was done, as there seems to be no
bridge support in mxsfb. Using a patched version of mxsfb?


> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Mak=
efile
> index 4934fcf5a6f8..904a9eb3a20a 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -16,4 +16,5 @@ obj-$(CONFIG_DRM_ANALOGIX_DP) +=3D analogix/
>  obj-$(CONFIG_DRM_I2C_ADV7511) +=3D adv7511/
>  obj-$(CONFIG_DRM_TI_SN65DSI86) +=3D ti-sn65dsi86.o
>  obj-$(CONFIG_DRM_TI_TFP410) +=3D ti-tfp410.o
> +obj-y +=3D imx-nwl/
obj-$(ONFIG_DRM_IMX_NWL_DSI) +=3D imx-nwl/?
So we do not visit the directory unless required.

> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/imx-nwl/Makefile
> @@ -0,0 +1,2 @@
> +imx-nwl-objs :=3D nwl-drv.o nwl-dsi.o

The preferred syntax is
imx-nwl-y :=3D nwl-drv.o nwl-dsi.o

See for example Makefile for mxsfb.

Consider to introduce
header-test-y +=3D nwl-drv.h nwl-dsi.h

So we at build time check that the headers are self-contained.
(they include what they need).


> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_of.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_print.h>
> +#include <drm/drm_probe_helper.h>
> +#include <linux/clk-provider.h>
> +#include <linux/clk.h>
> +#include <linux/component.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/irq.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/mfd/syscon/imx8mq-iomuxc-gpr.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/phy/phy.h>
> +#include <linux/regmap.h>
> +#include <linux/sys_soc.h>
> +#include <video/videomode.h>
> +
> +#include "nwl-drv.h"
> +#include "nwl-dsi.h"

The most typical order of include files are:

#include <linux/*>

#include <video/*>

#include <drm/*>

#include ""

With the empty lines in-between each block.
And sorted like is already done here.

This in general for all the files for this driver.

> +
> +static bool
> +imx_nwl_dsi_bridge_mode_fixup(struct drm_bridge *bridge,
> +			      const struct drm_display_mode *mode,
> +			      struct drm_display_mode *adjusted_mode)
> +{
> +	struct imx_nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> +	struct device *dev =3D dsi->dev;
> +	union phy_configure_opts new_cfg;
> +	unsigned long phy_ref_rate;
> +	int ret;
> +
> +	ret =3D nwl_dsi_get_dphy_params(dsi, adjusted_mode, &new_cfg);
> +	if (ret < 0)
> +		return ret;
> +
> +	/*
> +	 * If hs clock is unchanged, we're all good - all parameters are
> +	 * derived from it atm.
> +	 */
> +	if (new_cfg.mipi_dphy.hs_clk_rate =3D=3D dsi->phy_cfg.mipi_dphy.hs_clk_=
rate)
> +		return true;
> +
> +	phy_ref_rate =3D clk_get_rate(dsi->phy_ref_clk);
> +	DRM_DEV_DEBUG_DRIVER(dev, "PHY at ref rate: %lu\n", phy_ref_rate);
> +	if (ret < 0) {
> +		DRM_DEV_ERROR(dsi->dev,
> +			      "Cannot setup PHY for mode: %ux%u @%d Hz\n",
> +			      adjusted_mode->hdisplay, adjusted_mode->vdisplay,
> +			      adjusted_mode->clock);
> +		DRM_DEV_ERROR(dsi->dev, "PHY ref clk: %lu, bit clk: %lu\n",
> +			      phy_ref_rate, new_cfg.mipi_dphy.hs_clk_rate);
> +	} else {
> +		/* Save the new desired phy config */
> +		memcpy(&dsi->phy_cfg, &new_cfg, sizeof(new_cfg));
> +	}
> +
> +	/* LCDIF + NWL needs active high sync */
> +	adjusted_mode->flags |=3D (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC);
> +	adjusted_mode->flags &=3D ~(DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC=
);
> +
> +	drm_display_mode_to_videomode(adjusted_mode, &dsi->vm);

Hmm, the videomode is just another representation of data already
included in display_mode.
And, as a personal itch, I consider videomode as something that belongs
in the old fb drivers, and not drm drivers. But that may be me only.


	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
