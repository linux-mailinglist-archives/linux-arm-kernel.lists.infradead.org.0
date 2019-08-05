Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8C681530
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zp142soaZiRui84O6FMAPJHh96W6CZAlyuaL5FZMn+Y=; b=PyofP+Z6r0rzAu
	OOGjB7Q/vwJI49IKgJ5nuX/Ag7rJTVNZlLy/Osy9Sgqwt6Y8hD9/H4f+eSj7WvcyqsMLzVjvc21O1
	j4tyscoIKybRDlIgX1/yF1sGuJ5oxSZYadwRCQcpw8vK8cca+wzH1bBnv2rlDjCKrtWSKY9GyWctG
	lMNZrqoPei/GKclRHtV6JOmidU2xfuuR8tbDEK3FUOccT1dETdIlTGbsfFnCGSor6zIGyfxAmb3IN
	HOjAQARyT5wcQsrYtvckQRiSsjfHYgXrDcXhzibnsPPxubU7jLjPV04iO2BxMlAZCXDWCcDpK4YHh
	N2QuO2biBiG+REx2Zt/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZ6p-0000mB-VN; Mon, 05 Aug 2019 09:16:52 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZ6X-0000kS-L8
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:16:35 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 07B255C05E2;
 Mon,  5 Aug 2019 11:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1564996587;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HPQtnZFrmV2z2ZY4AUfwVhL1KZOhKYp78pnR/I9Q3gU=;
 b=dDz17VqIE1JQlYngbbljhYiHAlll72f3XT1TPeuh9u7wN5YpW3p2+imJ+iWmB7Hm6vizk6
 BimPIm5U7TgfWtGCwCzvNwsmbj3kDU9O3OCtzuQfVbVr1ZuIFBIcNhPDSLRS2O79bmIOTJ
 yQA/FaXqhxhjIC6jiFXV63Z5IRaa6Gc=
MIME-Version: 1.0
Date: Mon, 05 Aug 2019 11:16:26 +0200
From: Stefan Agner <stefan@agner.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 05/16] drm/fsl-dcu: fix opencoded use of drm_panel_*
In-Reply-To: <20190804201637.1240-6-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-6-sam@ravnborg.org>
Message-ID: <8567eb4c916a0b1d134bd62112a11903@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_021634_135336_2AB1F9B8 
X-CRM114-Status: GOOD (  19.02  )
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
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Shawn Guo <shawnguo@kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam.ravnborg@gmail.com>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-04 22:16, Sam Ravnborg wrote:
> Use drm_panel_get_modes() to access modes.
> This has a nice side effect to simplify the code.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Alison Wang <alison.wang@nxp.com>
> ---
>  drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
> b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
> index 279d83eaffc0..a92fd6c70b09 100644
> --- a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
> +++ b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
> @@ -65,17 +65,9 @@ static const struct drm_connector_funcs
> fsl_dcu_drm_connector_funcs = {
>  static int fsl_dcu_drm_connector_get_modes(struct drm_connector *connector)
>  {
>  	struct fsl_dcu_drm_connector *fsl_connector;
> -	int (*get_modes)(struct drm_panel *panel);
> -	int num_modes = 0;
>  
>  	fsl_connector = to_fsl_dcu_connector(connector);
> -	if (fsl_connector->panel && fsl_connector->panel->funcs &&
> -	    fsl_connector->panel->funcs->get_modes) {
> -		get_modes = fsl_connector->panel->funcs->get_modes;
> -		num_modes = get_modes(fsl_connector->panel);
> -	}
> -
> -	return num_modes;
> +	return drm_panel_get_modes(fsl_connector->panel);

Oh, that old code looks rather messy. Thanks for the simplification!

This behaves slightly different since it now returns -EINVAL or -ENOSYS,
but that is what we want.

Acked-by: Stefan Agner <stefan@agner.ch>

--
Stefan

>  }
>  
>  static int fsl_dcu_drm_connector_mode_valid(struct drm_connector *connector,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
