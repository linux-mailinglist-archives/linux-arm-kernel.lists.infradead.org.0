Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DC7130C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MDXm/fiHMf7VdGQh6bJQ6XmMVMvLB2aq/Vsm0T0Z2qs=; b=OUEI5E3/a8m/Shnuw8C888t4S
	lg5mg9/NAEGflVnX4p9B56JrbnDC0LNQf0IpMxyo3xBgDNaupuqMdyeJDvp587gLtqilqCck+ZHP4
	uhXNbUtvsjRGe2DOyJPRxbm3ayYPzgpJd/bT9fmJEUTk8ucYaWhKMIZwhXvo7vcXWKIER3C62ZsDo
	TR4WbY1meikuboZdCUvpIH4zTiQa8OzHbBrpecPWDyb5ezzUHlpe0KPWpbEUSMVa4+tEibc/11TOH
	VlhdYK2EgeXrEk1nN5X6ivMG0K+wSCmWF+NY4genDZaY6W7ee/GVMbPHafxBXo7PYGzsx1ubgBoZp
	zFye7Re3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZaT-0004DE-27; Fri, 03 May 2019 14:54:57 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZaL-0004CB-1Z
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:54:50 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id C246D1BF20C;
 Fri,  3 May 2019 14:54:35 +0000 (UTC)
Date: Fri, 3 May 2019 16:54:35 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 2/5] ASoC: sun4i-spdif: Add support for H6 SoC
Message-ID: <20190503145435.jziomr3sqxp6jbpd@flea>
References: <20190419191730.9437-1-peron.clem@gmail.com>
 <20190419191730.9437-3-peron.clem@gmail.com>
 <20190502082526.c5zo4uzceqzizbxo@flea>
 <CAJiuCcdFUPBsXfKtDLt-p6Edx-7JrST9d0C=ofCU4CL8ZxwcsA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcdFUPBsXfKtDLt-p6Edx-7JrST9d0C=ofCU4CL8ZxwcsA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_075449_399898_4F9BF6D7 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3969856802440280084=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3969856802440280084==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f5z2x6ysmbssgmgl"
Content-Disposition: inline


--f5z2x6ysmbssgmgl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 02, 2019 at 11:39:24AM +0200, Cl=E9ment P=E9ron wrote:
> > > @@ -169,16 +181,25 @@ struct sun4i_spdif_dev {
> > >       struct snd_soc_dai_driver cpu_dai_drv;
> > >       struct regmap *regmap;
> > >       struct snd_dmaengine_dai_dma_data dma_params_tx;
> > > +     const struct sun4i_spdif_quirks *quirks;
> >
> > I guess this will generate a warning since the structure hasn't been
> > defined yet?
>
> It's a pointer to a structure so no warning from the compiler.

Damn, I was convinced just declaring a pointer to a structure would
result to a gcc warning. Nevermind then.

> > > @@ -405,22 +426,26 @@ static struct snd_soc_dai_driver sun4i_spdif_da=
i =3D {
> > >       .name =3D "spdif",
> > >  };
> > >
> > > -struct sun4i_spdif_quirks {
> > > -     unsigned int reg_dac_txdata;    /* TX FIFO offset for DMA confi=
g */
> > > -     bool has_reset;
> > > -};
> > > -
> > >  static const struct sun4i_spdif_quirks sun4i_a10_spdif_quirks =3D {
> > >       .reg_dac_txdata =3D SUN4I_SPDIF_TXFIFO,
> > > +     .reg_fctl_ftx   =3D SUN4I_SPDIF_FCTL_FTX,
> > >  };
> > >
> > >  static const struct sun4i_spdif_quirks sun6i_a31_spdif_quirks =3D {
> > >       .reg_dac_txdata =3D SUN4I_SPDIF_TXFIFO,
> > > +     .reg_fctl_ftx   =3D SUN4I_SPDIF_FCTL_FTX,
> > >       .has_reset      =3D true,
> > >  };
> > >
> > >  static const struct sun4i_spdif_quirks sun8i_h3_spdif_quirks =3D {
> > >       .reg_dac_txdata =3D SUN8I_SPDIF_TXFIFO,
> > > +     .reg_fctl_ftx   =3D SUN4I_SPDIF_FCTL_FTX,
> > > +     .has_reset      =3D true,
> > > +};
> > >
> > > +static const struct sun4i_spdif_quirks sun50i_h6_spdif_quirks =3D {
> > > +     .reg_dac_txdata =3D SUN8I_SPDIF_TXFIFO,
> > > +     .reg_fctl_ftx   =3D SUN50I_H6_SPDIF_FCTL_FTX,
> > >       .has_reset      =3D true,
> >
> > The reg_dac_txdata and reg_fctl_ftx changes here should also be part
> > of a separate patch.
>
> You mean the reg_fctl_ftx quirk and the H6 introduction should be split ?

Yep

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--f5z2x6ysmbssgmgl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMxWKwAKCRDj7w1vZxhR
xTheAQD9sE7A0WEHij5Wf1qBjNLpFuz3ZidjjR2KW3BxB9EWSgD/fmxUP0w8djKy
bpfpawxYsCpDiDgb1b2tfBSFbXO87wE=
=ry69
-----END PGP SIGNATURE-----

--f5z2x6ysmbssgmgl--


--===============3969856802440280084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3969856802440280084==--

