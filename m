Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AA2C9442
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 00:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wey5z6ZHoaWU9ytvTJrIcx9F/sfsBeK6M1rDTKTWPJw=; b=jhdRC+dk+HKtquw0g/9AZBB34
	I8MTHJotGyB1cvU46tX1FDuuqzk8R4jLJM/s27kkvOyu6sl7TgKvu8zbM6S8ytW3GQWTPZrBz9rdj
	PzGYv3LExeqHH1nmtLCoW4cWopb7Q4e41eGBJGQsFIR6qMvflHnsh5ALQ17TAAJIu/Yo2v0O+8jvx
	A+kYgFml8U4+k5kU4URZBT0bThtSLBvkxCiCVYeiraUVSZvzw+m0tOfz1zV81D89bMaeOtav5NlN2
	Zcj949VCaqWM0qmQrsj35SwA7QaRIjKLTAQ76NL0J3iZ5oVgxbqyFV1Kf5jSRUSmup1zPmMIBwzwI
	P9f02jR0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFn1w-0006VG-8y; Wed, 02 Oct 2019 22:23:32 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFn1p-0006U9-E2
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 22:23:27 +0000
X-Originating-IP: 132.205.230.6
Received: from aptenodytes (unknown [132.205.230.6])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 1D20E60002;
 Wed,  2 Oct 2019 22:23:09 +0000 (UTC)
Date: Wed, 2 Oct 2019 18:23:07 -0400
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 0/3] media: cedrus: improvements
Message-ID: <20191002222307.GD24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191002193553.1633467-1-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_152325_624260_F3483671 
X-CRM114-Status: GOOD (  13.11  )
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
Content-Type: multipart/mixed; boundary="===============9219540114795983309=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9219540114795983309==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k4f25fnPtRuIRUb3"
Content-Disposition: inline


--k4f25fnPtRuIRUb3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> This is continuation of https://lkml.org/lkml/2019/5/30/1459 with several
> patches removed (2 merged, others needs redesign) and one added.

Thanks for the continued effort on this, these fixes are greatly appreciated
(and more generally, all the work you are putting into cedrus)!

Although I've been out of the loop on cedrus, it is very nice to see
development happening. Keep up the good work!

Cheers,

Paul

> Patch 1 fixes h264 playback issue which happens in rare cases.
>=20
> Patch 2 sets PPS default reference index count in register from PPS
> control. Currently it was set to values from slice control.
>=20
> Patch 3 replaces direct accesses to capture queue from m2m contex with
> helpers which was designed exactly for that. It's also safer since
> helpers do some checks.
>=20
> Best regards,
> Jernej
>=20
> Jernej Skrabec (3):
>   media: cedrus: Fix decoding for some H264 videos
>   media: cedrus: Fix H264 default reference index count
>   media: cedrus: Use helpers to access capture queue
>=20
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  8 +++-
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 46 ++++++++++++++-----
>  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  3 ++
>  3 files changed, 44 insertions(+), 13 deletions(-)
>=20
> --=20
> 2.23.0
>=20

--k4f25fnPtRuIRUb3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2VI0sACgkQ3cLmz3+f
v9EcCQf/dp1ZJ98xtDjBSFeOTicLLmTSYPEL4psHHVW8+VSMna6ZSZtO4ClTTBGZ
tDrKjeCHhy0yri5j2/e+adLJP/qa0IMu0/5Nmoe7Tr6VN2DztUUjfGs50+l4ZcOF
M9Zyuy18MuRWDflAksGRfp49eiH8vPKWbY8svsunL3SDPF+WWtuIjpUBwArhk7vH
Xm5NG55KJdbb2rUd/DhGzgueb1eZQ3EVQe25wNL3RozTeZB03IrNSaRz+QqAVCm/
rAFWSYJn+RzrVKmGa1/LpT8UwzNJ6oXlpX8M6jHnN/OicIXEMzyXy1xQVgJCYMT8
9PbndGZKpiunBcFHh64bHoPk5Fn5gg==
=jxCu
-----END PGP SIGNATURE-----

--k4f25fnPtRuIRUb3--


--===============9219540114795983309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9219540114795983309==--

