Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C517410F847
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Be9aH/4UjOLFPjyxCGoN+FqUGc1JS0qVISUTyWpneI=; b=YRW1+/Zyh0/zQ2
	vWklPiMFavB6rZzq9OQ4We7ocX/PtvEcpLfA1+ns9SJBRvqRo4bjIdo1iWM4CCF4RPphGkDyOcI19
	UOPmXXBpQjCBEH+UYqYaoT6KRPEqQSRabQDQNTBGVz9UK/kMZzxkeDaLKXsz/vwbbpduD1t3Fx6ra
	AStqmlH8id8TQJArBDC8tDHyy9HPnn+IUkK9khC7MaNNXoeM7wURRQeZLQ6HiZY1y314c53mSSW7K
	xmdW2OfFcrkm+hfi9yxKiE7Y2rQq2xbIdRHJo25ilu1Y6b7uOVDvBsU7U071xAQs9WWzCkZqlitk3
	KEgAnhlAZVtmoC26APrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2DF-0001Ym-UQ; Tue, 03 Dec 2019 07:03:09 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2D6-0001Y8-8b; Tue, 03 Dec 2019 07:03:04 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id DCEFE309;
 Tue,  3 Dec 2019 08:02:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575356577;
 bh=BHGcClPJ8faRIFKK7GdcaZ3ZNqYB59soqjub02MQB1U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E3kueX+7poUsLlLNHNb8tDRtAIJFMNynguFfEhRjHD8V/rg8SOIyTvGI64Sm/v7sW
 kRat1924btOO2rZxPhXW1Fv6jz6Q2UvxV3F3RAYHjBZjx27fOnvFuVje9e9COANAEw
 Z4e9gqTJkCwCprwCs08uymK0XroFud5phDqLqJFY=
Date: Tue, 3 Dec 2019 09:02:49 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 07/26] drm/panel: remove get_timings
Message-ID: <20191203070249.GG4730@pendragon.ideasonboard.com>
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-8-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202193230.21310-8-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_230300_594050_274123E2 
X-CRM114-Status: GOOD (  15.44  )
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
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

Thank you for the patch.

On Mon, Dec 02, 2019 at 08:32:11PM +0100, Sam Ravnborg wrote:
> There was no users - so remove it.
> The callback was implemented in two drivers - deleted.

This looks good to me, so

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

but I'll let Thierry decide if he prefers keeping it.

> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/panel/panel-seiko-43wvf1g.c | 18 ------------------
>  drivers/gpu/drm/panel/panel-simple.c        | 18 ------------------
>  include/drm/drm_panel.h                     |  9 ---------
>  3 files changed, 45 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> index b878930b17e4..3bcba64235c4 100644
> --- a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> +++ b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> @@ -217,30 +217,12 @@ static int seiko_panel_get_modes(struct drm_panel *panel,
>  	return seiko_panel_get_fixed_modes(p, connector);
>  }
>  
> -static int seiko_panel_get_timings(struct drm_panel *panel,
> -				    unsigned int num_timings,
> -				    struct display_timing *timings)
> -{
> -	struct seiko_panel *p = to_seiko_panel(panel);
> -	unsigned int i;
> -
> -	if (p->desc->num_timings < num_timings)
> -		num_timings = p->desc->num_timings;
> -
> -	if (timings)
> -		for (i = 0; i < num_timings; i++)
> -			timings[i] = p->desc->timings[i];
> -
> -	return p->desc->num_timings;
> -}
> -
>  static const struct drm_panel_funcs seiko_panel_funcs = {
>  	.disable = seiko_panel_disable,
>  	.unprepare = seiko_panel_unprepare,
>  	.prepare = seiko_panel_prepare,
>  	.enable = seiko_panel_enable,
>  	.get_modes = seiko_panel_get_modes,
> -	.get_timings = seiko_panel_get_timings,
>  };
>  
>  static int seiko_panel_probe(struct device *dev,
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index d6299fe6d276..e225791a6fb2 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -326,30 +326,12 @@ static int panel_simple_get_modes(struct drm_panel *panel,
>  	return num;
>  }
>  
> -static int panel_simple_get_timings(struct drm_panel *panel,
> -				    unsigned int num_timings,
> -				    struct display_timing *timings)
> -{
> -	struct panel_simple *p = to_panel_simple(panel);
> -	unsigned int i;
> -
> -	if (p->desc->num_timings < num_timings)
> -		num_timings = p->desc->num_timings;
> -
> -	if (timings)
> -		for (i = 0; i < num_timings; i++)
> -			timings[i] = p->desc->timings[i];
> -
> -	return p->desc->num_timings;
> -}
> -
>  static const struct drm_panel_funcs panel_simple_funcs = {
>  	.disable = panel_simple_disable,
>  	.unprepare = panel_simple_unprepare,
>  	.prepare = panel_simple_prepare,
>  	.enable = panel_simple_enable,
>  	.get_modes = panel_simple_get_modes,
> -	.get_timings = panel_simple_get_timings,
>  };
>  
>  #define PANEL_SIMPLE_BOUNDS_CHECK(to_check, bounds, field) \
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 4fd61cb9eb93..c4e82b9ce586 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -102,15 +102,6 @@ struct drm_panel_funcs {
>  	 */
>  	int (*get_modes)(struct drm_panel *panel,
>  			 struct drm_connector *connector);
> -
> -	/**
> -	 * @get_timings:
> -	 *
> -	 * Copy display timings into the provided array and return
> -	 * the number of display timings available.
> -	 */
> -	int (*get_timings)(struct drm_panel *panel, unsigned int num_timings,
> -			   struct display_timing *timings);
>  };
>  
>  /**

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
