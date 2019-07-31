Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 019D57BF37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=It419h/NU+/C8Dy9KH1nvhPScH7OqYUkDno+TZNsWrs=; b=HuStEfG8tWKik/dZIxij0h3A/
	6A1IawGpPzGSOMKz2pbrOWXTk+26geceHHsP2ngiNsTxcQQ5AQ/6RTOnZU14+c5zng371bZlMRKWl
	dN18LFYYIYjP9tLXnaTtngRdq/1qtlxd1l8zwDBQG8kErHvKKgI0B7iUYwlcIHSduFqAKqGG+XXYQ
	aO0hcS8cQt4P8nuCNnYQ96JuGu80AsNqV2+BsTaOKA9rlNzaV7iOo1E8WF5qkpYvKs0aDSY0EMRjN
	CbtjU69N0aLxfZS28r0vLWPJYd+gtMtSNSPJ6DDEAbO28bQRhq7OLZ1VMCr5mFYNwT3kOOBdmhTKf
	zTZmNlBmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmj2-0007Hs-1x; Wed, 31 Jul 2019 11:24:56 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmiw-0007HW-2n
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NNkKpSgMuJ0KRRXiISTaddlqY+jM8kpTuvVm8K7loEo=; b=m/zIh+7lsaMz2pnXHbCTB9AVJ
 mV40UnIA7bnq14o76hcNSjOpD6JbreoPgt+MGAR2O1CuqmWu8ljttfVxcmnORwU/401Nbl2UEq9BG
 TuOwWWGC8jd4PU1/gHwfmgG4gkJEMReqYJEJ13AdV3B2stt59YpknqEboxMWWgIJa1Ueo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsmio-0001kD-NN; Wed, 31 Jul 2019 11:24:42 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C59922742C99; Wed, 31 Jul 2019 12:24:41 +0100 (BST)
Date: Wed, 31 Jul 2019 12:24:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13 errors, 
 1174 warnings (next-20190731)
Message-ID: <20190731112441.GB4369@sirena.org.uk>
References: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
X-Cookie: FEELINGS are cascading over me!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_042450_129200_899EB744 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============4278775549658016903=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4278775549658016903==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GID0FwUMdk1T2AWN"
Content-Disposition: inline


--GID0FwUMdk1T2AWN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2019 at 04:07:41AM -0700, kernelci.org bot wrote:

Today's -next fails to build an ARM allmodconfig due to:

> allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 40 warnings, 0 section=
 mismatches
>=20
> Errors:
>     drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of =
function 'writeq'; did you mean 'writel'? [-Werror=3Dimplicit-function-decl=
aration]

as a result of the changes that introduced:

WARNING: unmet direct dependencies detected for MDIO_OCTEON
  Depends on [n]: NETDEVICES [=3Dy] && MDIO_DEVICE [=3Dm] && MDIO_BUS [=3Dm=
] && 64BIT && HAS_IOMEM [=3Dy] && OF_MDIO [=3Dm]
  Selected by [m]:
  - OCTEON_ETHERNET [=3Dm] && STAGING [=3Dy] && (CAVIUM_OCTEON_SOC && NETDE=
VICES [=3Dy] || COMPILE_TEST [=3Dy])

which is triggered by the staging OCTEON_ETHERNET driver which misses a
64BIT dependency but added COMPILE_TEST in 171a9bae68c72f2
(staging/octeon: Allow test build on !MIPS).

--GID0FwUMdk1T2AWN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1BengACgkQJNaLcl1U
h9DLnwf/f8I9dl2D69S1eeFNRVh2aLjJV9PMJSjfoyGSDSEKyrS7CVSR8qWRkfir
LwbOCkTe7W9RVxR409aCkPkHcqLlCquQxDeyihTP00ZevmIzgLN7A1mLv0LmoIbn
vldWfuGkbKM67v9n1nwgNBuZK/6eXFobpRlAFrPBx6tiMH4zvAbMKQgO8GuHXdQs
EFd9Wxa38ixftAfcoNbMng2vmYqFiU/nOM9MUQBtWwZ30OV359/nSHMpwfyO9KEJ
sfd866tLAddesCX15Kk/DS/r1qQViMKmqTiOTSHe4r3YKQL9/o8NByGs7k0rWG6t
hgLW0Xnb1iREo3Scv3PBByS5PuMdbw==
=Oxer
-----END PGP SIGNATURE-----

--GID0FwUMdk1T2AWN--


--===============4278775549658016903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4278775549658016903==--

