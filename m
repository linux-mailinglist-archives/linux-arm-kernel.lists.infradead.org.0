Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D782ABA0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 20:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QnOaZFuXu3N7UA8qHZsk8gpbfqv0n9GDdbrQtvmaF88=; b=lkiWcpMeZJ0DjJqUGodhzJKQ9
	MR/uwkwOGLyan5fzFmDYRGS/sdxikT9waNkq3wY1Nd+8J2p3e1b5DOtP3O1mMng6lWs/KqXlWFZk2
	LoTKbVH7fvlgTp1IGpmpjeBh23R4LKqjabHFDBUMijwAIM3Ic9wgRluKNmHODmb1/JHmwzugWzr3J
	5yZwdRJmpY0/RRqNJGr6M6749dimmRxCR60/us/I58Hpu1aeXyK2ExTPfTNuqfEzRYrmKvNI7J74v
	pyK/uxmF5vVLg27ccIGaXY1RRtqOZXxTjIXsLlMp/Fj2jqvcJWhTsCuQRYS7iUafXVl5hw28SUMEH
	W/omdV3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUxs4-0005qN-1J; Sun, 26 May 2019 18:27:48 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUxrv-0005q0-OT
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 18:27:41 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 96A96240003;
 Sun, 26 May 2019 18:27:19 +0000 (UTC)
Date: Sun, 26 May 2019 20:27:18 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 5/7] arm64: dts: allwinner: Add SPDIF node for
 Allwinner H6
Message-ID: <20190526182718.45cqjx6xsu44ycy6@flea>
References: <20190525162323.20216-1-peron.clem@gmail.com>
 <20190525162323.20216-6-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190525162323.20216-6-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_112739_947974_D58BD71D 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1875803585250625756=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1875803585250625756==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iksylkttz4pes7dd"
Content-Disposition: inline


--iksylkttz4pes7dd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2019 at 06:23:21PM +0200, Cl=E9ment P=E9ron wrote:
> The Allwinner H6 has a SPDIF controller called OWA (One Wire Audio).
>
> Only one pinmuxing is available so set it as default.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 38 ++++++++++++++++++++
>  1 file changed, 38 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/bo=
ot/dts/allwinner/sun50i-h6.dtsi
> index f4ea596c82ce..307d3c896ff2 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -83,6 +83,24 @@
>  		method =3D "smc";
>  	};
>
> +	sound_spdif {

This generates a warning in DTC, underscores are not valid characters
for a node name.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--iksylkttz4pes7dd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOrahgAKCRDj7w1vZxhR
xdKwAPsHomOKKXkOdAwjQzfEiGjCGMKndgCW4QIPcHfoGF2i9wEA/n2QpcwvKM+h
v3+J2k21QAGTy70Kmd28V/tnaZEJewM=
=YZ2A
-----END PGP SIGNATURE-----

--iksylkttz4pes7dd--


--===============1875803585250625756==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1875803585250625756==--

