Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B29D2AF88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 09:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L44doHSNPbMv3/TgbE+ZzuOtiBf/pKN+6TOg1v5ccz0=; b=J6bOiqOBo2wP6fm2gQXHsiv4v
	xyA0cQAhngxwTEzfYzAsVXJjpLdJ3tRFV9pBGrL3Ni44W4WaIevKrNcWGQ8jG0i08dLGtQJe0o22a
	D5wn8+43W+6C8EROiDlVSHXMHwZkU3M4jELs8e9WIcGekXiHqBiA3JlIF7vPdZGQ8Jgg53lb8B0xv
	emBQ4XZCAR8Eka0QPzJVVlTPiAQVIVFkLUjlDCDF3cea7wtFTYQZXSZjJf5GQsQpmRhhZeJ6+pwXr
	DFPNX3G1zn/SPJ108kwLbXbmeAO9wer7QvtPTeFmBoPFP3ttFjKipc732ZWcLCmGs9vnQ4G7KhWkH
	07xROq7wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAMZ-0005QV-7T; Mon, 27 May 2019 07:48:07 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAMS-0005Ph-Fq
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 07:48:02 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 4DDFCC000B;
 Mon, 27 May 2019 07:47:46 +0000 (UTC)
Date: Mon, 27 May 2019 09:47:45 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 03/10] ARM: dts: sunxi: prefer A31 instead of A13 for ir
Message-ID: <20190527074745.5oyt5tyuoc75ntiq@flea>
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190526222536.10917-4-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190526222536.10917-4-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_004800_673918_7C0E09F1 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2180002261504220322=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2180002261504220322==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pp6ncxjpttni4i4p"
Content-Disposition: inline


--pp6ncxjpttni4i4p
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2019 at 12:25:29AM +0200, Cl=E9ment P=E9ron wrote:
> Since A31, memory mapping of the IR driver has changed.
>
> Prefer the A31 bindings instead of A13.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  arch/arm/boot/dts/sun6i-a31.dtsi   | 2 +-
>  arch/arm/boot/dts/sun8i-a83t.dtsi  | 2 +-
>  arch/arm/boot/dts/sun9i-a80.dtsi   | 2 +-
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi | 2 +-

Can you split the H3 in a separate patch? this will go through a
separate branch.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--pp6ncxjpttni4i4p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOuWIQAKCRDj7w1vZxhR
xUx7AQDWMM7bqbWyusgAqBceK1Mm3YxF86z+jSIPo7ooKR2vMgEApTPK5Q9rYvHu
XiaJRAAZYlSm12fyKBMhDUzo2be/fwE=
=ZMdg
-----END PGP SIGNATURE-----

--pp6ncxjpttni4i4p--


--===============2180002261504220322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2180002261504220322==--

