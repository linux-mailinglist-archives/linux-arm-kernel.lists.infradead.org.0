Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAC36EED8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=spLcwDTrTW9TBatMr3/Gs8s6Kb9LK78bMuuPVfzLfyM=; b=MKFOGnSoNJX4++sX2npzsaHrk
	bu2b4mvCFl6OkACpfoaBzlAZZozp49V1ZGxoWPJ3Qolevxqp5e/3jMDBmsoUFFr4BBQ5s1iLeGrmX
	P8qULPw4nl5bMR45f53jMKmVxNZ2k0bzd3itmnuN4kpDRiEawYzgZjKTWYhDNBesALXVlJ44zxOHL
	RP3I4xtLpbOcfmi5d0AsgL0EnMYu59fyCDOC4x2dATV5wOxG7QUF/V5A7wq8V/8NSCCPzD+tq5/GF
	ydeQdRx+IQHSXKoGpd27IqNHpG61MJxFMNTzACnli/v+LP/cGxo1eaUxG61o/xqnCqzxPGSfqrMBc
	wK0//GlLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holyl-0004nP-6T; Sat, 20 Jul 2019 09:48:35 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holyV-0004mJ-6a
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:48:20 +0000
X-Originating-IP: 91.163.65.175
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 27AF520006;
 Sat, 20 Jul 2019 09:48:15 +0000 (UTC)
Date: Sat, 20 Jul 2019 11:48:14 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 6/8] ARM: sunxi: dts: s3/s3l/v3: add DTSI files for
 S3/S3L/V3 SoCs
Message-ID: <20190720094814.s6qik6ja2ympwpmp@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-7-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190713034634.44585-7-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_024819_396391_94F5E17D 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============8655034191307318067=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8655034191307318067==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tszo4ocuvok5y3y2"
Content-Disposition: inline


--tszo4ocuvok5y3y2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 13, 2019 at 11:46:32AM +0800, Icenowy Zheng wrote:
> The Allwinner S3/S3L/V3 SoCs all share the same die with the V3s SoC,
> but with more GPIO wired out of the package.
>
> Add DTSI files for these SoCs. The DTSI file for V3 just replaces the
> pinctrl compatible string, and the S3/S3L DTSI files just include the V3
> DTSI file.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> No changes since v2.
>
>  arch/arm/boot/dts/sun8i-s3.dtsi  |  6 ++++++
>  arch/arm/boot/dts/sun8i-s3l.dtsi |  6 ++++++
>  arch/arm/boot/dts/sun8i-v3.dtsi  | 14 ++++++++++++++
>  3 files changed, 26 insertions(+)
>  create mode 100644 arch/arm/boot/dts/sun8i-s3.dtsi
>  create mode 100644 arch/arm/boot/dts/sun8i-s3l.dtsi
>  create mode 100644 arch/arm/boot/dts/sun8i-v3.dtsi
>
> diff --git a/arch/arm/boot/dts/sun8i-s3.dtsi b/arch/arm/boot/dts/sun8i-s3.dtsi
> new file mode 100644
> index 000000000000..0f41a25ecb30
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-s3.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
> + */
> +
> +#include "sun8i-v3.dtsi"
> diff --git a/arch/arm/boot/dts/sun8i-s3l.dtsi b/arch/arm/boot/dts/sun8i-s3l.dtsi
> new file mode 100644
> index 000000000000..0f41a25ecb30
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-s3l.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
> + */
> +
> +#include "sun8i-v3.dtsi"
> diff --git a/arch/arm/boot/dts/sun8i-v3.dtsi b/arch/arm/boot/dts/sun8i-v3.dtsi
> new file mode 100644
> index 000000000000..6ae8645ade50
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-v3.dtsi
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
> + */
> +
> +#include "sun8i-v3s.dtsi"
> +
> +&ccu {
> +	compatible = "allwinner,sun8i-v3-ccu";
> +};
> +
> +&pio {
> +	compatible = "allwinner,sun8i-v3-pinctrl";
> +};

Is there any difference between the S3, S3L and V3?

If not, then we don't need all those DTSI, just add the v3

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--tszo4ocuvok5y3y2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTLjXgAKCRDj7w1vZxhR
xTY0AQCfKKwr5BMF1G0iTCcBBIUMTNJiFvicExk21XH3zaUU7QEA9un9GhY0LMVJ
LLxdD1eA6DtZDwv0b2+187+cUvotawI=
=7um4
-----END PGP SIGNATURE-----

--tszo4ocuvok5y3y2--


--===============8655034191307318067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8655034191307318067==--

