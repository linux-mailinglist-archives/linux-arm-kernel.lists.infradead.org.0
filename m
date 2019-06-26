Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C819556A7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bs2X2nG5fQTx4j2ALxG2t1FXfOIeIrherk7jRumWVqo=; b=Q3Sc08Ayn/K7YuxiE7zHZeVsU
	Fplag9RE8B/K10wgNu6Hh+g0oJxtFUGT7J2/jSjuXRlRIxdP/h9YA8ZYzemeJaQKA2mHR52G+DDiy
	ngdoroA8t741OkHVENlguphY0aOUhWNVmQY+5aPMjzgqNtFyA8whrjaZIWkVOaIO0OW4Sg/UI1OkX
	cEciOWcmpFq6zJeq1m7/cB+xPYHN9YBB79hg6rhfi+Kz8Hzo+lZ4V0R6RAhfZkz0yzgaJDUL19/Tm
	Joc14aIajCGvhcZ9sXQuVDWaA42fhhhuRe+OapNq951EyqUjA8/urBtwJLiOoyiMOpx25BA6ahlPO
	ni7NntS9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg81N-0000Mm-BM; Wed, 26 Jun 2019 13:31:33 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg814-0000MS-1s
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:31:15 +0000
Received: from localhost (p54B330AF.dip0.t-ipconnect.de [84.179.48.175])
 by pokefinder.org (Postfix) with ESMTPSA id 36DEF2C0114;
 Wed, 26 Jun 2019 15:31:13 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:31:12 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: i2c: sun6i-p2wi: Add YAML schemas
Message-ID: <20190626133112.GI801@ninjato>
References: <20190611090309.7930-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190611090309.7930-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_063114_246036_D4155D30 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3907289496384160603=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3907289496384160603==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ev7mvGV+3JQuI2Eo"
Content-Disposition: inline


--ev7mvGV+3JQuI2Eo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2019 at 11:03:08AM +0200, Maxime Ripard wrote:
> Switch the DT binding to a YAML schema to enable the DT validation.
>=20
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>=20

Applied to for-next, thanks!


--ev7mvGV+3JQuI2Eo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0Tc6AACgkQFA3kzBSg
KbYFIBAAn90YIJ6WnfHlOWYekdGKw59XB6kiuS9WYVF9MaVxtzaV2fSMT8HHP5bq
IBShQCsa9dIEwYQy0tRoHMVneJ8+2/sy/tH72NPBn/2bT9cDnftMJr+Z3Yje3Oyt
o6+wGiI/2isqmbP4VmcLT21ymS9qXNk+WngA7j6tBaIkgxLPbANOIYsOcFcITo2Z
2eUj/22BvqqI28DEmQ/5oqUd1TBh+z9Cmfr6J9PzG8YPJJVvsz9gYt3NOYOXWBaO
p6rJ1rcD3hww2abwSLX3h9LEviG8UM1HzpO4O0Ob0T40GkhrvCOLtJsYBbwGEbob
IF/FoVOW030itSX1kRvOY1diiGgIk79zmiwGOrmPT/rzLXaHA5yfMDKL2wI1TAVA
/84zp8P1e6kzwplGF/Qj3b64+ZOvJmo+WejV+Xo/2Dq6Lu3ZvA7TUPDQwjVZE8tx
vL3S3/1R5RNXRmvyknypcitsymSRWBnwIWW8aQlzMaKaH0pfHnImNNS4IamViOkP
qc/PHfVXb0uTkJjFWu60iFhGBVReBzHorbC+1Ll+vcR1n7bKLwT6m6pp5pbOwmOM
hUiXm5vRN7HqT4mO0kUK+utR5JPuiKxHat1e/bAIWxARUswpkKDLHZhEPJ8U1B+w
F7RbsEfjeopQ0Eo/XID0hLdLC/qlS3KS6l5Re3dhU8yEgDmnghM=
=kX9l
-----END PGP SIGNATURE-----

--ev7mvGV+3JQuI2Eo--


--===============3907289496384160603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3907289496384160603==--

