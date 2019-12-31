Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D740C12D7C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 11:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdrZ5zlXdjutqGMA15ISNczvJG8P7g0bR2iGR/utmQs=; b=IAxnWd5tNPP8G2
	CWeiF/OFu7D+C4L9n9R09zqy9/37lE9rLtZUA2XHlc8r1j4wTsPWtyybr8qxk3P9VfArk76LiDix9
	G6TJ3raFnB7p+m5MY+fyJo82ckT2EYambqFIZwSfTlzJKeL/arsip4n3Xuan/mMssqetKCy+ggbAe
	Peo8dxPJOHQvEt5krg5y47zU7XMdsHCWJpxIkXy5fHgH5hryOENWnRz1+pZdThSfHq3dF4JUqkveX
	ohxxJcq5YNCk5mIBkgUJOsCu8N3cSiAYuvEa0U+iHYDrZQ5eSigcO+WNyIP/Uoz+mhVpoWaRGUY5n
	wyqqpak3nmCpaVPe/61w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEQc-0004ml-OU; Tue, 31 Dec 2019 10:07:06 +0000
Received: from mailoutvs58.siol.net ([185.57.226.249] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEQS-0004m1-5c
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 10:06:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DEE665219D1;
 Tue, 31 Dec 2019 11:06:47 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id jzCOG0hi0pwy; Tue, 31 Dec 2019 11:06:47 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 79ADF5219D9;
 Tue, 31 Dec 2019 11:06:47 +0100 (CET)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 8A75A5219D1;
 Tue, 31 Dec 2019 11:06:43 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 roman.stratiienko@globallogic.com
Subject: Re: [PATCH v2 1/2] drm/sun4i: Add alpha property for sun8i UI layer
Date: Tue, 31 Dec 2019 11:06:43 +0100
Message-ID: <1972955.OBFZWjSADL@jernej-laptop>
In-Reply-To: <20191230180842.13393-1-roman.stratiienko@globallogic.com>
References: <20191230180842.13393-1-roman.stratiienko@globallogic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_020656_526203_7D5B1CD7 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne ponedeljek, 30. december 2019 ob 19:08:41 CET je 
roman.stratiienko@globallogic.com napisal(a):
> From: Roman Stratiienko <roman.stratiienko@globallogic.com>
> 
> DE2.0 and DE3.0 UI layers supports plane-global alpha channel.
> Add alpha property to the DRM plane and connect it to the
> corresponding registers in mixer.
> 
> Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>

BTW, patch is marked as v2, but I don't see any changelog. What did you 
change?

Best regards,
Jernej

> ---
>  drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 29 ++++++++++++++++++++++++++
>  drivers/gpu/drm/sun4i/sun8i_ui_layer.h |  5 +++++
>  2 files changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c index c87fd842918e..4343ea9f8cf8
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> @@ -72,6 +72,27 @@ static void sun8i_ui_layer_enable(struct sun8i_mixer
> *mixer, int channel, }
>  }
> 
> +static void sun8i_ui_layer_update_alpha(struct sun8i_mixer *mixer, int
> channel, +					int overlay, struct 
drm_plane *plane)
> +{
> +	u32 mask, val, ch_base;
> +
> +	ch_base = sun8i_channel_base(mixer, channel);
> +
> +	mask = SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_MASK |
> +		SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MASK;
> +
> +	val = SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA(plane->state->alpha >> 
8);
> +
> +	val |= (plane->state->alpha == DRM_BLEND_ALPHA_OPAQUE) ?
> +		SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_PIXEL :
> +		SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_COMBINED;
> +
> +	regmap_update_bits(mixer->engine.regs,
> +			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR(ch_base, 
overlay),
> +			   mask, val);
> +}
> +
>  static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int
> channel, int overlay, struct drm_plane *plane,
>  				       unsigned int zpos)
> @@ -288,6 +309,8 @@ static void sun8i_ui_layer_atomic_update(struct
> drm_plane *plane,
> 
>  	sun8i_ui_layer_update_coord(mixer, layer->channel,
>  				    layer->overlay, plane, zpos);
> +	sun8i_ui_layer_update_alpha(mixer, layer->channel,
> +				    layer->overlay, plane);
>  	sun8i_ui_layer_update_formats(mixer, layer->channel,
>  				      layer->overlay, plane);
>  	sun8i_ui_layer_update_buffer(mixer, layer->channel,
> @@ -365,6 +388,12 @@ struct sun8i_ui_layer *sun8i_ui_layer_init_one(struct
> drm_device *drm,
> 
>  	plane_cnt = mixer->cfg->ui_num + mixer->cfg->vi_num;
> 
> +	ret = drm_plane_create_alpha_property(&layer->plane);
> +	if (ret) {
> +		dev_err(drm->dev, "Couldn't add alpha property\n");
> +		return ERR_PTR(ret);
> +	}
> +
>  	ret = drm_plane_create_zpos_property(&layer->plane, channel,
>  					     0, plane_cnt - 
1);
>  	if (ret) {
> diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.h
> b/drivers/gpu/drm/sun4i/sun8i_ui_layer.h index f4ab1cf6cded..e3e32ee1178d
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.h
> +++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.h
> @@ -40,6 +40,11 @@
>  #define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_MASK	GENMASK(12, 8)
>  #define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_OFFSET	8
>  #define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MASK	GENMASK(31, 24)
> +#define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA(x)		((x) << 24)
> +
> +#define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_PIXEL		
((0) << 1)
> +#define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_LAYER		
((1) << 1)
> +#define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_COMBINED	((2) << 1)
> 
>  struct sun8i_mixer;





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
