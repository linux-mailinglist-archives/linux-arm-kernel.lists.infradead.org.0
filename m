Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8401B10F802
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6YfAJqhR8JGx21dfOoA1N3YG2bQdqmpiya9Gt2GcMM=; b=bq9W+ihQIguZM3
	JiK6kE7fxi+nEo5YKAC9IFaAPLnAunK6ZEeqr8yE+cimg07+HTfZ00MAF5NVOwxo/C8gp9wzTfDYf
	t41ZJRxC8Qe6rTnXZT1F90kAnw7HmHkQn+unot2A42o60hrIjAoo9cNlRkKLbMz69JOHhWiP+9zH1
	j++fUvrESZtfU+EkYXoDaFDu/pWFKNYNEEgAhKv+TjIaMD3FOheULiveDsilN18jZS6tvxY6t24ec
	g3E9xh5BqJoxcqvOdCASala1z1Eo6FaVyOqAQQX/57Pk13cgLfclpG6Axo0R6DazQSbsAVgss8R1A
	/L5yOwbokiWR5Z50rZsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1vF-0001hd-EV; Tue, 03 Dec 2019 06:44:33 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1v5-0001h0-H6; Tue, 03 Dec 2019 06:44:25 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6C443309;
 Tue,  3 Dec 2019 07:44:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575355461;
 bh=g/3jjUGzt/ZPk4oebHW3YfmYOgHqwdzbZQuepaZXnZ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v2/pr/F9edrxg9ZBPVTOYa8P9ikzqJhOu4ROsO8ftPE8VHwx4EgD78nZi+ZYlO0mB
 5H3mAZICncryXfGSu8OoTEKCEe2GYcFlMRt+09pOXdmEMFp0scnGdQG6U2hkbu/HCd
 s+eKKGxEAQHDPgJZtE9suYSiN0MVpAb6R2OBuXY4=
Date: Tue, 3 Dec 2019 08:44:14 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 04/26] drm: get drm_bridge_panel connector via helper
Message-ID: <20191203064414.GD4730@pendragon.ideasonboard.com>
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-5-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202193230.21310-5-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_224423_862999_29F75637 
X-CRM114-Status: GOOD (  18.96  )
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
 Jonas Karlman <jonas@kwiboo.se>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Purism Kernel Team <kernel@puri.sm>,
 Eric Anholt <eric@anholt.net>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

Thank you for the patch.

On Mon, Dec 02, 2019 at 08:32:08PM +0100, Sam Ravnborg wrote:
> The drm_connector created by drm_panel_bridge was accessed
> via drm_panel.connector.
> Avoid the detour around drm_panel by providing a simple get method.
> This avoids direct access to the connector field in drm_panel in
> the two users.

You may want to add that this is needed to prepare for removal of
drm_panel.connector.

> Update pl111 and tve200 to use the new helper.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Andrzej Hajda <a.hajda@samsung.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Jernej Skrabec <jernej.skrabec@siol.net>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/bridge/panel.c      | 16 ++++++++++++++++
>  drivers/gpu/drm/pl111/pl111_drv.c   |  2 +-
>  drivers/gpu/drm/tve200/tve200_drv.c |  2 +-
>  include/drm/drm_bridge.h            |  1 +
>  4 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/panel.c b/drivers/gpu/drm/bridge/panel.c
> index f4e293e7cf64..c5e27b81588a 100644
> --- a/drivers/gpu/drm/bridge/panel.c
> +++ b/drivers/gpu/drm/bridge/panel.c
> @@ -289,3 +289,19 @@ struct drm_bridge *devm_drm_panel_bridge_add_typed(struct device *dev,
>  	return bridge;
>  }
>  EXPORT_SYMBOL(devm_drm_panel_bridge_add_typed);
> +
> +/**
> + * drm_panel_bridge_connector - return pointer to connector

Maybe "return the connector for the panel bridge" ?

> + *
> + * drm_panel_bridge creates the connector.
> + * This function gives external access to the connector.
> + *
> + * Returns: Pointer to drm_conneector

s/drm_conneector/drm_connector/

> + */
> +struct drm_connector *drm_panel_bridge_connector(struct drm_bridge *bridge)
> +{
> +	struct panel_bridge * panel_bridge;

s/\* panel_bridge/*panel_bridge/

There's also a missing blank line, didn't checkpatch warn about this ?

With those small issues fixed,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +	panel_bridge = drm_bridge_to_panel_bridge(bridge);
> +
> +	return &panel_bridge->connector;
> +}
> diff --git a/drivers/gpu/drm/pl111/pl111_drv.c b/drivers/gpu/drm/pl111/pl111_drv.c
> index 63dfcda04147..aa8aa8d9e405 100644
> --- a/drivers/gpu/drm/pl111/pl111_drv.c
> +++ b/drivers/gpu/drm/pl111/pl111_drv.c
> @@ -166,7 +166,7 @@ static int pl111_modeset_init(struct drm_device *dev)
>  	priv->bridge = bridge;
>  	if (panel) {
>  		priv->panel = panel;
> -		priv->connector = panel->connector;
> +		priv->connector = drm_panel_bridge_connector(bridge);
>  	}
>  
>  	ret = pl111_display_init(dev);
> diff --git a/drivers/gpu/drm/tve200/tve200_drv.c b/drivers/gpu/drm/tve200/tve200_drv.c
> index 954b09c948eb..00ba9e5ce130 100644
> --- a/drivers/gpu/drm/tve200/tve200_drv.c
> +++ b/drivers/gpu/drm/tve200/tve200_drv.c
> @@ -110,7 +110,7 @@ static int tve200_modeset_init(struct drm_device *dev)
>  	}
>  
>  	priv->panel = panel;
> -	priv->connector = panel->connector;
> +	priv->connector = drm_panel_bridge_connector(bridge);
>  	priv->bridge = bridge;
>  
>  	dev_info(dev->dev, "attached to panel %s\n",
> diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
> index c0a2286a81e9..9a4902accfe5 100644
> --- a/include/drm/drm_bridge.h
> +++ b/include/drm/drm_bridge.h
> @@ -438,6 +438,7 @@ struct drm_bridge *devm_drm_panel_bridge_add(struct device *dev,
>  struct drm_bridge *devm_drm_panel_bridge_add_typed(struct device *dev,
>  						   struct drm_panel *panel,
>  						   u32 connector_type);
> +struct drm_connector *drm_panel_bridge_connector(struct drm_bridge *bridge);
>  #endif
>  
>  #endif

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
