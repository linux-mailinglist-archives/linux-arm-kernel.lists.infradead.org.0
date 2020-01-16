Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1836A13FA29
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:05:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+W3h4AndFBqjRTxy5EnqZKC15aAVQtcLT6KmdiBKrUA=; b=XnnE5K4kGPeGtx
	5PRn9Bbg7LMO8nLGqthJNNJL64ajFyJEEFIWdGiaL3PhAMoroJ4OIPzwTIsp1SGmpU/kElAO3ImGZ
	2T8nZ6olm3D9NEKCccpioniYesjWc8wfR+GJgO27vKkiVooktDDgmRC996dhkMME5rYoiBQqU2X48
	eERuinbVEJPKUE5ExXhccdKm/g7ydNFeVKO8z+f6fCKiE3P/oNxWLr/ySDenUGj0vMs0FP51CFccG
	uoTQd0wOPh3HWA66ypgPmgluX2EJg/XLbg72XJGjw2unihoAs4wn1gFpFfTXgb+/brFjn/mBVpsY0
	Mo2OILW5vwR03fZILm8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBOZ-00016j-Ew; Thu, 16 Jan 2020 20:05:35 +0000
Received: from mailoutvs11.siol.net ([185.57.226.202] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBON-000153-CN
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:05:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A5E355243C8;
 Thu, 16 Jan 2020 21:05:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id pO70ArcDTR1J; Thu, 16 Jan 2020 21:05:20 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 3912A5243C0;
 Thu, 16 Jan 2020 21:05:20 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id A29E85243C8;
 Thu, 16 Jan 2020 21:05:19 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 roman.stratiienko@globallogic.com
Subject: Re: [PATCH v3 2/2] drm/sun4i: Add alpha property for sun8i and sun50i
 VI layer
Date: Thu, 16 Jan 2020 21:05:19 +0100
Message-ID: <2397109.Lt9SDvczpP@jernej-laptop>
In-Reply-To: <20200103211901.44201-2-roman.stratiienko@globallogic.com>
References: <20200103211901.44201-1-roman.stratiienko@globallogic.com>
 <20200103211901.44201-2-roman.stratiienko@globallogic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_120523_734159_24A34989 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.202 listed in list.dnswl.org]
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

Sorry for late reply.

Dne petek, 03. januar 2020 ob 22:19:01 CET je 
roman.stratiienko@globallogic.com napisal(a):
> From: Roman Stratiienko <roman.stratiienko@globallogic.com>
> 
> DE3.0 VI layers supports plane-global alpha channel.
> DE2.0 FCC block have GLOBAL_ALPHA register that can be used as alpha source
> for blender.
> 
> Add alpha property to the DRM plane and connect it to the
> corresponding registers in the mixer.
> 
> Do not add alpha property for systems with DE2.0 and more than 1 VI planes.
> 
> Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>

This looks fine to me.
Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej

> ---
> v2: Initial version by mistake
> v3:
> - Skip adding & applying alpha property if VI count > 1
> ---
>  drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 48 +++++++++++++++++++++-----
>  drivers/gpu/drm/sun4i/sun8i_vi_layer.h | 11 ++++++
>  2 files changed, 51 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c index 42d445d23773..e61aec7d6d07
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> @@ -65,6 +65,36 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer
> *mixer, int channel, }
>  }
> 
> +static void sun8i_vi_layer_update_alpha(struct sun8i_mixer *mixer, int
> channel, +					int overlay, struct 
drm_plane *plane)
> +{
> +	u32 mask, val, ch_base;
> +
> +	ch_base = sun8i_channel_base(mixer, channel);
> +
> +	if (mixer->cfg->is_de3) {
> +		mask = SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK |
> +		       SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_MASK;
> +		val = SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA
> +			(plane->state->alpha >> 8);
> +
> +		val |= (plane->state->alpha == DRM_BLEND_ALPHA_OPAQUE) ?
> +			
SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_PIXEL :
> +			
SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_COMBINED;
> +
> +		regmap_update_bits(mixer->engine.regs,
> +				   
SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base,
> +								
  overlay),
> +				   mask, val);
> +	} else if (mixer->cfg->vi_num == 1) {
> +		regmap_update_bits(mixer->engine.regs,
> +				   
SUN8I_MIXER_FCC_GLOBAL_ALPHA_REG,
> +				   
SUN8I_MIXER_FCC_GLOBAL_ALPHA_MASK,
> +				   SUN8I_MIXER_FCC_GLOBAL_ALPHA
> +					(plane->state->alpha >> 
8));
> +	}
> +}
> +
>  static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int
> channel, int overlay, struct drm_plane *plane,
>  				       unsigned int zpos)
> @@ -248,14 +278,6 @@ static int sun8i_vi_layer_update_formats(struct
> sun8i_mixer *mixer, int channel, SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base,
> overlay),
>  			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE, 
val);
> 
> -	/* It seems that YUV formats use global alpha setting. */
> -	if (mixer->cfg->is_de3)
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base,
> -								
  overlay),
> -				   
SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK,
> -				   
SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA(0xff));
> -
>  	return 0;
>  }
> 
> @@ -373,6 +395,8 @@ static void sun8i_vi_layer_atomic_update(struct
> drm_plane *plane,
> 
>  	sun8i_vi_layer_update_coord(mixer, layer->channel,
>  				    layer->overlay, plane, zpos);
> +	sun8i_vi_layer_update_alpha(mixer, layer->channel,
> +				    layer->overlay, plane);
>  	sun8i_vi_layer_update_formats(mixer, layer->channel,
>  				      layer->overlay, plane);
>  	sun8i_vi_layer_update_buffer(mixer, layer->channel,
> @@ -464,6 +488,14 @@ struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct
> drm_device *drm,
> 
>  	plane_cnt = mixer->cfg->ui_num + mixer->cfg->vi_num;
> 
> +	if (mixer->cfg->vi_num == 1 || mixer->cfg->is_de3) {
> +		ret = drm_plane_create_alpha_property(&layer->plane);
> +		if (ret) {
> +			dev_err(drm->dev, "Couldn't add alpha 
property\n");
> +			return ERR_PTR(ret);
> +		}
> +	}
> +
>  	ret = drm_plane_create_zpos_property(&layer->plane, index,
>  					     0, plane_cnt - 
1);
>  	if (ret) {
> diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.h
> b/drivers/gpu/drm/sun4i/sun8i_vi_layer.h index eaa6076f5dbc..48c399e1c86d
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.h
> +++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.h
> @@ -29,14 +29,25 @@
>  #define SUN8I_MIXER_CHAN_VI_VDS_UV(base) \
>  		((base) + 0xfc)
> 
> +#define SUN8I_MIXER_FCC_GLOBAL_ALPHA_REG \
> +		(0xAA000 + 0x90)
> +
> +#define SUN8I_MIXER_FCC_GLOBAL_ALPHA(x)			((x) << 24)
> +#define SUN8I_MIXER_FCC_GLOBAL_ALPHA_MASK		GENMASK(31, 
24)
> +
>  #define SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN		BIT(0)
>  /* RGB mode should be set for RGB formats and cleared for YCbCr */
>  #define SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE		BIT(15)
>  #define SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET	8
>  #define SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK	GENMASK(12, 8)
> +#define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_MASK	GENMASK(2, 1)
>  #define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK	GENMASK(31, 24)
>  #define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA(x)	((x) << 24)
> 
> +#define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_PIXEL	((0) << 1)
> +#define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_LAYER	((1) << 1)
> +#define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_COMBINED	((2) << 1)
> +
>  #define SUN8I_MIXER_CHAN_VI_DS_N(x)			((x) << 16)
>  #define SUN8I_MIXER_CHAN_VI_DS_M(x)			((x) << 0)





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
