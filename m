Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C5515C0AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 15:49:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwlViCxDEJ5tMHWEagEsp57vyX36P0gg4uQs5IQISRk=; b=gZnSORQ2sj458a
	5DBIgKUcMarJwP5pYZFWtLYwnWHCCASXl7AcNaPTzAOSDFad/6Kt/5knUQpmTkTITgjWA3VRLrO6Z
	rBUzcHYvDLvrEbmXbbwPItyr60RXsKPmZuCXRtCNm/ygSdSpeCHl7ihUAckqAWQEuc0D4Ig8C6TON
	xZzyFm+aZZP/gQ9/sJ/se/K/cENbCddlt9qce8oLk9bdEhW5F9iV16PNCE4Xs2+jt8G0hoWkov23e
	NblFKv0+3HIqRXfwnOxIEfA1W2KWFTT7Ny2pt3uxJbQDw3zAaCp08vDk1rt3XRt0+vAz3CWKEdlVa
	rbZBEyk6rvC7wk/YyBGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Fnl-0006Pl-6p; Thu, 13 Feb 2020 14:49:13 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Fnd-0006PR-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 14:49:07 +0000
Received: by mail-ot1-x343.google.com with SMTP id g64so5758132otb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 06:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vcfLm2jtEzdazoJrhRa/6IjRAeuLRNph80bHonczbjs=;
 b=ZXQD9YKcdWM/E1humUj0PqFUv1bR2pVGnWs/66SL0Pr0ocCSO9cCRjLK9aHppfnEc1
 c7+y9Rq58JHpa1PAW70q7AhsChY4KgSpPaEjH6Eyq+qvRhiSL6rRXeNYDnc+XsqzNsal
 nnXlbugr+kdCE/gvgjOJKEKA61ugdYrd7EIBY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vcfLm2jtEzdazoJrhRa/6IjRAeuLRNph80bHonczbjs=;
 b=d/wgUfRDOxZxIa63p/IMu1wh5WGMfP+eFzC4PTTcCojYyoQi10UwO5Lth8Q+6+nxRC
 4jjbwifM84p3Dss35Ov60F0is7drcFGFRyw/8D/nBPm7cs5VbvTbznC5x+j5oJ+9WJv/
 XwfmlAJiaW33bXOZyw48jn+POPK6YWc2TxtQy+0cOq8qa/+e9B4Oj5lDtVUj02TJmHeU
 NrS5lCKPJIh4N1rijeQd1rkolVXVZY8FvgNmPouAH1iSNID+Znxer9sg0f28hhaBpV/g
 2iXizJo1qMOR2GsrmhSmj+ExeLXsSVpHwAwM3Y9AK/Qw1eW0x+cqwjZQwXGgKrqpi8Pf
 VZBg==
X-Gm-Message-State: APjAAAUxIjH2sd/0C7BcRcLWVaMhoCfKV2mLuIVnM1FNczC+eJOwqFS6
 6DVaBPw7CIFW6BOYbZB704ua/F5Mhi+L36Kx+D3UYQ==
X-Google-Smtp-Source: APXvYqyzwflTghR6+6u4NDALVo42W7QHaLTETE+pMSGVtE8277s0wjFRf+5vwFnO5GO0Etm0/02313JNlPIPYNF0QWU=
X-Received: by 2002:a9d:7696:: with SMTP id j22mr14433000otl.188.1581605343955; 
 Thu, 13 Feb 2020 06:49:03 -0800 (PST)
MIME-Version: 1.0
References: <20200213124833.35545-1-linus.walleij@linaro.org>
In-Reply-To: <20200213124833.35545-1-linus.walleij@linaro.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 13 Feb 2020 15:48:53 +0100
Message-ID: <CAKMK7uGDG7N1j53hPwNpnK+E=jiPDnEg3MofgC4fKmej_BUm2w@mail.gmail.com>
Subject: Re: [PATCH] drm/pl111: Support Integrator IM-PD1 module
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_064905_658119_7052B799 
X-CRM114-Status: GOOD (  27.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 1:48 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> The last in-kernel user of the old framebuffer driver is the
> IM-PD1 module for the Integrator/AP. Let's implement support for
> this remaining user so we can migrate the last user over to
> DRM and delete the old FB driver.
>
> On the Integrator/AP the IM-PD1 system controller will exist
> alongside the common Integrator system controller so make
> sure to do a special lookup for the IM-PD1 syscon and make it
> take precedence if found.
>
> Tested on the Integrator/AP with the IM-PD1 mounted.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Looking around in the arm/mach-integrator code this seems to match
roughly :-) I noticed there's also two more outputs for two panels,
but not here. Do we not care about these anymore?

Anyway, lgtm. Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/pl111/pl111_versatile.c | 73 +++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
>
> diff --git a/drivers/gpu/drm/pl111/pl111_versatile.c b/drivers/gpu/drm/pl111/pl111_versatile.c
> index 09aeaffb7660..4f325c410b5d 100644
> --- a/drivers/gpu/drm/pl111/pl111_versatile.c
> +++ b/drivers/gpu/drm/pl111/pl111_versatile.c
> @@ -19,6 +19,7 @@ static struct regmap *versatile_syscon_map;
>   * We detect the different syscon types from the compatible strings.
>   */
>  enum versatile_clcd {
> +       INTEGRATOR_IMPD1,
>         INTEGRATOR_CLCD_CM,
>         VERSATILE_CLCD,
>         REALVIEW_CLCD_EB,
> @@ -65,6 +66,14 @@ static const struct of_device_id versatile_clcd_of_match[] = {
>         {},
>  };
>
> +static const struct of_device_id impd1_clcd_of_match[] = {
> +       {
> +               .compatible = "arm,im-pd1-syscon",
> +               .data = (void *)INTEGRATOR_IMPD1,
> +       },
> +       {},
> +};
> +
>  /*
>   * Core module CLCD control on the Integrator/CP, bits
>   * 8 thru 19 of the CM_CONTROL register controls a bunch
> @@ -125,6 +134,36 @@ static void pl111_integrator_enable(struct drm_device *drm, u32 format)
>                            val);
>  }
>
> +#define IMPD1_CTRL_OFFSET      0x18
> +#define IMPD1_CTRL_DISP_LCD    (0 << 0)
> +#define IMPD1_CTRL_DISP_VGA    (1 << 0)
> +#define IMPD1_CTRL_DISP_LCD1   (2 << 0)
> +#define IMPD1_CTRL_DISP_ENABLE (1 << 2)
> +#define IMPD1_CTRL_DISP_MASK   (7 << 0)
> +
> +static void pl111_impd1_enable(struct drm_device *drm, u32 format)
> +{
> +       u32 val;
> +
> +       dev_info(drm->dev, "enable IM-PD1 CLCD connectors\n");
> +       val = IMPD1_CTRL_DISP_VGA | IMPD1_CTRL_DISP_ENABLE;
> +
> +       regmap_update_bits(versatile_syscon_map,
> +                          IMPD1_CTRL_OFFSET,
> +                          IMPD1_CTRL_DISP_MASK,
> +                          val);
> +}
> +
> +static void pl111_impd1_disable(struct drm_device *drm)
> +{
> +       dev_info(drm->dev, "disable IM-PD1 CLCD connectors\n");
> +
> +       regmap_update_bits(versatile_syscon_map,
> +                          IMPD1_CTRL_OFFSET,
> +                          IMPD1_CTRL_DISP_MASK,
> +                          0);
> +}
> +
>  /*
>   * This configuration register in the Versatile and RealView
>   * family is uniformly present but appears more and more
> @@ -270,6 +309,20 @@ static const struct pl111_variant_data pl110_integrator = {
>         .fb_bpp = 16,
>  };
>
> +/*
> + * The IM-PD1 variant is a PL110 with a bunch of broken, or not
> + * yet implemented features
> + */
> +static const struct pl111_variant_data pl110_impd1 = {
> +       .name = "PL110 IM-PD1",
> +       .is_pl110 = true,
> +       .broken_clockdivider = true,
> +       .broken_vblank = true,
> +       .formats = pl110_integrator_pixel_formats,
> +       .nformats = ARRAY_SIZE(pl110_integrator_pixel_formats),
> +       .fb_bpp = 16,
> +};
> +
>  /*
>   * This is the in-between PL110 variant found in the ARM Versatile,
>   * supporting RGB565/BGR565
> @@ -322,8 +375,21 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
>                 /* Non-ARM reference designs, just bail out */
>                 return 0;
>         }
> +
>         versatile_clcd_type = (enum versatile_clcd)clcd_id->data;
>
> +       /*
> +        * On the Integrator, check if we should use the IM-PD1 instead,
> +        * if we find it, it will take precedence. This is on the Integrator/AP
> +        * which only has this option for PL110 graphics.
> +        */
> +        if (versatile_clcd_type == INTEGRATOR_CLCD_CM) {
> +               np = of_find_matching_node_and_match(NULL, impd1_clcd_of_match,
> +                                                    &clcd_id);
> +               if (np)
> +                       versatile_clcd_type = (enum versatile_clcd)clcd_id->data;
> +       }
> +
>         /* Versatile Express special handling */
>         if (versatile_clcd_type == VEXPRESS_CLCD_V2M) {
>                 struct platform_device *pdev;
> @@ -367,6 +433,13 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
>                 priv->variant_display_enable = pl111_integrator_enable;
>                 dev_info(dev, "set up callbacks for Integrator PL110\n");
>                 break;
> +       case INTEGRATOR_IMPD1:
> +               versatile_syscon_map = map;
> +               priv->variant = &pl110_impd1;
> +               priv->variant_display_enable = pl111_impd1_enable;
> +               priv->variant_display_disable = pl111_impd1_disable;
> +               dev_info(dev, "set up callbacks for IM-PD1 PL110\n");
> +               break;
>         case VERSATILE_CLCD:
>                 versatile_syscon_map = map;
>                 /* This can do RGB565 with external PLD */
> --
> 2.23.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



--
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
