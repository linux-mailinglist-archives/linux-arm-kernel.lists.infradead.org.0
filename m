Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3022172B1D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 11:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hRDLomQiRd/1cBokvOUHoe7OxOIG3552DhuAsb6+2yI=; b=B2Bs2AP+It5TzX0//MIFnSYxg
	JB3e87uEXZdQP0uz0xfctrACsntn5s+FLy7CVzwj764CCrs/gNVNK6O7KuTuGK37BdXfpOcsxXfRk
	zINuQ1d6uOQ7//g1XNGluOqc9FGaTSyBGQFnDaTBBXpkPp/pKhrT/BxexmjNrukQBhAUHh+0VDO55
	M4wLOjxeUT1ltAbSt+1WzjZqRH8+OxwHnH4l1AmjHzlkn7bGyU98Cq/atBgJYr96f12QWgYgICMZ0
	I5aE/7MGSAjWxrsExDLunnwK0OaMopC9EZsKb0E+IHAF3iE4MeNlPnzEfmCIp7LnskvIEp/69t8YJ
	dLJcJhAhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDGh-0006AB-GE; Wed, 24 Jul 2019 09:09:03 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqDDG-00052y-VY
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 09:05:37 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 44F1210000E;
 Wed, 24 Jul 2019 09:05:14 +0000 (UTC)
Date: Wed, 24 Jul 2019 11:05:13 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
Message-ID: <20190724090513.vqnlmya3nqkl6pmu@flea>
References: <20190625144930.5hegt6bkzqzykjid@flea>
 <CAMty3ZCmj0Rz7MMhLqihsvLQi+1CHf0fAoJQ4QN65xB-bwxaJw@mail.gmail.com>
 <20190703114933.u3x4ej3v7ocewvif@flea>
 <CAOf5uw=ZEvMV1hFQE986rNG_ctpReGbjbZzv0m=OzKPdBh57uQ@mail.gmail.com>
 <20190711100100.cty3s6rs3w27low6@flea>
 <CAOf5uw=3fiMuhcj3kDtCaGNTsxHKRrYb79MXZ+yUZtmf0jU10A@mail.gmail.com>
 <20190720065830.zn3txpyduakywcva@flea>
 <CAMty3ZDE1xiNgHVLihH378dY5szzkr14V-fwLZdvPs12tY+G1A@mail.gmail.com>
 <20190720093202.6fn6xmhvsgawscnu@flea>
 <CAMty3ZDpOA1mD77t3RB6hEG7o3+ws8y64m1DU8=3HdZ4zy4AUw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZDpOA1mD77t3RB6hEG7o3+ws8y64m1DU8=3HdZ4zy4AUw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_020533_936434_7C01DE86 
X-CRM114-Status: GOOD (  39.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============4156634249196867576=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4156634249196867576==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ae2iemjxaspus3zz"
Content-Disposition: inline


--ae2iemjxaspus3zz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 22, 2019 at 03:51:04PM +0530, Jagan Teki wrote:
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
> This is what Michael is mentioned in above mail "tcon-pixel clock is
> the rate that you want to achive on display side and if you have 4
> lanes 32bit or lanes and different bit number that you need to have
> a clock that is able to put outside bits and speed equal to
> pixel-clock * bits / lanes. so If you want a pixel-clock of 40 mhz
> and you have 32bits and 4 lanes you need to have a clock of 40 * 32
> / 4 in no-burst mode. "

Yeah, so we need to change the clock rate.

> He is trying to manage the bpp/lanes into dclk_mul (in last mail)
> and it can multiply with pixel clock which is rate argument in
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

We've been over this a couple of times already.

The clock is generated like this:

PLL -> TCON Module Clock -> TCON DCLK

You want the TCON DCLK to be at the pixel clock rate * bpp /
lanes. Fine, that makes sense.

Except that the patch you've sent, instead of changing the rate
itself, changes the ratio between the module clock and DCLK.

And this is where the issue lies. First, from a logical viewpoint, it
doesn't make sense. If you want to change the clock rate, then just do
it. Don't hack around the multipliers trying to fall back to something
that works for you.

Then, the ratio itself needs to be set to 4. This is the part that
we've discussed way too many times already, but in the Allwinner BSP,
that ratio is hardcoded to 4, and we've had panels that need it at
that value.

So, what you want to do is to have:

TCON DCLK = pixel clock * bpp / lanes
TCON Module Clock = DCLK * 4
PLL = Module Clock * Module Clock Divider (which I believe is 1 in most cases)

So you want to increase the PLL. Fortunately for use, this is exactly
what a call to clk_set_rate will end up doing.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ae2iemjxaspus3zz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTgfSQAKCRDj7w1vZxhR
xfxQAQChoe6gGQBRz62j0Mv5k8UpQZBTxBJPPjdhsCMGi2yAaAD9EqdVbz5MaF1P
U/dh35hM6+9O97cx3iPSbzKqvAat0gE=
=vCvh
-----END PGP SIGNATURE-----

--ae2iemjxaspus3zz--


--===============4156634249196867576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4156634249196867576==--

