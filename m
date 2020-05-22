Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DD91DEB79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sLt6utn1NVbMzVpuswqbJU/3Srry3YKggUwIehX2hvw=; b=V2WjV/UffUmD64NtlmCBxDKFf
	UerOXQjYErWGSw5+CMsx7/ogqxGYdMXFd9Z0TelSEMT5YAeuX1na1Npe6T3fxsRhzJyRuZ+v60sL/
	s26KgQ/B3zXpv7lD3xokLocTugNUCNgrRd/SERL95bUMbTboKvU9Rnr0mzrf/EwQeUeQHh3zE84QP
	aMiheJvg230zTGICeG+2PHW0uAL2bFuUuEC7pCNxaKvPnwPg9Mv8Elv4jBDuhhLyxy+u14MJwpGAh
	FsuhnEXltUC3S5822xO44DoOR8wV3QWlXLL+usFoTynfVp1aHOoXvqb9fjBDUFrbYSzqYvU5MN1XR
	JvkyED+Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9H8-0002iG-TN; Fri, 22 May 2020 15:07:54 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9Gu-0002hi-1w
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:07:41 +0000
Received: from localhost (p5486cea4.dip0.t-ipconnect.de [84.134.206.164])
 by pokefinder.org (Postfix) with ESMTPSA id 5B27A2C2071;
 Fri, 22 May 2020 17:07:39 +0200 (CEST)
Date: Fri, 22 May 2020 17:07:39 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] i2c: drivers: Avoid unnecessary check in efm32_i2c_probe()
Message-ID: <20200522150738.GH5670@ninjato>
References: <20200415140640.19948-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
In-Reply-To: <20200415140640.19948-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_080740_238720_99C3C680 
X-CRM114-Status: UNSURE (   6.93  )
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
Cc: linux-kernel@vger.kernel.org,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>, o.rempel@pengutronix.de,
 linux-i2c@vger.kernel.org, u.kleine-koenig@pengutronix.de, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9081482514842259487=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9081482514842259487==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pfTAc8Cvt8L6I27a"
Content-Disposition: inline


--pfTAc8Cvt8L6I27a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 10:06:40PM +0800, Tang Bin wrote:
> The function efm32_i2c_probe() is only called with an
> openfirmware platform device.Therefore there is no need
> to check that it has an openfirmware node.
>=20
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>

Applied to for-next, thanks! I agree the driver will need additions for
non-DT platforms anyhow, so greeting with an OOPS is kinda suitable, too
;)


--pfTAc8Cvt8L6I27a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7H6roACgkQFA3kzBSg
KbYkIw/7BqnJb/EWR5Blh3d4vpx3rtS8kwGxEIY4UbtTq1uWotMuzrDKdwyDMIXV
i6nooV/NJ0Eib6pVtQQLz6VVquUA1s0SVHR6vwN2CTZIZIHtntwHUflDkE7ViR1M
o7eGs9UUmEUvedljeQFcl+t5Qbx54i5kHSqP6x1KoHJJCQzmz8f6dAfSVR82B859
byP1J7Nb8TzilTSKdfl3eV0jXomazoHUvxYUvIeM8t9Lm8GL6k/6NMIWKXfGQiff
55kuYKhRaFfX+A5ZigPA4gmvP4hdGAomLr0aQePMwlQljWUoJVvyLF5olRONAhB9
TkMUsC6xLbOh10hfknqsdJD1krFHvX+AM8EpsZ6E0dnsGxq4Ns2JTSod5rs8S0Qq
dGf4pb62qWAy7xY/Gc6wrxwG+mdniZMXxCtw9arDdgRTebm3+bBVSNB7V4LrC88w
hLsjWC/X3KGvXWOiNx3hVLn/+sXzZum2vk/M0UMW3mItW9yozI0z+BxT8Rcqd/7+
iHcxarj8nHn2TYnqoN6lRe1mliqkPA3OmTUvgRQF99W+0xFhD9h7sVEr+Ri3gJfw
+arI0O1tKeTidUDXLazDPM94NQR4wLaBmee/Q8kUKCoIbYeYpSU3AKQlZHJkrSpQ
FKFgszHQaQS2aCh27SDp0/cvSlrQwokVi5S2ri5lZc4XLylgltw=
=JDIx
-----END PGP SIGNATURE-----

--pfTAc8Cvt8L6I27a--


--===============9081482514842259487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9081482514842259487==--

