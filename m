Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC43B817EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21AZVeAw2wDlihIbsqcVDgnL/SYxQw+Ptqd81ptnlm4=; b=UvBeNDnSiScVKw
	memPrscPbJgxzaAQAk/46zTbW8U7ziuIUU/e+Vcxw8mDgk51wDDFRLeFv3gcrwDKW0DGLPcbxobQg
	RW1hcwx39JE48vbO1q1Tp52PJMfk0SnTuosK1UXuUbwsRAnMSv7iRVSyU1ONZwklFidRA0wnseTP7
	rRG4+74lXxKRZN1PzTUZ8uZI7Zv5L3mP0yqYfbIOlqAp4+/Os1f8Uxgt31h277AAf4F8Cqp3jrOef
	TRidlp/ltV4wbvBcURY3EoeFZUEZW3jgnvBmbXMhAFmHzvOCoAg9AHlXYwnKRje+OWtpQ2ZsRMrAF
	wvQOYX2B+YNVLrlbUaEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaug-0004y2-Qb; Mon, 05 Aug 2019 11:12:26 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huauS-0004xO-Re
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:12:14 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9EEB72F9;
 Mon,  5 Aug 2019 13:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1565003530;
 bh=9oRsbzluvIx+scgB0q5nmoh2+Hfrsu1ybp+awEmQZY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eoYncRKfcImPqIfTcPR1dT5vdOL9hemgqDnF24i/ui4gdfshnvu+4mqRcdAQe0n66
 c6X81UopU3KaY5I1pvjJmbar1s/WPxSaCImYooIaM2zSFk7hmI0izXPZcQMNPwuty+
 jqej5nQxn4BVSxLv3Gcsv+pHn+fbVjvwXB4yWn1Y=
Date: Mon, 5 Aug 2019 14:12:08 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 16/16] drm/panel: simple: use drm_panel infrastructure
Message-ID: <20190805111208.GK29747@pendragon.ideasonboard.com>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-17-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804201637.1240-17-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_041213_198159_29D531D3 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-samsung-soc@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Shawn Guo <shawnguo@kernel.org>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

Thank you for the patch.

On Sun, Aug 04, 2019 at 10:16:37PM +0200, Sam Ravnborg wrote:
> Use drm_panel infrastrucute:
> - drm_panel has guards for calling disable/enable twice

As stated in the review of the corresponding patch, I think those checks
should be dropped, but not moved to the panel core.

> - drm_panel has backlight support

This answers my first question in the review of 15/16 :-)

> To use the drm_panel infrastructure use the drm_panel_*
> variants for prepare/enable/disable/unprepare.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>

The change looks good overall,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

but this is pending an agreement on what to do with the multiple
prepare/enable guards.

> ---
>  drivers/gpu/drm/panel/panel-simple.c | 73 +++++-----------------------
>  1 file changed, 11 insertions(+), 62 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index bff7578f84dd..c7eed34f2c9c 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -21,7 +21,6 @@
>   * DEALINGS IN THE SOFTWARE.
>   */
>  
> -#include <linux/backlight.h>
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/module.h>
> @@ -98,13 +97,10 @@ struct panel_desc {
>  
>  struct panel_simple {
>  	struct drm_panel base;
> -	bool prepared;
> -	bool enabled;
>  	bool no_hpd;
>  
>  	const struct panel_desc *desc;
>  
> -	struct backlight_device *backlight;
>  	struct regulator *supply;
>  	struct i2c_adapter *ddc;
>  
> @@ -232,20 +228,9 @@ static int panel_simple_disable(struct drm_panel *panel)
>  {
>  	struct panel_simple *p = to_panel_simple(panel);
>  
> -	if (!p->enabled)
> -		return 0;
> -
> -	if (p->backlight) {
> -		p->backlight->props.power = FB_BLANK_POWERDOWN;
> -		p->backlight->props.state |= BL_CORE_FBBLANK;
> -		backlight_update_status(p->backlight);
> -	}
> -
>  	if (p->desc->delay.disable)
>  		msleep(p->desc->delay.disable);
>  
> -	p->enabled = false;
> -
>  	return 0;
>  }
>  
> @@ -253,9 +238,6 @@ static int panel_simple_unprepare(struct drm_panel *panel)
>  {
>  	struct panel_simple *p = to_panel_simple(panel);
>  
> -	if (!p->prepared)
> -		return 0;
> -
>  	gpiod_set_value_cansleep(p->enable_gpio, 0);
>  
>  	regulator_disable(p->supply);
> @@ -263,8 +245,6 @@ static int panel_simple_unprepare(struct drm_panel *panel)
>  	if (p->desc->delay.unprepare)
>  		msleep(p->desc->delay.unprepare);
>  
> -	p->prepared = false;
> -
>  	return 0;
>  }
>  
> @@ -274,9 +254,6 @@ static int panel_simple_prepare(struct drm_panel *panel)
>  	unsigned int delay;
>  	int err;
>  
> -	if (p->prepared)
> -		return 0;
> -
>  	err = regulator_enable(p->supply);
>  	if (err < 0) {
>  		dev_err(panel->dev, "failed to enable supply: %d\n", err);
> @@ -291,8 +268,6 @@ static int panel_simple_prepare(struct drm_panel *panel)
>  	if (delay)
>  		msleep(delay);
>  
> -	p->prepared = true;
> -
>  	return 0;
>  }
>  
> @@ -300,20 +275,9 @@ static int panel_simple_enable(struct drm_panel *panel)
>  {
>  	struct panel_simple *p = to_panel_simple(panel);
>  
> -	if (p->enabled)
> -		return 0;
> -
>  	if (p->desc->delay.enable)
>  		msleep(p->desc->delay.enable);
>  
> -	if (p->backlight) {
> -		p->backlight->props.state &= ~BL_CORE_FBBLANK;
> -		p->backlight->props.power = FB_BLANK_UNBLANK;
> -		backlight_update_status(p->backlight);
> -	}
> -
> -	p->enabled = true;
> -
>  	return 0;
>  }
>  
> @@ -413,7 +377,7 @@ static void panel_simple_parse_panel_timing_node(struct device *dev,
>  
>  static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
>  {
> -	struct device_node *backlight, *ddc;
> +	struct device_node *ddc;
>  	struct panel_simple *panel;
>  	struct display_timing dt;
>  	int err;
> @@ -422,8 +386,6 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
>  	if (!panel)
>  		return -ENOMEM;
>  
> -	panel->enabled = false;
> -	panel->prepared = false;
>  	panel->desc = desc;
>  
>  	panel->no_hpd = of_property_read_bool(dev->of_node, "no-hpd");
> @@ -441,24 +403,13 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
>  		return err;
>  	}
>  
> -	backlight = of_parse_phandle(dev->of_node, "backlight", 0);
> -	if (backlight) {
> -		panel->backlight = of_find_backlight_by_node(backlight);
> -		of_node_put(backlight);
> -
> -		if (!panel->backlight)
> -			return -EPROBE_DEFER;
> -	}
> -
>  	ddc = of_parse_phandle(dev->of_node, "ddc-i2c-bus", 0);
>  	if (ddc) {
>  		panel->ddc = of_find_i2c_adapter_by_node(ddc);
>  		of_node_put(ddc);
>  
> -		if (!panel->ddc) {
> -			err = -EPROBE_DEFER;
> -			goto free_backlight;
> -		}
> +		if (!panel->ddc)
> +			return -EPROBE_DEFER;
>  	}
>  
>  	if (!of_get_display_timing(dev->of_node, "panel-timing", &dt))
> @@ -468,6 +419,10 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
>  	panel->base.dev = dev;
>  	panel->base.funcs = &panel_simple_funcs;
>  
> +	err = drm_panel_of_backlight(&panel->base);
> +	if (err)
> +		goto free_ddc;
> +
>  	err = drm_panel_add(&panel->base);
>  	if (err < 0)
>  		goto free_ddc;
> @@ -479,9 +434,6 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
>  free_ddc:
>  	if (panel->ddc)
>  		put_device(&panel->ddc->dev);
> -free_backlight:
> -	if (panel->backlight)
> -		put_device(&panel->backlight->dev);

This looks weird, where

>  
>  	return err;
>  }
> @@ -492,15 +444,12 @@ static int panel_simple_remove(struct device *dev)
>  
>  	drm_panel_remove(&panel->base);
>  
> -	panel_simple_disable(&panel->base);
> -	panel_simple_unprepare(&panel->base);
> +	drm_panel_disable(&panel->base);
> +	drm_panel_unprepare(&panel->base);
>  
>  	if (panel->ddc)
>  		put_device(&panel->ddc->dev);
>  
> -	if (panel->backlight)
> -		put_device(&panel->backlight->dev);
> -
>  	return 0;
>  }
>  
> @@ -508,8 +457,8 @@ static void panel_simple_shutdown(struct device *dev)
>  {
>  	struct panel_simple *panel = dev_get_drvdata(dev);
>  
> -	panel_simple_disable(&panel->base);
> -	panel_simple_unprepare(&panel->base);
> +	drm_panel_disable(&panel->base);
> +	drm_panel_unprepare(&panel->base);
>  }
>  
>  static const struct drm_display_mode ampire_am_480272h3tmqw_t01h_mode = {

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
