Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF16AEF6E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 09:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CP0R4Zdu0XUIc/bbGSGiDCmFLkS5vymDO1zVw6fHTAg=; b=speKYTGAHAEr/V6mIDVLHtKKX
	qur+jNE3zepXgTsT5NOUCwvgzNWATSpY4iOO5nljUvxrWP1aY4pCDpoWhlFlY/ZFtWo8RqgXRLZ1V
	fpWK4QHDs5KKvwGYkmsxI0+AWEE49gOZQlv6DL9Jq1Mk1z9Eb1XeeZpY9FnjUCavinBIuMZXBSFuW
	i3blSXn8ruex5zCfjmMeldz5v5osKoyiHrlcAVzXHDa5SaM16sgvxZzb9hrexnKrSV6L/JiBP7/oU
	7+RSAskRQ9QIqMq0CZxBKOyO0PpzRV1tlOmUa7vCfAX8R05lb5BrKYbirQZ8Cyu02WbuK70YajIPL
	pWc46eF4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtvU-0007o3-Az; Tue, 05 Nov 2019 08:10:56 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtvM-0007nK-92
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 08:10:50 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 3745624000E;
 Tue,  5 Nov 2019 08:10:35 +0000 (UTC)
Date: Tue, 5 Nov 2019 09:10:34 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/3] media: cedrus: Properly signal size in mode register
Message-ID: <20191105081034.GC584930@aptenodytes>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
 <20191026074959.1073512-2-jernej.skrabec@siol.net>
 <20191104100228.GD502900@aptenodytes>
 <7309638.L6IRxaGt1L@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <7309638.L6IRxaGt1L@jernej-laptop>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_001048_590523_B4488977 
X-CRM114-Status: GOOD (  27.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5629972979281509548=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5629972979281509548==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Fig2xvG2VGoz8o/s"
Content-Disposition: inline


--Fig2xvG2VGoz8o/s
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 04 Nov 19, 17:33, Jernej =C5=A0krabec wrote:
> Dne ponedeljek, 04. november 2019 ob 11:02:28 CET je Paul Kocialkowski=20
> napisal(a):
> > Hi Jernej,
> >=20
> > On Sat 26 Oct 19, 09:49, Jernej Skrabec wrote:
> > > Mode register also holds information if video width is bigger than 20=
48
> > > and if it is equal to 4096.
> > >=20
> > > Rework cedrus_engine_enable() to properly signal this properties.
> >=20
> > Thanks for the patch, looks good to me!
> >=20
> > Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> >=20
> > One minor thing: maybe we should have a way to set the maximum dimensio=
ns
> > depending on the generation of the engine in use and the actual maximum
> > supported by the hardware.
> >=20
> > Maybe either as dedicated new fields in struct cedrus_variant or as
> > capability flags.
>=20
> I was thinking about first solution, but after going trough manuals, it w=
as=20
> unclear what are real limitations. For example, H3 manual states that it =
is=20
> capable of decoding H264 1080p@60Hz. However, I know for a fact that it i=
s=20
> also capable of decoding 4k videos, but probably not at 60 Hz. I don't ow=
n=20
> anything older that A83T, so I don't know what are capabilities of those =
SoCs.=20

So I guess in this case we should try and see. I could try to look into it =
at
some point in the future too if you're not particulary interested.

> Anyway, being slow is still ok for some tasks, like transcoding, so we ca=
n't=20
> limit decoding to 1080p just because it's slow. It is probably still fast=
er=20
> than doing it in SW. Not to mention that it's still ok for some videos, a=
 lot=20
> of them uses 24 fps.

I agree, it's best to expose the maximum supported resolution by the hardwa=
re,
even if it means running at a lower fps.

Do you know if we have a way to report some estimation of the maximum suppo=
rted
fps to userspace? It would be useful to let userspace decide whether it's a
better fit than software decoding.

Cheers,

Paul

> Best regards,
> Jernej
>=20
> >=20
> > Anyway that can be done later since we were already hardcoding this.
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > >=20
> > >  drivers/staging/media/sunxi/cedrus/cedrus_h264.c  | 2 +-
> > >  drivers/staging/media/sunxi/cedrus/cedrus_h265.c  | 2 +-
> > >  drivers/staging/media/sunxi/cedrus/cedrus_hw.c    | 9 +++++++--
> > >  drivers/staging/media/sunxi/cedrus/cedrus_hw.h    | 2 +-
> > >  drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c | 2 +-
> > >  drivers/staging/media/sunxi/cedrus/cedrus_regs.h  | 2 ++
> > >  6 files changed, 13 insertions(+), 6 deletions(-)
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > > 7487f6ab7576..d2c854ecdf15 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > @@ -485,7 +485,7 @@ static void cedrus_h264_setup(struct cedrus_ctx *=
ctx,
> > >=20
> > >  {
> > > =20
> > >  	struct cedrus_dev *dev =3D ctx->dev;
> > >=20
> > > -	cedrus_engine_enable(dev, CEDRUS_CODEC_H264);
> > > +	cedrus_engine_enable(ctx, CEDRUS_CODEC_H264);
> > >=20
> > >  	cedrus_write(dev, VE_H264_SDROT_CTRL, 0);
> > >  	cedrus_write(dev, VE_H264_EXTRA_BUFFER1,
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c index
> > > 9bc921866f70..6945dc74e1d7 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > > @@ -276,7 +276,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *=
ctx,
> > >=20
> > >  	}
> > >  =09
> > >  	/* Activate H265 engine. */
> > >=20
> > > -	cedrus_engine_enable(dev, CEDRUS_CODEC_H265);
> > > +	cedrus_engine_enable(ctx, CEDRUS_CODEC_H265);
> > >=20
> > >  	/* Source offset and length in bits. */
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c index
> > > 570a9165dd5d..3acfa21bc124 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > > @@ -30,7 +30,7 @@
> > >=20
> > >  #include "cedrus_hw.h"
> > >  #include "cedrus_regs.h"
> > >=20
> > > -int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec c=
odec)
> > > +int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec c=
odec)
> > >=20
> > >  {
> > > =20
> > >  	u32 reg =3D 0;
> > >=20
> > > @@ -58,7 +58,12 @@ int cedrus_engine_enable(struct cedrus_dev *dev, e=
num
> > > cedrus_codec codec)>=20
> > >  		return -EINVAL;
> > >  =09
> > >  	}
> > >=20
> > > -	cedrus_write(dev, VE_MODE, reg);
> > > +	if (ctx->src_fmt.width =3D=3D 4096)
> > > +		reg |=3D VE_MODE_PIC_WIDTH_IS_4096;
> > > +	if (ctx->src_fmt.width > 2048)
> > > +		reg |=3D VE_MODE_PIC_WIDTH_MORE_2048;
> > > +
> > > +	cedrus_write(ctx->dev, VE_MODE, reg);
> > >=20
> > >  	return 0;
> > > =20
> > >  }
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h index
> > > 27d0882397aa..604ff932fbf5 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> > > @@ -16,7 +16,7 @@
> > >=20
> > >  #ifndef _CEDRUS_HW_H_
> > >  #define _CEDRUS_HW_H_
> > >=20
> > > -int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec
> > > codec);
> > > +int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec
> > > codec);
> > >=20
> > >  void cedrus_engine_disable(struct cedrus_dev *dev);
> > > =20
> > >  void cedrus_dst_format_set(struct cedrus_dev *dev,
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c index
> > > 13c34927bad5..8bcd6b8f9e2d 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> > > @@ -96,7 +96,7 @@ static void cedrus_mpeg2_setup(struct cedrus_ctx *c=
tx,
> > > struct cedrus_run *run)>=20
> > >  	quantization =3D run->mpeg2.quantization;
> > >  =09
> > >  	/* Activate MPEG engine. */
> > >=20
> > > -	cedrus_engine_enable(dev, CEDRUS_CODEC_MPEG2);
> > > +	cedrus_engine_enable(ctx, CEDRUS_CODEC_MPEG2);
> > >=20
> > >  	/* Set intra quantization matrix. */
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > > 4275a307d282..ace3d49fcd82 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > @@ -35,6 +35,8 @@
> > >=20
> > >  #define VE_MODE					0x00
> > >=20
> > > +#define VE_MODE_PIC_WIDTH_IS_4096		BIT(22)
> > > +#define VE_MODE_PIC_WIDTH_MORE_2048		BIT(21)
> > >=20
> > >  #define VE_MODE_REC_WR_MODE_2MB			(0x01 << 20)
> > >  #define VE_MODE_REC_WR_MODE_1MB			(0x00 << 20)
> > >  #define VE_MODE_DDR_MODE_BW_128			(0x03 << 16)
>=20
>=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--Fig2xvG2VGoz8o/s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl3BLnoACgkQ3cLmz3+f
v9EjhwgAgeGyEQpAO6eVGrr8/1wd8Zn4Clb1Bmee41zx2U1LqhhWf0nr2ZSOR6/T
qXztV6Y6ZZ5PcvRRiHXT7mVVzxpareDEuQvuyI1q53W2CBAmlXdLEp4JNOKjUDJ6
iGPh8zvQDqaza6/88oK35uSSNreHY6RUFP0MIBT3nHsMFHKndpBgYo3kGjU46LKz
xr3PV4NX9+8/+3m5Ol6mY5w+YTl0xJ/z3rbIXp6E0HFFFCL+pqdShu2osjHboPF1
qTLMUK8zdHG3UYGdanhHS5jMpkZS4Qab06JYsuGKiJ/4WU4PgvAO9CEuIM0nslI1
W6+I3tmt6J4p13N/VFoTJ+10EAooUA==
=RajT
-----END PGP SIGNATURE-----

--Fig2xvG2VGoz8o/s--


--===============5629972979281509548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5629972979281509548==--

