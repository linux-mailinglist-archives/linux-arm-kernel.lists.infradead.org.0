Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9701F112AF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qR7jhSAY+pxJ27ZJq9lIw9CYgWJTJv13wDj6xn81mQQ=; b=N0SFz7Lx8Z64LH
	TIse5CTmI4Q/GbCD+GmEBe/ouUruPY17bFmHLSA2m0xEnEM0W+SVXtkJt2VrrcHYkVmUwVz9vC6gC
	i9UlB611tDVyyDKXfAWeeW/WKb9/MaOq8AytoV5kSl+yvV8M2DczORDfX/XB5ZL8POGfclb1Wepwr
	Hw0az5ZLGzZommnnu/QiCn/5W88ro1TDykdJtpdf2GAriNbJsuTXyq4LR0h672Hj/LZbnNV+Vokki
	sLsCwoDPzV5Q+Sdk2MCHAmU/o14c5yWePzfYln7t0t3QFHwqICaK/3KexIt6tWf99h/fo2qLjm1V8
	Vl4mhPFVAfomvKLkTZRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icTQr-0005S0-Nj; Wed, 04 Dec 2019 12:07:01 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icTQf-0005Qt-V1
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 12:06:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id B1417FB05;
 Wed,  4 Dec 2019 13:06:47 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5KA9HjBBtht; Wed,  4 Dec 2019 13:06:39 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id B70D64964C; Wed,  4 Dec 2019 13:06:38 +0100 (CET)
Date: Wed, 4 Dec 2019 13:06:38 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [EXT] [PATCH v8 2/2] drm/bridge: Add NWL MIPI DSI host
 controller support
Message-ID: <20191204120638.GB18094@bogon.m.sigxcpu.org>
References: <cover.1575315215.git.agx@sigxcpu.org>
 <cf9957498dd6d26015d8f39f47189b0df047ffc4.1575315215.git.agx@sigxcpu.org>
 <1575366594.6423.61.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575366594.6423.61.camel@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_040650_501795_116F21D2 
X-CRM114-Status: GOOD (  27.24  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sam@ravnborg.org" <sam@ravnborg.org>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 dl-linux-imx <linux-imx@nxp.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,
On Tue, Dec 03, 2019 at 09:50:03AM +0000, Robert Chiras wrote:
> Hi Guido,
> =

> Since your last revision sent, I've done more tests here and found a
> few more improvements that could be added to this driver.
> See inline.
> =

> On Lu, 2019-12-02 at 20:35 +0100, Guido G=FCnther wrote:
> > Caution: EXT Email
> > =

> > This adds initial support for the NWL MIPI DSI Host controller found
> > on
> > i.MX8 SoCs.
> > =

> > It adds support for the i.MX8MQ but the same IP can be found on
> > e.g. the i.MX8QXP.
> > =

> > It has been tested on the Librem 5 devkit using mxsfb.
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > Co-developed-by: Robert Chiras <robert.chiras@nxp.com>
> > Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> > Tested-by: Robert Chiras <robert.chiras@nxp.com>
> > ---
> > =A0drivers/gpu/drm/bridge/Kconfig=A0=A0=A0|=A0=A0=A016 +
> > =A0drivers/gpu/drm/bridge/Makefile=A0=A0|=A0=A0=A0=A03 +
> > =A0drivers/gpu/drm/bridge/nwl-dsi.c | 1230
> > ++++++++++++++++++++++++++++++
> > =A0drivers/gpu/drm/bridge/nwl-dsi.h |=A0=A0144 ++++
> > =A04 files changed, 1393 insertions(+)
> > =A0create mode 100644 drivers/gpu/drm/bridge/nwl-dsi.c
> > =A0create mode 100644 drivers/gpu/drm/bridge/nwl-dsi.h
> > =

> > diff --git a/drivers/gpu/drm/bridge/Kconfig
> > b/drivers/gpu/drm/bridge/Kconfig
> > index 34362976cd6f..6fb534f55d22 100644
> > --- a/drivers/gpu/drm/bridge/Kconfig
> > +++ b/drivers/gpu/drm/bridge/Kconfig
> > @@ -65,6 +65,22 @@ config DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0to DP++. This is used with the i.MX6 i=
mx-ldb
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0driver. You are likely to say N here.
> > =

> > +config DRM_NWL_MIPI_DSI
> > +=A0=A0=A0=A0=A0=A0=A0tristate "Northwest Logic MIPI DSI Host controlle=
r"
> > +=A0=A0=A0=A0=A0=A0=A0depends on DRM
> > +=A0=A0=A0=A0=A0=A0=A0depends on COMMON_CLK
> > +=A0=A0=A0=A0=A0=A0=A0depends on OF && HAS_IOMEM
> > +=A0=A0=A0=A0=A0=A0=A0select DRM_KMS_HELPER
> > +=A0=A0=A0=A0=A0=A0=A0select DRM_MIPI_DSI
> > +=A0=A0=A0=A0=A0=A0=A0select DRM_PANEL_BRIDGE
> > +=A0=A0=A0=A0=A0=A0=A0select GENERIC_PHY_MIPI_DPHY
> > +=A0=A0=A0=A0=A0=A0=A0select MFD_SYSCON
> > +=A0=A0=A0=A0=A0=A0=A0select MULTIPLEXER
> > +=A0=A0=A0=A0=A0=A0=A0select REGMAP_MMIO
> > +=A0=A0=A0=A0=A0=A0=A0help
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0This enables the Northwest Logic MIPI DSI H=
ost controller
> > as
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0for example found on NXP's i.MX8 Processors.
> > +
> > =A0config DRM_NXP_PTN3460
> > =A0=A0=A0=A0=A0=A0=A0=A0tristate "NXP PTN3460 DP/LVDS bridge"
> > =A0=A0=A0=A0=A0=A0=A0=A0depends on OF
> > diff --git a/drivers/gpu/drm/bridge/Makefile
> > b/drivers/gpu/drm/bridge/Makefile
> > index 4934fcf5a6f8..c3f3a43e9b8f 100644
> > --- a/drivers/gpu/drm/bridge/Makefile
> > +++ b/drivers/gpu/drm/bridge/Makefile
> > @@ -16,4 +16,7 @@ obj-$(CONFIG_DRM_ANALOGIX_DP) +=3D analogix/
> > =A0obj-$(CONFIG_DRM_I2C_ADV7511) +=3D adv7511/
> > =A0obj-$(CONFIG_DRM_TI_SN65DSI86) +=3D ti-sn65dsi86.o
> > =A0obj-$(CONFIG_DRM_TI_TFP410) +=3D ti-tfp410.o
> > +obj-$(CONFIG_DRM_NWL_MIPI_DSI) +=3D nwl-dsi.o
> > =A0obj-y +=3D synopsys/
> > +
> > +header-test-y +=3D nwl-dsi.h
> > diff --git a/drivers/gpu/drm/bridge/nwl-dsi.c
> > b/drivers/gpu/drm/bridge/nwl-dsi.c
> > new file mode 100644
> > index 000000000000..023191894fe4
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/nwl-dsi.c
> > @@ -0,0 +1,1230 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * i.MX8 NWL MIPI DSI host driver
> > + *
> > + * Copyright (C) 2017 NXP
> > + * Copyright (C) 2019 Purism SPC
> > + */
> > +
> > +#include <linux/bitfield.h>
> > +#include <linux/clk.h>
> > +#include <linux/irq.h>
> > +#include <linux/math64.h>
> > +#include <linux/mfd/syscon.h>
> > +#include <linux/module.h>
> > +#include <linux/mux/consumer.h>
> > +#include <linux/of.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/regmap.h>
> > +#include <linux/reset.h>
> > +#include <linux/sys_soc.h>
> > +#include <linux/time64.h>
> > +
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_bridge.h>
> > +#include <drm/drm_mipi_dsi.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_panel.h>
> > +#include <drm/drm_print.h>
> > +#include <drm/drm_probe_helper.h>
> > +
> > +#include <video/mipi_display.h>
> > +#include <video/videomode.h>
> > +
> > +#include "nwl-dsi.h"
> > +
> > +#define DRV_NAME "nwl-dsi"
> > +
> > +/* i.MX8 NWL quirks */
> > +/* i.MX8MQ errata E11418 */
> > +#define E11418_HS_MODE_QUIRK=A0=A0=A0BIT(0)
> > +
> > +#define NWL_DSI_MIPI_FIFO_TIMEOUT msecs_to_jiffies(500)
> > +
> > +enum transfer_direction {
> > +=A0=A0=A0=A0=A0=A0=A0DSI_PACKET_SEND,
> > +=A0=A0=A0=A0=A0=A0=A0DSI_PACKET_RECEIVE,
> > +};
> > +
> > +/* Possible platform specific clocks */
> > +#define NWL_DSI_CLK_CORE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0"core"
> > +#define NWL_DSI_MAX_PLATFORM_CLOCKS 1
> > +
> > +#define NWL_DSI_ENDPOINT_LCDIF 0
> > +#define NWL_DSI_ENDPOINT_DCSS 1
> > +
> > +struct nwl_dsi_plat_clk_config {
> > +=A0=A0=A0=A0=A0=A0=A0const char *id;
> > +=A0=A0=A0=A0=A0=A0=A0struct clk *clk;
> > +=A0=A0=A0=A0=A0=A0=A0bool present;
> > +};
> > +
> > +struct nwl_dsi_transfer {
> > +=A0=A0=A0=A0=A0=A0=A0const struct mipi_dsi_msg *msg;
> > +=A0=A0=A0=A0=A0=A0=A0struct mipi_dsi_packet packet;
> > +=A0=A0=A0=A0=A0=A0=A0struct completion completed;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0int status; /* status of transmission */
> > +=A0=A0=A0=A0=A0=A0=A0enum transfer_direction direction;
> > +=A0=A0=A0=A0=A0=A0=A0bool need_bta;
> > +=A0=A0=A0=A0=A0=A0=A0u8 cmd;
> > +=A0=A0=A0=A0=A0=A0=A0u16 rx_word_count;
> > +=A0=A0=A0=A0=A0=A0=A0size_t tx_len; /* in bytes */
> > +=A0=A0=A0=A0=A0=A0=A0size_t rx_len; /* in bytes */
> > +};
> > +
> > +struct nwl_dsi {
> > +=A0=A0=A0=A0=A0=A0=A0struct drm_bridge bridge;
> > +=A0=A0=A0=A0=A0=A0=A0struct mipi_dsi_host dsi_host;
> > +=A0=A0=A0=A0=A0=A0=A0struct drm_bridge *panel_bridge;
> > +=A0=A0=A0=A0=A0=A0=A0struct device *dev;
> > +=A0=A0=A0=A0=A0=A0=A0struct phy *phy;
> > +=A0=A0=A0=A0=A0=A0=A0union phy_configure_opts phy_cfg;
> > +=A0=A0=A0=A0=A0=A0=A0unsigned int quirks;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0struct regmap *regmap;
> > +=A0=A0=A0=A0=A0=A0=A0int irq;
> > +=A0=A0=A0=A0=A0=A0=A0struct reset_control *rstc;
> > +=A0=A0=A0=A0=A0=A0=A0struct mux_control *mux;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* DSI clocks */
> > +=A0=A0=A0=A0=A0=A0=A0struct clk *phy_ref_clk;
> > +=A0=A0=A0=A0=A0=A0=A0struct clk *rx_esc_clk;
> > +=A0=A0=A0=A0=A0=A0=A0struct clk *tx_esc_clk;
> > +=A0=A0=A0=A0=A0=A0=A0/* Platform dependent clocks */
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi_plat_clk_config
> > clk_config[NWL_DSI_MAX_PLATFORM_CLOCKS];
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* dsi lanes */
> > +=A0=A0=A0=A0=A0=A0=A0u32 lanes;
> > +=A0=A0=A0=A0=A0=A0=A0enum mipi_dsi_pixel_format format;
> > +=A0=A0=A0=A0=A0=A0=A0struct drm_display_mode mode;
> > +=A0=A0=A0=A0=A0=A0=A0unsigned long dsi_mode_flags;
> > +=A0=A0=A0=A0=A0=A0=A0int error;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi_transfer *xfer;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0const struct nwl_dsi_platform_data *pdata;
> > +};
> > +
> > +/* Platform specific hooks to enable other SoCs like the i.MX8QM */
> > +struct nwl_dsi_platform_data {
> > +=A0=A0=A0=A0=A0=A0=A0int (*poweron)(struct nwl_dsi *dsi);
> > +=A0=A0=A0=A0=A0=A0=A0int (*poweroff)(struct nwl_dsi *dsi);
> > +=A0=A0=A0=A0=A0=A0=A0int (*select_input)(struct nwl_dsi *dsi);
> > +=A0=A0=A0=A0=A0=A0=A0int (*deselect_input)(struct nwl_dsi *dsi);
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi_plat_clk_config
> > clk_config[NWL_DSI_MAX_PLATFORM_CLOCKS];
> > +};
> > +
> > +static const struct regmap_config nwl_dsi_regmap_config =3D {
> > +=A0=A0=A0=A0=A0=A0=A0.reg_bits =3D 16,
> > +=A0=A0=A0=A0=A0=A0=A0.val_bits =3D 32,
> > +=A0=A0=A0=A0=A0=A0=A0.reg_stride =3D 4,
> > +=A0=A0=A0=A0=A0=A0=A0.max_register =3D NWL_DSI_IRQ_MASK2,
> > +=A0=A0=A0=A0=A0=A0=A0.name =3D DRV_NAME,
> > +};
> > +
> > +static inline struct nwl_dsi *bridge_to_dsi(struct drm_bridge
> > *bridge)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0return container_of(bridge, struct nwl_dsi, bridg=
e);
> > +}
> > +
> > +static int nwl_dsi_clear_error(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0int ret =3D dsi->error;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->error =3D 0;
> > +=A0=A0=A0=A0=A0=A0=A0return ret;
> > +}
> > +
> > +static void nwl_dsi_write(struct nwl_dsi *dsi, unsigned int reg, u32
> > val)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->error)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D regmap_write(dsi->regmap, reg, val);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0"Failed to write NWL DSI reg 0x%x:
> > %d\n", reg,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dsi->error =3D ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +}
> > +
> > +static u32 nwl_dsi_read(struct nwl_dsi *dsi, u32 reg)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0unsigned int val;
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->error)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return 0;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D regmap_read(dsi->regmap, reg, &val);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to read NWL DSI reg
> > 0x%x: %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0reg, ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dsi->error =3D ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0return val;
> > +}
> > +
> > +static int nwl_dsi_get_dpi_pixel_format(enum mipi_dsi_pixel_format
> > format)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0switch (format) {
> > +=A0=A0=A0=A0=A0=A0=A0case MIPI_DSI_FMT_RGB565:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return NWL_DSI_PIXEL_FORM=
AT_16;
> > +=A0=A0=A0=A0=A0=A0=A0case MIPI_DSI_FMT_RGB666:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return NWL_DSI_PIXEL_FORM=
AT_18L;
> > +=A0=A0=A0=A0=A0=A0=A0case MIPI_DSI_FMT_RGB666_PACKED:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return NWL_DSI_PIXEL_FORM=
AT_18;
> > +=A0=A0=A0=A0=A0=A0=A0case MIPI_DSI_FMT_RGB888:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return NWL_DSI_PIXEL_FORM=
AT_24;
> > +=A0=A0=A0=A0=A0=A0=A0default:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return -EINVAL;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +}
> > +
> > +/*
> > + * ps2bc - Picoseconds to byte clock cycles
> > + */
> > +static u32 ps2bc(struct nwl_dsi *dsi, unsigned long long ps)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0u32 bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->for=
mat);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return DIV64_U64_ROUND_UP(ps * dsi->mode.clock * =
bpp,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dsi->lanes * 8 * NSEC_PER_SEC);
> > +}
> > +
> > +/*
> > + * ui2bc - UI time periods to byte clock cycles
> > + */
> > +static u32 ui2bc(struct nwl_dsi *dsi, unsigned long long ui)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0u32 bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->for=
mat);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return DIV64_U64_ROUND_UP(ui * dsi->lanes,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dsi->mode.clock * 1000 * bpp);
> > +}
> > +
> > +/*
> > + * us2bc - micro seconds to lp clock cycles
> > + */
> > +static u32 us2lp(u32 lp_clk_rate, unsigned long us)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0return DIV_ROUND_UP(us * lp_clk_rate, USEC_PER_SE=
C);
> > +}
> > +
> > +static int nwl_dsi_config_host(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0u32 cycles;
> > +=A0=A0=A0=A0=A0=A0=A0struct phy_configure_opts_mipi_dphy *cfg =3D &dsi-
> > >phy_cfg.mipi_dphy;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->lanes < 1 || dsi->lanes > 4)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return -EINVAL;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "DSI Lanes %d\n", =
dsi->lanes);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_CFG_NUM_LANES, dsi->la=
nes - 1);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->dsi_mode_flags & MIPI_DSI_CLOCK_NON_CONT=
INUOUS) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_CFG_NONCONTINUOUS_CLK,
> > 0x01);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_CFG_AUTOINSERT_EOTP,
> > 0x01);
> > +=A0=A0=A0=A0=A0=A0=A0} else {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_CFG_NONCONTINUOUS_CLK,
> > 0x00);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_CFG_AUTOINSERT_EOTP,
> > 0x00);
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* values in byte clock cycles */
> > +=A0=A0=A0=A0=A0=A0=A0cycles =3D ui2bc(dsi, cfg->clk_pre);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_t_pre: 0x%x\n=
", cycles);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_CFG_T_PRE, cycles);
> > +=A0=A0=A0=A0=A0=A0=A0cycles =3D ps2bc(dsi, cfg->lpx + cfg->clk_prepare=
 + cfg-
> > >clk_zero);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap (pre):=
 0x%x\n",
> > cycles);
> > +=A0=A0=A0=A0=A0=A0=A0cycles +=3D ui2bc(dsi, cfg->clk_pre);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_t_post: 0x%x\=
n", cycles);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_CFG_T_POST, cycles);
> > +=A0=A0=A0=A0=A0=A0=A0cycles =3D ps2bc(dsi, cfg->hs_exit);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap: 0x%x\=
n", cycles);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_CFG_TX_GAP, cycles);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_CFG_EXTRA_CMDS_AFTER_E=
OTP, 0x01);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_CFG_HTX_TO_COUNT, 0x00=
);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_CFG_LRX_H_TO_COUNT, 0x=
00);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_CFG_BTA_H_TO_COUNT, 0x=
00);
> > +=A0=A0=A0=A0=A0=A0=A0/* In LP clock cycles */
> > +=A0=A0=A0=A0=A0=A0=A0cycles =3D us2lp(cfg->lp_clk_rate, cfg->wakeup);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_twakeup: 0x%x=
\n",
> > cycles);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_CFG_TWAKEUP, cycles);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return nwl_dsi_clear_error(dsi);
> > +}
> > +
> > +static int nwl_dsi_config_dpi(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0u32 mode;
> > +=A0=A0=A0=A0=A0=A0=A0int color_format;
> > +=A0=A0=A0=A0=A0=A0=A0bool burst_mode;
> > +=A0=A0=A0=A0=A0=A0=A0int hfront_porch, hback_porch, vfront_porch, vbac=
k_porch;
> > +=A0=A0=A0=A0=A0=A0=A0int hsync_len, vsync_len;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0hfront_porch =3D dsi->mode.hsync_start - dsi->mod=
e.hdisplay;
> > +=A0=A0=A0=A0=A0=A0=A0hsync_len =3D dsi->mode.hsync_end - dsi->mode.hsy=
nc_start;
> > +=A0=A0=A0=A0=A0=A0=A0hback_porch =3D dsi->mode.htotal - dsi->mode.hsyn=
c_end;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0vfront_porch =3D dsi->mode.vsync_start - dsi->mod=
e.vdisplay;
> > +=A0=A0=A0=A0=A0=A0=A0vsync_len =3D dsi->mode.vsync_end - dsi->mode.vsy=
nc_start;
> > +=A0=A0=A0=A0=A0=A0=A0vback_porch =3D dsi->mode.vtotal - dsi->mode.vsyn=
c_end;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "hfront_porch =3D =
%d\n",
> > hfront_porch);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "hback_porch =3D %=
d\n",
> > hback_porch);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "hsync_len =3D %d\=
n",
> > hsync_len);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "hdisplay =3D %d\n=
", dsi-
> > >mode.hdisplay);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "vfront_porch =3D =
%d\n",
> > vfront_porch);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "vback_porch =3D %=
d\n",
> > vback_porch);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "vsync_len =3D %d\=
n",
> > vsync_len);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "vactive =3D %d\n"=
, dsi-
> > >mode.vdisplay);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "clock =3D %d kHz\=
n", dsi-
> > >mode.clock);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0color_format =3D nwl_dsi_get_dpi_pixel_format(dsi=
->format);
> > +=A0=A0=A0=A0=A0=A0=A0if (color_format < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Invalid color format
> > 0x%x\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0dsi->format);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return color_format;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "pixel fmt =3D %d\=
n", dsi-
> > >format);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_INTERFACE_COLOR_CODING,
> > NWL_DSI_DPI_24_BIT);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_PIXEL_FORMAT, color_fo=
rmat);
> > +=A0=A0=A0=A0=A0=A0=A0/*
> > +=A0=A0=A0=A0=A0=A0=A0=A0* Adjusting input polarity based on the video =
mode results
> > in
> > +=A0=A0=A0=A0=A0=A0=A0=A0* a black screen so always pick active low:
> > +=A0=A0=A0=A0=A0=A0=A0=A0*/
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_VSYNC_POLARITY,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0NWL_DSI=
_VSYNC_POLARITY_ACTIVE_LOW);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_HSYNC_POLARITY,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0NWL_DSI=
_HSYNC_POLARITY_ACTIVE_LOW);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0burst_mode =3D (dsi->dsi_mode_flags &
> > MIPI_DSI_MODE_VIDEO_BURST) &&
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0!(dsi->dsi=
_mode_flags &
> > MIPI_DSI_MODE_VIDEO_SYNC_PULSE);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (burst_mode) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_VIDEO_MODE,
> > NWL_DSI_VM_BURST_MODE);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_PIXEL_FIFO_SEND_LEVEL,
> > 256);
> > +=A0=A0=A0=A0=A0=A0=A0} else {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0mode =3D ((dsi->dsi_mode_=
flags &
> > MIPI_DSI_MODE_VIDEO_SYNC_PULSE) ?
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0NWL_DSI_VM_BURST_MODE_WITH_SYNC_PULSE
> > S :
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0NWL_DSI_VM_NON_BURST_MODE_WITH_SYNC_E
> > VENTS);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_VIDEO_MODE, mode);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_PIXEL_FIFO_SEND_LEVEL,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0dsi->mode.hdisplay);
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_HFP, hfront_porch);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_HBP, hback_porch);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_HSA, hsync_len);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_ENABLE_MULT_PKTS, 0x0);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_BLLP_MODE, 0x1);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_USE_NULL_PKT_BLLP, 0x0=
);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_VC, 0x0);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_PIXEL_PAYLOAD_SIZE, ds=
i-
> > >mode.hdisplay);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_VACTIVE, dsi->mode.vdi=
splay - 1);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_VBP, vback_porch);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_VFP, vfront_porch);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return nwl_dsi_clear_error(dsi);
> > +}
> > +
> > +static int nwl_dsi_init_interrupts(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0u32 irq_enable;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_IRQ_MASK, 0xffffffff);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_IRQ_MASK2, 0x7);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0irq_enable =3D ~(u32)(NWL_DSI_TX_PKT_DONE_MASK |
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0NWL_DSI_RX_PKT_HDR_RCVD_MASK |
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0NWL_DSI_TX_FIFO_OVFLW_MASK |
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0NWL_DSI_HS_TX_TIMEOUT_MASK);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_IRQ_MASK, irq_enable);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return nwl_dsi_clear_error(dsi);
> > +}
> > +
> > +static int nwl_dsi_host_attach(struct mipi_dsi_host *dsi_host,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0struct mipi_dsi_device *device)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D container_of(dsi_host, st=
ruct nwl_dsi,
> > dsi_host);
> > +=A0=A0=A0=A0=A0=A0=A0struct device *dev =3D dsi->dev;
> > +=A0=A0=A0=A0=A0=A0=A0struct drm_bridge *bridge;
> > +=A0=A0=A0=A0=A0=A0=A0struct drm_panel *panel;
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_INFO(dev, "lanes=3D%u, format=3D0x%x flag=
s=3D0x%lx\n",
> > device->lanes,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0device->fo=
rmat, device->mode_flags);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (device->lanes < 1 || device->lanes > 4)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return -EINVAL;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->lanes =3D device->lanes;
> > +=A0=A0=A0=A0=A0=A0=A0dsi->format =3D device->format;
> > +=A0=A0=A0=A0=A0=A0=A0dsi->dsi_mode_flags =3D device->mode_flags;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D drm_of_find_panel_or_bridge(dsi->dev->of_=
node, 1, 0,
> > &panel,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0&bridge);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (panel) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0bridge =3D drm_panel_brid=
ge_add(panel);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(bridge))
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
eturn PTR_ERR(bridge);
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->panel_bridge =3D bridge;
> > +=A0=A0=A0=A0=A0=A0=A0drm_bridge_add(&dsi->bridge);
> =

> This works only with a panel, but not with a bridge. For example,
> adv7511 bridge, will cal dsi_host_attach in it's drm_bridge_attach
> callback. Since you add our bridge only here, the bridge_attach from
> adv7511 will never be called so this callback will never be called.
> So, I'd suggest to call drm_bridge_add in probe, and
> move=A0drm_of_find_panel_or_bridge in our bridge_attach. Basically, you
> need to separate the bridge_attach operations from the dsi_host_attach
> operations.

Makes sense.

> =

> > +
> > +=A0=A0=A0=A0=A0=A0=A0return 0;
> > +}
> > +
> > +static int nwl_dsi_host_detach(struct mipi_dsi_host *dsi_host,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0struct mipi_dsi_device *device)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D container_of(dsi_host, st=
ruct nwl_dsi,
> > dsi_host);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0drm_of_panel_bridge_remove(dsi->dev->of_node, 1, =
0);
> > +=A0=A0=A0=A0=A0=A0=A0drm_bridge_remove(&dsi->bridge);
> =

> Also, these removes should be done in our bridge_remove. These are not
> related to the dsi_device.
> =

> > +
> > +=A0=A0=A0=A0=A0=A0=A0return 0;
> > +}
> > +
> > +static bool nwl_dsi_read_packet(struct nwl_dsi *dsi, u32 status)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct device *dev =3D dsi->dev;
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi_transfer *xfer =3D dsi->xfer;
> > +=A0=A0=A0=A0=A0=A0=A0int err;
> > +=A0=A0=A0=A0=A0=A0=A0u8 *payload =3D xfer->msg->rx_buf;
> > +=A0=A0=A0=A0=A0=A0=A0u32 val;
> > +=A0=A0=A0=A0=A0=A0=A0u16 word_count;
> > +=A0=A0=A0=A0=A0=A0=A0u8 channel;
> > +=A0=A0=A0=A0=A0=A0=A0u8 data_type;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0xfer->status =3D 0;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (xfer->rx_word_count =3D=3D 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (!(status & NWL_DSI_RX=
_PKT_HDR_RCVD))
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
eturn false;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/* Get the RX header and =
parse it */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0val =3D nwl_dsi_read(dsi,=
 NWL_DSI_RX_PKT_HEADER);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0err =3D nwl_dsi_clear_err=
or(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (err)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0x=
fer->status =3D err;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0word_count =3D NWL_DSI_WC=
(val);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0channel =3D NWL_DSI_RX_VC=
(val);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0data_type =3D NWL_DSI_RX_=
DT(val);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (channel !=3D xfer->ms=
g->channel) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_ERROR(dev,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0"[%02X] Channel mismatch (%u !=3D
> > %u)\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer->cmd, channel, xfer->msg-
> > >channel);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0x=
fer->status =3D -EINVAL;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
eturn true;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0switch (data_type) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0case MIPI_DSI_RX_GENERIC_=
SHORT_READ_RESPONSE_2BYTE:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/=
* Fall through */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0case MIPI_DSI_RX_DCS_SHOR=
T_READ_RESPONSE_2BYTE:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0i=
f (xfer->msg->rx_len > 1) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0/* read second byte */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0payload[1] =3D word_count >> 8;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0++xfer->rx_len;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/=
* Fall through */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0case MIPI_DSI_RX_GENERIC_=
SHORT_READ_RESPONSE_1BYTE:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/=
* Fall through */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0case MIPI_DSI_RX_DCS_SHOR=
T_READ_RESPONSE_1BYTE:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0i=
f (xfer->msg->rx_len > 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0/* read first byte */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0payload[0] =3D word_count & 0xff;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0++xfer->rx_len;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0x=
fer->status =3D xfer->rx_len;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
eturn true;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0case MIPI_DSI_RX_ACKNOWLE=
DGE_AND_ERROR_REPORT:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0w=
ord_count &=3D 0xff;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_ERROR(dev, "[%02X] DSI error report:
> > 0x%02x\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer->cmd, word_count);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0x=
fer->status =3D -EPROTO;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
eturn true;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (word_count > xfer->ms=
g->rx_len) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_ERROR(
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0dev,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0"[%02X] Receive buffer too small: %zu
> > (< %u)\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0xfer->cmd, xfer->msg->rx_len,
> > word_count);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0x=
fer->status =3D -EINVAL;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
eturn true;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer->rx_word_count =3D w=
ord_count;
> > +=A0=A0=A0=A0=A0=A0=A0} else {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/* Set word_count from pr=
evious header read */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0word_count =3D xfer->rx_w=
ord_count;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* If RX payload is not yet received, wait for it=
 */
> > +=A0=A0=A0=A0=A0=A0=A0if (!(status & NWL_DSI_RX_PKT_PAYLOAD_DATA_RCVD))
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return false;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* Read the RX payload */
> > +=A0=A0=A0=A0=A0=A0=A0while (word_count >=3D 4) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0val =3D nwl_dsi_read(dsi,=
 NWL_DSI_RX_PAYLOAD);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0payload[0] =3D (val >> 0)=
 & 0xff;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0payload[1] =3D (val >> 8)=
 & 0xff;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0payload[2] =3D (val >> 16=
) & 0xff;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0payload[3] =3D (val >> 24=
) & 0xff;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0payload +=3D 4;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer->rx_len +=3D 4;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0word_count -=3D 4;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (word_count > 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0val =3D nwl_dsi_read(dsi,=
 NWL_DSI_RX_PAYLOAD);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0switch (word_count) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0case 3:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0p=
ayload[2] =3D (val >> 16) & 0xff;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0+=
+xfer->rx_len;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/=
* Fall through */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0case 2:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0p=
ayload[1] =3D (val >> 8) & 0xff;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0+=
+xfer->rx_len;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/=
* Fall through */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0case 1:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0p=
ayload[0] =3D (val >> 0) & 0xff;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0+=
+xfer->rx_len;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0b=
reak;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0xfer->status =3D xfer->rx_len;
> > +=A0=A0=A0=A0=A0=A0=A0err =3D nwl_dsi_clear_error(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0if (err)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer->status =3D err;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return true;
> > +}
> > +
> > +static void nwl_dsi_finish_transmission(struct nwl_dsi *dsi, u32
> > status)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi_transfer *xfer =3D dsi->xfer;
> > +=A0=A0=A0=A0=A0=A0=A0bool end_packet =3D false;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (!xfer)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (xfer->direction =3D=3D DSI_PACKET_SEND &&
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0status & NWL_DSI_TX_PKT_DONE) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer->status =3D xfer->tx=
_len;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0end_packet =3D true;
> > +=A0=A0=A0=A0=A0=A0=A0} else if (status & NWL_DSI_DPHY_DIRECTION &&
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0((status & (NWL_=
DSI_RX_PKT_HDR_RCVD |
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0NWL_DSI_RX_PKT_PAYLOAD_DATA_RCVD)))) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0end_packet =3D nwl_dsi_re=
ad_packet(dsi, status);
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (end_packet)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0complete(&xfer->completed=
);
> > +}
> > +
> > +static void nwl_dsi_begin_transmission(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi_transfer *xfer =3D dsi->xfer;
> > +=A0=A0=A0=A0=A0=A0=A0struct mipi_dsi_packet *pkt =3D &xfer->packet;
> > +=A0=A0=A0=A0=A0=A0=A0const u8 *payload;
> > +=A0=A0=A0=A0=A0=A0=A0size_t length;
> > +=A0=A0=A0=A0=A0=A0=A0u16 word_count;
> > +=A0=A0=A0=A0=A0=A0=A0u8 hs_mode;
> > +=A0=A0=A0=A0=A0=A0=A0u32 val;
> > +=A0=A0=A0=A0=A0=A0=A0u32 hs_workaround =3D 0;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* Send the payload, if any */
> > +=A0=A0=A0=A0=A0=A0=A0length =3D pkt->payload_length;
> > +=A0=A0=A0=A0=A0=A0=A0payload =3D pkt->payload;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0while (length >=3D 4) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0val =3D *(u32 *)payload;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0hs_workaround |=3D !(val =
& 0xFFFF00);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_TX_PAYLOAD, val);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0payload +=3D 4;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0length -=3D 4;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0/* Send the rest of the payload */
> > +=A0=A0=A0=A0=A0=A0=A0val =3D 0;
> > +=A0=A0=A0=A0=A0=A0=A0switch (length) {
> > +=A0=A0=A0=A0=A0=A0=A0case 3:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0val |=3D payload[2] << 16;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/* Fall through */
> > +=A0=A0=A0=A0=A0=A0=A0case 2:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0val |=3D payload[1] << 8;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0hs_workaround |=3D !(val =
& 0xFFFF00);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/* Fall through */
> > +=A0=A0=A0=A0=A0=A0=A0case 1:
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0val |=3D payload[0];
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DS=
I_TX_PAYLOAD, val);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0break;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0xfer->tx_len =3D pkt->payload_length;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/*
> > +=A0=A0=A0=A0=A0=A0=A0=A0* Send the header
> > +=A0=A0=A0=A0=A0=A0=A0=A0* header[0] =3D Virtual Channel + Data Type
> > +=A0=A0=A0=A0=A0=A0=A0=A0* header[1] =3D Word Count LSB (LP) or first p=
aram (SP)
> > +=A0=A0=A0=A0=A0=A0=A0=A0* header[2] =3D Word Count MSB (LP) or second =
param (SP)
> > +=A0=A0=A0=A0=A0=A0=A0=A0*/
> > +=A0=A0=A0=A0=A0=A0=A0word_count =3D pkt->header[1] | (pkt->header[2] <=
< 8);
> > +=A0=A0=A0=A0=A0=A0=A0if (hs_workaround && (dsi->quirks & E11418_HS_MOD=
E_QUIRK)) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi-=
>dev,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0"Using hs mode workaround for
> > cmd 0x%x\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer->cmd);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0hs_mode =3D 1;
> > +=A0=A0=A0=A0=A0=A0=A0} else {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0hs_mode =3D (xfer->msg->f=
lags & MIPI_DSI_MSG_USE_LPM) ?
> > 0 : 1;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0val =3D NWL_DSI_WC(word_count) | NWL_DSI_TX_VC(xf=
er->msg-
> > >channel) |
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0NWL_DSI_TX_DT(xfer->msg->type) |
> > NWL_DSI_HS_SEL(hs_mode) |
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0NWL_DSI_BTA_TX(xfer->need_bta);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_PKT_CONTROL, val);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* Send packet command */
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_write(dsi, NWL_DSI_SEND_PACKET, 0x1);
> > +}
> > +
> > +static ssize_t nwl_dsi_host_transfer(struct mipi_dsi_host *dsi_host,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0const struct mipi_dsi_msg *msg)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D container_of(dsi_host, st=
ruct nwl_dsi,
> > dsi_host);
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi_transfer xfer;
> > +=A0=A0=A0=A0=A0=A0=A0ssize_t ret =3D 0;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* Create packet to be sent */
> > +=A0=A0=A0=A0=A0=A0=A0dsi->xfer =3D &xfer;
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D mipi_dsi_create_packet(&xfer.packet, msg);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dsi->xfer =3D NULL;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if ((msg->type & MIPI_DSI_GENERIC_READ_REQUEST_0_=
PARAM ||
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0msg->type & MIPI_DSI_GENERIC_READ_=
REQUEST_1_PARAM ||
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0msg->type & MIPI_DSI_GENERIC_READ_=
REQUEST_2_PARAM ||
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0msg->type & MIPI_DSI_DCS_READ) &&
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0msg->rx_len > 0 && msg->rx_buf !=3D N=
ULL)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer.direction =3D DSI_PA=
CKET_RECEIVE;
> > +=A0=A0=A0=A0=A0=A0=A0else
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer.direction =3D DSI_PA=
CKET_SEND;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0xfer.need_bta =3D (xfer.direction =3D=3D DSI_PACK=
ET_RECEIVE);
> > +=A0=A0=A0=A0=A0=A0=A0xfer.need_bta |=3D (msg->flags & MIPI_DSI_MSG_REQ=
_ACK) ? 1 : 0;
> > +=A0=A0=A0=A0=A0=A0=A0xfer.msg =3D msg;
> > +=A0=A0=A0=A0=A0=A0=A0xfer.status =3D -ETIMEDOUT;
> > +=A0=A0=A0=A0=A0=A0=A0xfer.rx_word_count =3D 0;
> > +=A0=A0=A0=A0=A0=A0=A0xfer.rx_len =3D 0;
> > +=A0=A0=A0=A0=A0=A0=A0xfer.cmd =3D 0x00;
> > +=A0=A0=A0=A0=A0=A0=A0if (msg->tx_len > 0)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0xfer.cmd =3D ((u8 *)(msg-=
>tx_buf))[0];
> > +=A0=A0=A0=A0=A0=A0=A0init_completion(&xfer.completed);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D clk_prepare_enable(dsi->rx_esc_clk);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to enable rx_esc clk:
> > %zd\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "Enabled rx_esc cl=
k @%lu
> > Hz\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0clk_get_rate(dsi->rx_esc_clk));
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* Initiate the DSI packet transmision */
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_begin_transmission(dsi);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (!wait_for_completion_timeout(&xfer.completed,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0NWL_DSI_MIPI_FIFO_TIMEOU=
T))
> > {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi_host->d=
ev, "[%02X] DSI transfer
> > timed out\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0xfer.cmd);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D -ETIMEDOUT;
> > +=A0=A0=A0=A0=A0=A0=A0} else {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D xfer.status;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0clk_disable_unprepare(dsi->rx_esc_clk);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return ret;
> > +}
> > +
> > +static const struct mipi_dsi_host_ops nwl_dsi_host_ops =3D {
> > +=A0=A0=A0=A0=A0=A0=A0.attach =3D nwl_dsi_host_attach,
> > +=A0=A0=A0=A0=A0=A0=A0.detach =3D nwl_dsi_host_detach,
> > +=A0=A0=A0=A0=A0=A0=A0.transfer =3D nwl_dsi_host_transfer,
> > +};
> > +
> > +static irqreturn_t nwl_dsi_irq_handler(int irq, void *data)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0u32 irq_status;
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D data;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0irq_status =3D nwl_dsi_read(dsi, NWL_DSI_IRQ_STAT=
US);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (irq_status & NWL_DSI_TX_FIFO_OVFLW)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR_RATELIMITED=
(dsi->dev, "tx fifo
> > overflow\n");
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (irq_status & NWL_DSI_HS_TX_TIMEOUT)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR_RATELIMITED=
(dsi->dev, "HS tx
> > timeout\n");
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (irq_status & NWL_DSI_TX_PKT_DONE ||
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0irq_status & NWL_DSI_RX_PKT_HDR_RCVD =
||
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0irq_status & NWL_DSI_RX_PKT_PAYLOAD_D=
ATA_RCVD)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0nwl_dsi_finish_transmissi=
on(dsi, irq_status);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return IRQ_HANDLED;
> > +}
> > +
> > +static int nwl_dsi_enable(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct device *dev =3D dsi->dev;
> > +=A0=A0=A0=A0=A0=A0=A0union phy_configure_opts *phy_cfg =3D &dsi->phy_c=
fg;
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (!dsi->lanes) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev, "Need =
DSI lanes: %d\n", dsi-
> > >lanes);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return -EINVAL;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D phy_init(dsi->phy);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev, "Faile=
d to init DSI phy: %d\n",
> > ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D phy_configure(dsi->phy, phy_cfg);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev, "Faile=
d to configure DSI phy:
> > %d\n", ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto uninit_phy;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D clk_prepare_enable(dsi->tx_esc_clk);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to enable tx_esc clk:
> > %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto uninit_phy;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "Enabled tx_esc cl=
k @%lu
> > Hz\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0clk_get_rate(dsi->tx_esc_clk));
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D nwl_dsi_config_host(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev, "Faile=
d to set up DSI: %d", ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto disable_clock;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D nwl_dsi_config_dpi(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev, "Faile=
d to set up DPI: %d", ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto disable_clock;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D phy_power_on(dsi->phy);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev, "Faile=
d to power on DPHY (%d)\n",
> > ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto disable_clock;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D nwl_dsi_init_interrupts(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto power_off_phy;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return ret;
> > +
> > +power_off_phy:
> > +=A0=A0=A0=A0=A0=A0=A0phy_power_off(dsi->phy);
> > +disable_clock:
> > +=A0=A0=A0=A0=A0=A0=A0clk_disable_unprepare(dsi->tx_esc_clk);
> > +uninit_phy:
> > +=A0=A0=A0=A0=A0=A0=A0phy_exit(dsi->phy);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return ret;
> > +}
> > +
> > +static int nwl_dsi_disable(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct device *dev =3D dsi->dev;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dev, "Disabling clocks and p=
hy\n");
> > +
> > +=A0=A0=A0=A0=A0=A0=A0phy_power_off(dsi->phy);
> > +=A0=A0=A0=A0=A0=A0=A0phy_exit(dsi->phy);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* Disabling the clock before the phy breaks enab=
ling dsi
> > again */
> > +=A0=A0=A0=A0=A0=A0=A0clk_disable_unprepare(dsi->tx_esc_clk);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return 0;
> > +}
> > +
> > +static int nwl_dsi_set_platform_clocks(struct nwl_dsi *dsi, bool
> > enable)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct device *dev =3D dsi->dev;
> > +=A0=A0=A0=A0=A0=A0=A0const char *id;
> > +=A0=A0=A0=A0=A0=A0=A0struct clk *clk;
> > +=A0=A0=A0=A0=A0=A0=A0size_t i;
> > +=A0=A0=A0=A0=A0=A0=A0unsigned long rate;
> > +=A0=A0=A0=A0=A0=A0=A0int ret, result =3D 0;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dev, "%s platform clocks\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0enable ? "enabling" : "disabling");
> > +=A0=A0=A0=A0=A0=A0=A0for (i =3D 0; i < ARRAY_SIZE(dsi->pdata->clk_conf=
ig); i++) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (!dsi->clk_config[i].p=
resent)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0c=
ontinue;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0id =3D dsi->clk_config[i]=
.id;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0clk =3D dsi->clk_config[i=
].clk;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (enable) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
et =3D clk_prepare_enable(clk);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0i=
f (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0"Failed t=
o enable %s
> > clk: %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0id, ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0result =3D result ?: ret;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
ate =3D clk_get_rate(clk);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_DEBUG_DRIVER(dev, "Enabled %s clk
> > @%lu Hz\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0id, rate);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0} else {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0c=
lk_disable_unprepare(clk);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_DEBUG_DRIVER(dev, "Disabled %s
> > clk\n", id);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return result;
> > +}
> > +
> > +static int nwl_dsi_plat_enable(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct device *dev =3D dsi->dev;
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->pdata->select_input) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D dsi->pdata->selec=
t_input(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (ret < 0)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
eturn ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> =

> Since the select_input always reads the dtb (and at runtime this node
> never changes anyway) I think it's best to use the select_input at
> probe since it is only needed once and also drop the deselect_input.
>
> =

> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D nwl_dsi_set_platform_clocks(dsi, true);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D dsi->pdata->poweron(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev, "Faile=
d to power on DSI: %d\n",
> > ret);
> > +=A0=A0=A0=A0=A0=A0=A0return ret;
> > +}
> > +
> > +static void nwl_dsi_plat_disable(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0dsi->pdata->poweroff(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_set_platform_clocks(dsi, false);
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->pdata->deselect_input)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dsi->pdata->deselect_inpu=
t(dsi);
> > +}
> > +
> > +static void nwl_dsi_bridge_disable(struct drm_bridge *bridge)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_disable(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_plat_disable(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0pm_runtime_put(dsi->dev);
> > +}
> > +
> > +static int nwl_dsi_get_dphy_params(struct nwl_dsi *dsi,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0const struct drm_display_mode
> > *mode,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0union phy_configure_opts
> > *phy_opts)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0unsigned long rate;
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->lanes < 1 || dsi->lanes > 4)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return -EINVAL;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/*
> > +=A0=A0=A0=A0=A0=A0=A0=A0* So far the DPHY spec minimal timings work fo=
r both mixel
> > +=A0=A0=A0=A0=A0=A0=A0=A0* dphy and nwl dsi host
> > +=A0=A0=A0=A0=A0=A0=A0=A0*/
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D phy_mipi_dphy_get_default_config(
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0mode->crtc_clock * 1000,
> =

> Why are you using crtc_clock here? I this this should be used only by
> the CRTC component. I'd suggest to use mode->clock here, since it is
> about the output clock of the DSI, not the input clock on the DPI
> interface, that is coming from CRTC.

crtc_clock is the actual pixel dot clock used which sounds like the
one we want to base our calcualations on, no?

> =A0
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0mipi_dsi_pixel_format_to_=
bpp(dsi->format), dsi-
> > >lanes,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0&phy_opts->mipi_dphy);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0rate =3D clk_get_rate(dsi->tx_esc_clk);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi->dev, "LP clk is @%lu Hz=
\n", rate);
> > +=A0=A0=A0=A0=A0=A0=A0phy_opts->mipi_dphy.lp_clk_rate =3D rate;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return 0;
> > +}
> > +
> > +static bool nwl_dsi_bridge_mode_fixup(struct drm_bridge *bridge,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0const struct drm_display_mode
> > *mode,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0struct drm_display_mode
> > *adjusted_mode)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0/* At least LCDIF + NWL needs active high sync */
> > +=A0=A0=A0=A0=A0=A0=A0adjusted_mode->flags |=3D (DRM_MODE_FLAG_PHSYNC |
> > DRM_MODE_FLAG_PVSYNC);
> > +=A0=A0=A0=A0=A0=A0=A0adjusted_mode->flags &=3D ~(DRM_MODE_FLAG_NHSYNC |
> > DRM_MODE_FLAG_NVSYNC);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return true;
> > +}
> > +
> > +static enum drm_mode_status
> > +nwl_dsi_bridge_mode_valid(struct drm_bridge *bridge,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0const struct drm_display_mode *mode)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +=A0=A0=A0=A0=A0=A0=A0int bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->for=
mat);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (mode->clock * bpp > 15000000 * dsi->lanes)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return MODE_CLOCK_HIGH;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (mode->clock * bpp < 80000 * dsi->lanes)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return MODE_CLOCK_LOW;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return MODE_OK;
> > +}
> > +
> > +static void
> > +nwl_dsi_bridge_mode_set(struct drm_bridge *bridge,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0c=
onst struct drm_display_mode *mode,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0c=
onst struct drm_display_mode *adjusted_mode)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +=A0=A0=A0=A0=A0=A0=A0struct device *dev =3D dsi->dev;
> > +=A0=A0=A0=A0=A0=A0=A0union phy_configure_opts new_cfg;
> > +=A0=A0=A0=A0=A0=A0=A0unsigned long phy_ref_rate;
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D nwl_dsi_get_dphy_params(dsi, adjusted_mod=
e, &new_cfg);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/*
> > +=A0=A0=A0=A0=A0=A0=A0=A0* If hs clock is unchanged, we're all good - a=
ll parameters
> > are
> > +=A0=A0=A0=A0=A0=A0=A0=A0* derived from it atm.
> > +=A0=A0=A0=A0=A0=A0=A0=A0*/
> > +=A0=A0=A0=A0=A0=A0=A0if (new_cfg.mipi_dphy.hs_clk_rate =3D=3D dsi-
> > >phy_cfg.mipi_dphy.hs_clk_rate)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0phy_ref_rate =3D clk_get_rate(dsi->phy_ref_clk);
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dev, "PHY at ref rate: %lu\n=
",
> > phy_ref_rate);
> > +=A0=A0=A0=A0=A0=A0=A0/* Save the new desired phy config */
> > +=A0=A0=A0=A0=A0=A0=A0memcpy(&dsi->phy_cfg, &new_cfg, sizeof(new_cfg));
> > +
> > +=A0=A0=A0=A0=A0=A0=A0memcpy(&dsi->mode, adjusted_mode, sizeof(dsi->mod=
e));
> > +=A0=A0=A0=A0=A0=A0=A0drm_mode_debug_printmodeline(adjusted_mode);
> > +}
> > +
> > +static void nwl_dsi_bridge_pre_enable(struct drm_bridge *bridge)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0pm_runtime_get_sync(dsi->dev);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_plat_enable(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0nwl_dsi_enable(dsi);
> > +}
> > +
> > +static int nwl_dsi_bridge_attach(struct drm_bridge *bridge)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return drm_bridge_attach(bridge->encoder, dsi->pa=
nel_bridge,
> > bridge);
> > +}
> > +
> > +static const struct drm_bridge_funcs nwl_dsi_bridge_funcs =3D {
> > +=A0=A0=A0=A0=A0=A0=A0.pre_enable =3D nwl_dsi_bridge_pre_enable,
> > +=A0=A0=A0=A0=A0=A0=A0.disable=A0=A0=A0=A0=3D nwl_dsi_bridge_disable,
> > +=A0=A0=A0=A0=A0=A0=A0.mode_fixup =3D nwl_dsi_bridge_mode_fixup,
> > +=A0=A0=A0=A0=A0=A0=A0.mode_set=A0=A0=A0=3D nwl_dsi_bridge_mode_set,
> > +=A0=A0=A0=A0=A0=A0=A0.mode_valid =3D nwl_dsi_bridge_mode_valid,
> > +=A0=A0=A0=A0=A0=A0=A0.attach=A0=A0=A0=A0=A0=3D nwl_dsi_bridge_attach,
> > +};
> > +
> > +static int nwl_dsi_parse_dt(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct platform_device *pdev =3D to_platform_devi=
ce(dsi->dev);
> > +=A0=A0=A0=A0=A0=A0=A0struct clk *clk;
> > +=A0=A0=A0=A0=A0=A0=A0const char *clk_id;
> > +=A0=A0=A0=A0=A0=A0=A0void __iomem *base;
> > +=A0=A0=A0=A0=A0=A0=A0int i, ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->phy =3D devm_phy_get(dsi->dev, "dphy");
> > +=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(dsi->phy)) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D PTR_ERR(dsi->phy);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (ret !=3D -EPROBE_DEFE=
R)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_ERROR(dsi->dev, "Could not get PHY:
> > %d\n", ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* Platform dependent clocks */
> > +=A0=A0=A0=A0=A0=A0=A0memcpy(dsi->clk_config, dsi->pdata->clk_config,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0sizeof(dsi->pdata->clk_confi=
g));
> > +
> > +=A0=A0=A0=A0=A0=A0=A0for (i =3D 0; i < ARRAY_SIZE(dsi->pdata->clk_conf=
ig); i++) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (!dsi->clk_config[i].p=
resent)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0c=
ontinue;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0clk_id =3D dsi->clk_confi=
g[i].id;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0clk =3D devm_clk_get(dsi-=
>dev, clk_id);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(clk)) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
et =3D PTR_ERR(clk);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_ERROR(dsi->dev, "Failed to get %s
> > clock: %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0clk_id, ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
eturn ret;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_DEBUG_DRIVER(dsi-=
>dev, "Setup clk %s (rate:
> > %lu)\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0clk_id, clk_get_rate(clk));
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dsi->clk_config[i].clk =
=3D clk;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* DSI clocks */
> > +=A0=A0=A0=A0=A0=A0=A0clk =3D devm_clk_get(dsi->dev, "phy_ref");
> > +=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(clk)) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D PTR_ERR(clk);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to get phy_ref clock:
> > %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0dsi->phy_ref_clk =3D clk;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0clk =3D devm_clk_get(dsi->dev, "rx_esc");
> > +=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(clk)) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D PTR_ERR(clk);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to get rx_esc clock:
> > %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0dsi->rx_esc_clk =3D clk;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0clk =3D devm_clk_get(dsi->dev, "tx_esc");
> > +=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(clk)) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D PTR_ERR(clk);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to get tx_esc clock:
> > %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0dsi->tx_esc_clk =3D clk;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->mux =3D devm_mux_control_get(dsi->dev, NULL);
> > +=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(dsi->mux)) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D PTR_ERR(dsi->mux);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (ret !=3D -EPROBE_DEFE=
R)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_ERROR(dsi->dev, "Failed to get mux:
> > %d\n", ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0base =3D devm_platform_ioremap_resource(pdev, 0);
> > +=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(base))
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return PTR_ERR(base);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->regmap =3D
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0devm_regmap_init_mmio(dsi=
->dev, base,
> > &nwl_dsi_regmap_config);
> > +=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(dsi->regmap)) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D PTR_ERR(dsi->regm=
ap);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to create NWL DSI
> > regmap: %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->irq =3D platform_get_irq(pdev, 0);
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->irq < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to get device IRQ:
> > %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0dsi->irq);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return dsi->irq;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->rstc =3D devm_reset_control_array_get(dsi->d=
ev, false,
> > true);
> > +=A0=A0=A0=A0=A0=A0=A0if (IS_ERR(dsi->rstc)) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D PTR_ERR(dsi->rstc=
);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (ret !=3D -EPROBE_DEFE=
R)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_ERROR(dsi->dev, "Failed to get
> > resets: %d\n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> =

> Since you dropped the reset quirk (which is a good idea, but it needs a
> backup), I would like to tell you about our findings. So, as you know,
> DSi can receive input from DCSS or LCDIF (this is done through a mux).
> Now, the reset of the DSI block is not handled directly through the
> System Reset Controller (as initially I though). The signals coming
> from SRC are going into a reset_sync (Reset Synchronyzer block),
> because the DSI block needs the reset signals to be=A0synchronous de-
> asserted.
> Recently, we discovered the bug that was not allowing us to correctly
> reset the DSI and also why that quirk was initially used.
> Normally, the output pixel-clock that was coming from that mux should
> be used as a clock for the reset_sync, but due to a design issue in the
> core, the LCDIF pixel-clock was used to drive this reset_sync.
> So, since HW bug here which can be managed in SW, what we did is to add
> the LCDIF pixel-clock to this driver (in dts it can be added as an
> external clock needed for reset_sync). I know it is a nasty external
> depencency, but this is the part in SW that fixes the issue in HW.
> Now: the LCDIF pixel-clock needs bo be on for the whole duration of the
> DSI operation, This means that LCDIF should be enabled before de-
> asserting the reset signals, then disabled after we are done with DSI
> and assert the reset signals back.

Pulling in the lcdif clock as optional clock works but how do things
work with DCSS? What clock will reset need to be synced there too? 'pix'?

> =

> Next, I want to detail you the sequence of the operations that needs to
> be done, since while debugging this issue we received the correct
> sequence from Northwest Logic representatives. This sequence is an
> absolute requirement for a proper initialization and I will detail it
> below:
> 1. De-assert 'pclk' reset (this is needed to have acces to the DSI
> registers)
> 2. Configure DSI Host
> 3. Configure DHPY
> 4. Enable DPHY
> 5. De-assert 'esc' and 'byte' resets (these are needed for Host TX
> operations)
> 6. Send DSI commands (if the DSI peripheral needs configuration)
> 7. De-assert 'dpi' reset (de-asserting this reset, will enable the DPI
> to start fetching data from it's input and start streaming DSI data)

Very nice! Especially the last part (e.g. keeping the dsi lanes free of
signal output until the dsi setup commands went through) answers some
questions I asked NXP a while ago in the forums but did not get a
reply. That should make things way more robust.

> You will see that I left the 'dpi' reset at the end, so that the 'DSI
> peripheral initialization' step will be clean. DSI lanes needs to be
> clean during this phase and not be "poluted" by any pixel data that DPI
> thinks it needs to stream. On my side, I tried to separate the above
> steps by implementing steps 1-5 in bridge_pre_enable, hoping that the
> step 6 will be automatically run in panel enable phase, and finally
> have step 7 implemented in bridge_enable. Unfortunatelly, the order of
> calls for enable is exactly the oposite way as for pre_enable, which
> makes impossible to have the step 7 executed AFTER step 6.
> In bridge_pre_enable, the pre_enable for the bridge chain is executed
> first, then our pre_enable is executed.
> In bridge_enable, our enable is executed first, then the enable for
> brigde chain is executed. This means that step 7 will end up executed
> before step 6, causing the 'DSI lane polution' I was talking above.
> As of now, I didn't manage to find a way to fix this, but I will keep
> investigating. If you have a good ideea for this it woule be great.
> So, with all the above details, I think you will need to treat each
> reset individually, instead of treating them as an array.
> =

> > +
> > +=A0=A0=A0=A0=A0=A0=A0return 0;
> > +}
> > +
> > +static int imx8mq_dsi_select_input(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct device_node *remote;
> > +=A0=A0=A0=A0=A0=A0=A0u32 use_dcss =3D 1;
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0remote =3D of_graph_get_remote_node(dsi->dev->of_=
node, 0,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0NWL_DSI_ENDPOINT_LCDI=
F);
> > +=A0=A0=A0=A0=A0=A0=A0if (remote) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0use_dcss =3D 0;
> > +=A0=A0=A0=A0=A0=A0=A0} else {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0remote =3D of_graph_get_r=
emote_node(dsi->dev->of_node,
> > 0,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0NWL_DSI_ENDPOINT_DC
> > SS);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (!remote) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0D=
RM_DEV_ERROR(dsi->dev,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0"No valid input endpoint
> > found\n");
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
eturn -EINVAL;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0DRM_DEV_INFO(dsi->dev, "Using %s as input source\=
n",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0(use_dcss)=
 ? "DCSS" : "LCDIF");
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D mux_control_try_select(dsi->mux, use_dcss=
);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to select input:
> > %d\n", ret);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0of_node_put(remote);
> > +=A0=A0=A0=A0=A0=A0=A0return ret;
> > +}
> > +
> > +static int imx8mq_dsi_deselect_input(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D mux_control_deselect(dsi->mux);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dsi->dev, "=
Failed to deselect input:
> > %d\n", ret);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return ret;
> > +}
> > +
> > +
> > +static int imx8mq_dsi_poweron(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0int ret =3D 0;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0/* otherwise the display stays blank */
> > +=A0=A0=A0=A0=A0=A0=A0usleep_range(200, 300);
> =

> If you implement the part with LCDIF clock detailed above, you can drop
> this sleep. Also, poweron should be replaced by various reset callbacks
> (ex: pclk_reset, mipi_reset, dpi_reset).
> =

> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->rstc)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D reset_control_dea=
ssert(dsi->rstc);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0return ret;
> > +}
> > +
> > +static int imx8mq_dsi_poweroff(struct nwl_dsi *dsi)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0int ret =3D 0;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0if (dsi->rstc)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret =3D reset_control_ass=
ert(dsi->rstc);
> > +=A0=A0=A0=A0=A0=A0=A0return ret;
> > +}
> > +
> > +static const struct drm_bridge_timings nwl_dsi_timings =3D {
> > +=A0=A0=A0=A0=A0=A0=A0.input_bus_flags =3D DRM_BUS_FLAG_DE_LOW,
> > +};
> > +
> > +static const struct nwl_dsi_platform_data imx8mq_dev =3D {
> > +=A0=A0=A0=A0=A0=A0=A0.poweron =3D &imx8mq_dsi_poweron,
> > +=A0=A0=A0=A0=A0=A0=A0.poweroff =3D &imx8mq_dsi_poweroff,
> > +=A0=A0=A0=A0=A0=A0=A0.select_input =3D &imx8mq_dsi_select_input,
> > +=A0=A0=A0=A0=A0=A0=A0.deselect_input =3D &imx8mq_dsi_deselect_input,
> > +=A0=A0=A0=A0=A0=A0=A0.clk_config =3D {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0{ .id =3D NWL_DSI_CLK_COR=
E, .present =3D true },
> > +=A0=A0=A0=A0=A0=A0=A0},
> > +};
> > +
> > +static const struct of_device_id nwl_dsi_dt_ids[] =3D {
> > +=A0=A0=A0=A0=A0=A0=A0{ .compatible =3D "fsl,imx8mq-nwl-dsi", .data =3D=
 &imx8mq_dev, },
> > +=A0=A0=A0=A0=A0=A0=A0{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, nwl_dsi_dt_ids);
> > +
> > +static const struct soc_device_attribute nwl_dsi_quirks_match[] =3D {
> > +=A0=A0=A0=A0=A0=A0=A0{ .soc_id =3D "i.MX8MQ", .revision =3D "2.0",
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0.data =3D (void *)E11418_HS_MODE_QUIRK },
> > +=A0=A0=A0=A0=A0=A0=A0{ /* sentinel. */ },
> > +};
> > +
> > +static int nwl_dsi_probe(struct platform_device *pdev)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct device *dev =3D &pdev->dev;
> > +=A0=A0=A0=A0=A0=A0=A0const struct of_device_id *of_id =3D
> > of_match_device(nwl_dsi_dt_ids, dev);
> > +=A0=A0=A0=A0=A0=A0=A0const struct nwl_dsi_platform_data *pdata =3D of_=
id->data;
> > +=A0=A0=A0=A0=A0=A0=A0const struct soc_device_attribute *attr;
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi;
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi =3D devm_kzalloc(dev, sizeof(*dsi), GFP_KERNE=
L);
> > +=A0=A0=A0=A0=A0=A0=A0if (!dsi)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return -ENOMEM;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->dev =3D dev;
> > +=A0=A0=A0=A0=A0=A0=A0dsi->pdata =3D pdata;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D nwl_dsi_parse_dt(dsi);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D devm_request_irq(dev, dsi->irq, nwl_dsi_i=
rq_handler, 0,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0dev_name(dev), dsi);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev, "Faile=
d to request IRQ %d: %d\n",
> > dsi->irq,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->dsi_host.ops =3D &nwl_dsi_host_ops;
> > +=A0=A0=A0=A0=A0=A0=A0dsi->dsi_host.dev =3D dev;
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D mipi_dsi_host_register(&dsi->dsi_host);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0DRM_DEV_ERROR(dev, "Faile=
d to register MIPI host:
> > %d\n", ret);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0attr =3D soc_device_match(nwl_dsi_quirks_match);
> > +=A0=A0=A0=A0=A0=A0=A0if (attr)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dsi->quirks =3D (uintptr_=
t)attr->data;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dsi->bridge.driver_private =3D dsi;
> > +=A0=A0=A0=A0=A0=A0=A0dsi->bridge.funcs =3D &nwl_dsi_bridge_funcs;
> > +=A0=A0=A0=A0=A0=A0=A0dsi->bridge.of_node =3D dev->of_node;
> > +=A0=A0=A0=A0=A0=A0=A0dsi->bridge.timings =3D &nwl_dsi_timings;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0dev_set_drvdata(dev, dsi);
> > +=A0=A0=A0=A0=A0=A0=A0pm_runtime_enable(dev);
> > +=A0=A0=A0=A0=A0=A0=A0return 0;
> > +}
> > +
> > +static int nwl_dsi_remove(struct platform_device *pdev)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0struct nwl_dsi *dsi =3D platform_get_drvdata(pdev=
);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0mipi_dsi_host_unregister(&dsi->dsi_host);
> > +=A0=A0=A0=A0=A0=A0=A0pm_runtime_disable(&pdev->dev);
> > +=A0=A0=A0=A0=A0=A0=A0return 0;
> > +}
> > +
> > +static struct platform_driver nwl_dsi_driver =3D {
> > +=A0=A0=A0=A0=A0=A0=A0.probe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=3D nwl_dsi_p=
robe,
> > +=A0=A0=A0=A0=A0=A0=A0.remove=A0=A0=A0=A0=A0=A0=A0=A0=A0=3D nwl_dsi_rem=
ove,
> > +=A0=A0=A0=A0=A0=A0=A0.driver=A0=A0=A0=A0=A0=A0=A0=A0=A0=3D {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0.of_match_table =3D nwl_d=
si_dt_ids,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0.name=A0=A0=A0=3D DRV_NAM=
E,
> > +=A0=A0=A0=A0=A0=A0=A0},
> > +};
> > +
> > +module_platform_driver(nwl_dsi_driver);
> > +
> > +MODULE_AUTHOR("NXP Semiconductor");
> > +MODULE_AUTHOR("Purism SPC");
> > +MODULE_DESCRIPTION("Northwest Logic MIPI-DSI driver");
> > +MODULE_LICENSE("GPL"); /* GPLv2 or later */
> > diff --git a/drivers/gpu/drm/bridge/nwl-dsi.h
> > b/drivers/gpu/drm/bridge/nwl-dsi.h
> > new file mode 100644
> > index 000000000000..a247a8a11c7c
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/nwl-dsi.h
> > @@ -0,0 +1,144 @@
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
> > +/* DSI HOST registers */
> > +#define NWL_DSI_CFG_NUM_LANES=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A00x0
> > +#define NWL_DSI_CFG_NONCONTINUOUS_CLK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x4
> > +#define NWL_DSI_CFG_T_PRE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00x8
> > +#define NWL_DSI_CFG_T_POST=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00xc
> > +#define NWL_DSI_CFG_TX_GAP=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00x10
> > +#define NWL_DSI_CFG_AUTOINSERT_EOTP=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A00x14
> > +#define NWL_DSI_CFG_EXTRA_CMDS_AFTER_EOTP=A0=A0=A0=A0=A0=A00x18
> > +#define NWL_DSI_CFG_HTX_TO_COUNT=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A00x1c
> > +#define NWL_DSI_CFG_LRX_H_TO_COUNT=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A00x20
> > +#define NWL_DSI_CFG_BTA_H_TO_COUNT=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A00x24
> > +#define NWL_DSI_CFG_TWAKEUP=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A00x28
> > +#define NWL_DSI_CFG_STATUS_OUT=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A00x2c
> > +#define NWL_DSI_RX_ERROR_STATUS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x30
> > +
> > +/* DSI DPI registers */
> > +#define NWL_DSI_PIXEL_PAYLOAD_SIZE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A00x200
> > +#define NWL_DSI_PIXEL_FIFO_SEND_LEVEL=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x2=
04
> > +#define NWL_DSI_INTERFACE_COLOR_CODING=A0=A0=A0=A0=A0=A0=A0=A0=A00x208
> > +#define NWL_DSI_PIXEL_FORMAT=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A00x20c
> > +#define NWL_DSI_VSYNC_POLARITY=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A00x210
> > +#define NWL_DSI_VSYNC_POLARITY_ACTIVE_LOW=A0=A0=A0=A0=A0=A00
> > +#define NWL_DSI_VSYNC_POLARITY_ACTIVE_HIGH=A0=A0=A0=A0=A0BIT(1)
> > +
> > +#define NWL_DSI_HSYNC_POLARITY=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A00x214
> > +#define NWL_DSI_HSYNC_POLARITY_ACTIVE_LOW=A0=A0=A0=A0=A0=A00
> > +#define NWL_DSI_HSYNC_POLARITY_ACTIVE_HIGH=A0=A0=A0=A0=A0BIT(1)
> > +
> > +#define NWL_DSI_VIDEO_MODE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00x218
> > +#define NWL_DSI_HFP=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x21c
> > +#define NWL_DSI_HBP=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x220
> > +#define NWL_DSI_HSA=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x224
> > +#define NWL_DSI_ENABLE_MULT_PKTS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A00x228
> > +#define NWL_DSI_VBP=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x22c
> > +#define NWL_DSI_VFP=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x230
> > +#define NWL_DSI_BLLP_MODE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00x234
> > +#define NWL_DSI_USE_NULL_PKT_BLLP=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A00x238
> > +#define NWL_DSI_VACTIVE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x23c
> > +#define NWL_DSI_VC=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A00x240
> > +
> > +/* DSI APB PKT control */
> > +#define NWL_DSI_TX_PAYLOAD=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00x280
> > +#define NWL_DSI_PKT_CONTROL=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A00x284
> > +#define NWL_DSI_SEND_PACKET=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A00x288
> > +#define NWL_DSI_PKT_STATUS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00x28c
> > +#define NWL_DSI_PKT_FIFO_WR_LEVEL=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A00x290
> > +#define NWL_DSI_PKT_FIFO_RD_LEVEL=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A00x294
> > +#define NWL_DSI_RX_PAYLOAD=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00x298
> > +#define NWL_DSI_RX_PKT_HEADER=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A00x29c
> > +
> > +/* DSI IRQ handling */
> > +#define NWL_DSI_IRQ_STATUS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00x2a0
> > +#define NWL_DSI_SM_NOT_IDLE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0BIT(0)
> > +#define NWL_DSI_TX_PKT_DONE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0BIT(1)
> > +#define NWL_DSI_DPHY_DIRECTION=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0BIT(2)
> > +#define NWL_DSI_TX_FIFO_OVFLW=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0BIT(3)
> > +#define NWL_DSI_TX_FIFO_UDFLW=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0BIT(4)
> > +#define NWL_DSI_RX_FIFO_OVFLW=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0BIT(5)
> > +#define NWL_DSI_RX_FIFO_UDFLW=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0BIT(6)
> > +#define NWL_DSI_RX_PKT_HDR_RCVD=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0BIT(7)
> > +#define NWL_DSI_RX_PKT_PAYLOAD_DATA_RCVD=A0=A0=A0=A0=A0=A0=A0BIT(8)
> > +#define NWL_DSI_BTA_TIMEOUT=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0BIT(29)
> > +#define NWL_DSI_LP_RX_TIMEOUT=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0BIT(30)
> > +#define NWL_DSI_HS_TX_TIMEOUT=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0BIT(31)
> > +
> > +#define NWL_DSI_IRQ_STATUS2=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A00x2a4
> > +#define NWL_DSI_SINGLE_BIT_ECC_ERR=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0BIT(0)
> > +#define NWL_DSI_MULTI_BIT_ECC_ERR=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0BIT(1)
> > +#define NWL_DSI_CRC_ERR=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0BIT(2)
> > +
> > +#define NWL_DSI_IRQ_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A00x2a8
> > +#define NWL_DSI_SM_NOT_IDLE_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0BIT(0)
> > +#define NWL_DSI_TX_PKT_DONE_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0BIT(1)
> > +#define NWL_DSI_DPHY_DIRECTION_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0BIT(2)
> > +#define NWL_DSI_TX_FIFO_OVFLW_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0BIT(3)
> > +#define NWL_DSI_TX_FIFO_UDFLW_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0BIT(4)
> > +#define NWL_DSI_RX_FIFO_OVFLW_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0BIT(5)
> > +#define NWL_DSI_RX_FIFO_UDFLW_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0BIT(6)
> > +#define NWL_DSI_RX_PKT_HDR_RCVD_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0B=
IT(7)
> > +#define NWL_DSI_RX_PKT_PAYLOAD_DATA_RCVD_MASK=A0=A0BIT(8)
> > +#define NWL_DSI_BTA_TIMEOUT_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0BIT(29)
> > +#define NWL_DSI_LP_RX_TIMEOUT_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0BIT(30)
> > +#define NWL_DSI_HS_TX_TIMEOUT_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0BIT(31)
> > +
> > +#define NWL_DSI_IRQ_MASK2=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A00x2ac
> > +#define NWL_DSI_SINGLE_BIT_ECC_ERR_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0BIT(0)
> > +#define NWL_DSI_MULTI_BIT_ECC_ERR_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0BIT(1)
> > +#define NWL_DSI_CRC_ERR_MASK=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0BIT(2)
> > +
> > +/*
> > + * PKT_CONTROL format:
> > + * [15: 0] - word count
> > + * [17:16] - virtual channel
> > + * [23:18] - data type
> > + * [24]=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0- LP or HS select (0 - LP, 1 -=
 HS)
> > + * [25]=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0- perform BTA after packet is =
sent
> > + * [26]=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0- perform BTA only, no packet =
tx
> > + */
> > +#define NWL_DSI_WC(x)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0FIELD_PREP(GENMASK(=
15, 0), (x))
> > +#define NWL_DSI_TX_VC(x)=A0=A0=A0=A0=A0=A0=A0FIELD_PREP(GENMASK(17, 16=
), (x))
> > +#define NWL_DSI_TX_DT(x)=A0=A0=A0=A0=A0=A0=A0FIELD_PREP(GENMASK(23, 18=
), (x))
> > +#define NWL_DSI_HS_SEL(x)=A0=A0=A0=A0=A0=A0FIELD_PREP(GENMASK(24, 24),=
 (x))
> > +#define NWL_DSI_BTA_TX(x)=A0=A0=A0=A0=A0=A0FIELD_PREP(GENMASK(25, 25),=
 (x))
> > +#define NWL_DSI_BTA_NO_TX(x)=A0=A0=A0FIELD_PREP(GENMASK(26, 26), (x))
> > +
> > +/*
> > + * RX_PKT_HEADER format:
> > + * [15: 0] - word count
> > + * [21:16] - data type
> > + * [23:22] - virtual channel
> > + */
> > +#define NWL_DSI_RX_DT(x)=A0=A0=A0=A0=A0=A0=A0FIELD_GET(GENMASK(21, 16)=
, (x))
> > +#define NWL_DSI_RX_VC(x)=A0=A0=A0=A0=A0=A0=A0FIELD_GET(GENMASK(23, 22)=
, (x))
> > +
> > +/* DSI Video mode */
> > +#define NWL_DSI_VM_BURST_MODE_WITH_SYNC_PULSES=A0=A0=A0=A0=A0=A0=A0=A0=
=A00
> > +#define NWL_DSI_VM_NON_BURST_MODE_WITH_SYNC_EVENTS=A0=A0=A0=A0=A0BIT(0)
> > +#define NWL_DSI_VM_BURST_MODE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0BIT(1)
> > +
> > +/* * DPI color coding */
> > +#define NWL_DSI_DPI_16_BIT_565_PACKED=A0=A00
> > +#define NWL_DSI_DPI_16_BIT_565_ALIGNED 1
> > +#define NWL_DSI_DPI_16_BIT_565_SHIFTED 2
> > +#define NWL_DSI_DPI_18_BIT_PACKED=A0=A0=A0=A0=A0=A03
> > +#define NWL_DSI_DPI_18_BIT_ALIGNED=A0=A0=A0=A0=A04
> > +#define NWL_DSI_DPI_24_BIT=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A05
> > +
> > +/* * DPI Pixel format */
> > +#define NWL_DSI_PIXEL_FORMAT_16=A0=A00
> > +#define NWL_DSI_PIXEL_FORMAT_18=A0=A0BIT(0)
> > +#define NWL_DSI_PIXEL_FORMAT_18L BIT(1)
> > +#define NWL_DSI_PIXEL_FORMAT_24=A0=A0(BIT(0) | BIT(1))
> > +
> > +#endif /* __NWL_DSI_H__ */
> > --
> > 2.23.0
> > =

> > =

> =

> I know it's a lot of information here and, since I already have that
> implemented on my side, do you want me to send the next revision, or do
> you want to implement it on your own?

I'm fine with making (and testing) the changes but if you have some code
(even against an older driver version) i can borrow from in a tree
somewhere you can link to (or send via mail) that'd certainly speed up
things.

Cheers,
 -- Guido

> =

> Best regards,
> Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
