Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451428235C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4QO3EluXfIjKsYcIevwYoT68PvzIFlWX3cFGW/RT5M=; b=iUJe8lEDS1rwt/
	1xjzQbXZhntIavi3qTs6cL4aWuJVaTuyqVZZyKs+Y2eaATrNAiveQLd8XkF/bxQNFZOCelZAZHuhu
	ThpnX93eqsSGRVADLxCzouEfn81Ar1Y2my0i9WNJjgMRFxIBfNDs5R9PF2AQoDrvinsZO/i/AXQme
	zR47qgXXTkSNG3HaAbW4t2h5eiVxtb5RKwzBWbPkZ9qBjCYOT2ufgfL98iAb1w18UHXFIFuWeZUmV
	P+Vj0aW1+wvQeTkg2k7Gh0IMu9CWIHRZMLG7hP6YI0rnMGgEmjB61LxibyLuQDX5WNxNXtoeHuJOa
	agWZgZxTHqPQh304vxCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugMc-0004lG-Hh; Mon, 05 Aug 2019 17:01:38 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugMM-0004iM-SN
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 17:01:24 +0000
Received: by mail-yw1-xc44.google.com with SMTP id i138so29803347ywg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 10:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cIbQ4za8IZrsQAjL3OZsGC1nPdFfsuxFro0p+nH7Dtw=;
 b=ewve7ba8nAhqLvACMGYoen4dyOeu19thOZB3u2JoJSFJKMMmpoBZIHx4OTEAFq6+YU
 2T6NmOErkfkbM5Ij6RM6WqQNdClldTcisztsB2xH9jDtoMn8QNZbkBHRkRLDr6foMdiV
 dg70SB8DbzbTHCerzWKo1uNye8oZaLImDgt+/kV0UbF4ohDlnADI60L4my2JO71QPTxv
 PBhjGH/gAb9mHkAzwSnlkAeKUf+WYdlH0tgiaM/n6/DZty7Zd0GS3Lvv68yVnT+37Arn
 K4sWLb4peI+MOGbER2CtVFt/A7JPYs+M1x9F7Xs/TB6fY4PFADNVK4CxE8R8tYb4zu+3
 7d4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cIbQ4za8IZrsQAjL3OZsGC1nPdFfsuxFro0p+nH7Dtw=;
 b=XKKSucCMjvRcbLfa9qMPxMsVc+L0QvsoEbLAddqJvLvLXb+zr+EZ8VCFJGxdQqtLS4
 ziaqwviGNA4DKysip7PMKG8ig1k09EKSg0WxYMZe5SaAMI5jClXDidXOraSIYoayWGgT
 ceRLgCvd0e5el3FLkc5N/0qXauwBYI41YgBZfJESnx9hcXmEEATKB6p2ThFJ88eXHwo3
 IkCH64dptW9zNpXTLZetFvb61ks5NScOzdEJ/m0uukFvyYXJ2hnVZ3h0HT6IqzyoikN/
 3nJ23kmicf0qAr5QgYHLnFCRVvB1wJSINAzVo3sl87usgV5UTgwVK2Cmx31t1G4ddJe7
 qHJg==
X-Gm-Message-State: APjAAAWW+uAwFfDHcXpKKG2ysR2FMQc1kvhmeUrVJCAfhyPLPU+A3xOg
 OBE/cjVYOJjiPjCxjar9ETMaIA==
X-Google-Smtp-Source: APXvYqxtoTdTptN1R84Axo11wc/c0Rm0lgtLL0MMAVBsGnc3bX6jGmG+OScUr4H/lM6VC1xtTSwhiQ==
X-Received: by 2002:a81:6355:: with SMTP id x82mr96463850ywb.396.1565024481310; 
 Mon, 05 Aug 2019 10:01:21 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id m40sm20329904ywh.2.2019.08.05.10.01.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 10:01:20 -0700 (PDT)
Date: Mon, 5 Aug 2019 13:01:20 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 14/16] drm/panel: call prepare/enable only once
Message-ID: <20190805170120.GZ104440@art_vandelay>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-15-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804201637.1240-15-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_100122_948907_DAD3533B 
X-CRM114-Status: GOOD (  29.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
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

Hi Sam,
I did a similar thing a few years ago [1]. IIRC it was well received and just
needed some nits cleaned up. Unfortunately I lost interest^W^W switched to other
things and dropped it. So thanks for picking this back up!

Fast forward to today, I still think it's a good idea but I want to make sure
this won't negatively interact with the self refresh helpers. With the helpers
in place, it's possible to call disable consecutively (ie: once to enter self
refresh and again to actually shut down). I did a quick pass and it looks like
this patch might break that behavior, so you might want to take that into
account.

Sean


[1]- https://patchwork.freedesktop.org/series/30712/

> 
> This allows calls to prepare/enable again, even if there were
> some issue disabling a regulator or similar during disable/unprepare.
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
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
