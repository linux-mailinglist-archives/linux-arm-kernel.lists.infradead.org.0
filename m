Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AA1E05D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 16:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pqs0XcaFS5fl3+aiKedf+a7ErMSxfdVp/j9s1XaokkA=; b=jCq30xEvDilNbyCpULlMqED6P
	W8Q5uJO/aKe+29z9IUGs9Y/qm1Ckqm0L8dS3mzxSt7vXVSI2fGEeWj9kWfoXLPffW2C4OG9ctEBOI
	j68LytHYMWLKcDPGDEvQe7+JLvK9CbqutYOqHPeT53V8E4aBYax12l4/Mo5wLk+nziIZRCRjNkD0B
	Y8TE98GPhHi6DGioqv6gxn+PeDZZ6e4tgAd64jagcBQHxiq7+qIIBSFWieYjiDSGYY4v4hYaG5Jc+
	t32sT8Fodg3neuX+U+bXhjTItd7KEahuN81klsIotTf1Zm6nIabVQCuNusvv+WWmya+hNKPlLk0Bt
	cscKO0uLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMum4-0006KF-6c; Tue, 22 Oct 2019 14:04:36 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMujF-0005ui-48
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 14:02:29 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9477FE000A;
 Tue, 22 Oct 2019 14:01:29 +0000 (UTC)
Date: Tue, 22 Oct 2019 16:01:29 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v8 3/3] media: cedrus: Add HEVC/H.265 decoding support
Message-ID: <20191022140129.GA1926725@aptenodytes>
References: <20190927143411.141526-1-paul.kocialkowski@bootlin.com>
 <20190927143411.141526-4-paul.kocialkowski@bootlin.com>
 <20191017095751.5a229051@coco.lan>
 <20191022124012.GD2651@aptenodytes>
 <20191022131751.GE2651@aptenodytes>
 <62ddccd3-38c0-89c5-7f0c-35f24494c3f9@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <62ddccd3-38c0-89c5-7f0c-35f24494c3f9@xs4all.nl>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_070215_489175_ADB37A90 
X-CRM114-Status: GOOD (  26.28  )
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Tomasz Figa <tfiga@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-sunxi@googlegroups.com,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2813293828466297986=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2813293828466297986==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 22 Oct 19, 15:37, Hans Verkuil wrote:
> On 10/22/19 3:17 PM, Paul Kocialkowski wrote:
> > Hi again,
> >=20
> > On Tue 22 Oct 19, 14:40, Paul Kocialkowski wrote:
> >> Hi Mauro and thanks for the review,
> >>
> >> On Thu 17 Oct 19, 09:57, Mauro Carvalho Chehab wrote:
> >>> Em Fri, 27 Sep 2019 16:34:11 +0200
> >>> Paul Kocialkowski <paul.kocialkowski@bootlin.com> escreveu:
> >>>
> >>>> This introduces support for HEVC/H.265 to the Cedrus VPU driver, with
> >>>> both uni-directional and bi-directional prediction modes supported.
> >>>>
> >>>> Field-coded (interlaced) pictures, custom quantization matrices and
> >>>> 10-bit output are not supported at this point.
> >>>>
> >>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> >>>> ---
> >>>
> >>> ...
> >>>
> >>>> +		unsigned int ctb_size_luma =3D
> >>>> +			1 << log2_max_luma_coding_block_size;
> >>>
> >>> Shifts like this is a little scary. "1" constant is signed. So, if
> >>> log2_max_luma_coding_block_size is 31, the above logic has undefined
> >>> behavior. Different archs and C compilers may handle it on different
> >>> ways.
> >>
> >> I wasn't aware that it was the case, thanks for bringing this to light!
> >> I'll make it 1UL then.
> >>
> >>>> +#define VE_DEC_H265_LOW_ADDR_PRIMARY_CHROMA(a) \
> >>>> +	(((a) << 24) & GENMASK(31, 24))
> >>>
> >>> Same applies here and on other similar macros. You need to enforce
> >>> (a) to be unsigned, as otherwise the behavior is undefined.
> >>>
> >>> Btw, this is a recurrent pattern on this file. I would define a
> >>> macro, e. g. something like:
> >>>
> >>> 	#define MASK_BITS_AND_SHIFT(v, high, low) \
> >>> 		((UL(v) << low) & GENMASK(high, low))
> >>>
> >>> And use it for all similar patterns here.
> >>
> >> Sounds good! I find that the reverse wording (SHIFT_AND_MASK_BITS) wou=
ld be
> >> a bit more explicit since the shift happens prior to the mask.
> >=20
> > Apparently the UL(v) macro just appends UL to v in preprocessor, so it =
won't
> > work with anything else than direct integers.
> >=20
> > I'll replace it with a (unsigned long) cast, that seems to do the job.
>=20
> Shouldn't that be a (u32) cast? Since this is used with 32 bit registers?

This would work for cedrus, but I think that what Mauro had in mind was to
migrate this macro to linux/bits.h, where everthing else (including GENMASK)
is apparently defined in terms of unsigned long and not types with explicit
numbers of bits. So I find it more consistent to go with unsigned long.

In our case, 64-bit platforms that use cedrus would calculate the macro on
64 bits and use it in 32-bit variables. Since we're never masking beyond the
lower 32 bits, I don't see how things could go wrong and the situation looks
fairly similar to the use of GENMASK in similar conditions.

Does that sound right to you or am I missing something here?

Cheers,

Paul

> Regards,
>=20
> 	Hans
>=20
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> >> Also we probably need to have parenthesis around "low", right?
> >>
> >>> The best would be to include such macro at linux/bits.h, although some
> >>> upstream discussion is required.
> >>>
> >>> So, for now, let's add it at this header file, but work upstream
> >>> to have it merged there.
> >>
> >> Understood, I'll include it in that header for now and send a separate=
 patch
> >> for inclusion in linux/bits.h (apparently the preprocessor doesn't car=
e about
> >> redefinitions so we can just remove the cedrus fashion once the common=
 one is
> >> in).
> >>
> >> What do you think?
> >>
> >> Cheers,
> >>
> >> Paul
> >=20
> >=20
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--IS0zKkzwUGydFO0o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2vC7kACgkQ3cLmz3+f
v9FNWQf/VOFy2NcFFmeA6TWZfvyrkmu5obas+AFQpmgHiPdhg/5hxka22rig87Es
ZGJbCBBCOTKnxdGVp4TX+gNTWdHNuwcc3m61U50w6uNFaPnSHjraKEvt6A44rwoq
DyQA5JeBbyLpjKT6ceVhSl719jqnsNr3wel0zNo1rBLvyFRxZgvysWff3x3xAQQU
3+InsoB/T1C8tj1dMlS2okywVpeN8MfKcTX8Yfw3kubeULYM6gzoZ377Px6DMYmP
SpNlTYcYQIoIKni/pB8ji+BfisYqdcLBkVq37Y6vcTLWZmiF9bTfXylaTefEISaq
3Mss27y4ElhNhARIXlfxsz8Vn1Hrgw==
=VMbB
-----END PGP SIGNATURE-----

--IS0zKkzwUGydFO0o--


--===============2813293828466297986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2813293828466297986==--

