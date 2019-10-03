Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A45CB021
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0JkkRnLog2iWpMi9OJrSGrUihqYsdp4I7UmD9OKJlTk=; b=F+UXH8HjVYYjkQz3r9877cGjY
	wxB/sZ6u/XIVVURKM+8a7rMNQNho1nUEjiMVA7vRS5omxrX1pE7GPnLRrXc0IzRShlP/66BFRrtcr
	zLA4c/PHzJwlTUkOIQn+Xffev/hO4LvAlz1Uhf7PGsn5u3LlcFGGl3K8QEcQ87ogiE74lpq5vYIUS
	8/FtocnYN+ZEbMB+Uqnjk2SSgFoDKs25EPnFryCo+usIPjNjWZIVarjJzBfjPEfca0rqWSm0ph3wn
	Mie7oNax/SHRcXN2P42EeKD42L2Zcnyneb2QRd7yAeRR/sga74fdjsc/mrpIqtNiuCs6IN8IRsLy8
	50Bi6uWXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG7if-00054w-NL; Thu, 03 Oct 2019 20:29:01 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG7iX-00053q-5f
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:28:55 +0000
X-Originating-IP: 132.205.230.8
Received: from aptenodytes (unknown [132.205.230.8])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id B27CF60002;
 Thu,  3 Oct 2019 20:28:48 +0000 (UTC)
Date: Thu, 3 Oct 2019 16:28:46 -0400
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index
 count
Message-ID: <20191003202846.GA2800@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002193553.1633467-3-jernej.skrabec@siol.net>
 <20191002220650.GB24151@aptenodytes>
 <12199603.8LrTjBMqpV@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <12199603.8LrTjBMqpV@jernej-laptop>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_132853_512575_4A878393 
X-CRM114-Status: GOOD (  27.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============2274929765757642191=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2274929765757642191==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 03 Oct 19, 07:16, Jernej =C5=A0krabec wrote:
> Dne =C4=8Detrtek, 03. oktober 2019 ob 00:06:50 CEST je Paul Kocialkowski=
=20
> napisal(a):
> > Hi,
> >=20
> > On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> > > Reference index count in VE_H264_PPS should come from PPS control.
> > > However, this is not really important, because reference index count =
is
> > > in our case always overridden by that from slice header.
> >=20
> > Thanks for the fixup!
> >=20
> > Our libva userspace and v4l2-request testing tool currently don't provi=
de
> > this, but I have a pending merge request adding it for the hantro so it=
's
> > good to go.
>=20
> Actually, I think this is just cosmetic and it would work even if it woul=
d be=20
> always 0. We always override this number in SHS2 register with=20
> VE_H264_SHS2_NUM_REF_IDX_ACTIVE_OVRD flag and recently there was a patch =
merged=20
> to clarify that value in slice parameters should be the one that's set on=
=20
> default value if override flag is not set in bitstream:
> https://git.linuxtv.org/media_tree.git/commit/?
> id=3D187ef7c5c78153acdce8c8714e5918b1018c710b
>=20
> Well, we could always compare default and value in slice parameters, but =
I=20
> really don't see the benefit of doing that extra work.

Thanks for the detailed explanation! So I just realized that for HEVC, I di=
dn't
even include the default value in PPS and only went for the per-slice value.
The HEVC hardware block apparently only needs the fields once at slice leve=
l,
and by looking at the spec, only one of the two set of fields will be used.

So perhaps we could do the same for H.264 and only have the set of fields o=
nce
in the slice params, so that both codecs are consistent. Userspace can just
check the flag to know whether it should put the PPS default or slice-speci=
fic
value in the slice-specific control.

What do you think?

Cheers,

Paul

> Best regards,
> Jernej
>=20
> >=20
> > Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > >=20
> > >  drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++------
> > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > >=20
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > > bd848146eada..4a0e69855c7f 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > @@ -364,12 +364,8 @@ static void cedrus_set_params(struct cedrus_ctx =
*ctx,
> > >=20
> > >  	// picture parameters
> > >  	reg =3D 0;
> > >=20
> > > -	/*
> > > -	 * FIXME: the kernel headers are allowing the default value to
> > > -	 * be passed, but the libva doesn't give us that.
> > > -	 */
> > > -	reg |=3D (slice->num_ref_idx_l0_active_minus1 & 0x1f) << 10;
> > > -	reg |=3D (slice->num_ref_idx_l1_active_minus1 & 0x1f) << 5;
> > > +	reg |=3D (pps->num_ref_idx_l0_default_active_minus1 & 0x1f) << 10;
> > > +	reg |=3D (pps->num_ref_idx_l1_default_active_minus1 & 0x1f) << 5;
> > >=20
> > >  	reg |=3D (pps->weighted_bipred_idc & 0x3) << 2;
> > >  	if (pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE)
> > >  =09
> > >  		reg |=3D VE_H264_PPS_ENTROPY_CODING_MODE;
>=20
>=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2WWf4ACgkQ3cLmz3+f
v9EdGgf/VT34xqO0LDSfphL2ahWHU5kdeZkiDQm/3RCpNqS5SDxfraVvKapbgMgs
FvuwJe6N9EYE4nK8NoWN2BPRbqeCyn+BqoZtQ/XT6AsicMNDXhi02ZB6Rtl9/CrN
HeCSfdkzTgy2FsCPnLsrVdySepIEAjDDrPfOF+OJevR9WmqAomZlKEwi31Rh6u3e
eY38DD/htHJoD9ScCPJgink7ZeWkonAAgV0lNPYoiIEe0QbRdWeR3bEfYcPVnRPJ
w2a3+oQAn1hGxh/r2af2GK9aV3paiCdE7cd9EgDfzVwjsBBihBBGzvYvvTmRNBCx
3wASp3KYFcy4pWqlv6LrWyauwYzzbw==
=Z5eN
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--


--===============2274929765757642191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2274929765757642191==--

