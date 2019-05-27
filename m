Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA4A2B1AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C7dURpzbLuj47t7fRjHVC9MnH8THqN34YxfYUX8RVYI=; b=m1xgOHg5RVLHlfbbULmn0BYQY
	XvDWR8BPDVdsxGQef4Ftu5HDlCE+52tfR4z1M71R6H4Rqfgc8/XHu74/n56IfKP59Obs+hdbzC4mw
	Khb/prM+s3/05Fdlu5I1Zb9OFeihLgHOJnErCAV1d/I9SG50N7KSSSs2c79cSirYXSuS7A+ddmb7K
	BV0Ns4r39fbhnJD7Wom9QohRx6udTy0PAb3MjLbeGgVHGtDUDg/vSVqKI4Xftu81DoEWRGfLY9uUc
	061roiACP8XYHZ9qf0sGkJUGP83uRQCBtawvnFKxyeWBVlsl3OIyDo6LXs0mwr3gZkx74xv+IUG1y
	SvZomm8TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCPi-0003Sr-IM; Mon, 27 May 2019 09:59:30 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCPO-0003G6-Q8
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 09:59:19 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id AE932200014;
 Mon, 27 May 2019 09:59:07 +0000 (UTC)
Date: Mon, 27 May 2019 11:59:07 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 02/10] media: rc: sunxi: Add A31 compatible
Message-ID: <20190527095907.s2ubq3xos5hqef5p@flea>
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190526222536.10917-3-peron.clem@gmail.com>
 <20190527074700.rvhqua44ixudt52z@flea>
 <CAJiuCcfknVV5V4sMrfizz_K92BeTQsRYekmQQpWFP_-jhPPaQA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcfknVV5V4sMrfizz_K92BeTQsRYekmQQpWFP_-jhPPaQA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_025911_456046_CFAC1FE9 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2896106887572924920=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2896106887572924920==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m4jzlbt2jcbegnyb"
Content-Disposition: inline


--m4jzlbt2jcbegnyb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2019 at 10:20:05AM +0200, Cl=E9ment P=E9ron wrote:
> Hi Maxime,
>
> On Mon, 27 May 2019 at 09:47, Maxime Ripard <maxime.ripard@bootlin.com> w=
rote:
> >
> > Hi,
> >
> > On Mon, May 27, 2019 at 12:25:28AM +0200, Cl=E9ment P=E9ron wrote:
> > > Allwiner A31 has a different memory mapping so add the compatible
> > > we will need it later.
> > >
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > ---
> > >  drivers/media/rc/sunxi-cir.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/media/rc/sunxi-cir.c b/drivers/media/rc/sunxi-ci=
r.c
> > > index 307e44714ea0..29ac33b68596 100644
> > > --- a/drivers/media/rc/sunxi-cir.c
> > > +++ b/drivers/media/rc/sunxi-cir.c
> > > @@ -319,6 +319,7 @@ static int sunxi_ir_remove(struct platform_device=
 *pdev)
> > >  static const struct of_device_id sunxi_ir_match[] =3D {
> > >       { .compatible =3D "allwinner,sun4i-a10-ir", },
> > >       { .compatible =3D "allwinner,sun5i-a13-ir", },
> > > +     { .compatible =3D "allwinner,sun6i-a31-ir", },
> >
> > We should also move from reset_get_optional to the non optional
> > variant for the A31, and ignore it otherwise.
>
> Should this be done in this series ?

Yep, please

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--m4jzlbt2jcbegnyb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOu06wAKCRDj7w1vZxhR
xT6eAP9HYOS4/YL7nDIyH8X1cRrNbqpJMWDjdFnOep5zfx8jjwD/Qcw/3E8rl/S+
gHsm5kr92Rx4StTFdWA00FbyFkAjMQU=
=xrzq
-----END PGP SIGNATURE-----

--m4jzlbt2jcbegnyb--


--===============2896106887572924920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2896106887572924920==--

