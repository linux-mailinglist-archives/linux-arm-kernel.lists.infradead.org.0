Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070F579120
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KnpCgWK5qzHOW0hu08kwcbN4aloyJikFP0QEffopxCc=; b=FLnpYtu6QTTrgCkQoy4LR6TrM
	muurTpN3GBu1qnWBKOsSn3dOQpQM28BiskjqcrAeUb+PWPB8i7cnvnhh95GUh6jVW3WiFP1FKQXX6
	3q9+SiL4XXJwB21z4nc/HaLEhOobhxNWkK48LIsszvLB2P7I94pfqF3jI9F8mY8MXDbfRG9v8oZcE
	4aC9mQI1E/+5cSe7t2HVMrGDePCXRXee6gA2QUD4sN0fuoXNZmipRhaHAT28sZiz81gaV+3SV/6HG
	XLNPkK0L5DceZ35pvJhqSDatICLBILdcQvx93W2G46226X8RamHgPsMkKhmkPMDe9IORCXVBEcAC4
	7sREtRfjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8eY-0008LT-3C; Mon, 29 Jul 2019 16:37:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8eH-0008Jf-Sq
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:37:25 +0000
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net
 [88.168.111.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10133206A2;
 Mon, 29 Jul 2019 16:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564418240;
 bh=VKA8DIso9CdNJ8gOxAJ7MGKl1tbtr3ng9ZYI2lKQkaE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XHE1r3AAw6dpQSdpj+Gj50Cqp4CxCDPjTo4pyFJ+rAHvdh1j0Y8l/ineFW/+H+KFS
 3LEI6GdMNIHewUWnsaBja7LdXvUsNb8+DYqLcIJX/UYEt9To4C70JnCvtvxDQtESSJ
 KuQXm8q1R0zhoWkDoreCM2927q1TC08Om9PlUp1Y=
Date: Mon, 29 Jul 2019 18:37:15 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 2/6] pwm: sun4i: Add a quirk for reset line
Message-ID: <20190729163715.vtv7lkrywewomxga@flea.home>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-3-jernej.skrabec@siol.net>
 <20190729063630.rn325whatfnc3m7n@pengutronix.de>
 <CAGb2v65KOpivHQNkg+R2=D=ejCJYnPdVcyHJZW-GJCR8j0Yk0g@mail.gmail.com>
 <20190729071218.bukw7vxilqy523k3@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190729071218.bukw7vxilqy523k3@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093722_046525_C1CC41AE 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7448744141448180822=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7448744141448180822==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c27mc7zieuu4am73"
Content-Disposition: inline


--c27mc7zieuu4am73
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 29, 2019 at 09:12:18AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
>
> On Mon, Jul 29, 2019 at 02:43:23PM +0800, Chen-Yu Tsai wrote:
> > On Mon, Jul 29, 2019 at 2:36 PM Uwe Kleine-K=F6nig
> > <u.kleine-koenig@pengutronix.de> wrote:
> > > On Fri, Jul 26, 2019 at 08:40:41PM +0200, Jernej Skrabec wrote:
> > > > @@ -371,6 +374,14 @@ static int sun4i_pwm_probe(struct platform_dev=
ice *pdev)
> > > >       if (IS_ERR(pwm->clk))
> > > >               return PTR_ERR(pwm->clk);
> > > >
> > > > +     if (pwm->data->has_reset) {
> > > > +             pwm->rst =3D devm_reset_control_get(&pdev->dev, NULL);
> > > > +             if (IS_ERR(pwm->rst))
> > > > +                     return PTR_ERR(pwm->rst);
> > > > +
> > > > +             reset_control_deassert(pwm->rst);
> > > > +     }
> > > > +
> > >
> > > I wonder why there is a need to track if a given chip needs a reset
> > > line. I'd just use devm_reset_control_get_optional() and drop the
> > > .has_reset member in struct sun4i_pwm_data.
> >
> > Because it's not optional for this platform, i.e. it won't work if
> > the reset control (or clk, in the next patch) is somehow missing from
> > the device tree.
>
> If the device tree is wrong it is considered ok that the driver doesn't
> behave correctly. So this is not a problem you need (or should) care
> about.

To some extent that's true, but if we can make the life easier for
everyone by reporting an error and bailing out instead of silently
ignoring that, continuing to probe and just ending up with a
completely broken system for no apparent reason, then why not just do
that?

I mean, all it takes is three lines of code.

It's no different than just calling clk_get, and testing the return
code to see if it's there or not. I wouldn't call that check when you
depend on a clock "validating the DT". It's just making sure that all
the resources needed for you to operate properly are there, which is a
pretty common thing to do.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--c27mc7zieuu4am73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXT8guwAKCRDj7w1vZxhR
xUcMAP48/d4gHWLB2ieD8luRNO7UdNKhBxkKVaYQSUwwNhdNhgEA6GotfwgqiOLI
FehMWvNcDSv607KLMFEsu5CWk9sxRwQ=
=W5NU
-----END PGP SIGNATURE-----

--c27mc7zieuu4am73--


--===============7448744141448180822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7448744141448180822==--

