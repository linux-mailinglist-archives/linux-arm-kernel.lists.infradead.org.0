Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90EF6EEF9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 12:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cZo6b+PJFWlJLMMSRPhY/kgPk65xN+PBDFZXLawly2A=; b=dqDag9OTe47zgrWQHyHkv/dZ2
	pJf/JIuymJ79rRZo8yOev0NgqrFBPWaMmoK/ZVhYnE6TJB7BTjlXJFhPqvercfdgL8b1libeO4Az2
	bfqWYJygs/Fef8NesZrywHSdX8eYxJoytbeptjNCx9S17b8nJ8X+/DDBo7Np6uL1wrQyahoymnHxc
	DH1tcG4xuIKgxdk+Nv6dxWOhGn60E8Tw3dH4pcntYjG7VWXDe4TU8ZcInuR5CtnxR1tyL7OBeOJF6
	hDvd02KV4tkVZZXaAVTA6uYoK948uXiYN1X2dkfKFvGHdP7Ixqy4vQR0bCwx9XIrEtYNUlBwMyhxL
	EOVa+tyIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1homN1-0005kd-Sx; Sat, 20 Jul 2019 10:13:40 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1homMo-0005jd-4E
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 10:13:27 +0000
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6C212100008;
 Sat, 20 Jul 2019 10:13:18 +0000 (UTC)
Date: Sat, 20 Jul 2019 12:13:18 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 7/8] dt-bindings: arm: sunxi: add binding for Lichee
 Zero Plus core board
Message-ID: <20190720101318.cwrvv5r42wxx5k4r@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-8-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190713034634.44585-8-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_031326_328420_F2904D3F 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9083835351441532936=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9083835351441532936==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tbawuqihxzlp3rig"
Content-Disposition: inline


--tbawuqihxzlp3rig
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 13, 2019 at 11:46:33AM +0800, Icenowy Zheng wrote:
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
> No changes since v3.
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

If the S3 is just a rebranded V3, then we should have the v3 compatile
in that list too.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--tbawuqihxzlp3rig
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTLpPgAKCRDj7w1vZxhR
xT52AQD0kOEpggd3u1F6vzeXOaF1YxkUwch5ZW4r06buXM05zwD/Wz2S9sLdf/gQ
ZpMu2hf/5JhGlMh16kEANqiMZGngbws=
=1064
-----END PGP SIGNATURE-----

--tbawuqihxzlp3rig--


--===============9083835351441532936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9083835351441532936==--

