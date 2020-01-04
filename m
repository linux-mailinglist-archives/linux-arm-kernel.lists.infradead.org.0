Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ACA13029A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 15:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UGZg4mLcFPRbveTx4vJ9vfJLlJtSdCAVyi7SZi0CiMo=; b=EYeh/vnzxWmIk2iOQ8qu0x1z6
	33iyP5CPWdnCbfaQuzm4uc9Fx6Uq3Ll0KkM1duSQgEtwNfWDd2sNtFGzUO/tRSjqerMC0WStZanYL
	h/NkSW+7mTEupenwoEksI0AjXeVW6S89/f5oDC+Lwnm3KvRJ5HO7ChSDxHbosTzHbdGj9xmhhw80x
	yxuCpF3sg7fHCnxNzUldTcS7IPILR2Xuk7RDrkZW+/PwgnQ4tENNiGD+3r/kcW5yaA9kkG/S3jQjh
	Y+2I0g4qAMaQH1W06xlwqneg8jpORwzgvwpKiU5NOtM4Wdw08nqqaBLjjzL7GDldVBSOlZSslLoJj
	wyuqhSRPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inkHv-0006Kw-GV; Sat, 04 Jan 2020 14:20:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inkHp-0006KY-KS
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 14:20:19 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8872922B48;
 Sat,  4 Jan 2020 14:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578147617;
 bh=XsnHsHj53JhaNYFbo6CFsI3eeVhtmBQ3PCkV9VTU9Hs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cuQWj+ghg2SnHa/Geq6Fb5zpTiTpIcRhG/BSO2FF5F/yFYZSkTuL+Apmr7vFf6BDm
 rMmn4RFiatdKPi4Ag0vnuMCM1mM7EP6naB3Dv0Cpl3hnzhOUCQF2+VWph0ZvQ5mBEv
 I9e2N5Iet/IQV+5fTulEYEb94y0ai+vY/g7U0P2k=
Date: Sat, 4 Jan 2020 15:20:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
Message-ID: <20200104142014.o6znmngwjw7o46dl@gilmour.lan>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
 <20191231130528.20669-3-jagan@amarulasolutions.com>
 <20200102105424.kmte7aooh2gkrcnu@gilmour.lan>
 <CAMty3ZA0e8eJZWvAh0x=KGAZVL3apdao3COvR6j3-ckv0cdvcg@mail.gmail.com>
 <20200102154703.3prgwcjyo36g5g5u@gilmour.lan>
 <CAMty3ZB_6GyK=hhJU-8yAQiom1Uq25ojFbKaGrK1fmW8SnDV_A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZB_6GyK=hhJU-8yAQiom1Uq25ojFbKaGrK1fmW8SnDV_A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_062017_718297_9A078D1D 
X-CRM114-Status: GOOD (  26.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============8490166722894437737=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8490166722894437737==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zomtrfc34zk3phes"
Content-Disposition: inline


--zomtrfc34zk3phes
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jan 02, 2020 at 10:04:40PM +0530, Jagan Teki wrote:
> On Thu, Jan 2, 2020 at 9:17 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Thu, Jan 02, 2020 at 09:10:31PM +0530, Jagan Teki wrote:
> > > On Thu, Jan 2, 2020 at 4:24 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > >
> > > > On Tue, Dec 31, 2019 at 06:35:21PM +0530, Jagan Teki wrote:
> > > > > TCON LCD0, LCD1 in allwinner R40, are used for managing
> > > > > LCD interfaces like RGB, LVDS and DSI.
> > > > >
> > > > > Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> > > > > tcon top.
> > > > >
> > > > > Add support for it, in tcon driver.
> > > > >
> > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > ---
> > > > > Changes for v3:
> > > > > - none
> > > > >
> > > > >  drivers/gpu/drm/sun4i/sun4i_tcon.c | 8 ++++++++
> > > > >  1 file changed, 8 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > index fad72799b8df..69611d38c844 100644
> > > > > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > > @@ -1470,6 +1470,13 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
> > > > >       .has_channel_1          = true,
> > > > >  };
> > > > >
> > > > > +static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
> > > > > +     .supports_lvds          = true,
> > > > > +     .has_channel_0          = true,
> > > > > +     /* TODO Need to support TCON output muxing via GPIO pins */
> > > > > +     .set_mux                = sun8i_r40_tcon_tv_set_mux,
> > > >
> > > > What is this muking about? And why is it a TODO?
> > >
> > > Muxing similar like how TCON TOP handle TV0, TV1 I have reused the
> > > same so-that it would configure de port selection via
> > > sun8i_tcon_top_de_config
> > >
> > > TCON output muxing have gpio with GPIOD and GPIOH bits, which select
> > > which of LCD or TV TCON outputs to the LCD function pins. I have
> > > marked these has TODO for further support as mentioned by Chen-Yu in
> > > v1[1].
> >
> > It should be in the commit log.
>
> Make sense.
>
> > What's the plan to support that when needed? And that means that the
> > LCD and TV outputs are mutually exclusive? We should at the very least
> > check that both aren't enabled at the same time.
>
> Yes, LCD or TV within the outselect seems to be mutually exclusive.
> Like LCD0 or TV0 can output to GPIOD incase of TV0_OUTSEL and LCD1 or
> TV1 can output to GPIOH incase of TV1_OUTSEL. I think checking them
> before configuring TCON_TOP_PORT_SEL_REG would make sense, let me know
> if you have any suggestions?

Making sure in atomic_check that TV and LCD are not used at the same
time, and then in encoders mode_set / enable mux the pins to our
encoders would be my first guess.

Maxime

--zomtrfc34zk3phes
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhCfHgAKCRDj7w1vZxhR
xQw+AQC+UAAD2DuXR7nMr0l0A/3NybkZVTKykyr2HbVJa1arrgEAuPLgwEfGu61X
lS7E6DoCPkU97rnULAbmAOLQBZyMjws=
=D1UE
-----END PGP SIGNATURE-----

--zomtrfc34zk3phes--


--===============8490166722894437737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8490166722894437737==--

