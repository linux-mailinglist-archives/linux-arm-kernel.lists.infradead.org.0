Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096055E32B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 13:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XfSOSgQ/JaiUwHvUmBetfOzcFTB6+PMyMh+1Swn8P4w=; b=r3m7ZtoqC/V1w7r+9Nnb/YuXB
	p3QeckBP6cB6bYyW0P3WkbsXk+OcEn+gq9Da/01w2t3sb1M4PsK+tPS1kpy52q+mgcWTeR3kYUGUG
	Z3ch1wGY40xhpQf3sH+WZumM6xSmq0ML/f5LUYUE6GveRhgfHuW65hSh1fmHEbtA5WoVp0m8+NX77
	WSGut7uqHRofhjb4jYsO38BvIUF1m/to7RWKsHjifq3w+pMERAH1kYQbY9XDZ71zoUw/6iqyDpW0p
	+Iu1lWFjMglXb84L1vmvkPrroC+G8+rLjOyQqnP/anbp+9XDftx8Y1z5IJP2dzTMm9Xk317xudjnn
	eP/LiD7Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hidnY-0004Fi-AQ; Wed, 03 Jul 2019 11:51:40 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hidnJ-0004Es-RS
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 11:51:27 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id B5131E000D;
 Wed,  3 Jul 2019 11:51:12 +0000 (UTC)
Date: Wed, 3 Jul 2019 13:51:12 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 04/11] drm/sun4i: tcon: Compute
 DCLK dividers based on format, lanes
Message-ID: <20190703115112.xuiajfbu22w6frri@flea>
References: <20190604143016.fcx3ezmga244xakp@flea>
 <CAMty3ZAAK4RoE6g_LAZ-Q38On_1s_TTOz65YG7PVd88mwp-+4Q@mail.gmail.com>
 <20190613131626.7zbwvrvd4e7eafrc@flea>
 <CAMty3ZBDkMJkZm8FudNB1wQ+L-q3XVKa3zR2M0wZ5Uncdy_Ayg@mail.gmail.com>
 <20190624130442.ww4l3zctykr4i2e2@flea>
 <CAMty3ZB+eZUh5mr-LMZuEd_wrwLCN0mbf7arcRQHj8=uUNNq=Q@mail.gmail.com>
 <20190625143747.3czd7sit4waz75b6@flea>
 <CAMty3ZCh+C9+zgcL633tTw6aPW_WOLnYN7FzJHX+3zu8=8Unpg@mail.gmail.com>
 <20190702152908.fwwf7smt7nh2lxo2@flea>
 <CAMty3ZCBK__VcdNh6xJESjsX7nGrBHxLY3fOWW=5TxOVrwyVXw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZCBK__VcdNh6xJESjsX7nGrBHxLY3fOWW=5TxOVrwyVXw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_045126_200016_2FE1E298 
X-CRM114-Status: GOOD (  25.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Bhushan Shah <bshah@mykolab.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?utf-8?B?5Z2a5a6a5YmN6KGM?= <powerpan@qq.com>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7187295303463216646=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7187295303463216646==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bpghw5mnrhdlcmcl"
Content-Disposition: inline


--bpghw5mnrhdlcmcl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 02, 2019 at 09:10:26PM +0530, Jagan Teki wrote:
> On Tue, Jul 2, 2019 at 8:59 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > On Tue, Jul 02, 2019 at 12:30:14AM +0530, Jagan Teki wrote:
> > > On Tue, Jun 25, 2019 at 8:07 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > > > > BSP has tcon_div and dsi_div. dsi_div is dynamic which depends on
> > > > > > > > > > > bpp/lanes and it indeed depends on PLL computation (not tcon_div),
> > > > > > > > > > > anyway I have explained again on this initial link you mentioned.
> > > > > > > > > > > Please have a look and get back.
> > > > > > > > > >
> > > > > > > > > > I'll have a look, thanks.
> > > > > > > > > >
> > > > > > > > > > I've given your patches a try on my setup though, and this patch
> > > > > > > > > > breaks it with vblank timeouts and some horizontal lines that looks
> > > > > > > > > > like what should be displayed, but blinking and on the right of the
> > > > > > > > > > display. The previous ones are fine though.
> > > > > > > > >
> > > > > > > > > Would you please send me the link of panel driver.
> > > > > > > >
> > > > > > > > It's drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
> > > > > > >
> > > > > > > Look like this panel work even w/o any vendor sequence. it's similar
> > > > > > > to the 4-lane panel I have with RGB888, so the dclk div is 6, is it
> > > > > > > working with this divider?
> > > > > >
> > > > > > It works with 4, it doesn't work with 6.
> > > > >
> > > > > Can be the pixel clock with associated timings can make this diff.
> > > > > Would you send me the pixel clock, pll_rate and timings this panel
> > > > > used it from BSP?
> > > >
> > > > This board never had an Allwinner BSP
> > >
> > > Running on BSP would help to understand some clue, anyway would you
> > > send me the the value PLL_MIPI register (devme 0x1c20040) on this
> > > board. I'm trying to understand how it value in your case.
> >
> > I'm sorry, but I'm not going to port a whole BSP on that board,
> > especially for something I haven't been convinced it's the right fix.
>
> Look like a dead lock here, this change has a conclusive evidence from
> BSP (which is AW datasheet or open code to outside world) and it is
> working with A33, A64 and R40 which was tested in 4 different panels
> and I don't understand the reason for not going with this (atleast
> check with respect to BSP).

Because that would take a month or so?

> Please suggest, what I can do further, your suggestion is very
> helpful here.

I already did, and you ignored it. Several times.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--bpghw5mnrhdlcmcl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRyWsAAKCRDj7w1vZxhR
xY+8AQDVqXY1gBX1nBhbXBUKFuRj4fNoBVhZrkMSzJsi46STewEA5JERDl/ryVgy
QDX+5IiqiuBco+frHj0pXncsJbj8zgw=
=3y5M
-----END PGP SIGNATURE-----

--bpghw5mnrhdlcmcl--


--===============7187295303463216646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7187295303463216646==--

