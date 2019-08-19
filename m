Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DFA91F81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5pxBMNnz2O0LFW47OnL30q4GnACVS3bZqcvBc3nneI=; b=btsPS/pLce6zzt
	bcXOp+YC/VQaifkyUrVUlH6gMSZU5Xv5Q9hUUppEIMXlK0sHpDwOgdz/ONh+YYSCT2e/NxfIliSkl
	oHXDrBveqclZP0SZKM/HVZ+Xar0rTCPJaJAlZbDX1tOg44RIrHxi4Ob74Qiek4vbX1CVX5tGPFfzL
	xJu1Imf63V4t+WvGh455PWD2B96kiXndrAOwer+RSDJ1rCHqk31gW7UMupj2N09GRAutuWMyU2+rx
	Ka3rz3wG74r1zXNZJxQDN+4GwRfZ+9pRSM2j/Clm2gmJQM/F0gxCGP4WTRIbBe/1jzRCr8DeEUu8p
	cCHzRuTO/3IMZgiZWiig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdUy-0003C2-RD; Mon, 19 Aug 2019 08:58:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdUl-0003Ba-Ro
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:58:33 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B85C42086C;
 Mon, 19 Aug 2019 08:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566205111;
 bh=dvHPVhvUax2+B3bDV3fweqBjG7vvPVh6dCKZsep59Pw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KiLkiCT8nfWpjVu1iC54rmDHnjngi43bXYjsRRKC79q410E2fqlD6BUOcKlmXkQ8k
 hOcHYlDT3r7pjhk3Af/LeKPsdNsFdTLLg4ku+Bs+MnuqV6hkzvO6P0GtrVG6ZlLOM6
 vpc03XVU/OIyr5Nmv9U3xE70ZJudAW4z5er7DAcg=
Date: Mon, 19 Aug 2019 10:58:17 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v2 3/6] arm64: dts: fsl: Add device tree for S32V234-EVB
Message-ID: <20190819085816.GI5999@X250>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
 <20190809112853.15846-4-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809112853.15846-4-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_015831_948232_95DC1F29 
X-CRM114-Status: GOOD (  19.35  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Dan Nica <dan.nica@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 11:29:12AM +0000, Stefan-gabriel Mirea wrote:
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
>  .../boot/dts/freescale/fsl-s32v234-evb.dts    |  24 ++++

The 'fsl-' prefix can be saved here, so that we can distinguish three
families by starting string: imx??? for i.MX, fsl-??? for LayerScape,
and s32??? for S32.

>  .../arm64/boot/dts/freescale/fsl-s32v234.dtsi | 130 ++++++++++++++++++
>  3 files changed, 156 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/fsl-s32v234-evb.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/fsl-s32v234.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index c043aca66572..3af29b58a833 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -26,3 +26,5 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
> +
> +dtb-$(CONFIG_ARCH_S32) += fsl-s32v234-evb.dtb
> diff --git a/arch/arm64/boot/dts/freescale/fsl-s32v234-evb.dts b/arch/arm64/boot/dts/freescale/fsl-s32v234-evb.dts
> new file mode 100644
> index 000000000000..92bf6c5563a3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/fsl-s32v234-evb.dts
> @@ -0,0 +1,24 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright 2015-2016 Freescale Semiconductor, Inc.
> + * Copyright 2016-2017 NXP
> + */
> +
> +/dts-v1/;
> +#include "fsl-s32v234.dtsi"
> +
> +/ {
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
> diff --git a/arch/arm64/boot/dts/freescale/fsl-s32v234.dtsi b/arch/arm64/boot/dts/freescale/fsl-s32v234.dtsi
> new file mode 100644
> index 000000000000..6d686d3ba997
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/fsl-s32v234.dtsi
> @@ -0,0 +1,130 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright 2015-2016 Freescale Semiconductor, Inc.
> + * Copyright 2016-2018 NXP
> + */
> +
> +/memreserve/ 0x80000000 0x00010000;
> +
> +/ {
> +	model = "Freescale S32V234";

The 'model' is usually used in board level DTS to describe the board.

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

Please have a newline between nodes.

> +		cpu1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x1>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0x80000000>;
> +			next-level-cache = <&cluster0_l2_cache>;
> +		};
> +		cpu2: cpu@100 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x100>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0x80000000>;
> +			next-level-cache = <&cluster1_l2_cache>;
> +		};
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
> +			ranges;
> +
> +			uart0: serial@40053000 {
> +				compatible = "fsl,s32-linflexuart";
> +				reg = <0x0 0x40053000 0x0 0x1000>;
> +				interrupts = <0 59 1>;

Please use GIC_SPI and IRQ_TYPE_xxx defines to make it more readable.

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
> +				compatible = "fsl,s32-linflexuart";
> +				reg = <0x0 0x400bc000 0x0 0x1000>;
> +				interrupts = <0 60 1>;
> +				status = "disabled";
> +			};
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <1 13 0xf08>,
> +			     <1 14 0xf08>,
> +			     <1 11 0xf08>,
> +			     <1 10 0xf08>;
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
> +		interrupts = <1 9 0xf04>;
> +	};

We usually put these core platform devices prior to 'soc' node.

Shawn

> +};
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
