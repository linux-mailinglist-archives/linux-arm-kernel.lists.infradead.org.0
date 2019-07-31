Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329F67C507
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGXTNFim5Xkpm7CVd28dVvjnbix9E7d6t9FqtBl4cYM=; b=t+lVEiRb7XHPwa
	l3ArAJoUbgbYcLKDgCoh332bF4t2uE3/AsNNaeNuxf+GZjPdP/QqIGKB1s8bVBaSTy0pjWd/idBiR
	7chcYUh/+YrRJK69k4AgDN2awHYAWviHGxwkGpHeU3+5w8Lrtwg1xAyqlXj0ORH4r5xQ7aK6SJmbs
	acY11xwBNMxN6JleCOITTOPWISH5pSsadE6feVExYtf5yY1JZkbJ/x2B0uOHzapRIOBQfuUGfgiW6
	0cMut1fLkr5iEcFsL8uOTSZI2gHi3N/4+20FSvyxtMm8TEvk7wDKH3kk/O5jVMXvH7sLCoiCPSpZy
	tVPTVE3XLOeCGFE1KXuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsphk-00040n-Rp; Wed, 31 Jul 2019 14:35:48 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsphc-0003zm-RW
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:35:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 91636FB03;
 Wed, 31 Jul 2019 16:35:35 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mN0EiOp_Zs2F; Wed, 31 Jul 2019 16:35:32 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 731A246D8A; Wed, 31 Jul 2019 16:35:32 +0200 (CEST)
Date: Wed, 31 Jul 2019 16:35:32 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 3/3] drm/bridge: Add NWL MIPI DSI host controller support
Message-ID: <20190731143532.GA1935@bogon.m.sigxcpu.org>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <3158f4f8c97c21f98c394e5631d74bc60d796522.1563983037.git.agx@sigxcpu.org>
 <CAOMZO5BRbV_1du1b9eJqcBvvXSE2Mon3yxSPJxPpZgBqYNjBSg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BRbV_1du1b9eJqcBvvXSE2Mon3yxSPJxPpZgBqYNjBSg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_073541_219079_59CC76E7 
X-CRM114-Status: GOOD (  41.88  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Lee Jones <lee.jones@linaro.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,
thanks for having a look! I followed most of your comments, there's some
things i'm unsure, see below:

On Fri, Jul 26, 2019 at 05:01:52PM -0300, Fabio Estevam wrote:
> Hi Guido,
> =

> Thanks for your work on this driver!
> =

> On Wed, Jul 24, 2019 at 12:52 PM Guido G=FCnther <agx@sigxcpu.org> wrote:
> =

> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/imx-nwl/Kconfig
> > @@ -0,0 +1,15 @@
> > +config DRM_IMX_NWL_DSI
> > +       tristate "Support for Northwest Logic MIPI DSI Host controller"
> > +       depends on DRM && (ARCH_MXC || ARCH_MULTIPLATFORM || COMPILE_TE=
ST)
> =

> =

> This IP could potentially be found on other SoCs, so no need to make
> it depend on ARCH_MXC.

Done.

> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_panel.h>
> > +#include <drm/drm_print.h>
> > +#include <drm/drm_probe_helper.h>
> > +#include <linux/clk-provider.h>
> > +#include <linux/clk.h>
> > +#include <linux/component.h>
> > +#include <linux/gpio/consumer.h>
> =

> I did not find gpio AP used in this driver.

Dropped the include.

> =

> > +static void imx_nwl_dsi_set_clocks(struct imx_nwl_dsi *dsi, bool enabl=
e)
> =

> Better make it to return 'int' instead...

Done, but see below.

> =

> > +{
> > +       struct device *dev =3D dsi->dev;
> > +       const char *id;
> > +       struct clk *clk;
> > +       unsigned long new_rate, cur_rate;
> > +       bool enabled;
> > +       size_t i;
> > +       int ret;
> > +
> > +       DRM_DEV_DEBUG_DRIVER(dev, "%sabling platform clocks",
> =

> Please remove the letter 's' from 'sabling'.

The idea is to have

    "%sabling platform clocks", enable ? "en" : "dis");

depending whether clocks are enabled/disabled.

> =

> > +                            enable ? "en" : "dis");
> > +                       ret =3D clk_prepare_enable(clk);
> > +                       if (ret < 0) {
> > +                               DRM_DEV_ERROR(dev, "Failed to enable cl=
ock %s",
> > +                                             id);
> =

> and propagate the error in case of clk_prepare_enable() failure.

done.

> =

> > +                       }
> > +                       dsi->clk_config[i].enabled =3D true;
> > +                       cur_rate =3D clk_get_rate(clk);
> > +                       DRM_DEV_DEBUG_DRIVER(
> > +                               dev, "Enabled %s clk (rate: req=3D%lu a=
ct=3D%lu)\n",
> > +                               id, new_rate, cur_rate);
> > +               } else if (enabled) {
> > +                       clk_disable_unprepare(clk);
> > +                       dsi->clk_config[i].enabled =3D false;
> > +                       DRM_DEV_DEBUG_DRIVER(dev, "Disabled %s clk\n", =
id);
> > +               }
> > +       }
> > +}
> > +
> > +static void imx_nwl_dsi_enable(struct imx_nwl_dsi *dsi)
> =

> Same here. Please return 'int' instead.

This is from drm_bridge_funcs so the prototype is fixed. I'm not sure
how what's the best way to bubble up fatal errors through the drm layer?

> > +{
> > +       struct device *dev =3D dsi->dev;
> > +       int ret;
> > +
> > +       imx_nwl_dsi_set_clocks(dsi, true);
> > +
> > +       ret =3D dsi->pdata->poweron(dsi);
> > +       if (ret < 0)
> > +               DRM_DEV_ERROR(dev, "Failed to power on DSI (%d)\n", ret=
);
> =

> If the power domain failed to turn on, it is better to propagate the
> error.

If fixed the return type here as well but this will again get lost in
`_pre_enable` which again is void in drm_bridge_funcs (see below).

> =

> > +       phy_ref_rate =3D clk_get_rate(dsi->phy_ref_clk);
> > +       DRM_DEV_DEBUG_DRIVER(dev, "PHY at ref rate: %lu\n", phy_ref_rat=
e);
> > +       if (ret < 0) {
> =

> This check looks wrong. At this point ret is always 0.

Fixed.

> =

> > +               DRM_DEV_ERROR(dsi->dev,
> > +                             "Cannot setup PHY for mode: %ux%u @%d Hz\=
n",
> > +                             adjusted_mode->hdisplay, adjusted_mode->v=
display,
> > +                             adjusted_mode->clock);
> > +               DRM_DEV_ERROR(dsi->dev, "PHY ref clk: %lu, bit clk: %lu=
\n",
> > +                             phy_ref_rate, new_cfg.mipi_dphy.hs_clk_ra=
te);
> > +       } else {
> > +               /* Save the new desired phy config */
> > +               memcpy(&dsi->phy_cfg, &new_cfg, sizeof(new_cfg));
> > +       }
> > +
> > +       /* LCDIF + NWL needs active high sync */
> =

> Would this still work if DCSS is used instead?

I'll check once there's a DCSS driver that can drive this. The current
vendor one is bound to imx-displays-subsystem and cant' drive a bridge.

> =

> > +       adjusted_mode->flags |=3D (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG=
_PVSYNC);
> > +       adjusted_mode->flags &=3D ~(DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLA=
G_NVSYNC);
> > +
> > +       drm_display_mode_to_videomode(adjusted_mode, &dsi->vm);
> > +       drm_mode_debug_printmodeline(adjusted_mode);
> > +
> > +       return ret =3D=3D 0;
> =

> At this point ret is always 0.

Right, there was some more logic in there that got removed. Changed to
always signal success.

> =

> > +static void imx_nwl_dsi_bridge_pre_enable(struct drm_bridge *bridge)
> > +{
> > +       struct imx_nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +
> > +       if (dsi->dpms_mode =3D=3D DRM_MODE_DPMS_ON)
> > +               return;
> > +
> > +       imx_nwl_select_input_source(dsi);
> =

> This function is i.MX8M specific, so better protect it to run only for
> the i.MX8M variant.

Moved into imx_nwl_platform_data.

> =

> > +       pm_runtime_get_sync(dsi->dev);
> > +       imx_nwl_dsi_enable(dsi);
> > +       nwl_dsi_enable(dsi);
> =

> Please check the error and propagate in the case of failure.

This one is again hooked in from drm_bridge_funcs which is void.

> =

> > +       dsi->dpms_mode =3D DRM_MODE_DPMS_ON;
> > +}
> > +
> =

> > +       dsi->csr =3D syscon_regmap_lookup_by_phandle(np, "csr");
> > +       if (IS_ERR(dsi->csr) && dsi->pdata->ext_regs & IMX_REG_CSR) {
> > +               ret =3D PTR_ERR(dsi->csr);
> > +               DRM_DEV_ERROR(dsi->dev, "Failed to get CSR regmap: %d\n=
",
> =

> In this function (and globally in the driver) there is a mix of
> DRM_DEV_ERROR() and dev_err().
> =

> Can we just pick one of the two and use it consistently?
> =

> Not sure what is the norm in drm code, but IMHO dev_err() looks
> prettier :-)

I went for DRM_DEV_ERROR() since that what i used in the rest of the
driver and these ones were omission. Hope that's o.k.

> =

> > +
> > +       res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +       base =3D devm_ioremap_resource(dsi->dev, res);
> =

> Could use devm_platform_ioremap_resource(), which makes it simpler.

Done.

> =

> > +err_cleanup:
> > +       devm_free_irq(dev, dsi->irq, dsi);
> =

> No need to call devm_free_irq() here. The devm functions do not need
> to be freed on probe.

Removed.

> =

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
> =

> Is this asm header required?

I dropped it after removing get_unaligned_le32.

> =

> > +/*
> > + * DSI Video mode
> > + */
> =

> Single line comment would suffice.
> =

> > +#define VIDEO_MODE_BURST_MODE_WITH_SYNC_PULSES         0
> > +#define VIDEO_MODE_NON_BURST_MODE_WITH_SYNC_EVENTS     BIT(0)
> > +#define VIDEO_MODE_BURST_MODE                          BIT(1)
> > +
> > +/*
> > + * DPI color coding
> > + */
> =

> Ditto.
> =

> > +#define DPI_16_BIT_565_PACKED  0
> > +#define DPI_16_BIT_565_ALIGNED 1
> > +#define DPI_16_BIT_565_SHIFTED 2
> > +#define DPI_18_BIT_PACKED      3
> > +#define DPI_18_BIT_ALIGNED     4
> > +#define DPI_24_BIT             5
> > +
> > +/*
> > + * DPI Pixel format
> > + */
> =

> Ditto.

all fixed

> =

> > +#define PIXEL_FORMAT_16  0
> > +#define PIXEL_FORMAT_18  BIT(0)
> > +#define PIXEL_FORMAT_18L BIT(1)
> > +#define PIXEL_FORMAT_24  (BIT(0) | BIT(1))
> > +
> > +enum transfer_direction { DSI_PACKET_SEND, DSI_PACKET_RECEIVE };
> > +
> > +struct mipi_dsi_transfer {
> > +       const struct mipi_dsi_msg *msg;
> > +       struct mipi_dsi_packet packet;
> > +       struct completion completed;
> > +
> > +       int status; /* status of transmission */
> > +       enum transfer_direction direction;
> > +       bool need_bta;
> > +       u8 cmd;
> > +       u16 rx_word_count;
> > +       size_t tx_len; /* bytes sent */
> > +       size_t rx_len; /* bytes received */
> > +};
> =

> The comments here are kind of obvious, so I would just remove them.

I wanted to have the unit here so i changed to /* in bytes */

> =

> > +static inline int nwl_dsi_write(struct imx_nwl_dsi *dsi, unsigned int =
reg,
> =

> inline can be dropped.

done.
> =

> > +                               u32 val)
> > +{
> > +       int ret;
> > +
> > +       ret =3D regmap_write(dsi->regmap, reg, val);
> > +       if (ret < 0)
> > +               DRM_DEV_ERROR(dsi->dev,
> > +                             "Failed to write NWL DSI reg 0x%x: %d\n",=
 reg,
> > +                             ret);
> > +       return ret;
> > +}
> > +
> > +static inline u32 nwl_dsi_read(struct imx_nwl_dsi *dsi, u32 reg)
> =

> Same here.

done.

> > +{
> > +       unsigned int val;
> > +       int ret;
> > +
> > +       ret =3D regmap_read(dsi->regmap, reg, &val);
> > +       if (ret < 0)
> > +               DRM_DEV_ERROR(dsi->dev, "Failed to read NWL DSI reg 0x%=
x: %d\n",
> > +                             reg, ret);
> > +
> > +       return val;
> > +}
> =

> It seems that we could simply use regmap_read/write() directly instead
> of these functions.

I've checked some other drm drivers most of them seem to
regmap_{read,write} without looking at errors. While we can't do
anything sensible when writing fails it's seems at least useful to print
an error. I've seen these happening and the messages were very useful
for debugging so if possible i'd keep them.

> > +int nwl_dsi_get_dphy_params(struct imx_nwl_dsi *dsi,
> > +                           const struct drm_display_mode *mode,
> > +                           union phy_configure_opts *phy_opts)
> > +{
> > +       unsigned long rate;
> > +
> > +       if (dsi->lanes < 1 || dsi->lanes > 4)
> > +               return -EINVAL;
> > +
> > +       /*
> > +        * So far the DPHY spec minimal timings work for both mixel
> > +        * dphy and nwl dsi host
> > +        */
> > +       phy_mipi_dphy_get_default_config(
> > +               mode->crtc_clock * 1000,
> > +               mipi_dsi_pixel_format_to_bpp(dsi->format), dsi->lanes,
> > +               &phy_opts->mipi_dphy);
> > +       rate =3D clk_get_rate(dsi->tx_esc_clk);
> > +       DRM_DEV_DEBUG_DRIVER(dsi->dev, "LP clk is @%lu Hz\n", rate);
> > +       phy_opts->mipi_dphy.lp_clk_rate =3D rate;
> > +
> > +       return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(nwl_dsi_get_dphy_params);
> =

> Does it really need to be exported? Why can't it be placed inside
> nwl-drv.c and be made static?

Moved.

> =

> > +/**
> =

> /* is enough

Fixed.

> =

> =

> > + * ui2bc - UI time periods to byte clock cycles
> > + */
> > +static u32 ui2bc(struct imx_nwl_dsi *dsi, unsigned long long ui)
> > +{
> > +       int bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->format);
> > +
> > +       return DIV_ROUND_UP(ui * dsi->lanes, dsi->vm.pixelclock * bpp);
> > +}
> > +
> > +#define USEC_PER_SEC 1000000L
> =

> This definition already exists in include/linux/time64.h. No need to
> redefine it.

Dropped that define.

> =

> > +static int nwl_dsi_enable_tx_clock(struct imx_nwl_dsi *dsi)
> > +{
> > +       struct device *dev =3D dsi->dev;
> > +       int ret;
> > +
> > +       ret =3D clk_prepare_enable(dsi->tx_esc_clk);
> > +       if (ret < 0) {
> > +               DRM_DEV_ERROR(dev, "Failed to enable tx_esc clk: %d\n",=
 ret);
> > +               return ret;
> > +       }
> > +
> > +       DRM_DEV_DEBUG_DRIVER(dev, "Enabled tx_esc clk @%lu Hz\n",
> > +                            clk_get_rate(dsi->tx_esc_clk));
> > +       return 0;
> > +}
> =

> Do we really need this function? It looks like it would be simpler
> just to call clk_prepare_enable() directly.

Dropped since it's only used once, there were more users before.

> =

> > +
> > +static int nwl_dsi_enable_rx_clock(struct imx_nwl_dsi *dsi)
> > +{
> > +       struct device *dev =3D dsi->dev;
> > +       int ret;
> > +
> > +       ret =3D clk_prepare_enable(dsi->rx_esc_clk);
> > +       if (ret < 0) {
> > +               DRM_DEV_ERROR(dev, "Failed to enable rx_esc clk: %d\n",=
 ret);
> > +               return ret;
> > +       }
> > +
> > +       DRM_DEV_DEBUG_DRIVER(dev, "Enabled rx_esc clk @%lu Hz\n",
> > +                            clk_get_rate(dsi->rx_esc_clk));
> > +       return 0;
> > +}
> =

> Same here.

Dropped since it's only used once.

> > +static ssize_t nwl_dsi_host_transfer(struct mipi_dsi_host *dsi_host,
> > +                                    const struct mipi_dsi_msg *msg)
> > +{
> > +       struct imx_nwl_dsi *dsi =3D
> > +               container_of(dsi_host, struct imx_nwl_dsi, dsi_host);
> > +       struct mipi_dsi_transfer xfer;
> > +       ssize_t ret =3D 0;
> > +
> > +       /* Create packet to be sent */
> > +       dsi->xfer =3D &xfer;
> > +       ret =3D mipi_dsi_create_packet(&xfer.packet, msg);
> > +       if (ret < 0) {
> > +               dsi->xfer =3D NULL;
> > +               return ret;
> > +       }
> > +
> > +       if ((msg->type & MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM ||
> > +            msg->type & MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM ||
> > +            msg->type & MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM ||
> > +            msg->type & MIPI_DSI_DCS_READ) &&
> > +           msg->rx_len > 0 && msg->rx_buf !=3D NULL)
> > +               xfer.direction =3D DSI_PACKET_RECEIVE;
> > +       else
> > +               xfer.direction =3D DSI_PACKET_SEND;
> > +
> > +       xfer.need_bta =3D (xfer.direction =3D=3D DSI_PACKET_RECEIVE);
> > +       xfer.need_bta |=3D (msg->flags & MIPI_DSI_MSG_REQ_ACK) ? 1 : 0;
> > +       xfer.msg =3D msg;
> > +       xfer.status =3D -ETIMEDOUT;
> > +       xfer.rx_word_count =3D 0;
> > +       xfer.rx_len =3D 0;
> > +       xfer.cmd =3D 0x00;
> > +       if (msg->tx_len > 0)
> > +               xfer.cmd =3D ((u8 *)(msg->tx_buf))[0];
> > +       init_completion(&xfer.completed);
> > +
> > +       nwl_dsi_enable_rx_clock(dsi);
> =

> This may fail, so better check the error.
> =

> ret =3D clk_prepare_enable()
> if (ret < 0)
>    return ret;

Done.

> > +irqreturn_t nwl_dsi_irq_handler(int irq, void *data)
> > +{
> > +       u32 irq_status;
> > +       struct imx_nwl_dsi *dsi =3D data;
> > +
> > +       irq_status =3D nwl_dsi_read(dsi, IRQ_STATUS);
> > +
> > +       if (irq_status & TX_PKT_DONE || irq_status & RX_PKT_HDR_RCVD ||
> > +           irq_status & RX_PKT_PAYLOAD_DATA_RCVD)
> > +               nwl_dsi_finish_transmission(dsi, irq_status);
> > +
> > +       return IRQ_HANDLED;
> > +}
> > +EXPORT_SYMBOL_GPL(nwl_dsi_irq_handler);
> =

> What about placing this function inside nwl-drv.c and make it static?

Then nwl_dsi_finish_transmission would need to either be moved as well
or we'd have another non-static function. I'd like to keeping the irq
handling in one file and only have the registration over in imx-nwl-drv.
I've dropped the EXPORT_SYMBOL_GPL though.

> > +
> > +int nwl_dsi_enable(struct imx_nwl_dsi *dsi)
> > +{
> > +       struct device *dev =3D dsi->dev;
> > +       union phy_configure_opts *phy_cfg =3D &dsi->phy_cfg;
> > +       int ret;
> > +
> > +       if (!dsi->lanes) {
> > +               DRM_DEV_ERROR(dev, "Need DSI lanes: %d\n", dsi->lanes);
> > +               return -EINVAL;
> > +       }
> > +
> > +       ret =3D phy_init(dsi->phy);
> > +       if (ret < 0) {
> > +               DRM_DEV_ERROR(dev, "Failed to init DSI phy: %d\n", ret);
> > +               return ret;
> > +       }
> > +
> > +       ret =3D phy_configure(dsi->phy, phy_cfg);
> > +       if (ret < 0) {
> > +               DRM_DEV_ERROR(dev, "Failed to configure DSI phy: %d\n",=
 ret);
> > +               return ret;
> > +       }
> > +
> > +       ret =3D nwl_dsi_enable_tx_clock(dsi);
> > +       if (ret < 0) {
> > +               DRM_DEV_ERROR(dev, "Failed to enable tx clock: %d\n", r=
et);
> > +               return ret;
> > +       }
> > +
> > +       ret =3D nwl_dsi_config_host(dsi);
> > +       if (ret < 0) {
> > +               DRM_DEV_ERROR(dev, "Failed to set up DSI: %d", ret);
> > +               return ret;
> > +       }
> > +
> > +       ret =3D nwl_dsi_config_dpi(dsi);
> > +       if (ret < 0) {
> > +               DRM_DEV_ERROR(dev, "Failed to set up DPI: %d", ret);
> > +               return ret;
> > +       }
> > +
> > +       ret =3D phy_power_on(dsi->phy);
> > +       if (ret < 0) {
> > +               DRM_DEV_ERROR(dev, "Failed to power on DPHY (%d)\n", re=
t);
> > +               return ret;
> > +       }
> > +
> > +       nwl_dsi_init_interrupts(dsi);
> > +
> > +       return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(nwl_dsi_enable);
> =

> Same here.

The idea was to keep the dsi related operations here. Dropped
EXPORT_SYMBOL_GPL though.

> =

> > +
> > +int nwl_dsi_disable(struct imx_nwl_dsi *dsi)
> > +{
> > +       struct device *dev =3D dsi->dev;
> > +
> > +       DRM_DEV_DEBUG_DRIVER(dev, "Disabling clocks and phy\n");
> > +
> > +       phy_power_off(dsi->phy);
> > +       phy_exit(dsi->phy);
> > +
> > +       /* Disabling the clock before the phy breaks enabling dsi again=
 */
> > +       clk_disable_unprepare(dsi->tx_esc_clk);
> > +
> > +       return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(nwl_dsi_disable);
> =

> Same here.

Same as above. I can move things if wanted but then it might make sense
to only use one large file which I avoided so we can have a split
between DSI operations and probing / bridge chaining and platform
specific functions.

Thanks again for having a look,
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
