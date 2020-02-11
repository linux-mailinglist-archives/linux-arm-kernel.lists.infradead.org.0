Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A88158E63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:24:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nIcRhrOWkJqZfDzPJ3Ef5Yeo7fydjcNixoB3fDLlHrM=; b=k73PYeu5zL0s1cO/UJUl02iPX
	2hxCPTILKbRQzEpUi2Fm1x67cZQlmWbPFqWN11P/kQGWWIYqSKLgBTqugIU/Kh7gXrPl+ak1hdAUv
	2/vHYzhjoLHvpVzbgSj5r8df5FYSCGmJjnYw+tkaNdN4WLKWzsriYRPtkKw77zCRnfIfPD11riKdO
	aFBqffL+Kz4iXml5T/XsPcCqBgPQmgJ4H7UBXaMX/aOivVFlHfeKdhi4bP0cFhUaVZrb6+rYsh2sj
	Sf7s/fGE8I0WGEXl/bacc/MmK1EkeMrx98V8ovUQYDXpkGVmSqxBv8yntYNnCcjVSDD+hyBq/noPK
	HCyLQokZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UaA-0001ZW-0z; Tue, 11 Feb 2020 12:24:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Ua1-0001Yz-UT
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:23:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14B7D1FB;
 Tue, 11 Feb 2020 04:23:53 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8DE723F6CF;
 Tue, 11 Feb 2020 04:23:52 -0800 (PST)
Date: Tue, 11 Feb 2020 12:23:51 +0000
From: Mark Brown <broonie@kernel.org>
To: =?utf-8?B?amVmZl9jaGFuZyjlvLXkuJbkvbMp?= <jeff_chang@richtek.com>
Subject: Re: [PATCH] ASoC: MT6660 update to 1.0.8_G
Message-ID: <20200211122351.GJ4543@sirena.org.uk>
References: <1580787697-3041-1-git-send-email-richtek.jeff.chang@gmail.com>
 <20200210185121.GC14166@sirena.org.uk>
 <a9895e583c9b47608aeb3e29d7852f47@ex1.rt.l>
MIME-Version: 1.0
In-Reply-To: <a9895e583c9b47608aeb3e29d7852f47@ex1.rt.l>
X-Cookie: Hire the morally handicapped.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_042354_025152_9E817A93 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 Jeff Chang <richtek.jeff.chang@gmail.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "perex@perex.cz" <perex@perex.cz>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7797148770407361577=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7797148770407361577==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1ou9v+QBCNysIXaH"
Content-Disposition: inline


--1ou9v+QBCNysIXaH
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2020 at 02:04:42AM +0000, jeff_chang(=E5=BC=B5=E4=B8=96=E4=
=BD=B3) wrote:

> What should I do is just apply them to be hard code into the driver? I ca=
nnot use event a table to descript it like below?
>=20
> static const struct codec_reg_val e4_reg_inits[] =3D {

Doing what you've got here is hard coding it in the driver.

--1ou9v+QBCNysIXaH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5CnNYACgkQJNaLcl1U
h9CmmAf/f2m+iY01h2zxveePh8kLV67hfAIacGMZXGLIzsnhrSXN/FwdW1get7dG
oG5R50Qosg/i9F2Ov0oqOGqJqtc039++uyXkbFR0gxSl5o7ixX5NlXLVRuqV/qWl
KSmiv4UWKiDVGLu3ITfwdwcLU/0mu1++10XgspK4ZDrexG2sXJAJ4rUN/ntD0nz0
utsW2B0LoZyU5bNQ7qoSPMWQaRWbzIoSYlupXIF9exiO6c+Qh3AL1NSHzwcrAOrp
px7Iu0pVaBC3lcaKw3IkDDcbSwzU+kGfl1WaMcQaHior5sQmZhrL1jlTXigvBLn0
8o8LXGIwL0xXh6O3XWKghL+taEW33w==
=twZR
-----END PGP SIGNATURE-----

--1ou9v+QBCNysIXaH--


--===============7797148770407361577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7797148770407361577==--

