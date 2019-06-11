Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6B63C5ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6SNn6FA5dSBLw+3jowJaZFsx+rd1RWNrYObWba3/EAU=; b=Zr+MiAM75PhBEjM2sGpvfko1L
	lwvUxjeIN3h5Hn02ZCxbTiF0/dH9WyXrFNfZJUK4glECmi3uWMlRsmTtHtcZ+DHiU3Fhx1PYLCzwR
	iXTJod1h1JE36/b67qT1Ace+I1FBjg4jX3jXt4iDfs7WEpkD76vbUz9zGluml8unoMny98ecjPTEE
	u0HkC1ToFHLHalmH87mzbYCvn2u52meIBg3VhuJHBSijS/dap1ASGKDaBgcCRjM3PhgHhspGw+zTx
	DLI4Oac+SNvQ/9FPuQKVXjjIClWcbSIZHMAjHt5MusCBPA7pmtObdu7d9opOKGkQHgTv7tc0sqjTR
	ya5KJVCwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hac8n-0002VI-P5; Tue, 11 Jun 2019 08:28:25 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hac8Z-0002UP-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:28:13 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9B65EFF80D;
 Tue, 11 Jun 2019 08:27:58 +0000 (UTC)
Date: Tue, 11 Jun 2019 10:27:58 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 6/7] arm64: dts: allwinner: h6: Add DMA node
Message-ID: <20190611082758.raznfgrshvbc7lh4@flea>
References: <20190527201459.20130-1-peron.clem@gmail.com>
 <20190527201459.20130-7-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190527201459.20130-7-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_012811_434538_AFF830EB 
X-CRM114-Status: GOOD (  16.74  )
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0661548505494679399=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0661548505494679399==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hgbw2pta2w7pzljd"
Content-Disposition: inline


--hgbw2pta2w7pzljd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I tried applying this patch, and it conflicts.

There's also a minor issue that sohuld be fixed

On Mon, May 27, 2019 at 10:14:58PM +0200, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
>
> H6 has DMA controller which supports 16 channels.
>
> Add a node for it.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/bo=
ot/dts/allwinner/sun50i-h6.dtsi
> index 16c5c3d0fd81..f4ea596c82ce 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -208,6 +208,18 @@
>  			reg =3D <0x03006000 0x400>;
>  		};
>
> +		dma: dma-controller@3002000 {
> +			compatible =3D "allwinner,sun50i-h6-dma";
> +			reg =3D <0x03002000 0x1000>;
> +			interrupts =3D <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_DMA>, <&ccu CLK_MBUS_DMA>;
> +			clock-names =3D "bus", "mbus";
> +			dma-channels =3D <16>;
> +			dma-requests =3D <46>;
> +			resets =3D <&ccu RST_BUS_DMA>;
> +			#dma-cells =3D <1>;
> +		};
> +
>  		pio: pinctrl@300b000 {
>  			compatible =3D "allwinner,sun50i-h6-pinctrl";
>  			reg =3D <0x0300b000 0x400>;

DT nodes are ordered by increasing physical addresses, so this node
shouldn't be there.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--hgbw2pta2w7pzljd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP9mDgAKCRDj7w1vZxhR
xeglAPwIW36bLSAE8g46D6JILsJk6w6C0BIIbR0gS4UHeOmtswEAnm9PNial2hiQ
BhIQ8CM9gowudS/CZB7KUSMsrInbXAo=
=PF9a
-----END PGP SIGNATURE-----

--hgbw2pta2w7pzljd--


--===============0661548505494679399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0661548505494679399==--

