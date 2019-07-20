Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7099B6EEB8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:43:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5M6lKj1g1LzWr1EsPCveE5JFq8/dqIRRFr7IC3zB3n4=; b=bGq0F9VAEG2yqr
	2T9CDrq1PN62pp1//B8eiDEnUamsVa7YBK38ysaCavhtXIY0R/zqoonXEvdxy6WtNuAbYxLggKkt4
	KTBKUqqoBVIhX1w/o7PZiivorolQN6AiquqxzKKB1QrUCvFHLpmTpT3HxOVIo4fm9UIETo9A3I+9M
	bnpJ9z4UIdgS2TMaT1bHDyysaXVmI4KSCMplUUHIKC5DHOTMh9yJfAqiZmA75tnYVd9yQFd09kr5E
	OnFkZ6d06ynDnz9rk8VuE8yr4ZxJ+8kEW3r0chfE6ZqC9+FsnhkZaz6SarJ7fibwQQKTeVgM13EP6
	BEeID5oO6ROD1kmAx38A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holtk-0001lC-0k; Sat, 20 Jul 2019 09:43:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holtQ-0001kk-56
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:43:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id z1so34458435wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jul 2019 02:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pB5M/JtFvGYNtIaQ+FBlqp6jxk5A12w5bjS7Qw5Y9cc=;
 b=a7IA1p650dIwE/UbR4Oh8k0zt4T2gQ+ythdcH35GDTjsBXNU+Esr0s4c2J+0IT8ik3
 E8xc2WaX5lw/6Xj1cirU31ntGyVmDjBifqDizWc2gYi14yfppjhe6m7lAtpUO+Y1EuYH
 LFJ2oTfWP6oKLwFFPYZCtpd7d9WvKRUu0XM5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pB5M/JtFvGYNtIaQ+FBlqp6jxk5A12w5bjS7Qw5Y9cc=;
 b=ajMHzJHbKdmKIPfStkLbKzzTsFrfpzv3qtDdEEu/ITqw7gqcd/1y6fm/zLHMv4rq4k
 QEDzrb90M+HqhUyoQjuwzCfUr2+0eCSYj+tBfjETZBK2AdvQ72ouZXFBr47hdK+WI03p
 OQo9/dbNkAfxGC7MGt/rpVYrGZVTQUMLXZou1GNWyPUleSXdu8GCZueJWYbR2R5O0g5T
 opDkfDNZab53q5Kh/YKsSIIDSDAdCnFOWA/kKSWPc/COCLuQIo4zCZfcWYJqlfRGtlXm
 AFntpUB/vlxqiolijSqxVjcPptfkEP5DONrs9qRzA1oQTgkrOSpCa4Solup4x6SyfEyv
 ujpw==
X-Gm-Message-State: APjAAAXKsnNTmrklOCnQUMs0BwB98NMmrmXbedHmZ4rXh9OrdRpUwziz
 6xwEfOeioxtn4YselW/U4MTNj2WXdp6TcU7509iswQ==
X-Google-Smtp-Source: APXvYqy6+HKeBGlLS94t+x2qypNjHzoNPSLQNwi0qLsRbBbXJmWv2H1EB5GfPjhe9izma1Oua6auNZlXxdL5WZc7ixA=
X-Received: by 2002:a5d:4941:: with SMTP id r1mr59278276wrs.225.1563615781775; 
 Sat, 20 Jul 2019 02:43:01 -0700 (PDT)
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
In-Reply-To: <20190720093202.6fn6xmhvsgawscnu@flea>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sat, 20 Jul 2019 11:42:50 +0200
Message-ID: <CAOf5uwmikqEJucsLSGz+j3e1WJ_0ttFRu4-GQsdzdWfR_kvkuw@mail.gmail.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_024304_623531_A3770A6D 
X-CRM114-Status: GOOD (  35.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On Sat, Jul 20, 2019 at 11:32 AM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> On Sat, Jul 20, 2019 at 12:46:27PM +0530, Jagan Teki wrote:
> > On Sat, Jul 20, 2019 at 12:28 PM Maxime Ripard
> > <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Thu, Jul 11, 2019 at 07:43:16PM +0200, Michael Nazzareno Trimarchi wrote:
> > > > > > tcon-pixel clock is the rate that you want to achive on display side
> > > > > > and if you have 4 lanes 32bit or lanes and different bit number that
> > > > > > you need to have a clock that is able to put outside bits and speed
> > > > > > equal to pixel-clock * bits / lanes. so If you want a pixel-clock of
> > > > > > 40 mhz and you have 32bits and 4 lanes you need to have a clock of
> > > > > > 40 * 32 / 4 in no-burst mode. I think that this is done but most of
> > > > > > the display.
> > > > >
> > > > > So this is what the issue is then?
> > > > >
> > > > > This one does make sense, and you should just change the rate in the
> > > > > call to clk_set_rate in sun4i_tcon0_mode_set_cpu.
> > > > >
> > > > > I'm still wondering why that hasn't been brought up in either the
> > > > > discussion or the commit log before though.
> > > > >
> > > > Something like this?
> > > >
> > > > drivers/gpu/drm/sun4i/sun4i_tcon.c     | 20 +++++++++++---------
> > > >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 --
> > > >  2 files changed, 11 insertions(+), 11 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > index 64c43ee6bd92..42560d5c327c 100644
> > > > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > @@ -263,10 +263,11 @@ static int sun4i_tcon_get_clk_delay(const struct
> > > > drm_display_mode *mode,
> > > >  }
> > > >
> > > >  static void sun4i_tcon0_mode_set_common(struct sun4i_tcon *tcon,
> > > > -                                       const struct drm_display_mode *mode)
> > > > +                                       const struct drm_display_mode *mode,
> > > > +                                       u32 tcon_mul)
> > > >  {
> > > >         /* Configure the dot clock */
> > > > -       clk_set_rate(tcon->dclk, mode->crtc_clock * 1000);
> > > > +       clk_set_rate(tcon->dclk, mode->crtc_clock * tcon_mul * 1000);
> > > >
> > > >         /* Set the resolution */
> > > >         regmap_write(tcon->regs, SUN4I_TCON0_BASIC0_REG,
> > > > @@ -335,12 +336,13 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > > > sun4i_tcon *tcon,
> > > >         u8 bpp = mipi_dsi_pixel_format_to_bpp(device->format);
> > > >         u8 lanes = device->lanes;
> > > >         u32 block_space, start_delay;
> > > > -       u32 tcon_div;
> > > > +       u32 tcon_div, tcon_mul;
> > > >
> > > > -       tcon->dclk_min_div = SUN6I_DSI_TCON_DIV;
> > > > -       tcon->dclk_max_div = SUN6I_DSI_TCON_DIV;
> > > > +       tcon->dclk_min_div = 4;
> > > > +       tcon->dclk_max_div = 127;
> > > >
> > > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > > +       tcon_mul = bpp / lanes;
> > > > +       sun4i_tcon0_mode_set_common(tcon, mode, tcon_mul);
> > > >
> > > >         /* Set dithering if needed */
> > > >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > > > @@ -366,7 +368,7 @@ static void sun4i_tcon0_mode_set_cpu(struct
> > > > sun4i_tcon *tcon,
> > > >          */
> > > >         regmap_read(tcon->regs, SUN4I_TCON0_DCLK_REG, &tcon_div);
> > > >         tcon_div &= GENMASK(6, 0);
> > > > -       block_space = mode->htotal * bpp / (tcon_div * lanes);
> > > > +       block_space = mode->htotal * tcon_div * tcon_mul;
> > > >         block_space -= mode->hdisplay + 40;
> > > >
> > > >         regmap_write(tcon->regs, SUN4I_TCON0_CPU_TRI0_REG,
> > > > @@ -408,7 +410,7 @@ static void sun4i_tcon0_mode_set_lvds(struct
> > > > sun4i_tcon *tcon,
> > > >
> > > >         tcon->dclk_min_div = 7;
> > > >         tcon->dclk_max_div = 7;
> > > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> > > >
> > > >         /* Set dithering if needed */
> > > >         sun4i_tcon0_mode_set_dithering(tcon, sun4i_tcon_get_connector(encoder));
> > > > @@ -487,7 +489,7 @@ static void sun4i_tcon0_mode_set_rgb(struct
> > > > sun4i_tcon *tcon,
> > > >
> > > >         tcon->dclk_min_div = 6;
> > > >         tcon->dclk_max_div = 127;
> > > > -       sun4i_tcon0_mode_set_common(tcon, mode);
> > > > +       sun4i_tcon0_mode_set_common(tcon, mode, 1);
> > > >
> > > >         /* Set dithering if needed */
> > > >         sun4i_tcon0_mode_set_dithering(tcon, connector);
> > > > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > index 5c3ad5be0690..a07090579f84 100644
> > > > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > > @@ -13,8 +13,6 @@
> > > >  #include <drm/drm_encoder.h>
> > > >  #include <drm/drm_mipi_dsi.h>
> > > >
> > > > -#define SUN6I_DSI_TCON_DIV     4
> > > > -
> > > >  struct sun6i_dsi {
> > > >         struct drm_connector    connector;
> > > >         struct drm_encoder      encoder;
> > >
> > > I had more something like this in mind:
> > > http://code.bulix.org/nlp5a4-803511
> >
> > Worth to look at it. was it working on your panel? meanwhile I will check it.
>
> I haven't tested it.
>
> > We have updated with below change [1], seems working on but is
> > actually checking the each divider as before start with 4... till 127.
> >
> > This new approach, is start looking the best divider from 4.. based on
> > the idea vs rounded it will ended up best divider like [2]
>
> But why?
>
> I mean, it's not like it's the first time I'm asking this...
>
> If the issue is what Micheal described, then the divider has nothing
> to do with it. We've had that discussion over and over again.
>

Sorry to quick copy and paste but my idea is somenthing like:

---
 drivers/gpu/drm/sun4i/sun4i_dotclock.c | 5 ++++-
 drivers/gpu/drm/sun4i/sun4i_tcon.c     | 9 ++++++---
 drivers/gpu/drm/sun4i/sun4i_tcon.h     | 1 +
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h | 2 --
 4 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_dotclock.c
b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
index 417ade3d2565..b8be67cbb037 100644
--- a/drivers/gpu/drm/sun4i/sun4i_dotclock.c
+++ b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
@@ -74,12 +74,15 @@ static long sun4i_dclk_round_rate(struct clk_hw
*hw, unsigned long rate,
        struct sun4i_tcon *tcon = dclk->tcon;
        unsigned long best_parent = 0;
        u8 best_div = 1;
+       u64 ideal = (u64)rate * tcon->dclk_mul;
        int i;

        for (i = tcon->dclk_min_div; i <= tcon->dclk_max_div; i++) {
-               u64 ideal = (u64)rate * i;
                unsigned long rounded;

+               if (!tcon->dclk_mul)
+                       ideal = (u64)rate * i;
+
                /*
                 * ideal has overflowed the max value that can be stored in an
                 * unsigned long, and every clk operation we might do on a
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c
b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 64c43ee6bd92..3301952bcf32 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -337,8 +337,9 @@ static void sun4i_tcon0_mode_set_cpu(struct
sun4i_tcon *tcon,
        u32 block_space, start_delay;
        u32 tcon_div;

-       tcon->dclk_min_div = SUN6I_DSI_TCON_DIV;
-       tcon->dclk_max_div = SUN6I_DSI_TCON_DIV;
+       tcon->dclk_min_div = 4;
+       tcon->dclk_max_div = 127;
+       tcon->dclk_mul = bpp / lanes;

        sun4i_tcon0_mode_set_common(tcon, mode);

@@ -366,7 +367,7 @@ static void sun4i_tcon0_mode_set_cpu(struct
sun4i_tcon *tcon,
         */
        regmap_read(tcon->regs, SUN4I_TCON0_DCLK_REG, &tcon_div);
        tcon_div &= GENMASK(6, 0);
-       block_space = mode->htotal * bpp / (tcon_div * lanes);
+       block_space = mode->htotal * tcon_div * tcon->dclk_mul;
        block_space -= mode->hdisplay + 40;

        regmap_write(tcon->regs, SUN4I_TCON0_CPU_TRI0_REG,
@@ -408,6 +409,7 @@ static void sun4i_tcon0_mode_set_lvds(struct
sun4i_tcon *tcon,

        tcon->dclk_min_div = 7;
        tcon->dclk_max_div = 7;
+       tcon->dclk_mul = 0;
        sun4i_tcon0_mode_set_common(tcon, mode);

        /* Set dithering if needed */
@@ -487,6 +489,7 @@ static void sun4i_tcon0_mode_set_rgb(struct
sun4i_tcon *tcon,

        tcon->dclk_min_div = 6;
        tcon->dclk_max_div = 127;
+       tcon->dclk_mul = 0;
        sun4i_tcon0_mode_set_common(tcon, mode);

        /* Set dithering if needed */
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h
b/drivers/gpu/drm/sun4i/sun4i_tcon.h
index f9f1fe80b206..44b69533778e 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
@@ -248,6 +248,7 @@ struct sun4i_tcon {
        struct clk                      *dclk;
        u8                              dclk_max_div;
        u8                              dclk_min_div;
+       u8                              dclk_mul;

        /* Reset control */
        struct reset_control            *lcd_rst;
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index 5c3ad5be0690..a07090579f84 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -13,8 +13,6 @@
 #include <drm/drm_encoder.h>
 #include <drm/drm_mipi_dsi.h>

-#define SUN6I_DSI_TCON_DIV     4
-
 struct sun6i_dsi {
        struct drm_connector    connector;
        struct drm_encoder      encoder;
-- 
2.17.1


Michael

> So you need to come with some argument and proof that the divider of
> that clock need to change. Otherwise, stop trying to make that happen:
> it won't.
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
