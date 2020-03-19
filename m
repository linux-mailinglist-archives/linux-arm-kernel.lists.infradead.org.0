Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCD918B063
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly2Cvr+0BlnelrhdQIgqHUXLNYnCWJfj4yteN6rsOQc=; b=dsUVNyOMfeHCyU
	LeRURtIvKdwZUd8Nr4ktk6hMP/EtdQVLdMNrUbfL7EKHbV1/NrrFiKOKIagYaavFYF6rTEDUwxWBu
	OxqLFZvIUmjdtmZfTVhKjm6nnJO83kjsn7xsNKOTOqy4tznC8OWLCP6vhg9fh4Xnp2p8VuRG1M93w
	kXns/+YJgaxx569MCQUAnMAKpMpzEOVH8yo3TQJbgX4YJJiS+jDsLh+0OwaVNzXMORQMAEOtnWvBo
	NzeYUN5CoPU4Jd+rVHxAhhWCzCYMpX/EhQWAQG67F/wnGiD5m0VExpj/yy9vXEzM/BOgW51XJ6Ysv
	W2tgHwQZfocdac9QrA5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErdy-0002ex-OA; Thu, 19 Mar 2020 09:39:14 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErdp-0002dq-P9
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 09:39:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 5D042FB03;
 Thu, 19 Mar 2020 10:39:01 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Xzj51gxscCV; Thu, 19 Mar 2020 10:38:59 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 3A2A8412BE; Thu, 19 Mar 2020 10:38:59 +0100 (CET)
Date: Thu, 19 Mar 2020 10:38:59 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v9 2/2] drm/bridge: Add NWL MIPI DSI host controller
 support
Message-ID: <20200319093859.GA50655@bogon.m.sigxcpu.org>
References: <cover.1584544065.git.agx@sigxcpu.org>
 <6f2e65df672a0fe832af29f4ea89fbe7250c3a07.1584544065.git.agx@sigxcpu.org>
 <20200318214639.GA971@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318214639.GA971@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_023905_984015_0099A350 
X-CRM114-Status: GOOD (  27.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Pengutronix Kernel Team <kernel@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
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

Hi Sam,

On Wed, Mar 18, 2020 at 10:46:39PM +0100, Sam Ravnborg wrote:
> Hi Guido.
> =

> Impressive and very detailed changelog in intro mail - nice.
> =

> On Wed, Mar 18, 2020 at 04:09:08PM +0100, Guido G=FCnther wrote:
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
> > Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> > Tested-by: Robert Chiras <robert.chiras@nxp.com>
> > Tested-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> > ---
> >  drivers/gpu/drm/bridge/Kconfig   |   16 +
> >  drivers/gpu/drm/bridge/Makefile  |    3 +
> >  drivers/gpu/drm/bridge/nwl-dsi.c | 1213 ++++++++++++++++++++++++++++++
> >  drivers/gpu/drm/bridge/nwl-dsi.h |  144 ++++
> >  4 files changed, 1376 insertions(+)
> >  create mode 100644 drivers/gpu/drm/bridge/nwl-dsi.c
> >  create mode 100644 drivers/gpu/drm/bridge/nwl-dsi.h
> > =

> > diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kc=
onfig
> > index 8397bf72d2f3..d41d93d24f16 100644
> > --- a/drivers/gpu/drm/bridge/Kconfig
> > +++ b/drivers/gpu/drm/bridge/Kconfig
> > @@ -55,6 +55,22 @@ config DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW
> >  	  to DP++. This is used with the i.MX6 imx-ldb
> >  	  driver. You are likely to say N here.
> >  =

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
> >  config DRM_NXP_PTN3460
> >  	tristate "NXP PTN3460 DP/LVDS bridge"
> >  	depends on OF
> > diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/M=
akefile
> > index 1eb5376c5d68..98581b3128a3 100644
> > --- a/drivers/gpu/drm/bridge/Makefile
> > +++ b/drivers/gpu/drm/bridge/Makefile
> > @@ -15,6 +15,9 @@ obj-$(CONFIG_DRM_TOSHIBA_TC358767) +=3D tc358767.o
> >  obj-$(CONFIG_DRM_I2C_ADV7511) +=3D adv7511/
> >  obj-$(CONFIG_DRM_TI_SN65DSI86) +=3D ti-sn65dsi86.o
> >  obj-$(CONFIG_DRM_TI_TFP410) +=3D ti-tfp410.o
> > +obj-$(CONFIG_DRM_NWL_MIPI_DSI) +=3D nwl-dsi.o
> >  =

> >  obj-y +=3D analogix/
> >  obj-y +=3D synopsys/
> > +
> > +header-test-y +=3D nwl-dsi.h
> Sorry - but header-test-y support was ripped out of the kernel again.
> So this line has no longer any effect.

Missed that removal, dropped.

> > +
> > +static void nwl_dsi_bridge_enable(struct drm_bridge *bridge)
> > +{
> > +	struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +	int ret;
> > +
> > +	/* Step 5 from DSI reset-out instructions */
> > +	ret =3D reset_control_deassert(dsi->rst_dpi);
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dsi->dev, "Failed to deassert DPI: %d\n", ret);
> I picked this for a general comment.
> =

>     We have drm_err(drm, "...", ...) which is preferred over DRM_XXX
>     They require a drm_device * that may not be available everywhere.
> =

> IMO not a showstopper, but should be trivial to fix (if adrm_device * is
> a avaiable).

We don't do a drm_dev_alloc so no drm device here afaik tell.

> =

> > +}
> > +
> > +static int nwl_dsi_bridge_attach(struct drm_bridge *bridge)
> > +{
> > +	struct nwl_dsi *dsi =3D bridge_to_dsi(bridge);
> > +	struct drm_bridge *panel_bridge;
> > +	struct drm_panel *panel;
> > +	int ret;
> =

> This function now takes a flags argument.
> In other words - the driver will not build when applied
> to drm-misc-next.

Fixed by rebasing on next-20200317. I'll send a new version after
letting this sit for a moment. It'd be so cool to get this queued up so
we get a working display stack on the imx8mq.

Cheers,
 -- Guido

> =

> > +
> > +	ret =3D drm_of_find_panel_or_bridge(dsi->dev->of_node, 1, 0, &panel,
> > +					  &panel_bridge);
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (panel) {
> > +		panel_bridge =3D drm_panel_bridge_add(panel);
> > +		if (IS_ERR(panel_bridge))
> > +			return PTR_ERR(panel_bridge);
> > +	}
> > +	dsi->panel_bridge =3D panel_bridge;
> > +
> > +	if (!dsi->panel_bridge)
> > +		return -EPROBE_DEFER;
> > +
> > +	return drm_bridge_attach(bridge->encoder, dsi->panel_bridge, bridge);
> > +}
> =

> 	Sam
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
