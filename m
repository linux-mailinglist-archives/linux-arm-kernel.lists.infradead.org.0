Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3080D1D27DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 08:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=poXdfagzG56FqIZXJsFg/4lpjtTb+luspCcYolo+So4=; b=A6ez4Ey6hyA5jD92EFGB7W61T
	dCtNT3N9GNu4i8Njg6ZzYSPkrjujU8lRltZjcAIt7b2usvL+Azl3/sFBWWFHk+k7X75v9SLGVbAi3
	lc+48JfeXrHQo5GjudqywQLPcBWTMexNQ8NFyT2zv8Bcwc89+70ITZnvbynT68DGYE1irclAP1jlj
	FhyktrbP0oMt/WioavgRDH1IVA2aHAAbMvgRPty07Ylnfz/I0+Avr0o416bpm1hDY+PeB7vVr3wav
	HFN/pEgyyv3awk1CJ2ip/XLwfp2IftUarpcWC7lXitwxT60LgHL5fQwFzgFC1q21w0VTurkjc23d5
	182lDXGzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ7Np-0003Jr-8f; Thu, 14 May 2020 06:30:17 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ7NT-0003Ap-Ea; Thu, 14 May 2020 06:29:57 +0000
Received: from localhost (p5486CC88.dip0.t-ipconnect.de [84.134.204.136])
 by pokefinder.org (Postfix) with ESMTPSA id EC9C92C01E6;
 Thu, 14 May 2020 08:29:51 +0200 (CEST)
Date: Thu, 14 May 2020 08:29:51 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH] i2c: mediatek: Add i2c ac-timing adjust support
Message-ID: <20200514062951.GA1145@kunai>
References: <1585223676-30809-1-git-send-email-qii.wang@mediatek.com>
 <20200512133852.GE13516@ninjato>
 <1589418905.25512.10.camel@mhfsdcap03>
MIME-Version: 1.0
In-Reply-To: <1589418905.25512.10.camel@mhfsdcap03>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_232955_634082_6ADB034D 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3528700453342335531=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3528700453342335531==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline


--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Last question: You seem to be the one doing major updates to this
> > driver. Thanks for that! Are you maybe interested in becoming the
> > maintainer for this driver? I think there won't be much patches to
> > review and reports to handle but it will speed up processing for me.
>=20
> Yes, It is my honor to be the maintainer for this driver.

Awesome! :) Can you prepare a patch for MAINTAINERS or shall I?


--azLHFNyN32YCQGCU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl685VsACgkQFA3kzBSg
KbbA8w/+Iih/AnYzyX4NP+kuKMiaDnC4Lof2gegnqKBPDlccUf5qMFAxlvdj5VLg
7fpHoLnxDUaE2VSLT94/l7djAnAiUrDK42F1rXHXfJKmfb4k9dMWI7n+yF29/95a
87gV3x2goe1XucCmobocv2RFwJw7b4rkDkvCb5mN6bvyDBUUS4Q3mW0MGxISVdTE
Z48dW7oyv54Y7kJoEVv3NRcrOfO/2zlrsi1zxamoU8+E5NidGwqySY21PZpq/FZm
4un1Dt98r7nrsm+l75SAahK5AJ/6qYakeJOtwD2NyzOF6dmwOgKLDpMI82Fl5e3p
vO37ZWYXoOeX9u7HFzEmz6CiLQ7Fomg5S6P7pWOV4JWNGbgMvkfnhzhyhZQN/y3z
+n6BX//CKk/Vo2DV7yHc/fO5ueXSP0FpAd4MErTgwUvkbeWj4kM09Q5rug3nwXcb
6+panhqePUGmOpqdT8JvqL+bFc3NpK7eDTmbAW3r6vp06/rttRBNnyKV5R4QMTfq
9qB1gtrcqHz1YJLI+UKW/QXIu04mGdW20TwlnQe06pV8l9/6JoPMMhgz5OnRAMd9
z/j+zHrrH2JMV/2gO+DW7T2Eweo2ZHEJjT1OfJT5pmxfrNVpFmkMsiwFbirC0mDH
l5EQ+idPkrsxFbHMsV/FRdladtoW5CHlB8ujb8StzFIkszZOKUI=
=ZyXd
-----END PGP SIGNATURE-----

--azLHFNyN32YCQGCU--


--===============3528700453342335531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3528700453342335531==--

