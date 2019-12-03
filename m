Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE1510F7D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:32:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBbFWMbc+fdjkehk/8R2pjqzncac/Nvc5gEwS3rhD9Y=; b=nRiNMOAi2pO9Oz
	8dN28PsGMbh57kyBSubu0Jv9oRBkypiPsLLD2/whv3cEtsIcRdUBr8FyQqiaSXeqHo1yh426MzOFF
	MG8OLLLRDixYfMilpK7/ZfY47OgHkfeQpXQ0oDSo9WEn4ZjHzppDwwBFnhKbvWInWHhT8P53FFAoP
	XiwXTTHS5aMLdrdd1Lx/lZzSgYiEHWvavSQKpAulhYXLQOIGLNsNTcJkZu2GK40m/oM/1mRa1gI2j
	yzVkK0m+mETaFsyVAdY4/lrx8HzQ7veO/71FxiSjOnFZJYprKbYErbnvIqDu3FLxMqxpr2JMSDSrW
	kRyeRT5dvSqkJisNCVkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1ju-0005S7-D4; Tue, 03 Dec 2019 06:32:50 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1jm-0005RF-U9; Tue, 03 Dec 2019 06:32:44 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A0EE7309;
 Tue,  3 Dec 2019 07:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575354758;
 bh=Rt79t6HLiiyCOgEHHbw0L8UEFS/OIX7umWr/gd4dZCY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CzbNxfKYd5bUsGEcS2rhEu+uoCUjokLQ4WsuQbWKgzc+U8thHTq+0k9fQcWtl5tBO
 4A036+g0JTCEDoJzFyTqN2qYLNgzFQkFiQ6DEO4AiENXoPs8NrzYjq9FVBILJTVxEU
 Z5mhFidnih+AEdUFFomcz9JMUgNvEQGQpSDkIyzM=
Date: Tue, 3 Dec 2019 08:32:32 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 02/26] drm/panel: add backlight support
Message-ID: <20191203063232.GB4730@pendragon.ideasonboard.com>
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-3-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202193230.21310-3-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_223243_268051_06D26E33 
X-CRM114-Status: GOOD (  28.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Stefan Agner <stefan@agner.ch>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 NXP Linux Team <linux-imx@nxp.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Purism Kernel Team <kernel@puri.sm>,
 linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

Thank you for the patch.

On Mon, Dec 02, 2019 at 08:32:06PM +0100, Sam Ravnborg wrote:
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
> 
> v2:
> - Drop test of CONFIG_DRM_PANEL in header-file (Laurent)
> - do not enable backlight if ->enable() returns an error
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
>  drivers/gpu/drm/drm_panel.c | 49 +++++++++++++++++++++++++++++++++++--
>  include/drm/drm_panel.h     | 23 +++++++++++++++++
>  2 files changed, 70 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 2d59cdd05e50..35609c90e467 100644
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
> @@ -196,13 +197,18 @@ EXPORT_SYMBOL(drm_panel_unprepare);
>   */
>  int drm_panel_enable(struct drm_panel *panel)
>  {
> +	int ret = 0;
> +
>  	if (!panel)
>  		return -EINVAL;
>  
>  	if (panel->funcs && panel->funcs->enable)
> -		return panel->funcs->enable(panel);
> +		ret = panel->funcs->enable(panel);
>  
> -	return 0;
> +	if (ret >= 0)


I'd write

	if (panel->funcs && panel->funcs->enable) {
		ret = panel->funcs->enable(panel);
		if (ret < 0)
			return ret;
	}

and then handle the backlight with one less indentation level.


> +		backlight_enable(panel->backlight);

What is backlight_enable() returns an error ? Should we at least log
that ?

> +
> +	return ret;
>  }
>  EXPORT_SYMBOL(drm_panel_enable);
>  
> @@ -221,6 +227,8 @@ int drm_panel_disable(struct drm_panel *panel)
>  	if (!panel)
>  		return -EINVAL;
>  
> +	backlight_disable(panel->backlight);
> +
>  	if (panel->funcs && panel->funcs->disable)
>  		return panel->funcs->disable(panel);
>  
> @@ -289,6 +297,43 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
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

s/handle/phandle/

> + *
> + * When panel is enabled backlight will be enabled after a

s/panel/the panel/

> + * successfull call to &drm_panel_funcs.enable()
> + *
> + * When panel is disabled backlight will be disabled before the

Same here.

> + * call to &drm_panel_funcs.disable().
> + *
> + * A typical implementation for a panel driver supporting device tree
> + * will call this function and then backlight just works.

How about

"will call this function at probe time. Backlight will then be handled
transparently without requiring any intervention from the driver at
runtime."

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
> index ce8da64022b4..d30c98567384 100644
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

s/do not/does not/

> + * functionality to enable/disable backlight.
>   */
>  struct drm_panel_funcs {
>  	/**
> @@ -132,6 +137,15 @@ struct drm_panel {
>  	 */
>  	struct device *dev;
>  
> +	/**
> +	 * @backlight:
> +	 *
> +	 * Backlight device, used to turn on backlight after
> +	 * the call to enable(), and to turn off
> +	 * backlight before call to disable().

s/before call/before the call/

or maybe simpler


s/before call to disable()/before disable()/

(and 'after enable()' above in that case).

Should you mention that this field shall not be set directly by drivers,
but is set by drm_panel_of_backlight() instead ?

You can also reflow the text to reach the 80 columns limit :-)

> +	 */
> +	struct backlight_device *backlight;
> +
>  	/**
>  	 * @funcs:
>  	 *
> @@ -183,4 +197,13 @@ static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  }
>  #endif
>  
> +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> +int drm_panel_of_backlight(struct drm_panel *panel);
> +#else
> +static inline int drm_panel_of_backlight(struct drm_panel *panel)
> +{
> +	return -EINVAL;

Shouldn't you return 0 instead ? Otherwise panel driver that can support
backlight will all fail to probe if CONFIG_BACKLIGHT_CLASS_DEVICE is
disabled.

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
