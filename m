Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77B012D945
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNFazZY4qDfDgHHXBgSIU9lAoDqhTexiUKQ8qCKaQes=; b=rJ1XgX2ao1n47n
	i1TsZJFqL3iHzk4y8zpyrMWuBYxEuYAEDaoELkXWU4hmsPBjYxxHD3bVsK0drX2G2GdrBOgIQcDd5
	0IRzvX03G7kW22IdHW2FVbgByI8m0rVRYfX3p877XbdARlHqw1p3qOrj3RkME+DgoUNII9G3R+8AO
	8jgszBlzJSE6mUQKdqHU7PQda2cY7sDt2+EwkDkrYXHwi8CXJLTpP86X1XUhqqJLNlWKr0F7X5HSW
	u0xrrZOL9O3IgwC2jfM3F8bi11YUMWOCAbQcaQ+UXAhAqafsj6fGs72Wd8dmRPHTsayMXLq99mXJD
	HM0Hz78igrAy+6XkOOOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHx3-0006me-EQ; Tue, 31 Dec 2019 13:52:49 +0000
Received: from mailoutvs25.siol.net ([185.57.226.216] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHws-0006m1-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:52:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id BA3C4523258;
 Tue, 31 Dec 2019 14:52:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 8mFCXVPAZteK; Tue, 31 Dec 2019 14:52:32 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id EA11B52377E;
 Tue, 31 Dec 2019 14:52:31 +0100 (CET)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 900F6523258;
 Tue, 31 Dec 2019 14:52:31 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 roman.stratiienko@globallogic.com
Subject: Re: [PATCH v2 1/4] drm/sun4i: Reimplement plane z position setting
 logic
Date: Tue, 31 Dec 2019 14:52:31 +0100
Message-ID: <4174797.8F6SAcFxjW@jernej-laptop>
In-Reply-To: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
References: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_055238_636442_7B76FE4F 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.216 listed in list.dnswl.org]
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

Dne nedelja, 29. december 2019 ob 17:28:25 CET je 
roman.stratiienko@globallogic.com napisal(a):
> From: Roman Stratiienko <roman.stratiienko@globallogic.com>
> 
> To set blending channel order register software needs to know state and
> position of each channel, which impossible at plane commit stage.
> 
> Move this procedure to atomic_flush stage, where all necessary information
> is available.
> 
> Fixes: f88c5ee77496 ("drm/sun4i: Implement zpos for DE2")
> Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
> ---
> v2:
> - Use SUN8I_MIXER_MAX_LAYERS macro
> - Use plane_cnt instead of hard-coded number
> - Put initialization of channel_zpos into for loop
> - Add 'Fixes' line to the commit message
> - Minor clean-ups
> - Comments added
> ---
>  drivers/gpu/drm/sun4i/sun8i_mixer.c    | 52 +++++++++++++++++++++++++-
>  drivers/gpu/drm/sun4i/sun8i_mixer.h    |  5 +++
>  drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 42 +++------------------
>  drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 39 +++----------------
>  4 files changed, 66 insertions(+), 72 deletions(-)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> b/drivers/gpu/drm/sun4i/sun8i_mixer.c index 8b803eb903b8..d306ad5dc093
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> @@ -259,8 +259,54 @@ const struct de2_fmt_info *sun8i_mixer_format_info(u32
> format)
> 
>  static void sun8i_mixer_commit(struct sunxi_engine *engine)
>  {
> -	DRM_DEBUG_DRIVER("Committing changes\n");
> +	struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
> +	u32 base = sun8i_blender_base(mixer);
> +	int i, j = 0;
> +	int channel_by_zpos[SUN8I_MIXER_MAX_LAYERS];
> +	u32 route = 0, pipe_ctl = 0;
> +	int plane_cnt = mixer->cfg->vi_num + mixer->cfg->ui_num;

Can you please sort above lines by size (longest to shortest) as much as 
possible?

> +
> +	DRM_DEBUG_DRIVER("Update blender routing\n");
> +	/* Assume that values in mixer->channel_zpos[] are unique except -1 
*/

I would remove "Assume that" because it's guaranteed by zpos normalization in 
DRM core.

> +
> +	for (i = 0; i < plane_cnt; i++)
> +		channel_by_zpos[i] = -1;
> 
> +	/* Sort by zpos */
> +	for (i = 0; i < plane_cnt; i++)	{
> +		int zpos = mixer->channel_zpos[i];
> +
> +		if (zpos >= 0 && zpos < plane_cnt)
> +			channel_by_zpos[zpos] = i;
> +	}
> +
> +	/* Route enabled blending channels first */
> +	for (i = 0; i < plane_cnt; i++)	{
> +		int ch = channel_by_zpos[i];
> +
> +		if (ch >= 0) {
> +			pipe_ctl |= SUN8I_MIXER_BLEND_PIPE_CTL_EN(j);
> +			route |= ch << 
SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(j);
> +			j++;
> +		}
> +	}
> +
> +	/* Set remaining routing fields to match disabled channel indices */
> +	for (i = 0; i < SUN8I_MIXER_MAX_LAYERS && j < 
SUN8I_MIXER_MAX_LAYERS;
> +	     i++) {
> +		if (mixer->channel_zpos[i] < 0) {
> +			route |= i << 
SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(j);
> +			j++;
> +		}
> +	}

Is above for loop really necessary? If pipe is not enabled I don't think you 
need to set a route.

> +
> +	regmap_update_bits(mixer->engine.regs, 
SUN8I_MIXER_BLEND_PIPE_CTL(base),
> +			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 
pipe_ctl);
> +
> +	regmap_write(mixer->engine.regs,
> +		     SUN8I_MIXER_BLEND_ROUTE(base), route);
> +
> +	DRM_DEBUG_DRIVER("Committing changes\n");
>  	regmap_write(engine->regs, SUN8I_MIXER_GLOBAL_DBUFF,
>  		     SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
>  }
> @@ -485,10 +531,12 @@ static int sun8i_mixer_bind(struct device *dev, struct
> device *master, SUN8I_MIXER_BLEND_COLOR_BLACK);
> 
>  	plane_cnt = mixer->cfg->vi_num + mixer->cfg->ui_num;
> -	for (i = 0; i < plane_cnt; i++)
> +	for (i = 0; i < plane_cnt; i++) {
> +		mixer->channel_zpos[i] = -1;
>  		regmap_write(mixer->engine.regs,
>  			     SUN8I_MIXER_BLEND_MODE(base, i),
>  			     SUN8I_MIXER_BLEND_MODE_DEF);
> +	}
> 
>  	regmap_update_bits(mixer->engine.regs, 
SUN8I_MIXER_BLEND_PIPE_CTL(base),
>  			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h
> b/drivers/gpu/drm/sun4i/sun8i_mixer.h index c6cc94057faf..b193d9d1db66
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
> @@ -13,6 +13,8 @@
>  #include "sun8i_csc.h"
>  #include "sunxi_engine.h"
> 
> +#define SUN8I_MIXER_MAX_LAYERS			5
> +
>  #define SUN8I_MIXER_SIZE(w, h)			(((h) - 1) << 16 | 
((w) - 1))
>  #define SUN8I_MIXER_COORD(x, y)			((y) << 16 | (x))
> 
> @@ -176,6 +178,9 @@ struct sun8i_mixer {
> 
>  	struct clk			*bus_clk;
>  	struct clk			*mod_clk;
> +
> +	/* -1 means that layer is disabled */
> +	int channel_zpos[SUN8I_MIXER_MAX_LAYERS];
>  };
> 
>  static inline struct sun8i_mixer *
> diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c index c87fd842918e..ee7c13d8710f
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> @@ -24,12 +24,10 @@
>  #include "sun8i_ui_scaler.h"
> 
>  static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
> -				  int overlay, bool enable, 
unsigned int zpos,
> -				  unsigned int old_zpos)
> +				  int overlay, bool enable, 
unsigned int zpos)
>  {
> -	u32 val, bld_base, ch_base;
> +	u32 val, ch_base;
> 
> -	bld_base = sun8i_blender_base(mixer);
>  	ch_base = sun8i_channel_base(mixer, channel);
> 
>  	DRM_DEBUG_DRIVER("%sabling channel %d overlay %d\n",
> @@ -44,32 +42,7 @@ static void sun8i_ui_layer_enable(struct sun8i_mixer
> *mixer, int channel, SUN8I_MIXER_CHAN_UI_LAYER_ATTR(ch_base, overlay),
>  			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN, val);
> 
> -	if (!enable || zpos != old_zpos) {
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
> -				   
SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
> -				   0);
> -
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_BLEND_ROUTE(bld_base),
> -				   
SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
> -				   0);
> -	}
> -
> -	if (enable) {
> -		val = SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
> -
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
> -				   val, val);
> -
> -		val = channel << 
SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(zpos);
> -
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_BLEND_ROUTE(bld_base),
> -				   
SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
> -				   val);
> -	}
> +	mixer->channel_zpos[channel] = enable ? zpos : -1;
>  }
> 
>  static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int
> channel, @@ -265,11 +238,9 @@ static void
> sun8i_ui_layer_atomic_disable(struct drm_plane *plane, struct
> drm_plane_state *old_state)
>  {
>  	struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
> -	unsigned int old_zpos = old_state->normalized_zpos;
>  	struct sun8i_mixer *mixer = layer->mixer;
> 
> -	sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay, 
false, 0,
> -			      old_zpos);
> +	sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay, false, 
0);
>  }
> 
>  static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
> @@ -277,12 +248,11 @@ static void sun8i_ui_layer_atomic_update(struct
> drm_plane *plane, {
>  	struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
>  	unsigned int zpos = plane->state->normalized_zpos;
> -	unsigned int old_zpos = old_state->normalized_zpos;
>  	struct sun8i_mixer *mixer = layer->mixer;
> 
>  	if (!plane->state->visible) {
>  		sun8i_ui_layer_enable(mixer, layer->channel,
> -				      layer->overlay, false, 0, 
old_zpos);
> +				      layer->overlay, false, 0);
>  		return;
>  	}
> 
> @@ -293,7 +263,7 @@ static void sun8i_ui_layer_atomic_update(struct
> drm_plane *plane, sun8i_ui_layer_update_buffer(mixer, layer->channel,
>  				     layer->overlay, plane);
>  	sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay,
> -			      true, zpos, old_zpos);
> +			      true, zpos);
>  }
> 
>  static struct drm_plane_helper_funcs sun8i_ui_layer_helper_funcs = {
> diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c index 42d445d23773..97cbc98bf781
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> @@ -17,8 +17,7 @@
>  #include "sun8i_vi_scaler.h"
> 
>  static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
> -				  int overlay, bool enable, 
unsigned int zpos,
> -				  unsigned int old_zpos)
> +				  int overlay, bool enable, 
unsigned int zpos)
>  {
>  	u32 val, bld_base, ch_base;
> 
> @@ -37,32 +36,7 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer

You should remove bld_base in this function too, now that it's not used 
anymore.

Best regards,
Jernej

> *mixer, int channel, SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
>  			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN, val);
> 
> -	if (!enable || zpos != old_zpos) {
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
> -				   
SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
> -				   0);
> -
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_BLEND_ROUTE(bld_base),
> -				   
SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
> -				   0);
> -	}
> -
> -	if (enable) {
> -		val = SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
> -
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
> -				   val, val);
> -
> -		val = channel << 
SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(zpos);
> -
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_BLEND_ROUTE(bld_base),
> -				   
SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
> -				   val);
> -	}
> +	mixer->channel_zpos[channel] = enable ? zpos : -1;
>  }
> 
>  static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int
> channel, @@ -350,11 +324,9 @@ static void
> sun8i_vi_layer_atomic_disable(struct drm_plane *plane, struct
> drm_plane_state *old_state)
>  {
>  	struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
> -	unsigned int old_zpos = old_state->normalized_zpos;
>  	struct sun8i_mixer *mixer = layer->mixer;
> 
> -	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay, 
false, 0,
> -			      old_zpos);
> +	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay, false, 
0);
>  }
> 
>  static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
> @@ -362,12 +334,11 @@ static void sun8i_vi_layer_atomic_update(struct
> drm_plane *plane, {
>  	struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
>  	unsigned int zpos = plane->state->normalized_zpos;
> -	unsigned int old_zpos = old_state->normalized_zpos;
>  	struct sun8i_mixer *mixer = layer->mixer;
> 
>  	if (!plane->state->visible) {
>  		sun8i_vi_layer_enable(mixer, layer->channel,
> -				      layer->overlay, false, 0, 
old_zpos);
> +				      layer->overlay, false, 0);
>  		return;
>  	}
> 
> @@ -378,7 +349,7 @@ static void sun8i_vi_layer_atomic_update(struct
> drm_plane *plane, sun8i_vi_layer_update_buffer(mixer, layer->channel,
>  				     layer->overlay, plane);
>  	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay,
> -			      true, zpos, old_zpos);
> +			      true, zpos);
>  }
> 
>  static struct drm_plane_helper_funcs sun8i_vi_layer_helper_funcs = {





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
