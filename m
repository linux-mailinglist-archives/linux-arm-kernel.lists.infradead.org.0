Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F00AF8F84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 13:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IJEIT3A1qf/KGJ8hmlOlCuW+f7l2w8p12wZ5nhceNwk=; b=H3tWLCsSXuuSBeuRJJK/D8l1b
	cpMSqUYvSRapmayUnSMsE77b+PUnXQQL12Mfy7oJES974VgFo87iYVZ09rFnlQhsIl9/EEGzyhq15
	b5/CBLPq/xVnheOP/l7HeR3iqK2Ifphu1gttt8ttIArU9eCcfIn5fYCohqsrZ2ViJKWKiMzvqJCh1
	V2L3bmovnePJPblh5I0re3pTLw4A8B6YUPsUpDZS4qwrKVQ62qnzhCIXE5yTmvxzgZNqLWooXsh2L
	vXvoxYmAVds/cAi7x2Xmm8Ftss2sQK+n9VeQeDT9MHDVyK9Os1qs4B3kFdBCyDcIFAiMIOsGrVbA+
	TcVlnMrtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUV5l-0000lP-04; Tue, 12 Nov 2019 12:16:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUV5W-0000ko-4H
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 12:16:08 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57A3720818;
 Tue, 12 Nov 2019 12:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573560961;
 bh=PGMUsteCMC7dAWf+pA+tGpqOg+FC1KkakCiurKxYkCE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0odtGpXaoRlMlnYBicS2ZNqOPYoblOV3MPf75FsEeu9gXZZO+H474mZTiSXRNCkGK
 MTz0p5Oa//qMDAcwqBX/kG12U8FLc2E0DaTOAeXlpNIxQJpqaU2j8DVCteA9QpnJW3
 OJlSySHpmO4yKEzLaZ4+bT/fnJ+YzCTEtmsZ7RXk=
Date: Tue, 12 Nov 2019 13:15:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Subject: Re: [PATCH 2/2] arm: dts: sunxi: Add Neutis N5H3 support
Message-ID: <20191112121558.GZ4345@gilmour.lan>
References: <1573048998-8913-1-git-send-email-georgii.staroselskii@emlid.com>
 <1573048998-8913-3-git-send-email-georgii.staroselskii@emlid.com>
MIME-Version: 1.0
In-Reply-To: <1573048998-8913-3-git-send-email-georgii.staroselskii@emlid.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_041602_214045_D1697AE9 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2895443420303113221=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2895443420303113221==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="S4+Kf2w4CfEO117G"
Content-Disposition: inline


--S4+Kf2w4CfEO117G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Nov 06, 2019 at 05:03:18PM +0300, Georgii Staroselskii wrote:
> Emlid Neutis N5H3 is a version of Emlid Neutis SoM with H3 instead of H5
> inside.
>
> 6eeb4180d4b9 ("ARM: dts: sunxi: h3-h5: Add Bananapi M2+ v1.2 device")
> was used as reference.
>
> Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
> ---
>  arch/arm/boot/dts/Makefile                         |  1 +
>  .../dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts    | 61 ++++++++++++++++++++++
>  arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi  | 11 ++++
>  3 files changed, 73 insertions(+)
>  create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
>  create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 3f13b88..c997b0c 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1119,6 +1119,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
>  	sun8i-h3-orangepi-plus2e.dtb \
>  	sun8i-h3-orangepi-zero-plus2.dtb \
>  	sun8i-h3-rervision-dvk.dtb \
> +	sun8i-h3-emlid-neutis-n5h3-devboard.dtb \

There's no need to duplicate the H3 in the name, we can just call it

sun8i-h3-emlid-neutis-n5-devboard.dts

Unless you expect some other boards named in a similar matter?

>  	sun8i-r16-bananapi-m2m.dtb \
>  	sun8i-r16-nintendo-nes-classic.dtb \
>  	sun8i-r16-nintendo-super-nes-classic.dtb \
> diff --git a/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts b/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
> new file mode 100644
> index 00000000..3b68750
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * DTS for Emlid Neutis N5 Dev board.
> + *
> + * Copyright (C) 2019 Georgii Staroselskii <georgiii.staroselskii@emlid.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "sun8i-h3-emlid-neutis-n5h3.dtsi"
> +
> +/ {
> +	model = "Emlid Neutis N5H3 Developer board";
> +	compatible = "emlid,neutis-n5h3-devboard",
> +		     "emlid,neutis-n5h3",
> +		     "allwinner,sun8i-h3";

Same remarks for the compatible, we have the h3 compatible here to
differentiate between the two.

You should also document this combination to
Documentation/devicetree/bindings/arm/sunxi.yaml.

> +
> +	vdd_cpux: gpio-regulator {
> +		compatible = "regulator-gpio";
> +		regulator-name = "vdd-cpux";
> +		regulator-type = "voltage";
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-min-microvolt = <1100000>;
> +		regulator-max-microvolt = <1300000>;
> +		regulator-ramp-delay = <50>; /* 4ms */
> +		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> +		gpios-states = <0x1>;
> +		states = <1100000 0x0
> +			  1300000 0x1>;

While DTC outputs the same thing, and it works, you should make this
an array of 2 items of 2 cells, instead of a array of 1 item of 4
cells.

Like this: states = <1100000 0x0>, <1300000 0x1>;

While this doesn't change anything with DTC, other cases (like DT
validation) care about this.

Look good otherwise.
Maxime

--S4+Kf2w4CfEO117G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcqifgAKCRDj7w1vZxhR
xTJhAP49LjPXdh7Zbpwskihx63FPZvkalpokgo8b0SAu4hNfbwD/TMzFgq9ol9tZ
/H2mEYDlySZJBal4r3VClVq77VP+Dg8=
=0hUb
-----END PGP SIGNATURE-----

--S4+Kf2w4CfEO117G--


--===============2895443420303113221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2895443420303113221==--

