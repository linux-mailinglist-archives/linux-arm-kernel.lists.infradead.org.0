Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B32112B07
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3UZ7eBzRYRcp7kbLGt27EFy0Y2It844mCoZK2XqAqE=; b=O4MyCcy/uH/SzM
	OPgmZ3n9mN/lY4Q8nkZUHm/zm4QrHyBy1jbz2tzgsXFOasWWhwA1bysLS742zOIGd6RNJveQsCm4c
	zORUymtogzTSPExXZtqLm6YduyMi5nyL6LO0YFLtuGDsutnWXL2ZnPZdG6i4JEjJl0TOZ59myDHeS
	iFWr9tU0Dt3IxXkWJpRd2RD8Dax6+c42ULninq4vK8WVvlj43EpCQMLEvtKNZkE7xzLBM9eCSNC1E
	vehgalxxTFi41ES9lJFEH4Q3MDSf+fqjtosQyB9prHe3QCDQsk2IhVigXUCRbDK+/o1bTby7E4q6V
	SOe2sUcyxUCQLYZbE6pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icTSE-0005su-MT; Wed, 04 Dec 2019 12:08:26 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icTS0-0005sN-PA; Wed, 04 Dec 2019 12:08:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 3F0D0FB05;
 Wed,  4 Dec 2019 13:08:11 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Z4RgFrK9w6x; Wed,  4 Dec 2019 13:08:04 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 8214A4964C; Wed,  4 Dec 2019 13:08:04 +0100 (CET)
Date: Wed, 4 Dec 2019 13:08:04 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 05/26] drm/panel: add drm_connector argument to
 get_modes()
Message-ID: <20191204120804.GC18094@bogon.m.sigxcpu.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-6-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202193230.21310-6-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_040813_292422_26FCC386 
X-CRM114-Status: GOOD (  16.60  )
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
 Stefan Mavrodiev <stefan@olimex.com>, linux-rockchip@lists.infradead.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Jagan Teki <jagan@amarulasolutions.com>,
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

Hi Sam,
On Mon, Dec 02, 2019 at 08:32:09PM +0100, Sam Ravnborg wrote:
> Today the bridge creates the drm_connector, but that is planned
> to be moved to the display drivers.

Do you have a reference for that move at hand?
Cheers,
 -- Guido

> To facilitate this, update drm_panel_funcs.get_modes() to
> take drm_connector as an argument.
> All panel drivers implementing get_modes() are updated.
> =

> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Stefan Mavrodiev <stefan@olimex.com>
> Cc: Robert Chiras <robert.chiras@nxp.com>
> Cc: "Guido G=FCnther" <agx@sigxcpu.org>
> Cc: Purism Kernel Team <kernel@puri.sm>
> ---
>  drivers/gpu/drm/drm_panel.c                   |  2 +-
>  drivers/gpu/drm/panel/panel-arm-versatile.c   |  4 +--
>  .../drm/panel/panel-feiyang-fy07024di26a30d.c |  4 +--
>  drivers/gpu/drm/panel/panel-ilitek-ili9322.c  |  5 ++--
>  drivers/gpu/drm/panel/panel-ilitek-ili9881c.c |  8 +++---
>  drivers/gpu/drm/panel/panel-innolux-p079zca.c | 13 +++++----
>  .../gpu/drm/panel/panel-jdi-lt070me05000.c    |  9 ++++---
>  .../drm/panel/panel-kingdisplay-kd097d04.c    | 11 ++++----
>  drivers/gpu/drm/panel/panel-lg-lb035q02.c     |  4 +--
>  drivers/gpu/drm/panel/panel-lg-lg4573.c       |  8 +++---
>  drivers/gpu/drm/panel/panel-lvds.c            |  4 +--
>  drivers/gpu/drm/panel/panel-nec-nl8048hl11.c  |  4 +--
>  drivers/gpu/drm/panel/panel-novatek-nt39016.c |  4 +--
>  .../drm/panel/panel-olimex-lcd-olinuxino.c    |  4 +--
>  .../gpu/drm/panel/panel-orisetech-otm8009a.c  |  9 ++++---
>  .../drm/panel/panel-osd-osd101t2587-53ts.c    |  9 ++++---
>  .../drm/panel/panel-panasonic-vvx10f034n00.c  |  9 ++++---
>  .../drm/panel/panel-raspberrypi-touchscreen.c |  4 +--
>  drivers/gpu/drm/panel/panel-raydium-rm67191.c |  6 ++---
>  drivers/gpu/drm/panel/panel-raydium-rm68200.c |  9 ++++---
>  .../drm/panel/panel-rocktech-jh057n00900.c    |  9 ++++---
>  drivers/gpu/drm/panel/panel-ronbo-rb070d30.c  | 10 +++----
>  drivers/gpu/drm/panel/panel-samsung-ld9040.c  |  4 +--
>  drivers/gpu/drm/panel/panel-samsung-s6d16d0.c |  4 +--
>  drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c |  4 +--
>  .../gpu/drm/panel/panel-samsung-s6e63j0x03.c  |  4 +--
>  drivers/gpu/drm/panel/panel-samsung-s6e63m0.c |  4 +--
>  drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c |  4 +--
>  drivers/gpu/drm/panel/panel-seiko-43wvf1g.c   |  9 ++++---
>  .../gpu/drm/panel/panel-sharp-lq101r1sx01.c   |  9 ++++---
>  .../gpu/drm/panel/panel-sharp-ls037v7dw01.c   |  4 +--
>  .../gpu/drm/panel/panel-sharp-ls043t1le01.c   |  9 ++++---
>  drivers/gpu/drm/panel/panel-simple.c          | 27 ++++++++++---------
>  drivers/gpu/drm/panel/panel-sitronix-st7701.c |  9 ++++---
>  .../gpu/drm/panel/panel-sitronix-st7789v.c    |  8 +++---
>  drivers/gpu/drm/panel/panel-sony-acx565akm.c  |  4 +--
>  drivers/gpu/drm/panel/panel-tpo-td028ttec1.c  |  4 +--
>  drivers/gpu/drm/panel/panel-tpo-td043mtea1.c  |  4 +--
>  drivers/gpu/drm/panel/panel-tpo-tpg110.c      |  4 +--
>  drivers/gpu/drm/panel/panel-truly-nt35597.c   |  4 +--
>  include/drm/drm_panel.h                       |  3 ++-
>  41 files changed, 141 insertions(+), 130 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 35609c90e467..9927e28d93e6 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -252,7 +252,7 @@ int drm_panel_get_modes(struct drm_panel *panel)
>  		return -EINVAL;
>  =

>  	if (panel->funcs && panel->funcs->get_modes)
> -		return panel->funcs->get_modes(panel);
> +		return panel->funcs->get_modes(panel, panel->connector);
>  =

>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-arm-versatile.c b/drivers/gpu/dr=
m/panel/panel-arm-versatile.c
> index a0574dc03e16..41aa91f60979 100644
> --- a/drivers/gpu/drm/panel/panel-arm-versatile.c
> +++ b/drivers/gpu/drm/panel/panel-arm-versatile.c
> @@ -260,9 +260,9 @@ static int versatile_panel_enable(struct drm_panel *p=
anel)
>  	return 0;
>  }
>  =

> -static int versatile_panel_get_modes(struct drm_panel *panel)
> +static int versatile_panel_get_modes(struct drm_panel *panel,
> +				     struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct versatile_panel *vpanel =3D to_versatile_panel(panel);
>  	struct drm_display_mode *mode;
>  =

> diff --git a/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c b/driv=
ers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
> index 98f184b81187..37d6b7390954 100644
> --- a/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
> +++ b/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
> @@ -162,9 +162,9 @@ static const struct drm_display_mode feiyang_default_=
mode =3D {
>  	.type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
>  };
>  =

> -static int feiyang_get_modes(struct drm_panel *panel)
> +static int feiyang_get_modes(struct drm_panel *panel,
> +			     struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct feiyang *ctx =3D panel_to_feiyang(panel);
>  	struct drm_display_mode *mode;
>  =

> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9322.c b/drivers/gpu/d=
rm/panel/panel-ilitek-ili9322.c
> index 24955bec1958..8fd4c0521841 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9322.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9322.c
> @@ -641,9 +641,9 @@ static const struct drm_display_mode itu_r_bt_656_720=
_mode =3D {
>  	.flags =3D 0,
>  };
>  =

> -static int ili9322_get_modes(struct drm_panel *panel)
> +static int ili9322_get_modes(struct drm_panel *panel,
> +			     struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct ili9322 *ili =3D panel_to_ili9322(panel);
>  	struct drm_display_mode *mode;
>  	struct drm_display_info *info;
> @@ -655,7 +655,6 @@ static int ili9322_get_modes(struct drm_panel *panel)
>  		info->bus_flags |=3D DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE;
>  	else
>  		info->bus_flags |=3D DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE;
> -
>  	if (ili->conf->de_active_high)
>  		info->bus_flags |=3D DRM_BUS_FLAG_DE_HIGH;
>  	else
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/=
drm/panel/panel-ilitek-ili9881c.c
> index e8789e460a16..1c67a668d6bf 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -387,9 +387,9 @@ static const struct drm_display_mode bananapi_default=
_mode =3D {
>  	.vtotal		=3D 1280 + 10 + 10 + 20,
>  };
>  =

> -static int ili9881c_get_modes(struct drm_panel *panel)
> +static int ili9881c_get_modes(struct drm_panel *panel,
> +			      struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct ili9881c *ctx =3D panel_to_ili9881c(panel);
>  	struct drm_display_mode *mode;
>  =

> @@ -407,8 +407,8 @@ static int ili9881c_get_modes(struct drm_panel *panel)
>  	mode->type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
>  	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D 62;
> -	panel->connector->display_info.height_mm =3D 110;
> +	connector->display_info.width_mm =3D 62;
> +	connector->display_info.height_mm =3D 110;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-innolux-p079zca.c b/drivers/gpu/=
drm/panel/panel-innolux-p079zca.c
> index 83df1ac4211f..facf1bab2532 100644
> --- a/drivers/gpu/drm/panel/panel-innolux-p079zca.c
> +++ b/drivers/gpu/drm/panel/panel-innolux-p079zca.c
> @@ -403,7 +403,8 @@ static const struct panel_desc innolux_p097pfg_panel_=
desc =3D {
>  	.sleep_mode_delay =3D 100, /* T15 */
>  };
>  =

> -static int innolux_panel_get_modes(struct drm_panel *panel)
> +static int innolux_panel_get_modes(struct drm_panel *panel,
> +				   struct drm_connector *connector)
>  {
>  	struct innolux_panel *innolux =3D to_innolux_panel(panel);
>  	const struct drm_display_mode *m =3D innolux->desc->mode;
> @@ -418,13 +419,11 @@ static int innolux_panel_get_modes(struct drm_panel=
 *panel)
>  =

>  	drm_mode_set_name(mode);
>  =

> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D
> -			innolux->desc->size.width;
> -	panel->connector->display_info.height_mm =3D
> -			innolux->desc->size.height;
> -	panel->connector->display_info.bpc =3D innolux->desc->bpc;
> +	connector->display_info.width_mm =3D innolux->desc->size.width;
> +	connector->display_info.height_mm =3D innolux->desc->size.height;
> +	connector->display_info.bpc =3D innolux->desc->bpc;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-jdi-lt070me05000.c b/drivers/gpu=
/drm/panel/panel-jdi-lt070me05000.c
> index 56364a93f0b8..e6b650a64fdb 100644
> --- a/drivers/gpu/drm/panel/panel-jdi-lt070me05000.c
> +++ b/drivers/gpu/drm/panel/panel-jdi-lt070me05000.c
> @@ -300,7 +300,8 @@ static const struct drm_display_mode default_mode =3D=
 {
>  		.flags =3D 0,
>  };
>  =

> -static int jdi_panel_get_modes(struct drm_panel *panel)
> +static int jdi_panel_get_modes(struct drm_panel *panel,
> +			       struct drm_connector *connector)
>  {
>  	struct drm_display_mode *mode;
>  	struct jdi_panel *jdi =3D to_jdi_panel(panel);
> @@ -316,10 +317,10 @@ static int jdi_panel_get_modes(struct drm_panel *pa=
nel)
>  =

>  	drm_mode_set_name(mode);
>  =

> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D 95;
> -	panel->connector->display_info.height_mm =3D 151;
> +	connector->display_info.width_mm =3D 95;
> +	connector->display_info.height_mm =3D 151;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-kingdisplay-kd097d04.c b/drivers=
/gpu/drm/panel/panel-kingdisplay-kd097d04.c
> index 45f96556ec8c..e6f53d56daf9 100644
> --- a/drivers/gpu/drm/panel/panel-kingdisplay-kd097d04.c
> +++ b/drivers/gpu/drm/panel/panel-kingdisplay-kd097d04.c
> @@ -333,7 +333,8 @@ static const struct drm_display_mode default_mode =3D=
 {
>  	.vrefresh =3D 60,
>  };
>  =

> -static int kingdisplay_panel_get_modes(struct drm_panel *panel)
> +static int kingdisplay_panel_get_modes(struct drm_panel *panel,
> +				       struct drm_connector *connector)
>  {
>  	struct drm_display_mode *mode;
>  =

> @@ -347,11 +348,11 @@ static int kingdisplay_panel_get_modes(struct drm_p=
anel *panel)
>  =

>  	drm_mode_set_name(mode);
>  =

> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D 147;
> -	panel->connector->display_info.height_mm =3D 196;
> -	panel->connector->display_info.bpc =3D 8;
> +	connector->display_info.width_mm =3D 147;
> +	connector->display_info.height_mm =3D 196;
> +	connector->display_info.bpc =3D 8;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-lg-lb035q02.c b/drivers/gpu/drm/=
panel/panel-lg-lb035q02.c
> index 7a1385e834f0..7a3bd4d80c79 100644
> --- a/drivers/gpu/drm/panel/panel-lg-lb035q02.c
> +++ b/drivers/gpu/drm/panel/panel-lg-lb035q02.c
> @@ -141,9 +141,9 @@ static const struct drm_display_mode lb035q02_mode =
=3D {
>  	.height_mm =3D 53,
>  };
>  =

> -static int lb035q02_get_modes(struct drm_panel *panel)
> +static int lb035q02_get_modes(struct drm_panel *panel,
> +			      struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &lb035q02_mode);
> diff --git a/drivers/gpu/drm/panel/panel-lg-lg4573.c b/drivers/gpu/drm/pa=
nel/panel-lg-lg4573.c
> index db4865a4c2b9..fc6572b4e2f9 100644
> --- a/drivers/gpu/drm/panel/panel-lg-lg4573.c
> +++ b/drivers/gpu/drm/panel/panel-lg-lg4573.c
> @@ -209,9 +209,9 @@ static const struct drm_display_mode default_mode =3D=
 {
>  	.vrefresh =3D 60,
>  };
>  =

> -static int lg4573_get_modes(struct drm_panel *panel)
> +static int lg4573_get_modes(struct drm_panel *panel,
> +			    struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &default_mode);
> @@ -227,8 +227,8 @@ static int lg4573_get_modes(struct drm_panel *panel)
>  	mode->type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
>  	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D 61;
> -	panel->connector->display_info.height_mm =3D 103;
> +	connector->display_info.width_mm =3D 61;
> +	connector->display_info.height_mm =3D 103;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-lvds.c b/drivers/gpu/drm/panel/p=
anel-lvds.c
> index 2405f26e5d31..f6d58a60e514 100644
> --- a/drivers/gpu/drm/panel/panel-lvds.c
> +++ b/drivers/gpu/drm/panel/panel-lvds.c
> @@ -106,10 +106,10 @@ static int panel_lvds_enable(struct drm_panel *pane=
l)
>  	return 0;
>  }
>  =

> -static int panel_lvds_get_modes(struct drm_panel *panel)
> +static int panel_lvds_get_modes(struct drm_panel *panel,
> +				struct drm_connector *connector)
>  {
>  	struct panel_lvds *lvds =3D to_panel_lvds(panel);
> -	struct drm_connector *connector =3D lvds->panel.connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_create(lvds->panel.drm);
> diff --git a/drivers/gpu/drm/panel/panel-nec-nl8048hl11.c b/drivers/gpu/d=
rm/panel/panel-nec-nl8048hl11.c
> index fd593532ab23..a6ccdb09aace 100644
> --- a/drivers/gpu/drm/panel/panel-nec-nl8048hl11.c
> +++ b/drivers/gpu/drm/panel/panel-nec-nl8048hl11.c
> @@ -123,9 +123,9 @@ static const struct drm_display_mode nl8048_mode =3D {
>  	.height_mm =3D 53,
>  };
>  =

> -static int nl8048_get_modes(struct drm_panel *panel)
> +static int nl8048_get_modes(struct drm_panel *panel,
> +			    struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &nl8048_mode);
> diff --git a/drivers/gpu/drm/panel/panel-novatek-nt39016.c b/drivers/gpu/=
drm/panel/panel-novatek-nt39016.c
> index 60ccedce530c..91ea49c05611 100644
> --- a/drivers/gpu/drm/panel/panel-novatek-nt39016.c
> +++ b/drivers/gpu/drm/panel/panel-novatek-nt39016.c
> @@ -206,11 +206,11 @@ static int nt39016_disable(struct drm_panel *drm_pa=
nel)
>  	return 0;
>  }
>  =

> -static int nt39016_get_modes(struct drm_panel *drm_panel)
> +static int nt39016_get_modes(struct drm_panel *drm_panel,
> +			     struct drm_connector *connector)
>  {
>  	struct nt39016 *panel =3D to_nt39016(drm_panel);
>  	const struct nt39016_panel_info *panel_info =3D panel->panel_info;
> -	struct drm_connector *connector =3D drm_panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(drm_panel->drm, &panel_info->display_mode);
> diff --git a/drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c b/drivers=
/gpu/drm/panel/panel-olimex-lcd-olinuxino.c
> index 8738ef1b66dc..2b7e0dfebc5e 100644
> --- a/drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c
> +++ b/drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c
> @@ -141,10 +141,10 @@ static int lcd_olinuxino_enable(struct drm_panel *p=
anel)
>  	return 0;
>  }
>  =

> -static int lcd_olinuxino_get_modes(struct drm_panel *panel)
> +static int lcd_olinuxino_get_modes(struct drm_panel *panel,
> +				   struct drm_connector *connector)
>  {
>  	struct lcd_olinuxino *lcd =3D to_lcd_olinuxino(panel);
> -	struct drm_connector *connector =3D lcd->panel.connector;
>  	struct lcd_olinuxino_info *lcd_info =3D &lcd->eeprom.info;
>  	struct drm_device *drm =3D lcd->panel.drm;
>  	struct lcd_olinuxino_mode *lcd_mode;
> diff --git a/drivers/gpu/drm/panel/panel-orisetech-otm8009a.c b/drivers/g=
pu/drm/panel/panel-orisetech-otm8009a.c
> index bf1f928b215f..4e1606c79072 100644
> --- a/drivers/gpu/drm/panel/panel-orisetech-otm8009a.c
> +++ b/drivers/gpu/drm/panel/panel-orisetech-otm8009a.c
> @@ -349,7 +349,8 @@ static int otm8009a_enable(struct drm_panel *panel)
>  	return 0;
>  }
>  =

> -static int otm8009a_get_modes(struct drm_panel *panel)
> +static int otm8009a_get_modes(struct drm_panel *panel,
> +			      struct drm_connector *connector)
>  {
>  	struct drm_display_mode *mode;
>  =

> @@ -364,10 +365,10 @@ static int otm8009a_get_modes(struct drm_panel *pan=
el)
>  	drm_mode_set_name(mode);
>  =

>  	mode->type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D mode->width_mm;
> -	panel->connector->display_info.height_mm =3D mode->height_mm;
> +	connector->display_info.width_mm =3D mode->width_mm;
> +	connector->display_info.height_mm =3D mode->height_mm;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-osd-osd101t2587-53ts.c b/drivers=
/gpu/drm/panel/panel-osd-osd101t2587-53ts.c
> index 2b40913899d8..b3e010288c10 100644
> --- a/drivers/gpu/drm/panel/panel-osd-osd101t2587-53ts.c
> +++ b/drivers/gpu/drm/panel/panel-osd-osd101t2587-53ts.c
> @@ -112,7 +112,8 @@ static const struct drm_display_mode default_mode_osd=
101t2587 =3D {
>  	.flags =3D DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
>  };
>  =

> -static int osd101t2587_panel_get_modes(struct drm_panel *panel)
> +static int osd101t2587_panel_get_modes(struct drm_panel *panel,
> +				       struct drm_connector *connector)
>  {
>  	struct osd101t2587_panel *osd101t2587 =3D ti_osd_panel(panel);
>  	struct drm_display_mode *mode;
> @@ -128,10 +129,10 @@ static int osd101t2587_panel_get_modes(struct drm_p=
anel *panel)
>  =

>  	drm_mode_set_name(mode);
>  =

> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D 217;
> -	panel->connector->display_info.height_mm =3D 136;
> +	connector->display_info.width_mm =3D 217;
> +	connector->display_info.height_mm =3D 136;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c b/drive=
rs/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
> index 664605071d34..19a6eb4637c8 100644
> --- a/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
> +++ b/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
> @@ -166,7 +166,8 @@ static const struct drm_display_mode default_mode =3D=
 {
>  	.vrefresh =3D 60,
>  };
>  =

> -static int wuxga_nt_panel_get_modes(struct drm_panel *panel)
> +static int wuxga_nt_panel_get_modes(struct drm_panel *panel,
> +				    struct drm_connector *connector)
>  {
>  	struct drm_display_mode *mode;
>  =

> @@ -180,10 +181,10 @@ static int wuxga_nt_panel_get_modes(struct drm_pane=
l *panel)
>  =

>  	drm_mode_set_name(mode);
>  =

> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D 217;
> -	panel->connector->display_info.height_mm =3D 136;
> +	connector->display_info.width_mm =3D 217;
> +	connector->display_info.height_mm =3D 136;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c b/driv=
ers/gpu/drm/panel/panel-raspberrypi-touchscreen.c
> index 09824e92fc78..732b7111395e 100644
> --- a/drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c
> +++ b/drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c
> @@ -311,9 +311,9 @@ static int rpi_touchscreen_enable(struct drm_panel *p=
anel)
>  	return 0;
>  }
>  =

> -static int rpi_touchscreen_get_modes(struct drm_panel *panel)
> +static int rpi_touchscreen_get_modes(struct drm_panel *panel,
> +				     struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_device *drm =3D panel->drm;
>  	unsigned int i, num =3D 0;
>  	static const u32 bus_format =3D MEDIA_BUS_FMT_RGB888_1X24;
> diff --git a/drivers/gpu/drm/panel/panel-raydium-rm67191.c b/drivers/gpu/=
drm/panel/panel-raydium-rm67191.c
> index fd67fc6185c4..123bb68cfcb7 100644
> --- a/drivers/gpu/drm/panel/panel-raydium-rm67191.c
> +++ b/drivers/gpu/drm/panel/panel-raydium-rm67191.c
> @@ -436,9 +436,9 @@ static int rad_panel_disable(struct drm_panel *panel)
>  	return 0;
>  }
>  =

> -static int rad_panel_get_modes(struct drm_panel *panel)
> +static int rad_panel_get_modes(struct drm_panel *panel,
> +			       struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &default_mode);
> @@ -451,7 +451,7 @@ static int rad_panel_get_modes(struct drm_panel *pane=
l)
>  =

>  	drm_mode_set_name(mode);
>  	mode->type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

>  	connector->display_info.width_mm =3D mode->width_mm;
>  	connector->display_info.height_mm =3D mode->height_mm;
> diff --git a/drivers/gpu/drm/panel/panel-raydium-rm68200.c b/drivers/gpu/=
drm/panel/panel-raydium-rm68200.c
> index 994e855721f4..66fa975308ec 100644
> --- a/drivers/gpu/drm/panel/panel-raydium-rm68200.c
> +++ b/drivers/gpu/drm/panel/panel-raydium-rm68200.c
> @@ -335,7 +335,8 @@ static int rm68200_enable(struct drm_panel *panel)
>  	return 0;
>  }
>  =

> -static int rm68200_get_modes(struct drm_panel *panel)
> +static int rm68200_get_modes(struct drm_panel *panel,
> +			     struct drm_connector *connector)
>  {
>  	struct drm_display_mode *mode;
>  =

> @@ -350,10 +351,10 @@ static int rm68200_get_modes(struct drm_panel *pane=
l)
>  	drm_mode_set_name(mode);
>  =

>  	mode->type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D mode->width_mm;
> -	panel->connector->display_info.height_mm =3D mode->height_mm;
> +	connector->display_info.width_mm =3D mode->width_mm;
> +	connector->display_info.height_mm =3D mode->height_mm;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-rocktech-jh057n00900.c b/drivers=
/gpu/drm/panel/panel-rocktech-jh057n00900.c
> index 31234b79d3b1..b2d61cab3cad 100644
> --- a/drivers/gpu/drm/panel/panel-rocktech-jh057n00900.c
> +++ b/drivers/gpu/drm/panel/panel-rocktech-jh057n00900.c
> @@ -230,7 +230,8 @@ static const struct drm_display_mode default_mode =3D=
 {
>  	.height_mm   =3D 130,
>  };
>  =

> -static int jh057n_get_modes(struct drm_panel *panel)
> +static int jh057n_get_modes(struct drm_panel *panel,
> +			    struct drm_connector *connector)
>  {
>  	struct jh057n *ctx =3D panel_to_jh057n(panel);
>  	struct drm_display_mode *mode;
> @@ -246,9 +247,9 @@ static int jh057n_get_modes(struct drm_panel *panel)
>  	drm_mode_set_name(mode);
>  =

>  	mode->type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
> -	panel->connector->display_info.width_mm =3D mode->width_mm;
> -	panel->connector->display_info.height_mm =3D mode->height_mm;
> -	drm_mode_probed_add(panel->connector, mode);
> +	connector->display_info.width_mm =3D mode->width_mm;
> +	connector->display_info.height_mm =3D mode->height_mm;
> +	drm_mode_probed_add(connector, mode);
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-ronbo-rb070d30.c b/drivers/gpu/d=
rm/panel/panel-ronbo-rb070d30.c
> index 170a5cda21b9..57a462ce221e 100644
> --- a/drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
> +++ b/drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
> @@ -120,9 +120,9 @@ static const struct drm_display_mode default_mode =3D=
 {
>  	.height_mm	=3D 85,
>  };
>  =

> -static int rb070d30_panel_get_modes(struct drm_panel *panel)
> +static int rb070d30_panel_get_modes(struct drm_panel *panel,
> +				    struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct rb070d30_panel *ctx =3D panel_to_rb070d30_panel(panel);
>  	struct drm_display_mode *mode;
>  	static const u32 bus_format =3D MEDIA_BUS_FMT_RGB888_1X24;
> @@ -140,9 +140,9 @@ static int rb070d30_panel_get_modes(struct drm_panel =
*panel)
>  	mode->type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
>  	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.bpc =3D 8;
> -	panel->connector->display_info.width_mm =3D mode->width_mm;
> -	panel->connector->display_info.height_mm =3D mode->height_mm;
> +	connector->display_info.bpc =3D 8;
> +	connector->display_info.width_mm =3D mode->width_mm;
> +	connector->display_info.height_mm =3D mode->height_mm;
>  	drm_display_info_set_bus_formats(&connector->display_info,
>  					 &bus_format, 1);
>  =

> diff --git a/drivers/gpu/drm/panel/panel-samsung-ld9040.c b/drivers/gpu/d=
rm/panel/panel-samsung-ld9040.c
> index 250809ba37c7..3c52f15f7a1c 100644
> --- a/drivers/gpu/drm/panel/panel-samsung-ld9040.c
> +++ b/drivers/gpu/drm/panel/panel-samsung-ld9040.c
> @@ -261,9 +261,9 @@ static int ld9040_enable(struct drm_panel *panel)
>  	return 0;
>  }
>  =

> -static int ld9040_get_modes(struct drm_panel *panel)
> +static int ld9040_get_modes(struct drm_panel *panel,
> +			    struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct ld9040 *ctx =3D panel_to_ld9040(panel);
>  	struct drm_display_mode *mode;
>  =

> diff --git a/drivers/gpu/drm/panel/panel-samsung-s6d16d0.c b/drivers/gpu/=
drm/panel/panel-samsung-s6d16d0.c
> index e3a0397e953e..71939ab757b1 100644
> --- a/drivers/gpu/drm/panel/panel-samsung-s6d16d0.c
> +++ b/drivers/gpu/drm/panel/panel-samsung-s6d16d0.c
> @@ -143,9 +143,9 @@ static int s6d16d0_disable(struct drm_panel *panel)
>  	return 0;
>  }
>  =

> -static int s6d16d0_get_modes(struct drm_panel *panel)
> +static int s6d16d0_get_modes(struct drm_panel *panel,
> +			     struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &samsung_s6d16d0_mode);
> diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c b/drivers/gpu/=
drm/panel/panel-samsung-s6e3ha2.c
> index 938ab72c5540..8e0236ba6145 100644
> --- a/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c
> +++ b/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c
> @@ -645,9 +645,9 @@ static const struct s6e3ha2_panel_desc samsung_s6e3hf=
2 =3D {
>  	.type =3D HF2_TYPE,
>  };
>  =

> -static int s6e3ha2_get_modes(struct drm_panel *panel)
> +static int s6e3ha2_get_modes(struct drm_panel *panel,
> +			     struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct s6e3ha2 *ctx =3D container_of(panel, struct s6e3ha2, panel);
>  	struct drm_display_mode *mode;
>  =

> diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c b/drivers/g=
pu/drm/panel/panel-samsung-s6e63j0x03.c
> index a60635e9226d..c939d5bde4f0 100644
> --- a/drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c
> +++ b/drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c
> @@ -400,9 +400,9 @@ static int s6e63j0x03_enable(struct drm_panel *panel)
>  	return 0;
>  }
>  =

> -static int s6e63j0x03_get_modes(struct drm_panel *panel)
> +static int s6e63j0x03_get_modes(struct drm_panel *panel,
> +				struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &default_mode);
> diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e63m0.c b/drivers/gpu/=
drm/panel/panel-samsung-s6e63m0.c
> index ba01af0b14fd..1d099092e754 100644
> --- a/drivers/gpu/drm/panel/panel-samsung-s6e63m0.c
> +++ b/drivers/gpu/drm/panel/panel-samsung-s6e63m0.c
> @@ -362,9 +362,9 @@ static int s6e63m0_enable(struct drm_panel *panel)
>  	return 0;
>  }
>  =

> -static int s6e63m0_get_modes(struct drm_panel *panel)
> +static int s6e63m0_get_modes(struct drm_panel *panel,
> +			     struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &default_mode);
> diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c b/drivers/gpu/=
drm/panel/panel-samsung-s6e8aa0.c
> index dbced6501204..8a028d2bd0d6 100644
> --- a/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c
> +++ b/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c
> @@ -920,9 +920,9 @@ static int s6e8aa0_enable(struct drm_panel *panel)
>  	return 0;
>  }
>  =

> -static int s6e8aa0_get_modes(struct drm_panel *panel)
> +static int s6e8aa0_get_modes(struct drm_panel *panel,
> +			     struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct s6e8aa0 *ctx =3D panel_to_s6e8aa0(panel);
>  	struct drm_display_mode *mode;
>  =

> diff --git a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c b/drivers/gpu/dr=
m/panel/panel-seiko-43wvf1g.c
> index b3619ba443bd..b878930b17e4 100644
> --- a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> +++ b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> @@ -56,9 +56,9 @@ static inline struct seiko_panel *to_seiko_panel(struct=
 drm_panel *panel)
>  	return container_of(panel, struct seiko_panel, base);
>  }
>  =

> -static int seiko_panel_get_fixed_modes(struct seiko_panel *panel)
> +static int seiko_panel_get_fixed_modes(struct seiko_panel *panel,
> +				       struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->base.connector;
>  	struct drm_device *drm =3D panel->base.drm;
>  	struct drm_display_mode *mode;
>  	unsigned int i, num =3D 0;
> @@ -208,12 +208,13 @@ static int seiko_panel_enable(struct drm_panel *pan=
el)
>  	return 0;
>  }
>  =

> -static int seiko_panel_get_modes(struct drm_panel *panel)
> +static int seiko_panel_get_modes(struct drm_panel *panel,
> +				 struct drm_connector *connector)
>  {
>  	struct seiko_panel *p =3D to_seiko_panel(panel);
>  =

>  	/* add hard-coded panel modes */
> -	return seiko_panel_get_fixed_modes(p);
> +	return seiko_panel_get_fixed_modes(p, connector);
>  }
>  =

>  static int seiko_panel_get_timings(struct drm_panel *panel,
> diff --git a/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c b/drivers/gp=
u/drm/panel/panel-sharp-lq101r1sx01.c
> index 5e136c3ba185..e797b700661a 100644
> --- a/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c
> +++ b/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c
> @@ -278,7 +278,8 @@ static const struct drm_display_mode default_mode =3D=
 {
>  	.vrefresh =3D 60,
>  };
>  =

> -static int sharp_panel_get_modes(struct drm_panel *panel)
> +static int sharp_panel_get_modes(struct drm_panel *panel,
> +				 struct drm_connector *connector)
>  {
>  	struct drm_display_mode *mode;
>  =

> @@ -292,10 +293,10 @@ static int sharp_panel_get_modes(struct drm_panel *=
panel)
>  =

>  	drm_mode_set_name(mode);
>  =

> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D 217;
> -	panel->connector->display_info.height_mm =3D 136;
> +	connector->display_info.width_mm =3D 217;
> +	connector->display_info.height_mm =3D 136;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c b/drivers/gp=
u/drm/panel/panel-sharp-ls037v7dw01.c
> index eeab7998c7de..7103a945f0e8 100644
> --- a/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> +++ b/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> @@ -100,9 +100,9 @@ static const struct drm_display_mode ls037v7dw01_mode=
 =3D {
>  	.height_mm =3D 75,
>  };
>  =

> -static int ls037v7dw01_get_modes(struct drm_panel *panel)
> +static int ls037v7dw01_get_modes(struct drm_panel *panel,
> +				 struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &ls037v7dw01_mode);
> diff --git a/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c b/drivers/gp=
u/drm/panel/panel-sharp-ls043t1le01.c
> index b963ba4ab589..85ae6cffdbfb 100644
> --- a/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c
> +++ b/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c
> @@ -210,7 +210,8 @@ static const struct drm_display_mode default_mode =3D=
 {
>  	.vrefresh =3D 60,
>  };
>  =

> -static int sharp_nt_panel_get_modes(struct drm_panel *panel)
> +static int sharp_nt_panel_get_modes(struct drm_panel *panel,
> +				    struct drm_connector *connector)
>  {
>  	struct drm_display_mode *mode;
>  =

> @@ -224,10 +225,10 @@ static int sharp_nt_panel_get_modes(struct drm_pane=
l *panel)
>  =

>  	drm_mode_set_name(mode);
>  =

> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D 54;
> -	panel->connector->display_info.height_mm =3D 95;
> +	connector->display_info.width_mm =3D 54;
> +	connector->display_info.height_mm =3D 95;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel=
/panel-simple.c
> index a5df6d6dd455..d6299fe6d276 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -117,9 +117,9 @@ static inline struct panel_simple *to_panel_simple(st=
ruct drm_panel *panel)
>  	return container_of(panel, struct panel_simple, base);
>  }
>  =

> -static unsigned int panel_simple_get_timings_modes(struct panel_simple *=
panel)
> +static unsigned int panel_simple_get_timings_modes(struct panel_simple *=
panel,
> +						   struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->base.connector;
>  	struct drm_device *drm =3D panel->base.drm;
>  	struct drm_display_mode *mode;
>  	unsigned int i, num =3D 0;
> @@ -150,9 +150,9 @@ static unsigned int panel_simple_get_timings_modes(st=
ruct panel_simple *panel)
>  	return num;
>  }
>  =

> -static unsigned int panel_simple_get_display_modes(struct panel_simple *=
panel)
> +static unsigned int panel_simple_get_display_modes(struct panel_simple *=
panel,
> +						   struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->base.connector;
>  	struct drm_device *drm =3D panel->base.drm;
>  	struct drm_display_mode *mode;
>  	unsigned int i, num =3D 0;
> @@ -181,9 +181,9 @@ static unsigned int panel_simple_get_display_modes(st=
ruct panel_simple *panel)
>  	return num;
>  }
>  =

> -static int panel_simple_get_non_edid_modes(struct panel_simple *panel)
> +static int panel_simple_get_non_edid_modes(struct panel_simple *panel,
> +					   struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->base.connector;
>  	struct drm_device *drm =3D panel->base.drm;
>  	struct drm_display_mode *mode;
>  	bool has_override =3D panel->override_mode.type;
> @@ -204,7 +204,7 @@ static int panel_simple_get_non_edid_modes(struct pan=
el_simple *panel)
>  =

>  	/* Only add timings if override was not there or failed to validate */
>  	if (num =3D=3D 0 && panel->desc->num_timings)
> -		num =3D panel_simple_get_timings_modes(panel);
> +		num =3D panel_simple_get_timings_modes(panel, connector);
>  =

>  	/*
>  	 * Only add fixed modes if timings/override added no mode.
> @@ -214,7 +214,7 @@ static int panel_simple_get_non_edid_modes(struct pan=
el_simple *panel)
>  	 */
>  	WARN_ON(panel->desc->num_timings && panel->desc->num_modes);
>  	if (num =3D=3D 0)
> -		num =3D panel_simple_get_display_modes(panel);
> +		num =3D panel_simple_get_display_modes(panel, connector);
>  =

>  	connector->display_info.bpc =3D panel->desc->bpc;
>  	connector->display_info.width_mm =3D panel->desc->size.width;
> @@ -304,23 +304,24 @@ static int panel_simple_enable(struct drm_panel *pa=
nel)
>  	return 0;
>  }
>  =

> -static int panel_simple_get_modes(struct drm_panel *panel)
> +static int panel_simple_get_modes(struct drm_panel *panel,
> +				  struct drm_connector *connector)
>  {
>  	struct panel_simple *p =3D to_panel_simple(panel);
>  	int num =3D 0;
>  =

>  	/* probe EDID if a DDC bus is available */
>  	if (p->ddc) {
> -		struct edid *edid =3D drm_get_edid(panel->connector, p->ddc);
> -		drm_connector_update_edid_property(panel->connector, edid);
> +		struct edid *edid =3D drm_get_edid(connector, p->ddc);
> +		drm_connector_update_edid_property(connector, edid);
>  		if (edid) {
> -			num +=3D drm_add_edid_modes(panel->connector, edid);
> +			num +=3D drm_add_edid_modes(connector, edid);
>  			kfree(edid);
>  		}
>  	}
>  =

>  	/* add hard-coded panel modes */
> -	num +=3D panel_simple_get_non_edid_modes(p);
> +	num +=3D panel_simple_get_non_edid_modes(p, connector);
>  =

>  	return num;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gpu/=
drm/panel/panel-sitronix-st7701.c
> index ee3f23f45755..3ed3b1d6d82d 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> @@ -264,7 +264,8 @@ static int st7701_unprepare(struct drm_panel *panel)
>  	return 0;
>  }
>  =

> -static int st7701_get_modes(struct drm_panel *panel)
> +static int st7701_get_modes(struct drm_panel *panel,
> +			    struct drm_connector *connector)
>  {
>  	struct st7701 *st7701 =3D panel_to_st7701(panel);
>  	const struct drm_display_mode *desc_mode =3D st7701->desc->mode;
> @@ -280,10 +281,10 @@ static int st7701_get_modes(struct drm_panel *panel)
>  	}
>  =

>  	drm_mode_set_name(mode);
> -	drm_mode_probed_add(panel->connector, mode);
> +	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D desc_mode->width_mm;
> -	panel->connector->display_info.height_mm =3D desc_mode->height_mm;
> +	connector->display_info.width_mm =3D desc_mode->width_mm;
> +	connector->display_info.height_mm =3D desc_mode->height_mm;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu=
/drm/panel/panel-sitronix-st7789v.c
> index 108a85bb6667..836b01331505 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> @@ -170,9 +170,9 @@ static const struct drm_display_mode default_mode =3D=
 {
>  	.vrefresh =3D 60,
>  };
>  =

> -static int st7789v_get_modes(struct drm_panel *panel)
> +static int st7789v_get_modes(struct drm_panel *panel,
> +			     struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &default_mode);
> @@ -188,8 +188,8 @@ static int st7789v_get_modes(struct drm_panel *panel)
>  	mode->type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
>  	drm_mode_probed_add(connector, mode);
>  =

> -	panel->connector->display_info.width_mm =3D 61;
> -	panel->connector->display_info.height_mm =3D 103;
> +	connector->display_info.width_mm =3D 61;
> +	connector->display_info.height_mm =3D 103;
>  =

>  	return 1;
>  }
> diff --git a/drivers/gpu/drm/panel/panel-sony-acx565akm.c b/drivers/gpu/d=
rm/panel/panel-sony-acx565akm.c
> index d6387d8f88a3..841dc73c443d 100644
> --- a/drivers/gpu/drm/panel/panel-sony-acx565akm.c
> +++ b/drivers/gpu/drm/panel/panel-sony-acx565akm.c
> @@ -521,9 +521,9 @@ static const struct drm_display_mode acx565akm_mode =
=3D {
>  	.height_mm =3D 46,
>  };
>  =

> -static int acx565akm_get_modes(struct drm_panel *panel)
> +static int acx565akm_get_modes(struct drm_panel *panel,
> +			       struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &acx565akm_mode);
> diff --git a/drivers/gpu/drm/panel/panel-tpo-td028ttec1.c b/drivers/gpu/d=
rm/panel/panel-tpo-td028ttec1.c
> index c44d6a65c0aa..5230176bd8e6 100644
> --- a/drivers/gpu/drm/panel/panel-tpo-td028ttec1.c
> +++ b/drivers/gpu/drm/panel/panel-tpo-td028ttec1.c
> @@ -287,9 +287,9 @@ static const struct drm_display_mode td028ttec1_mode =
=3D {
>  	.height_mm =3D 58,
>  };
>  =

> -static int td028ttec1_get_modes(struct drm_panel *panel)
> +static int td028ttec1_get_modes(struct drm_panel *panel,
> +				struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &td028ttec1_mode);
> diff --git a/drivers/gpu/drm/panel/panel-tpo-td043mtea1.c b/drivers/gpu/d=
rm/panel/panel-tpo-td043mtea1.c
> index 621b65feec07..716f8ed1cc45 100644
> --- a/drivers/gpu/drm/panel/panel-tpo-td043mtea1.c
> +++ b/drivers/gpu/drm/panel/panel-tpo-td043mtea1.c
> @@ -346,9 +346,9 @@ static const struct drm_display_mode td043mtea1_mode =
=3D {
>  	.height_mm =3D 56,
>  };
>  =

> -static int td043mtea1_get_modes(struct drm_panel *panel)
> +static int td043mtea1_get_modes(struct drm_panel *panel,
> +				struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct drm_display_mode *mode;
>  =

>  	mode =3D drm_mode_duplicate(panel->drm, &td043mtea1_mode);
> diff --git a/drivers/gpu/drm/panel/panel-tpo-tpg110.c b/drivers/gpu/drm/p=
anel/panel-tpo-tpg110.c
> index 1a5418ae2ccf..e74cd9d418cf 100644
> --- a/drivers/gpu/drm/panel/panel-tpo-tpg110.c
> +++ b/drivers/gpu/drm/panel/panel-tpo-tpg110.c
> @@ -384,9 +384,9 @@ static int tpg110_enable(struct drm_panel *panel)
>   * presents the mode that is configured for the system under use,
>   * and which is detected by reading the registers of the display.
>   */
> -static int tpg110_get_modes(struct drm_panel *panel)
> +static int tpg110_get_modes(struct drm_panel *panel,
> +			    struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct tpg110 *tpg =3D to_tpg110(panel);
>  	struct drm_display_mode *mode;
>  =

> diff --git a/drivers/gpu/drm/panel/panel-truly-nt35597.c b/drivers/gpu/dr=
m/panel/panel-truly-nt35597.c
> index 0feea2456e14..012ca62bf30e 100644
> --- a/drivers/gpu/drm/panel/panel-truly-nt35597.c
> +++ b/drivers/gpu/drm/panel/panel-truly-nt35597.c
> @@ -454,9 +454,9 @@ static int truly_nt35597_enable(struct drm_panel *pan=
el)
>  	return 0;
>  }
>  =

> -static int truly_nt35597_get_modes(struct drm_panel *panel)
> +static int truly_nt35597_get_modes(struct drm_panel *panel,
> +				   struct drm_connector *connector)
>  {
> -	struct drm_connector *connector =3D panel->connector;
>  	struct truly_nt35597 *ctx =3D panel_to_ctx(panel);
>  	struct drm_display_mode *mode;
>  	const struct nt35597_config *config;
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index d30c98567384..a5f7199807f2 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -100,7 +100,8 @@ struct drm_panel_funcs {
>  	 * Add modes to the connector that the panel is attached to and
>  	 * return the number of modes added.
>  	 */
> -	int (*get_modes)(struct drm_panel *panel);
> +	int (*get_modes)(struct drm_panel *panel,
> +			 struct drm_connector *connector);
>  =

>  	/**
>  	 * @get_timings:
> -- =

> 2.20.1
> =

> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
