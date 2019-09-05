Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C691DAAD1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 22:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NVq0KJwgACHPcVYyBPsQ+KUE4PhIl41a39TtpNJ3tc0=; b=SlO74cwaZKv9JaXJx6pJbAzVH
	CPhqowbJ0DQylM2gMjNTiIk9r4eVdZtFbre5bgWi6Dz0c5/fFqUMpDhBtvI4BokeDl4t2Ry7ssQoU
	5xDI24BRK7+gAM1JDB8iYjgeP387HqVK37eDbCtf5j6e0NSkiChfmma9MsVlJPy3zcSK12JMINpuN
	VMeu+j7n5+TyO1yguZk8r8QhkeCoEkEdxT2V+bgi+3dWMPxa2YVh8W4Y+CVJ4h7TPFiTxw5oM4ePV
	hDx3KpyeyZbVSFhu6C5Wksy9L1c2MOQkSLQ6eqyhAHZwxv2uNy5iKZaRVWJfh84FU3oHjHyCJrXUZ
	SKibrZ0Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ySY-0004RM-GR; Thu, 05 Sep 2019 20:34:26 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ySQ-0004Qn-5L
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 20:34:19 +0000
Received: from localhost (p54B335F6.dip0.t-ipconnect.de [84.179.53.246])
 by pokefinder.org (Postfix) with ESMTPSA id CE5C42C00C0;
 Thu,  5 Sep 2019 22:34:16 +0200 (CEST)
Date: Thu, 5 Sep 2019 22:34:16 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] i2c: uniphier(-f): use devm_platform_ioremap_resource()
Message-ID: <20190905203416.GD8989@ninjato>
References: <20190905034533.9842-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
In-Reply-To: <20190905034533.9842-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_133418_355067_B7BF2395 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8493449099399173066=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8493449099399173066==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hoZxPH4CaxYzWscb"
Content-Disposition: inline


--hoZxPH4CaxYzWscb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 05, 2019 at 12:45:32PM +0900, Masahiro Yamada wrote:
> Replace the chain of platform_get_resource() and devm_ioremap_resource()
> with devm_platform_ioremap_resource().
>=20
> This allows to remove the local variable for (struct resource *), and
> have one function call less.
>=20
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Applied to for-next, thanks!


--hoZxPH4CaxYzWscb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1xcUgACgkQFA3kzBSg
KbbMcQ/+Jr9iIT92eTkVORqSGM/7JE4CwwhsTe4KGq3qRycveqVovJQRQpJ6U8bj
vw0A446lnnjg+ePvFO2qkH5yAq+ylIAuGwfuH1Z8Z6W5tSe/FjGEtK/G+R7BjJ75
jti8iCNRa8rIO4Y0eZpg/k6U8biQrBY8+k5Tzl2OEIEwOB0eKui1Hs6wbLQg+cb4
mTSTdX6ItocIipVrrf96pq3b45VGbnDHnP0zawNfCUdP8JjfoGPYIV/pCz6hMVxH
1VRDOqfMGjkVx2BfI/XAnu4fSzE975JiFdlKZ3v7mw5P0N5UCdBNWTuiG0D16dlm
yeZQzXjrgsODccaPYU78Wif4Qb4l47ZdLmXNd6R513O45K+nr/2rRTjZE1fbToe4
hiaQfQLvLTgLZSNfaCcpf2xGeswNkzs1u72PKjQQvXD3HY5oYzLq2wc0pceaCeK4
ry5DkixrquDXupFtOu6AzNM7MNU88pLMqdZqk94p/99bEXu7AQMrsFkZ+5crr/06
mZyKF7j55PcBKtcpgCfSrLGJr4rYUvY8WXmQYf9LQaZ52Y1XNaDJiDUgD6E0wgJR
nsYDXUfZH5WpM1Vkop9rbgew2U+4jfSJ9at0IneHdLLcH0kUscdQxbJHiZQPzbye
XSAbfUBdhSWpJN2pGeodY8ileHb0JAsIRLn9Pn4hfSBHh2ri98E=
=iZ80
-----END PGP SIGNATURE-----

--hoZxPH4CaxYzWscb--


--===============8493449099399173066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8493449099399173066==--

