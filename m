Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F13817B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVMLtPRU/18zZYh9AKm8LB3Jhm2TelfV4fGXzI/7xO0=; b=ajIjKfSvUPYSwV
	oOAIFULd7DfekJZUs+IrBFzWPCbO+RXtN+bf3oooegCmcPJCid4Tn0ApU9BSYb5xT85qBmnnnLW0o
	EGMgdEkkOr5VbgH2vRZv37Vg8KHYgNyaMFmWW0iPDYiCe2xotJOnf5FNInw9Ysc0Sm2QnyyLGZvl7
	9rzwD97yd75pCM+VOcacWkuIiNvhpWefiFy27elCOBKXT2Y93ll6Ntm7S6REXsb5+WURlzCe2xpgd
	zLltWQWymVjyTD7b0k8wdtToMrQi3FvkCqJyuxsx1eW1bN5b6v9KwoFnbGfpXoxkQUZBtbjtxo9NW
	8hoLngYX5PCSHSukzC0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaik-0007X1-RH; Mon, 05 Aug 2019 11:00:07 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaiB-0007WW-S9
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:59:34 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A5EF02F9;
 Mon,  5 Aug 2019 12:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1565002769;
 bh=ARbvDmu/mBI7c7RZcT5zH3TBI3qsqJ0Vjc6Kj8MQeEc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bzG0gADiIV8BDeHLoa9Kj9zUWn2mS5xhEnGk8ww5Zw5YmaTPgbxnpI/mRbrnCerJI
 QvPFax2dQhbSESR8dqmTYt0v0EA3QS3neJcCJF3XQ1ha+Ozf4yS3hCmqCCdlL/C1Og
 XQQIK/ulpNLVSMxGTf5Eu5gPH4tD47qshkiq8R9g=
Date: Mon, 5 Aug 2019 13:59:28 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 14/16] drm/panel: call prepare/enable only once
Message-ID: <20190805105928.GI29747@pendragon.ideasonboard.com>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-15-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804201637.1240-15-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_035932_433958_3367D50A 
X-CRM114-Status: GOOD (  26.07  )
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

On Sun, Aug 04, 2019 at 10:16:35PM +0200, Sam Ravnborg wrote:
> Many panel drivers duplicate logic to prevent prepare to be called
> for a panel that is already prepared.
> Likewise for enable.
> 
> Implement this logic in drm_panel so the individual drivers
> no longer needs this.
> A panel is considered prepared/enabled only if the prepare/enable call
> succeeds.
> For disable/unprepare it is unconditionally considered
> disabled/unprepared.
> 
> This allows calls to prepare/enable again, even if there were
> some issue disabling a regulator or similar during disable/unprepare.

Is this the right place to handle this ? Shouldn't the upper layers
ensure than enable/disable and prepare/unprepare are correcty balanced,
and not called multiple times ? Adding enabled and prepared state to
drm_panel not only doesn't align well with atomic state handling, but
also would hide issues in upper layers that should really be fixed
there.

> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/drm_panel.c | 66 ++++++++++++++++++++++++++++++-------
>  include/drm/drm_panel.h     | 21 ++++++++++++
>  2 files changed, 75 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index da19d5b4a2f4..0853764040de 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -66,10 +66,21 @@ EXPORT_SYMBOL(drm_panel_init);
>   */
>  int drm_panel_prepare(struct drm_panel *panel)
>  {
> -	if (panel && panel->funcs && panel->funcs->prepare)
> -		return panel->funcs->prepare(panel);
> +	int ret = -ENOSYS;
>  
> -	return panel ? -ENOSYS : -EINVAL;
> +	if (!panel)
> +		return -EINVAL;
> +
> +	if (panel->prepared)
> +		return 0;
> +
> +	if (panel->funcs && panel->funcs->prepare)
> +		ret = panel->funcs->prepare(panel);
> +
> +	if (ret >= 0)
> +		panel->prepared = true;
> +
> +	return ret;
>  }
>  EXPORT_SYMBOL(drm_panel_prepare);
>  
> @@ -85,10 +96,21 @@ EXPORT_SYMBOL(drm_panel_prepare);
>   */
>  int drm_panel_enable(struct drm_panel *panel)
>  {
> -	if (panel && panel->funcs && panel->funcs->enable)
> -		return panel->funcs->enable(panel);
> +	int ret = -ENOSYS;
>  
> -	return panel ? -ENOSYS : -EINVAL;
> +	if (!panel)
> +		return -EINVAL;
> +
> +	if (panel->enabled)
> +		return 0;
> +
> +	if (panel->funcs && panel->funcs->enable)
> +		ret = panel->funcs->enable(panel);
> +
> +	if (ret >= 0)
> +		panel->enabled = true;
> +
> +	return ret;
>  }
>  EXPORT_SYMBOL(drm_panel_enable);
>  
> @@ -104,10 +126,20 @@ EXPORT_SYMBOL(drm_panel_enable);
>   */
>  int drm_panel_disable(struct drm_panel *panel)
>  {
> -	if (panel && panel->funcs && panel->funcs->disable)
> -		return panel->funcs->disable(panel);
> +	int ret = -ENOSYS;
>  
> -	return panel ? -ENOSYS : -EINVAL;
> +	if (!panel)
> +		return -EINVAL;
> +
> +	if (!panel->enabled)
> +		return 0;
> +
> +	if (panel->funcs && panel->funcs->disable)
> +		ret = panel->funcs->disable(panel);
> +
> +	panel->enabled = false;
> +
> +	return ret;
>  }
>  EXPORT_SYMBOL(drm_panel_disable);
>  
> @@ -124,10 +156,20 @@ EXPORT_SYMBOL(drm_panel_disable);
>   */
>  int drm_panel_unprepare(struct drm_panel *panel)
>  {
> -	if (panel && panel->funcs && panel->funcs->unprepare)
> -		return panel->funcs->unprepare(panel);
> +	int ret = -ENOSYS;
>  
> -	return panel ? -ENOSYS : -EINVAL;
> +	if (!panel)
> +		return -EINVAL;
> +
> +	if (!panel->prepared)
> +		return 0;
> +
> +	if (panel->funcs && panel->funcs->unprepare)
> +		ret = panel->funcs->unprepare(panel);
> +
> +	panel->prepared = false;
> +
> +	return ret;
>  }
>  EXPORT_SYMBOL(drm_panel_unprepare);
>  
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 624bd15ecfab..7493500fc9bd 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -65,6 +65,9 @@ struct drm_panel_funcs {
>  	 * @prepare:
>  	 *
>  	 * Turn on panel and perform set up.
> +	 * When the panel is successfully prepared the prepare() function
> +	 * will not be called again until the panel has been unprepared.
> +	 *
>  	 */
>  	int (*prepare)(struct drm_panel *panel);
>  
> @@ -72,6 +75,8 @@ struct drm_panel_funcs {
>  	 * @enable:
>  	 *
>  	 * Enable panel (turn on back light, etc.).
> +	 * When the panel is successfully enabled the enable() function
> +	 * will not be called again until the panel has been disabled.
>  	 */
>  	int (*enable)(struct drm_panel *panel);
>  
> @@ -79,6 +84,7 @@ struct drm_panel_funcs {
>  	 * @disable:
>  	 *
>  	 * Disable panel (turn off back light, etc.).
> +	 * If the panel is already disabled the disable() function is not called.
>  	 */
>  	int (*disable)(struct drm_panel *panel);
>  
> @@ -86,6 +92,7 @@ struct drm_panel_funcs {
>  	 * @unprepare:
>  	 *
>  	 * Turn off panel.
> +	 * If the panel is already unprepared the unprepare() function is not called.
>  	 */
>  	int (*unprepare)(struct drm_panel *panel);
>  
> @@ -145,6 +152,20 @@ struct drm_panel {
>  	 * Panel entry in registry.
>  	 */
>  	struct list_head list;
> +
> +	/**
> +	 * @prepared:
> +	 *
> +	 * Set to true when the panel is successfully prepared.
> +	 */
> +	bool prepared;
> +
> +	/**
> +	 * @enabled:
> +	 *
> +	 * Set to true when the panel is successfully enabled.
> +	 */
> +	bool enabled;
>  };
>  
>  void drm_panel_init(struct drm_panel *panel);

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
