Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A25CB12D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 23:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gMQeUhJ2ZLZmlXJD7W1Ll41hY1RPOdceT3vwhz3Xv18=; b=nvQr4AIPh4SiUZ9fxyPiC6DXt
	51cknnhK0gCWoY0ydKJ3vapzWxEgP5HBWdk2gFcGJL1cNQdBk8lXToytiYVKfK1VFdB4hBmZ9F5Dw
	A45BDdtciMMrpkyB+fBsjlD45HIVD4r8fPLhjNj5037ugG6sAUdvLTPORSZnGJK2dkK8SHfnkg52H
	7+9PdRXMWSMvLAcLmUxkk9vnlTcLT07EeW+MWZQ54jFP3Q4mDByFfVSlCHp/c1yZLu/9BgfcstrsS
	JuiOK3fl1xsDJwpIjahPq+6z+svz4cNthTB7y+3qwPFE/dD2x8W5Zc2rpOvToPWXR/NxP2cc9vlQO
	66fRT7WjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG8iA-0006S5-7B; Thu, 03 Oct 2019 21:32:34 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG8i0-0006RU-3A
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 21:32:26 +0000
X-Originating-IP: 132.205.230.8
Received: from aptenodytes (unknown [132.205.230.8])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3AAE260004;
 Thu,  3 Oct 2019 21:32:20 +0000 (UTC)
Date: Thu, 3 Oct 2019 17:32:18 -0400
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index
 count
Message-ID: <20191003213218.GE3927@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <3413755.LxPTGpI9pz@jernej-laptop>
 <20191003205857.GA3927@aptenodytes>
 <1700094.IKIOnZr010@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <1700094.IKIOnZr010@jernej-laptop>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_143224_442212_411FE0E0 
X-CRM114-Status: GOOD (  40.73  )
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
Content-Type: multipart/mixed; boundary="===============5169953925679524661=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5169953925679524661==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PGNNI9BzQDUtgA2J"
Content-Disposition: inline


--PGNNI9BzQDUtgA2J
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 03 Oct 19, 23:19, Jernej =C5=A0krabec wrote:
> Dne =C4=8Detrtek, 03. oktober 2019 ob 22:58:57 CEST je Paul Kocialkowski=
=20
> napisal(a):
> > Hi,
> >=20
> > On Thu 03 Oct 19, 22:44, Jernej =C5=A0krabec wrote:
> > > Dne =C4=8Detrtek, 03. oktober 2019 ob 22:28:46 CEST je Paul Kocialkow=
ski
> > >=20
> > > napisal(a):
> > > > Hi,
> > > >=20
> > > > On Thu 03 Oct 19, 07:16, Jernej =C5=A0krabec wrote:
> > > > > Dne =C4=8Detrtek, 03. oktober 2019 ob 00:06:50 CEST je Paul Kocia=
lkowski
> > > > >=20
> > > > > napisal(a):
> > > > > > Hi,
> > > > > >=20
> > > > > > On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> > > > > > > Reference index count in VE_H264_PPS should come from PPS con=
trol.
> > > > > > > However, this is not really important, because reference index
> > > > > > > count
> > > > > > > is
> > > > > > > in our case always overridden by that from slice header.
> > > > > >=20
> > > > > > Thanks for the fixup!
> > > > > >=20
> > > > > > Our libva userspace and v4l2-request testing tool currently don=
't
> > > > > > provide
> > > > > > this, but I have a pending merge request adding it for the hant=
ro so
> > > > > > it's
> > > > > > good to go.
> > > > >=20
> > > > > Actually, I think this is just cosmetic and it would work even if=
 it
> > > > > would
> > > > > be always 0. We always override this number in SHS2 register with
> > > > > VE_H264_SHS2_NUM_REF_IDX_ACTIVE_OVRD flag and recently there was a
> > > > > patch
> > > > > merged to clarify that value in slice parameters should be the one
> > > > > that's
> > > > > set on default value if override flag is not set in bitstream:
> > > > > https://git.linuxtv.org/media_tree.git/commit/?
> > > > > id=3D187ef7c5c78153acdce8c8714e5918b1018c710b
> > > > >=20
> > > > > Well, we could always compare default and value in slice paramete=
rs,
> > > > > but I
> > > > > really don't see the benefit of doing that extra work.
> > > >=20
> > > > Thanks for the detailed explanation! So I just realized that for HE=
VC, I
> > > > didn't even include the default value in PPS and only went for the
> > > > per-slice value. The HEVC hardware block apparently only needs the
> > > > fields
> > > > once at slice level, and by looking at the spec, only one of the tw=
o set
> > > > of
> > > > fields will be used.
> > > >=20
> > > > So perhaps we could do the same for H.264 and only have the set of
> > > > fields
> > > > once in the slice params, so that both codecs are consistent. Users=
pace
> > > > can
> > > > just check the flag to know whether it should put the PPS default or
> > > > slice-specific value in the slice-specific control.
> > > >=20
> > > > What do you think?
> > >=20
> > > I think that there would be less confusion if only value in slice par=
ams
> > > would exists. But since Philipp rather made clarification in
> > > documentation, maybe he sees benefit having both values?
> >=20
> > Actually I just caught up with the discussion from thread:
> > media: uapi: h264: Add num_ref_idx_active_override_flag
> >=20
> > which explains that we need to pass the default fields for hardware that
> > parses the slice header itself and we need the non-default fields and f=
lag
> > for other cases.
> >=20
> > To cover the case of hardware that does slice header parsing, I guess it
> > would also work to use the slice-specific values in place of the pps
> > default values in the hardware register for that. But it feels quite
> > confusing and a lot less straightforward than having all the fields and=
 the
> > override flag exposed.
>=20
> I wasn't aware of that patch and related discussion. Ok, so it make sense=
 to=20
> have both values. However, does it make sense to use default values in Ce=
drus?

Well, since the hardware exposes fields for both and the flag for H264, let=
's do
the straightforward thing and just pass the values through, even though we =
can
easily predict which will get used in the end.

For HEVC, we'll just have to check for the flag and put the right set of va=
lues
in the slice-specific register.

> > So I think I should fix HEVC support accordingly, just in case the same
> > situation arises for HEVC.
>=20
> Seems reasonable. Does that mean there will be another revision of HEVC=
=20
> patches?  If so, I think slice_segment_addr should also be included in sl=
ice=20
> params, so multi-slice frames can be supported at later time.

I would be in favor of fixing this as a follow-up patch instead, so that we
don't delay getting the series in. As you said, more work will be needed an=
yway
for multi-slice support, so I don't see the point of holding the series for=
 this
particular improvment.

Cheers,

Paul

> Best regards,
> Jernej=20
>=20
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> > > Best regards,
> > > Jernej
> > >=20
> > > > Cheers,
> > > >=20
> > > > Paul
> > > >=20
> > > > > Best regards,
> > > > > Jernej
> > > > >=20
> > > > > > Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > >=20
> > > > > > Cheers,
> > > > > >=20
> > > > > > Paul
> > > > > >=20
> > > > > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > > > > ---
> > > > > > >=20
> > > > > > >  drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++------
> > > > > > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > > > > > >=20
> > > > > > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > > > > > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > > > > > > bd848146eada..4a0e69855c7f 100644
> > > > > > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > > > > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > > > > > @@ -364,12 +364,8 @@ static void cedrus_set_params(struct
> > > > > > > cedrus_ctx
> > > > > > > *ctx,
> > > > > > >=20
> > > > > > >  	// picture parameters
> > > > > > >  	reg =3D 0;
> > > > > > >=20
> > > > > > > -	/*
> > > > > > > -	 * FIXME: the kernel headers are allowing the default value=
 to
> > > > > > > -	 * be passed, but the libva doesn't give us that.
> > > > > > > -	 */
> > > > > > > -	reg |=3D (slice->num_ref_idx_l0_active_minus1 & 0x1f) << 10;
> > > > > > > -	reg |=3D (slice->num_ref_idx_l1_active_minus1 & 0x1f) << 5;
> > > > > > > +	reg |=3D (pps->num_ref_idx_l0_default_active_minus1 & 0x1f)=
 << 10;
> > > > > > > +	reg |=3D (pps->num_ref_idx_l1_default_active_minus1 & 0x1f)=
 << 5;
> > > > > > >=20
> > > > > > >  	reg |=3D (pps->weighted_bipred_idc & 0x3) << 2;
> > > > > > >  	if (pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE)
> > > > > > >  =09
> > > > > > >  		reg |=3D VE_H264_PPS_ENTROPY_CODING_MODE;
>=20
>=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--PGNNI9BzQDUtgA2J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2WaOIACgkQ3cLmz3+f
v9EA+wf/ekHmBtBvJhAORdriiY5xvorCVVe+x97wAdmtuicrv64I/52a//PGeOiX
DB3hlBjSls/SdNhoIFYMTbBay5hGl8ZFxsdHgyFfZ5QztP14XWJJMzTwIXDbCFCc
kWpU8tJopeAyrcW/o81oWyXaI+1DcyF/2mXjv7gjSZ4cbe1w+5jnE36/rsG7wr+L
V0zlBxjFfDnRLIpLH3NqNCJXHyrcsL6wc9coGPdBd5olAzXk0Y9cCW7zoJ+V8aFi
agpE8vHT4/FPinNdKGQ1vtfHiJ6pR8cHQ+skBoEmjvESCbOaIHGKiHmVnOW5AINR
Z7R/MDMbE3GjMMiYfltNPKDgU+aOgA==
=Uw7X
-----END PGP SIGNATURE-----

--PGNNI9BzQDUtgA2J--


--===============5169953925679524661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5169953925679524661==--

