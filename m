Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45BF81753
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOjDtYDtPlTwUWg9RS/r68l7XThyru26f+Os/ARVBus=; b=Gp1jyU5Zgv4m8j
	hEvrB0ulzv+gcxu8gZOmdI95WMg+rQUqu5gzu6LtWUP5oGspmaFh95D9YXuzo9vr6pmZJ4MBWM4TC
	GMV2HRwQ3cuUN8pCw2A6UST61itNrdroDHvoZ7w+9EhO5UBMPPQgVSwwbBpyVbO7etsGsLPHzG6Rh
	w/36AhuY4jBRAiqkfYeaJd04x/eD/YUdHq376g+q9JuIepYgxW68de7YgZjuCmQxrpRKbZALsyEDl
	wIGjvyxMRhFmNsM2mXFmxT7ztX9kdnCqpm14y5wA2tiV+pxRMH1u3lSunqXrDCWgjzTxwhCyiHTqk
	ZPXHSoiN1XeUvE90thJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaV2-0000nD-RC; Mon, 05 Aug 2019 10:45:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaUY-0000lP-R1
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:45:30 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 78CCA2F9;
 Mon,  5 Aug 2019 12:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1565001917;
 bh=g7Pp29Mgg/gZ2YsNt1ThUlqv1p+7aPpCapxhy4OXn+w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nBxG6lfmjq8e2op+WOyy21pYLWM+0AUNucYtwffECcWzYEZUa11K2zfn7wlxuia2W
 Lgzn3KjgPSzMabMcxeBYz8juvhZfEQOeWUFfF1Epq83f0jUtL8WyGslw/+3Sy7Pp8/
 dZD+0OAwIrFaKPWXpABtCoHloEh9j7+KGiN0ez3Y=
Date: Mon, 5 Aug 2019 13:45:15 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 11/16] drm/panel: move drm_panel functions to .c file
Message-ID: <20190805104515.GF29747@pendragon.ideasonboard.com>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-12-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804201637.1240-12-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_034527_955014_77051351 
X-CRM114-Status: GOOD (  27.65  )
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

On Sun, Aug 04, 2019 at 10:16:32PM +0200, Sam Ravnborg wrote:
> Move inline functions from include/drm/drm_panel.h to drm_panel.c.
> This is in preparation for follow-up patches that will add extra
> logic to the functions.
> As they are no longer static inline, EXPORT them.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/drm_panel.c | 96 +++++++++++++++++++++++++++++++++++
>  include/drm/drm_panel.h     | 99 +++----------------------------------
>  2 files changed, 104 insertions(+), 91 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index dbd5b873e8f2..9946b8d9bacc 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -54,6 +54,102 @@ void drm_panel_init(struct drm_panel *panel)
>  }
>  EXPORT_SYMBOL(drm_panel_init);
>  
> +/**
> + * drm_panel_prepare - power on a panel
> + * @panel: DRM panel
> + *
> + * Calling this function will enable power and deassert any reset signals to
> + * the panel. After this has completed it is possible to communicate with any
> + * integrated circuitry via a command bus.
> + *
> + * Return: 0 on success or a negative error code on failure.
> + */
> +int drm_panel_prepare(struct drm_panel *panel)
> +{
> +	if (panel && panel->funcs && panel->funcs->prepare)
> +		return panel->funcs->prepare(panel);
> +
> +	return panel ? -ENOSYS : -EINVAL;
> +}
> +EXPORT_SYMBOL(drm_panel_prepare);
> +
> +/**
> + * drm_panel_enable - enable a panel
> + * @panel: DRM panel
> + *
> + * Calling this function will cause the panel display drivers to be turned on
> + * and the backlight to be enabled. Content will be visible on screen after
> + * this call completes.
> + *
> + * Return: 0 on success or a negative error code on failure.
> + */
> +int drm_panel_enable(struct drm_panel *panel)
> +{
> +	if (panel && panel->funcs && panel->funcs->enable)
> +		return panel->funcs->enable(panel);
> +
> +	return panel ? -ENOSYS : -EINVAL;
> +}
> +EXPORT_SYMBOL(drm_panel_enable);
> +
> +/**
> + * drm_panel_disable - disable a panel
> + * @panel: DRM panel
> + *
> + * This will typically turn off the panel's backlight or disable the display
> + * drivers. For smart panels it should still be possible to communicate with
> + * the integrated circuitry via any command bus after this call.
> + *
> + * Return: 0 on success or a negative error code on failure.
> + */
> +int drm_panel_disable(struct drm_panel *panel)
> +{
> +	if (panel && panel->funcs && panel->funcs->disable)
> +		return panel->funcs->disable(panel);
> +
> +	return panel ? -ENOSYS : -EINVAL;
> +}
> +EXPORT_SYMBOL(drm_panel_disable);
> +
> +/**
> + * drm_panel_unprepare - power off a panel
> + * @panel: DRM panel
> + *
> + * Calling this function will completely power off a panel (assert the panel's
> + * reset, turn off power supplies, ...). After this function has completed, it
> + * is usually no longer possible to communicate with the panel until another
> + * call to drm_panel_prepare().
> + *
> + * Return: 0 on success or a negative error code on failure.
> + */
> +int drm_panel_unprepare(struct drm_panel *panel)
> +{
> +	if (panel && panel->funcs && panel->funcs->unprepare)
> +		return panel->funcs->unprepare(panel);
> +
> +	return panel ? -ENOSYS : -EINVAL;
> +}
> +EXPORT_SYMBOL(drm_panel_unprepare);
> +
> +/**
> + * drm_panel_get_modes - probe the available display modes of a panel
> + * @panel: DRM panel
> + *
> + * The modes probed from the panel are automatically added to the connector
> + * that the panel is attached to.
> + *
> + * Return: The number of modes available from the panel on success or a
> + * negative error code on failure.
> + */
> +int drm_panel_get_modes(struct drm_panel *panel)
> +{
> +	if (panel && panel->funcs && panel->funcs->get_modes)
> +		return panel->funcs->get_modes(panel);
> +
> +	return panel ? -ENOSYS : -EINVAL;
> +}
> +EXPORT_SYMBOL(drm_panel_get_modes);
> +
>  /**
>   * drm_panel_add - add a panel to the global registry
>   * @panel: panel to add
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 26377836141c..053d611656b9 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -97,97 +97,6 @@ struct drm_panel {
>  	struct list_head list;
>  };
>  
> -/**
> - * drm_disable_unprepare - power off a panel
> - * @panel: DRM panel
> - *
> - * Calling this function will completely power off a panel (assert the panel's
> - * reset, turn off power supplies, ...). After this function has completed, it
> - * is usually no longer possible to communicate with the panel until another
> - * call to drm_panel_prepare().
> - *
> - * Return: 0 on success or a negative error code on failure.
> - */
> -static inline int drm_panel_unprepare(struct drm_panel *panel)
> -{
> -	if (panel && panel->funcs && panel->funcs->unprepare)
> -		return panel->funcs->unprepare(panel);
> -
> -	return panel ? -ENOSYS : -EINVAL;
> -}
> -
> -/**
> - * drm_panel_disable - disable a panel
> - * @panel: DRM panel
> - *
> - * This will typically turn off the panel's backlight or disable the display
> - * drivers. For smart panels it should still be possible to communicate with
> - * the integrated circuitry via any command bus after this call.
> - *
> - * Return: 0 on success or a negative error code on failure.
> - */
> -static inline int drm_panel_disable(struct drm_panel *panel)
> -{
> -	if (panel && panel->funcs && panel->funcs->disable)
> -		return panel->funcs->disable(panel);
> -
> -	return panel ? -ENOSYS : -EINVAL;
> -}
> -
> -/**
> - * drm_panel_prepare - power on a panel
> - * @panel: DRM panel
> - *
> - * Calling this function will enable power and deassert any reset signals to
> - * the panel. After this has completed it is possible to communicate with any
> - * integrated circuitry via a command bus.
> - *
> - * Return: 0 on success or a negative error code on failure.
> - */
> -static inline int drm_panel_prepare(struct drm_panel *panel)
> -{
> -	if (panel && panel->funcs && panel->funcs->prepare)
> -		return panel->funcs->prepare(panel);
> -
> -	return panel ? -ENOSYS : -EINVAL;
> -}
> -
> -/**
> - * drm_panel_enable - enable a panel
> - * @panel: DRM panel
> - *
> - * Calling this function will cause the panel display drivers to be turned on
> - * and the backlight to be enabled. Content will be visible on screen after
> - * this call completes.
> - *
> - * Return: 0 on success or a negative error code on failure.
> - */
> -static inline int drm_panel_enable(struct drm_panel *panel)
> -{
> -	if (panel && panel->funcs && panel->funcs->enable)
> -		return panel->funcs->enable(panel);
> -
> -	return panel ? -ENOSYS : -EINVAL;
> -}
> -
> -/**
> - * drm_panel_get_modes - probe the available display modes of a panel
> - * @panel: DRM panel
> - *
> - * The modes probed from the panel are automatically added to the connector
> - * that the panel is attached to.
> - *
> - * Return: The number of modes available from the panel on success or a
> - * negative error code on failure.
> - */
> -static inline int drm_panel_get_modes(struct drm_panel *panel)
> -{
> -	if (panel && panel->funcs && panel->funcs->get_modes)
> -		return panel->funcs->get_modes(panel);
> -
> -	return panel ? -ENOSYS : -EINVAL;
> -}
> -
>  void drm_panel_init(struct drm_panel *panel);
>  
>  int drm_panel_add(struct drm_panel *panel);
> @@ -196,6 +105,14 @@ void drm_panel_remove(struct drm_panel *panel);
>  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector);
>  int drm_panel_detach(struct drm_panel *panel);
>  
> +int drm_panel_prepare(struct drm_panel *panel);
> +int drm_panel_unprepare(struct drm_panel *panel);
> +
> +int drm_panel_enable(struct drm_panel *panel);
> +int drm_panel_disable(struct drm_panel *panel);

Nitpicking, I would keep the order of the declarations aligned with the
definitions. prepare - enable - disable - unprepare and prepare -
unprepare - enable - disable are both fine with me, as long as they're
consistent.

Apart from that,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +
> +int drm_panel_get_modes(struct drm_panel *panel);
> +
>  #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
>  struct drm_panel *of_drm_find_panel(const struct device_node *np);
>  #else

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
