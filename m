Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AD0817B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dd6WjKp03Xy2G9HLmdm4LQPyxVJiIqk8IYoFhjYvLkk=; b=HKHpavHu7Bu7kp
	rhsjoBdTtcFFAvCTRfgi6teoEeRauDNHtezfXPRPvmSMmPULMzmUX48n388scGxmld7S09pGDem1W
	xKUUCD7bkqspD+fATrTwoCDlkAPHu89/kG1N0eBxnXbq26NNpejHP8VA1AGdkfPjPTv3foZIny7dZ
	+tnL+m0GxQRvE6KCa6+GR/SC1X7H8uC7EHyRq2LbYtZW8Qimt/ZK1fm0L1t5na+QiGDqwOhKJFBL7
	15h0e9idd8FgduDpx7TpiaB+XaJfOdhrv/aLLS5zf/kJLROwu5z6fJaa2n9NcDpWnbRzI6RPOzmvu
	Jvn/erfudHKIBavawSIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huafq-00071l-Mc; Mon, 05 Aug 2019 10:57:06 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huafb-00071K-6Q
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:56:53 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E5F032F9;
 Mon,  5 Aug 2019 12:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1565002609;
 bh=nisUIk5L2tjJD15aLfwBsmDwP/QvwsSaKKmQVHAH03Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DvfNSMsq9Iz0RSwd24A/p89jCmKQ/1WhEHui6UQFf0FmiuolkRgjJT1onBjHZcSvh
 oflCXD0nj+c/zQiVLayDOq4tm6eIeDOMhUCaJ1X7HVDwJsVexhwYAZeYr20JNNZny7
 Fc+8ZcDaBMGp3zyq7PONluW7eDNtNgQbtDMYivjY=
Date: Mon, 5 Aug 2019 13:56:47 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 13/16] drm/panel: drop return code from
 drm_panel_detach()
Message-ID: <20190805105647.GH29747@pendragon.ideasonboard.com>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-14-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804201637.1240-14-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_035651_533055_B1546F00 
X-CRM114-Status: GOOD (  22.02  )
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

On Sun, Aug 04, 2019 at 10:16:34PM +0200, Sam Ravnborg wrote:
> There are no errors that can be reported by this function,
> so drop the return code.
> Fix the only bridge driver that checked the return result.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Cc: Andrzej Hajda <a.hajda@samsung.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 3 +--
>  drivers/gpu/drm/drm_panel.c                        | 6 +-----
>  include/drm/drm_panel.h                            | 2 +-
>  3 files changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index f2f7f69d6cc3..22885dceaa17 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1780,8 +1780,7 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
>  	if (dp->plat_data->panel) {
>  		if (drm_panel_unprepare(dp->plat_data->panel))
>  			DRM_ERROR("failed to turnoff the panel\n");
> -		if (drm_panel_detach(dp->plat_data->panel))
> -			DRM_ERROR("failed to detach the panel\n");
> +		drm_panel_detach(dp->plat_data->panel);
>  	}
>  
>  	drm_dp_aux_unregister(&dp->aux);
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 9946b8d9bacc..da19d5b4a2f4 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -219,15 +219,11 @@ EXPORT_SYMBOL(drm_panel_attach);
>   *
>   * This function should not be called by the panel device itself. It
>   * is only for the drm device that called drm_panel_attach().
> - *
> - * Return: 0 on success or a negative error code on failure.
>   */
> -int drm_panel_detach(struct drm_panel *panel)
> +void drm_panel_detach(struct drm_panel *panel)
>  {
>  	panel->connector = NULL;
>  	panel->drm = NULL;
> -
> -	return 0;
>  }
>  EXPORT_SYMBOL(drm_panel_detach);
>  
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 5e62deea49ba..624bd15ecfab 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -153,7 +153,7 @@ int drm_panel_add(struct drm_panel *panel);
>  void drm_panel_remove(struct drm_panel *panel);
>  
>  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector);
> -int drm_panel_detach(struct drm_panel *panel);
> +void drm_panel_detach(struct drm_panel *panel);
>  
>  int drm_panel_prepare(struct drm_panel *panel);
>  int drm_panel_unprepare(struct drm_panel *panel);

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
