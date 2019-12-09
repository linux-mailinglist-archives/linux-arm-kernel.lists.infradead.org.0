Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002DF1164A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 01:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGDksl0OuOnuAh69bx340PQPojt82O2aR5LWRx1MVhQ=; b=ZY2lPwvr3LaHOc
	EFUVlqHo6PjpKdt8aTKsJJgZMjGOqCfg1ti3C7KmynO1zO9RbdGLI1Xuou3Fb0gyKeVlRDvy8D0AR
	0k3bq9zB3V5/nksee4nSAHI905v/oJVP0PYWOfeBacunAFjuEjMttacraP43in7wNYkBWDPIHI/WN
	OvN9wikHYB2WynAr3gDBw0vQmov0Hi7oyWw2Pg+QAZgldyQwz560+YIWJM7uSO7h0C3l5/4ex79/U
	5GCl/AoEwiVEw95XubhCj9YJVOUeIssYRz+Gw/F0ARuu016J9/1CI4VN8tK9UP66QFz0zl5HVa+s3
	S6R/pga8pRnOFXNXU8Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie7Lf-0007L3-4b; Mon, 09 Dec 2019 00:56:27 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie7LH-00077B-6j; Mon, 09 Dec 2019 00:56:05 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E011752B;
 Mon,  9 Dec 2019 01:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575852961;
 bh=J6yIt17nBqwPKwVZXRtdxjHrhpUgI8Kou5WpdOIZ5YE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T5cbUBsZJFEm8iBpxpsDzOaQbbEBdWh0bc55kfLncjhrFA90srpzIJTF5ep242mQO
 b5t70DxIKO2bWncxDKMv8rEKTqbMGB6Wc4rf0t1JrZ0hGjCETsQDuEAh6St3IsX09H
 Vk/pTQgLD1qS5KsBNhE3mVt1u8/X3js4Qn7p822U=
Date: Mon, 9 Dec 2019 02:55:54 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v2 02/25] drm/panel: add backlight support
Message-ID: <20191209005554.GK14311@pendragon.ideasonboard.com>
References: <20191207140353.23967-1-sam@ravnborg.org>
 <20191207140353.23967-3-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207140353.23967-3-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_165603_554460_19BA7985 
X-CRM114-Status: GOOD (  31.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Sat, Dec 07, 2019 at 03:03:30PM +0100, Sam Ravnborg wrote:
> Panels often supports backlight as specified in a device tree.

s/supports/support/

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
> There is one caveat with the backlight support.
> If drm_panel_(enable|disable) are called multiple times
> in row then backlight_(enable|disable) will be called multiple times.

s/in row/in a row/

> The above will happen when a panel drivers unconditionally
> calls drm_panel_disable() in their shutdown() function,
> whan the panel is already disabled and then shutdown() is called.
> 
> Reading the backlight code it seems safe to call
> the backlight_(enable|disable) several times.
> 
> v3:
> - Improve comments, fix grammar (Laurent)
> - Do not fail in drm_panel_of_backlight() if no DT support (Laurent)
> - Log if backlight_(enable|disable) fails (Laurent)
> - Improve drm_panel_of_backlight() docs
> - Updated changelog with backlight analysis (triggered by Laurent)
> 
> v2:
> - Drop test of CONFIG_DRM_PANEL in header-file (Laurent)
> - do not enable backlight if ->enable() returns an error
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/drm_panel.c | 58 ++++++++++++++++++++++++++++++++++++-
>  include/drm/drm_panel.h     | 25 ++++++++++++++++
>  2 files changed, 82 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 4ab7229fb22b..c312d5eb214d 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -21,11 +21,13 @@
>   * DEALINGS IN THE SOFTWARE.
>   */
>  
> +#include <linux/backlight.h>
>  #include <linux/err.h>
>  #include <linux/module.h>
>  
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_panel.h>
> +#include <drm/drm_print.h>
>  
>  static DEFINE_MUTEX(panel_lock);
>  static LIST_HEAD(panel_list);
> @@ -196,11 +198,20 @@ EXPORT_SYMBOL(drm_panel_unprepare);
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
> +
> +	if (ret < 0)
> +		return ret;

You can move this within the above if () block and avoid initializing
ret to 0:

	if (panel->funcs && panel->funcs->enable) {
		ret = panel->funcs->enable(panel);
		if (ret < 0)
			return ret;
	}

With these small issues addressed,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +	ret = backlight_enable(panel->backlight);
> +	if (ret < 0)
> +		DRM_DEV_INFO(panel->dev, "failed to enable backlight: %d\n", ret);
>  
>  	return 0;
>  }
> @@ -218,9 +229,15 @@ EXPORT_SYMBOL(drm_panel_enable);
>   */
>  int drm_panel_disable(struct drm_panel *panel)
>  {
> +	int ret;
> +
>  	if (!panel)
>  		return -EINVAL;
>  
> +	ret = backlight_disable(panel->backlight);
> +	if (ret < 0)
> +		DRM_DEV_INFO(panel->dev, "failed to disable backlight: %d\n", ret);
> +
>  	if (panel->funcs && panel->funcs->disable)
>  		return panel->funcs->disable(panel);
>  
> @@ -289,6 +306,45 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  EXPORT_SYMBOL(of_drm_find_panel);
>  #endif
>  
> +#ifdef CONFIG_BACKLIGHT_CLASS_DEVICE
> +/**
> + * drm_panel_of_backlight - use backlight device node for backlight
> + * @panel: DRM panel
> + *
> + * Use this function to enable backlight handling if your panel
> + * uses device tree and has a backlight phandle.
> + *
> + * When the panel is enabled backlight will be enabled after a
> + * successfull call to &drm_panel_funcs.enable()
> + *
> + * When the panel is disabled backlight will be disabled before the
> + * call to &drm_panel_funcs.disable().
> + *
> + * A typical implementation for a panel driver supporting device tree
> + * will call this function at probe time. Backlight will then be handled
> + * transparently without requiring any intervention from the driver.
> + * drm_panel_of_backlight() must be called after the call to drm_panel_init().
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
> index d71655b2634c..c751c9b17df0 100644
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
> + * drm_panel_of_backlight(). Then the driver does not need to implement the
> + * functionality to enable/disable backlight.
>   */
>  struct drm_panel_funcs {
>  	/**
> @@ -146,6 +151,17 @@ struct drm_panel {
>  	 */
>  	struct device *dev;
>  
> +	/**
> +	 * @backlight:
> +	 *
> +	 * Backlight device, used to turn on backlight after the call
> +	 * to enable(), and to turn off backlight before the call to
> +	 * disable().
> +	 * backlight is set by drm_panel_of_backlight() and drivers
> +	 * shall not assign it.
> +	 */
> +	struct backlight_device *backlight;
> +
>  	/**
>  	 * @funcs:
>  	 *
> @@ -197,4 +213,13 @@ static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  }
>  #endif
>  
> +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> +int drm_panel_of_backlight(struct drm_panel *panel);
> +#else
> +static inline int drm_panel_of_backlight(struct drm_panel *panel)
> +{
> +	return 0;
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
