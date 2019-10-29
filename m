Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB123E8FF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZ7nSl6MnkoqZL+/UWOynyCrSY1UHLkyxcRXTll+RG0=; b=Cowzua11EKR4LY
	GiHkivl58/OOlNBPuX84Mn5NjlEKzOM0w4x3g1qCZw77xFJ0ZfG68suwGSCym4mL9SJJBMpq8IHfD
	afrckzljQhlnmWa2s5/agfH6IK28uEy0tS44aIvFHUS+AtRXRg761NY12ju1A0W6cs9s+tW16kUAO
	5z17WSc7pVWkIKeNDrev0EuZqXa8FT5F/URjLbwZTnh7xmLNrvPtZ1GrgFhIye98Z3wa3CEbxwJoV
	96yvXIp5oelVU4/hkjl75As5bA2Vsdl62weY+QVR0c/BAdSXaQ1OhBMRzwD3iAPF3ZXDiVujEd8Tx
	GLOTSLUJHpCC3RTp1sMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPX9e-0006Ws-Kd; Tue, 29 Oct 2019 19:27:46 +0000
Received: from mailoutvs30.siol.net ([185.57.226.221] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPX9T-0006VT-Ge
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 19:27:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id A4D1F5217E6;
 Tue, 29 Oct 2019 20:27:28 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id erKjFXoge42C; Tue, 29 Oct 2019 20:27:28 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 4259D521829;
 Tue, 29 Oct 2019 20:27:28 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id BDD29520F9A;
 Tue, 29 Oct 2019 20:27:24 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v2 2/2] ARM64: dts: allwinner: add pineh64 model A
Date: Tue, 29 Oct 2019 20:27:24 +0100
Message-ID: <2429102.hHRkGMXE12@jernej-laptop>
In-Reply-To: <1572376663-22023-3-git-send-email-clabbe@baylibre.com>
References: <1572376663-22023-1-git-send-email-clabbe@baylibre.com>
 <1572376663-22023-3-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_122735_714651_41C5D6E2 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.221 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, maxime.ripard@bootlin.com,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne torek, 29. oktober 2019 ob 20:17:43 CET je Corentin Labbe napisal(a):
> This patch adds the model A of the PineH64.
> The model A has the same size of the pine64 and has a PCIE slot.
> 
> The only devicetree difference with the pineH64 model B, is the PHY
> regulator.
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../devicetree/bindings/arm/sunxi.yaml        |  5 ++++
>  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
>  .../allwinner/sun50i-h6-pine-h64-modelA.dts   | 26 +++++++++++++++++++
>  3 files changed, 32 insertions(+)
>  create mode 100644
> arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml
> b/Documentation/devicetree/bindings/arm/sunxi.yaml index
> 9a1e4992b9e9..0059925a3395 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -594,6 +594,11 @@ properties:
>            - const: pine64,pine64-plus
>            - const: allwinner,sun50i-a64
> 
> +      - description: Pine64 PineH64 model A
> +        items:
> +          - const: pine64,pine-h64-modelA
> +          - const: allwinner,sun50i-h6
> +
>        - description: Pine64 PineH64 model B
>          items:
>            - const: pine64,pine-h64-modelB
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile
> b/arch/arm64/boot/dts/allwinner/Makefile index d2418021768b..6bda5d9961c8
> 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelA.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts
> b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts new file mode
> 100644
> index 000000000000..fef47687c85e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts
> @@ -0,0 +1,26 @@
> +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> +/*
> + * Copyright (C) 2019 Corentin LABBE <clabbe@baylibre.com>
> + */
> +
> +#include "sun50i-h6-pine-h64.dts"
> +
> +/ {
> +	model = "Pine H64 model A";
> +	compatible = "pine64,pine-h64-modelA", "allwinner,sun50i-h6";
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

You forgot to include node mentioned here:
https://lkml.org/lkml/2019/8/16/309

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
