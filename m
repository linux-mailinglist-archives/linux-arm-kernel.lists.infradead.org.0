Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEC66EE3F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 09:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZzbqXYHwBjtJutXga6yJ3zqHl7QR3mVhkIVCZHplWA=; b=HWdQ9ckaS40mno
	kA3dru0en7lMjd4DuYzdhNVMepbV6Ov6pfX0nlpAi4zfCJc43wpC8IHpp6EcuJf8Od8adsGh87llo
	LdW1FABs4LHxuuLY4+hM5MjgENrkiwUdxxPqTknBax5pIvb3Ckld1rvuxMNfHgzXUgdAM++WFChyv
	prsyFSu9QuAo59uPPBtZqf3qcwQbU9JVNH0ooSh5i2PaAE9O3rOO2ZhFS1kpI+p06g15LvWERHOee
	72yFOr+tQf0TtH2r8sUPV6MRlalM9PPBJjMYkK/EUhCgHNpVeDV96b43sZy0060pU5u22Xj2fVzUV
	uAJ0rFIUpb3jJuCRRqOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoju0-0001Gj-6S; Sat, 20 Jul 2019 07:35:32 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hojte-0001G4-Sx
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 07:35:12 +0000
Received: by mail-io1-xd42.google.com with SMTP id j5so59047696ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jul 2019 00:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yo7l/PRy7h/Gb824LBKVuDwtwGequhTqIvXIp3adEwg=;
 b=Hwc59WKWLtxrzArZ6J5z8eyuv9j8HpcYCexDbS5qTNlmj/dENQM/OZfD0JZOHjrBcd
 e3gfY6b3SpgN3x87zCd7LrNgTX7gBvdwrDg8cO7a67MqaBUG2pv/cVmZWv8p2hGjXUAY
 nXNf8gCxrjgsJRjgJNlbjQ0pOIa+0zdgPAPuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yo7l/PRy7h/Gb824LBKVuDwtwGequhTqIvXIp3adEwg=;
 b=k0qc3ysQNTZrPnTjk76rDF64r1rML7BlI4jcwBe9CaoGDUtrdgQtzysH9TZen2EYKF
 3gdpHynZumQ1Fs43hvUItf+G5jZJVEfjZwja/AEMiZ0COTfb+IJSXxL+GF+9X8xiM9nJ
 1JsBDJy8zKnMsxSvbJOCgu5EW5lkwVwKllYjfwiipi74GCvrs1caz/hOZdkdCeHNE1T3
 Tb8yqRhx7g7qJkfmwQLY7b9LEjp3/Vewq14koaKC6loSUJRuNSVW7/vP3op6+GGUpKqD
 HA0I7XqlFvftBOEFnb4vP4k6IUT2NM9MXXVpRVfJhOVadW0dTz6lwLLPRuVuq/QXc9xv
 T9GQ==
X-Gm-Message-State: APjAAAWnnmQicBsLJB5ErOcZXv5uNlVRz2Zu6vN23VIbBbLUJCgueodh
 H2qh06G2fXAMuUTUFUavBUSPYK6K0lOmsNof90jqHQ==
X-Google-Smtp-Source: APXvYqwDavOgrhT4MQJkkvC8k6ZNFapMZUSf4ZAK47DcNazni4xVviIrlaRZatDMKMuGJBCB0akuEaXjv2s8zidOQVM=
X-Received: by 2002:a02:bb08:: with SMTP id y8mr15097818jan.51.1563608109608; 
 Sat, 20 Jul 2019 00:35:09 -0700 (PDT)
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
 <CAMty3ZDE1xiNgHVLihH378dY5szzkr14V-fwLZdvPs12tY+G1A@mail.gmail.com>
In-Reply-To: <CAMty3ZDE1xiNgHVLihH378dY5szzkr14V-fwLZdvPs12tY+G1A@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 20 Jul 2019 13:04:58 +0530
Message-ID: <CAMty3ZA0H_rbe2tJVeOmi=1v4dWXY1=0zK-+DoNawzQaHd=4ug@mail.gmail.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
To: Maxime Ripard <maxime.ripard@bootlin.com>, 
 Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_003511_078248_736829A0 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 20, 2019 at 12:46 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Sat, Jul 20, 2019 at 12:28 PM Maxime Ripard
> <maxime.ripard@bootlin.com> wrote:
> >
> > On Thu, Jul 11, 2019 at 07:43:16PM +0200, Michael Nazzareno Trimarchi wrote:
> > > > > tcon-pixel clock is the rate that you want to achive on display side
> > > > > and if you have 4 lanes 32bit or lanes and different bit number that
> > > > > you need to have a clock that is able to put outside bits and speed
> > > > > equal to pixel-clock * bits / lanes. so If you want a pixel-clock of
> > > > > 40 mhz and you have 32bits and 4 lanes you need to have a clock of
> > > > > 40 * 32 / 4 in no-burst mode. I think that this is done but most of
> > > > > the display.
> > > >
> > > > So this is what the issue is then?
> > > >
> > > > This one does make sense, and you should just change the rate in the
> > > > call to clk_set_rate in sun4i_tcon0_mode_set_cpu.
> > > >
> > > > I'm still wondering why that hasn't been brought up in either the
> > > > discussion or the commit log before though.
> > > >
> > > Something like this?
> > >
> > > drivers/gpu/drm/sun4i/sun4i_tcon.c     | 20 +++++++++++---------
> > >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 --
> > >  2 files changed, 11 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > index 64c43ee6bd92..42560d5c327c 100644
> > > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > @@ -263,10 +263,11 @@ static int sun4i_tcon_get_clk_delay(const struct
> > > drm_display_mode *mode,
> > >  }
> > >
> > >  static void sun4i_tcon0_mode_set_common(struct sun4i_tcon *tcon,
> > > -                                       const struct drm_display_mode *mode)
> > > +                                       const struct drm_display_mode *mode,
> > > +                                       u32 tcon_mul)
> > >  {
> > >         /* Configure the dot clock */
> > > -       clk_set_rate(tcon->dclk, mode->crtc_clock * 1000);
> > > +       clk_set_rate(tcon->dclk, mode->crtc_clock * tcon_mul * 1000);
> > >
> > >         /* Set the resolution */
> > >         regmap_write(tcon->regs, SUN4I_TCON0_BASIC0_REG,
> > > @@ -335,12 +336,13 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > > sun4i_tcon *tcon,
> > >         u8 bpp = mipi_dsi_pixel_format_to_bpp(device->format);
> > >         u8 lanes = device->lanes;
> > >         u32 block_space, start_delay;
> > > -       u32 tcon_div;
> > > +       u32 tcon_div, tcon_mul;
> > >
> > > -       tcon->dclk_min_div = SUN6I_DSI_TCON_DIV;
> > > -       tcon->dclk_max_div = SUN6I_DSI_TCON_DIV;
> > > +       tcon->dclk_min_div = 4;
> > > +       tcon->dclk_max_div = 127;
> > >
> > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > +       tcon_mul = bpp / lanes;
> > > +       sun4i_tcon0_mode_set_common(tcon, mode, tcon_mul);
> > >
> > >         /* Set dithering if needed */
> > >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > > @@ -366,7 +368,7 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > > sun4i_tcon *tcon,
> > >          */
> > >         regmap_read(tcon->regs, SUN4I_TCON0_DCLK_REG, &tcon_div);
> > >         tcon_div &= GENMASK(6, 0);
> > > -       block_space = mode->htotal * bpp / (tcon_div * lanes);
> > > +       block_space = mode->htotal * tcon_div * tcon_mul;
> > >         block_space -= mode->hdisplay + 40;
> > >
> > >         regmap_write(tcon->regs, SUN4I_TCON0_CPU_TRI0_REG,
> > > @@ -408,7 +410,7 @@ static void sun4i_tcon0_mode_set_lvds(struct
> > > sun4i_tcon *tcon,
> > >
> > >         tcon->dclk_min_div = 7;
> > >         tcon->dclk_max_div = 7;
> > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> > >
> > >         /* Set dithering if needed */
> > >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > > @@ -487,7 +489,7 @@ static void sun4i_tcon0_mode_set_rgb(struct
> > > sun4i_tcon *tcon,
> > >
> > >         tcon->dclk_min_div = 6;
> > >         tcon->dclk_max_div = 127;
> > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> > >
> > >         /* Set dithering if needed */
> > >         sun4i_tcon0_mode_set_dithering(tcon, connector);
> > > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > index 5c3ad5be0690..a07090579f84 100644
> > > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > @@ -13,8 +13,6 @@
> > >  #include <drm/drm_encoder.h>
> > >  #include <drm/drm_mipi_dsi.h>
> > >
> > > -#define SUN6I_DSI_TCON_DIV     4
> > > -
> > >  struct sun6i_dsi {
> > >         struct drm_connector    connector;
> > >         struct drm_encoder      encoder;
> >
> > I had more something like this in mind:
> > http://code.bulix.org/nlp5a4-803511
>
> Worth to look at it. was it working on your panel? meanwhile I will check it.
>
> We have updated with below change [1], seems working on but is
> actually checking the each divider as before start with 4... till 127.
>
> This new approach, is start looking the best divider from 4.. based on
> the idea vs rounded it will ended up best divider like [2]
>
> https://gist.github.com/openedev/7e2c33248b372d29be9979e06d483673
> https://gist.github.com/openedev/c72dfffc0ca59e7ec1edcd7ad360cdd1

I made quick check on two possibilities.

1) with Maxime change
https://gist.github.com/openedev/3b0b3d35ced6d89f5be0831f1cc9d840
https://gist.github.com/openedev/dd6a9e528cde80ef0508cb54723f505d

2) with Maxime change along with min 4, max 127 divider values.
The outcome similar like 1)

This look it will depends on divider, need to check further on this page.

Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
