Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3518817D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3FVAeRzdMNFmdRaeNKrFdnZA5TNBHkn3Eypuq9q+Mc=; b=ZhNBXgHjSc4TXJ
	F7DZllBOoInackcJfs6EvViy0S4Diqo1OHZjWkQb/QDfbyG0lRBLl93Tj4jc1rH4FbQS5FFTmgjHT
	QZKrf6Y0J05v6FVFkl0fddm2dE4+aUsxCesWeweBnA8sTU7Ae7iYq8aA3MEXiIfnbOnSrg3rfqB3g
	0x+2mQEUIlKxXGh6GdYTOvVlCJ7VuZh0m5qgwnS8yNQQ+EQLWJb51KbgW3ivIOZsMQvV9HTYr3KH2
	Xtdy4dok30EDamby0+Ik2qQY+tW8msF5AHHbEUvNUhZ+YzB1s1wMZ8m13368p67VZ+MU+KYpJ7SaT
	etGKB4fAkOxJkvtO6g4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huanU-0001O1-Eu; Mon, 05 Aug 2019 11:05:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huan6-0001NO-PM
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:04:38 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 87C3C2F9;
 Mon,  5 Aug 2019 13:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1565003074;
 bh=8VWmeKAi+VQmMmX5OgERLSe/ebFgda0ImZi18qt+/lw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I4bCAk7E3hHQYAAekZt6asjHI5GYpU3skG/lyEpBDPe2MY7uV9zFqHd/ryYs08+ax
 3FHMb6fQ73A8yNLXKxmvlR1VuNjv+/3fzD7gAGFyUc2mHZPcxaKcLzp6uRPUvbaEPV
 1l2EYMpteaUJO4KcBixbmm0n3//c0ZIQ2VW5MXE0=
Date: Mon, 5 Aug 2019 14:04:32 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 15/16] drm/panel: add backlight support
Message-ID: <20190805110432.GJ29747@pendragon.ideasonboard.com>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-16-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804201637.1240-16-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_040437_124490_5BE594B8 
X-CRM114-Status: GOOD (  29.40  )
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

On Sun, Aug 04, 2019 at 10:16:36PM +0200, Sam Ravnborg wrote:
> Panels often supports backlight as specified in a device tree.
> Update the drm_panel infrastructure to support this to
> simplify the drivers.
> 
> With this the panel driver just needs to add the following to the
> probe() function:
> 
>     err = drm_panel_of_backlight(panel);
>     if (err)
>             return err;
> 
> Then drm_panel will handle all the rest.

Do you have an example on how this will simplify drivers ? How many
existing panel drivers would benefit from this, and do you plan to
convert them ?

> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/drm_panel.c | 41 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_panel.h     | 23 +++++++++++++++++++++
>  2 files changed, 64 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 0853764040de..d8139674b883 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -21,6 +21,7 @@
>   * DEALINGS IN THE SOFTWARE.
>   */
>  
> +#include <linux/backlight.h>
>  #include <linux/err.h>
>  #include <linux/module.h>
>  
> @@ -110,6 +111,7 @@ int drm_panel_enable(struct drm_panel *panel)
>  	if (ret >= 0)
>  		panel->enabled = true;
>  
> +	backlight_enable(panel->backlight);
>  	return ret;
>  }
>  EXPORT_SYMBOL(drm_panel_enable);
> @@ -134,6 +136,8 @@ int drm_panel_disable(struct drm_panel *panel)
>  	if (!panel->enabled)
>  		return 0;
>  
> +	backlight_disable(panel->backlight);
> +
>  	if (panel->funcs && panel->funcs->disable)
>  		ret = panel->funcs->disable(panel);
>  
> @@ -308,6 +312,43 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  EXPORT_SYMBOL(of_drm_find_panel);
>  #endif
>  
> +#ifdef CONFIG_BACKLIGHT_CLASS_DEVICE
> +/**
> + * drm_panel_of_backlight - use backlight device node for backlight
> + * @panel: DRM panel
> + *
> + * Use this function to enable backlight handling if your panel
> + * uses device tree and has a backlight handle.
> + *
> + * When panel is enabled backlight will be enabled after a
> + * successfull call to &drm_panel_funcs.enable()
> + *
> + * When panel is disabled backlight will be disabled before the
> + * call to &drm_panel_funcs.disable().
> + *
> + * A typical implementation for a panel driver supporting device tree
> + * will call this function and then backlight just works.
> + *
> + * Return: 0 on success or a negative error code on failure.
> + */
> +int drm_panel_of_backlight(struct drm_panel *panel)
> +{
> +	struct backlight_device *backlight;
> +
> +	if (!panel || !panel->dev)
> +		return -EINVAL;
> +
> +	backlight = devm_of_find_backlight(panel->dev);
> +
> +	if (IS_ERR(backlight))
> +                return PTR_ERR(backlight);
> +
> +	panel->backlight = backlight;
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_panel_of_backlight);
> +#endif
> +
>  MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
>  MODULE_DESCRIPTION("DRM panel infrastructure");
>  MODULE_LICENSE("GPL and additional rights");
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 7493500fc9bd..31349c2393b7 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -28,6 +28,7 @@
>  #include <linux/errno.h>
>  #include <linux/list.h>
>  
> +struct backlight_device;
>  struct device_node;
>  struct drm_connector;
>  struct drm_device;
> @@ -59,6 +60,10 @@ struct display_timing;
>   *
>   * To save power when no video data is transmitted, a driver can power down
>   * the panel. This is the job of the .unprepare() function.
> + *
> + * Backlight can be handled automatically if configured using
> + * drm_panel_of_backlight(). Then the driver do not need to implement the
> + * functionality to enable/disable backlight.
>   */
>  struct drm_panel_funcs {
>  	/**
> @@ -139,6 +144,15 @@ struct drm_panel {
>  	 */
>  	struct device *dev;
>  
> +	/**
> +	 * @backlight:
> +	 *
> +	 * Backlight device, used to turn on backlight after
> +	 * the call to enable(), and to turn off
> +	 * backlight before call to disable().
> +	 */
> +	struct backlight_device *backlight;
> +
>  	/**
>  	 * @funcs:
>  	 *
> @@ -193,4 +207,13 @@ static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  }
>  #endif
>  
> +#if defined(CONFIG_BACKLIGHT_CLASS_DEVICE) && defined(CONFIG_DRM_PANEL)
> +int drm_panel_of_backlight(struct drm_panel *panel);

I would expect callers of this function to depend on (or select)
CONFIG_DRM_PANEL, so I would drop it from here.

> +#else
> +static inline int drm_panel_of_backlight(struct drm_panel *panel)
> +{
> +	return -EINVAL;

Maybe -ENOSYS ?

> +}
> +#endif
> +
>  #endif

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
