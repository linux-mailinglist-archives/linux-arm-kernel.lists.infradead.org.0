Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CC4F8F38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 13:05:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lfEDcAaT8E3r3ofYbMEYcZhDQX4pgi6aGf4im28h5M0=; b=hI0Bt5/CpjBRcRXqx5pj92frf
	Zpvynqli+uln+FjEnn/WTBsdN5cqYlBu2C55w2NI1bbLSBOO7sfjfHfABAsVYpJpudY5kbxS5IhBY
	1vvSBZVObYzwQViRx30kN812sPBA3s6wqNSWYWtsXE8fn6oLHQxaPvA9mvCm3bL3/e2FNMycJcNZD
	uc9kvZdEIFWw8WlOTTrBD7kYgcOAD9I+/YdgvRLo8feoD3IFcJ/ohX4KCuoiPe8OGBWa8Ku5MHdDO
	EC8Vfv0VNmTLDValWxehY7NAwOWIDx2Q9YKMM4nTr7T0nzVxCQQnjJN7sMgvPe42Uzse2ifxJoMRB
	OKEK6IgbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUUv4-00040t-Mx; Tue, 12 Nov 2019 12:05:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUuo-00040X-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 12:05:00 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B09BD206BB;
 Tue, 12 Nov 2019 12:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573560298;
 bh=8CyrwQqWuWtGzFOGNOd9CaCBPI1ujJWiRZuhD4hF3RU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xowkB0eogD9EPaWr1+/4AS9/UT33jJFdwPD+Sr+t4LeR5XQv3/YjNpa69e9Mv115t
 WWTqSnJHBd3pKI62UE0lr6aq29CLVUbnOEhlhoD9LiBKC5SoM6LgYSTPNs24DCApPn
 UR2H9XB8BrZDPsxlGIKP8kSCJCM8sE/yuOhleG0Y=
Date: Tue, 12 Nov 2019 13:04:55 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v4 2/2] ARM64: dts: allwinner: add pineh64 model B
Message-ID: <20191112120455.GY4345@gilmour.lan>
References: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
 <1573316433-40669-3-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <1573316433-40669-3-git-send-email-clabbe@baylibre.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_040458_639857_AC02B012 
X-CRM114-Status: GOOD (  18.19  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4607361139158831451=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4607361139158831451==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nbjgUHX6eyHhY7pW"
Content-Disposition: inline


--nbjgUHX6eyHhY7pW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Nov 09, 2019 at 04:20:33PM +0000, Corentin Labbe wrote:
> This patch adds the model B of the PineH64.
> The model B is smaller than the pine64 model A and has no PCIE slot.
>
> The only devicetree difference with the pineH64 model A, is the PHY
> regulator and the HDMI connector node.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../devicetree/bindings/arm/sunxi.yaml        |  5 +++++
>  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
>  .../allwinner/sun50i-h6-pine-h64-modelB.dts   | 21 +++++++++++++++++++
>  3 files changed, 27 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
>
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> index b8ec616c2538..227217bf28df 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -604,6 +604,11 @@ properties:
>            - const: pine64,pine-h64-modelA
>            - const: allwinner,sun50i-h6
>
> +      - description: Pine64 PineH64 model B
> +        items:
> +          - const: pine64,pine-h64-modelB
> +          - const: allwinner,sun50i-h6
> +
>        - description: Pine64 LTS
>          items:
>            - const: pine64,pine64-lts
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index d2418021768b..bda89b9ccb4a 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelB.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
> new file mode 100644
> index 000000000000..063a85223faa
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> +/*
> + * Copyright (C) 2019 Corentin LABBE <clabbe@baylibre.com>
> + */
> +
> +#include "sun50i-h6-pine-h64.dts"
> +
> +/ {
> +	model = "Pine H64 model B";
> +	compatible = "pine64,pine-h64-modelB", "allwinner,sun50i-h6";

compatibles are usually lowercase, what about pine64,pine-h64-model-b?

Maxime

--nbjgUHX6eyHhY7pW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcqf5wAKCRDj7w1vZxhR
xdIeAQCeSktgU0WsEK7fUaiXepU4KkkNODgAAs3FAXtPNVNcEwD9HtsCpDRw2/qL
Yzl0aKt3LmMY77sWGMydllvddxcgdg4=
=2aPf
-----END PGP SIGNATURE-----

--nbjgUHX6eyHhY7pW--


--===============4607361139158831451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4607361139158831451==--

