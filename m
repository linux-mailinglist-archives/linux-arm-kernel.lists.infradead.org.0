Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AD71E0906
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0gb6lrN2juiu8XXGvXcvVg3u6WUPWCc9RjXehR2B6bw=; b=ZmolAbL/Tsp0PlFXdbFe+sA7M
	UxAVqXC5n83xow/QttDBBOKa7zvNgu/UTL/7jLX+GJ2PMbgHrobkJfQSpGxdxEVrKrAc1m+a2GOo2
	ZD49EhEQ6F6W5wIDN1q1P66agP1ruZvANbvXycS0mev8NvUl2MDyCMj1SGcizv8Z3PIAA7miJ1uaV
	Yp68CjiZwR7lzLpxLMk2R6O0r8WYHMM4kYf4MwAB4Rdqya7SxCAoT7QJ0wGfNoGwa8IRjAATHcH64
	bYBZwCcWm62ZgifZGFYLo0rUT+x9mzAvyIdYqloqvcxuLnXTUUmMSdFl/8crNf5aQipDAxzlgrCig
	+/OiMZwsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8da-00051w-Qs; Mon, 25 May 2020 08:39:10 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8dO-0004yV-Ln
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:39:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5E846580667;
 Mon, 25 May 2020 04:38:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 25 May 2020 04:38:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Ri9qjiyBiEOXkk9sDHg2CFYrqxt
 dn6182rnMUiHzyQg=; b=wPjwDdTkJR4Lp6Yfr/SrGcmK14AkrgGuJKhIUhXtOO7
 kMZI1RHjkF5E7Wzsn7OUnTMhAUKVaLhgbaPTd9DNASGUT+1KlrA8rOgSRxKao7kL
 u+72wmN5nSMzn3/Ghcip9MBKf7R4UjuX3nCzCwR5ffkvMkEBNZpFhAo0uZV5psy7
 981pfkM7r85+Ts+/ZQIAyCjlLBK8eVisb3tt2gYxYtdKlXSW70olDxKvCbzcFLLI
 6hTKRyT+GC28s+5K9P9KRDrioiCnMzxTQcKGIfHnTky10M7eocaOywIYm2TaQL3v
 OsglDFb7zn5QxjszzTRsRrl6nqsjKks7mcWVTopGknQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Ri9qji
 yBiEOXkk9sDHg2CFYrqxtdn6182rnMUiHzyQg=; b=uIft9tDeyiLzqqol7PCgsf
 lqMFLj8KRw2qT5IU6ChMSbZbl6uwfC3bZ4KnK+8WjG3ZgI8k1VpJDSm8QTZOH1B2
 x97ycbKQZgOSTENs7sfCiWAz3ZIROAFQSgnhVXVdCrY38ilZzDIuyKFz7yeAA7RO
 s6xH68rFCQz7K1HlSsZtf105gFVsKWHa8aOoyvYy0t/TrJct4lD4tUBMbufezhF0
 j0tBguvumOmy4h2rRA7FNvicKKvvjAZ3AM/IsP+0iayfF+NFS/Fhk5+ltsNKDtnI
 UP1A9TQcNenYXY/pvU4PF2TptCErYeKO7R0hI6D/hGNUMuQvc5BdVXVKezaVAoTg
 ==
X-ME-Sender: <xms:HoTLXjW0aGOkAZeejOU6kHnP1qaX3BZj41LQ9Ky5fi_KmAKMY8lcMA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvtddgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
 gfevnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:HoTLXrl0TsQ8zSmmJJv5ZgBg1ACl2BJlMUVdhISRxjEAd9M9UhfsZg>
 <xmx:HoTLXvZAMhI81gTw0m3c6MGE1AFAhP0m_KEUMdcjURChQqeSMryuqw>
 <xmx:HoTLXuUYbmHWrpQMeXxaVRdAYYQbNZ92gl0D1SMVfWj_idoC3VraQg>
 <xmx:HoTLXmdWF94R7p0M4Dtu3DJ7Yw0f0LU2rF7tHaFpPkLX5px-1TZrCQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id EC7753280059;
 Mon, 25 May 2020 04:38:53 -0400 (EDT)
Date: Fri, 22 May 2020 17:31:24 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Frank Lee <frank@allwinnertech.com>
Subject: Re: [PATCH 4/4] arm64: allwinner: A100: add support for Allwinner
 Perf1 board
Message-ID: <20200522153124.patpj7r6hubjnpmu@gilmour.lan>
References: <20200522030743.10204-1-frank@allwinnertech.com>
 <20200522030743.10204-5-frank@allwinnertech.com>
MIME-Version: 1.0
In-Reply-To: <20200522030743.10204-5-frank@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_013858_853035_CB59E3A5 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, tiny.windzz@gmail.com, wens@csie.org,
 robh+dt@kernel.org, huangshuosheng@allwinnertech.com, p.zabel@pengutronix.de,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1289710211563575008=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1289710211563575008==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kztrqmb2mweybzef"
Content-Disposition: inline


--kztrqmb2mweybzef
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, May 22, 2020 at 11:07:43AM +0800, Frank Lee wrote:
> A100 perf1 is an Allwinner A100-based SBC, with the following features:
>=20
> - 1GiB DDR3 DRAM
> - AXP803 PMIC
> - 2 USB 2.0 ports
> - MicroSD slot and on-board eMMC module
> - on-board Nand flash
> - =B7=B7=B7
>=20
> Adds initial support for it, including the UART.
>=20
> Signed-off-by: Frank Lee <frank@allwinnertech.com>

Which bootloader have you used to test this?

> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
>  .../allwinner/sun50i-a100-allwinner-perf1.dts | 27 +++++++++++++++++++
>  2 files changed, 28 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a100-allwinner-p=
erf1.dts
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts=
/allwinner/Makefile
> index e4d3cd0ac5bb..ab780dbdd17b 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -14,6 +14,7 @@ dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-a64-pinephone-1.1.=
dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-a64-pinetab.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-a64-sopine-baseboard.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-a64-teres-i.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-a100-allwinner-perf1.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h5-bananapi-m2-plus.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h5-bananapi-m2-plus-v1.2.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h5-emlid-neutis-n5-devboard.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100-allwinner-perf1.dt=
s b/arch/arm64/boot/dts/allwinner/sun50i-a100-allwinner-perf1.dts
> new file mode 100644
> index 000000000000..32c9986920ed
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a100-allwinner-perf1.dts
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> +/*
> + * Copyright (c) 2020 Frank Lee <frank@allwinner.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "sun50i-a100.dtsi"
> +
> +/{
> +	model =3D "A100 perf1";

Having the same casing and the "brand" would be great here, so something li=
ke
"Allwinner A100 Perf1", or just Perf1 if that name is only ever going to be=
 used
on the A100

> +	compatible =3D "allwinner,a100-perf1", "allwinner,sun50i-a100";

This binding needs to be documented

Maxime

--kztrqmb2mweybzef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXsfwTAAKCRDj7w1vZxhR
xc2nAQDFNKJNA7ecm5DJ6UkyDw3MuKEnfkK0bTsPHjkFxg3Z7AEAzetqnArNS6h2
o2VsK50L0OmgTGiE3EBUOEPJj669XwE=
=5KLY
-----END PGP SIGNATURE-----

--kztrqmb2mweybzef--


--===============1289710211563575008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1289710211563575008==--

