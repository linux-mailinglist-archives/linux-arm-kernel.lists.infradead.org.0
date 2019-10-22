Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8BAE0400
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 14:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MUTOXYaH1Xlxwg5/rAijjcVk+gEGOEn7r2HULJkoEKs=; b=LEa9iKovYsKY2GBcoT4mij46c
	VwxJmA9OjH9nsjreWh5gSTVGVy2+ak1SkFbJHh44l2uXjxjCW9Eg8LMlJ5fKlhSTCaKoMYkKhFlkF
	AnmkVB/OcCN0nOt0uOkv4BabaNxkPJlmDmmeWKPPQGNzDq2S4xr33pdSZeHfB9a4zGe2jWRe49FJG
	h64yiqwABXvCozJPh77Ydt076XOe+8FgD4vTUmnzQA8slEGZ9elCeyCrQ5B3Z5yDDC89lKWBY1gGy
	VWv6vjRqcY6ePOXxkeezYlgOMeUfLZ/VmD9QaPSJCU5j3+b9dl6eubS46ZtkVHdWvt4AWKvbO9YAB
	BvwULBxCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMtSl-0008Ka-Fo; Tue, 22 Oct 2019 12:40:35 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMtSZ-0008JS-JK
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 12:40:25 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 1D666E0005;
 Tue, 22 Oct 2019 12:40:13 +0000 (UTC)
Date: Tue, 22 Oct 2019 14:40:12 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH v8 3/3] media: cedrus: Add HEVC/H.265 decoding support
Message-ID: <20191022124012.GD2651@aptenodytes>
References: <20190927143411.141526-1-paul.kocialkowski@bootlin.com>
 <20190927143411.141526-4-paul.kocialkowski@bootlin.com>
 <20191017095751.5a229051@coco.lan>
MIME-Version: 1.0
In-Reply-To: <20191017095751.5a229051@coco.lan>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_054023_912670_44AD2148 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.196 listed in wl.mailspike.net]
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tomasz Figa <tfiga@chromium.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5885614530206408582=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5885614530206408582==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="B4IIlcmfBL/1gGOG"
Content-Disposition: inline


--B4IIlcmfBL/1gGOG
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mauro and thanks for the review,

On Thu 17 Oct 19, 09:57, Mauro Carvalho Chehab wrote:
> Em Fri, 27 Sep 2019 16:34:11 +0200
> Paul Kocialkowski <paul.kocialkowski@bootlin.com> escreveu:
>=20
> > This introduces support for HEVC/H.265 to the Cedrus VPU driver, with
> > both uni-directional and bi-directional prediction modes supported.
> >=20
> > Field-coded (interlaced) pictures, custom quantization matrices and
> > 10-bit output are not supported at this point.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
>=20
> ...
>=20
> > +		unsigned int ctb_size_luma =3D
> > +			1 << log2_max_luma_coding_block_size;
>=20
> Shifts like this is a little scary. "1" constant is signed. So, if
> log2_max_luma_coding_block_size is 31, the above logic has undefined
> behavior. Different archs and C compilers may handle it on different
> ways.

I wasn't aware that it was the case, thanks for bringing this to light!
I'll make it 1UL then.

> > +#define VE_DEC_H265_LOW_ADDR_PRIMARY_CHROMA(a) \
> > +	(((a) << 24) & GENMASK(31, 24))
>=20
> Same applies here and on other similar macros. You need to enforce
> (a) to be unsigned, as otherwise the behavior is undefined.
>=20
> Btw, this is a recurrent pattern on this file. I would define a
> macro, e. g. something like:
>=20
> 	#define MASK_BITS_AND_SHIFT(v, high, low) \
> 		((UL(v) << low) & GENMASK(high, low))
>=20
> And use it for all similar patterns here.

Sounds good! I find that the reverse wording (SHIFT_AND_MASK_BITS) would be
a bit more explicit since the shift happens prior to the mask.

Also we probably need to have parenthesis around "low", right?

> The best would be to include such macro at linux/bits.h, although some
> upstream discussion is required.
>=20
> So, for now, let's add it at this header file, but work upstream
> to have it merged there.

Understood, I'll include it in that header for now and send a separate patch
for inclusion in linux/bits.h (apparently the preprocessor doesn't care abo=
ut
redefinitions so we can just remove the cedrus fashion once the common one =
is
in).

What do you think?

Cheers,

Paul

--B4IIlcmfBL/1gGOG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2u+KwACgkQ3cLmz3+f
v9Gz+wf/Zm7r1AZpv5lPzfcsaQXWOZk4HXntSACtkvGv3E/mgOtN8S/SrT59MQ6V
MPfJ2aBH5JhDiv6NIW1vFwhvx8gJ8P8Dshl2I8I/qzAzoqLGjBQe3Hod/tpq0ZFe
tqiIhujaADacV9qCeOl4aBWfcVDdIznZZ8RilXQT/Bl98912LWpEmy8rMmNEVxGe
JM+mnw7gDZfuRHDmAR/IXAMYcN1mF9m8t49liAvEWSesEUKTPuTkejZAffiUAY4o
FAvYoNMOrX9+l1j+tRgdDSO9Kg8XuF6rh0ATqaiOnu2sg+AcDPBXozHa8KuJX9dl
8tN1aQb0gn+lwL9XRnCNEvjHzYFveA==
=ev27
-----END PGP SIGNATURE-----

--B4IIlcmfBL/1gGOG--


--===============5885614530206408582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5885614530206408582==--

