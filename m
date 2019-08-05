Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24199817A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhb3UuXga9u/KAPsHx/yl8I8x78Nzo3lNkcXg3aSneY=; b=Ft8ZsFRr+oADHU
	bmUSTb73gavGlspwt1wsl3+BPNtQVwcMbnpYqlcOXwc1fRLrmbNgJmZmRznd1G8gu+idLB5cDSmKf
	3ZwA8T41wYen8Kz+SGjM+bfh8RaqcqGDfaZnccHwmfMsPvsrXf8LwXNLRUm3Yx0Sb68SDPAvuuYSz
	LtV6PCm1oocL5b4sMSbxfWm/4r64f8Fx+N6tDJcx+otw3T5KVXebbpwsLQKgFiqW/rIEanmTYIMxp
	+VeoQRGT5/xkih1jfDkTOV6EHOb0gx4kfLutuB8YFYlcwo+z2508Llhf0NStR2ZSC7uUp1tYZ8qBY
	LCDSH2cIKXFzKZ0DcvXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huadz-0005HO-BP; Mon, 05 Aug 2019 10:55:12 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huadJ-0005Gx-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:54:31 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C82CF2F9;
 Mon,  5 Aug 2019 12:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1565002467;
 bh=RwQ5mnU7RUBzTgtf9QVDKC/TD/uPXzpxPEkwiDIp9go=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o1GVXvYZTbKujwlbSWjhyKHPW4owM5I0zlEmcs35W5UJBLn/uX9Y1tgQEVNlHfCbu
 /nMXTotTJmqYaQ8CHoaAUSMqptXHOSOgKzy2jlzBudupzdlL+rtr7/MD3KkjGOYseq
 vW5cLPFJmFIz7+5Iycxf8kVVcCzLg1Lzyt0SrqHE=
Date: Mon, 5 Aug 2019 13:54:25 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 12/16] drm/panel: use inline comments in drm_panel.h
Message-ID: <20190805105425.GG29747@pendragon.ideasonboard.com>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-13-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804201637.1240-13-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_035429_858425_016ECC59 
X-CRM114-Status: GOOD (  24.32  )
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

On Sun, Aug 04, 2019 at 10:16:33PM +0200, Sam Ravnborg wrote:
> Inline comments provide better space for additional comments.
> Comments was slightly edited to follow the normal style,
> but no change to actual content.
> Used the opportuniy to change the order in drm_panel_funcs
> to follow the order they will be used by a panel.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  include/drm/drm_panel.h | 82 +++++++++++++++++++++++++++++++++--------
>  1 file changed, 66 insertions(+), 16 deletions(-)
> 
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 053d611656b9..5e62deea49ba 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -36,14 +36,6 @@ struct display_timing;
>  
>  /**
>   * struct drm_panel_funcs - perform operations on a given panel
> - * @disable: disable panel (turn off back light, etc.)
> - * @unprepare: turn off panel
> - * @prepare: turn on panel and perform set up
> - * @enable: enable panel (turn on back light, etc.)
> - * @get_modes: add modes to the connector that the panel is attached to and
> - * return the number of modes added
> - * @get_timings: copy display timings into the provided array and return
> - * the number of display timings available
>   *
>   * The .prepare() function is typically called before the display controller
>   * starts to transmit video data. Panel drivers can use this to turn the panel
> @@ -69,31 +61,89 @@ struct display_timing;
>   * the panel. This is the job of the .unprepare() function.
>   */
>  struct drm_panel_funcs {
> -	int (*disable)(struct drm_panel *panel);
> -	int (*unprepare)(struct drm_panel *panel);
> +	/**
> +	 * @prepare:
> +	 *
> +	 * Turn on panel and perform set up.
> +	 */
>  	int (*prepare)(struct drm_panel *panel);
> +
> +	/**
> +	 * @enable:
> +	 *
> +	 * Enable panel (turn on back light, etc.).
> +	 */
>  	int (*enable)(struct drm_panel *panel);
> +
> +	/**
> +	 * @disable:
> +	 *
> +	 * Disable panel (turn off back light, etc.).
> +	 */
> +	int (*disable)(struct drm_panel *panel);
> +
> +	/**
> +	 * @unprepare:
> +	 *
> +	 * Turn off panel.
> +	 */
> +	int (*unprepare)(struct drm_panel *panel);
> +
> +	/**
> +	 * @get_modes:
> +	 *
> +	 * Add modes to the connector that the panel is attached to and
> +	 * return the number of modes added.
> +	 */
>  	int (*get_modes)(struct drm_panel *panel);
> +
> +	/**
> +	 * @get_timings:
> +	 *
> +	 * Copy display timings into the provided array and return
> +	 * the number of display timings available.
> +	 */
>  	int (*get_timings)(struct drm_panel *panel, unsigned int num_timings,
>  			   struct display_timing *timings);
>  };
>  
>  /**
>   * struct drm_panel - DRM panel object
> - * @drm: DRM device owning the panel
> - * @connector: DRM connector that the panel is attached to
> - * @dev: parent device of the panel
> - * @link: link from panel device (supplier) to DRM device (consumer)
> - * @funcs: operations that can be performed on the panel
> - * @list: panel entry in registry
>   */
>  struct drm_panel {
> +	/**
> +	 * @drm:
> +	 *
> +	 * DRM device owning the panel.
> +	 */
>  	struct drm_device *drm;
> +
> +	/**
> +	 * @connector:
> +	 *
> +	 * DRM connector that the panel is attached to.
> +	 */
>  	struct drm_connector *connector;
> +
> +	/**
> +	 * @dev:
> +	 *
> +	 * Parent device of the panel.
> +	 */
>  	struct device *dev;
>  
> +	/**
> +	 * @funcs:
> +	 *
> +	 * Operations that can be performed on the panel.
> +	 */
>  	const struct drm_panel_funcs *funcs;
>  
> +	/**
> +	 * @list:
> +	 *
> +	 * Panel entry in registry.
> +	 */
>  	struct list_head list;
>  };
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
