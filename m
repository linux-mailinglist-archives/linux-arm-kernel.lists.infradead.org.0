Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68D812CF8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 12:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5mkgL/Dk/0iqWL4WAKWKkWK8itnH2eeKVZQtngkVRWY=; b=IhId8Lv5hGvOCs/RUoaGhjTjhv
	rfwHPfM0Td7UEOR2VjZvhQhxZmmwZMYXgKfYP2zWgkEfflWGfSwBVQKVdGHrsiwl2T7N/6cT/BP4D
	r3LeeRJLxyZQffXuqOjIoe/vcNaawZ2+Y6HWRos2E6fafB3fc8nkrvb2cxVRVfZo14IFFragbyPGw
	aTSptBJCon5EUyFLB86pYjw9fMtA/SsV2hyklB1XIOG03DiJO4jrezdOSR1bOcaAPPHW6slauX3wK
	Yn12vKPSUGEKSLKwik+G1XqIfS280HlJOui5rdk7kTEE6Hr/t+mB1Bv8j2hSF63wQ6ZZoFLooZFax
	LKzcF5iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iltAz-0002f5-2D; Mon, 30 Dec 2019 11:25:33 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iltAn-0002eS-Hk
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 11:25:23 +0000
Received: by mail-ed1-x543.google.com with SMTP id r21so32300905edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 03:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=RvIHNYfkkGx7ukryXDkDHghAXWOtuazR4cve6Bfz2Iw=;
 b=Ss2WUlY9gXJYRCfT7IkZ7FWv5CHaXl9Y9SsICuB7ZOLfjUsM9gShRo0Hgkv573SRRa
 AqiyVTvsUbc3/wpxZoqJ4IRzAum7w4NHxJfeT14uiuHswJEeo5nPGctGa6KWVMpje/69
 5EzQF03h0o0MZ41CRx98jNRupvnnxyl+zeGHtOQZTGR49xd8+FX7Pf5rF8sqtBSe7MFr
 jnz/hn57mmYDH8jUWtK+JrBPrdyi+cbHy6gKfNGEM924cNxlf3VaNXBxKPHC3ZIj/iD4
 ExIKqFM1AF6GA8WzHMLd4a2z/iSb7ZnRtufmfYtlmfOqQjhalJVxyFFcWdeo+IKlEyJA
 sNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=RvIHNYfkkGx7ukryXDkDHghAXWOtuazR4cve6Bfz2Iw=;
 b=pznguCkrnBEu+pHdGpD/CsNCCzmZtdI1iXtTLLFwCxxex5VIEa3U9TVyxNz77OVb80
 XIwnr10p3DS+aLJQHiZT90s7RR+nmLvnEdE+wGaFl6JSgBBBW4N7XzLnVZbz0rEnwpxq
 5XjPltRV0XHZk51MO4/sGmihLWo9UfTudC2V8O5Wz/ATobi/oBqcXAsCr/QZOZHgm8Fc
 fpf75v0xn7K1M2EKDX/Ka75zrI6l3IDwwp22fI7Yu87NJckH/NChaRs7tmmQOu1R/9rJ
 ZUIIzRyrWKp+hPl+eWPNPGIwKwEST1/wvpCfvOZZ923oXMCP/5qp+xvGyEFRILHuEj2r
 mkSw==
X-Gm-Message-State: APjAAAW1RoPgtWx3igai52OHGOfrSRfQfFI1kmP4uT4QrDKffegzzLsm
 LeqFiCGisakhfrtVXX0t56CPBl5d0FoLs+AWBfwVUQ==
X-Google-Smtp-Source: APXvYqwJHsxKsoV8p5JZ8iA96ntKGFcsBDkv9KBJ/orvK5toPP3blVTyqqm1L/rkk4+fm6zLtZiVgLQve5QvXXu6tb0=
X-Received: by 2002:aa7:dc48:: with SMTP id g8mr69212686edu.208.1577705119136; 
 Mon, 30 Dec 2019 03:25:19 -0800 (PST)
MIME-Version: 1.0
References: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
In-Reply-To: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
From: Roman Stratiienko <roman.stratiienko@globallogic.com>
Date: Mon, 30 Dec 2019 13:25:08 +0200
Message-ID: <CAODwZ7uLd57LdCuC_onFPD53mSAryJVfeHUEWmaTxsyf80Wzww@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] drm/sun4i: Reimplement plane z position setting
 logic
To: Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_032521_596180_C735DA1B 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please HOLD this until v3.
I forgot about blender channel frame coords that updated according to
zpos and can have gap between channels.
I will also try to simplify this patch.

On Sun, Dec 29, 2019 at 6:28 PM <roman.stratiienko@globallogic.com> wrote:
>
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
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> index 8b803eb903b8..d306ad5dc093 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> @@ -259,8 +259,54 @@ const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
>
>  static void sun8i_mixer_commit(struct sunxi_engine *engine)
>  {
> -       DRM_DEBUG_DRIVER("Committing changes\n");
> +       struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
> +       u32 base = sun8i_blender_base(mixer);
> +       int i, j = 0;
> +       int channel_by_zpos[SUN8I_MIXER_MAX_LAYERS];
> +       u32 route = 0, pipe_ctl = 0;
> +       int plane_cnt = mixer->cfg->vi_num + mixer->cfg->ui_num;
> +
> +       DRM_DEBUG_DRIVER("Update blender routing\n");
> +       /* Assume that values in mixer->channel_zpos[] are unique except -1 */
> +
> +       for (i = 0; i < plane_cnt; i++)
> +               channel_by_zpos[i] = -1;
>
> +       /* Sort by zpos */
> +       for (i = 0; i < plane_cnt; i++) {
> +               int zpos = mixer->channel_zpos[i];
> +
> +               if (zpos >= 0 && zpos < plane_cnt)
> +                       channel_by_zpos[zpos] = i;
> +       }
> +
> +       /* Route enabled blending channels first */
> +       for (i = 0; i < plane_cnt; i++) {
> +               int ch = channel_by_zpos[i];
> +
> +               if (ch >= 0) {
> +                       pipe_ctl |= SUN8I_MIXER_BLEND_PIPE_CTL_EN(j);
> +                       route |= ch << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(j);
> +                       j++;
> +               }
> +       }
> +
> +       /* Set remaining routing fields to match disabled channel indices */
> +       for (i = 0; i < SUN8I_MIXER_MAX_LAYERS && j < SUN8I_MIXER_MAX_LAYERS;
> +            i++) {
> +               if (mixer->channel_zpos[i] < 0) {
> +                       route |= i << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(j);
> +                       j++;
> +               }
> +       }
> +
> +       regmap_update_bits(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
> +                          SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, pipe_ctl);
> +
> +       regmap_write(mixer->engine.regs,
> +                    SUN8I_MIXER_BLEND_ROUTE(base), route);
> +
> +       DRM_DEBUG_DRIVER("Committing changes\n");
>         regmap_write(engine->regs, SUN8I_MIXER_GLOBAL_DBUFF,
>                      SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
>  }
> @@ -485,10 +531,12 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
>                      SUN8I_MIXER_BLEND_COLOR_BLACK);
>
>         plane_cnt = mixer->cfg->vi_num + mixer->cfg->ui_num;
> -       for (i = 0; i < plane_cnt; i++)
> +       for (i = 0; i < plane_cnt; i++) {
> +               mixer->channel_zpos[i] = -1;
>                 regmap_write(mixer->engine.regs,
>                              SUN8I_MIXER_BLEND_MODE(base, i),
>                              SUN8I_MIXER_BLEND_MODE_DEF);
> +       }
>
>         regmap_update_bits(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
>                            SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/sun8i_mixer.h
> index c6cc94057faf..b193d9d1db66 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
> @@ -13,6 +13,8 @@
>  #include "sun8i_csc.h"
>  #include "sunxi_engine.h"
>
> +#define SUN8I_MIXER_MAX_LAYERS                 5
> +
>  #define SUN8I_MIXER_SIZE(w, h)                 (((h) - 1) << 16 | ((w) - 1))
>  #define SUN8I_MIXER_COORD(x, y)                        ((y) << 16 | (x))
>
> @@ -176,6 +178,9 @@ struct sun8i_mixer {
>
>         struct clk                      *bus_clk;
>         struct clk                      *mod_clk;
> +
> +       /* -1 means that layer is disabled */
> +       int channel_zpos[SUN8I_MIXER_MAX_LAYERS];
>  };
>
>  static inline struct sun8i_mixer *
> diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> index c87fd842918e..ee7c13d8710f 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> @@ -24,12 +24,10 @@
>  #include "sun8i_ui_scaler.h"
>
>  static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
> -                                 int overlay, bool enable, unsigned int zpos,
> -                                 unsigned int old_zpos)
> +                                 int overlay, bool enable, unsigned int zpos)
>  {
> -       u32 val, bld_base, ch_base;
> +       u32 val, ch_base;
>
> -       bld_base = sun8i_blender_base(mixer);
>         ch_base = sun8i_channel_base(mixer, channel);
>
>         DRM_DEBUG_DRIVER("%sabling channel %d overlay %d\n",
> @@ -44,32 +42,7 @@ static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
>                            SUN8I_MIXER_CHAN_UI_LAYER_ATTR(ch_base, overlay),
>                            SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN, val);
>
> -       if (!enable || zpos != old_zpos) {
> -               regmap_update_bits(mixer->engine.regs,
> -                                  SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
> -                                  SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
> -                                  0);
> -
> -               regmap_update_bits(mixer->engine.regs,
> -                                  SUN8I_MIXER_BLEND_ROUTE(bld_base),
> -                                  SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
> -                                  0);
> -       }
> -
> -       if (enable) {
> -               val = SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
> -
> -               regmap_update_bits(mixer->engine.regs,
> -                                  SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
> -                                  val, val);
> -
> -               val = channel << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(zpos);
> -
> -               regmap_update_bits(mixer->engine.regs,
> -                                  SUN8I_MIXER_BLEND_ROUTE(bld_base),
> -                                  SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
> -                                  val);
> -       }
> +       mixer->channel_zpos[channel] = enable ? zpos : -1;
>  }
>
>  static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
> @@ -265,11 +238,9 @@ static void sun8i_ui_layer_atomic_disable(struct drm_plane *plane,
>                                           struct drm_plane_state *old_state)
>  {
>         struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
> -       unsigned int old_zpos = old_state->normalized_zpos;
>         struct sun8i_mixer *mixer = layer->mixer;
>
> -       sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay, false, 0,
> -                             old_zpos);
> +       sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay, false, 0);
>  }
>
>  static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
> @@ -277,12 +248,11 @@ static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
>  {
>         struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
>         unsigned int zpos = plane->state->normalized_zpos;
> -       unsigned int old_zpos = old_state->normalized_zpos;
>         struct sun8i_mixer *mixer = layer->mixer;
>
>         if (!plane->state->visible) {
>                 sun8i_ui_layer_enable(mixer, layer->channel,
> -                                     layer->overlay, false, 0, old_zpos);
> +                                     layer->overlay, false, 0);
>                 return;
>         }
>
> @@ -293,7 +263,7 @@ static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
>         sun8i_ui_layer_update_buffer(mixer, layer->channel,
>                                      layer->overlay, plane);
>         sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay,
> -                             true, zpos, old_zpos);
> +                             true, zpos);
>  }
>
>  static struct drm_plane_helper_funcs sun8i_ui_layer_helper_funcs = {
> diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> index 42d445d23773..97cbc98bf781 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> @@ -17,8 +17,7 @@
>  #include "sun8i_vi_scaler.h"
>
>  static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
> -                                 int overlay, bool enable, unsigned int zpos,
> -                                 unsigned int old_zpos)
> +                                 int overlay, bool enable, unsigned int zpos)
>  {
>         u32 val, bld_base, ch_base;
>
> @@ -37,32 +36,7 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
>                            SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
>                            SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN, val);
>
> -       if (!enable || zpos != old_zpos) {
> -               regmap_update_bits(mixer->engine.regs,
> -                                  SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
> -                                  SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
> -                                  0);
> -
> -               regmap_update_bits(mixer->engine.regs,
> -                                  SUN8I_MIXER_BLEND_ROUTE(bld_base),
> -                                  SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
> -                                  0);
> -       }
> -
> -       if (enable) {
> -               val = SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
> -
> -               regmap_update_bits(mixer->engine.regs,
> -                                  SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
> -                                  val, val);
> -
> -               val = channel << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(zpos);
> -
> -               regmap_update_bits(mixer->engine.regs,
> -                                  SUN8I_MIXER_BLEND_ROUTE(bld_base),
> -                                  SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
> -                                  val);
> -       }
> +       mixer->channel_zpos[channel] = enable ? zpos : -1;
>  }
>
>  static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int channel,
> @@ -350,11 +324,9 @@ static void sun8i_vi_layer_atomic_disable(struct drm_plane *plane,
>                                           struct drm_plane_state *old_state)
>  {
>         struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
> -       unsigned int old_zpos = old_state->normalized_zpos;
>         struct sun8i_mixer *mixer = layer->mixer;
>
> -       sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay, false, 0,
> -                             old_zpos);
> +       sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay, false, 0);
>  }
>
>  static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
> @@ -362,12 +334,11 @@ static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
>  {
>         struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
>         unsigned int zpos = plane->state->normalized_zpos;
> -       unsigned int old_zpos = old_state->normalized_zpos;
>         struct sun8i_mixer *mixer = layer->mixer;
>
>         if (!plane->state->visible) {
>                 sun8i_vi_layer_enable(mixer, layer->channel,
> -                                     layer->overlay, false, 0, old_zpos);
> +                                     layer->overlay, false, 0);
>                 return;
>         }
>
> @@ -378,7 +349,7 @@ static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
>         sun8i_vi_layer_update_buffer(mixer, layer->channel,
>                                      layer->overlay, plane);
>         sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay,
> -                             true, zpos, old_zpos);
> +                             true, zpos);
>  }
>
>  static struct drm_plane_helper_funcs sun8i_vi_layer_helper_funcs = {
> --
> 2.17.1
>


-- 
Best regards,
Roman Stratiienko
Global Logic Inc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
