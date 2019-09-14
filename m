Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB4CB2C2E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 18:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJ7nkeL1sLf9QrQ0jcgrJ+sgfXDM+44KaYWRan/w2YE=; b=LNoeyASl1Du0fC
	iVBvruMsFpcHzpWhlQCB2mh3AFXo54XWGyrvup1eTG6QKcwiRL3Viq18pqEU40oMq26nNSUUhTR2I
	llNGteQkR8Mpv7kzN1SKCeKHYNGou61svqLJwK4ppxHUHn+m2zu2KQ+tBjmUwIxqW2gNpEEdOXFsQ
	cWn9k/mllehf+DxiQ6jHj+4IgpUy7BOCZfxzpxYuDahQF/jV3j+w5vibD6xxGaHWTzqWUqaCt5Q0i
	nzevWFHFeVEWuxoZpo9THWLPUOp4ZeXUunTaWSaTmIyvQoumhKDEBzHcQCFHBKcUcl+JA6WSQrLlb
	DcY7XQlJaeLgDHn6e1Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Aes-0008I1-Vg; Sat, 14 Sep 2019 16:12:22 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Aee-0008Ha-U5
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 16:12:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id D6537FB03;
 Sat, 14 Sep 2019 18:12:03 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qZ_0aIOv2yVx; Sat, 14 Sep 2019 18:11:58 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 42386488DD; Sat, 14 Sep 2019 09:11:55 -0700 (PDT)
Date: Sat, 14 Sep 2019 09:11:55 -0700
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v5 2/2] drm/bridge: Add NWL MIPI DSI host controller
 support
Message-ID: <20190914161155.GA2933@bogon.m.sigxcpu.org>
References: <cover.1567995854.git.agx@sigxcpu.org>
 <CGME20190909022600epcas3p19955ec815e4ceb54097ede895bc57b52@epcas3p1.samsung.com>
 <3ce1891ea41249bf4a9985e2cee8640fb36de42e.1567995854.git.agx@sigxcpu.org>
 <d544c189-8428-d10e-a69b-5af9ce47a802@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d544c189-8428-d10e-a69b-5af9ce47a802@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_091209_471646_7893BCB6 
X-CRM114-Status: GOOD (  32.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrzej,
thanks for having a look!

On Fri, Sep 13, 2019 at 11:31:43AM +0200, Andrzej Hajda wrote:
> On 09.09.2019 04:25, Guido G=FCnther wrote:
> > This adds initial support for the NWL MIPI DSI Host controller found on
> > i.MX8 SoCs.
> >
> > It adds support for the i.MX8MQ but the same IP can be found on
> > e.g. the i.MX8QXP.
> >
> > It has been tested on the Librem 5 devkit using mxsfb.
> >
> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > Co-developed-by: Robert Chiras <robert.chiras@nxp.com>
> > Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> > Tested-by: Robert Chiras <robert.chiras@nxp.com>
> > ---
> >  drivers/gpu/drm/bridge/Kconfig           |   2 +
> >  drivers/gpu/drm/bridge/Makefile          |   1 +
> >  drivers/gpu/drm/bridge/nwl-dsi/Kconfig   |  16 +
> >  drivers/gpu/drm/bridge/nwl-dsi/Makefile  |   4 +
> >  drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.c | 499 ++++++++++++++++
> >  drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.h |  65 +++
> >  drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.c | 696 +++++++++++++++++++++++
> >  drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.h | 112 ++++
> =

> =

> Why do you need separate files nwl-drv.[ch] and nwl-dsi.[ch] ? I guess
> you can merge all into one file, maybe with separate file for NWL
> register definitions.

Idea is to have driver setup, soc specific hooks and revision specific
quirks in one file and the dsi specific parts in another. If that
doesn't fly I can merge into one if that's a requirement.

> >  8 files changed, 1395 insertions(+)
> >  create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/Kconfig
> >  create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/Makefile
> >  create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.c
> >  create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.h
> >  create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.c
> >  create mode 100644 drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.h
> >
> > diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kc=
onfig
> > index 1cc9f502c1f2..7980b5c2156f 100644
> > --- a/drivers/gpu/drm/bridge/Kconfig
> > +++ b/drivers/gpu/drm/bridge/Kconfig
> > @@ -154,6 +154,8 @@ source "drivers/gpu/drm/bridge/analogix/Kconfig"
> >  =

> >  source "drivers/gpu/drm/bridge/adv7511/Kconfig"
> >  =

> > +source "drivers/gpu/drm/bridge/nwl-dsi/Kconfig"
> > +
> >  source "drivers/gpu/drm/bridge/synopsys/Kconfig"
> >  =

> >  endmenu
> > diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/M=
akefile
> > index 4934fcf5a6f8..d9f6c0f77592 100644
> > --- a/drivers/gpu/drm/bridge/Makefile
> > +++ b/drivers/gpu/drm/bridge/Makefile
> > @@ -16,4 +16,5 @@ obj-$(CONFIG_DRM_ANALOGIX_DP) +=3D analogix/
> >  obj-$(CONFIG_DRM_I2C_ADV7511) +=3D adv7511/
> >  obj-$(CONFIG_DRM_TI_SN65DSI86) +=3D ti-sn65dsi86.o
> >  obj-$(CONFIG_DRM_TI_TFP410) +=3D ti-tfp410.o
> > +obj-$(CONFIG_DRM_NWL_MIPI_DSI) +=3D nwl-dsi/
> >  obj-y +=3D synopsys/
> > diff --git a/drivers/gpu/drm/bridge/nwl-dsi/Kconfig b/drivers/gpu/drm/b=
ridge/nwl-dsi/Kconfig
> > new file mode 100644
> > index 000000000000..7fa678e3b5e2
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/nwl-dsi/Kconfig
> > @@ -0,0 +1,16 @@
> > +config DRM_NWL_MIPI_DSI
> > +	tristate "Northwest Logic MIPI DSI Host controller"
> > +	depends on DRM
> > +	depends on COMMON_CLK
> > +	depends on OF && HAS_IOMEM
> > +	select DRM_KMS_HELPER
> > +	select DRM_MIPI_DSI
> > +	select DRM_PANEL_BRIDGE
> > +	select GENERIC_PHY_MIPI_DPHY
> > +	select MFD_SYSCON
> > +	select MULTIPLEXER
> > +	select REGMAP_MMIO
> > +	help
> > +	  This enables the Northwest Logic MIPI DSI Host controller as
> > +	  for example found on NXP's i.MX8 Processors.
> > +
> > diff --git a/drivers/gpu/drm/bridge/nwl-dsi/Makefile b/drivers/gpu/drm/=
bridge/nwl-dsi/Makefile
> > new file mode 100644
> > index 000000000000..804baf2f1916
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/nwl-dsi/Makefile
> > @@ -0,0 +1,4 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +nwl-mipi-dsi-y :=3D nwl-drv.o nwl-dsi.o
> > +obj-$(CONFIG_DRM_NWL_MIPI_DSI) +=3D nwl-mipi-dsi.o
> > +header-test-y +=3D nwl-drv.h nwl-dsi.h
> > diff --git a/drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.c b/drivers/gpu/drm=
/bridge/nwl-dsi/nwl-drv.c
> > new file mode 100644
> > index 000000000000..9ff43d2de127
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.c
> > @@ -0,0 +1,499 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * i.MX8 NWL MIPI DSI host driver
> > + *
> > + * Copyright (C) 2017 NXP
> > + * Copyright (C) 2019 Purism SPC
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/irq.h>
> > +#include <linux/mfd/syscon.h>
> > +#include <linux/module.h>
> > +#include <linux/mux/consumer.h>
> > +#include <linux/of.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/reset.h>
> > +#include <linux/regmap.h>
> =

> =

> Alphabetic order

Fixed for v6.

> > +#include <linux/sys_soc.h>
> > +
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_print.h>
> > +#include <drm/drm_probe_helper.h>
> > +
> > +#include "nwl-drv.h"
> > +#include "nwl-dsi.h"
> > +
> > +#define DRV_NAME "nwl-dsi"
> > +
> > +/* Possible platform specific clocks */
> > +#define NWL_DSI_CLK_CORE	"core"
> > +
> > +static const struct regmap_config nwl_dsi_regmap_config =3D {
> > +	.reg_bits =3D 16,
> > +	.val_bits =3D 32,
> > +	.reg_stride =3D 4,
> > +	.max_register =3D NWL_DSI_IRQ_MASK2,
> > +	.name =3D DRV_NAME,
> > +};
> =

> =

> What is the point in using regmap here, why not simple writel/readl.

For me

    cat /sys/kernel/debug/regmap/30a00000.mipi_dsi-imx-nwl-dsi/registers

justifies it's use to help debugging problems when e.g. having it
connected to panels I don't own, so I think it's worth keeping if
possible.

> > +
> > +struct nwl_dsi_platform_data {
> > +	int (*poweron)(struct nwl_dsi *dsi);
> > +	int (*poweroff)(struct nwl_dsi *dsi);
> > +	int (*select_input)(struct nwl_dsi *dsi);
> > +	int (*deselect_input)(struct nwl_dsi *dsi);
> > +	struct nwl_dsi_plat_clk_config clk_config[NWL_DSI_MAX_PLATFORM_CLOCKS=
];
> > +};
> =

> =

> Another construct which do not have justification, at least for now.
> Please simplify the driver, remove callbacks/intermediate
> structs/quirks
>
> - for now they are useless.
> =

> Unless there is a serious reason - in such case please describe it in
> comments.

They're needed for i.mx 8QM SoC support (the current driver only
supports the i.mx 8MQ). It will be relatively easy to add with
these so I expect these to show up quickly. I'll add a comment. =


The quirks on the other hand only apply to some i.mx8MQ mask revisions
so they need to be conditionalized. (or maybe I misunderstood you).

> > +
> > +static inline struct nwl_dsi *bridge_to_dsi(struct drm_bridge *bridge)
> > +{
> > +	return container_of(bridge, struct nwl_dsi, bridge);
> > +}
> > +
> > +static int nwl_dsi_set_platform_clocks(struct nwl_dsi *dsi, bool enabl=
e)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +	const char *id;
> > +	struct clk *clk;
> > +	size_t i;
> > +	unsigned long rate;
> > +	int ret, result =3D 0;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "%s platform clocks\n",
> > +			     enable ? "enabling" : "disabling");
> > +	for (i =3D 0; i < ARRAY_SIZE(dsi->pdata->clk_config); i++) {
> > +		if (!dsi->clk_config[i].present)
> > +			continue;
> > +		id =3D dsi->clk_config[i].id;
> > +		clk =3D dsi->clk_config[i].clk;
> > +
> > +		if (enable) {
> > +			ret =3D clk_prepare_enable(clk);
> > +			if (ret < 0) {
> > +				DRM_DEV_ERROR(dev,
> > +					      "Failed to enable %s clk: %d\n",
> > +					      id, ret);
> > +				result =3D result ?: ret;
> > +			}
> > +			rate =3D clk_get_rate(clk);
> > +			DRM_DEV_DEBUG_DRIVER(dev, "Enabled %s clk @%lu Hz\n",
> > +					     id, rate);
> > +		} else {
> > +			clk_disable_unprepare(clk);
> > +			DRM_DEV_DEBUG_DRIVER(dev, "Disabled %s clk\n", id);
> > +		}
> > +	}
> > +
> > +	return result;
> > +}
> > +
> > +static int nwl_dsi_plat_enable(struct nwl_dsi *dsi)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +	int ret;
> > +
> > +	if (dsi->pdata->select_input)
> > +		dsi->pdata->select_input(dsi);
> > +
> > +	ret =3D nwl_dsi_set_platform_clocks(dsi, true);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	ret =3D dsi->pdata->poweron(dsi);
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dev, "Failed to power on DSI: %d\n", ret);
> > +	return ret;
> > +}
> > +
> > +static void nwl_dsi_plat_disable(struct nwl_dsi *dsi)
> > +{
> > +	dsi->pdata->poweroff(dsi);
> > +	nwl_dsi_set_platform_clocks(dsi, false);
> > +	if (dsi->pdata->deselect_input)
> > +		dsi->pdata->deselect_input(dsi);
> > +}
> > +
> > +static void nwl_dsi_bridge_disable(struct drm_bridge *bridge)
> > +{
> > +	struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +
> > +	nwl_dsi_disable(dsi);
> > +	nwl_dsi_plat_disable(dsi);
> > +	pm_runtime_put(dsi->dev);
> > +}
> > +
> > +static int nwl_dsi_get_dphy_params(struct nwl_dsi *dsi,
> > +				   const struct drm_display_mode *mode,
> > +				   union phy_configure_opts *phy_opts)
> > +{
> > +	unsigned long rate;
> > +	int ret;
> > +
> > +	if (dsi->lanes < 1 || dsi->lanes > 4)
> > +		return -EINVAL;
> > +
> > +	/*
> > +	 * So far the DPHY spec minimal timings work for both mixel
> > +	 * dphy and nwl dsi host
> > +	 */
> > +	ret =3D phy_mipi_dphy_get_default_config(
> > +		mode->crtc_clock * 1000,
> > +		mipi_dsi_pixel_format_to_bpp(dsi->format), dsi->lanes,
> > +		&phy_opts->mipi_dphy);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	rate =3D clk_get_rate(dsi->tx_esc_clk);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "LP clk is @%lu Hz\n", rate);
> > +	phy_opts->mipi_dphy.lp_clk_rate =3D rate;
> > +
> > +	return 0;
> > +}
> > +
> > +static bool nwl_dsi_bridge_mode_fixup(struct drm_bridge *bridge,
> > +				      const struct drm_display_mode *mode,
> > +				      struct drm_display_mode *adjusted_mode)
> > +{
> > +	/* At least LCDIF + NWL needs active high sync */
> > +	adjusted_mode->flags |=3D (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYN=
C);
> > +	adjusted_mode->flags &=3D ~(DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSY=
NC);
> > +
> > +	return true;
> > +}
> > +
> > +static enum drm_mode_status
> > +nwl_dsi_bridge_mode_valid(struct drm_bridge *bridge,
> > +			  const struct drm_display_mode *mode)
> > +{
> > +	struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +	int bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->format);
> > +
> > +	if (mode->clock * bpp > 15000000 * dsi->lanes)
> > +		return MODE_CLOCK_HIGH;
> > +
> > +	if (mode->clock * bpp < 80000 * dsi->lanes)
> > +		return MODE_CLOCK_LOW;
> > +
> > +	return MODE_OK;
> > +}
> > +
> > +static void
> > +nwl_dsi_bridge_mode_set(struct drm_bridge *bridge,
> > +			const struct drm_display_mode *mode,
> > +			const struct drm_display_mode *adjusted_mode)
> > +{
> > +	struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +	struct device *dev =3D dsi->dev;
> > +	union phy_configure_opts new_cfg;
> > +	unsigned long phy_ref_rate;
> > +	int ret;
> > +
> > +	ret =3D nwl_dsi_get_dphy_params(dsi, adjusted_mode, &new_cfg);
> > +	if (ret < 0)
> > +		return;
> > +
> > +	/*
> > +	 * If hs clock is unchanged, we're all good - all parameters are
> > +	 * derived from it atm.
> > +	 */
> > +	if (new_cfg.mipi_dphy.hs_clk_rate =3D=3D dsi->phy_cfg.mipi_dphy.hs_cl=
k_rate)
> > +		return;
> > +
> > +	phy_ref_rate =3D clk_get_rate(dsi->phy_ref_clk);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "PHY at ref rate: %lu\n", phy_ref_rate);
> > +	/* Save the new desired phy config */
> > +	memcpy(&dsi->phy_cfg, &new_cfg, sizeof(new_cfg));
> > +
> > +	memcpy(&dsi->mode, adjusted_mode, sizeof(dsi->mode));
> > +	drm_mode_debug_printmodeline(adjusted_mode);
> > +}
> > +
> > +static void nwl_dsi_bridge_pre_enable(struct drm_bridge *bridge)
> > +{
> > +	struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +
> > +	pm_runtime_get_sync(dsi->dev);
> > +	nwl_dsi_plat_enable(dsi);
> > +	nwl_dsi_enable(dsi);
> > +}
> > +
> > +static int nwl_dsi_bridge_attach(struct drm_bridge *bridge)
> > +{
> > +	struct nwl_dsi *dsi =3D bridge->driver_private;
> > +
> > +	return drm_bridge_attach(bridge->encoder, dsi->panel_bridge, bridge);
> > +}
> > +
> > +static const struct drm_bridge_funcs nwl_dsi_bridge_funcs =3D {
> > +	.pre_enable =3D nwl_dsi_bridge_pre_enable,
> > +	.disable    =3D nwl_dsi_bridge_disable,
> > +	.mode_fixup =3D nwl_dsi_bridge_mode_fixup,
> > +	.mode_set   =3D nwl_dsi_bridge_mode_set,
> > +	.mode_valid =3D nwl_dsi_bridge_mode_valid,
> > +	.attach	    =3D nwl_dsi_bridge_attach,
> > +};
> > +
> > +static int nwl_dsi_parse_dt(struct nwl_dsi *dsi)
> > +{
> > +	struct platform_device *pdev =3D to_platform_device(dsi->dev);
> > +	struct clk *clk;
> > +	const char *clk_id;
> > +	void __iomem *base;
> > +	int i, ret;
> > +
> > +	dsi->phy =3D devm_phy_get(dsi->dev, "dphy");
> > +	if (IS_ERR(dsi->phy)) {
> > +		ret =3D PTR_ERR(dsi->phy);
> > +		if (ret !=3D -EPROBE_DEFER)
> > +			DRM_DEV_ERROR(dsi->dev, "Could not get PHY: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	/* Platform dependent clocks */
> > +	memcpy(dsi->clk_config, dsi->pdata->clk_config,
> > +	       sizeof(dsi->pdata->clk_config));
> > +
> > +	for (i =3D 0; i < ARRAY_SIZE(dsi->pdata->clk_config); i++) {
> > +		if (!dsi->clk_config[i].present)
> > +			continue;
> > +
> > +		clk_id =3D dsi->clk_config[i].id;
> > +		clk =3D devm_clk_get(dsi->dev, clk_id);
> > +		if (IS_ERR(clk)) {
> > +			ret =3D PTR_ERR(clk);
> > +			DRM_DEV_ERROR(dsi->dev, "Failed to get %s clock: %d\n",
> > +				      clk_id, ret);
> > +			return ret;
> > +		}
> > +		DRM_DEV_DEBUG_DRIVER(dsi->dev, "Setup clk %s (rate: %lu)\n",
> > +				     clk_id, clk_get_rate(clk));
> > +		dsi->clk_config[i].clk =3D clk;
> > +	}
> > +
> > +	/* DSI clocks */
> > +	clk =3D devm_clk_get(dsi->dev, "phy_ref");
> > +	if (IS_ERR(clk)) {
> > +		ret =3D PTR_ERR(clk);
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to get phy_ref clock: %d\n",
> > +			      ret);
> > +		return ret;
> > +	}
> > +	dsi->phy_ref_clk =3D clk;
> > +
> > +	clk =3D devm_clk_get(dsi->dev, "rx_esc");
> > +	if (IS_ERR(clk)) {
> > +		ret =3D PTR_ERR(clk);
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to get rx_esc clock: %d\n",
> > +			      ret);
> > +		return ret;
> > +	}
> > +	dsi->rx_esc_clk =3D clk;
> > +
> > +	clk =3D devm_clk_get(dsi->dev, "tx_esc");
> > +	if (IS_ERR(clk)) {
> > +		ret =3D PTR_ERR(clk);
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to get tx_esc clock: %d\n",
> > +			      ret);
> > +		return ret;
> > +	}
> > +	dsi->tx_esc_clk =3D clk;
> > +
> > +	dsi->mux =3D devm_mux_control_get(dsi->dev, NULL);
> > +	if (IS_ERR(dsi->mux)) {
> > +		ret =3D PTR_ERR(dsi->mux);
> > +		if (ret !=3D -EPROBE_DEFER)
> > +			DRM_DEV_ERROR(dsi->dev, "Failed to get mux: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	base =3D devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(base))
> > +		return PTR_ERR(base);
> > +
> > +	dsi->regmap =3D
> > +		devm_regmap_init_mmio(dsi->dev, base, &nwl_dsi_regmap_config);
> > +	if (IS_ERR(dsi->regmap)) {
> > +		ret =3D PTR_ERR(dsi->regmap);
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to create NWL DSI regmap: %d\n",
> > +			      ret);
> > +		return ret;
> > +	}
> > +
> > +	dsi->irq =3D platform_get_irq(pdev, 0);
> > +	if (dsi->irq < 0) {
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to get device IRQ: %d\n",
> > +			      dsi->irq);
> > +		return dsi->irq;
> > +	}
> > +
> > +	dsi->rstc =3D devm_reset_control_array_get(dsi->dev, false, true);
> > +	if (IS_ERR(dsi->rstc)) {
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to get resets: %ld\n",
> > +			      PTR_ERR(dsi->rstc));
> > +		return PTR_ERR(dsi->rstc);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx8mq_dsi_select_input(struct nwl_dsi *dsi)
> > +{
> > +	struct device_node *remote;
> > +	u32 use_dcss =3D 1;
> > +	int ret;
> > +
> > +	remote =3D of_graph_get_remote_node(dsi->dev->of_node, 0, 0);
> > +	if (strcmp(remote->name, "lcdif") =3D=3D 0)
> > +		use_dcss =3D 0;
> =

> =

> Relying on node name seems to me wrong. I am not sure if whole logic for
> input select should be here.
> =

> My 1st impression is that selecting should be done rather in DCSS or
> LCDIF driver, why do you want to put it here?

Doing it in here keeps it at a single location where on the other hand
it would need to be done in mxsfb (which handles other SoCs as well) and
upcoming dcss. Also we can have in the dsi enable path which e.g. mxsfb
doesn't even know about at this point.

Cheers,
 -- Guido

> =

> Regards
> =

> Andrzej
> =

> =

> > +
> > +	DRM_DEV_INFO(dsi->dev, "Using %s as input source\n",
> > +		     (use_dcss) ? "DCSS" : "LCDIF");
> > +
> > +	ret =3D mux_control_try_select(dsi->mux, use_dcss);
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to select input: %d\n", ret);
> > +
> > +	of_node_put(remote);
> > +	return ret;
> > +}
> > +
> > +
> > +static int imx8mq_dsi_deselect_input(struct nwl_dsi *dsi)
> > +{
> > +	int ret;
> > +
> > +	ret =3D mux_control_deselect(dsi->mux);
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to deselect input: %d\n", ret);
> > +
> > +	return ret;
> > +}
> > +
> > +
> > +static int imx8mq_dsi_poweron(struct nwl_dsi *dsi)
> > +{
> > +	int ret =3D 0;
> > +
> > +	/* otherwise the display stays blank */
> > +	usleep_range(200, 300);
> > +
> > +	if (dsi->rstc)
> > +		ret =3D reset_control_deassert(dsi->rstc);
> > +
> > +	return ret;
> > +}
> > +
> > +static int imx8mq_dsi_poweroff(struct nwl_dsi *dsi)
> > +{
> > +	int ret =3D 0;
> > +
> > +	if (dsi->quirks & SRC_RESET_QUIRK)
> > +		return 0;
> > +
> > +	if (dsi->rstc)
> > +		ret =3D reset_control_assert(dsi->rstc);
> > +	return ret;
> > +}
> > +
> > +static const struct drm_bridge_timings nwl_dsi_timings =3D {
> > +	.input_bus_flags =3D DRM_BUS_FLAG_DE_LOW,
> > +};
> > +
> > +static const struct nwl_dsi_platform_data imx8mq_dev =3D {
> > +	.poweron =3D &imx8mq_dsi_poweron,
> > +	.poweroff =3D &imx8mq_dsi_poweroff,
> > +	.select_input =3D &imx8mq_dsi_select_input,
> > +	.deselect_input =3D &imx8mq_dsi_deselect_input,
> > +	.clk_config =3D {
> > +		{ .id =3D NWL_DSI_CLK_CORE, .present =3D true },
> > +	},
> > +};
> > +
> > +static const struct of_device_id nwl_dsi_dt_ids[] =3D {
> > +	{ .compatible =3D "fsl,imx8mq-nwl-dsi", .data =3D &imx8mq_dev, },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, nwl_dsi_dt_ids);
> > +
> > +static const struct soc_device_attribute nwl_dsi_quirks_match[] =3D {
> > +	{ .soc_id =3D "i.MX8MQ", .revision =3D "2.0",
> > +	  .data =3D (void *)(E11418_HS_MODE_QUIRK | SRC_RESET_QUIRK) },
> > +	{ /* sentinel. */ },
> > +};
> > +
> > +static int nwl_dsi_probe(struct platform_device *pdev)
> > +{
> > +	struct device *dev =3D &pdev->dev;
> > +	const struct of_device_id *of_id =3D of_match_device(nwl_dsi_dt_ids, =
dev);
> > +	const struct nwl_dsi_platform_data *pdata =3D of_id->data;
> > +	const struct soc_device_attribute *attr;
> > +	struct nwl_dsi *dsi;
> > +	int ret;
> > +
> > +	dsi =3D devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
> > +	if (!dsi)
> > +		return -ENOMEM;
> > +
> > +	dsi->dev =3D dev;
> > +	dsi->pdata =3D pdata;
> > +
> > +	ret =3D nwl_dsi_parse_dt(dsi);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret =3D devm_request_irq(dev, dsi->irq, nwl_dsi_irq_handler, 0,
> > +			       dev_name(dev), dsi);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to request IRQ %d: %d\n", dsi->irq,
> > +			      ret);
> > +		return ret;
> > +	}
> > +
> > +	dsi->dsi_host.ops =3D &nwl_dsi_host_ops;
> > +	dsi->dsi_host.dev =3D dev;
> > +	ret =3D mipi_dsi_host_register(&dsi->dsi_host);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(dev, "Failed to register MIPI host: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	attr =3D soc_device_match(nwl_dsi_quirks_match);
> > +	if (attr)
> > +		dsi->quirks =3D (uintptr_t)attr->data;
> > +
> > +	dsi->bridge.driver_private =3D dsi;
> > +	dsi->bridge.funcs =3D &nwl_dsi_bridge_funcs;
> > +	dsi->bridge.of_node =3D dev->of_node;
> > +	dsi->bridge.timings =3D &nwl_dsi_timings;
> > +
> > +	dev_set_drvdata(dev, dsi);
> > +	pm_runtime_enable(dev);
> > +	return 0;
> > +}
> > +
> > +static int nwl_dsi_remove(struct platform_device *pdev)
> > +{
> > +	struct nwl_dsi *dsi =3D platform_get_drvdata(pdev);
> > +
> > +	mipi_dsi_host_unregister(&dsi->dsi_host);
> > +	pm_runtime_disable(&pdev->dev);
> > +	return 0;
> > +}
> > +
> > +static struct platform_driver nwl_dsi_driver =3D {
> > +	.probe		=3D nwl_dsi_probe,
> > +	.remove		=3D nwl_dsi_remove,
> > +	.driver		=3D {
> > +		.of_match_table =3D nwl_dsi_dt_ids,
> > +		.name	=3D DRV_NAME,
> > +	},
> > +};
> > +
> > +module_platform_driver(nwl_dsi_driver);
> > +
> > +MODULE_AUTHOR("NXP Semiconductor");
> > +MODULE_AUTHOR("Purism SPC");
> > +MODULE_DESCRIPTION("Northwest Logic MIPI-DSI driver");
> > +MODULE_LICENSE("GPL"); /* GPLv2 or later */
> > diff --git a/drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.h b/drivers/gpu/drm=
/bridge/nwl-dsi/nwl-drv.h
> > new file mode 100644
> > index 000000000000..1e72a9221401
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/nwl-dsi/nwl-drv.h
> > @@ -0,0 +1,65 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * NWL MIPI DSI host driver
> > + *
> > + * Copyright (C) 2017 NXP
> > + * Copyright (C) 2019 Purism SPC
> > + */
> > +
> > +#ifndef __NWL_DRV_H__
> > +#define __NWL_DRV_H__
> > +
> > +#include <linux/mux/consumer.h>
> > +#include <linux/phy/phy.h>
> > +
> > +#include <drm/drm_bridge.h>
> > +#include <drm/drm_mipi_dsi.h>
> > +
> > +struct nwl_dsi_platform_data;
> > +
> > +/* i.MX8 NWL quirks */
> > +/* i.MX8MQ errata E11418 */
> > +#define E11418_HS_MODE_QUIRK	    BIT(0)
> > +/* Skip DSI bits in SRC on disable to avoid blank display on enable */
> > +#define SRC_RESET_QUIRK		    BIT(1)
> > +
> > +#define NWL_DSI_MAX_PLATFORM_CLOCKS 1
> > +struct nwl_dsi_plat_clk_config {
> > +	const char *id;
> > +	struct clk *clk;
> > +	bool present;
> > +};
> > +
> > +struct nwl_dsi {
> > +	struct drm_bridge bridge;
> > +	struct mipi_dsi_host dsi_host;
> > +	struct drm_bridge *panel_bridge;
> > +	struct device *dev;
> > +	struct phy *phy;
> > +	union phy_configure_opts phy_cfg;
> > +	unsigned int quirks;
> > +
> > +	struct regmap *regmap;
> > +	int irq;
> > +	struct reset_control *rstc;
> > +	struct mux_control *mux;
> > +
> > +	/* DSI clocks */
> > +	struct clk *phy_ref_clk;
> > +	struct clk *rx_esc_clk;
> > +	struct clk *tx_esc_clk;
> > +	/* Platform dependent clocks */
> > +	struct nwl_dsi_plat_clk_config clk_config[NWL_DSI_MAX_PLATFORM_CLOCKS=
];
> > +
> > +	/* dsi lanes */
> > +	u32 lanes;
> > +	enum mipi_dsi_pixel_format format;
> > +	struct drm_display_mode mode;
> > +	unsigned long dsi_mode_flags;
> > +
> > +	struct nwl_dsi_transfer *xfer;
> > +
> > +	const struct nwl_dsi_platform_data *pdata;
> > +};
> > +
> > +#endif /* __NWL_DRV_H__ */
> > diff --git a/drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.c b/drivers/gpu/drm=
/bridge/nwl-dsi/nwl-dsi.c
> > new file mode 100644
> > index 000000000000..e6038cb4e849
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.c
> > @@ -0,0 +1,696 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * NWL MIPI DSI host driver
> > + *
> > + * Copyright (C) 2017 NXP
> > + * Copyright (C) 2019 Purism SPC
> > + */
> > +
> > +#include <linux/bitfield.h>
> > +#include <linux/clk.h>
> > +#include <linux/irq.h>
> > +#include <linux/math64.h>
> > +#include <linux/regmap.h>
> > +#include <linux/time64.h>
> > +
> > +#include <video/mipi_display.h>
> > +#include <video/videomode.h>
> > +
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_crtc_helper.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_panel.h>
> > +#include <drm/drm_print.h>
> > +
> > +#include "nwl-drv.h"
> > +#include "nwl-dsi.h"
> > +
> > +#define NWL_DSI_MIPI_FIFO_TIMEOUT msecs_to_jiffies(500)
> > +
> > +/*
> > + * PKT_CONTROL format:
> > + * [15: 0] - word count
> > + * [17:16] - virtual channel
> > + * [23:18] - data type
> > + * [24]	   - LP or HS select (0 - LP, 1 - HS)
> > + * [25]	   - perform BTA after packet is sent
> > + * [26]	   - perform BTA only, no packet tx
> > + */
> > +#define NWL_DSI_WC(x)		FIELD_PREP(GENMASK(15, 0), (x))
> > +#define NWL_DSI_TX_VC(x)	FIELD_PREP(GENMASK(17, 16), (x))
> > +#define NWL_DSI_TX_DT(x)	FIELD_PREP(GENMASK(23, 18), (x))
> > +#define NWL_DSI_HS_SEL(x)	FIELD_PREP(GENMASK(24, 24), (x))
> > +#define NWL_DSI_BTA_TX(x)	FIELD_PREP(GENMASK(25, 25), (x))
> > +#define NWL_DSI_BTA_NO_TX(x)	FIELD_PREP(GENMASK(26, 26), (x))
> > +
> > +/*
> > + * RX_PKT_HEADER format:
> > + * [15: 0] - word count
> > + * [21:16] - data type
> > + * [23:22] - virtual channel
> > + */
> > +#define NWL_DSI_RX_DT(x)	FIELD_GET(GENMASK(21, 16), (x))
> > +#define NWL_DSI_RX_VC(x)	FIELD_GET(GENMASK(23, 22), (x))
> > +
> > +/* DSI Video mode */
> > +#define NWL_DSI_VM_BURST_MODE_WITH_SYNC_PULSES		0
> > +#define NWL_DSI_VM_NON_BURST_MODE_WITH_SYNC_EVENTS	BIT(0)
> > +#define NWL_DSI_VM_BURST_MODE				BIT(1)
> > +
> > +/* * DPI color coding */
> > +#define NWL_DSI_DPI_16_BIT_565_PACKED	0
> > +#define NWL_DSI_DPI_16_BIT_565_ALIGNED	1
> > +#define NWL_DSI_DPI_16_BIT_565_SHIFTED	2
> > +#define NWL_DSI_DPI_18_BIT_PACKED	3
> > +#define NWL_DSI_DPI_18_BIT_ALIGNED	4
> > +#define NWL_DSI_DPI_24_BIT		5
> > +
> > +/* * DPI Pixel format */
> > +#define NWL_DSI_PIXEL_FORMAT_16  0
> > +#define NWL_DSI_PIXEL_FORMAT_18  BIT(0)
> > +#define NWL_DSI_PIXEL_FORMAT_18L BIT(1)
> > +#define NWL_DSI_PIXEL_FORMAT_24  (BIT(0) | BIT(1))
> > +
> > +enum transfer_direction {
> > +	DSI_PACKET_SEND,
> > +	DSI_PACKET_RECEIVE,
> > +};
> > +
> > +struct nwl_dsi_transfer {
> > +	const struct mipi_dsi_msg *msg;
> > +	struct mipi_dsi_packet packet;
> > +	struct completion completed;
> > +
> > +	int status; /* status of transmission */
> > +	enum transfer_direction direction;
> > +	bool need_bta;
> > +	u8 cmd;
> > +	u16 rx_word_count;
> > +	size_t tx_len; /* in bytes */
> > +	size_t rx_len; /* in bytes */
> > +};
> > +
> > +static int nwl_dsi_write(struct nwl_dsi *dsi, unsigned int reg, u32 va=
l)
> > +{
> > +	int ret;
> > +
> > +	ret =3D regmap_write(dsi->regmap, reg, val);
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dsi->dev,
> > +			      "Failed to write NWL DSI reg 0x%x: %d\n", reg,
> > +			      ret);
> > +	return ret;
> > +}
> > +
> > +static u32 nwl_dsi_read(struct nwl_dsi *dsi, u32 reg)
> > +{
> > +	unsigned int val;
> > +	int ret;
> > +
> > +	ret =3D regmap_read(dsi->regmap, reg, &val);
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to read NWL DSI reg 0x%x: %d\n",
> > +			      reg, ret);
> > +
> > +	return val;
> > +}
> > +
> > +static u32 nwl_dsi_get_dpi_pixel_format(enum mipi_dsi_pixel_format for=
mat)
> > +{
> > +	switch (format) {
> > +	case MIPI_DSI_FMT_RGB565:
> > +		return NWL_DSI_PIXEL_FORMAT_16;
> > +	case MIPI_DSI_FMT_RGB666:
> > +		return NWL_DSI_PIXEL_FORMAT_18L;
> > +	case MIPI_DSI_FMT_RGB666_PACKED:
> > +		return NWL_DSI_PIXEL_FORMAT_18;
> > +	case MIPI_DSI_FMT_RGB888:
> > +		return NWL_DSI_PIXEL_FORMAT_24;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +}
> > +
> > +/*
> > + * ps2bc - Picoseconds to byte clock cycles
> > + */
> > +static u32 ps2bc(struct nwl_dsi *dsi, unsigned long long ps)
> > +{
> > +	u32 bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->format);
> > +
> > +	return DIV64_U64_ROUND_UP(ps * dsi->mode.clock * bpp,
> > +				  dsi->lanes * 8 * NSEC_PER_SEC);
> > +}
> > +
> > +/*
> > + * ui2bc - UI time periods to byte clock cycles
> > + */
> > +static u32 ui2bc(struct nwl_dsi *dsi, unsigned long long ui)
> > +{
> > +	u32 bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->format);
> > +
> > +	return DIV64_U64_ROUND_UP(ui * dsi->lanes,
> > +				  dsi->mode.clock * 1000 * bpp);
> > +}
> > +
> > +/*
> > + * us2bc - micro seconds to lp clock cycles
> > + */
> > +static u32 us2lp(u32 lp_clk_rate, unsigned long us)
> > +{
> > +	return DIV_ROUND_UP(us * lp_clk_rate, USEC_PER_SEC);
> > +}
> > +
> > +static int nwl_dsi_config_host(struct nwl_dsi *dsi)
> > +{
> > +	u32 cycles;
> > +	struct phy_configure_opts_mipi_dphy *cfg =3D &dsi->phy_cfg.mipi_dphy;
> > +
> > +	if (dsi->lanes < 1 || dsi->lanes > 4)
> > +		return -EINVAL;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "DSI Lanes %d\n", dsi->lanes);
> > +	nwl_dsi_write(dsi, NWL_DSI_CFG_NUM_LANES, dsi->lanes - 1);
> > +
> > +	if (dsi->dsi_mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS) {
> > +		nwl_dsi_write(dsi, NWL_DSI_CFG_NONCONTINUOUS_CLK, 0x01);
> > +		nwl_dsi_write(dsi, NWL_DSI_CFG_AUTOINSERT_EOTP, 0x01);
> > +	} else {
> > +		nwl_dsi_write(dsi, NWL_DSI_CFG_NONCONTINUOUS_CLK, 0x00);
> > +		nwl_dsi_write(dsi, NWL_DSI_CFG_AUTOINSERT_EOTP, 0x00);
> > +	}
> > +
> > +	/* values in byte clock cycles */
> > +	cycles =3D ui2bc(dsi, cfg->clk_pre);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_t_pre: 0x%x\n", cycles);
> > +	nwl_dsi_write(dsi, NWL_DSI_CFG_T_PRE, cycles);
> > +	cycles =3D ps2bc(dsi, cfg->lpx + cfg->clk_prepare + cfg->clk_zero);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap (pre): 0x%x\n", cycles);
> > +	cycles +=3D ui2bc(dsi, cfg->clk_pre);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_t_post: 0x%x\n", cycles);
> > +	nwl_dsi_write(dsi, NWL_DSI_CFG_T_POST, cycles);
> > +	cycles =3D ps2bc(dsi, cfg->hs_exit);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap: 0x%x\n", cycles);
> > +	nwl_dsi_write(dsi, NWL_DSI_CFG_TX_GAP, cycles);
> > +
> > +	nwl_dsi_write(dsi, NWL_DSI_CFG_EXTRA_CMDS_AFTER_EOTP, 0x01);
> > +	nwl_dsi_write(dsi, NWL_DSI_CFG_HTX_TO_COUNT, 0x00);
> > +	nwl_dsi_write(dsi, NWL_DSI_CFG_LRX_H_TO_COUNT, 0x00);
> > +	nwl_dsi_write(dsi, NWL_DSI_CFG_BTA_H_TO_COUNT, 0x00);
> > +	/* In LP clock cycles */
> > +	cycles =3D us2lp(cfg->lp_clk_rate, cfg->wakeup);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_twakeup: 0x%x\n", cycles);
> > +	nwl_dsi_write(dsi, NWL_DSI_CFG_TWAKEUP, cycles);
> > +
> > +	return 0;
> > +}
> > +
> > +static int nwl_dsi_config_dpi(struct nwl_dsi *dsi)
> > +{
> > +	u32 color_format, mode;
> > +	bool burst_mode;
> > +	int hfront_porch, hback_porch, vfront_porch, vback_porch;
> > +	int hsync_len, vsync_len;
> > +
> > +	hfront_porch =3D dsi->mode.hsync_start - dsi->mode.hdisplay;
> > +	hsync_len =3D dsi->mode.hsync_end - dsi->mode.hsync_start;
> > +	hback_porch =3D dsi->mode.htotal - dsi->mode.hsync_end;
> > +
> > +	vfront_porch =3D dsi->mode.vsync_start - dsi->mode.vdisplay;
> > +	vsync_len =3D dsi->mode.vsync_end - dsi->mode.vsync_start;
> > +	vback_porch =3D dsi->mode.vtotal - dsi->mode.vsync_end;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "hfront_porch =3D %d\n", hfront_porch);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "hback_porch =3D %d\n", hback_porch);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "hsync_len =3D %d\n", hsync_len);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "hdisplay =3D %d\n", dsi->mode.hdispla=
y);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "vfront_porch =3D %d\n", vfront_porch);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "vback_porch =3D %d\n", vback_porch);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "vsync_len =3D %d\n", vsync_len);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "vactive =3D %d\n", dsi->mode.vdisplay=
);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "clock =3D %d kHz\n", dsi->mode.clock);
> > +
> > +	color_format =3D nwl_dsi_get_dpi_pixel_format(dsi->format);
> > +	if (color_format < 0) {
> > +		DRM_DEV_ERROR(dsi->dev, "Invalid color format 0x%x\n",
> > +			      dsi->format);
> > +		return color_format;
> > +	}
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "pixel fmt =3D %d\n", dsi->format);
> > +
> > +	nwl_dsi_write(dsi, NWL_DSI_INTERFACE_COLOR_CODING, NWL_DSI_DPI_24_BIT=
);
> > +	nwl_dsi_write(dsi, NWL_DSI_PIXEL_FORMAT, color_format);
> > +	/*
> > +	 * Adjusting input polarity based on the video mode results in
> > +	 * a black screen so always pick active low:
> > +	 */
> > +	nwl_dsi_write(dsi, NWL_DSI_VSYNC_POLARITY,
> > +		      NWL_DSI_VSYNC_POLARITY_ACTIVE_LOW);
> > +	nwl_dsi_write(dsi, NWL_DSI_HSYNC_POLARITY,
> > +		      NWL_DSI_HSYNC_POLARITY_ACTIVE_LOW);
> > +
> > +	burst_mode =3D (dsi->dsi_mode_flags & MIPI_DSI_MODE_VIDEO_BURST) &&
> > +		     !(dsi->dsi_mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE);
> > +
> > +	if (burst_mode) {
> > +		nwl_dsi_write(dsi, NWL_DSI_VIDEO_MODE, NWL_DSI_VM_BURST_MODE);
> > +		nwl_dsi_write(dsi, NWL_DSI_PIXEL_FIFO_SEND_LEVEL, 256);
> > +	} else {
> > +		mode =3D ((dsi->dsi_mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) ?
> > +				NWL_DSI_VM_BURST_MODE_WITH_SYNC_PULSES :
> > +				NWL_DSI_VM_NON_BURST_MODE_WITH_SYNC_EVENTS);
> > +		nwl_dsi_write(dsi, NWL_DSI_VIDEO_MODE, mode);
> > +		nwl_dsi_write(dsi, NWL_DSI_PIXEL_FIFO_SEND_LEVEL,
> > +			      dsi->mode.hdisplay);
> > +	}
> > +
> > +	nwl_dsi_write(dsi, NWL_DSI_HFP, hfront_porch);
> > +	nwl_dsi_write(dsi, NWL_DSI_HBP, hback_porch);
> > +	nwl_dsi_write(dsi, NWL_DSI_HSA, hsync_len);
> > +
> > +	nwl_dsi_write(dsi, NWL_DSI_ENABLE_MULT_PKTS, 0x0);
> > +	nwl_dsi_write(dsi, NWL_DSI_BLLP_MODE, 0x1);
> > +	nwl_dsi_write(dsi, NWL_DSI_USE_NULL_PKT_BLLP, 0x0);
> > +	nwl_dsi_write(dsi, NWL_DSI_VC, 0x0);
> > +
> > +	nwl_dsi_write(dsi, NWL_DSI_PIXEL_PAYLOAD_SIZE, dsi->mode.hdisplay);
> > +	nwl_dsi_write(dsi, NWL_DSI_VACTIVE, dsi->mode.vdisplay - 1);
> > +	nwl_dsi_write(dsi, NWL_DSI_VBP, vback_porch);
> > +	nwl_dsi_write(dsi, NWL_DSI_VFP, vfront_porch);
> > +
> > +	return 0;
> > +}
> > +
> > +static void nwl_dsi_init_interrupts(struct nwl_dsi *dsi)
> > +{
> > +	u32 irq_enable;
> > +
> > +	nwl_dsi_write(dsi, NWL_DSI_IRQ_MASK, 0xffffffff);
> > +	nwl_dsi_write(dsi, NWL_DSI_IRQ_MASK2, 0x7);
> > +
> > +	irq_enable =3D ~(u32)(NWL_DSI_TX_PKT_DONE_MASK |
> > +			    NWL_DSI_RX_PKT_HDR_RCVD_MASK |
> > +			    NWL_DSI_TX_FIFO_OVFLW_MASK |
> > +			    NWL_DSI_HS_TX_TIMEOUT_MASK);
> > +
> > +	nwl_dsi_write(dsi, NWL_DSI_IRQ_MASK, irq_enable);
> > +}
> > +
> > +static int nwl_dsi_host_attach(struct mipi_dsi_host *dsi_host,
> > +			       struct mipi_dsi_device *device)
> > +{
> > +	struct nwl_dsi *dsi =3D container_of(dsi_host, struct nwl_dsi, dsi_ho=
st);
> > +	struct device *dev =3D dsi->dev;
> > +	struct drm_bridge *bridge;
> > +	struct drm_panel *panel;
> > +	int ret;
> > +
> > +	DRM_DEV_INFO(dev, "lanes=3D%u, format=3D0x%x flags=3D0x%lx\n", device=
->lanes,
> > +		     device->format, device->mode_flags);
> > +
> > +	if (device->lanes < 1 || device->lanes > 4)
> > +		return -EINVAL;
> > +
> > +	dsi->lanes =3D device->lanes;
> > +	dsi->format =3D device->format;
> > +	dsi->dsi_mode_flags =3D device->mode_flags;
> > +
> > +	ret =3D drm_of_find_panel_or_bridge(dsi->dev->of_node, 1, 0, &panel,
> > +					  &bridge);
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (panel) {
> > +		bridge =3D drm_panel_bridge_add(panel, DRM_MODE_CONNECTOR_DSI);
> > +		if (IS_ERR(bridge))
> > +			return PTR_ERR(bridge);
> > +	}
> > +
> > +	dsi->panel_bridge =3D bridge;
> > +	drm_bridge_add(&dsi->bridge);
> > +
> > +	return 0;
> > +}
> > +
> > +static int nwl_dsi_host_detach(struct mipi_dsi_host *dsi_host,
> > +			       struct mipi_dsi_device *device)
> > +{
> > +	struct nwl_dsi *dsi =3D container_of(dsi_host, struct nwl_dsi, dsi_ho=
st);
> > +
> > +	drm_of_panel_bridge_remove(dsi->dev->of_node, 1, 0);
> > +	drm_bridge_remove(&dsi->bridge);
> > +
> > +	return 0;
> > +}
> > +
> > +static bool nwl_dsi_read_packet(struct nwl_dsi *dsi, u32 status)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +	struct nwl_dsi_transfer *xfer =3D dsi->xfer;
> > +	u8 *payload =3D xfer->msg->rx_buf;
> > +	u32 val;
> > +	u16 word_count;
> > +	u8 channel;
> > +	u8 data_type;
> > +
> > +	xfer->status =3D 0;
> > +
> > +	if (xfer->rx_word_count =3D=3D 0) {
> > +		if (!(status & NWL_DSI_RX_PKT_HDR_RCVD))
> > +			return false;
> > +		/* Get the RX header and parse it */
> > +		val =3D nwl_dsi_read(dsi, NWL_DSI_RX_PKT_HEADER);
> > +		word_count =3D NWL_DSI_WC(val);
> > +		channel =3D NWL_DSI_RX_VC(val);
> > +		data_type =3D NWL_DSI_RX_DT(val);
> > +
> > +		if (channel !=3D xfer->msg->channel) {
> > +			DRM_DEV_ERROR(dev,
> > +				      "[%02X] Channel mismatch (%u !=3D %u)\n",
> > +				      xfer->cmd, channel, xfer->msg->channel);
> > +			return true;
> > +		}
> > +
> > +		switch (data_type) {
> > +		case MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_2BYTE:
> > +			/* Fall through */
> > +		case MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE:
> > +			if (xfer->msg->rx_len > 1) {
> > +				/* read second byte */
> > +				payload[1] =3D word_count >> 8;
> > +				++xfer->rx_len;
> > +			}
> > +			/* Fall through */
> > +		case MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_1BYTE:
> > +			/* Fall through */
> > +		case MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE:
> > +			if (xfer->msg->rx_len > 0) {
> > +				/* read first byte */
> > +				payload[0] =3D word_count & 0xff;
> > +				++xfer->rx_len;
> > +			}
> > +			xfer->status =3D xfer->rx_len;
> > +			return true;
> > +		case MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT:
> > +			word_count &=3D 0xff;
> > +			DRM_DEV_ERROR(dev, "[%02X] DSI error report: 0x%02x\n",
> > +				      xfer->cmd, word_count);
> > +			xfer->status =3D -EPROTO;
> > +			return true;
> > +		}
> > +
> > +		if (word_count > xfer->msg->rx_len) {
> > +			DRM_DEV_ERROR(
> > +				dev,
> > +				"[%02X] Receive buffer too small: %zu (< %u)\n",
> > +				xfer->cmd, xfer->msg->rx_len, word_count);
> > +			return true;
> > +		}
> > +
> > +		xfer->rx_word_count =3D word_count;
> > +	} else {
> > +		/* Set word_count from previous header read */
> > +		word_count =3D xfer->rx_word_count;
> > +	}
> > +
> > +	/* If RX payload is not yet received, wait for it */
> > +	if (!(status & NWL_DSI_RX_PKT_PAYLOAD_DATA_RCVD))
> > +		return false;
> > +
> > +	/* Read the RX payload */
> > +	while (word_count >=3D 4) {
> > +		val =3D nwl_dsi_read(dsi, NWL_DSI_RX_PAYLOAD);
> > +		payload[0] =3D (val >> 0) & 0xff;
> > +		payload[1] =3D (val >> 8) & 0xff;
> > +		payload[2] =3D (val >> 16) & 0xff;
> > +		payload[3] =3D (val >> 24) & 0xff;
> > +		payload +=3D 4;
> > +		xfer->rx_len +=3D 4;
> > +		word_count -=3D 4;
> > +	}
> > +
> > +	if (word_count > 0) {
> > +		val =3D nwl_dsi_read(dsi, NWL_DSI_RX_PAYLOAD);
> > +		switch (word_count) {
> > +		case 3:
> > +			payload[2] =3D (val >> 16) & 0xff;
> > +			++xfer->rx_len;
> > +			/* Fall through */
> > +		case 2:
> > +			payload[1] =3D (val >> 8) & 0xff;
> > +			++xfer->rx_len;
> > +			/* Fall through */
> > +		case 1:
> > +			payload[0] =3D (val >> 0) & 0xff;
> > +			++xfer->rx_len;
> > +			break;
> > +		}
> > +	}
> > +
> > +	xfer->status =3D xfer->rx_len;
> > +
> > +	return true;
> > +}
> > +
> > +static void nwl_dsi_finish_transmission(struct nwl_dsi *dsi, u32 statu=
s)
> > +{
> > +	struct nwl_dsi_transfer *xfer =3D dsi->xfer;
> > +	bool end_packet =3D false;
> > +
> > +	if (!xfer)
> > +		return;
> > +
> > +	if (xfer->direction =3D=3D DSI_PACKET_SEND &&
> > +	    status & NWL_DSI_TX_PKT_DONE) {
> > +		xfer->status =3D xfer->tx_len;
> > +		end_packet =3D true;
> > +	} else if (status & NWL_DSI_DPHY_DIRECTION &&
> > +		   ((status & (NWL_DSI_RX_PKT_HDR_RCVD |
> > +			       NWL_DSI_RX_PKT_PAYLOAD_DATA_RCVD)))) {
> > +		end_packet =3D nwl_dsi_read_packet(dsi, status);
> > +	}
> > +
> > +	if (end_packet)
> > +		complete(&xfer->completed);
> > +}
> > +
> > +static void nwl_dsi_begin_transmission(struct nwl_dsi *dsi)
> > +{
> > +	struct nwl_dsi_transfer *xfer =3D dsi->xfer;
> > +	struct mipi_dsi_packet *pkt =3D &xfer->packet;
> > +	const u8 *payload;
> > +	size_t length;
> > +	u16 word_count;
> > +	u8 hs_mode;
> > +	u32 val;
> > +	u32 hs_workaround =3D 0;
> > +
> > +	/* Send the payload, if any */
> > +	length =3D pkt->payload_length;
> > +	payload =3D pkt->payload;
> > +
> > +	while (length >=3D 4) {
> > +		val =3D *(u32 *)payload;
> > +		hs_workaround |=3D !(val & 0xFFFF00);
> > +		nwl_dsi_write(dsi, NWL_DSI_TX_PAYLOAD, val);
> > +		payload +=3D 4;
> > +		length -=3D 4;
> > +	}
> > +	/* Send the rest of the payload */
> > +	val =3D 0;
> > +	switch (length) {
> > +	case 3:
> > +		val |=3D payload[2] << 16;
> > +		/* Fall through */
> > +	case 2:
> > +		val |=3D payload[1] << 8;
> > +		hs_workaround |=3D !(val & 0xFFFF00);
> > +		/* Fall through */
> > +	case 1:
> > +		val |=3D payload[0];
> > +		nwl_dsi_write(dsi, NWL_DSI_TX_PAYLOAD, val);
> > +		break;
> > +	}
> > +	xfer->tx_len =3D pkt->payload_length;
> > +
> > +	/*
> > +	 * Send the header
> > +	 * header[0] =3D Virtual Channel + Data Type
> > +	 * header[1] =3D Word Count LSB (LP) or first param (SP)
> > +	 * header[2] =3D Word Count MSB (LP) or second param (SP)
> > +	 */
> > +	word_count =3D pkt->header[1] | (pkt->header[2] << 8);
> > +	if (hs_workaround && (dsi->quirks & E11418_HS_MODE_QUIRK)) {
> > +		DRM_DEV_DEBUG_DRIVER(dsi->dev,
> > +				     "Using hs mode workaround for cmd 0x%x\n",
> > +				     xfer->cmd);
> > +		hs_mode =3D 1;
> > +	} else {
> > +		hs_mode =3D (xfer->msg->flags & MIPI_DSI_MSG_USE_LPM) ? 0 : 1;
> > +	}
> > +	val =3D NWL_DSI_WC(word_count) | NWL_DSI_TX_VC(xfer->msg->channel) |
> > +	      NWL_DSI_TX_DT(xfer->msg->type) | NWL_DSI_HS_SEL(hs_mode) |
> > +	      NWL_DSI_BTA_TX(xfer->need_bta);
> > +	nwl_dsi_write(dsi, NWL_DSI_PKT_CONTROL, val);
> > +
> > +	/* Send packet command */
> > +	nwl_dsi_write(dsi, NWL_DSI_SEND_PACKET, 0x1);
> > +}
> > +
> > +static ssize_t nwl_dsi_host_transfer(struct mipi_dsi_host *dsi_host,
> > +				     const struct mipi_dsi_msg *msg)
> > +{
> > +	struct nwl_dsi *dsi =3D container_of(dsi_host, struct nwl_dsi, dsi_ho=
st);
> > +	struct nwl_dsi_transfer xfer;
> > +	ssize_t ret =3D 0;
> > +
> > +	/* Create packet to be sent */
> > +	dsi->xfer =3D &xfer;
> > +	ret =3D mipi_dsi_create_packet(&xfer.packet, msg);
> > +	if (ret < 0) {
> > +		dsi->xfer =3D NULL;
> > +		return ret;
> > +	}
> > +
> > +	if ((msg->type & MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM ||
> > +	     msg->type & MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM ||
> > +	     msg->type & MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM ||
> > +	     msg->type & MIPI_DSI_DCS_READ) &&
> > +	    msg->rx_len > 0 && msg->rx_buf !=3D NULL)
> > +		xfer.direction =3D DSI_PACKET_RECEIVE;
> > +	else
> > +		xfer.direction =3D DSI_PACKET_SEND;
> > +
> > +	xfer.need_bta =3D (xfer.direction =3D=3D DSI_PACKET_RECEIVE);
> > +	xfer.need_bta |=3D (msg->flags & MIPI_DSI_MSG_REQ_ACK) ? 1 : 0;
> > +	xfer.msg =3D msg;
> > +	xfer.status =3D -ETIMEDOUT;
> > +	xfer.rx_word_count =3D 0;
> > +	xfer.rx_len =3D 0;
> > +	xfer.cmd =3D 0x00;
> > +	if (msg->tx_len > 0)
> > +		xfer.cmd =3D ((u8 *)(msg->tx_buf))[0];
> > +	init_completion(&xfer.completed);
> > +
> > +	ret =3D clk_prepare_enable(dsi->rx_esc_clk);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to enable rx_esc clk: %zd\n",
> > +			      ret);
> > +		return ret;
> > +	}
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "Enabled rx_esc clk @%lu Hz\n",
> > +			     clk_get_rate(dsi->rx_esc_clk));
> > +
> > +	/* Initiate the DSI packet transmision */
> > +	nwl_dsi_begin_transmission(dsi);
> > +
> > +	if (!wait_for_completion_timeout(&xfer.completed,
> > +					 NWL_DSI_MIPI_FIFO_TIMEOUT)) {
> > +		DRM_DEV_ERROR(dsi_host->dev, "[%02X] DSI transfer timed out\n",
> > +			      xfer.cmd);
> > +		ret =3D -ETIMEDOUT;
> > +	} else {
> > +		ret =3D xfer.status;
> > +	}
> > +
> > +	clk_disable_unprepare(dsi->rx_esc_clk);
> > +
> > +	return ret;
> > +}
> > +
> > +const struct mipi_dsi_host_ops nwl_dsi_host_ops =3D {
> > +	.attach =3D nwl_dsi_host_attach,
> > +	.detach =3D nwl_dsi_host_detach,
> > +	.transfer =3D nwl_dsi_host_transfer,
> > +};
> > +
> > +irqreturn_t nwl_dsi_irq_handler(int irq, void *data)
> > +{
> > +	u32 irq_status;
> > +	struct nwl_dsi *dsi =3D data;
> > +
> > +	irq_status =3D nwl_dsi_read(dsi, NWL_DSI_IRQ_STATUS);
> > +
> > +	if (irq_status & NWL_DSI_TX_FIFO_OVFLW)
> > +		DRM_DEV_ERROR_RATELIMITED(dsi->dev, "tx fifo overflow\n");
> > +
> > +	if (irq_status & NWL_DSI_HS_TX_TIMEOUT)
> > +		DRM_DEV_ERROR_RATELIMITED(dsi->dev, "HS tx timeout\n");
> > +
> > +	if (irq_status & NWL_DSI_TX_PKT_DONE ||
> > +	    irq_status & NWL_DSI_RX_PKT_HDR_RCVD ||
> > +	    irq_status & NWL_DSI_RX_PKT_PAYLOAD_DATA_RCVD)
> > +		nwl_dsi_finish_transmission(dsi, irq_status);
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +int nwl_dsi_enable(struct nwl_dsi *dsi)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +	union phy_configure_opts *phy_cfg =3D &dsi->phy_cfg;
> > +	int ret;
> > +
> > +	if (!dsi->lanes) {
> > +		DRM_DEV_ERROR(dev, "Need DSI lanes: %d\n", dsi->lanes);
> > +		return -EINVAL;
> > +	}
> > +
> > +	ret =3D phy_init(dsi->phy);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to init DSI phy: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	ret =3D phy_configure(dsi->phy, phy_cfg);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to configure DSI phy: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	ret =3D clk_prepare_enable(dsi->tx_esc_clk);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to enable tx_esc clk: %d\n",
> > +			      ret);
> > +		return ret;
> > +	}
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "Enabled tx_esc clk @%lu Hz\n",
> > +			     clk_get_rate(dsi->tx_esc_clk));
> > +
> > +	ret =3D nwl_dsi_config_host(dsi);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to set up DSI: %d", ret);
> > +		return ret;
> > +	}
> > +
> > +	ret =3D nwl_dsi_config_dpi(dsi);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to set up DPI: %d", ret);
> > +		return ret;
> > +	}
> > +
> > +	ret =3D phy_power_on(dsi->phy);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to power on DPHY (%d)\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	nwl_dsi_init_interrupts(dsi);
> > +
> > +	return 0;
> > +}
> > +
> > +int nwl_dsi_disable(struct nwl_dsi *dsi)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "Disabling clocks and phy\n");
> > +
> > +	phy_power_off(dsi->phy);
> > +	phy_exit(dsi->phy);
> > +
> > +	/* Disabling the clock before the phy breaks enabling dsi again */
> > +	clk_disable_unprepare(dsi->tx_esc_clk);
> > +
> > +	return 0;
> > +}
> > diff --git a/drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.h b/drivers/gpu/drm=
/bridge/nwl-dsi/nwl-dsi.h
> > new file mode 100644
> > index 000000000000..579b366de652
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/nwl-dsi/nwl-dsi.h
> > @@ -0,0 +1,112 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * NWL MIPI DSI host driver
> > + *
> > + * Copyright (C) 2017 NXP
> > + * Copyright (C) 2019 Purism SPC
> > + */
> > +#ifndef __NWL_DSI_H__
> > +#define __NWL_DSI_H__
> > +
> > +#include <linux/irqreturn.h>
> > +
> > +#include <drm/drm_mipi_dsi.h>
> > +
> > +#include "nwl-drv.h"
> > +
> > +/* DSI HOST registers */
> > +#define NWL_DSI_CFG_NUM_LANES			0x0
> > +#define NWL_DSI_CFG_NONCONTINUOUS_CLK		0x4
> > +#define NWL_DSI_CFG_T_PRE			0x8
> > +#define NWL_DSI_CFG_T_POST			0xc
> > +#define NWL_DSI_CFG_TX_GAP			0x10
> > +#define NWL_DSI_CFG_AUTOINSERT_EOTP		0x14
> > +#define NWL_DSI_CFG_EXTRA_CMDS_AFTER_EOTP	0x18
> > +#define NWL_DSI_CFG_HTX_TO_COUNT		0x1c
> > +#define NWL_DSI_CFG_LRX_H_TO_COUNT		0x20
> > +#define NWL_DSI_CFG_BTA_H_TO_COUNT		0x24
> > +#define NWL_DSI_CFG_TWAKEUP			0x28
> > +#define NWL_DSI_CFG_STATUS_OUT			0x2c
> > +#define NWL_DSI_RX_ERROR_STATUS			0x30
> > +
> > +/* DSI DPI registers */
> > +#define NWL_DSI_PIXEL_PAYLOAD_SIZE		0x200
> > +#define NWL_DSI_PIXEL_FIFO_SEND_LEVEL		0x204
> > +#define NWL_DSI_INTERFACE_COLOR_CODING		0x208
> > +#define NWL_DSI_PIXEL_FORMAT			0x20c
> > +#define NWL_DSI_VSYNC_POLARITY			0x210
> > +#define NWL_DSI_VSYNC_POLARITY_ACTIVE_LOW	0
> > +#define NWL_DSI_VSYNC_POLARITY_ACTIVE_HIGH	BIT(1)
> > +
> > +#define NWL_DSI_HSYNC_POLARITY			0x214
> > +#define NWL_DSI_HSYNC_POLARITY_ACTIVE_LOW	0
> > +#define NWL_DSI_HSYNC_POLARITY_ACTIVE_HIGH	BIT(1)
> > +
> > +#define NWL_DSI_VIDEO_MODE			0x218
> > +#define NWL_DSI_HFP				0x21c
> > +#define NWL_DSI_HBP				0x220
> > +#define NWL_DSI_HSA				0x224
> > +#define NWL_DSI_ENABLE_MULT_PKTS		0x228
> > +#define NWL_DSI_VBP				0x22c
> > +#define NWL_DSI_VFP				0x230
> > +#define NWL_DSI_BLLP_MODE			0x234
> > +#define NWL_DSI_USE_NULL_PKT_BLLP		0x238
> > +#define NWL_DSI_VACTIVE				0x23c
> > +#define NWL_DSI_VC				0x240
> > +
> > +/* DSI APB PKT control */
> > +#define NWL_DSI_TX_PAYLOAD			0x280
> > +#define NWL_DSI_PKT_CONTROL			0x284
> > +#define NWL_DSI_SEND_PACKET			0x288
> > +#define NWL_DSI_PKT_STATUS			0x28c
> > +#define NWL_DSI_PKT_FIFO_WR_LEVEL		0x290
> > +#define NWL_DSI_PKT_FIFO_RD_LEVEL		0x294
> > +#define NWL_DSI_RX_PAYLOAD			0x298
> > +#define NWL_DSI_RX_PKT_HEADER			0x29c
> > +
> > +/* DSI IRQ handling */
> > +#define NWL_DSI_IRQ_STATUS			0x2a0
> > +#define NWL_DSI_SM_NOT_IDLE			BIT(0)
> > +#define NWL_DSI_TX_PKT_DONE			BIT(1)
> > +#define NWL_DSI_DPHY_DIRECTION			BIT(2)
> > +#define NWL_DSI_TX_FIFO_OVFLW			BIT(3)
> > +#define NWL_DSI_TX_FIFO_UDFLW			BIT(4)
> > +#define NWL_DSI_RX_FIFO_OVFLW			BIT(5)
> > +#define NWL_DSI_RX_FIFO_UDFLW			BIT(6)
> > +#define NWL_DSI_RX_PKT_HDR_RCVD			BIT(7)
> > +#define NWL_DSI_RX_PKT_PAYLOAD_DATA_RCVD	BIT(8)
> > +#define NWL_DSI_BTA_TIMEOUT			BIT(29)
> > +#define NWL_DSI_LP_RX_TIMEOUT			BIT(30)
> > +#define NWL_DSI_HS_TX_TIMEOUT			BIT(31)
> > +
> > +#define NWL_DSI_IRQ_STATUS2			0x2a4
> > +#define NWL_DSI_SINGLE_BIT_ECC_ERR		BIT(0)
> > +#define NWL_DSI_MULTI_BIT_ECC_ERR		BIT(1)
> > +#define NWL_DSI_CRC_ERR				BIT(2)
> > +
> > +#define NWL_DSI_IRQ_MASK			0x2a8
> > +#define NWL_DSI_SM_NOT_IDLE_MASK		BIT(0)
> > +#define NWL_DSI_TX_PKT_DONE_MASK		BIT(1)
> > +#define NWL_DSI_DPHY_DIRECTION_MASK		BIT(2)
> > +#define NWL_DSI_TX_FIFO_OVFLW_MASK		BIT(3)
> > +#define NWL_DSI_TX_FIFO_UDFLW_MASK		BIT(4)
> > +#define NWL_DSI_RX_FIFO_OVFLW_MASK		BIT(5)
> > +#define NWL_DSI_RX_FIFO_UDFLW_MASK		BIT(6)
> > +#define NWL_DSI_RX_PKT_HDR_RCVD_MASK		BIT(7)
> > +#define NWL_DSI_RX_PKT_PAYLOAD_DATA_RCVD_MASK	BIT(8)
> > +#define NWL_DSI_BTA_TIMEOUT_MASK		BIT(29)
> > +#define NWL_DSI_LP_RX_TIMEOUT_MASK		BIT(30)
> > +#define NWL_DSI_HS_TX_TIMEOUT_MASK		BIT(31)
> > +
> > +#define NWL_DSI_IRQ_MASK2			0x2ac
> > +#define NWL_DSI_SINGLE_BIT_ECC_ERR_MASK		BIT(0)
> > +#define NWL_DSI_MULTI_BIT_ECC_ERR_MASK		BIT(1)
> > +#define NWL_DSI_CRC_ERR_MASK			BIT(2)
> > +
> > +extern const struct mipi_dsi_host_ops nwl_dsi_host_ops;
> > +
> > +irqreturn_t nwl_dsi_irq_handler(int irq, void *data);
> > +int nwl_dsi_enable(struct nwl_dsi *dsi);
> > +int nwl_dsi_disable(struct nwl_dsi *dsi);
> > +
> > +#endif /* __NWL_DSI_H__ */
> =

> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
