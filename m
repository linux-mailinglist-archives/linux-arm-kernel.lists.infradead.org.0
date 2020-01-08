Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BB3134541
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+VK1SGG+ds3vkajmG47N4cgghKUc/gP2SrIwlJaBkMA=; b=VtSixkzpN3snOrr8LhM/aJ3qh
	pnyOKw4PAr5A67hpltT3+tqJ2e79pkjVsO+7ibpRmSxXKzVzCPCRT5E7GLR+dfJ1TUXx9/T+KLF27
	cZIUdjYHu9L/46sgoj7c6PT1MJD5p6lqoNZNjMeN3To5YPNztUEBxfpxk+PFN9F1mt8oKAowiuLHd
	94VWU0k3j0BnKkOg8+YTqF2uV7NPYGdXAV4r1fFDfRuSSjQUngILi6JmF+BMn2l483pDH1qIflnYw
	N0mx4boZxVCQHduRT0PoI2NyUfE/0weq/iNNW4j3VCmtAQaQdS35HWT0G5LzT2v8WgAYkPluZLo/v
	U6zbpQEmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCZO-0007Xs-FO; Wed, 08 Jan 2020 14:44:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCZJ-0007Xk-43
 for linux-arm-kernel@bombadil.infradead.org; Wed, 08 Jan 2020 14:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ET1J3uK1Dewef1FxNFRUu0mrQemAkI6ZchfwqtpbXVA=; b=ixGcq98GC1AyyeHATz9m5Zywd
 BTMhvYhFO9fCF2W/Jv/5sesBgxr7MkkDiL7C1Ne/QBRYNhQmSxDba1kUOm5R6SjIfgcQlkDmhJ4Gv
 mw2eRlzW6MBVAF9Vz5umrAfmd1nNhILJ6SUXjI76h+RCE97/PC84DVrQcnfduBJ3bsDZdWPeVonbJ
 rKgTdd/HjTXwOiik4Th9Jm28kiKzxA+f0718sv/7DiKx+mYvGmIEw2A6Xl92yM8jSdnfdMFRBknD2
 ik0RZ8UGqdjOsWqhGjs3WOwT39fdPDILjfOoxtyfDom24l748Qsqi3AJtF+XbJohi19A6jLCJjwar
 uz8Fd9tQQ==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCZg-0005AM-BA
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 14:44:46 +0000
X-Originating-IP: 90.76.211.102
Received: from aptenodytes (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 03BCE6001B;
 Wed,  8 Jan 2020 14:43:36 +0000 (UTC)
Date: Wed, 8 Jan 2020 15:43:36 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 1/4] media: uapi: hevc: Add scaling matrix control
Message-ID: <20200108144336.GB229960@aptenodytes>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-2-jernej.skrabec@siol.net>
 <20200108151157.17cf9774@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200108151157.17cf9774@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_144444_413113_E9C4CA4E 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 hverkuil@xs4all.nl, wens@csie.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6151989336795784658=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6151989336795784658==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xgyAXRrhYN0wYx8y"
Content-Disposition: inline


--xgyAXRrhYN0wYx8y
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mauro,

On Wed 08 Jan 20, 15:11, Mauro Carvalho Chehab wrote:
> Em Fri, 13 Dec 2019 17:04:25 +0100
> Jernej Skrabec <jernej.skrabec@siol.net> escreveu:
>=20
> > HEVC has a scaling matrix concept. Add support for it.
>=20
> > +struct v4l2_ctrl_hevc_scaling_matrix {
> > +	__u8	scaling_list_4x4[6][16];
> > +	__u8	scaling_list_8x8[6][64];
> > +	__u8	scaling_list_16x16[6][64];
> > +	__u8	scaling_list_32x32[2][64];
> > +	__u8	scaling_list_dc_coef_16x16[6];
> > +	__u8	scaling_list_dc_coef_32x32[2];
> > +};
>=20
> I never looked at HEVC spec, but the above seems really weird.
>=20
> Please correct me if I am wrong, but each of the above matrixes
> is independent, and the driver will use just one of the above on
> any specific time (for a given video output node), right?

I am not too sure about what the specification really entails, but it is my
understanding that HEVC allows simultaneous block sizes between 4x4 and 32x=
32
to exist within the same coding tree and slice. That suggests that it makes
sense to have specific coefficients for each case.

Note that the hardware also has distinct registers for each scaling list.

Cheers,

Paul

> If so, why would userspace be forced to update lots of matrixes, if would
> likely use just one at a given time?
>=20
> IMO, the proper way would be, instead, to use an uAPI like:
>=20
> /*
>  * Actually, as this is uAPI, we will use a fixed size integer type, like
>  *  unsigned int
>  */
> enum hevc_scaling_matrix_type {
> 	HEVC_SCALING_MATRIX_4x4,
> 	HEVC_SCALING_MATRIX_8x8,
> ...
> 	HEVC_SCALING_MATRIX_DC_COEF_32x32,
> };
>=20
> struct v4l2_ctrl_hevc_scaling_matrix {
> 	__u32	scaling_type 		/* as defined by enum hevc_scaling_matrix_type */
>=20
> 	union {
> 		__u8	scaling_list_4x4[6][16];
> 		__u8	scaling_list_8x8[6][64];
> 		__u8	scaling_list_16x16[6][64];
> 		__u8	scaling_list_32x32[2][64];
> 		__u8	scaling_list_dc_coef_16x16[6];
> 		__u8	scaling_list_dc_coef_32x32[2];
> 	};
> };
>=20
> And let the core use a default for each scaling matrix, if userspace does=
n't
> set it.
>=20
>=20
>=20
> Cheers,
> Mauro

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--xgyAXRrhYN0wYx8y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl4V6pgACgkQ3cLmz3+f
v9F7hQf/XAlLHjAzimIvRq2xlPR1NvyAr7jDe7fBqBk3L9lKzKcKlvkzuOd/DQd7
/zm4Z01MtrhbBQvcufpIH0L4LFVyMIwNUoMoRP2ds+yt2fG9Pdc66yJG+mWdq370
vZtDY5ExsIOrt7moQfB3XQ9/6TnEMMb7H+/u/g9GsuQ8JxlMnuo11xxoCjUfznZ+
RCwBNxrBfD4sB5ZAl27J4lUiSisKQm/vP2k3WlWs/XWpEJYsNqij2juBFfFjlReQ
t5qzEHJFEg3Q1p9JxjbTODWsVDw9NcIB+9n36nYIgwr0EhyY6hGtfAVgCcQ9cF/J
rkslVxMZS9Qq6vCfzn7leATtsAQ1Mg==
=HWQs
-----END PGP SIGNATURE-----

--xgyAXRrhYN0wYx8y--


--===============6151989336795784658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6151989336795784658==--

