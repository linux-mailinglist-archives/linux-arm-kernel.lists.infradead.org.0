Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADEE1BCC15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MLxJBzNqd3TDAT2qWvsQaQDD1dKJrpjr4W1kWxrTh1Y=; b=AbU4gwH4pFB/jAx/jIr/CjP6g
	3Li7DRpoh0hRec85dwNtk2aWFJg+/ZTQZCQan6XxuOnkmPF9NH0EcCBdoWxpViekUaEd8D/xujS9X
	7ESAwLbmyu+Acqs7aa5bc1Ns9aq8vmHtqJVFWLsv2NGapZlA0s9y2Z2ubG07TVPkSGHa6XEEukvFK
	m43T7JH7jmvoeKHHRjq4NhARfpzOAq5daQwE9XY1AU7VouT/pvqYRqz89hBVGu1jz7GzmHz36PTTb
	2frG4G8t7IA+qhFa3A8/Q5tBhXuT9xZzRRZGZUaHOombd1OktrIgOUaPBFpqP9NmfQ/H6wU2J858N
	lv3k3XjWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTVZe-0008Db-2j; Tue, 28 Apr 2020 19:07:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTVZU-0008C6-1z; Tue, 28 Apr 2020 19:07:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 16BD82A1F7E
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Daniel Vetter <daniel@ffwll.ch>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v7 4/8] drm: imx: Add i.MX 6 MIPI DSI host platform driver
In-Reply-To: <20200428143030.GN3456981@phenom.ffwll.local>
References: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
 <20200421161610.1501827-5-adrian.ratiu@collabora.com>
 <20200422010727.GM5983@pendragon.ideasonboard.com>
 <20200428143030.GN3456981@phenom.ffwll.local>
Date: Tue, 28 Apr 2020 22:08:04 +0300
Message-ID: <87pnbrig2z.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_120708_365197_31A1E7B9 
X-CRM114-Status: GOOD (  37.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Adrian Pop <pop.adrian61@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On Tue, 28 Apr 2020, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Wed, Apr 22, 2020 at 04:07:27AM +0300, Laurent Pinchart 
> wrote: 
>> Hi Adrian,  On Tue, Apr 21, 2020 at 07:16:06PM +0300, Adrian 
>> Ratiu wrote: 
>> > This adds support for the Synopsis DesignWare MIPI DSI v1.01 
>> > host controller which is embedded in i.MX 6 SoCs.   Based on 
>> > following patches, but updated/extended to work with existing 
>> > support found in the kernel:  - drm: imx: Support Synopsys 
>> > DesignWare MIPI DSI host controller 
>> >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com> 
>> >  Cc: Fabio Estevam <festevam@gmail.com> Cc: Enric Balletbo 
>> > Serra <eballetbo@gmail.com> Reviewed-by: Emil Velikov 
>> > <emil.velikov@collabora.com> Tested-by: Adrian Pop 
>> > <pop.adrian61@gmail.com> Tested-by: Arnaud Ferraris 
>> > <arnaud.ferraris@collabora.com> Signed-off-by: Sjoerd Simons 
>> > <sjoerd.simons@collabora.com> Signed-off-by: Martyn Welch 
>> > <martyn.welch@collabora.com> Signed-off-by: Adrian Ratiu 
>> > <adrian.ratiu@collabora.com> --- Changes since v6: 
>> >   - Replaced custom noop encoder with the simple drm encoder 
>> >   (Enric) - Added CONFIG_DRM_IMX6_MIPI_DSI depends on 
>> >   CONFIG_OF (Enric) - Dropped imx_mipi_dsi_register() because 
>> >   now it only creates the dummy encoder which can easily be 
>> >   done directly in imx_dsi_bind() 
>> >  Changes since v5: 
>> >   - Reword to remove unrelated device tree patch mention 
>> >   (Fabio) - Move pllref_clk enable/disable to bind/unbind 
>> >   (Ezequiel) - Fix freescale.com -> nxp.com email addresses 
>> >   (Fabio) - Also added myself as module author (Fabio) - Use 
>> >   DRM_DEV_* macros for consistency, print more error msg 
>> >  Changes since v4: 
>> >   - Split off driver-specific configuration of phy timings 
>> >   due to new upstream API.  - Move regmap infrastructure 
>> >   logic to separate commit (Ezequiel) - Move dsi v1.01 layout 
>> >   addition to a separate commit (Ezequiel) - Minor warnings 
>> >   and driver name fixes 
>> >  Changes since v3: 
>> >   - Renamed platform driver to reflect it's i.MX6 
>> >   only. (Fabio) 
>> >  Changes since v2: 
>> >   - Fixed commit tags. (Emil) 
>> >  Changes since v1: 
>> >   - Moved register definitions & regmap initialization into 
>> >   bridge module. Platform drivers get the regmap via 
>> >   plat_data after calling the bridge probe. (Emil) 
>> > --- 
>> >  drivers/gpu/drm/imx/Kconfig            |   8 + 
>> >  drivers/gpu/drm/imx/Makefile           |   1 + 
>> >  drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c | 391 
>> >  +++++++++++++++++++++++++ 3 files changed, 400 insertions(+) 
>> >  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c 
>> >  diff --git a/drivers/gpu/drm/imx/Kconfig 
>> > b/drivers/gpu/drm/imx/Kconfig index 
>> > 207bf7409dfba..0dffc72df7922 100644 --- 
>> > a/drivers/gpu/drm/imx/Kconfig +++ 
>> > b/drivers/gpu/drm/imx/Kconfig @@ -39,3 +39,11 @@ config 
>> > DRM_IMX_HDMI 
>> >  	depends on DRM_IMX help Choose this if you want to use 
>> >  HDMI on i.MX6. 
>> > + +config DRM_IMX6_MIPI_DSI +	tristate "Freescale i.MX6 
>> > DRM MIPI DSI" +	select DRM_DW_MIPI_DSI +	depends on 
>> > DRM_IMX +	depends on OF +	help +	  Choose this if you want 
>> > to use MIPI DSI on i.MX6.  diff --git 
>> > a/drivers/gpu/drm/imx/Makefile b/drivers/gpu/drm/imx/Makefile 
>> > index 21cdcc2faabc8..9a7843c593478 100644 --- 
>> > a/drivers/gpu/drm/imx/Makefile +++ 
>> > b/drivers/gpu/drm/imx/Makefile @@ -9,3 +9,4 @@ 
>> > obj-$(CONFIG_DRM_IMX_TVE) += imx-tve.o 
>> >  obj-$(CONFIG_DRM_IMX_LDB) += imx-ldb.o 
>> >  obj-$(CONFIG_DRM_IMX_HDMI) += dw_hdmi-imx.o 
>> > +obj-$(CONFIG_DRM_IMX6_MIPI_DSI) += dw_mipi_dsi-imx6.o diff 
>> > --git a/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c 
>> > b/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c new file mode 100644 
>> > index 0000000000000..f8a0a4fe16e21 --- /dev/null +++ 
>> > b/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c @@ -0,0 +1,391 @@ 
>> > +// SPDX-License-Identifier: GPL-2.0+ +/* + * i.MX6 drm 
>> > driver - MIPI DSI Host Controller + * + * Copyright (C) 
>> > 2011-2015 Freescale Semiconductor, Inc.  + * Copyright (C) 
>> > 2019-2020 Collabora, Ltd.  + */ + +#include <linux/clk.h> 
>> > +#include <linux/component.h> +#include <linux/mfd/syscon.h> 
>> > +#include <linux/mfd/syscon/imx6q-iomuxc-gpr.h> +#include 
>> > <linux/module.h> +#include <linux/of_device.h> +#include 
>> > <linux/regmap.h> +#include <linux/videodev2.h> +#include 
>> > <drm/bridge/dw_mipi_dsi.h> +#include <drm/drm_crtc_helper.h> 
>> > +#include <drm/drm_mipi_dsi.h> +#include <drm/drm_of.h> 
>> > +#include <drm/drm_print.h> + +#include "imx-drm.h" + 
>> > +#define DSI_PWR_UP			0x04 +#define 
>> > RESET				0 +#define POWERUP 
>> > BIT(0) + +#define DSI_PHY_IF_CTRL			0x5c 
>> > +#define PHY_IF_CTRL_RESET		0x0 + +#define 
>> > DSI_PHY_TST_CTRL0		0x64 +#define PHY_TESTCLK 
>> > BIT(1) +#define PHY_UNTESTCLK			0 +#define 
>> > PHY_TESTCLR			BIT(0) +#define 
>> > PHY_UNTESTCLR			0 + +#define 
>> > DSI_PHY_TST_CTRL1		0x68 +#define PHY_TESTEN 
>> > BIT(16) +#define PHY_UNTESTEN			0 +#define 
>> > PHY_TESTDOUT(n)			(((n) & 0xff) << 8) 
>> > +#define PHY_TESTDIN(n)			(((n) & 0xff) << 
>> > 0) + +struct imx_mipi_dsi { +	struct drm_encoder 
>> > encoder; +	struct device *dev; +	struct regmap *mux_sel; + 
>> > struct dw_mipi_dsi *mipi_dsi; +	struct clk *pllref_clk; + 
>> > +	void __iomem *base; +	unsigned int lane_mbps; +}; + 
>> > +struct dphy_pll_testdin_map { +	unsigned int max_mbps; + 
>> > u8 testdin; +}; + +/* The table is based on 27MHz DPHY pll 
>> > reference clock. */ +static const struct dphy_pll_testdin_map 
>> > dptdin_map[] = { +	{160, 0x04}, {180, 0x24}, {200, 0x44}, 
>> > {210, 0x06}, +	{240, 0x26}, {250, 0x46}, {270, 0x08}, 
>> > {300, 0x28}, +	{330, 0x48}, {360, 0x2a}, {400, 0x4a}, 
>> > {450, 0x0c}, +	{500, 0x2c}, {550, 0x0e}, {600, 0x2e}, 
>> > {650, 0x10}, +	{700, 0x30}, {750, 0x12}, {800, 0x32}, 
>> > {850, 0x14}, +	{900, 0x34}, {950, 0x54}, {1000, 0x74} +}; 
>> > + +static inline struct imx_mipi_dsi *enc_to_dsi(struct 
>> > drm_encoder *enc) +{ +	return container_of(enc, struct 
>> > imx_mipi_dsi, encoder); +} + +static void 
>> > imx_mipi_dsi_set_ipu_di_mux(struct imx_mipi_dsi *dsi, int 
>> > ipu_di) +{ +	regmap_update_bits(dsi->mux_sel, 
>> > IOMUXC_GPR3, + 
>> > IMX6Q_GPR3_MIPI_MUX_CTL_MASK, +			   ipu_di 
>> > << IMX6Q_GPR3_MIPI_MUX_CTL_SHIFT); +} + +static bool 
>> > imx_mipi_dsi_encoder_mode_fixup(struct drm_encoder *encoder, 
>> > +					    const struct 
>> > drm_display_mode *mode, + 
>> > struct drm_display_mode *adj_mode) +{ +	return true; +} + 
>> > +static int imx_mipi_dsi_encoder_atomic_check(struct 
>> > drm_encoder *encoder, + 
>> > struct drm_crtc_state *crtc_state, + 
>> > struct drm_connector_state *conn) +{ +	struct 
>> > imx_crtc_state *imx_crtc_state = 
>> > to_imx_crtc_state(crtc_state); + +	/* The following values 
>> > are taken from dw_hdmi_imx_atomic_check */ + 
>> > imx_crtc_state->bus_format = MEDIA_BUS_FMT_RGB888_1X24; + 
>> > imx_crtc_state->di_hsync_pin = 2; + 
>> > imx_crtc_state->di_vsync_pin = 3; + +	return 0; +} 
>>  No encoder functions please. This should be a bridge driver, 
>> the encoder should be created by the i.MX display controller 
>> driver itself. As that would require quite a bit of refactoring 
>> I'm OK having an encoder here for the meantime, but it should 
>> be a dummy one, without any operation. 
> 
> +1 on this, came to say the same. This seems to duplicate the 
> dw-hdmi design, where the code organization is a bit a mess, 
> with some parts in drm/bridge, and some parts in each drm_device 
> driver. Plus drm_encoder in there on top. 
> 
> If we want to continue with the drm_bridge abstraction for these 
> kind of drivers then imo we need: 
> 
> - to make drm_bridge the actual abstraction, no leaking 
> back&forth between 
>   the bridge chip and the overall drm_device side of things. 
> 
> - move _all_ dw-mipi-dsi related code into drm/bridge 
> 
> - for the platform specific binding stuff I think 
> drm/bridge/dw-mipi-dsi 
>   directory, which contains the main driver, plus a file each 
>   for the imx/stm/whatever platform bindings sounds like a 
>   reasonable layout. 
> 
> If that doesn't work, then I think dw-mipi-dsi isn't really a 
> bridge driver with clear encapsulation, but instead should be 
> structured as a helper library to implement a drm_encoder. And 
> no drm_bridge. 
> 
> And yes the exact same problem exists with dw-hdmi. That's the 
> reason why I've started to look into these, it's not really a 
> code pattern we should repeat imo.

The code structure you propose should be doable and I was actually 
thinking of something like it when writing the cover letter for v8 
of this series, about how to consolidate the Synopsis DW MIPI DSI 
logic at the same time while consolidating the rest of imx drivers 
to unify their simple encoder management.

Thank you for fleshing it out! It's very helpful :)

BTW have you seen what I did with the bridge in v8 for the imx6 
driver?  [1]

What I'd like to avoid is feature creep in this patch series which 
is about adding the imx6 driver, because I think moving the logic 
and refactoring all the drivers is a separate issue and already 
this series is big and increasing.

So would you be ok with merging the imx6 mipi dsi driver with its 
dw-mipi-dsi regamp rework and doing the refactoring to consolidate 
all the bridge logic in a separate patch series which also 
includes moving the rockchip and stm encoder logic to a 
drm_bridge?

Or would you like me to do this consolidation rework in advance 
just for the new imx6 mipi-dsi driver in this series and tackle 
the rest of drivers in a separate patch series?

@Laurent, do you also have suggestions how to proceed?

[1] 
https://lore.kernel.org/linux-arm-kernel/20200427081952.3536741-1-adrian.ratiu@collabora.com/

Thank you,
Adrian

>
> Cheers, Daniel
>
>> 
>> > +
>> > +static void imx_mipi_dsi_encoder_commit(struct drm_encoder *encoder)
>> > +{
>> > +	struct imx_mipi_dsi *dsi = enc_to_dsi(encoder);
>> > +	int mux = drm_of_encoder_active_port_id(dsi->dev->of_node, encoder);
>> > +
>> > +	imx_mipi_dsi_set_ipu_di_mux(dsi, mux);
>> > +}
>> > +
>> > +static void imx_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
>> > +{
>> > +}
>> > +
>> > +static const struct drm_encoder_helper_funcs imx_mipi_dsi_encoder_helpers = {
>> > +	.mode_fixup = imx_mipi_dsi_encoder_mode_fixup,
>> > +	.commit = imx_mipi_dsi_encoder_commit,
>> > +	.disable = imx_mipi_dsi_encoder_disable,
>> > +	.atomic_check = imx_mipi_dsi_encoder_atomic_check,
>> > +};
>> > +
>> > +static enum drm_mode_status imx_mipi_dsi_mode_valid(void *priv_data,
>> > +					const struct drm_display_mode *mode)
>> > +{
>> > +	/*
>> > +	 * The VID_PKT_SIZE field in the DSI_VID_PKT_CFG
>> > +	 * register is 11-bit.
>> > +	 */
>> > +	if (mode->hdisplay > 0x7ff)
>> > +		return MODE_BAD_HVALUE;
>> > +
>> > +	/*
>> > +	 * The V_ACTIVE_LINES field in the DSI_VTIMING_CFG
>> > +	 * register is 11-bit.
>> > +	 */
>> > +	if (mode->vdisplay > 0x7ff)
>> > +		return MODE_BAD_VVALUE;
>> > +
>> > +	return MODE_OK;
>> > +}
>> > +
>> > +
>> > +static unsigned int max_mbps_to_testdin(unsigned int max_mbps)
>> > +{
>> > +	unsigned int i;
>> > +
>> > +	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++)
>> > +		if (dptdin_map[i].max_mbps == max_mbps)
>> > +			return dptdin_map[i].testdin;
>> > +
>> > +	return -EINVAL;
>> > +}
>> > +
>> > +static inline void dsi_write(struct imx_mipi_dsi *dsi, u32 reg, u32 val)
>> > +{
>> > +	writel(val, dsi->base + reg);
>> > +}
>> > +
>> > +static int imx_mipi_dsi_phy_init(void *priv_data)
>> > +{
>> > +	struct imx_mipi_dsi *dsi = priv_data;
>> > +	int testdin;
>> > +
>> > +	testdin = max_mbps_to_testdin(dsi->lane_mbps);
>> > +	if (testdin < 0) {
>> > +		DRM_DEV_ERROR(dsi->dev,
>> > +			      "failed to get testdin for %dmbps lane clock\n",
>> > +			      dsi->lane_mbps);
>> > +		return testdin;
>> > +	}
>> > +
>> > +	dsi_write(dsi, DSI_PHY_IF_CTRL, PHY_IF_CTRL_RESET);
>> > +	dsi_write(dsi, DSI_PWR_UP, POWERUP);
>> > +
>> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
>> > +	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_TESTEN | PHY_TESTDOUT(0) |
>> > +		  PHY_TESTDIN(0x44));
>> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
>> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
>> > +	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_UNTESTEN | PHY_TESTDOUT(0) |
>> > +		  PHY_TESTDIN(testdin));
>> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
>> > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
>> > +
>> > +	return 0;
>> > +}
>> > +
>> > +static int imx_mipi_dsi_get_lane_mbps(void *priv_data,
>> > +				      const struct drm_display_mode *mode,
>> > +				      unsigned long mode_flags, u32 lanes,
>> > +				      u32 format, unsigned int *lane_mbps)
>> > +{
>> > +	struct imx_mipi_dsi *dsi = priv_data;
>> > +	int bpp;
>> > +	unsigned int i, target_mbps, mpclk;
>> > +	unsigned long pllref;
>> > +
>> > +	bpp = mipi_dsi_pixel_format_to_bpp(format);
>> > +	if (bpp < 0) {
>> > +		DRM_DEV_ERROR(dsi->dev, "failed to get bpp for format %d: %d\n",
>> > +			      format, bpp);
>> > +		return bpp;
>> > +	}
>> > +
>> > +	pllref = clk_get_rate(dsi->pllref_clk);
>> > +	if (pllref != 27000000)
>> > +		DRM_WARN("DSI pllref_clk not set to 27Mhz\n");
>> > +
>> > +	mpclk = DIV_ROUND_UP(mode->clock, MSEC_PER_SEC);
>> > +	if (mpclk) {
>> > +		/* take 1/0.7 blanking overhead into consideration */
>> > +		target_mbps = (mpclk * (bpp / lanes) * 10) / 7;
>> > +	} else {
>> > +		DRM_DEV_ERROR(dsi->dev, "use default 1Gbps DPHY pll clock\n");
>> > +		target_mbps = 1000;
>> > +	}
>> > +
>> > +	DRM_DEV_DEBUG(dsi->dev, "target pllref_clk frequency is %uMbps\n",
>> > +		      target_mbps);
>> > +
>> > +	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++) {
>> > +		if (target_mbps < dptdin_map[i].max_mbps) {
>> > +			*lane_mbps = dptdin_map[i].max_mbps;
>> > +			dsi->lane_mbps = *lane_mbps;
>> > +			DRM_DEV_DEBUG(dsi->dev,
>> > +				      "real pllref_clk frequency is %uMbps\n",
>> > +				      *lane_mbps);
>> > +			return 0;
>> > +		}
>> > +	}
>> > +
>> > +	DRM_DEV_ERROR(dsi->dev, "DPHY clock frequency %uMbps is out of range\n",
>> > +		      target_mbps);
>> > +
>> > +	return -EINVAL;
>> > +}
>> > +
>> > +static int
>> > +dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
>> > +			   struct dw_mipi_dsi_dphy_timing *timing)
>> > +{
>> > +	timing->clk_hs2lp = 0x40;
>> > +	timing->clk_lp2hs = 0x40;
>> > +	timing->data_hs2lp = 0x40;
>> > +	timing->data_lp2hs = 0x40;
>> > +
>> > +	return 0;
>> > +}
>> > +
>> > +static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_imx6_phy_ops = {
>> > +	.init = imx_mipi_dsi_phy_init,
>> > +	.get_lane_mbps = imx_mipi_dsi_get_lane_mbps,
>> > +	.get_timing = dw_mipi_dsi_phy_get_timing,
>> > +};
>> > +
>> > +static struct dw_mipi_dsi_plat_data imx6q_mipi_dsi_drv_data = {
>> > +	.max_data_lanes = 2,
>> > +	.mode_valid = imx_mipi_dsi_mode_valid,
>> > +	.phy_ops = &dw_mipi_dsi_imx6_phy_ops,
>> > +};
>> > +
>> > +static const struct of_device_id imx_dsi_dt_ids[] = {
>> > +	{
>> > +		.compatible = "fsl,imx6q-mipi-dsi",
>> > +		.data = &imx6q_mipi_dsi_drv_data,
>> > +	},
>> > +	{ /* sentinel */ }
>> > +};
>> > +MODULE_DEVICE_TABLE(of, imx_dsi_dt_ids);
>> > +
>> > +static int imx_mipi_dsi_bind(struct device *dev, struct device *master,
>> > +			     void *data)
>> > +{
>> > +	struct imx_mipi_dsi *dsi = dev_get_drvdata(dev);
>> > +	struct drm_device *drm = data;
>> > +	int ret;
>> > +
>> > +	ret = clk_prepare_enable(dsi->pllref_clk);
>> > +	if (ret) {
>> > +		DRM_DEV_ERROR(dev, "Failed to enable pllref_clk: %d\n", ret);
>> > +		return ret;
>> > +	}
>> > +
>> > +	ret = imx_drm_create_encoder(drm, &dsi->encoder, dsi->dev->of_node);
>> > +	if (ret) {
>> > +		DRM_DEV_ERROR(dsi->dev, "failed to create drm encoder\n");
>> > +		return ret;
>> > +	}
>> > +
>> > +	drm_encoder_helper_add(&dsi->encoder, &imx_mipi_dsi_encoder_helpers);
>> > +
>> > +	ret = dw_mipi_dsi_bind(dsi->mipi_dsi, &dsi->encoder);
>> > +	if (ret) {
>> > +		DRM_DEV_ERROR(dev, "Failed to bind: %d\n", ret);
>> > +		return ret;
>> > +	}
>> > +
>> > +	return 0;
>> > +}
>> > +
>> > +static void imx_mipi_dsi_unbind(struct device *dev, struct device *master,
>> > +				void *data)
>> > +{
>> > +	struct imx_mipi_dsi *dsi = dev_get_drvdata(dev);
>> > +
>> > +	dw_mipi_dsi_unbind(dsi->mipi_dsi);
>> > +
>> > +	clk_disable_unprepare(dsi->pllref_clk);
>> > +}
>> > +
>> > +static const struct component_ops imx_mipi_dsi_ops = {
>> > +	.bind	= imx_mipi_dsi_bind,
>> > +	.unbind	= imx_mipi_dsi_unbind,
>> > +};
>> > +
>> > +static int imx_mipi_dsi_probe(struct platform_device *pdev)
>> > +{
>> > +	struct device *dev = &pdev->dev;
>> > +	const struct of_device_id *of_id = of_match_device(imx_dsi_dt_ids, dev);
>> > +	struct dw_mipi_dsi_plat_data *pdata = (struct dw_mipi_dsi_plat_data *) of_id->data;
>> > +	struct imx_mipi_dsi *dsi;
>> > +	struct resource *res;
>> > +	int ret;
>> > +
>> > +	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
>> > +	if (!dsi)
>> > +		return -ENOMEM;
>> > +
>> > +	dsi->dev = dev;
>> > +
>> > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> > +	dsi->base = devm_ioremap_resource(dev, res);
>> > +	if (IS_ERR(dsi->base)) {
>> > +		ret = PTR_ERR(dsi->base);
>> > +		DRM_DEV_ERROR(dev, "Unable to get dsi registers: %d\n", ret);
>> > +		return ret;
>> > +	}
>> > +
>> > +	dsi->pllref_clk = devm_clk_get(dev, "ref");
>> > +	if (IS_ERR(dsi->pllref_clk)) {
>> > +		ret = PTR_ERR(dsi->pllref_clk);
>> > +		DRM_DEV_ERROR(dev, "Unable to get pllref_clk: %d\n", ret);
>> > +		return ret;
>> > +	}
>> > +
>> > +	dsi->mux_sel = syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr");
>> > +	if (IS_ERR(dsi->mux_sel)) {
>> > +		ret = PTR_ERR(dsi->mux_sel);
>> > +		DRM_DEV_ERROR(dev, "Failed to get GPR regmap: %d\n", ret);
>> > +		return ret;
>> > +	}
>> > +
>> > +	dev_set_drvdata(dev, dsi);
>> > +
>> > +	imx6q_mipi_dsi_drv_data.base = dsi->base;
>> > +	imx6q_mipi_dsi_drv_data.priv_data = dsi;
>> > +
>> > +	dsi->mipi_dsi = dw_mipi_dsi_probe(pdev, pdata);
>> > +	if (IS_ERR(dsi->mipi_dsi)) {
>> > +		ret = PTR_ERR(dsi->mipi_dsi);
>> > +		DRM_DEV_ERROR(dev, "Failed to probe DW DSI host: %d\n", ret);
>> > +		goto err_clkdisable;
>> > +	}
>> > +
>> > +	return component_add(&pdev->dev, &imx_mipi_dsi_ops);
>> > +
>> > +err_clkdisable:
>> > +	clk_disable_unprepare(dsi->pllref_clk);
>> > +	return ret;
>> > +}
>> > +
>> > +static int imx_mipi_dsi_remove(struct platform_device *pdev)
>> > +{
>> > +	component_del(&pdev->dev, &imx_mipi_dsi_ops);
>> > +	return 0;
>> > +}
>> > +
>> > +static struct platform_driver imx_mipi_dsi_driver = {
>> > +	.probe		= imx_mipi_dsi_probe,
>> > +	.remove		= imx_mipi_dsi_remove,
>> > +	.driver		= {
>> > +		.of_match_table = imx_dsi_dt_ids,
>> > +		.name	= "dw-mipi-dsi-imx6",
>> > +	},
>> > +};
>> > +module_platform_driver(imx_mipi_dsi_driver);
>> > +
>> > +MODULE_DESCRIPTION("i.MX6 MIPI DSI host controller driver");
>> > +MODULE_AUTHOR("Liu Ying <victor.liu@nxp.com>");
>> > +MODULE_AUTHOR("Adrian Ratiu <adrian.ratiu@collabora.com>");
>> > +MODULE_LICENSE("GPL");
>> > -- 
>> > 2.26.0
>> > 
>> 
>> -- 
>> Regards,
>> 
>> Laurent Pinchart
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
