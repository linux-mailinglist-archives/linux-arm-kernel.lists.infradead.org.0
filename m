Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1355DE5D7D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 15:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/hclb3+d8dTq8PGws9ZZsYAF6kUVnQ+BhWqUc4JDyM=; b=eCdfrbUW4oGAHi
	AY+JQqjcikvPi8NxenzKY1xfjol51EpTLxaN+2TiyY/d11CC7KpjdUudIsGReXF/JQAxBRn7gQvrb
	IiR1kjrfNuMP6TNbYVxCIlo+DNtCTpZuDG3O5Xny5+HqwG6lP8hupyRF+M5OamRPm3OFadkLYM2E+
	MHLCQ26wXcpIJ1DxsgMu8KbGU5kQdEz9m7ny//Su8k/rLvB7wPqgsIq71MEPwyWi4U50NLM8VKteo
	1DlQ7zP+4JU0dCcV+X6x0RFhnszTKKnaCWsEpfUQkjqElESA3pHyXWTGvqNRUT8H9bQ2nqeCbgkcC
	RQOG/2m7V2ZjjI5D4hvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOMLf-0002H5-Eg; Sat, 26 Oct 2019 13:43:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOMLV-0002Gi-Cq
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 13:43:10 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F1D720867;
 Sat, 26 Oct 2019 13:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572097389;
 bh=MgueLOzk4O1/lxLZq3IymJWKFL5VawUHYQ3qLQlgLHs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DnHW0pSoT8+Zn7M8REC6SGCFLOideIS0medhl9AZz5hH/cF7g1leZ5J/n9uKTxKXW
 c6wqJov0kwY0K+zpLxiRDCSEicZiYzri3jG6+WmVDomOUGozldlo1Ykmwu67uIYP0l
 JIudsG03+oi70SteTexGVNJR4ulojO1VWYARnEDg=
Date: Sat, 26 Oct 2019 21:42:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v7 4/5] arm64: dts: fsl: Add device tree for S32V234-EVB
Message-ID: <20191026134243.GP14401@dragon>
References: <1571230107-8493-1-git-send-email-stefan-gabriel.mirea@nxp.com>
 <1571230107-8493-5-git-send-email-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571230107-8493-5-git-send-email-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_064309_481034_56AE2283 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, corbet@lwn.net,
 gregkh@linuxfoundation.org, jslaby@suse.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>, robh+dt@kernel.org,
 Dan Nica <dan.nica@nxp.com>, linux-serial@vger.kernel.org,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 Larisa Grigore <Larisa.Grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:48:26PM +0300, Stefan-Gabriel Mirea wrote:
> From: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
> 
> Add initial version of device tree for S32V234-EVB, including nodes for the
> 4 Cortex-A53 cores, AIPS bus with UART modules, ARM architected timer and
> Generic Interrupt Controller (GIC).
> 
> Keep SoC level separate from board level to let future boards with this SoC
> share common properties, while the dts files will keep board-dependent
> properties.
> 
> Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
> Signed-off-by: Mihaela Martinas <Mihaela.Martinas@freescale.com>
> Signed-off-by: Dan Nica <dan.nica@nxp.com>
> Signed-off-by: Larisa Grigore <Larisa.Grigore@nxp.com>
> Signed-off-by: Phu Luu An <phu.luuan@nxp.com>
> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   2 +
>  arch/arm64/boot/dts/freescale/s32v234-evb.dts |  25 ++++
>  arch/arm64/boot/dts/freescale/s32v234.dtsi    | 139 ++++++++++++++++++
>  3 files changed, 166 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/s32v234-evb.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/s32v234.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 93fce8f0c66d..730209adb2bc 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -32,3 +32,5 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
> +
> +dtb-$(CONFIG_ARCH_S32) += s32v234-evb.dtb
> diff --git a/arch/arm64/boot/dts/freescale/s32v234-evb.dts b/arch/arm64/boot/dts/freescale/s32v234-evb.dts
> new file mode 100644
> index 000000000000..4b802518cefc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/s32v234-evb.dts
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright 2015-2016 Freescale Semiconductor, Inc.
> + * Copyright 2016-2017 NXP
> + */
> +
> +/dts-v1/;
> +#include "s32v234.dtsi"
> +
> +/ {
> +	model = "NXP S32V234-EVB2 Board";
> +	compatible = "fsl,s32v234-evb", "fsl,s32v234";
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/freescale/s32v234.dtsi b/arch/arm64/boot/dts/freescale/s32v234.dtsi
> new file mode 100644
> index 000000000000..37225191ccbf
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/s32v234.dtsi
> @@ -0,0 +1,139 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright 2015-2016 Freescale Semiconductor, Inc.
> + * Copyright 2016-2018 NXP
> + */
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/memreserve/ 0x80000000 0x00010000;
> +
> +/ {
> +	compatible = "fsl,s32v234";
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +	};
> +
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x0>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0x80000000>;
> +			next-level-cache = <&cluster0_l2_cache>;
> +		};
> +
> +		cpu1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x1>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0x80000000>;
> +			next-level-cache = <&cluster0_l2_cache>;
> +		};
> +
> +		cpu2: cpu@100 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x100>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0x80000000>;
> +			next-level-cache = <&cluster1_l2_cache>;
> +		};
> +
> +		cpu3: cpu@101 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x101>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0x80000000>;
> +			next-level-cache = <&cluster1_l2_cache>;
> +		};
> +
> +		cluster0_l2_cache: l2-cache0 {
> +			compatible = "cache";
> +		};
> +
> +		cluster1_l2_cache: l2-cache1 {
> +			compatible = "cache";
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>;
> +		/* clock-frequency might be modified by u-boot, depending on the
> +		 * chip version.
> +		 */
> +		clock-frequency = <10000000>;
> +	};
> +
> +	gic: interrupt-controller@7d001000 {
> +		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;
> +		interrupt-controller;
> +		reg = <0 0x7d001000 0 0x1000>,
> +		      <0 0x7d002000 0 0x2000>,
> +		      <0 0x7d004000 0 0x2000>,
> +		      <0 0x7d006000 0 0x2000>;
> +		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) |
> +					 IRQ_TYPE_LEVEL_HIGH)>;
> +	};
> +
> +	soc {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		compatible = "simple-bus";
> +		interrupt-parent = <&gic>;
> +		ranges;
> +
> +		aips0: aips-bus@40000000 {
> +			compatible = "simple-bus";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			interrupt-parent = <&gic>;
> +			reg = <0x0 0x40000000 0x0 0x7D000>;

We should consistently use lowercase for hex values in device tree.

I fixed it up during applying.

Shawn

> +			ranges;
> +
> +			uart0: serial@40053000 {
> +				compatible = "fsl,s32v234-linflexuart";
> +				reg = <0x0 0x40053000 0x0 0x1000>;
> +				interrupts = <GIC_SPI 59 IRQ_TYPE_EDGE_RISING>;
> +				status = "disabled";
> +			};
> +		};
> +
> +		aips1: aips-bus@40080000 {
> +			compatible = "simple-bus";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			interrupt-parent = <&gic>;
> +			reg = <0x0 0x40080000 0x0 0x70000>;
> +			ranges;
> +
> +			uart1: serial@400bc000 {
> +				compatible = "fsl,s32v234-linflexuart";
> +				reg = <0x0 0x400bc000 0x0 0x1000>;
> +				interrupts = <GIC_SPI 60 IRQ_TYPE_EDGE_RISING>;
> +				status = "disabled";
> +			};
> +		};
> +	};
> +};
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
