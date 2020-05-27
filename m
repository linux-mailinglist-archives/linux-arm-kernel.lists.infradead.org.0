Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09C01E4E19
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 21:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfOipGnyxblWjds0d36jQTK36b4teSSyEZGGx6Nn9IQ=; b=f0zb5C4OkqEWaD
	UFmsz9h/rIXFKFEc1muRYnVJVPFl/LCIeucCAelFqqOdK7YxFfUVnfbFiYwTAteezrASNM0aABC5l
	9GRqHMY9MhCtFg5mmTciu8E0MDgmUfkO50LfzgVOpP3RQ95lio3thgP/o7/VCDrikLbznw+ZtSWl6
	qZ9KuoqoAI06U/0W3rljHKPHm4OuM7BTSgFRR6Q0+hq20Oav4h1ccx0NioYkCc/jz1pZl+1Q/2Hf+
	DC4zOc+olraa0QakIkXLb8mxb+FbSKcUS6H4L4qSzmFCLIfb57sZByI9xHFW6t45d3rlgDlnZIeh2
	7icjXqYxXfqDguYhzIJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1fy-0000XX-7W; Wed, 27 May 2020 19:25:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1fc-0000Lb-B4
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 19:24:57 +0000
Received: by mail-lj1-x242.google.com with SMTP id l15so30021932lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 12:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B06LJB5h/zgyW4gA7PYFxNZx20JgVf522YB+3F5h4TA=;
 b=u+9b6a0UuzqNEdKrRRYp74xaFel684WNim59ka+OYrYbmLKL+H/nprkX7vFkVdiCUa
 +O86fHKLZqw/5tvWP3hqw33ak6tHjf4NSI1j5fKipCDJdZkSuCUv1XCSLH8Tfb6vMsFa
 +KsDYhqcUq9p3f4rUyvTwRp9v9Amptoi+GEESpmqsgMwwWNwe5Zu3KFM4nYbIyauEQQW
 Usd8sT8LWVX1IsdfL24D+BCSQx7pVofPBfOZl09tfusTjauehsiP52sutkoRRUjTp+ui
 nESEZOg8iF63hA/Zd9X5L9zSoARxejFqZOUOXEg2msmKduDEaDnFqQPCGDpRoIWyLiqu
 vDtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B06LJB5h/zgyW4gA7PYFxNZx20JgVf522YB+3F5h4TA=;
 b=pKpi0U/gb3f/Ax4HSJSrEkujY6Cj2GHYGahU33Ts3zeth2yC/rFSBFsWzNWr97leEh
 RgzXQPBglutZAXaPoc/KdqIicS+Ww3PxytwBBkR6JvtmeY50+lTX2cJ+8sE3C7HKFyjj
 8XtAFn0US8uu55S1j7F3FX1/hW7nuP4N4DcoiundLoE/liBJhrJDOzOztGqkZFbawM0o
 iSqytLqy4554dDEyldQl7kQNfXBb1YyMrhqG2U/YhNLu5bFrmvnAluyQr0Y8czPPkkjh
 6NqMP6VCdxPq7i67OClLHu3g/tp3JmZUPt3UssgLatxrdeC/JqyaSHxBG/smQbjrmrix
 kBFg==
X-Gm-Message-State: AOAM533nouiH/TWWPHAsdMte19TwR1/wDDuBm+o/Udlc3oVSf9HAg+Ak
 VfIdg7KTlK5nbtWr/A25iWdlJscYhNQS/p6YMY6xXw==
X-Google-Smtp-Source: ABdhPJwwWyamvPVDkwG/N5cdNWA1k5bhKyYHl2B8H32SDSArpyPTtBHqXMrv/ns/v1MgZiZHuBPsS7jNbWkMbQJkOuA=
X-Received: by 2002:a2e:b0ec:: with SMTP id h12mr3493066ljl.269.1590607494583; 
 Wed, 27 May 2020 12:24:54 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <eb489952ba212a84dbe3d369371c0ee75b9a2d3e.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <eb489952ba212a84dbe3d369371c0ee75b9a2d3e.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 12:24:43 -0700
Message-ID: <CADaigPXm-ap=FxVV0_BPJmoL7A2cteVcD+EU3i954ParbyP7wA@mail.gmail.com>
Subject: Re: [PATCH v3 059/105] drm/vc4: crtc: Add BCM2711 pixelvalves
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_122456_381456_E3D35EA9 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:50 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The BCM2711 has 5 pixelvalves, so now that our driver is ready, let's add
> support for them.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/vc4/vc4_crtc.c | 84 ++++++++++++++++++++++++++++++++++-
>  drivers/gpu/drm/vc4/vc4_regs.h |  6 +++-
>  2 files changed, 88 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
> index 9efd7cb25590..a577ed8f929f 100644
> --- a/drivers/gpu/drm/vc4/vc4_crtc.c
> +++ b/drivers/gpu/drm/vc4/vc4_crtc.c
> @@ -229,6 +229,13 @@ static u32 vc4_get_fifo_full_level(struct vc4_crtc *vc4_crtc, u32 format)
>         case PV_CONTROL_FORMAT_24:
>         case PV_CONTROL_FORMAT_DSIV_24:
>         default:
> +               /*
> +                * For some reason, the pixelvalve4 doesn't work with
> +                * the usual formula and will only work with 32.
> +                */
> +               if (vc4_crtc->data->hvs_output == 5)
> +                       return 32;
> +
>                 return fifo_len_bytes - 3 * HVS_FIFO_LATENCY_PIX;
>         }
>  }
> @@ -237,9 +244,14 @@ static u32 vc4_crtc_get_fifo_full_level_bits(struct vc4_crtc *vc4_crtc,
>                                              u32 format)
>  {
>         u32 level = vc4_get_fifo_full_level(vc4_crtc, format);
> +       u32 ret = 0;
>
> -       return VC4_SET_FIELD(level & 0x3f,
> -                            PV_CONTROL_FIFO_LEVEL);
> +       if (level > 0x3f)
> +               ret |= VC4_SET_FIELD((level >> 6) & 0x3,
> +                                    PV5_CONTROL_FIFO_LEVEL_HIGH);
> +

I would drop the conditional here (ORing in zero is fine), and also
the & 3 because it would be good to get a warning if you picked a fifo
full level that doesn't fit in the field.

> +       return ret | VC4_SET_FIELD(level & 0x3f,
> +                                  PV_CONTROL_FIFO_LEVEL);
>  }
>
>  /*
> @@ -277,6 +289,8 @@ static void vc4_crtc_pixelvalve_reset(struct drm_crtc *crtc)
>
>  static void vc4_crtc_config_pv(struct drm_crtc *crtc)
>  {
> +       struct drm_device *dev = crtc->dev;
> +       struct vc4_dev *vc4 = to_vc4_dev(dev);
>         struct drm_encoder *encoder = vc4_get_crtc_encoder(crtc);
>         struct vc4_encoder *vc4_encoder = to_vc4_encoder(encoder);
>         struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
> @@ -356,6 +370,10 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
>         if (is_dsi)
>                 CRTC_WRITE(PV_HACT_ACT, mode->hdisplay * pixel_rep);
>
> +       if (vc4->hvs->hvs5)
> +               CRTC_WRITE(PV_MUX_CFG,
> +                          VC4_SET_FIELD(8, PV_MUX_CFG_RGB_PIXEL_MUX_MODE));

Can we get some #defines in the reg header instead of a magic value?

Other than that, r-b.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
