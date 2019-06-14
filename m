Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B7946097
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T43Sff9ayarc3UrKsXOrqE7tNOJIaScaIiMQ6GYIasc=; b=YPU78tsYQYIOASLWPTLWAav7n
	Jnosc9OgvA9kf4MhgyxuM8IkWgclkOJreBAsp4P70qsrPxqaVLXqk89Hc+BJw6N1f2l2udkmqQipv
	YTnyyFQ7AFXa/QRxvKOSZvY3phJcoG2tMKEgQWN3li8rd9wrigtOz879XQc+rqoYlbIvpSiGJDrJ3
	oV4gQlKjHH8hk7Esr2FzvkVIeyKfIeDLVTfD7ItzHx7TObLscdHrKwZJsRZYV8ztFBmb7AE8djpWe
	vji5x0fJR51JEiBFKoXMhY+fk3ISEATUuTcl2QqeAuBrF0oHiyQUufF7/kkvSxSKsTTXFNY2yIb8G
	7skmtvLzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbn7y-0003Tg-DQ; Fri, 14 Jun 2019 14:24:26 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbn7l-0003TL-1f
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:24:15 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 61125E0019;
 Fri, 14 Jun 2019 14:24:06 +0000 (UTC)
Date: Fri, 14 Jun 2019 16:24:06 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
Message-ID: <20190614142406.ybdiqfppo5mc5bgq@flea>
References: <20190124195900.22620-1-jagan@amarulasolutions.com>
 <20190124195900.22620-12-jagan@amarulasolutions.com>
 <20190125212433.ni2jg3wvpyjazlxf@flea>
 <CAMty3ZAsH2iZ+JEqTE3D58aXfGuhMSg9YoO56ZhhOeE4c4yQHQ@mail.gmail.com>
 <20190129151348.mh27btttsqcmeban@flea>
 <CAMty3ZAjAoti8Zu80c=OyCA+u-jtQnkidsKSNz_c2OaRswqc3w@mail.gmail.com>
 <20190201143102.rcvrxstc365mezvx@flea>
 <CAMty3ZC3_+z1upH4Y08R1z=Uq1C=OpWETNrBO8nGRoHhuNrHSA@mail.gmail.com>
 <20190605064933.6bmskkxzzgn35xz7@flea>
 <CAMty3ZCCP=oCqm5=49BsjwoxdDETgBfU_5g8fQ=bz=iWApV0tw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZCCP=oCqm5=49BsjwoxdDETgBfU_5g8fQ=bz=iWApV0tw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_072413_407804_36C6C4F0 
X-CRM114-Status: GOOD (  36.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4152218842366422490=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4152218842366422490==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="npvcnqi5yg4bofaa"
Content-Disposition: inline


--npvcnqi5yg4bofaa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 05, 2019 at 01:03:16PM +0530, Jagan Teki wrote:
> On Wed, Jun 5, 2019 at 12:19 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > Hi,
> >
> > I've reordered the mail a bit to work on chunks
> >
> > On Fri, May 24, 2019 at 03:37:42PM +0530, Jagan Teki wrote:
> > > > I wish it was in your commit log in the first place, instead of having
> > > > to exchange multiple mails over this.
> > > >
> > > > However, I don't think that's quite true, and it might be a bug in
> > > > Allwinner's implementation (or rather something quite confusing).
> > > >
> > > > You're right that the lcd_rate and pll_rate seem to be generated from
> > > > the pixel clock, and it indeed looks like the ratio between the pixel
> > > > clock and the TCON dotclock is defined through the number of bits per
> > > > lanes.
> > > >
> > > > However, in this case, dsi_rate is actually the same than lcd_rate,
> > > > since pll_rate is going to be divided by dsi_div:
> > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L791
> > > >
> > > > Since lcd_div is 1, it also means that in this case, dsi_rate ==
> > > > dclk_rate.
> > > >
> > > > The DSI module clock however, is always set to 148.5 MHz. Indeed, if
> > > > we look at:
> > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L804
> > > >
> > > > We can see that the rate in clk_info is used if it's different than
> > > > 0. This is filled by disp_al_lcd_get_clk_info, which, in the case of a
> > > > DSI panel, will hardcode it to 148.5 MHz:
> > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L164
> > >
> > > Let me explain, something more.
> > >
> > > According to bsp there are clk_info.tcon_div which I will explain below.
> > > clk_info.dsi_div which is dynamic and it depends on bpp/lanes, so it
> > > is 6 for 24bpp and 4 lanes devices.
> > >
> > > PLL rate here depends on dsi_div (not tcon_div)
> > >
> > > Code here
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L784
> > >
> > > is computing the actual set rate, which depends on dsi_rate.
> > >
> > > lcd_rate = dclk_rate * clk_info.dsi_div;
> > > dsi_rate = pll_rate / clk_info.dsi_div;
> > >
> > > Say if the dclk_rate 148MHz then the dsi_rate is 888MHz which set rate
> > > for above link you mentioned.
> > >
> > > Here are the evidence with some prints.
> > >
> > > https://gist.github.com/openedev/9bae2d87d2fcc06b999fe48c998b7043
> > > https://gist.github.com/openedev/700de2e3701b2bf3ad1aa0f0fa862c9a
> >
> > Ok, so we agree up to this point, and the prints confirm that the
> > analysis above is the right one.
> >
> > > > So, the DSI clock is set to this here:
> > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L805
> >
> > Your patch doesn't address that, so let's leave that one alone.
>
> Basically this is final pll set rate when sun4i_dotclock.c called the
> desired rate with ccu_nkm.c so it ended the final rate with parent as
> Line 8 of
> https://gist.github.com/openedev/700de2e3701b2bf3ad1aa0f0fa862c9a

If that's important to the driver, it should be set explicitly then,
and not work by accident.

> > > > The TCON *module* clock (the one in the clock controller) has been set
> > > > to lcd_rate (so the pixel clock times the number of bits per lane) here:
> > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L800
> > > >
> > > > And the PLL has been set to the same rate here:
> > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L794
> > > >
> > > > Let's take a step back now: that function we were looking at,
> > > > lcd_clk_config, is called by lcd_clk_enable, which is in turn called
> > > > by disp_lcd_enable here:
> > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L1328
> > > >
> > > > The next function being called is disp_al_lcd_cfg, and that function
> > > > will hardcode the TCON dotclock divider to 4, here:
> > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L240
> > >
> > > tcon_div from BSP point-of-view of there are two variants
> > > 00) clk_info.tcon_div which is 4 and same is set the divider position
> > > in SUN4I_TCON0_DCLK_REG (like above link refer)
> > > 01) tcon_div which is 4 and used for edge timings computation
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L12
> > >
> > > The real reason for 01) is again 4 is they set the divider to 4 in 00)
> > > which is technically wrong because the dividers which used during
> > > dotclock in above (dsi_div) should be used here as well. Since there
> > > is no dynamic way of doing this BSP hard-coding these values.
> > >
> > > Patches 5,6,7 on this series doing this
> > > https://patchwork.freedesktop.org/series/60847/
> > >
> > > Hope this explanation helps?
> >
> > It doesn't.
> >
> > The clock tree is this one:
> >
> > PLL(s) -> TCON module clock -> TCON dotclock.
> >
> > The links I mentioned above show that the clock set to lcd_rate is the
> > TCON module clocks (and it should be the one taking the bpp and lanes
> > into account), while the TCON dotclock uses a fixed divider of 4.
>
> Sorry, I can argue much other-than giving some code snips, according to [1]
>
> 00) Line 785, 786 with dclk_rate 148000000
>
> lcd_rate = dclk_rate * clk_info.dsi_div;
> pll_rate = lcd_rate * clk_info.lcd_div;
>
> Since dsi_div is 6 (bpp/lanes), lcd_div 1
>
> lcd_rate = 888000000, pll_rate = 888000000
>
> 01)  Line 801, 804 are final rates computed as per clock driver (say
> ccu_nkm in mainline)
>
> lcd_rate_set=891000000
>
> As per your comments if it would be 4 then the desired numbers are
> would be 592000000 not 888000000.
>
> This is what I'm trying to say in all mails, and same as verified with
> 2-lanes devices as well where the dsi_div is 12 so the final rate is
> 290MHz * 12

In the code you sent, you're forcing a divider on the internal TCON
clock, while that one is fixed in the BSP.

There's indeed the bpp / lanes divider, but it's used in the *parent*
clock of the one you're changing.

And the dsi0_clk clock you pointed out in the code snippet is yet
another clock, the MIPI DSI module clock.

The analysis you have is probably correct, you're just not
implementing it properly in your patch.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--npvcnqi5yg4bofaa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQOuBgAKCRDj7w1vZxhR
xVScAPwJAh0zbjS2D2GVNKLA/jet+pw0LYampil65HFHY37fKgEAj5hO1cJdHIPM
IjOKl6B/qRBrtcW9BEpz5/abyaOyogE=
=uMQI
-----END PGP SIGNATURE-----

--npvcnqi5yg4bofaa--


--===============4152218842366422490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4152218842366422490==--

