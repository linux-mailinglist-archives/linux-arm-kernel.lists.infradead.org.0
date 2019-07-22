Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF2C6FDF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DuNtc5kY0S+hM7XJh8Y9oQurM5ocKkuCXDVaYMRlC0=; b=k32Xsu/F6Pyb4M
	JPNOxUMFKmREFA6LSAWK6u0NlWLE2oohdgNdi0ffk1jyhvY3pSkp7NQ6hfkjdmmqzEexxfTucJjbH
	FBQ5OjGv+F6te6scTZryh/CVkOIGy6vc5Ee8Q5pNabmPBmZwJjeAXM1y91R1E2g6jWpR6IfTRQb6u
	jdOUYN9BcvNm4d5xgN6bVNwHc7ZQT2pbuvCvMO9lpPgVTSo2ymQ0wsBlwMVyG9G90jAow7nMSA7v4
	7fFPLBgejf7vovuwwOxAbkdlavEuDQ+FV1JdHg2hieetzuB0XHw2ulsQ9hxKMOWgJ+FY6jqXfoUBX
	jMQCCBxAZvQ3MOzp7QPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpViv-0006IB-0S; Mon, 22 Jul 2019 10:39:17 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVif-0006GF-41
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:39:03 +0000
Received: by mail-io1-xd44.google.com with SMTP id g20so72775929ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 03:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X785RGDb03Vq0xPt63zvV6RuQKZu42hQ10CfPa5muiI=;
 b=L3PUE6BXdpA5N40F6qwOGK+dyroQkZ1FuWXkM0SPLMAnUlMAXykqnASqRtwbPCQfI3
 S8JA11NUkZEDrmQcq9AxJy4+4SX9QoEvXwOATemdaG/vwWk2A1F/7QrAGQJ15PzbpVC2
 pky69Fpti79diYMC8LFd46iAuc2Odrs96fqsM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X785RGDb03Vq0xPt63zvV6RuQKZu42hQ10CfPa5muiI=;
 b=jOkQAE2ZhETsYj+tdoEZkjMmTUZ1mc4FUB+RD+MuHy6IBaUJYxFmChOYsCVgdvSx9J
 WJX39mBOw+rC0cVwkhNO/Jc40jXjeWSCKCpuDl8wEZN7AzS+ywN4WgbW0Rn6xk/Q2qJy
 Tx7c5nOM9nMLkHQ37LTjiA7EOiWrhcLKB/Dvv9XJ43k2n4lFdtJRbuD5zplc316ZX8f0
 gaXTgB7fqkoHzoWy3mCtjjMarGknjkKdDHGcb8vzlipr+RYzrCPhClW49dT5dlaMNi5G
 3AlCXl+EqSnSqUhkpH7C60kxV8y7AajYTt1e8/sYHQ5R1rTpxr1NYNeMy4QzUsT6mnov
 HVvg==
X-Gm-Message-State: APjAAAUrFZvqkMZmuuDBBRJMVc1Kk+KGVTuPknQhKwi31LSgoAUjL6pU
 vTyVZ1l7OcTQI0rPAnBGCfr2e5r2aU9Q2uu43nmOng==
X-Google-Smtp-Source: APXvYqxkgQKBaOceS6jITojTL/X3zdR1BTAIItg0O18lfygV1MiQAI59qRJfJF7MjiinnCKCiM8ngrOm6Vz/Wy+Xjtk=
X-Received: by 2002:a05:6638:303:: with SMTP id
 w3mr18087166jap.103.1563791939954; 
 Mon, 22 Jul 2019 03:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190614142406.ybdiqfppo5mc5bgq@flea>
 <CAMty3ZB45cHx3WeXnywBh2_UA_bTmFs6yBTqLWA1BNf4fQtVvQ@mail.gmail.com>
 <20190625144930.5hegt6bkzqzykjid@flea>
 <CAMty3ZCmj0Rz7MMhLqihsvLQi+1CHf0fAoJQ4QN65xB-bwxaJw@mail.gmail.com>
 <20190703114933.u3x4ej3v7ocewvif@flea>
 <CAOf5uw=ZEvMV1hFQE986rNG_ctpReGbjbZzv0m=OzKPdBh57uQ@mail.gmail.com>
 <20190711100100.cty3s6rs3w27low6@flea>
 <CAOf5uw=3fiMuhcj3kDtCaGNTsxHKRrYb79MXZ+yUZtmf0jU10A@mail.gmail.com>
 <20190720065830.zn3txpyduakywcva@flea>
 <CAMty3ZDE1xiNgHVLihH378dY5szzkr14V-fwLZdvPs12tY+G1A@mail.gmail.com>
 <20190720093202.6fn6xmhvsgawscnu@flea>
 <CAMty3ZDpOA1mD77t3RB6hEG7o3+ws8y64m1DU8=3HdZ4zy4AUw@mail.gmail.com>
 <CAOf5uw=5j+8XNv_ZBhY0yrnjjNnaV_w=a4oiV11LoksAfEY7AA@mail.gmail.com>
In-Reply-To: <CAOf5uw=5j+8XNv_ZBhY0yrnjjNnaV_w=a4oiV11LoksAfEY7AA@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 22 Jul 2019 16:08:48 +0530
Message-ID: <CAMty3ZCrj_9Lp15y6bcFErgXaATVjWibV3tO884G31RtVWmuxA@mail.gmail.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033901_593804_B07EDB8A 
X-CRM114-Status: GOOD (  38.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 3:55 PM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi Jagan
>
> On Mon, Jul 22, 2019 at 12:21 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > Hi Maxime,
> >
> > On Sat, Jul 20, 2019 at 3:02 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Sat, Jul 20, 2019 at 12:46:27PM +0530, Jagan Teki wrote:
> > > > On Sat, Jul 20, 2019 at 12:28 PM Maxime Ripard
> > > > <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Thu, Jul 11, 2019 at 07:43:16PM +0200, Michael Nazzareno Trimarchi wrote:
> > > > > > > > tcon-pixel clock is the rate that you want to achive on display side
> > > > > > > > and if you have 4 lanes 32bit or lanes and different bit number that
> > > > > > > > you need to have a clock that is able to put outside bits and speed
> > > > > > > > equal to pixel-clock * bits / lanes. so If you want a pixel-clock of
> > > > > > > > 40 mhz and you have 32bits and 4 lanes you need to have a clock of
> > > > > > > > 40 * 32 / 4 in no-burst mode. I think that this is done but most of
> > > > > > > > the display.
> > > > > > >
> > > > > > > So this is what the issue is then?
> > > > > > >
> > > > > > > This one does make sense, and you should just change the rate in the
> > > > > > > call to clk_set_rate in sun4i_tcon0_mode_set_cpu.
> > > > > > >
> > > > > > > I'm still wondering why that hasn't been brought up in either the
> > > > > > > discussion or the commit log before though.
> > > > > > >
> > > > > > Something like this?
> > > > > >
> > > > > > drivers/gpu/drm/sun4i/sun4i_tcon.c     | 20 +++++++++++---------
> > > > > >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 --
> > > > > >  2 files changed, 11 insertions(+), 11 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > > b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > > index 64c43ee6bd92..42560d5c327c 100644
> > > > > > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > > @@ -263,10 +263,11 @@ static int sun4i_tcon_get_clk_delay(const struct
> > > > > > drm_display_mode *mode,
> > > > > >  }
> > > > > >
> > > > > >  static void sun4i_tcon0_mode_set_common(struct sun4i_tcon *tcon,
> > > > > > -                                       const struct drm_display_mode *mode)
> > > > > > +                                       const struct drm_display_mode *mode,
> > > > > > +                                       u32 tcon_mul)
> > > > > >  {
> > > > > >         /* Configure the dot clock */
> > > > > > -       clk_set_rate(tcon->dclk, mode->crtc_clock * 1000);
> > > > > > +       clk_set_rate(tcon->dclk, mode->crtc_clock * tcon_mul * 1000);
> > > > > >
> > > > > >         /* Set the resolution */
> > > > > >         regmap_write(tcon->regs, SUN4I_TCON0_BASIC0_REG,
> > > > > > @@ -335,12 +336,13 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > > > > > sun4i_tcon *tcon,
> > > > > >         u8 bpp = mipi_dsi_pixel_format_to_bpp(device->format);
> > > > > >         u8 lanes = device->lanes;
> > > > > >         u32 block_space, start_delay;
> > > > > > -       u32 tcon_div;
> > > > > > +       u32 tcon_div, tcon_mul;
> > > > > >
> > > > > > -       tcon->dclk_min_div = SUN6I_DSI_TCON_DIV;
> > > > > > -       tcon->dclk_max_div = SUN6I_DSI_TCON_DIV;
> > > > > > +       tcon->dclk_min_div = 4;
> > > > > > +       tcon->dclk_max_div = 127;
> > > > > >
> > > > > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > > > > +       tcon_mul = bpp / lanes;
> > > > > > +       sun4i_tcon0_mode_set_common(tcon, mode, tcon_mul);
> > > > > >
> > > > > >         /* Set dithering if needed */
> > > > > >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > > > > > @@ -366,7 +368,7 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > > > > > sun4i_tcon *tcon,
> > > > > >          */
> > > > > >         regmap_read(tcon->regs, SUN4I_TCON0_DCLK_REG, &tcon_div);
> > > > > >         tcon_div &= GENMASK(6, 0);
> > > > > > -       block_space = mode->htotal * bpp / (tcon_div * lanes);
> > > > > > +       block_space = mode->htotal * tcon_div * tcon_mul;
> > > > > >         block_space -= mode->hdisplay + 40;
> > > > > >
> > > > > >         regmap_write(tcon->regs, SUN4I_TCON0_CPU_TRI0_REG,
> > > > > > @@ -408,7 +410,7 @@ static void sun4i_tcon0_mode_set_lvds(struct
> > > > > > sun4i_tcon *tcon,
> > > > > >
> > > > > >         tcon->dclk_min_div = 7;
> > > > > >         tcon->dclk_max_div = 7;
> > > > > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > > > > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> > > > > >
> > > > > >         /* Set dithering if needed */
> > > > > >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > > > > > @@ -487,7 +489,7 @@ static void sun4i_tcon0_mode_set_rgb(struct
> > > > > > sun4i_tcon *tcon,
> > > > > >
> > > > > >         tcon->dclk_min_div = 6;
> > > > > >         tcon->dclk_max_div = 127;
> > > > > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > > > > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> > > > > >
> > > > > >         /* Set dithering if needed */
> > > > > >         sun4i_tcon0_mode_set_dithering(tcon, connector);
> > > > > > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > > > b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > > > index 5c3ad5be0690..a07090579f84 100644
> > > > > > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > > > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > > > @@ -13,8 +13,6 @@
> > > > > >  #include <drm/drm_encoder.h>
> > > > > >  #include <drm/drm_mipi_dsi.h>
> > > > > >
> > > > > > -#define SUN6I_DSI_TCON_DIV     4
> > > > > > -
> > > > > >  struct sun6i_dsi {
> > > > > >         struct drm_connector    connector;
> > > > > >         struct drm_encoder      encoder;
> > > > >
> > > > > I had more something like this in mind:
> > > > > http://code.bulix.org/nlp5a4-803511
> > > >
> > > > Worth to look at it. was it working on your panel? meanwhile I will check it.
> > >
> > > I haven't tested it.
> > >
> > > > We have updated with below change [1], seems working on but is
> > > > actually checking the each divider as before start with 4... till 127.
> > > >
> > > > This new approach, is start looking the best divider from 4.. based on
> > > > the idea vs rounded it will ended up best divider like [2]
> > >
> > > But why?
> > >
> > > I mean, it's not like it's the first time I'm asking this...
> > >
> > > If the issue is what Micheal described, then the divider has nothing
> > > to do with it. We've had that discussion over and over again.
> >
> > This is what Michael is mentioned in above mail
> > "tcon-pixel clock is the rate that you want to achive on display side and
> > if you have 4 lanes 32bit or lanes and different bit number that you need
> > to have a clock that is able to put outside bits and speed equal to
> > pixel-clock * bits / lanes. so If you want a pixel-clock of 40 mhz
> > and you have 32bits and 4 lanes you need to have a clock of
> > 40 * 32 / 4 in no-burst mode. "
> >
> > He is trying to manage the bpp/lanes into dclk_mul (in last mail) and
> > it can multiply with pixel clock which is rate argument in
> > sun4i_dclk_round_rate.
> >
> > The solution I have mentioned in dclk_min, max is bpp/lanes also
> > multiple rate in dotclock sun4i_dclk_round_rate.
> >
> > In both cases the overall pll_rate depends on dividers, the one that I
> > have on this patch is based on BSP and the Michael one is more generic
> > way so-that it can not to touch other functionalities and looping
> > dividers to find the best one.
> >
> > If dclk_min/max is bpp/lanes then dotclock directly using divider 6
> > (assuming 24-bit and 4 lanes) and return the pll_rate and divider 6
> > associated.
> >
> > if dclk_mul is bpp/lanes, on Michael new change, the dividers start
> > with 4 and end with 127 but the constant ideal rate which rate *
> > bpp/lanes but the loop from sun4i_dclk_round_rate computed the divider
> > as 6 only, ie what I'm mentioned on the above mail.
> >
>
> tcon-pixel clock and tcon are mutual connected. The code is done in a way
> that optimal clock need to be search. Now the patch that I propose is more
> connected to the description I gave.

True, ie what I'm trying to say in above mail.  My idea on the above
mail is to give more information on the both the solutions (one on the
this patch and another you mentioned on above mail) are depends on
divider value for computing desired pll_rate.

>
> I need some comment from Maxime, what he prefers or we need to search for
> a different one. I don't had time to check Maxime proposal because I'm working
> on other projects.

I already provide my logs on Maxime change.if you want you can have a look.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
