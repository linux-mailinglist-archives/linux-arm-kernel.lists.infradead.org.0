Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5506189A03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ar8FpPW0FaXI7yRRPlGaf1l+5BsqItxUKSau5uR5cc=; b=ps3cyiHjA2blY7aXt1Q1CbhG/
	hFI/r2Lu0nBVhNJ8xALbJkNExCsjzySVcMlbp0OIQJwmpXtxV48DnLpBYgbITHUdhf5gqvywXEYLM
	kX84jlaauNm8sg4PIyZeweB/XpZLZuurUgllAi0f61owOC7RzSWqu4mAxEM6P9Mo9WOQI+PczLVJQ
	uZ46ibMF3gRbLaan/1S+zR8aZBtcYnJ6tDGl5govbGRXQtnrV9DbdUM9bpwurLS0KjJmrbI9gYsvP
	IYfKD7+NzWGNHqGJEBJb3NA4sLTzNZSAS2HL4tw6MIej6r+J/MLK5rJSPscIOc+Y5xWYKSJbncr8t
	Wqzm+ErbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6oK-0000Gy-3t; Mon, 12 Aug 2019 09:40:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6o7-00088C-Jm
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:40:05 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C5CA20842;
 Mon, 12 Aug 2019 09:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565602803;
 bh=/plNdRQRHBEq6qvxvso4EuN5b9FnPD1xRMuPGqmRwTA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SLuOei9lChDsYwwW7g1GJU+7p3XrwM5Yxo08WjXwxfJgJJuhMLFNtTab71jhLTaa5
 JUgN0eOQ3JwQ6S8DjBLqiDQ9tq27o8mLarficjY5umbrndouUDLXFmm0lhaowZQxA+
 lkDZ37T2Kzzg73poMkUp8sZfqTlzPj/echbiV33g=
Date: Mon, 12 Aug 2019 11:40:00 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH] ARM64: dts: allwinner: Add devicetree for pine H64
 modelA evaluation board
Message-ID: <20190812094000.ebdmhyxx7xzbevef@flea>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_024003_699279_BB678973 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3415880587878195743=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3415880587878195743==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qxku4lofbephj3it"
Content-Disposition: inline


--qxku4lofbephj3it
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 08, 2019 at 10:42:53AM +0200, Corentin Labbe wrote:
> This patch adds the evaluation variant of the model A of the PineH64.
> The model A has the same size of the pine64 and has a PCIE slot.
>
> The only devicetree difference with current pineH64, is the PHY
> regulator.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
>  .../sun50i-h6-pine-h64-modelA-eval.dts        | 26 +++++++++++++++++++
>  2 files changed, 27 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
>
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index f6db0611cb85..9a02166cbf72 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -25,3 +25,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelA-eval.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> new file mode 100644
> index 000000000000..d8ff02747efe
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> @@ -0,0 +1,26 @@
> +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> +/*
> + * Copyright (C) 2019 Corentin Labbe <clabbe.montjoie@gmail.com>
> + */
> +
> +#include "sun50i-h6-pine-h64.dts"
> +
> +/ {
> +	model = "Pine H64 model A evaluation board";
> +	compatible = "pine64,pine-h64-modelA-eval", "allwinner,sun50i-h6";
> +
> +	reg_gmac_3v3: gmac-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-gmac-3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		startup-delay-us = <100000>;
> +		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +};
> +
> +&emac {
> +	phy-supply = <&reg_gmac_3v3>;
> +};

I might be missing some context here, but I'm pretty sure that the
initial intent of the pine h64 DTS was to support the model A all
along.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qxku4lofbephj3it
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVEz8AAKCRDj7w1vZxhR
xVT5AQCmtGrOG8xFK95J8ZjmGV7HZxfxvNxV172wPtPegEHT2gEAtbdxFg5Ppsz/
TgtO+rT2XvcyllgsUSCaps9xmEidaAY=
=GlSZ
-----END PGP SIGNATURE-----

--qxku4lofbephj3it--


--===============3415880587878195743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3415880587878195743==--

