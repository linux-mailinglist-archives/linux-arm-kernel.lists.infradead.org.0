Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415E513CD8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 20:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9I1WHkkxbIwPoCzfn7r7QPiGjs2bPZi9W8FP9qntnIs=; b=cG3TFP8tUpCXLXaUIZQoTFp+e
	ZAdJhoevhpSw4f4VMUi24fMSH0GJBuuaSwYEPuGrU4pPcSQaPfHhYhi7ssKK5fckS8kPCWDKfR99e
	T3aNNr9TjJ9CMGAMssKOoG6CmsQZ1pUwB/z/m2LmOg12fLpRJMVV42htVXIIb2lHNMCID3O0Ce7qX
	2/5A+K9gAA9xJVpipFvVwk3D63kbwiQXICSxDOnYd/UoxgvmftFnAGJs+C38vrViAS59Q4HyJ5DT6
	KumRP626VblRXwG0woph6Q5iVIZjziBsnbDm55dw9QlGOz17zFEbHXN89vuszLOXNrZWVMcv4GQjD
	4sNNcCldg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iron2-0003O4-EN; Wed, 15 Jan 2020 19:57:20 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iromo-0003N8-BH
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 19:57:10 +0000
Received: from localhost (p54B33239.dip0.t-ipconnect.de [84.179.50.57])
 by pokefinder.org (Postfix) with ESMTPSA id 467852C0742;
 Wed, 15 Jan 2020 20:57:05 +0100 (CET)
Date: Wed, 15 Jan 2020 20:57:05 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH 00/12] i2c: convert subsystem to use
 i2c_new_client_device()
Message-ID: <20200115195704.GC23789@ninjato>
References: <20200107174748.9616-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
In-Reply-To: <20200107174748.9616-1-wsa+renesas@sang-engineering.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_115706_537671_4CA27D60 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-acpi@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4255428762201271709=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4255428762201271709==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oTHb8nViIGeoXxdp"
Content-Disposition: inline


--oTHb8nViIGeoXxdp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 07, 2020 at 06:47:34PM +0100, Wolfram Sang wrote:
> This patch series converts the I2C subsystem to use the new API. Drivers
> have been build tested. There is one user left in the SMBus part of the
> core which will need a seperate series because all users of this
> function need to be checked/converted, too.
>=20
> Except for documentation patches, the conversion has been done with a
> coccinelle script and further simplification have been applied when
> proofreading the patches.
>=20
> A branch is here:
>=20
> git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git renesas/i2c/n=
ew_client_device
>=20
> Looking forward to comments...

Thanks for all the quick reviews and tests \o/

Series applied to for-next, thanks!


--oTHb8nViIGeoXxdp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4fbpAACgkQFA3kzBSg
KbZsuxAAlGN3Qw/NoGCVgmD5F27FU32w32SIt3btqM+Smwb8h/YywvrdIxuaElC4
U0FVB9Nt21/V6whDPbpRqNwtf3Wld5jgpFt3GinATmO0LBrYZM0qsrAWaf9Mnnaw
KgDuO5MOsyLhxxgsT7ak2ASe6o+QzDUOxtGJJLgjEUxAcdF7MEVinFLPA1qOgGlu
qTPNb+z3htcdaoLIVBvUBzS6xIt8HyD2XB71db4C1TqBfdoWI/kRIWn5Fd0Bjiv4
EmUag6Gy7G0CTw0lzmYne+gSB/U8ugzpNDTWEyns4bxTVUGgyuAdWcPomJ9Duieq
zA2yUvTbIX/L/smIXiJcXUOwgWiozVsY+oFpDp0lpg7ZaULiuCZbmcdbil6GRfqB
qVfn8F94w1GRCQ5lNzMTuUbTIo/4w5HFMKQY23lJ8BMI26nVQ4+6YyUoZstLLyMA
Np0s2EAUUGGO9IdMigfaJrVW7m0ukj1Je4S9a8OAE4eVuV89o1UjNdx0O7kV4BPI
K0YpHnEvGaEiQB3MonKIE0jUL6WA1eXUUxsgQCBoXyPx9nmz5QzANoenIPmN8PBw
sf8NAgK8ppLrkWjmbydI2GWMFFhp4gXdGFzvrjLahMNXZsHGLyK/ad9XS6+E54RD
GynwEX6zU+0Znoa+3I2Po2bbPBRvuHSZqES3obLnS7x/VQ8Xz1w=
=uUCI
-----END PGP SIGNATURE-----

--oTHb8nViIGeoXxdp--


--===============4255428762201271709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4255428762201271709==--

