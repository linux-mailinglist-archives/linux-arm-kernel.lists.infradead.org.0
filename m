Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC502AB92
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 20:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ddsaLGjN53+V2EqI5iE6i8q2oUpI0sXiv2Xe9Jr9hdA=; b=gaZQmT7kzB1nXHahKfz9f67nn
	YF/jjA4g4TT20bmCOmQqn/mBLEedj/BO2do5fb95SFmXIllgXmQ5BhBaiu1wxFSEZNaSevoHHGdXr
	nqC/GIVh/I4Y5OmaOfg+mXPxuNNNpjs0zPVCmWeJl37+IKqg7Wrm+/Koog18Pf9Bm1FBkdvogqY/A
	faRYCkF//0onbMn0+nO9bgMpNaGx1nXQ2ypnbuP2pH6/f8GND8sCbB9CKizCFKMrWnmnGmKVOsYkM
	4kkixKQ87nty8tJNvc1t/CgMIVYpSkpDF5S+U3/5dfXTw1FqaGScCWCNJeOiKk7S+3Pqj79mJhx6j
	zW4o5f9YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUxnC-00031a-Br; Sun, 26 May 2019 18:22:46 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUxn5-000316-BL
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 18:22:41 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E0DAAFF803;
 Sun, 26 May 2019 18:22:20 +0000 (UTC)
Date: Sun, 26 May 2019 20:22:20 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: sound: sun4i-spdif: Add Allwinner H6
 compatible
Message-ID: <20190526182220.hgajlcyssujjkmiu@flea>
References: <20190525162323.20216-1-peron.clem@gmail.com>
 <20190525162323.20216-2-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190525162323.20216-2-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_112239_540889_8C533CEC 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
 alsa-devel@alsa-project.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4244692239526704850=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4244692239526704850==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="psc5odxto6fmnb22"
Content-Disposition: inline


--psc5odxto6fmnb22
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2019 at 06:23:17PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 has a SPDIF controller with an increase of the fifo
> size and a sligher difference in memory mapping compare to H3/A64.
>
> This make it not compatible with the previous generation.
>
> Introduce a specific bindings for H6 SoC.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.tx=
t b/Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt
> index 0c64a209c2e9..c0fbb50a4df9 100644
> --- a/Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt
> +++ b/Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt
> @@ -7,10 +7,11 @@ For now only playback is supported.
>
>  Required properties:
>
> -  - compatible		: should be one of the following:
> +  - compatible		: Should be one of the following:
>      - "allwinner,sun4i-a10-spdif": for the Allwinner A10 SoC
>      - "allwinner,sun6i-a31-spdif": for the Allwinner A31 SoC
>      - "allwinner,sun8i-h3-spdif": for the Allwinner H3 SoC
> +    - "allwinner,sun50i-h6-spdif": for the allwinner H6 SoC

This won't apply anymore on top of next, we've moved to a YAML
schemas.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--psc5odxto6fmnb22
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOrZXAAKCRDj7w1vZxhR
xehgAQDOcuI0MFI4WlSZ6gB352Ad8vsUL9N1MElpyvk09ZwjRQEAt9hBwX5dJWpV
oqCVDFu0/sZMMNzIZydtd7mLfyUf8AU=
=Vygo
-----END PGP SIGNATURE-----

--psc5odxto6fmnb22--


--===============4244692239526704850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4244692239526704850==--

