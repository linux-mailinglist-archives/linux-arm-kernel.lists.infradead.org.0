Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864B987FE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIcjWaNMl61a4Q1yZ5AMH137gq1Mi8PG2rJfvkqZiIs=; b=qz4m6WL4SuTKaf
	MICxJOFa1ERKGfsieZlknFGlamLA2bftqr0v5ZWhCL3Kb7A2zLbdJ/jGJnAxY8tEOJj0OYHM/up3Q
	DpOXL/WSR5dkBsEfSAsaHP/e5w27bvx+ccRDAGj43b0oEf98n0vK1RbqvAHFUM2es0SXzE1w3NDa9
	eCTr0d0VK93F6WLei77OAQnIDjSiT6xYZvTsQw2M7+mQupjs+IhvTNwr93ZreH2taJonT6M6GEhEi
	b6CN8i2cwK0QFah5h4xe3BqEnKGbSMpQU5770lfbcgyD7OK4+D9wl3bKP6Oi4xCxrbsuYi++GnW1T
	bSl8JgV4wvOSFU3NjtwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7iZ-0000T6-EB; Fri, 09 Aug 2019 16:26:15 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7hV-0007X1-Kh
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:25:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 841DAFB03;
 Fri,  9 Aug 2019 18:25:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z5pwYJG_1txG; Fri,  9 Aug 2019 18:25:00 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 4A41741D9E; Fri,  9 Aug 2019 18:25:00 +0200 (CEST)
Date: Fri, 9 Aug 2019 18:25:00 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 3/3] drm/bridge: Add NWL MIPI DSI host controller support
Message-ID: <20190809162500.GA3692@bogon.m.sigxcpu.org>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <3158f4f8c97c21f98c394e5631d74bc60d796522.1563983037.git.agx@sigxcpu.org>
 <20190727024700.GD4902@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190727024700.GD4902@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_092510_324913_1EE077CF 
X-CRM114-Status: GOOD (  35.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

thanks for the review! Most of it seemed clear how to fix for the rest
i've put some questions below:

On Sat, Jul 27, 2019 at 05:47:00AM +0300, Laurent Pinchart wrote:
> Hello Guido,
> =

> Thank you for the patch.
> =

> On Wed, Jul 24, 2019 at 05:52:26PM +0200, Guido G=FCnther wrote:
> > This adds initial support for the NWL MIPI DSI Host controller found on
> > i.MX8 SoCs.
> > =

> > It adds support for the i.MX8MQ but the same IP can be found on
> > e.g. the i.MX8QXP.
> > =

> > It has been tested on the Librem 5 devkit using mxsfb.
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > Co-developed-by: Robert Chiras <robert.chiras@nxp.com>
> > ---
> >  drivers/gpu/drm/bridge/Kconfig           |   2 +
> >  drivers/gpu/drm/bridge/Makefile          |   1 +
> >  drivers/gpu/drm/bridge/imx-nwl/Kconfig   |  15 +
> >  drivers/gpu/drm/bridge/imx-nwl/Makefile  |   2 +
> >  drivers/gpu/drm/bridge/imx-nwl/nwl-drv.c | 529 ++++++++++++++++
> >  drivers/gpu/drm/bridge/imx-nwl/nwl-drv.h |  72 +++
> >  drivers/gpu/drm/bridge/imx-nwl/nwl-dsi.c | 745 +++++++++++++++++++++++
> >  drivers/gpu/drm/bridge/imx-nwl/nwl-dsi.h | 111 ++++
> >  8 files changed, 1477 insertions(+)
> >  create mode 100644 drivers/gpu/drm/bridge/imx-nwl/Kconfig
> >  create mode 100644 drivers/gpu/drm/bridge/imx-nwl/Makefile
> >  create mode 100644 drivers/gpu/drm/bridge/imx-nwl/nwl-drv.c
> >  create mode 100644 drivers/gpu/drm/bridge/imx-nwl/nwl-drv.h
> >  create mode 100644 drivers/gpu/drm/bridge/imx-nwl/nwl-dsi.c
> >  create mode 100644 drivers/gpu/drm/bridge/imx-nwl/nwl-dsi.h
> > =

> > diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kc=
onfig
> > index a6eec908c43e..38c3145a7e57 100644
> > --- a/drivers/gpu/drm/bridge/Kconfig
> > +++ b/drivers/gpu/drm/bridge/Kconfig
> > @@ -152,6 +152,8 @@ source "drivers/gpu/drm/bridge/analogix/Kconfig"
> >  =

> >  source "drivers/gpu/drm/bridge/adv7511/Kconfig"
> >  =

> > +source "drivers/gpu/drm/bridge/imx-nwl/Kconfig"
> > +
> =

> As this doesn't seem to be an i.MX-specific IP, I wouldn't use the name
> imx in file names or in the code, at least in the parts that are not
> NXP-specific.

O.k. Since i've not seen other SoCs using this ip core I wasn't sure
what would be sharable but we'll figure that out. Renamed to nwl-dsi/

> >  source "drivers/gpu/drm/bridge/synopsys/Kconfig"
> >  =

> >  endmenu
> > diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/M=
akefile
> > index 4934fcf5a6f8..904a9eb3a20a 100644
> > --- a/drivers/gpu/drm/bridge/Makefile
> > +++ b/drivers/gpu/drm/bridge/Makefile
> > @@ -16,4 +16,5 @@ obj-$(CONFIG_DRM_ANALOGIX_DP) +=3D analogix/
> >  obj-$(CONFIG_DRM_I2C_ADV7511) +=3D adv7511/
> >  obj-$(CONFIG_DRM_TI_SN65DSI86) +=3D ti-sn65dsi86.o
> >  obj-$(CONFIG_DRM_TI_TFP410) +=3D ti-tfp410.o
> > +obj-y +=3D imx-nwl/
> >  obj-y +=3D synopsys/
> > diff --git a/drivers/gpu/drm/bridge/imx-nwl/Kconfig b/drivers/gpu/drm/b=
ridge/imx-nwl/Kconfig
> > new file mode 100644
> > index 000000000000..822dba1b380a
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/imx-nwl/Kconfig
> > @@ -0,0 +1,15 @@
> > +config DRM_IMX_NWL_DSI
> > +	tristate "Support for Northwest Logic MIPI DSI Host controller"
> > +	depends on DRM && (ARCH_MXC || ARCH_MULTIPLATFORM || COMPILE_TEST)
> > +	depends on COMMON_CLK
> > +	depends on OF && HAS_IOMEM
> > +	select DRM_KMS_HELPER
> > +	select DRM_MIPI_DSI
> > +	select DRM_PANEL_BRIDGE
> > +	select GENERIC_PHY_MIPI_DPHY
> > +	select MFD_SYSCON
> > +	select REGMAP_MMIO
> > +	help
> > +	  This enables the Northwest Logic MIPI DSI Host controller as
> > +	  found on NXP's i.MX8 Processors.
> > +
> > diff --git a/drivers/gpu/drm/bridge/imx-nwl/Makefile b/drivers/gpu/drm/=
bridge/imx-nwl/Makefile
> > new file mode 100644
> > index 000000000000..9fa63483da5b
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/imx-nwl/Makefile
> > @@ -0,0 +1,2 @@
> > +imx-nwl-objs :=3D nwl-drv.o nwl-dsi.o
> > +obj-$(CONFIG_DRM_IMX_NWL_DSI) +=3D imx-nwl.o
> > diff --git a/drivers/gpu/drm/bridge/imx-nwl/nwl-drv.c b/drivers/gpu/drm=
/bridge/imx-nwl/nwl-drv.c
> > new file mode 100644
> > index 000000000000..451f8f067c6f
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/imx-nwl/nwl-drv.c
> > @@ -0,0 +1,529 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * i.MX8 NWL MIPI DSI host driver
> > + *
> > + * Copyright (C) 2017 NXP
> > + * Copyright (C) 2019 Purism SPC
> > + */
> > +
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_panel.h>
> > +#include <drm/drm_print.h>
> > +#include <drm/drm_probe_helper.h>
> > +#include <linux/clk-provider.h>
> =

> This doesn't seem to be needed.

Dropped.

> =

> > +#include <linux/clk.h>
> > +#include <linux/component.h>
> =

> Same here.

Dropped (it was a component driver before).

> > +#include <linux/gpio/consumer.h>
> > +#include <linux/irq.h>
> > +#include <linux/mfd/syscon.h>
> > +#include <linux/mfd/syscon/imx8mq-iomuxc-gpr.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/regmap.h>
> > +#include <linux/sys_soc.h>
> > +#include <video/videomode.h>
> > +
> > +#include "nwl-drv.h"
> > +#include "nwl-dsi.h"
> > +
> > +#define DRV_NAME "imx-nwl-dsi"
> > +
> > +/* 8MQ SRC specific registers */
> > +#define SRC_MIPIPHY_RCR	0x28
> > +#define RESET_BYTE_N	BIT(1)
> > +#define RESET_N		BIT(2)
> > +#define DPI_RESET_N	BIT(3)
> > +#define ESC_RESET_N	BIT(4)
> > +#define PCLK_RESET_N	BIT(5)
> > +
> > +/* Possible clocks */
> > +#define CLK_PIXEL	"pixel"
> > +#define CLK_CORE	"core"
> > +#define CLK_BYPASS	"bypass"
> > +
> > +enum imx_ext_regs {
> > +	IMX_REG_CSR =3D BIT(1),
> > +	IMX_REG_SRC =3D BIT(2),
> > +	IMX_REG_GPR =3D BIT(3),
> > +};
> > +
> > +static const struct regmap_config nwl_dsi_regmap_config =3D {
> > +	.reg_bits =3D 16,
> > +	.val_bits =3D 32,
> > +	.reg_stride =3D 4,
> > +	.max_register =3D IRQ_MASK2,
> > +	.name =3D DRV_NAME,
> > +};
> > +
> > +struct imx_nwl_platform_data {
> > +	int (*poweron)(struct imx_nwl_dsi *dsi);
> > +	int (*poweroff)(struct imx_nwl_dsi *dsi);
> > +	u32 ext_regs; /* required external registers */
> > +	struct imx_nwl_clk_config clk_config[NWL_MAX_PLATFORM_CLOCKS];
> > +};
> > +
> > +static inline struct imx_nwl_dsi *bridge_to_dsi(struct drm_bridge *bri=
dge)
> > +{
> > +	return container_of(bridge, struct imx_nwl_dsi, bridge);
> > +}
> > +
> > +static void imx_nwl_dsi_set_clocks(struct imx_nwl_dsi *dsi, bool enabl=
e)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +	const char *id;
> > +	struct clk *clk;
> > +	unsigned long new_rate, cur_rate;
> > +	bool enabled;
> > +	size_t i;
> > +	int ret;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "%sabling platform clocks",
> > +			     enable ? "en" : "dis");
> > +	for (i =3D 0; i < ARRAY_SIZE(dsi->pdata->clk_config); i++) {
> > +		if (!dsi->clk_config[i].present)
> > +			continue;
> > +		id =3D dsi->clk_config[i].id;
> > +		clk =3D dsi->clk_config[i].clk;
> > +		new_rate =3D dsi->clk_config[i].rate;
> > +		cur_rate =3D clk_get_rate(clk);
> > +		enabled =3D dsi->clk_config[i].enabled;
> > +
> > +		/* BYPASS clk must have the same rate as PHY_REF clk */
> > +		if (!strcmp(id, CLK_BYPASS))
> > +			new_rate =3D clk_get_rate(dsi->phy_ref_clk);
> > +
> > +		if (enable) {
> > +			if (enabled && new_rate !=3D cur_rate)
> > +				clk_disable_unprepare(clk);
> > +			else if (enabled && new_rate =3D=3D cur_rate)
> > +				continue;
> > +			if (new_rate > 0)
> > +				clk_set_rate(clk, new_rate);
> > +			ret =3D clk_prepare_enable(clk);
> > +			if (ret < 0) {
> > +				DRM_DEV_ERROR(dev, "Failed to enable clock %s",
> > +					      id);
> > +			}
> > +			dsi->clk_config[i].enabled =3D true;
> > +			cur_rate =3D clk_get_rate(clk);
> > +			DRM_DEV_DEBUG_DRIVER(
> > +				dev, "Enabled %s clk (rate: req=3D%lu act=3D%lu)\n",
> > +				id, new_rate, cur_rate);
> > +		} else if (enabled) {
> > +			clk_disable_unprepare(clk);
> > +			dsi->clk_config[i].enabled =3D false;
> > +			DRM_DEV_DEBUG_DRIVER(dev, "Disabled %s clk\n", id);
> > +		}
> > +	}
> > +}
> > +
> > +static void imx_nwl_dsi_enable(struct imx_nwl_dsi *dsi)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +	int ret;
> > +
> > +	imx_nwl_dsi_set_clocks(dsi, true);
> > +
> > +	ret =3D dsi->pdata->poweron(dsi);
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dev, "Failed to power on DSI (%d)\n", ret);
> > +}
> > +
> > +static void imx_nwl_dsi_disable(struct imx_nwl_dsi *dsi)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +
> > +	if (dsi->dpms_mode !=3D DRM_MODE_DPMS_ON)
> > +		return;
> > +
> =

> The DRM core should guarantee that the bridge won't be disabled twice,
> so I don't think you need this check. Similarly I think the enabled flag
> in the imx_nwl_clk_config structure can be removed.
  =

Dropped and i also simplified the imx_nwl_clk_config - rates are supplied
via DT here anyway. =


> =

> > +	DRM_DEV_DEBUG_DRIVER(dev, "Disabling encoder");
> =

> Is this really needed ?

Dropped.

> > +	dsi->pdata->poweroff(dsi);
> > +	imx_nwl_dsi_set_clocks(dsi, false);
> > +}
> > +
> > +static void imx_nwl_select_input_source(struct imx_nwl_dsi *dsi)
> > +{
> > +	struct device_node *remote;
> > +	u32 mux_val =3D IMX8MQ_GPR13_MIPI_MUX_SEL;
> > +
> > +	remote =3D of_graph_get_remote_node(dsi->dev->of_node, 0, 0);
> > +	if (strcmp(remote->name, "lcdif") =3D=3D 0)
> > +		mux_val =3D 0;
> > +

Getting it from dt spares us carrying around more platform specific
state. Should i change it anyway?

> =

> Can't you check the remote node at probe time instead of every time the
> bridge gets enabled, and program the IO mux accordingly there ?
> =

> This code is i.MX-specific, so it should be isolated in an operation in
> struct imx_nwl_platform_data.

Done.

> =

> > +	DRM_DEV_INFO(dsi->dev, "Using %s as input source\n",
> > +		     (mux_val) ? "DCSS" : "LCDIF");
> > +	regmap_update_bits(dsi->mux_sel, IOMUXC_GPR13,
> > +			   IMX8MQ_GPR13_MIPI_MUX_SEL, mux_val);
> > +	of_node_put(remote);
> > +}
> > +
> > +static void imx_nwl_dsi_bridge_disable(struct drm_bridge *bridge)
> > +{
> > +	struct imx_nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +
> > +	if (dsi->dpms_mode !=3D DRM_MODE_DPMS_ON)
> > +		return;
> > +
> > +	nwl_dsi_disable(dsi);
> > +	imx_nwl_dsi_disable(dsi);
> > +	pm_runtime_put_sync(dsi->dev);
> =

> Do you need a put_sync, wouldn't a put do ?

Switched to put() only.

> =

> > +	dsi->dpms_mode =3D DRM_MODE_DPMS_OFF;
> > +}
> > +
> > +static bool
> > +imx_nwl_dsi_bridge_mode_fixup(struct drm_bridge *bridge,
> > +			      const struct drm_display_mode *mode,
> > +			      struct drm_display_mode *adjusted_mode)
> > +{
> > +	struct imx_nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +	struct device *dev =3D dsi->dev;
> > +	union phy_configure_opts new_cfg;
> > +	unsigned long phy_ref_rate;
> > +	int ret;
> > +
> > +	ret =3D nwl_dsi_get_dphy_params(dsi, adjusted_mode, &new_cfg);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	/*
> > +	 * If hs clock is unchanged, we're all good - all parameters are
> > +	 * derived from it atm.
> > +	 */
> > +	if (new_cfg.mipi_dphy.hs_clk_rate =3D=3D dsi->phy_cfg.mipi_dphy.hs_cl=
k_rate)
> > +		return true;
> > +
> > +	phy_ref_rate =3D clk_get_rate(dsi->phy_ref_clk);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "PHY at ref rate: %lu\n", phy_ref_rate);
> > +	if (ret < 0) {
> =

> This can't happen. Or are you missing a function call before the check
> ?

The code used that a long time ago, fixed that path.

> =

> > +		DRM_DEV_ERROR(dsi->dev,
> > +			      "Cannot setup PHY for mode: %ux%u @%d Hz\n",
> > +			      adjusted_mode->hdisplay, adjusted_mode->vdisplay,
> > +			      adjusted_mode->clock);
> > +		DRM_DEV_ERROR(dsi->dev, "PHY ref clk: %lu, bit clk: %lu\n",
> > +			      phy_ref_rate, new_cfg.mipi_dphy.hs_clk_rate);
> > +	} else {
> > +		/* Save the new desired phy config */
> > +		memcpy(&dsi->phy_cfg, &new_cfg, sizeof(new_cfg));
> =

> The mode_fixup operation shall not change the device state, it can be
> called multiple times when trying modes.

Moved the parts to 'mode_set' instead.

> =

> > +	}
> > +
> > +	/* LCDIF + NWL needs active high sync */
> > +	adjusted_mode->flags |=3D (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYN=
C);
> > +	adjusted_mode->flags &=3D ~(DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSY=
NC);
> > +
> > +	drm_display_mode_to_videomode(adjusted_mode, &dsi->vm);
> > +	drm_mode_debug_printmodeline(adjusted_mode);
> > +
> > +	return ret =3D=3D 0;
> =

> 	return 0;

mode_fixup wants a bool but that code is gone anyways.

> =

> > +}
> > +
> > +static enum drm_mode_status
> > +imx_nwl_dsi_bridge_mode_valid(struct drm_bridge *bridge,
> > +			      const struct drm_display_mode *mode)
> > +{
> > +	struct imx_nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +	int bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->format);
> > +
> > +	if (bpp < 0) {
> > +		DRM_DEV_ERROR(dsi->dev, "Invalid pixel format: %d\n",
> > +			      dsi->format);
> > +		return MODE_BAD;
> > +	}
> =

> The format isn't part of the mode, so this doesn't belong here. You
> should here instead check that the mode clock and other timing data
> (especially the visible resolution) are within the range supported by
> the device.

O.k. I've added a clock check derived from the spec instead.

> > +
> > +	return MODE_OK;
> > +}
> > +
> > +static void imx_nwl_dsi_bridge_pre_enable(struct drm_bridge *bridge)
> > +{
> > +	struct imx_nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +
> > +	if (dsi->dpms_mode =3D=3D DRM_MODE_DPMS_ON)
> > +		return;
> > +
> > +	imx_nwl_select_input_source(dsi);
> > +	pm_runtime_get_sync(dsi->dev);
> > +	imx_nwl_dsi_enable(dsi);
> > +	nwl_dsi_enable(dsi);
> > +	dsi->dpms_mode =3D DRM_MODE_DPMS_ON;
> > +}
> > +
> > +static int imx_nwl_dsi_bridge_attach(struct drm_bridge *bridge)
> > +{
> > +	struct imx_nwl_dsi *dsi =3D bridge->driver_private;
> > +	struct drm_encoder *encoder =3D bridge->encoder;
> > +
> > +	if (!encoder) {
> > +		DRM_DEV_ERROR(dsi->dev, "Parent encoder object not found\n");
> > +		return -ENODEV;
> > +	}
> =

> Can't this happen ?

Dropped.

> =

> > +
> > +	/* Set the encoder type as caller does not know it */
> > +	bridge->encoder->encoder_type =3D DRM_MODE_ENCODER_DSI;
> =

> The encoder type is quite meaningless and userspace should not depend on
> it, so I wouldn't set it here, especially that the encoder may not
> expect the bridge to override its type.

Dropped.

> =

> > +
> > +	/* Attach the panel-bridge to the dsi bridge */
> > +	return drm_bridge_attach(bridge->encoder, dsi->panel_bridge, bridge);
> > +}
> > +
> > +static void imx_nwl_dsi_bridge_detach(struct drm_bridge *bridge)
> > +{
> > +	struct imx_nwl_dsi *dsi =3D bridge->driver_private;
> > +
> > +	drm_of_panel_bridge_remove(dsi->dev->of_node, 1, 0);
> =

> This is already done in nwl_dsi_host_detach().

Dropped the whole detach.

> =

> > +}
> > +
> > +/* see dw-mipi-dsi.c */
> =

> What for ? :-)

Dropped.

> =

> > +static const struct drm_bridge_funcs imx_nwl_dsi_bridge_funcs =3D {
> > +	.pre_enable	=3D imx_nwl_dsi_bridge_pre_enable,
> > +	.disable    =3D imx_nwl_dsi_bridge_disable,
> > +	.mode_fixup =3D imx_nwl_dsi_bridge_mode_fixup,
> > +	.mode_valid =3D imx_nwl_dsi_bridge_mode_valid,
> > +	.attach	    =3D imx_nwl_dsi_bridge_attach,
> > +	.detach	    =3D imx_nwl_dsi_bridge_detach,
> > +};
> > +
> > +static int imx_nwl_dsi_parse_dt(struct imx_nwl_dsi *dsi)
> > +{
> > +	struct device_node *np =3D dsi->dev->of_node;
> > +	struct platform_device *pdev =3D to_platform_device(dsi->dev);
> > +	struct resource *res;
> > +	struct clk *clk;
> > +	const char *clk_id;
> > +	void __iomem *base;
> > +	int i, ret;
> > +
> > +	dsi->phy =3D devm_phy_get(dsi->dev, "dphy");
> > +	if (IS_ERR(dsi->phy)) {
> > +		ret =3D PTR_ERR(dsi->phy);
> > +		dev_err(dsi->dev, "Could not get PHY (%d)\n", ret);
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
> > +			dev_err(dsi->dev, "Failed to get %s clock (%d)\n",
> > +				clk_id, ret);
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
> > +		dev_err(dsi->dev, "Failed to get phy_ref clock: %d\n", ret);
> > +		return ret;
> > +	}
> > +	dsi->phy_ref_clk =3D clk;
> > +
> > +	clk =3D devm_clk_get(dsi->dev, "rx_esc");
> > +	if (IS_ERR(clk)) {
> > +		ret =3D PTR_ERR(clk);
> > +		dev_err(dsi->dev, "Failed to get rx_esc clock: %d\n", ret);
> > +		return ret;
> > +	}
> > +	dsi->rx_esc_clk =3D clk;
> > +
> > +	clk =3D devm_clk_get(dsi->dev, "tx_esc");
> > +	if (IS_ERR(clk)) {
> > +		ret =3D PTR_ERR(clk);
> > +		dev_err(dsi->dev, "Failed to get tx_esc clock: %d\n", ret);
> > +		return ret;
> > +	}
> > +	dsi->tx_esc_clk =3D clk;
> > +
> > +	dsi->csr =3D syscon_regmap_lookup_by_phandle(np, "csr");
> > +	if (IS_ERR(dsi->csr) && dsi->pdata->ext_regs & IMX_REG_CSR) {
> > +		ret =3D PTR_ERR(dsi->csr);
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to get CSR regmap: %d\n",
> > +			      ret);
> > +		return ret;
> > +	}
> =

> This doesn't seem to be used anywhere.

That's true. i had it in for the imx8q*, dropped that (and some other
parts) until support for that soc is added.

> =

> > +	dsi->reset =3D syscon_regmap_lookup_by_phandle(np, "src");
> > +	if (IS_ERR(dsi->reset) && (dsi->pdata->ext_regs & IMX_REG_SRC)) {
> > +		ret =3D PTR_ERR(dsi->reset);
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to get SRC regmap: %d\n",
> > +			      ret);
> > +		return ret;
> > +	}
> =

> Couldn't you model a reset controller in that syscon, and use the reset
> controller API here ? It would allow moving the i.MX-specific power on
> and off functions from this driver, making it more generic.

In fact the reset controller is already there, wired it up accordingly.

> =

> > +	dsi->mux_sel =3D syscon_regmap_lookup_by_phandle(np, "mux-sel");
> > +	if (IS_ERR(dsi->mux_sel) && (dsi->pdata->ext_regs & IMX_REG_GPR)) {
> > +		ret =3D PTR_ERR(dsi->mux_sel);
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to get GPR regmap: %d\n",
> > +			      ret);
> > +		return ret;
> > +	}
> > +
> > +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	base =3D devm_ioremap_resource(dsi->dev, res);
> =

> You can replace those two calls with devm_platform_ioremap_resource().

Done.

> =

> > +	if (IS_ERR(base))
> > +		return PTR_ERR(base);
> > +
> > +	dsi->regmap =3D
> > +		devm_regmap_init_mmio(dsi->dev, base, &nwl_dsi_regmap_config);
> > +	if (IS_ERR(dsi->regmap)) {
> > +		ret =3D PTR_ERR(dsi->regmap);
> > +		DRM_DEV_ERROR(dsi->dev,
> > +			      "Failed to create NWL DSI regmap: %d\n", ret);
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
> > +	return 0;
> > +}
> > +
> > +static int imx8mq_dsi_poweron(struct imx_nwl_dsi *dsi)
> > +{
> > +	/* otherwise the display stays blank */
> > +	usleep_range(200, 300);
> > +
> > +	regmap_update_bits(dsi->reset, SRC_MIPIPHY_RCR, PCLK_RESET_N,
> > +			   PCLK_RESET_N);
> > +	regmap_update_bits(dsi->reset, SRC_MIPIPHY_RCR, ESC_RESET_N,
> > +			   ESC_RESET_N);
> > +	regmap_update_bits(dsi->reset, SRC_MIPIPHY_RCR, RESET_BYTE_N,
> > +			   RESET_BYTE_N);
> > +	regmap_update_bits(dsi->reset, SRC_MIPIPHY_RCR, DPI_RESET_N,
> > +			   DPI_RESET_N);
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx8mq_dsi_poweroff(struct imx_nwl_dsi *dsi)
> > +{
> > +	if (USE_SRC_RESET_QUIRK(dsi->quirks))
> > +		return 0;
> > +
> > +	regmap_update_bits(dsi->reset, SRC_MIPIPHY_RCR, PCLK_RESET_N, 0);
> > +	regmap_update_bits(dsi->reset, SRC_MIPIPHY_RCR, ESC_RESET_N, 0);
> > +	regmap_update_bits(dsi->reset, SRC_MIPIPHY_RCR, RESET_BYTE_N, 0);
> > +	regmap_update_bits(dsi->reset, SRC_MIPIPHY_RCR, DPI_RESET_N, 0);
> > +	return 0;
> > +}
> > +
> > +static const struct drm_bridge_timings imx_nwl_timings =3D {
> > +	.input_bus_flags =3D DRM_BUS_FLAG_DE_LOW,
> > +};
> > +
> > +static struct imx_nwl_platform_data imx8mq_dev =3D {
> =

> This structure should be const, especially as it contains function
> pointers.

Done.

> =

> > +	.poweron =3D &imx8mq_dsi_poweron,
> > +	.poweroff =3D &imx8mq_dsi_poweroff,
> > +	.clk_config =3D {
> > +		{ .id =3D CLK_CORE,   .present =3D true },
> > +		{ .id =3D CLK_PIXEL,  .present =3D false },
> > +		{ .id =3D CLK_BYPASS, .present =3D false },
> > +	},
> > +	.ext_regs =3D IMX_REG_SRC | IMX_REG_GPR,
> > +};
> > +
> > +static const struct of_device_id imx_nwl_dsi_dt_ids[] =3D {
> > +	{ .compatible =3D "fsl,imx8mq-nwl-dsi", .data =3D &imx8mq_dev, },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, imx_nwl_dsi_dt_ids);
> > +
> > +static const struct soc_device_attribute imx_nwl_quirks_match[] =3D {
> > +	{ .soc_id =3D "i.MX8MQ", .revision =3D "2.0",
> > +	  .data =3D (void *)(E11418_HS_MODE_QUIRK | SRC_RESET_QUIRK) },
> > +	{ /* sentinel. */ },
> > +};
> > +
> > +static int imx_nwl_dsi_probe(struct platform_device *pdev)
> > +{
> > +	struct device *dev =3D &pdev->dev;
> > +	const struct of_device_id *of_id =3D
> > +		of_match_device(imx_nwl_dsi_dt_ids, dev);
> > +	const struct imx_nwl_platform_data *pdata =3D of_id->data;
> > +	const struct soc_device_attribute *attr;
> > +	struct imx_nwl_dsi *dsi;
> > +	int ret;
> > +
> > +	dsi =3D devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
> > +	if (!dsi)
> > +		return -ENOMEM;
> > +
> > +	dsi->dev =3D dev;
> > +	dsi->pdata =3D pdata;
> > +	dsi->dpms_mode =3D DRM_MODE_DPMS_OFF;
> =

> DPMS is legacy, let's not use it within the driver.

Removed that since the drm layer keeps the state for us.

> > +
> > +	ret =3D imx_nwl_dsi_parse_dt(dsi);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret =3D devm_request_irq(dev, dsi->irq, nwl_dsi_irq_handler, 0,
> > +			       dev_name(dev), dsi);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to request IRQ: %d (%d)\n", dsi->irq,
> > +			      ret);
> > +		return ret;
> > +	}
> > +
> > +	dsi->dsi_host.ops =3D &nwl_dsi_host_ops;
> > +	dsi->dsi_host.dev =3D dev;
> > +	ret =3D mipi_dsi_host_register(&dsi->dsi_host);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(dev, "Failed to register MIPI host: %d\n", ret);
> > +		goto err_cleanup;
> > +	}
> > +
> > +	attr =3D soc_device_match(imx_nwl_quirks_match);
> > +	if (attr)
> > +		dsi->quirks =3D (uintptr_t)attr->data;
> > +
> > +	dsi->bridge.driver_private =3D dsi;
> > +	dsi->bridge.funcs =3D &imx_nwl_dsi_bridge_funcs;
> > +	dsi->bridge.of_node =3D dev->of_node;
> > +	dsi->bridge.timings =3D &imx_nwl_timings;
> > +
> > +	drm_bridge_add(&dsi->bridge);
> > +
> > +	dev_set_drvdata(dev, dsi);
> > +	pm_runtime_enable(dev);
> > +	return 0;
> > +
> > +err_cleanup:
> > +	devm_free_irq(dev, dsi->irq, dsi);
> > +	return ret;
> > +}
> > +
> > +static int imx_nwl_dsi_remove(struct platform_device *pdev)
> > +{
> > +	pm_runtime_disable(&pdev->dev);
> =

> You should call drm_bridge_remove() here, not in
> nwl_dsi_host_detach().

I opted to call `mipi_dsi_host_unregister(&dsi->dsi_host)` which would
keep the removal in `nwl_dsi_host_detach()` but would also make sure
it's called on removal (modelled like cdns-dsi).

> =

> > +	return 0;
> > +}
> > +
> > +static struct platform_driver imx_nwl_dsi_driver =3D {
> > +	.probe		=3D imx_nwl_dsi_probe,
> > +	.remove		=3D imx_nwl_dsi_remove,
> > +	.driver		=3D {
> > +		.of_match_table =3D imx_nwl_dsi_dt_ids,
> > +		.name	=3D DRV_NAME,
> > +	},
> > +};
> > +
> > +module_platform_driver(imx_nwl_dsi_driver);
> > +
> > +MODULE_AUTHOR("NXP Semiconductor");
> > +MODULE_AUTHOR("Purism SPC");
> > +MODULE_DESCRIPTION("i.MX8 Northwest Logic MIPI-DSI driver");
> > +MODULE_LICENSE("GPL"); /* GPLv2 or later */
> > diff --git a/drivers/gpu/drm/bridge/imx-nwl/nwl-drv.h b/drivers/gpu/drm=
/bridge/imx-nwl/nwl-drv.h
> > new file mode 100644
> > index 000000000000..a1e30c58b627
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/imx-nwl/nwl-drv.h
> > @@ -0,0 +1,72 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * i.MX8 NWL MIPI DSI host driver
> > + *
> > + * Copyright (C) 2017 NXP
> > + * Copyright (C) 2019 Purism SPC
> > + */
> > +
> > +#ifndef __NWL_DRV_H__
> > +#define __NWL_DRV_H__
> > +
> > +#include <drm/drm_mipi_dsi.h>
> > +#include <linux/phy/phy.h>
> > +
> > +struct imx_nwl_platform_data;
> > +
> > +/* i.MX8 NWL quirks */
> > +/* i.MX8MQ errata E11418 */
> > +#define E11418_HS_MODE_QUIRK	    BIT(0)
> > +#define USE_E11418_HS_MODE_QUIRK(x) ((x) & E11418_HS_MODE_QUIRK)
> > +
> > +/* Skip DSI bits in SRC on disable to avoid blank display on enable */
> > +#define SRC_RESET_QUIRK		    BIT(1)
> > +#define USE_SRC_RESET_QUIRK(x)	    ((x) & SRC_RESET_QUIRK)
> =

> The USE_* macros are not shorter to type, so I would type out the &
> check explicitly.

Dropped.

> > +
> > +#define NWL_MAX_PLATFORM_CLOCKS 3
> > +struct imx_nwl_clk_config {
> > +	const char *id;
> > +	struct clk *clk;
> > +	bool present;
> > +	bool enabled;
> > +	u32 rate;
> > +};
> > +
> > +struct imx_nwl_dsi {
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
> > +
> > +	/* External registers */
> > +	struct regmap *csr;
> > +	struct regmap *mux_sel;
> > +	struct regmap *reset;
> > +
> > +	/* Platform dependent clocks */
> > +	struct imx_nwl_clk_config clk_config[3];
> =

> I would use NWL_MAX_PLATFORM_CLOCKS instead of 3 as
> imx_nwl_platform_data uses the macro.

That was an omission, fixed.

> =

> > +	/* DSI clocks */
> > +	struct clk *phy_ref_clk;
> > +	struct clk *rx_esc_clk;
> > +	struct clk *tx_esc_clk;
> > +
> > +	/* dsi lanes */
> > +	u32 lanes;
> > +	enum mipi_dsi_pixel_format format;
> > +	struct videomode vm;
> > +	unsigned long dsi_mode_flags;
> > +
> > +	int dpms_mode;
> > +
> > +	struct mipi_dsi_transfer *xfer;
> > +
> > +	const struct imx_nwl_platform_data *pdata;
> > +};
> > +
> > +#endif /* __NWL_DRV_H__ */
> > diff --git a/drivers/gpu/drm/bridge/imx-nwl/nwl-dsi.c b/drivers/gpu/drm=
/bridge/imx-nwl/nwl-dsi.c
> > new file mode 100644
> > index 000000000000..0e1463af162f
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/imx-nwl/nwl-dsi.c
> > @@ -0,0 +1,745 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * NWL DSI host driver
> > + *
> > + * Copyright (C) 2017 NXP
> > + * Copyright (C) 2019 Purism SPC
> > + */
> > +
> > +#include <asm/unaligned.h>
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_crtc_helper.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_panel.h>
> > +#include <drm/drm_print.h>
> > +#include <linux/clk.h>
> > +#include <linux/irq.h>
> > +#include <linux/regmap.h>
> > +#include <video/mipi_display.h>
> > +#include <video/videomode.h>
> > +
> > +#include "nwl-drv.h"
> > +#include "nwl-dsi.h"
> > +
> > +#define MIPI_FIFO_TIMEOUT msecs_to_jiffies(500)
> > +
> > +/* PKT reg bit manipulation */
> > +#define REG_MASK(e, s) (((1 << ((e) - (s) + 1)) - 1) << (s))
> > +#define REG_PUT(x, e, s) (((x) << (s)) & REG_MASK(e, s))
> > +#define REG_GET(x, e, s) (((x) & REG_MASK(e, s)) >> (s))
> =

> Let's not reinvent the wheel, linux/bits.h and linux/bitfield.h can be
> used instead.

Done.

> =

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
> > +#define WC(x)		REG_PUT((x), 15,  0)
> > +#define TX_VC(x)	REG_PUT((x), 17, 16)
> > +#define TX_DT(x)	REG_PUT((x), 23, 18)
> > +#define HS_SEL(x)	REG_PUT((x), 24, 24)
> > +#define BTA_TX(x)	REG_PUT((x), 25, 25)
> > +#define BTA_NO_TX(x)	REG_PUT((x), 26, 26)
> > +
> > +/*
> > + * RX_PKT_HEADER format:
> > + * [15: 0] - word count
> > + * [21:16] - data type
> > + * [23:22] - virtual channel
> > + */
> > +#define RX_DT(x) REG_GET((x), 21, 16)
> > +#define RX_VC(x) REG_GET((x), 23, 22)
> > +
> > +/*
> > + * DSI Video mode
> > + */
> > +#define VIDEO_MODE_BURST_MODE_WITH_SYNC_PULSES		0
> > +#define VIDEO_MODE_NON_BURST_MODE_WITH_SYNC_EVENTS	BIT(0)
> > +#define VIDEO_MODE_BURST_MODE				BIT(1)
> > +
> > +/*
> > + * DPI color coding
> > + */
> > +#define DPI_16_BIT_565_PACKED	0
> > +#define DPI_16_BIT_565_ALIGNED	1
> > +#define DPI_16_BIT_565_SHIFTED	2
> > +#define DPI_18_BIT_PACKED	3
> > +#define DPI_18_BIT_ALIGNED	4
> > +#define DPI_24_BIT		5
> > +
> > +/*
> > + * DPI Pixel format
> > + */
> > +#define PIXEL_FORMAT_16  0
> > +#define PIXEL_FORMAT_18  BIT(0)
> > +#define PIXEL_FORMAT_18L BIT(1)
> > +#define PIXEL_FORMAT_24  (BIT(0) | BIT(1))
> > +
> > +enum transfer_direction { DSI_PACKET_SEND, DSI_PACKET_RECEIVE };
> =

> Line breaks please.

Done.

> =

> > +
> > +struct mipi_dsi_transfer {
> =

> Let's not use such a generic name for a driver-specific structure. You
> should name is nwl_dsi_transfer.

Fixed.

> =

> > +	const struct mipi_dsi_msg *msg;
> > +	struct mipi_dsi_packet packet;
> > +	struct completion completed;
> > +
> > +	int status; /* status of transmission */
> > +	enum transfer_direction direction;
> > +	bool need_bta;
> > +	u8 cmd;
> > +	u16 rx_word_count;
> > +	size_t tx_len; /* bytes sent */
> > +	size_t rx_len; /* bytes received */
> > +};
> > +
> > +static inline int nwl_dsi_write(struct imx_nwl_dsi *dsi, unsigned int =
reg,
> > +				u32 val)
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
> > +static inline u32 nwl_dsi_read(struct imx_nwl_dsi *dsi, u32 reg)
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
> =

> You're loosing the error...

Looking at other drivers they often just ignore the return value of
regmap_read. The places we use this can't do much to recover from errors
so i figured it'd be best to at least log it so it becomes debuggable
instead of just dropping it to the floor.

> > +}
> > +
> > +static u32 nwl_dsi_get_dpi_pixel_format(enum mipi_dsi_pixel_format for=
mat)
> > +{
> > +	switch (format) {
> > +	case MIPI_DSI_FMT_RGB565:
> > +		return PIXEL_FORMAT_16;
> > +	case MIPI_DSI_FMT_RGB666:
> > +		return PIXEL_FORMAT_18L;
> > +	case MIPI_DSI_FMT_RGB666_PACKED:
> > +		return PIXEL_FORMAT_18;
> > +	case MIPI_DSI_FMT_RGB888:
> > +		return PIXEL_FORMAT_24;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +}
> > +
> > +int nwl_dsi_get_dphy_params(struct imx_nwl_dsi *dsi,
> > +			    const struct drm_display_mode *mode,
> > +			    union phy_configure_opts *phy_opts)
> > +{
> > +	unsigned long rate;
> > +
> > +	if (dsi->lanes < 1 || dsi->lanes > 4)
> > +		return -EINVAL;
> > +
> > +	/*
> > +	 * So far the DPHY spec minimal timings work for both mixel
> > +	 * dphy and nwl dsi host
> > +	 */
> > +	phy_mipi_dphy_get_default_config(
> > +		mode->crtc_clock * 1000,
> > +		mipi_dsi_pixel_format_to_bpp(dsi->format), dsi->lanes,
> > +		&phy_opts->mipi_dphy);
> > +	rate =3D clk_get_rate(dsi->tx_esc_clk);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "LP clk is @%lu Hz\n", rate);
> > +	phy_opts->mipi_dphy.lp_clk_rate =3D rate;
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(nwl_dsi_get_dphy_params);
> =

> No need to export symbols, those fubctions are only meant to be called
> from within the same module.

Removed (also left overs when i had these in two modules).

> =

> > +
> > +#define PSEC_PER_SEC 1000000000000LL
> > +/*
> > + * ps2bc - Picoseconds to byte clock cycles
> > + */
> > +static u32 ps2bc(struct imx_nwl_dsi *dsi, unsigned long long ps)
> > +{
> > +	int bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->format);
> > +
> > +	return DIV_ROUND_UP(ps * dsi->vm.pixelclock * bpp,
> > +			    dsi->lanes * 8 * PSEC_PER_SEC);
> > +}
> > +
> > +/**
> > + * ui2bc - UI time periods to byte clock cycles
> > + */
> > +static u32 ui2bc(struct imx_nwl_dsi *dsi, unsigned long long ui)
> > +{
> > +	int bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->format);
> > +
> > +	return DIV_ROUND_UP(ui * dsi->lanes, dsi->vm.pixelclock * bpp);
> > +}
> > +
> > +#define USEC_PER_SEC 1000000L
> > +/*
> > + * us2bc - micro seconds to lp clock cycles
> > + */
> > +static u32 us2lp(u32 lp_clk_rate, unsigned long us)
> > +{
> > +	return DIV_ROUND_UP(us * lp_clk_rate, USEC_PER_SEC);
> > +}
> > +
> > +static int nwl_dsi_config_host(struct imx_nwl_dsi *dsi)
> > +{
> > +	u32 cycles;
> > +	struct phy_configure_opts_mipi_dphy *cfg =3D &dsi->phy_cfg.mipi_dphy;
> > +
> > +	if (dsi->lanes < 1 || dsi->lanes > 4)
> > +		return -EINVAL;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "DSI Lanes %d\n", dsi->lanes);
> > +	nwl_dsi_write(dsi, CFG_NUM_LANES, dsi->lanes - 1);
> > +
> > +	if (dsi->dsi_mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS) {
> > +		nwl_dsi_write(dsi, CFG_NONCONTINUOUS_CLK, 0x01);
> > +		nwl_dsi_write(dsi, CFG_AUTOINSERT_EOTP, 0x01);
> > +	} else {
> > +		nwl_dsi_write(dsi, CFG_NONCONTINUOUS_CLK, 0x00);
> > +		nwl_dsi_write(dsi, CFG_AUTOINSERT_EOTP, 0x00);
> > +	}
> > +
> > +	/* values in byte clock cycles */
> > +	cycles =3D ui2bc(dsi, cfg->clk_pre);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_t_pre: 0x%x\n", cycles);
> > +	nwl_dsi_write(dsi, CFG_T_PRE, cycles);
> > +	cycles =3D ps2bc(dsi, cfg->lpx + cfg->clk_prepare + cfg->clk_zero);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap (pre): 0x%x\n", cycles);
> > +	cycles +=3D ui2bc(dsi, cfg->clk_pre);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap: 0x%x\n", cycles);
> > +	nwl_dsi_write(dsi, CFG_T_POST, cycles);
> > +	cycles =3D ps2bc(dsi, cfg->hs_exit);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap: 0x%x\n", cycles);
> > +	nwl_dsi_write(dsi, CFG_TX_GAP, cycles);
> > +
> > +	nwl_dsi_write(dsi, CFG_EXTRA_CMDS_AFTER_EOTP, 0x01);
> > +	nwl_dsi_write(dsi, CFG_HTX_TO_COUNT, 0x00);
> > +	nwl_dsi_write(dsi, CFG_LRX_H_TO_COUNT, 0x00);
> > +	nwl_dsi_write(dsi, CFG_BTA_H_TO_COUNT, 0x00);
> > +	/* In LP clock cycles */
> > +	cycles =3D us2lp(cfg->lp_clk_rate, cfg->wakeup);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_twakeup: 0x%x\n", cycles);
> > +	nwl_dsi_write(dsi, CFG_TWAKEUP, cycles);
> > +
> > +	return 0;
> > +}
> > +
> > +static int nwl_dsi_config_dpi(struct imx_nwl_dsi *dsi)
> > +{
> > +	struct videomode *vm =3D &dsi->vm;
> > +	u32 color_format, mode;
> > +	bool burst_mode;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "hfront_porch =3D %d\n", vm->hfront_po=
rch);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "hback_porch =3D %d\n", vm->hback_porc=
h);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "hsync_len =3D %d\n", vm->hsync_len);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "hactive =3D %d\n", vm->hactive);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "vfront_porch =3D %d\n", vm->vfront_po=
rch);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "vback_porch =3D %d\n", vm->vback_porc=
h);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "vsync_len =3D %d\n", vm->vsync_len);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "vactive =3D %d\n", vm->vactive);
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "clock =3D %lu kHz\n",
> > +			     vm->pixelclock / 1000);
> > +
> > +	color_format =3D nwl_dsi_get_dpi_pixel_format(dsi->format);
> > +	if (color_format < 0) {
> > +		DRM_DEV_ERROR(dsi->dev, "Invalid color format 0x%x\n",
> > +			      dsi->format);
> > +		return color_format;
> > +	}
> > +	DRM_DEV_DEBUG_DRIVER(dsi->dev, "pixel fmt =3D %d\n", dsi->format);
> > +
> > +	nwl_dsi_write(dsi, INTERFACE_COLOR_CODING, DPI_24_BIT);
> > +	nwl_dsi_write(dsi, PIXEL_FORMAT, color_format);
> > +	/*
> > +	 * Adjusting input polarity based on the video mode results in
> > +	 * a black screen so always pick active low:
> > +	 */
> > +	nwl_dsi_write(dsi, VSYNC_POLARITY, VSYNC_POLARITY_ACTIVE_LOW);
> > +	nwl_dsi_write(dsi, HSYNC_POLARITY, HSYNC_POLARITY_ACTIVE_LOW);
> > +
> > +	burst_mode =3D (dsi->dsi_mode_flags & MIPI_DSI_MODE_VIDEO_BURST) &&
> > +		     !(dsi->dsi_mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE);
> > +
> > +	if (burst_mode) {
> > +		nwl_dsi_write(dsi, VIDEO_MODE, VIDEO_MODE_BURST_MODE);
> > +		nwl_dsi_write(dsi, PIXEL_FIFO_SEND_LEVEL, 256);
> > +	} else {
> > +		mode =3D ((dsi->dsi_mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) ?
> > +				VIDEO_MODE_BURST_MODE_WITH_SYNC_PULSES :
> > +				VIDEO_MODE_NON_BURST_MODE_WITH_SYNC_EVENTS);
> > +		nwl_dsi_write(dsi, VIDEO_MODE, mode);
> > +		nwl_dsi_write(dsi, PIXEL_FIFO_SEND_LEVEL, vm->hactive);
> > +	}
> > +
> > +	nwl_dsi_write(dsi, HFP, vm->hfront_porch);
> > +	nwl_dsi_write(dsi, HBP, vm->hback_porch);
> > +	nwl_dsi_write(dsi, HSA, vm->hsync_len);
> > +
> > +	nwl_dsi_write(dsi, ENABLE_MULT_PKTS, 0x0);
> > +	nwl_dsi_write(dsi, BLLP_MODE, 0x1);
> > +	nwl_dsi_write(dsi, ENABLE_MULT_PKTS, 0x0);
> > +	nwl_dsi_write(dsi, USE_NULL_PKT_BLLP, 0x0);
> > +	nwl_dsi_write(dsi, VC, 0x0);
> > +
> > +	nwl_dsi_write(dsi, PIXEL_PAYLOAD_SIZE, vm->hactive);
> > +	nwl_dsi_write(dsi, VACTIVE, vm->vactive - 1);
> > +	nwl_dsi_write(dsi, VBP, vm->vback_porch);
> > +	nwl_dsi_write(dsi, VFP, vm->vfront_porch);
> > +
> > +	return 0;
> > +}
> > +
> > +static int nwl_dsi_enable_tx_clock(struct imx_nwl_dsi *dsi)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +	int ret;
> > +
> > +	ret =3D clk_prepare_enable(dsi->tx_esc_clk);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to enable tx_esc clk: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "Enabled tx_esc clk @%lu Hz\n",
> > +			     clk_get_rate(dsi->tx_esc_clk));
> > +	return 0;
> > +}
> > +
> > +static int nwl_dsi_enable_rx_clock(struct imx_nwl_dsi *dsi)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +	int ret;
> > +
> > +	ret =3D clk_prepare_enable(dsi->rx_esc_clk);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to enable rx_esc clk: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "Enabled rx_esc clk @%lu Hz\n",
> > +			     clk_get_rate(dsi->rx_esc_clk));
> > +	return 0;
> > +}
> > +
> > +static void nwl_dsi_init_interrupts(struct imx_nwl_dsi *dsi)
> > +{
> > +	u32 irq_enable;
> > +
> > +	nwl_dsi_write(dsi, IRQ_MASK, 0xffffffff);
> > +	nwl_dsi_write(dsi, IRQ_MASK2, 0x7);
> > +
> > +	irq_enable =3D ~(u32)(TX_PKT_DONE_MASK | RX_PKT_HDR_RCVD_MASK |
> > +			    TX_FIFO_OVFLW_MASK | HS_TX_TIMEOUT_MASK);
> > +
> > +	nwl_dsi_write(dsi, IRQ_MASK, irq_enable);
> > +}
> > +
> > +static int nwl_dsi_host_attach(struct mipi_dsi_host *dsi_host,
> > +			       struct mipi_dsi_device *device)
> > +{
> > +	struct imx_nwl_dsi *dsi =3D
> > +		container_of(dsi_host, struct imx_nwl_dsi, dsi_host);
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
> > +	struct imx_nwl_dsi *dsi =3D
> > +		container_of(dsi_host, struct imx_nwl_dsi, dsi_host);
> > +
> > +	drm_of_panel_bridge_remove(dsi->dev->of_node, 1, 0);
> > +	drm_bridge_remove(&dsi->bridge);
> > +
> > +	return 0;
> > +}
> > +
> > +static bool nwl_dsi_read_packet(struct imx_nwl_dsi *dsi, u32 status)
> > +{
> > +	struct device *dev =3D dsi->dev;
> > +	struct mipi_dsi_transfer *xfer =3D dsi->xfer;
> > +	u8 *payload =3D xfer->msg->rx_buf;
> > +	u32 val;
> > +	u16 word_count;
> > +	u8 channel;
> > +	u8 data_type;
> > +
> > +	xfer->status =3D 0;
> > +
> > +	if (xfer->rx_word_count =3D=3D 0) {
> > +		if (!(status & RX_PKT_HDR_RCVD))
> > +			return false;
> > +		/* Get the RX header and parse it */
> > +		val =3D nwl_dsi_read(dsi, RX_PKT_HEADER);
> > +		word_count =3D WC(val);
> > +		channel =3D RX_VC(val);
> > +		data_type =3D RX_DT(val);
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
> > +				"[%02X] Receive buffer too small: %lu (< %u)\n",
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
> > +	if (!(status & RX_PKT_PAYLOAD_DATA_RCVD))
> > +		return false;
> > +
> > +	/* Read the RX payload */
> > +	while (word_count >=3D 4) {
> > +		val =3D nwl_dsi_read(dsi, RX_PAYLOAD);
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
> > +		val =3D nwl_dsi_read(dsi, RX_PAYLOAD);
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
> > +static void nwl_dsi_finish_transmission(struct imx_nwl_dsi *dsi, u32 s=
tatus)
> > +{
> > +	struct mipi_dsi_transfer *xfer =3D dsi->xfer;
> > +	bool end_packet =3D false;
> > +
> > +	if (!xfer)
> > +		return;
> > +
> > +	if (status & TX_FIFO_OVFLW) {
> > +		DRM_DEV_ERROR_RATELIMITED(dsi->dev, "tx fifo overflow\n");
> > +		return;
> > +	}
> > +
> > +	if (status & HS_TX_TIMEOUT) {
> > +		DRM_DEV_ERROR_RATELIMITED(dsi->dev, "HS tx timeout\n");
> > +		return;
> > +	}
> > +
> > +	if (xfer->direction =3D=3D DSI_PACKET_SEND && status & TX_PKT_DONE) {
> > +		xfer->status =3D xfer->tx_len;
> > +		end_packet =3D true;
> > +	} else if (status & DPHY_DIRECTION &&
> > +		   ((status & (RX_PKT_HDR_RCVD | RX_PKT_PAYLOAD_DATA_RCVD)))) {
> > +		end_packet =3D nwl_dsi_read_packet(dsi, status);
> > +	}
> > +
> > +	if (end_packet)
> > +		complete(&xfer->completed);
> > +}
> > +
> > +static void nwl_dsi_begin_transmission(struct imx_nwl_dsi *dsi)
> > +{
> > +	struct mipi_dsi_transfer *xfer =3D dsi->xfer;
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
> > +		val =3D get_unaligned_le32(payload);
> =

> The framework doesn't guarantee the payload to be aligned on a multiple
> of 4 bytes ?

It does as far as i can tell, dropped.

> =

> > +		hs_workaround |=3D !(val & 0xFFFF00);
> > +		nwl_dsi_write(dsi, TX_PAYLOAD, val);
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
> > +		nwl_dsi_write(dsi, TX_PAYLOAD, val);
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
> > +	if ((hs_workaround && USE_E11418_HS_MODE_QUIRK(dsi->quirks))) {
> > +		DRM_DEV_DEBUG_DRIVER(dsi->dev,
> > +				     "Using hs mode workaround for cmd 0x%x\n",
> > +				     xfer->cmd);
> > +		hs_mode =3D 1;
> > +	} else {
> > +		hs_mode =3D (xfer->msg->flags & MIPI_DSI_MSG_USE_LPM) ? 0 : 1;
> > +	}
> > +	val =3D WC(word_count) |
> > +		TX_VC(xfer->msg->channel) |
> > +		TX_DT(xfer->msg->type) |
> > +		HS_SEL(hs_mode) |
> > +		BTA_TX(xfer->need_bta);
> > +	nwl_dsi_write(dsi, PKT_CONTROL, val);
> > +
> > +	/* Send packet command */
> > +	nwl_dsi_write(dsi, SEND_PACKET, 0x1);
> > +}
> > +
> > +static ssize_t nwl_dsi_host_transfer(struct mipi_dsi_host *dsi_host,
> > +				     const struct mipi_dsi_msg *msg)
> > +{
> > +	struct imx_nwl_dsi *dsi =3D
> > +		container_of(dsi_host, struct imx_nwl_dsi, dsi_host);
> > +	struct mipi_dsi_transfer xfer;
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
> > +	nwl_dsi_enable_rx_clock(dsi);
> > +
> > +	/* Initiate the DSI packet transmision */
> > +	nwl_dsi_begin_transmission(dsi);
> > +
> > +	if (!wait_for_completion_timeout(&xfer.completed, MIPI_FIFO_TIMEOUT))=
 {
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
> > +	struct imx_nwl_dsi *dsi =3D data;
> > +
> > +	irq_status =3D nwl_dsi_read(dsi, IRQ_STATUS);
> > +
> > +	if (irq_status & TX_PKT_DONE || irq_status & RX_PKT_HDR_RCVD ||
> > +	    irq_status & RX_PKT_PAYLOAD_DATA_RCVD)
> > +		nwl_dsi_finish_transmission(dsi, irq_status);
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +EXPORT_SYMBOL_GPL(nwl_dsi_irq_handler);
> > +
> > +int nwl_dsi_enable(struct imx_nwl_dsi *dsi)
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
> > +	ret =3D nwl_dsi_enable_tx_clock(dsi);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "Failed to enable tx clock: %d\n", ret);
> > +		return ret;
> > +	}
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
> > +EXPORT_SYMBOL_GPL(nwl_dsi_enable);
> > +
> > +int nwl_dsi_disable(struct imx_nwl_dsi *dsi)
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
> > +EXPORT_SYMBOL_GPL(nwl_dsi_disable);
> > diff --git a/drivers/gpu/drm/bridge/imx-nwl/nwl-dsi.h b/drivers/gpu/drm=
/bridge/imx-nwl/nwl-dsi.h
> > new file mode 100644
> > index 000000000000..7bcf804843e2
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/imx-nwl/nwl-dsi.h
> > @@ -0,0 +1,111 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * i.MX8 NWL MIPI DSI host driver
> > + *
> > + * Copyright (C) 2017 NXP
> > + * Copyright (C) 2019 Purism SPC
> > + */
> > +#ifndef __NWL_DSI_H__
> > +#define __NWL_DSI_H__
> > +
> > +#include <drm/drm_mipi_dsi.h>
> > +
> > +/* DSI HOST registers */
> > +#define CFG_NUM_LANES			0x0
> =

> Some of the register names are quite prone to namespace clashes. I
> recommend prefixing them all with NWL_DSI_.

Done, also the defines in nwl-dsi.c.

> =

> > +#define CFG_NONCONTINUOUS_CLK		0x4
> > +#define CFG_T_PRE			0x8
> > +#define CFG_T_POST			0xc
> > +#define CFG_TX_GAP			0x10
> > +#define CFG_AUTOINSERT_EOTP		0x14
> > +#define CFG_EXTRA_CMDS_AFTER_EOTP	0x18
> > +#define CFG_HTX_TO_COUNT		0x1c
> > +#define CFG_LRX_H_TO_COUNT		0x20
> > +#define CFG_BTA_H_TO_COUNT		0x24
> > +#define CFG_TWAKEUP			0x28
> > +#define CFG_STATUS_OUT			0x2c
> > +#define RX_ERROR_STATUS			0x30
> > +
> > +/* DSI DPI registers */
> > +#define PIXEL_PAYLOAD_SIZE		0x200
> > +#define PIXEL_FIFO_SEND_LEVEL		0x204
> > +#define INTERFACE_COLOR_CODING		0x208
> > +#define PIXEL_FORMAT			0x20c
> > +#define VSYNC_POLARITY			0x210
> > +#define VSYNC_POLARITY_ACTIVE_LOW	0
> > +#define VSYNC_POLARITY_ACTIVE_HIGH	BIT(1)
> > +
> > +#define HSYNC_POLARITY			0x214
> > +#define HSYNC_POLARITY_ACTIVE_LOW	0
> > +#define HSYNC_POLARITY_ACTIVE_HIGH	BIT(1)
> > +
> > +#define VIDEO_MODE			0x218
> > +#define HFP				0x21c
> > +#define HBP				0x220
> > +#define HSA				0x224
> > +#define ENABLE_MULT_PKTS		0x228
> > +#define VBP				0x22c
> > +#define VFP				0x230
> > +#define BLLP_MODE			0x234
> > +#define USE_NULL_PKT_BLLP		0x238
> > +#define VACTIVE				0x23c
> > +#define VC				0x240
> > +
> > +/* DSI APB PKT control */
> > +#define TX_PAYLOAD			0x280
> > +#define PKT_CONTROL			0x284
> > +#define SEND_PACKET			0x288
> > +#define PKT_STATUS			0x28c
> > +#define PKT_FIFO_WR_LEVEL		0x290
> > +#define PKT_FIFO_RD_LEVEL		0x294
> > +#define RX_PAYLOAD			0x298
> > +#define RX_PKT_HEADER			0x29c
> > +
> > +/* DSI IRQ handling */
> > +#define IRQ_STATUS			0x2a0
> > +#define SM_NOT_IDLE			BIT(0)
> > +#define TX_PKT_DONE			BIT(1)
> > +#define DPHY_DIRECTION			BIT(2)
> > +#define TX_FIFO_OVFLW			BIT(3)
> > +#define TX_FIFO_UDFLW			BIT(4)
> > +#define RX_FIFO_OVFLW			BIT(5)
> > +#define RX_FIFO_UDFLW			BIT(6)
> > +#define RX_PKT_HDR_RCVD			BIT(7)
> > +#define RX_PKT_PAYLOAD_DATA_RCVD	BIT(8)
> > +#define BTA_TIMEOUT			BIT(29)
> > +#define LP_RX_TIMEOUT			BIT(30)
> > +#define HS_TX_TIMEOUT			BIT(31)
> > +
> > +#define IRQ_STATUS2			0x2a4
> > +#define SINGLE_BIT_ECC_ERR		BIT(0)
> > +#define MULTI_BIT_ECC_ERR		BIT(1)
> > +#define CRC_ERR				BIT(2)
> > +
> > +#define IRQ_MASK			0x2a8
> > +#define SM_NOT_IDLE_MASK		BIT(0)
> > +#define TX_PKT_DONE_MASK		BIT(1)
> > +#define DPHY_DIRECTION_MASK		BIT(2)
> > +#define TX_FIFO_OVFLW_MASK		BIT(3)
> > +#define TX_FIFO_UDFLW_MASK		BIT(4)
> > +#define RX_FIFO_OVFLW_MASK		BIT(5)
> > +#define RX_FIFO_UDFLW_MASK		BIT(6)
> > +#define RX_PKT_HDR_RCVD_MASK		BIT(7)
> > +#define RX_PKT_PAYLOAD_DATA_RCVD_MASK	BIT(8)
> > +#define BTA_TIMEOUT_MASK		BIT(29)
> > +#define LP_RX_TIMEOUT_MASK		BIT(30)
> > +#define HS_TX_TIMEOUT_MASK		BIT(31)
> > +
> > +#define IRQ_MASK2			0x2ac
> > +#define SINGLE_BIT_ECC_ERR_MASK		BIT(0)
> > +#define MULTI_BIT_ECC_ERR_MASK		BIT(1)
> > +#define CRC_ERR_MASK			BIT(2)
> > +
> > +extern const struct mipi_dsi_host_ops nwl_dsi_host_ops;
> > +
> > +irqreturn_t nwl_dsi_irq_handler(int irq, void *data);
> > +int nwl_dsi_enable(struct imx_nwl_dsi *dsi);
> > +int nwl_dsi_disable(struct imx_nwl_dsi *dsi);
> > +int nwl_dsi_get_dphy_params(struct imx_nwl_dsi *dsi,
> > +			    const struct drm_display_mode *mode,
> > +			    union phy_configure_opts *phy_opts);
> > +
> > +#endif /* __NWL_DSI_H__ */
> =

> -- =

> Regards,
> =

> Laurent Pinchart
> =


Cheers and thanks for having a look!
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
