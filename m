Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7AB709BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=foZH90uF8ViAKXgBpAjRJtmtMpESVVSmUk2LrwhUoto=; b=JwE3G39NfunsfLWPOyf23C83y
	GoySj2wCCQG8oCGrbKuRqQl8f/BJ3zIjXYukzrZ1UWz5LHT+Exktb+2Wy5M4tmHzzhhA6jXJjllAc
	znZi67DiNtjHyGD+VrEkw+DcJ8DnsSqJQlJaomUMHA1ebufouJTK8OVZKUV8jmCbLqOJKWUq05LKZ
	akVLwWiTQuGER7G3idGchMZOC89Ttn1ZPH0XSPXq4O1cgXphP69a670TbgqHgiK0RdnaOgCMsbGuv
	X1j9pbA5RZQyTg4sG4z2XGOF/txhQeij2ns47T+vqOUGtICL05UhP9pYfewsFBi6XBcPqJMs7cbJM
	y41lP2QJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpe1N-0003R1-V7; Mon, 22 Jul 2019 19:30:54 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpe0H-0003O7-FB
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:29:51 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id DA05DC0008;
 Mon, 22 Jul 2019 19:29:36 +0000 (UTC)
Date: Mon, 22 Jul 2019 21:29:34 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 7/8] dt-bindings: arm: sunxi: add binding for Lichee
 Zero Plus core board
Message-ID: <20190722192934.3jaf3r4rnyeslqyw@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-8-icenowy@aosc.io>
 <20190720101318.cwrvv5r42wxx5k4r@flea>
 <BDF0C9F6-DD0D-4343-8E24-06A07055004C@aosc.io>
MIME-Version: 1.0
In-Reply-To: <BDF0C9F6-DD0D-4343-8E24-06A07055004C@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_122945_749848_D1C04924 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0110520950706065442=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0110520950706065442==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vn42k7mlndfzfvev"
Content-Disposition: inline


--vn42k7mlndfzfvev
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 20, 2019 at 07:39:08PM +0800, Icenowy Zheng wrote:
>
>
> =E4=BA=8E 2019=E5=B9=B47=E6=9C=8820=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=88=
6:13:18, Maxime Ripard <maxime.ripard@bootlin.com> =E5=86=99=E5=88=B0:
> >On Sat, Jul 13, 2019 at 11:46:33AM +0800, Icenowy Zheng wrote:
> >> The Lichee Zero Plus is a core board made by Sipeed, with a microUSB
> >> connector on it, TF slot or WSON8 SD chip, optional eMMC or SPI
> >Flash.
> >> It has a gold finger connector for expansion, and UART is available
> >from
> >> reserved pins w/ 2.54mm pitch. The board can use either SoChip S3 or
> >> Allwinner V3L SoCs.
> >>
> >> Add the device tree binding of the basic version of the core board --
> >> w/o eMMC or SPI Flash, w/ TF slot or WSON8 SD, and use S3 SoC.
> >>
> >> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> >> ---
> >> No changes since v3.
> >>
> >> Patch introduced in v2.
> >>
> >>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
> >>  1 file changed, 5 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml
> >b/Documentation/devicetree/bindings/arm/sunxi.yaml
> >> index 000a00d12d6a..48c126a7a848 100644
> >> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> >> @@ -353,6 +353,11 @@ properties:
> >>            - const: licheepi,licheepi-zero
> >>            - const: allwinner,sun8i-v3s
> >>
> >> +      - description: Lichee Zero Plus (with S3, without eMMC/SPI
> >Flash)
> >> +        items:
> >> +          - const: sipeed,lichee-zero-plus
> >> +          - const: allwinner,sun8i-s3
> >
> >If the S3 is just a rebranded V3, then we should have the v3 compatile
> >in that list too.
>
> S3 is V3 with copackaged DDR3 DRAM.
>
> It's pin incompatible w/ V3.

Does it matter though?

If the only thing that changes is the package, we're not manipulating
that, and any software that deals with the v3 can deal with the
s3. Which is what the compatible is about.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--vn42k7mlndfzfvev
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTYOngAKCRDj7w1vZxhR
xd77AP9kxx/qXPETcP3fumpzmXSQrjjY9A81+Czl0ZPvauA4VQEA2qZwJBFD+6ml
86ahAeLa2qt1k3eZZlcXhgNVqkXxygs=
=9EZ6
-----END PGP SIGNATURE-----

--vn42k7mlndfzfvev--


--===============0110520950706065442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0110520950706065442==--

