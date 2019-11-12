Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E87F9882
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 19:22:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4+JMFv29bRRDU5b5x1wSliIBeFPkyowu5iWWJa61r8=; b=N2nynrHRzFkJj6
	SoYsQUVuZVtPw+z6XiGWh4pJk8T8yaKYI1uam6F7PlchZwum/Mao6wTKQEw+EPWh48dvPqQ5Ha2PG
	0+8Tn78GlTyMAcuVGoowN7PSOb2j8hj7H4ixEIP7FhW8ehb+KeWksNvZJPwkBjxNuvDo/Ag/PNppt
	pxvYNWjxlrv9LTWKlr7Fgtk7M4VEwgEFfjD2vys9MnEylT/TgZKqaNlLxGNEWfLTzqyQkMJuCaFMP
	sKHmi/kmLhci6IUm9D6MG+Ux5tVTc5IzbzHRTJEnw0SbA3pTiwmyRXxPOvIstDjWudXwl5V2KvGEg
	56+u7Dg6SEZ3Q7h6OPSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUao8-0003LF-5t; Tue, 12 Nov 2019 18:22:28 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUany-0003KH-Gi
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 18:22:20 +0000
Received: by mail-oi1-x244.google.com with SMTP id m193so15720349oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 10:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1zuYDebMJ/okDBHwgQg9Ko+/yuHAItkCB5r+xtn/gVU=;
 b=HaUYgNK5z9hM0u3S5tvMsLOyHp+WxD02EoIo6ZwYeUW263957WAxFCCsBoFlM9UhzK
 +buTc7LtUro3bpc0TqG0u6Z6VeA/LlU1zEzpQukJQXqBNlaxMssvSwsGZW1czxmeFtIY
 S0A/fo2QfFxG79cDQoAviXaOQt8kwPVegBvWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1zuYDebMJ/okDBHwgQg9Ko+/yuHAItkCB5r+xtn/gVU=;
 b=f/DAuqWOLIe+iCyC5pAQjsGmBV95PCV+n05pbPv3bonvlEUEOxsiIxwaBldxG/C7/Z
 g3LNSCI56PL0YhlrR8luFnYoV1M5/OORAok0oky/LR+ILIEjruQFnUu8zky2AIh4Z+kn
 WAzeu32G2rIdC6hYvOqFLKG2SGUMKYEfw2vv6FVC/knRRhhn9jAifAkcx+R2GKgixe46
 f/SxgdSEcETAvFMUiHmeUSqhVgaQTnR+Im6iHQD64vp65McPbgnMlOg4QesM3AIDAtT9
 V1MyMF7pTIvABqhG34UDinOgGf6OqWMXEdX5nWTugeoHbM0CHZmeFL5WQYrsheldztId
 MXUg==
X-Gm-Message-State: APjAAAWNwY5gS/m7DxtJ29yI41Qn3+1ios7K7O6iIpOJxPPymtqg8aQY
 yTS88G0GVFAhtM1c09F4fsDFF6IzVm3dpadmJzdgnQ==
X-Google-Smtp-Source: APXvYqxWyFwnVlRZzJ+e7TO6RyGTp8L2UIQfJV/REpyHFM3+xax+tNjNNAtMmM4kjxFbc20wLGXUy8mwcfSl9sfs8Gs=
X-Received: by 2002:aca:ead7:: with SMTP id i206mr292992oih.128.1573582935361; 
 Tue, 12 Nov 2019 10:22:15 -0800 (PST)
MIME-Version: 1.0
References: <20191112175940.GA13539@lst.de>
In-Reply-To: <20191112175940.GA13539@lst.de>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 12 Nov 2019 19:22:01 +0100
Message-ID: <CAKMK7uGN4=b-aaymXhs8MaS6GeShy8KMuTYv2O2L0uZBatQJtA@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: fix anx6345 compilation for v5.5
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_102218_610095_5DE74A59 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Harald Geyer <harald@ccbib.org>, Sean Paul <seanpaul@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 6:59 PM Torsten Duwe <duwe@lst.de> wrote:
>
>
> The anx6345 driver originally was copied from anx78xx.c, which has meanwhile
> seen a few changes. In particular, the removal of drm_dp_link helpers and the
> discontinuation to include drm_bridge.h from drm_crtc.h breaks compilation
> in linux-5.5. Apply equivalents of these changes to anx6345.c.
>
> Signed-off-by: Torsten Duwe <duwe@suse.de>

Wait ... Maxime pushed this and it never compiled? What's going on here?
-Daniel

>
> ---
>
> The commits in question are ff1e8fb68ea06 and ee68c743f8d07, but I guess the
> next rebase will change these. next-20191112 plus the anx6345-v5a series plus
> this patch compile cleanly on arm64.
>
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> @@ -19,6 +19,7 @@
>  #include <linux/types.h>
>
>  #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_bridge.h>
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_crtc_helper.h>
>  #include <drm/drm_dp_helper.h>
> @@ -49,7 +50,6 @@ struct anx6345 {
>         struct i2c_client *client;
>         struct edid *edid;
>         struct drm_connector connector;
> -       struct drm_dp_link link;
>         struct drm_panel *panel;
>         struct regulator *dvdd12;
>         struct regulator *dvdd25;
> @@ -96,7 +96,7 @@ static ssize_t anx6345_aux_transfer(stru
>  static int anx6345_dp_link_training(struct anx6345 *anx6345)
>  {
>         unsigned int value;
> -       u8 dp_bw;
> +       u8 dp_bw, dpcd[2];
>         int err;
>
>         err = anx6345_clear_bits(anx6345->map[I2C_IDX_TXCOM],
> @@ -144,18 +143,34 @@ static int anx6345_dp_link_training(stru
>         if (err)
>                 return err;
>
> -       /* Check link capabilities */
> -       err = drm_dp_link_probe(&anx6345->aux, &anx6345->link);
> -       if (err < 0) {
> -               DRM_ERROR("Failed to probe link capabilities: %d\n", err);
> -               return err;
> -       }
> +       /*
> +        * Power up the sink (DP_SET_POWER register is only available on DPCD
> +        * v1.1 and later).
> +        */
> +       if (anx6345->dpcd[DP_DPCD_REV] >= 0x11) {
> +               err = drm_dp_dpcd_readb(&anx6345->aux, DP_SET_POWER, &dpcd[0]);
> +               if (err < 0) {
> +                       DRM_ERROR("Failed to read DP_SET_POWER register: %d\n",
> +                                 err);
> +                       return err;
> +               }
> +
> +               dpcd[0] &= ~DP_SET_POWER_MASK;
> +               dpcd[0] |= DP_SET_POWER_D0;
> +
> +               err = drm_dp_dpcd_writeb(&anx6345->aux, DP_SET_POWER, dpcd[0]);
> +               if (err < 0) {
> +                       DRM_ERROR("Failed to power up DisplayPort link: %d\n",
> +                                 err);
> +                       return err;
> +               }
>
> -       /* Power up the sink */
> -       err = drm_dp_link_power_up(&anx6345->aux, &anx6345->link);
> -       if (err < 0) {
> -               DRM_ERROR("Failed to power up DisplayPort link: %d\n", err);
> -               return err;
> +               /*
> +                * According to the DP 1.1 specification, a "Sink Device must
> +                * exit the power saving state within 1 ms" (Section 2.5.3.1,
> +                * Table 5-52, "Sink Control Field" (register 0x600).
> +                */
> +               usleep_range(1000, 2000);
>         }
>
>         /* Possibly enable downspread on the sink */
> @@ -194,20 +209,28 @@ static int anx6345_dp_link_training(stru
>         if (err)
>                 return err;
>
> -       value = drm_dp_link_rate_to_bw_code(anx6345->link.rate);
> +       dpcd[0] = drm_dp_max_link_rate(anx6345->dpcd);
> +       dpcd[0] = drm_dp_link_rate_to_bw_code(dpcd[0]);
>         err = regmap_write(anx6345->map[I2C_IDX_DPTX],
> -                          SP_DP_MAIN_LINK_BW_SET_REG, value);
> +                          SP_DP_MAIN_LINK_BW_SET_REG, dpcd[0]);
>         if (err)
>                 return err;
>
> +       dpcd[1] = drm_dp_max_lane_count(anx6345->dpcd);
> +
>         err = regmap_write(anx6345->map[I2C_IDX_DPTX],
> -                          SP_DP_LANE_COUNT_SET_REG, anx6345->link.num_lanes);
> +                          SP_DP_LANE_COUNT_SET_REG, dpcd[1]);
>         if (err)
>                 return err;
>
> -       err = drm_dp_link_configure(&anx6345->aux, &anx6345->link);
> +       if (drm_dp_enhanced_frame_cap(anx6345->dpcd))
> +               dpcd[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
> +
> +       err = drm_dp_dpcd_write(&anx6345->aux, DP_LINK_BW_SET, dpcd,
> +                               sizeof(dpcd));
> +
>         if (err < 0) {
> -               DRM_ERROR("Failed to configure DisplayPort link: %d\n", err);
> +               DRM_ERROR("Failed to configure link: %d\n", err);
>                 return err;
>         }
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
