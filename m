Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542FE6FDB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFWCPZf4yR3U1ASirj1krw08m3imWCf7MqBeIPbyEi4=; b=NDeLmuFwuXr8Tx
	bRLUmq+g4IraGf5S7zShX5mggBL8GQ1dMqtJ49MbjuTr4r14eKWzSOSKgkCdXM1N0qpced/1TXxHd
	7wXDK33IVcRpRC4Judn+vi6BrOXhpSo1rZ4Y9lCXvuihQx6oRT6NaKRQ5/Gbm2OUJYbf27115SF10
	1pFuRr3iy/RRXkTQVDaPvF0YiSLKZhivO05FwTa2DoK3ZYZmMyJzSNuvbFXBCsq6Bft+4cIQ6i/vk
	5hJgFcVfnDP/0BzvC+xs6D8SA9KXKzUSjDhrcOETxOkp04SSuswjBdM/CguwM2y2Rmr8ix8NuQ9Cx
	cFQdiulZTVWfhmU6wopQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVWR-0007GQ-1Y; Mon, 22 Jul 2019 10:26:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVVR-0007CU-Ck
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:25:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id g67so30644450wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 03:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7PaUQrIVrGeXIGTL1TTI8neyiytGTNFYQoDXN1euD3I=;
 b=Vd272koWNetnA/0p/GWW6WWNp6F9xj5yoHg6lUsmLAlMzN+RksjkRK/wedu9+x4kIh
 Qt8UBO5Q1fQ1BfBPde0aL4HJaOG8V3v/fawCHt9KW/bCEXXQ0XOhip3I0gEHdcg8K76I
 Zw4R5Q0fzXhhJa5xtyDc10UfLKjSFqSqEQtLw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7PaUQrIVrGeXIGTL1TTI8neyiytGTNFYQoDXN1euD3I=;
 b=ExuYDKNGu5OaoZbi4/WsUvndwVrxd1NcB2WvAOC7bWzAnIK4Nnq+BNQ6xGKkehQiMX
 OrTtlhOtB0NkIPbgB8QerVtmuBkZs3umM9/TbKmfhkO8C/E9JyxL7QwkyzI9ZKPIChYI
 kihxemMYYkMSJ5KL7Ln5upvFl8DPSb/iowZp0yB2eZOAyMG/GE4pakj4YU6dlb2Gf+jA
 e2Thoo+TCzfHkdaBFpReaKwLy7BAKKk4YQVd6PSUhIPRtkQnxGfwRpENqBhSucuH5/Q2
 GF04xnR3B9FoVXJh9g6J+rqQh6Z6pgjLFWBuZVbHklZRBrheQnbfunXv0p6kyldu+Cah
 rJmA==
X-Gm-Message-State: APjAAAUPXGFl08jq1SFkzNQetwz9DyklWrQX0VAxgrcRbZ3eOckTz9pc
 XFlXDQfr0NRxIBzj1O6DJAv6LfFtqTSYG7Pi4BRFDA==
X-Google-Smtp-Source: APXvYqyoTL7EmTP6KggnwI4qiBHFa6CtIAq4ygX/6//TEf0dSqUF2kWSHDNrUB6YmPXLX1/cLVvJramHWyAi/5vdwuo=
X-Received: by 2002:a1c:f90f:: with SMTP id x15mr61443515wmh.69.1563791115346; 
 Mon, 22 Jul 2019 03:25:15 -0700 (PDT)
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
In-Reply-To: <CAMty3ZDpOA1mD77t3RB6hEG7o3+ws8y64m1DU8=3HdZ4zy4AUw@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Mon, 22 Jul 2019 12:25:03 +0200
Message-ID: <CAOf5uw=5j+8XNv_ZBhY0yrnjjNnaV_w=a4oiV11LoksAfEY7AA@mail.gmail.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_032521_484358_C10134CA 
X-CRM114-Status: GOOD (  37.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Hi Jagan

On Mon, Jul 22, 2019 at 12:21 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Hi Maxime,
>
> On Sat, Jul 20, 2019 at 3:02 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Sat, Jul 20, 2019 at 12:46:27PM +0530, Jagan Teki wrote:
> > > On Sat, Jul 20, 2019 at 12:28 PM Maxime Ripard
> > > <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > On Thu, Jul 11, 2019 at 07:43:16PM +0200, Michael Nazzareno Trimarchi wrote:
> > > > > > > tcon-pixel clock is the rate that you want to achive on display side
> > > > > > > and if you have 4 lanes 32bit or lanes and different bit number that
> > > > > > > you need to have a clock that is able to put outside bits and speed
> > > > > > > equal to pixel-clock * bits / lanes. so If you want a pixel-clock of
> > > > > > > 40 mhz and you have 32bits and 4 lanes you need to have a clock of
> > > > > > > 40 * 32 / 4 in no-burst mode. I think that this is done but most of
> > > > > > > the display.
> > > > > >
> > > > > > So this is what the issue is then?
> > > > > >
> > > > > > This one does make sense, and you should just change the rate in the
> > > > > > call to clk_set_rate in sun4i_tcon0_mode_set_cpu.
> > > > > >
> > > > > > I'm still wondering why that hasn't been brought up in either the
> > > > > > discussion or the commit log before though.
> > > > > >
> > > > > Something like this?
> > > > >
> > > > > drivers/gpu/drm/sun4i/sun4i_tcon.c     | 20 +++++++++++---------
> > > > >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 --
> > > > >  2 files changed, 11 insertions(+), 11 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > index 64c43ee6bd92..42560d5c327c 100644
> > > > > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > @@ -263,10 +263,11 @@ static int sun4i_tcon_get_clk_delay(const struct
> > > > > drm_display_mode *mode,
> > > > >  }
> > > > >
> > > > >  static void sun4i_tcon0_mode_set_common(struct sun4i_tcon *tcon,
> > > > > -                                       const struct drm_display_mode *mode)
> > > > > +                                       const struct drm_display_mode *mode,
> > > > > +                                       u32 tcon_mul)
> > > > >  {
> > > > >         /* Configure the dot clock */
> > > > > -       clk_set_rate(tcon->dclk, mode->crtc_clock * 1000);
> > > > > +       clk_set_rate(tcon->dclk, mode->crtc_clock * tcon_mul * 1000);
> > > > >
> > > > >         /* Set the resolution */
> > > > >         regmap_write(tcon->regs, SUN4I_TCON0_BASIC0_REG,
> > > > > @@ -335,12 +336,13 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > > > > sun4i_tcon *tcon,
> > > > >         u8 bpp = mipi_dsi_pixel_format_to_bpp(device->format);
> > > > >         u8 lanes = device->lanes;
> > > > >         u32 block_space, start_delay;
> > > > > -       u32 tcon_div;
> > > > > +       u32 tcon_div, tcon_mul;
> > > > >
> > > > > -       tcon->dclk_min_div = SUN6I_DSI_TCON_DIV;
> > > > > -       tcon->dclk_max_div = SUN6I_DSI_TCON_DIV;
> > > > > +       tcon->dclk_min_div = 4;
> > > > > +       tcon->dclk_max_div = 127;
> > > > >
> > > > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > > > +       tcon_mul = bpp / lanes;
> > > > > +       sun4i_tcon0_mode_set_common(tcon, mode, tcon_mul);
> > > > >
> > > > >         /* Set dithering if needed */
> > > > >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > > > > @@ -366,7 +368,7 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > > > > sun4i_tcon *tcon,
> > > > >          */
> > > > >         regmap_read(tcon->regs, SUN4I_TCON0_DCLK_REG, &tcon_div);
> > > > >         tcon_div &= GENMASK(6, 0);
> > > > > -       block_space = mode->htotal * bpp / (tcon_div * lanes);
> > > > > +       block_space = mode->htotal * tcon_div * tcon_mul;
> > > > >         block_space -= mode->hdisplay + 40;
> > > > >
> > > > >         regmap_write(tcon->regs, SUN4I_TCON0_CPU_TRI0_REG,
> > > > > @@ -408,7 +410,7 @@ static void sun4i_tcon0_mode_set_lvds(struct
> > > > > sun4i_tcon *tcon,
> > > > >
> > > > >         tcon->dclk_min_div = 7;
> > > > >         tcon->dclk_max_div = 7;
> > > > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > > > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> > > > >
> > > > >         /* Set dithering if needed */
> > > > >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > > > > @@ -487,7 +489,7 @@ static void sun4i_tcon0_mode_set_rgb(struct
> > > > > sun4i_tcon *tcon,
> > > > >
> > > > >         tcon->dclk_min_div = 6;
> > > > >         tcon->dclk_max_div = 127;
> > > > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > > > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> > > > >
> > > > >         /* Set dithering if needed */
> > > > >         sun4i_tcon0_mode_set_dithering(tcon, connector);
> > > > > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > > b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > > index 5c3ad5be0690..a07090579f84 100644
> > > > > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > > @@ -13,8 +13,6 @@
> > > > >  #include <drm/drm_encoder.h>
> > > > >  #include <drm/drm_mipi_dsi.h>
> > > > >
> > > > > -#define SUN6I_DSI_TCON_DIV     4
> > > > > -
> > > > >  struct sun6i_dsi {
> > > > >         struct drm_connector    connector;
> > > > >         struct drm_encoder      encoder;
> > > >
> > > > I had more something like this in mind:
> > > > http://code.bulix.org/nlp5a4-803511
> > >
> > > Worth to look at it. was it working on your panel? meanwhile I will check it.
> >
> > I haven't tested it.
> >
> > > We have updated with below change [1], seems working on but is
> > > actually checking the each divider as before start with 4... till 127.
> > >
> > > This new approach, is start looking the best divider from 4.. based on
> > > the idea vs rounded it will ended up best divider like [2]
> >
> > But why?
> >
> > I mean, it's not like it's the first time I'm asking this...
> >
> > If the issue is what Micheal described, then the divider has nothing
> > to do with it. We've had that discussion over and over again.
>
> This is what Michael is mentioned in above mail
> "tcon-pixel clock is the rate that you want to achive on display side and
> if you have 4 lanes 32bit or lanes and different bit number that you need
> to have a clock that is able to put outside bits and speed equal to
> pixel-clock * bits / lanes. so If you want a pixel-clock of 40 mhz
> and you have 32bits and 4 lanes you need to have a clock of
> 40 * 32 / 4 in no-burst mode. "
>
> He is trying to manage the bpp/lanes into dclk_mul (in last mail) and
> it can multiply with pixel clock which is rate argument in
> sun4i_dclk_round_rate.
>
> The solution I have mentioned in dclk_min, max is bpp/lanes also
> multiple rate in dotclock sun4i_dclk_round_rate.
>
> In both cases the overall pll_rate depends on dividers, the one that I
> have on this patch is based on BSP and the Michael one is more generic
> way so-that it can not to touch other functionalities and looping
> dividers to find the best one.
>
> If dclk_min/max is bpp/lanes then dotclock directly using divider 6
> (assuming 24-bit and 4 lanes) and return the pll_rate and divider 6
> associated.
>
> if dclk_mul is bpp/lanes, on Michael new change, the dividers start
> with 4 and end with 127 but the constant ideal rate which rate *
> bpp/lanes but the loop from sun4i_dclk_round_rate computed the divider
> as 6 only, ie what I'm mentioned on the above mail.
>

tcon-pixel clock and tcon are mutual connected. The code is done in a way
that optimal clock need to be search. Now the patch that I propose is more
connected to the description I gave.

I need some comment from Maxime, what he prefers or we need to search for
a different one. I don't had time to check Maxime proposal because I'm working
on other projects.

Michael

> Jagan.



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
