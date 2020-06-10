Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F18B1F513B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FZYekltG8QGu68Kkm0pY0WWG4tOvkh+kJXnQv67l1io=; b=slC0vEgnJJjmRNJP9h+niwtVy
	xXNJIrB/bBFrHGV7vG4ClBJiLLenuiv2OFdGyNS6ADiHIiFH74ydaEZbWTptMiN0nVXTRYyJVIKhF
	1AB18tRGtFPIOVIm8tY4vhRV06kuniePct/G0cJz55w1szBo1v2IpHBY5j2CS6YRiO0A+0SLFfGFk
	Hh6PnWZOrJVD8vx/97IQKmarD5TXonukhSny1k0uityMF7KlvaiXSmc/Q0H2ijW3sXRWtltg/TZpv
	O5pi247VVyeKRNyMj9KSWNC6DLA0BvVSIerNR2DjUchhZiV34eyvA2SRhddYTbWUDll9dkR1IgTzA
	5zamSj63g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jix8v-0005P1-Gg; Wed, 10 Jun 2020 09:35:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jix8k-0005OV-Gq
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:35:23 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09F1D204EC;
 Wed, 10 Jun 2020 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591781722;
 bh=shHPBdfvjaI3EtJEb11KzerLLdcslgIsNxCBWh5ZjTk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dSd2ibiL2vMc86UmO2AWfVqGqe4bzDItFjD7ASUjGKhEH1viqqOEllRu28FRJgL4Z
 AzRb1KJdtipjF98or7O09ES6CB/h1kqJU30EIa74mjabfcs7o37qmbIIYGMI5rbwwD
 jPUTRVpThKrmEHixtenNWxrvZmNr4D7Qdmb/9fDY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jix8i-001jn4-H9; Wed, 10 Jun 2020 10:35:20 +0100
MIME-Version: 1.0
Date: Wed, 10 Jun 2020 10:35:20 +0100
From: Marc Zyngier <maz@kernel.org>
To: Daniel Palmer <daniel@0x0f.com>
Subject: Re: [PATCH v2 3/5] ARM: mstar: Add infinity/mercury series dtsi
In-Reply-To: <20200610090421.3428945-4-daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-4-daniel@0x0f.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <35ec0a2bf066509aa1b4b11d3eac2657@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: daniel@0x0f.com, k@japko.eu, tim.bird@sony.com,
 devicetree@vger.kernel.org, daniel@thingy.jp, robh+dt@kernel.org,
 linux@armlinux.org.uk, sam@ravnborg.org, linus.walleij@linaro.org,
 heiko.stuebner@theobroma-systems.com, mripard@kernel.org, lkundrak@v3.sk,
 stephan@gerhold.net, broonie@kernel.org, allen.chen@ite.com.tw,
 mchehab+huawei@kernel.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 corbet@lwn.net, arnd@arndb.de, akpm@linux-foundation.org,
 armlinux@m.disordat.com, benjamin.gaignard@linaro.org, gregory.0xf0@gmail.com,
 bgolaszewski@baylibre.com, yamada.masahiro@socionext.com,
 ndesaulniers@google.com, will@kernel.org, nhuck15@gmail.com,
 natechancellor@gmail.com, ardb@kernel.org, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_023522_612114_4CE56F7E 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck15@gmail.com>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 allen <allen.chen@ite.com.tw>, tim.bird@sony.com,
 Will Deacon <will@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Mark Brown <broonie@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Daniel,

On 2020-06-10 10:04, Daniel Palmer wrote:
> Adds initial dtsi for the base MStar ARMv7 SoCs, family dtsis for 
> infinity
> and mercury families, and then some chip level dtsis for chips in those
> families.
> 
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>
> ---
>  MAINTAINERS                              |  3 +
>  arch/arm/boot/dts/infinity-msc313.dtsi   | 14 +++++
>  arch/arm/boot/dts/infinity.dtsi          | 10 ++++
>  arch/arm/boot/dts/infinity3-msc313e.dtsi | 14 +++++
>  arch/arm/boot/dts/infinity3.dtsi         | 10 ++++
>  arch/arm/boot/dts/mercury5-ssc8336n.dtsi | 14 +++++
>  arch/arm/boot/dts/mercury5.dtsi          | 10 ++++
>  arch/arm/boot/dts/mstar-v7.dtsi          | 71 ++++++++++++++++++++++++
>  8 files changed, 146 insertions(+)
>  create mode 100644 arch/arm/boot/dts/infinity-msc313.dtsi
>  create mode 100644 arch/arm/boot/dts/infinity.dtsi
>  create mode 100644 arch/arm/boot/dts/infinity3-msc313e.dtsi
>  create mode 100644 arch/arm/boot/dts/infinity3.dtsi
>  create mode 100644 arch/arm/boot/dts/mercury5-ssc8336n.dtsi
>  create mode 100644 arch/arm/boot/dts/mercury5.dtsi
>  create mode 100644 arch/arm/boot/dts/mstar-v7.dtsi

[...]

> diff --git a/arch/arm/boot/dts/mstar-v7.dtsi 
> b/arch/arm/boot/dts/mstar-v7.dtsi
> new file mode 100644
> index 000000000000..0fccc4ca52a4
> --- /dev/null
> +++ b/arch/arm/boot/dts/mstar-v7.dtsi
> @@ -0,0 +1,71 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 thingy.jp.
> + * Author: Daniel Palmer <daniel@thingy.jp>
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +	interrupt-parent = <&gic>;
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a7";
> +			reg = <0x0>;
> +		};
> +	};
> +
> +	arch_timer {
> +		compatible = "arm,armv7-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2)
> +				| IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2)
> +				| IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2)
> +				| IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2)
> +				| IRQ_TYPE_LEVEL_LOW)>;
> +		clock-frequency = <6000000>;

This is 2020, and not 2012 anymore. The frequency should be set
by your favourite bootloader.

> +	};
> +
> +	pmu {
> +		compatible = "arm,cortex-a7-pmu";
> +		interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	soc: soc {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		gic: interrupt-controller@16001000 {
> +			compatible = "arm,cortex-a7-gic";
> +			#interrupt-cells = <3>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			interrupt-controller;
> +			reg = <0x16001000 0x1000>,
> +			      <0x16002000 0x1000>;

The GICC region is likely to be 8kB, and not 4kB.
Missing GICH and GICV regions, as well as the maintenance interrupt.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
