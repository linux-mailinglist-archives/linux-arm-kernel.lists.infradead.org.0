Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D686650AF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r75z1MBmCPXziE+YLtshJzNNv96zyt5Dbbe94DWGLcY=; b=oa0BskwFRI18MtU7yd+TeZ5Tc
	jdxyJGYoargfV0/bjyqGu05xZLEGhsmYvh4j9wuZxTwFQvrmanjSNzMyLqaE1jf5sOQHo+BqPSD2H
	9IK1HaD6CZcTuklLWCpMHmcqFy/VJ9DPsreb9oeFKYl//ZvB0Cj3rToDJAC8070J7WrnwmCKd7lI6
	Nq6VGTBLmsgtMLxRdbpSO7FPJhwpjTbhfnTE45AFd3lRWfR1/8y18Sy5hMYwg6pp/x66PbcC+GUrL
	SmyEqD0XG2yFaeNYSAyWB+G3f9Q6e8H+NIl95H0koDMwHyqgQIE/p5Vnvh4Zi43oBkZRNPoc22ekO
	C/bJ17RSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOIl-0001Qn-60; Mon, 24 Jun 2019 12:42:27 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOId-0001Pi-Mq
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:42:21 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 404F240003;
 Mon, 24 Jun 2019 12:42:04 +0000 (UTC)
Date: Mon, 24 Jun 2019 14:42:03 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 8/9] dt-bindings: arm: sunxi: add binding for Lichee
 Zero Plus core board
Message-ID: <20190624124203.r7vnlt6zzufoarte@flea>
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-9-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190623043801.14040-9-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_054219_904180_0DAF0785 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6270884789262989950=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6270884789262989950==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cy2cjgv5uk45c43g"
Content-Disposition: inline


--cy2cjgv5uk45c43g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, Jun 23, 2019 at 12:38:00PM +0800, Icenowy Zheng wrote:
> The Lichee Zero Plus is a core board made by Sipeed, with a microUSB
> connector on it, TF slot or WSON8 SD chip, optional eMMC or SPI Flash.
> It has a gold finger connector for expansion, and UART is available from
> reserved pins w/ 2.54mm pitch. The board can use either SoChip S3 or
> Allwinner V3L SoCs.
>
> Add the device tree binding of the basic version of the core board --
> w/o eMMC or SPI Flash, w/ TF slot or WSON8 SD, and use S3 SoC.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> No changes in v3.
>
> Patch introduced in v2.
>
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> index 000a00d12d6a..48c126a7a848 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -353,6 +353,11 @@ properties:
>            - const: licheepi,licheepi-zero
>            - const: allwinner,sun8i-v3s
>
> +      - description: Lichee Zero Plus (with S3, without eMMC/SPI Flash)
> +        items:
> +          - const: sipeed,lichee-zero-plus
> +          - const: allwinner,sun8i-s3
> +

I didn't notice this before, but since this is not a LicheePi, it
should be before it, not after.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--cy2cjgv5uk45c43g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRDFGwAKCRDj7w1vZxhR
xWDFAP0Y+QF1gRD03fNZay8zwpfjSHFM4HcoRPfupe69+PB8TAD+O/AyTfqRskCn
LbtnGo65oy2DluEVWm+GvZbBIm5TrwA=
=yx+D
-----END PGP SIGNATURE-----

--cy2cjgv5uk45c43g--


--===============6270884789262989950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6270884789262989950==--

