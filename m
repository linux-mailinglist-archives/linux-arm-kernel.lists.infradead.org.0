Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B976EE2A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 09:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9aN8kAUgh7mTVgTYqNKDLMfJHAQPfYE1uYwcVic+eY=; b=nt147E3arrHCW2
	sI/qzS8Wy5+w7TXD3UFfi7EcGJF4A2H9GCV8EsMY2UtVy0eqw/y/t1A68tBQcDyQ23l7nxdsllj3T
	AG45q/Hsw2EiTgXKJztcSQtka2t/34oZKSc8NUYOGK1aiQexabyNFdJKaQhL2obrl6/0lbmDaJDEN
	27+JIVVEyuzxECfo/uE+AEfE3FrdWyCJyDDGrNIKhl5QcJY9EfuojO3Q9/Zl356FkCo2a92TbQfBS
	/AghyvAasKG22pODhXS+doOpATnXQiHqqxLBBKYgxkzaCLCSVic6F6ONe6mdVmPQFYzTqoVwCPUmN
	jo4pMzB5qHs56k1ykLqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hojcY-0003F7-44; Sat, 20 Jul 2019 07:17:30 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hojbn-0003E9-KA
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 07:16:45 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so63231348iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jul 2019 00:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n6DYMx7wKaYROD5FVCd1p9bSE0uzUsWwaEufeVJ36kg=;
 b=O+LMCWhNC4mcdV8FP4xRuBHbY/qrm0mhaC6qhO7vfXmdUVIfl+ZbpG0uXFN2n2vvem
 b6oyea5YdCge1SWKMJwL9lkOSIxG0Yl2I1FZI6wJX41/+X/Hnio394p2D2aS51867md9
 7H4fqIG6RAsadOgYhehPlzumQatmB1d/TxKA0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n6DYMx7wKaYROD5FVCd1p9bSE0uzUsWwaEufeVJ36kg=;
 b=EobcsmVqr2/FxRubPWXbzbbHaoB7airDr+0AGwd4P++EOgcwaboWN1AMdEAcp7nE3N
 +7DgkKHvE6zd2IiFwlDObAdmRYM5mrmrOC4M2Tw6p3XlfqVuL72CKwWZj88GRimtpvfd
 TaO4Qtb0EFSUUV5A5BAPmWqwSTt9Xt4OFyXrpNOVBnQuy6b16Ojh6yCovOwtNwpnSPzS
 64hbbDb03bcXafmDnCS0qkY5cpEBVS8ym1WzZwlBRPPWIQrXJ43lhDyX+RSUbxGwZN+0
 sn3MQ/qw35waChC0xJS45A0/W/qe5cfD/pqoPhRd1tLEU7RTzpNQq3PmBVYq60z4nFF7
 FzkQ==
X-Gm-Message-State: APjAAAXZjkDmo+xPw1urWTycyX5X5R7HaphIwvkfKB8mkim9cT6sXaAB
 ToExDQhhcxAUMi6+YxG8f8FBRz8rhZ+r3g5nExmJjQ==
X-Google-Smtp-Source: APXvYqxrB0uRt9YtY4GDUUxefgLvzIIJ7vKZ4BIFtyOZPp//LSPjvCPr4jykQDuNHpHHozdXAz+HNCF1npTujMhRJDs=
X-Received: by 2002:a6b:5115:: with SMTP id f21mr3228832iob.173.1563606998627; 
 Sat, 20 Jul 2019 00:16:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190605064933.6bmskkxzzgn35xz7@flea>
 <CAMty3ZCCP=oCqm5=49BsjwoxdDETgBfU_5g8fQ=bz=iWApV0tw@mail.gmail.com>
 <20190614142406.ybdiqfppo5mc5bgq@flea>
 <CAMty3ZB45cHx3WeXnywBh2_UA_bTmFs6yBTqLWA1BNf4fQtVvQ@mail.gmail.com>
 <20190625144930.5hegt6bkzqzykjid@flea>
 <CAMty3ZCmj0Rz7MMhLqihsvLQi+1CHf0fAoJQ4QN65xB-bwxaJw@mail.gmail.com>
 <20190703114933.u3x4ej3v7ocewvif@flea>
 <CAOf5uw=ZEvMV1hFQE986rNG_ctpReGbjbZzv0m=OzKPdBh57uQ@mail.gmail.com>
 <20190711100100.cty3s6rs3w27low6@flea>
 <CAOf5uw=3fiMuhcj3kDtCaGNTsxHKRrYb79MXZ+yUZtmf0jU10A@mail.gmail.com>
 <20190720065830.zn3txpyduakywcva@flea>
In-Reply-To: <20190720065830.zn3txpyduakywcva@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 20 Jul 2019 12:46:27 +0530
Message-ID: <CAMty3ZDE1xiNgHVLihH378dY5szzkr14V-fwLZdvPs12tY+G1A@mail.gmail.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_001644_090148_97E77A39 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 20, 2019 at 12:28 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> On Thu, Jul 11, 2019 at 07:43:16PM +0200, Michael Nazzareno Trimarchi wrote:
> > > > tcon-pixel clock is the rate that you want to achive on display side
> > > > and if you have 4 lanes 32bit or lanes and different bit number that
> > > > you need to have a clock that is able to put outside bits and speed
> > > > equal to pixel-clock * bits / lanes. so If you want a pixel-clock of
> > > > 40 mhz and you have 32bits and 4 lanes you need to have a clock of
> > > > 40 * 32 / 4 in no-burst mode. I think that this is done but most of
> > > > the display.
> > >
> > > So this is what the issue is then?
> > >
> > > This one does make sense, and you should just change the rate in the
> > > call to clk_set_rate in sun4i_tcon0_mode_set_cpu.
> > >
> > > I'm still wondering why that hasn't been brought up in either the
> > > discussion or the commit log before though.
> > >
> > Something like this?
> >
> > drivers/gpu/drm/sun4i/sun4i_tcon.c     | 20 +++++++++++---------
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 --
> >  2 files changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > index 64c43ee6bd92..42560d5c327c 100644
> > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > @@ -263,10 +263,11 @@ static int sun4i_tcon_get_clk_delay(const struct
> > drm_display_mode *mode,
> >  }
> >
> >  static void sun4i_tcon0_mode_set_common(struct sun4i_tcon *tcon,
> > -                                       const struct drm_display_mode *mode)
> > +                                       const struct drm_display_mode *mode,
> > +                                       u32 tcon_mul)
> >  {
> >         /* Configure the dot clock */
> > -       clk_set_rate(tcon->dclk, mode->crtc_clock * 1000);
> > +       clk_set_rate(tcon->dclk, mode->crtc_clock * tcon_mul * 1000);
> >
> >         /* Set the resolution */
> >         regmap_write(tcon->regs, SUN4I_TCON0_BASIC0_REG,
> > @@ -335,12 +336,13 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > sun4i_tcon *tcon,
> >         u8 bpp = mipi_dsi_pixel_format_to_bpp(device->format);
> >         u8 lanes = device->lanes;
> >         u32 block_space, start_delay;
> > -       u32 tcon_div;
> > +       u32 tcon_div, tcon_mul;
> >
> > -       tcon->dclk_min_div = SUN6I_DSI_TCON_DIV;
> > -       tcon->dclk_max_div = SUN6I_DSI_TCON_DIV;
> > +       tcon->dclk_min_div = 4;
> > +       tcon->dclk_max_div = 127;
> >
> > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > +       tcon_mul = bpp / lanes;
> > +       sun4i_tcon0_mode_set_common(tcon, mode, tcon_mul);
> >
> >         /* Set dithering if needed */
> >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > @@ -366,7 +368,7 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > sun4i_tcon *tcon,
> >          */
> >         regmap_read(tcon->regs, SUN4I_TCON0_DCLK_REG, &tcon_div);
> >         tcon_div &= GENMASK(6, 0);
> > -       block_space = mode->htotal * bpp / (tcon_div * lanes);
> > +       block_space = mode->htotal * tcon_div * tcon_mul;
> >         block_space -= mode->hdisplay + 40;
> >
> >         regmap_write(tcon->regs, SUN4I_TCON0_CPU_TRI0_REG,
> > @@ -408,7 +410,7 @@ static void sun4i_tcon0_mode_set_lvds(struct
> > sun4i_tcon *tcon,
> >
> >         tcon->dclk_min_div = 7;
> >         tcon->dclk_max_div = 7;
> > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> >
> >         /* Set dithering if needed */
> >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > @@ -487,7 +489,7 @@ static void sun4i_tcon0_mode_set_rgb(struct
> > sun4i_tcon *tcon,
> >
> >         tcon->dclk_min_div = 6;
> >         tcon->dclk_max_div = 127;
> > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> >
> >         /* Set dithering if needed */
> >         sun4i_tcon0_mode_set_dithering(tcon, connector);
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > index 5c3ad5be0690..a07090579f84 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > @@ -13,8 +13,6 @@
> >  #include <drm/drm_encoder.h>
> >  #include <drm/drm_mipi_dsi.h>
> >
> > -#define SUN6I_DSI_TCON_DIV     4
> > -
> >  struct sun6i_dsi {
> >         struct drm_connector    connector;
> >         struct drm_encoder      encoder;
>
> I had more something like this in mind:
> http://code.bulix.org/nlp5a4-803511

Worth to look at it. was it working on your panel? meanwhile I will check it.

We have updated with below change [1], seems working on but is
actually checking the each divider as before start with 4... till 127.

This new approach, is start looking the best divider from 4.. based on
the idea vs rounded it will ended up best divider like [2]

https://gist.github.com/openedev/7e2c33248b372d29be9979e06d483673
https://gist.github.com/openedev/c72dfffc0ca59e7ec1edcd7ad360cdd1

Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
