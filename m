Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 206C034B4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K4UzNTaMXJIQpqtx6PdZtw7dPnazwu4h+qPM1vhr4Zo=; b=rEFlWEPC4aF09oWsOg7Pb8LCg
	KmlVdzrnvg47YsXQOdT+witdBlWzeVc8vJK0ZPF4t1cDmQD6hV7KceFfbWKRHTGxYlk9XaQ354TGR
	YRzD9kndbMjWXqBONsBMz5j69xROlwadLecK+LFulg5pCD3ykvRKNWpNJvSD8cP8Pig9QgWSEd4jx
	ZLqHpn4oqo8JVq6Qm2g55wzo2CPKeaHoWw7TgEEIETxmMf4cNnwbSUfaxdn5qrvPqZ8XrKt07oc2s
	olN8cOzYmB8KAUrgYGdHmUAyoI9i/qxftTjPqtHV904kKhstAej9S+I+ElPaw+YF1pquu2E0Vtjnc
	6z+Mqgwkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAut-0007xC-JL; Tue, 04 Jun 2019 14:59:59 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAuJ-0007KP-IO
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:59:28 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id E4BFE6000C;
 Tue,  4 Jun 2019 14:59:07 +0000 (UTC)
Date: Tue, 4 Jun 2019 16:59:07 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Luca Weiss <luca@z3ntu.xyz>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Message-ID: <20190604145907.j3fp52gxupd3bkih@flea>
References: <20190604144252.26965-1-luca@z3ntu.xyz>
MIME-Version: 1.0
In-Reply-To: <20190604144252.26965-1-luca@z3ntu.xyz>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_075924_186716_85C10579 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6448138612327714043=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6448138612327714043==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zeywvuntmrvlmigf"
Content-Disposition: inline


--zeywvuntmrvlmigf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Luca,

On Tue, Jun 04, 2019 at 04:42:53PM +0200, Luca Weiss wrote:
> Add a node describing the KEYADC on the A64.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

You should have a changelog detailing which changes you made to your
patch with the previous version, and why you made those changes (for
example because we looked at the a83t datasheet and found the two
controllers to be very similar).

> ---
>  .../devicetree/bindings/input/sun4i-lradc-keys.txt        | 1 +
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi             | 8 ++++++++
>  2 files changed, 9 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt b/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
> index 496125c6bfb7..507b737612ea 100644
> --- a/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
> +++ b/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
> @@ -5,6 +5,7 @@ Required properties:
>   - compatible: should be one of the following string:
>  		"allwinner,sun4i-a10-lradc-keys"
>  		"allwinner,sun8i-a83t-r-lradc"
> +		"allwinner,sun50i-a64-lradc", "allwinner,sun8i-a83t-r-lradc"
>   - reg: mmio address range of the chip
>   - interrupts: interrupt to which the chip is connected
>   - vref-supply: powersupply for the lradc reference voltage
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 7734f70e1057..3a42352b5c9f 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -704,6 +704,14 @@
>  			status = "disabled";
>  		};
>
> +		lradc: lradc@1c21800 {
> +			compatible = "allwinner,sun50i-a64-lradc",
> +				     "allwinner,sun8i-a83t-r-lradc";
> +			reg = <0x01c21800 0x400>;
> +			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +

The bindings and the dt changes should be two different patches as
well.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--zeywvuntmrvlmigf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPaHOwAKCRDj7w1vZxhR
xSCVAP9HifWQjLo0644GCGN5e5COuSQdxy0ZI0cNk9VMK0ez6wEAsx9jt6NTjM24
Trk40SgSkATAuyASrgr34Yguf/iQbQk=
=yHyP
-----END PGP SIGNATURE-----

--zeywvuntmrvlmigf--


--===============6448138612327714043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6448138612327714043==--

