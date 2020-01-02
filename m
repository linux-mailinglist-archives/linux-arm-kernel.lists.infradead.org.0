Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357BD12E844
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 16:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j+2UQVkYo1VBAteQd7yF32PhxuGYVhmFg+M9+0dd/mY=; b=IRuxBFeSa4uTp5M/UJejoLiO/
	gpZN3TxN2QqFIEy0rQroDD+xDqxrmrS1PmyFoGSC4/1Qx0XSVXPLuZ5KDAecWn8BlA5evKaR8kxwH
	5kI558IDX0sxoaQSw3dxV5VhTxI7nkeD2my/d7efF3FrljEcFKcjBf13eOn1n9Ytjn2oQGffnxoIX
	U39gF5uADvr4eGzByfELNJsr96/JwWWHbHcoScmPlhzEWa9j8pNO9XYl0Z5Buy2Nsn2fI8qmrZqrc
	EQCS7CK1q5p0GtnLbHeEDWNdpOl2mBixUZcf2sM0tnYyZSJuagQzpiT1L5SAU1aeY0zlqQJXyIK3T
	xTp3MNchw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2gs-0005Jl-82; Thu, 02 Jan 2020 15:47:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2gl-0005CJ-74
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 15:47:08 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35EAD2084D;
 Thu,  2 Jan 2020 15:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577980026;
 bh=T8OrAG+EbDBgprNjNPQUw5artBgkO7vYeVQWzwTXJoY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mHJuZfunqyFIUSm59iEc056NpuILkoQ6oFP5/CcZbxEABe9Tdw4bbJCYvITmXyHsw
 bJX8BeH0sfhUJJwGDpFLnr+tY+l5ystDQV6TB3pT2zp9BLkgh8POz+fsfDNMEfa4QM
 uSBNPxcMQXEIcuBWHU0bY5f7VafWFZrL+q5RUiaA=
Date: Thu, 2 Jan 2020 16:47:03 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
Message-ID: <20200102154703.3prgwcjyo36g5g5u@gilmour.lan>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
 <20191231130528.20669-3-jagan@amarulasolutions.com>
 <20200102105424.kmte7aooh2gkrcnu@gilmour.lan>
 <CAMty3ZA0e8eJZWvAh0x=KGAZVL3apdao3COvR6j3-ckv0cdvcg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZA0e8eJZWvAh0x=KGAZVL3apdao3COvR6j3-ckv0cdvcg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_074707_299464_4E610429 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Jernej Skrabec <jernej.skrabec@siol.net>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7122499440357493044=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7122499440357493044==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p6isxbjx5q73zube"
Content-Disposition: inline


--p6isxbjx5q73zube
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 02, 2020 at 09:10:31PM +0530, Jagan Teki wrote:
> On Thu, Jan 2, 2020 at 4:24 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Tue, Dec 31, 2019 at 06:35:21PM +0530, Jagan Teki wrote:
> > > TCON LCD0, LCD1 in allwinner R40, are used for managing
> > > LCD interfaces like RGB, LVDS and DSI.
> > >
> > > Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> > > tcon top.
> > >
> > > Add support for it, in tcon driver.
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > > Changes for v3:
> > > - none
> > >
> > >  drivers/gpu/drm/sun4i/sun4i_tcon.c | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > index fad72799b8df..69611d38c844 100644
> > > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > @@ -1470,6 +1470,13 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
> > >       .has_channel_1          = true,
> > >  };
> > >
> > > +static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
> > > +     .supports_lvds          = true,
> > > +     .has_channel_0          = true,
> > > +     /* TODO Need to support TCON output muxing via GPIO pins */
> > > +     .set_mux                = sun8i_r40_tcon_tv_set_mux,
> >
> > What is this muking about? And why is it a TODO?
>
> Muxing similar like how TCON TOP handle TV0, TV1 I have reused the
> same so-that it would configure de port selection via
> sun8i_tcon_top_de_config
>
> TCON output muxing have gpio with GPIOD and GPIOH bits, which select
> which of LCD or TV TCON outputs to the LCD function pins. I have
> marked these has TODO for further support as mentioned by Chen-Yu in
> v1[1].

It should be in the commit log.

What's the plan to support that when needed? And that means that the
LCD and TV outputs are mutually exclusive? We should at the very least
check that both aren't enabled at the same time.

Maxime

--p6isxbjx5q73zube
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg4QdwAKCRDj7w1vZxhR
xV8pAQDW62BjjYRqQWaS/MCrLYV0sOBGYFlSj2Kk1hrJLyStbAEAugmjPCknAQNc
AuBKfBeWbLwThyU6B5QE39I7erhWOwQ=
=omNK
-----END PGP SIGNATURE-----

--p6isxbjx5q73zube--


--===============7122499440357493044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7122499440357493044==--

