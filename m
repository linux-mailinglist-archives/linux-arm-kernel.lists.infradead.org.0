Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433BA12C217
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 10:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/egzfbAkNimJRkf3dyquAcNqQOxgkVt/A4E45wH6KY=; b=A/bKerRE+gm1+O
	FXZFfdryIChq4tXlti4X/MI1rGpZRqe+LgSrVddTkQRssm7a96quyy+JwllqS5+GL4tay4jN77Ims
	eq73Q/QQLqGrxKRIlKxGamh5qel0qOnNAXTL+Nvm37p/0ecYCcCCVMy/IAjMTJFzWZCsj7d/b3JjX
	aiZC9La7pFdxGNe+86DhHbZnZ1jAErKPZ23+OYUgocta1+btxNvjPdAmWFKYSsZx7MM4O1F3vNY7D
	aMDC0V7uMZRYu6IW6R9ToMfko543JM8UDXulB4ZsRw5bQFMhNXa74CHDt6KotWwAOKaj8w98vxeIR
	ovrEeJSEFy1LYyWjOr7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilUkk-0004MV-0y; Sun, 29 Dec 2019 09:20:50 +0000
Received: from mailoutvs42.siol.net ([185.57.226.233] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilUka-0004L5-Uq
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 09:20:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id AB371521DE3;
 Sun, 29 Dec 2019 10:20:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id J6noI-8jRxmO; Sun, 29 Dec 2019 10:20:34 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 32F10521DE0;
 Sun, 29 Dec 2019 10:20:34 +0100 (CET)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id D288C521DDF;
 Sun, 29 Dec 2019 10:20:33 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 roman.stratiienko@globallogic.com
Subject: Re: [RFC 2/4] drm/sun4i: Use CRTC size instead of PRIMARY plane size
 as mixer frame.
Date: Sun, 29 Dec 2019 10:20:33 +0100
Message-ID: <3498751.kQq0lBPeGt@jernej-laptop>
In-Reply-To: <20191228202818.69908-3-roman.stratiienko@globallogic.com>
References: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
 <20191228202818.69908-3-roman.stratiienko@globallogic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_012041_152964_8EEB174B 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Dne sobota, 28. december 2019 ob 21:28:16 CET je 
roman.stratiienko@globallogic.com napisal(a):
> From: Roman Stratiienko <roman.stratiienko@globallogic.com>
> 
> According to DRM documentation the only difference between PRIMARY
> and OVERLAY plane is that each CRTC must have PRIMARY plane and
> OVERLAY are optional.
> 
> Allow PRIMARY plane to have dimension different from full-screen.

I noticed this issue recently and I'm glad that you posted solution. Code is 
fine, just few nitpicks and I think it would be better to split it in two 
commits, one which adds callback and another which implements that callback in 
sun8i-mixer. DE1 also needs this fix, but it can be posted later.

> 
> Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
> ---
>  drivers/gpu/drm/sun4i/sun4i_crtc.c     |  4 +++
>  drivers/gpu/drm/sun4i/sun8i_mixer.c    | 35 ++++++++++++++++++++++++++
>  drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 30 ----------------------
>  drivers/gpu/drm/sun4i/sunxi_engine.h   |  8 ++++++
>  4 files changed, 47 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun4i_crtc.c
> b/drivers/gpu/drm/sun4i/sun4i_crtc.c index 3a153648b369..156ea8f19d7d
> 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_crtc.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_crtc.c
> @@ -139,8 +139,12 @@ static void sun4i_crtc_mode_set_nofb(struct drm_crtc
> *crtc) struct drm_display_mode *mode = &crtc->state->adjusted_mode;
>  	struct drm_encoder *encoder = sun4i_crtc_get_encoder(crtc);
>  	struct sun4i_crtc *scrtc = drm_crtc_to_sun4i_crtc(crtc);
> +	struct sunxi_engine *engine = scrtc->engine;
> 
>  	sun4i_tcon_mode_set(scrtc->tcon, encoder, mode);
> +
> +	if (engine->ops->mode_set)
> +		engine->ops->mode_set(engine, mode);
>  }
> 
>  static const struct drm_crtc_helper_funcs sun4i_crtc_helper_funcs = {
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> b/drivers/gpu/drm/sun4i/sun8i_mixer.c index eea4813602b7..bb9a665fd053
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> @@ -257,6 +257,40 @@ const struct de2_fmt_info *sun8i_mixer_format_info(u32
> format) return NULL;
>  }
> 
> +static void sun8i_mode_set(struct sunxi_engine *engine,
> +			   struct drm_display_mode *mode)
> +{
> +	u32 dst_w = mode->crtc_hdisplay;
> +	u32 dst_h = mode->crtc_vdisplay;
> +	u32 outsize = SUN8I_MIXER_SIZE(dst_w, dst_h);
> +	bool interlaced = false;
> +	u32 val;
> +	struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
> +	u32 bld_base = sun8i_blender_base(mixer);
> +
> +	DRM_DEBUG_DRIVER("Mode change, updating global size W: %u H: %u\n",
> +			 dst_w, dst_h);

We should start using newly introduced helpers for DRM debug output, in this 
case drm_dbg(), which replace those in in all caps.

> +	regmap_write(mixer->engine.regs,
> +		     SUN8I_MIXER_GLOBAL_SIZE,
> +		     outsize);
> +	regmap_write(mixer->engine.regs,
> +		     SUN8I_MIXER_BLEND_OUTSIZE(bld_base), outsize);
> +
> +	interlaced = mode->flags & DRM_MODE_FLAG_INTERLACE;
> +
> +	if (interlaced)
> +		val = SUN8I_MIXER_BLEND_OUTCTL_INTERLACED;
> +	else
> +		val = 0;
> +
> +	regmap_update_bits(mixer->engine.regs,
> +			   SUN8I_MIXER_BLEND_OUTCTL(bld_base),
> +			   SUN8I_MIXER_BLEND_OUTCTL_INTERLACED,
> +			   val);
> +	DRM_DEBUG_DRIVER("Switching display mixer interlaced mode %s\n",
> +			 interlaced ? "on" : "off");

Ditto.

> +}
> +
>  static void sun8i_atomic_begin(struct sunxi_engine *engine,
>  			       struct drm_crtc_state *old_state)
>  {
> @@ -325,6 +359,7 @@ static const struct sunxi_engine_ops sun8i_engine_ops =
> { .commit		= sun8i_mixer_commit,
>  	.layers_init	= sun8i_layers_init,
>  	.atomic_begin	= sun8i_atomic_begin,
> +	.mode_set	= sun8i_mode_set,
>  };
> 
>  static struct regmap_config sun8i_mixer_regmap_config = {
> diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c index c87fd842918e..893076716070
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> @@ -99,36 +99,6 @@ static int sun8i_ui_layer_update_coord(struct sun8i_mixer
> *mixer, int channel, insize = SUN8I_MIXER_SIZE(src_w, src_h);
>  	outsize = SUN8I_MIXER_SIZE(dst_w, dst_h);
> 
> -	if (plane->type == DRM_PLANE_TYPE_PRIMARY) {
> -		bool interlaced = false;
> -		u32 val;
> -
> -		DRM_DEBUG_DRIVER("Primary layer, updating global size 
W: %u H: %u\n",
> -				 dst_w, dst_h);
> -		regmap_write(mixer->engine.regs,
> -			     SUN8I_MIXER_GLOBAL_SIZE,
> -			     outsize);
> -		regmap_write(mixer->engine.regs,
> -			     SUN8I_MIXER_BLEND_OUTSIZE(bld_base), 
outsize);
> -
> -		if (state->crtc)
> -			interlaced = state->crtc->state-
>adjusted_mode.flags
> -				& DRM_MODE_FLAG_INTERLACE;
> -
> -		if (interlaced)
> -			val = SUN8I_MIXER_BLEND_OUTCTL_INTERLACED;
> -		else
> -			val = 0;
> -
> -		regmap_update_bits(mixer->engine.regs,
> -				   
SUN8I_MIXER_BLEND_OUTCTL(bld_base),
> -				   
SUN8I_MIXER_BLEND_OUTCTL_INTERLACED,
> -				   val);
> -
> -		DRM_DEBUG_DRIVER("Switching display mixer interlaced 
mode %s\n",
> -				 interlaced ? "on" : "off");
> -	}
> -
>  	/* Set height and width */
>  	DRM_DEBUG_DRIVER("Layer source offset X: %d Y: %d\n",
>  			 state->src.x1 >> 16, state->src.y1 >> 16);
> diff --git a/drivers/gpu/drm/sun4i/sunxi_engine.h
> b/drivers/gpu/drm/sun4i/sunxi_engine.h index 548710a936d5..9783c112d512
> 100644
> --- a/drivers/gpu/drm/sun4i/sunxi_engine.h
> +++ b/drivers/gpu/drm/sun4i/sunxi_engine.h
> @@ -108,6 +108,14 @@ struct sunxi_engine_ops {
>  	 * This function is optional.
>  	 */
>  	void (*vblank_quirk)(struct sunxi_engine *engine);
> +
> +	/**
> +	 * @mode_set:
> +	 *

Please add description.

Best regards,
Jernej

> +	 * This function is optional.
> +	 */
> +	void (*mode_set)(struct sunxi_engine *engine,
> +			 struct drm_display_mode *mode);
>  };
> 
>  /**





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
