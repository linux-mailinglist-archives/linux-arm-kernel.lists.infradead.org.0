Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E61E0071
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 11:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jv0h8ZMZjUYD11grCS5YhXpI1Hgt33kmluVQikMWS7Q=; b=BQs0MjdTMwp6rGEBqtMAWpqYe
	7J2OaEbglIooeeUHkc7H0p476r9UG6xBlwXxzu4p2cVCIaRgCt+fIyS1bzZO/1ZOYwcSbY4HTU/aW
	ei6Zss1evO7TFxw7meEVvw7DylyDq+MJf1mzJ85Xa5YEJ4kirvy1D/H12pkHXgtUtYGeNlzV1f4mT
	RDxphcI1DPXVA+ocxHF20UGrtMgOmF1dqPy0Oq0BxB+vfQXB9lkSk1qJDszy/KqGXrRp32RBCBcSE
	Kq69Mxjij77SgbeTOzxNxSX8jKMEd5+YOmYrzXUe890+c48kzIPokFV9OriXkQVKdT7jDN8qyLq9Z
	uJXpAghgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqBr-0007hz-Ce; Tue, 22 Oct 2019 09:10:55 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqBg-0007h8-AF
 for linux-arm-kernel@bombadil.infradead.org; Tue, 22 Oct 2019 09:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kr5HejSeoqhV1a6kdULv6/TpXZeY9R0xX23Crihxt6Y=; b=U8iSb8PKOrAlsWMkRUQFGxinN
 6rLPUxkJuXhIrP3ISrggVY/2VYvp/J8drjjMrQTPUlFV9nMBZP+S2qj7gxkZHeClV9cCvnAsyMoJd
 t7Y8UG7P7VINW8L4actDHENeHe+9yUboUhkyrx12dxhREF9kfW5ROrC+4fpvSGlgELf3FrGjzzWkU
 tK+6wHAA8I04V9i94gLaG2kjw9Duk56Do4C2msE2wE5NWdJnb75l+WPDRBt/a+INUNlR6zGRZzim5
 OuNsZTJ2r2EpofFIHvZsP+KbWBYOgNYAgwyHGYMjorX3EyFNuC4grdUa0K9QXzOHe8qVpDzJ4t3Wk
 iqu53zYPw==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqBc-0001rd-Sd
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 09:10:42 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 0BF77240016;
 Tue, 22 Oct 2019 09:10:02 +0000 (UTC)
Date: Tue, 22 Oct 2019 11:10:02 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 1/3] media: cedrus: Fix decoding for some H264 videos
Message-ID: <20191022091002.GC2651@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002193553.1633467-2-jernej.skrabec@siol.net>
 <20191002215442.GA24151@aptenodytes>
 <1916783.jTTlJIDQL9@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <1916783.jTTlJIDQL9@jernej-laptop>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6265362071111728236=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6265362071111728236==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p4qYPpj5QlsIQJ0K"
Content-Disposition: inline


--p4qYPpj5QlsIQJ0K
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 15 Oct 19, 19:16, Jernej =C5=A0krabec wrote:
> Please understand that I was working on this on and off for almost half a=
 year=20
> and checked many times all register values. At one point I tried libvdpau-
> sunxi which has no problem with sample video.  Still, all relevant regist=
er=20
> values were the same. In a desperate attempt, I tried with HW header pars=
ing=20
> which magically solved the issue. After that, I reused values provided in=
=20
> controls and then finally I made minimal solution as suggested in this pa=
tch.=20

Okay thanks for the details.

I think I've delayed this for far too long already so I think we should get=
 it
in without further delay.

The patch apparently no longer applies on top of media/master, but feel free
to send out a rebased series with:

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Let's leave out 2/3 though, I think I will submit a series adding the flag
as indication for the per-slice value in the uAPI and use it in cedrus.

Cheers,

Paul

> >=20
> > I could try and have a look if you have an available sample for testing=
 the
> > erroneous case!
>=20
> Of course: http://jernej.libreelec.tv/videos/h264/test.mkv
>=20
> >=20
> > Another minor thing: do you have some idea of whether the udelay call a=
dds
> > significant delay in the process?
>=20
> I didn't notice any issue with it. Do you have any better idea? I just di=
dn't=20
> want to make empty loop and udelay is the shortest delay that is provided=
 by=20
> the kernel API.
>=20
> Best regards,
> Jernej
>=20
> >=20
> > Cheers and thanks for the patch!
> >=20
> > Paul
> >=20
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > >=20
> > >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 30 +++++++++++++++++=
--
> > >  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  3 ++
> > >  2 files changed, 30 insertions(+), 3 deletions(-)
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > > d6a782703c9b..bd848146eada 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > @@ -6,6 +6,7 @@
> > >=20
> > >   * Copyright (c) 2018 Bootlin
> > >   */
> > >=20
> > > +#include <linux/delay.h>
> > >=20
> > >  #include <linux/types.h>
> > > =20
> > >  #include <media/videobuf2-dma-contig.h>
> > >=20
> > > @@ -289,6 +290,28 @@ static void cedrus_write_pred_weight_table(struct
> > > cedrus_ctx *ctx,>=20
> > >  	}
> > > =20
> > >  }
> > >=20
> > > +/*
> > > + * It turns out that using VE_H264_VLD_OFFSET to skip bits is not
> > > reliable. In + * rare cases frame is not decoded correctly. However,
> > > setting offset to 0 and + * skipping appropriate amount of bits with
> > > flush bits trigger always works. + */
> > > +static void cedrus_skip_bits(struct cedrus_dev *dev, int num)
> > > +{
> > > +	int count =3D 0;
> > > +
> > > +	while (count < num) {
> > > +		int tmp =3D min(num - count, 32);
> > >=20
> > > +
> > > +		cedrus_write(dev, VE_H264_TRIGGER_TYPE,
> > > +			     VE_H264_TRIGGER_TYPE_FLUSH_BITS |
> > > +			     VE_H264_TRIGGER_TYPE_N_BITS(tmp));
> > > +		while (cedrus_read(dev, VE_H264_STATUS) &=20
> VE_H264_STATUS_VLD_BUSY)
> > > +			udelay(1);
> > > +
> > > +		count +=3D tmp;
> > > +	}
> > > +}
> > > +
> > >=20
> > >  static void cedrus_set_params(struct cedrus_ctx *ctx,
> > > =20
> > >  			      struct cedrus_run *run)
> > > =20
> > >  {
> > >=20
> > > @@ -299,12 +322,11 @@ static void cedrus_set_params(struct cedrus_ctx
> > > *ctx,
> > >=20
> > >  	struct vb2_buffer *src_buf =3D &run->src->vb2_buf;
> > >  	struct cedrus_dev *dev =3D ctx->dev;
> > >  	dma_addr_t src_buf_addr;
> > >=20
> > > -	u32 offset =3D slice->header_bit_size;
> > > -	u32 len =3D (slice->size * 8) - offset;
> > > +	u32 len =3D slice->size * 8;
> > >=20
> > >  	u32 reg;
> > >  =09
> > >  	cedrus_write(dev, VE_H264_VLD_LEN, len);
> > >=20
> > > -	cedrus_write(dev, VE_H264_VLD_OFFSET, offset);
> > > +	cedrus_write(dev, VE_H264_VLD_OFFSET, 0);
> > >=20
> > >  	src_buf_addr =3D vb2_dma_contig_plane_dma_addr(src_buf, 0);
> > >  	cedrus_write(dev, VE_H264_VLD_END,
> > >=20
> > > @@ -323,6 +345,8 @@ static void cedrus_set_params(struct cedrus_ctx *=
ctx,
> > >=20
> > >  	cedrus_write(dev, VE_H264_TRIGGER_TYPE,
> > >  =09
> > >  		     VE_H264_TRIGGER_TYPE_INIT_SWDEC);
> > >=20
> > > +	cedrus_skip_bits(dev, slice->header_bit_size);
> > > +
> > >=20
> > >  	if (((pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED) &&
> > >  =09
> > >  	     (slice->slice_type =3D=3D V4L2_H264_SLICE_TYPE_P ||
> > >  	    =20
> > >  	      slice->slice_type =3D=3D V4L2_H264_SLICE_TYPE_SP)) ||
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > > 3329f9aaf975..b52926a54025 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > @@ -538,13 +538,16 @@
> > >=20
> > >  					=20
> VE_H264_CTRL_SLICE_DECODE_INT)
> > > =20
> > >  #define VE_H264_TRIGGER_TYPE		0x224
> > >=20
> > > +#define VE_H264_TRIGGER_TYPE_N_BITS(x)		(((x) & 0x3f) << 8)
> > >=20
> > >  #define VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE	(8 << 0)
> > >  #define VE_H264_TRIGGER_TYPE_INIT_SWDEC		(7 << 0)
> > >=20
> > > +#define VE_H264_TRIGGER_TYPE_FLUSH_BITS		(3 << 0)
> > >=20
> > >  #define VE_H264_STATUS			0x228
> > >  #define VE_H264_STATUS_VLD_DATA_REQ_INT	=09
> VE_H264_CTRL_VLD_DATA_REQ_INT
> > >  #define VE_H264_STATUS_DECODE_ERR_INT	=09
> VE_H264_CTRL_DECODE_ERR_INT
> > >  #define VE_H264_STATUS_SLICE_DECODE_INT	=09
> VE_H264_CTRL_SLICE_DECODE_INT
> > >=20
> > > +#define VE_H264_STATUS_VLD_BUSY			BIT(8)
> > >=20
> > >  #define VE_H264_STATUS_INT_MASK		=09
> VE_H264_CTRL_INT_MASK
>=20
>=20
>=20
>=20

--p4qYPpj5QlsIQJ0K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2ux2oACgkQ3cLmz3+f
v9GxNggAoUPhMks1m1yhI9h7qrbOWuYWwl/SbtO4mnSw6R/3aI6fsdBfNqwnS9lI
kFIGM1gxkSOjPbgQ0b2U/h1EXCF1OwymUilB9PBVDB1UpaXsKFqDsYpWFVSX8XAC
BfLuPBNd0SHD+/eS8GMgjAsNbdoTk/cArdrPI6minSnan13GEzaQ43do9VU8rZL+
Ti24S9Jx8Nr/Y+8Xsk42FyDBElBQdb0MO11QRqIsJ43TJJ9GeWG528T9bWzmCZyV
Egh6MMu2T4FPWeQ7iTB4DctCGZR1RhxuvF9V45WHFBDmaExEx4Rq24ixXX4X/2pv
wfmqLhGApSVGcd3OMEmwpwj//gVE/g==
=PWnD
-----END PGP SIGNATURE-----

--p4qYPpj5QlsIQJ0K--


--===============6265362071111728236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6265362071111728236==--

