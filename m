Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B08AF5DA4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 07:04:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JqVItXsxz0XJMpIpn+zwNtbm6e+gBossiOnlkGAUOgc=; b=mBrMkaGqqjJO8mRAoGPL8GMMt
	BRvjvB5DN5jVg5EY9DdDswiksGZQi5PUZaBXUNHj38N9Eg2bThth/bQr0M9m4djiooqYM0budLu+T
	05bTzjleIcTXrB1UjrKIU+xaH9bTVSgftss8aoAbzpEAgSTxd9/FwqRIV53F33GcQTruNwd1eZhtv
	Ln5aJfd4lsd+zc4Xic1yi2f+YiyJoNh8syDAL5MOh6jk/WM7+c1byyW/d49d7QYp16c1fwOHn0Zxm
	jOEL+2I5HAnUbcUciuZBMjVwVOHVs0AeNpPLwsNRUIPvDDotNHbvmmWgybIktODbxZz014PCyn57+
	Whtv5EiKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTJql-0004u7-O9; Sat, 09 Nov 2019 06:03:55 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTJqa-0004t6-LJ; Sat, 09 Nov 2019 06:03:47 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B22B2E6142BB3A3D090A;
 Sat,  9 Nov 2019 14:03:30 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Sat, 9 Nov 2019
 14:03:27 +0800
Subject: Re: [PATCH v1 2/7] arm64: dts: Use IRQ flags for legacy PCI IRQ
 interrupts
To: Andrew Murray <andrew.murray@arm.com>, Tsahee Zidenberg
 <tsahee@annapurnalabs.com>, Antoine Tenart <antoine.tenart@bootlin.com>,
 "Rob Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 "Brijesh Singh" <brijeshkumar.singh@amd.com>, Suravee Suthikulpanit
 <suravee.suthikulpanit@amd.com>, Tom Lendacky <thomas.lendacky@amd.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Robert Richter
 <rrichter@cavium.com>, Jayachandran C <jnair@caviumnetworks.com>, Shawn Guo
 <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>, Andy Gross
 <agross@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, Michal Simek <michal.simek@xilinx.com>
References: <20191104163834.8932-1-andrew.murray@arm.com>
 <20191104163834.8932-3-andrew.murray@arm.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5DC656A1.2000808@hisilicon.com>
Date: Sat, 9 Nov 2019 14:03:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20191104163834.8932-3-andrew.murray@arm.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_220345_439244_A2F4AADA 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/11/5 0:38, Andrew Murray wrote:
> Replace magic numbers used to describe legacy PCI IRQ interrupts
> with #define.
>
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   arch/arm64/boot/dts/al/alpine-v2.dtsi            |  6 +++---
>   arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts |  2 +-
>   arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts |  2 +-
>   arch/arm64/boot/dts/amd/amd-overdrive.dts        |  2 +-
>   arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi     | 12 +++++++-----
>   arch/arm64/boot/dts/amd/husky.dts                |  2 +-
>   arch/arm64/boot/dts/arm/fvp-base-revc.dts        | 10 +++++-----
>   arch/arm64/boot/dts/arm/juno-base.dtsi           | 12 +++++++-----
>   arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi    | 10 +++++-----
>   arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi   | 10 +++++-----
>   arch/arm64/boot/dts/hisilicon/hi3660.dtsi        | 10 +++++-----
>   arch/arm64/boot/dts/hisilicon/hip06.dtsi         | 10 +++++-----
>   arch/arm64/boot/dts/qcom/msm8998.dtsi            | 10 +++++-----
>   arch/arm64/boot/dts/qcom/qcs404.dtsi             | 10 +++++-----
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi         | 10 +++++-----
>   arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 11 ++++++-----
>   arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 11 ++++++-----
>   arch/arm64/boot/dts/xilinx/zynqmp.dtsi           | 12 +++++++-----
>   18 files changed, 80 insertions(+), 72 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/al/alpine-v2.dtsi b/arch/arm64/boot/dts/al/alpine-v2.dtsi
> index d5e7e2bb4e6c..35a540090026 100644
> --- a/arch/arm64/boot/dts/al/alpine-v2.dtsi
> +++ b/arch/arm64/boot/dts/al/alpine-v2.dtsi
> @@ -132,10 +132,10 @@
>   			#address-cells = <3>;
>   			#interrupt-cells = <1>;
>   			reg = <0x0 0xfbc00000 0x0 0x100000>;
> -			interrupt-map-mask = <0xf800 0 0 7>;
> +			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
>   			/* add legacy interrupts for SATA only */
> -			interrupt-map = <0x4000 0 0 1 &gic 0 53 4>,
> -					<0x4800 0 0 1 &gic 0 54 4>;
> +			interrupt-map = <0x4000 0 0 IRQ_INTA &gic 0 53 4>,
> +					<0x4800 0 0 IRQ_INTA &gic 0 54 4>;
>   			/* 32 bit non prefetchable memory space */
>   			ranges = <0x2000000 0x0 0xfe000000 0x0 0xfe000000 0x0 0x1000000>;
>   			bus-range = <0x00 0x00>;
> diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
> index 8e341be9a399..d4a8d3a5eebb 100644
> --- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
> +++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
> @@ -8,7 +8,7 @@
>   
>   /dts-v1/;
>   
> -/include/ "amd-seattle-soc.dtsi"
> +#include "amd-seattle-soc.dtsi"
>   
>   / {
>   	model = "AMD Seattle (Rev.B0) Development Board (Overdrive)";
> diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
> index 92cef05c6b74..e55254e714f2 100644
> --- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
> +++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
> @@ -8,7 +8,7 @@
>   
>   /dts-v1/;
>   
> -/include/ "amd-seattle-soc.dtsi"
> +#include "amd-seattle-soc.dtsi"
>   
>   / {
>   	model = "AMD Seattle (Rev.B1) Development Board (Overdrive)";
> diff --git a/arch/arm64/boot/dts/amd/amd-overdrive.dts b/arch/arm64/boot/dts/amd/amd-overdrive.dts
> index 41b3a6c0993d..4e09c9a2ceda 100644
> --- a/arch/arm64/boot/dts/amd/amd-overdrive.dts
> +++ b/arch/arm64/boot/dts/amd/amd-overdrive.dts
> @@ -7,7 +7,7 @@
>   
>   /dts-v1/;
>   
> -/include/ "amd-seattle-soc.dtsi"
> +#include "amd-seattle-soc.dtsi"
>   
>   / {
>   	model = "AMD Seattle Development Board (Overdrive)";
> diff --git a/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi b/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi
> index b664e7af74eb..efc6f42f3bd1 100644
> --- a/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi
> +++ b/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi
> @@ -5,6 +5,8 @@
>    * Copyright (C) 2014 Advanced Micro Devices, Inc.
>    */
>   
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
>   / {
>   	compatible = "amd,seattle";
>   	interrupt-parent = <&gic0>;
> @@ -213,12 +215,12 @@
>   			msi-parent = <&v2m0>;
>   			reg = <0 0xf0000000 0 0x10000000>;
>   
> -			interrupt-map-mask = <0xf800 0x0 0x0 0x7>;
> +			interrupt-map-mask = <0xf800 0x0 0x0 IRQ_INT_ALL>;
>   			interrupt-map =
> -				<0x1000 0x0 0x0 0x1 &gic0 0x0 0x0 0x0 0x120 0x1>,
> -				<0x1000 0x0 0x0 0x2 &gic0 0x0 0x0 0x0 0x121 0x1>,
> -				<0x1000 0x0 0x0 0x3 &gic0 0x0 0x0 0x0 0x122 0x1>,
> -				<0x1000 0x0 0x0 0x4 &gic0 0x0 0x0 0x0 0x123 0x1>;
> +				<0x1000 0x0 0x0 IRQ_INTA &gic0 0x0 0x0 0x0 0x120 0x1>,
> +				<0x1000 0x0 0x0 IRQ_INTB &gic0 0x0 0x0 0x0 0x121 0x1>,
> +				<0x1000 0x0 0x0 IRQ_INTC &gic0 0x0 0x0 0x0 0x122 0x1>,
> +				<0x1000 0x0 0x0 IRQ_INTD &gic0 0x0 0x0 0x0 0x123 0x1>;
>   
>   			dma-coherent;
>   			dma-ranges = <0x43000000 0x0 0x0 0x0 0x0 0x100 0x0>;
> diff --git a/arch/arm64/boot/dts/amd/husky.dts b/arch/arm64/boot/dts/amd/husky.dts
> index 7acde34772cb..5463e89b2811 100644
> --- a/arch/arm64/boot/dts/amd/husky.dts
> +++ b/arch/arm64/boot/dts/amd/husky.dts
> @@ -8,7 +8,7 @@
>   
>   /dts-v1/;
>   
> -/include/ "amd-seattle-soc.dtsi"
> +#include "amd-seattle-soc.dtsi"
>   
>   / {
>   	model = "Linaro 96Boards Enterprise Edition Server (Husky) Board";
> diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> index 62ab0d54ff71..8352c3ad43ab 100644
> --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> @@ -161,11 +161,11 @@
>   		bus-range = <0x0 0x1>;
>   		reg = <0x0 0x40000000 0x0 0x10000000>;
>   		ranges = <0x2000000 0x0 0x50000000 0x0 0x50000000 0x0 0x10000000>;
> -		interrupt-map = <0 0 0 1 &gic GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
> -				<0 0 0 2 &gic GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
> -				<0 0 0 3 &gic GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> -				<0 0 0 4 &gic GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-map-mask = <0x0 0x0 0x0 0x7>;
> +		interrupt-map = <0 0 0 IRQ_INTA &gic GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 IRQ_INTB &gic GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 IRQ_INTC &gic GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 IRQ_INTD &gic GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-map-mask = <0x0 0x0 0x0 IRQ_INT_ALL>;
>   		msi-map = <0x0 &its 0x0 0x10000>;
>   		iommu-map = <0x0 &smmu 0x0 0x10000>;
>   
> diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
> index 26a039a028b8..b01a922a9fbf 100644
> --- a/arch/arm64/boot/dts/arm/juno-base.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
> @@ -1,4 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
>   #include "juno-clocks.dtsi"
>   #include "juno-motherboard.dtsi"
>   
> @@ -519,11 +521,11 @@
>   			 <0x02000000 0x00 0x50000000 0x00 0x50000000 0x0 0x08000000>,
>   			 <0x42000000 0x40 0x00000000 0x40 0x00000000 0x1 0x00000000>;
>   		#interrupt-cells = <1>;
> -		interrupt-map-mask = <0 0 0 7>;
> -		interrupt-map = <0 0 0 1 &gic 0 0 GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
> -				<0 0 0 2 &gic 0 0 GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
> -				<0 0 0 3 &gic 0 0 GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
> -				<0 0 0 4 &gic 0 0 GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
> +		interrupt-map = <0 0 0 IRQ_INTA &gic 0 0 GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 IRQ_INTB &gic 0 0 GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 IRQ_INTC &gic 0 0 GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
> +				<0 0 0 IRQ_INTD &gic 0 0 GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
>   		msi-parent = <&v2m_0>;
>   		status = "disabled";
>   		iommu-map-mask = <0x0>;	/* RC has no means to output PCI RID */
> diff --git a/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi b/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi
> index dfb41705a9a9..6776b116e3db 100644
> --- a/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi
> +++ b/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi
> @@ -115,13 +115,13 @@
>   		  <0x02000000    0 0x40000000    0 0x40000000    0 0x20000000
>   		   0x43000000 0x40 0x00000000 0x40 0x00000000 0x20 0x00000000>;
>   		bus-range = <0 0xff>;
> -		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
>   		interrupt-map =
>   		      /* addr  pin  ic   icaddr  icintr */
> -			<0 0 0  1  &gic   0 0    GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH
> -			 0 0 0  2  &gic   0 0    GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH
> -			 0 0 0  3  &gic   0 0    GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH
> -			 0 0 0  4  &gic   0 0    GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> +			<0 0 0  IRQ_INTA  &gic   0 0    GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH
> +			 0 0 0  IRQ_INTB  &gic   0 0    GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH
> +			 0 0 0  IRQ_INTC  &gic   0 0    GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH
> +			 0 0 0  IRQ_INTD  &gic   0 0    GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
>   		msi-parent = <&gicits>;
>   		dma-coherent;
>   	};
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> index 337919366dc8..662cbf7c6588 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> @@ -492,11 +492,11 @@
>   				  0x82000000 0x0 0x40000000 0x40 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
>   			msi-parent = <&msi>;
>   			#interrupt-cells = <1>;
> -			interrupt-map-mask = <0 0 0 7>;
> -			interrupt-map = <0000 0 0 1 &gic 0 110 IRQ_TYPE_LEVEL_HIGH>,
> -					<0000 0 0 2 &gic 0 111 IRQ_TYPE_LEVEL_HIGH>,
> -					<0000 0 0 3 &gic 0 112 IRQ_TYPE_LEVEL_HIGH>,
> -					<0000 0 0 4 &gic 0 113 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
> +			interrupt-map = <0000 0 0 IRQ_INTA &gic 0 110 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 IRQ_INTB &gic 0 111 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 IRQ_INTC &gic 0 112 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 IRQ_INTD &gic 0 113 IRQ_TYPE_LEVEL_HIGH>;
>   			status = "disabled";
>   		};
>   	};
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> index 253cc345f143..9469e1c935c0 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> @@ -1013,14 +1013,14 @@
>   			#interrupt-cells = <1>;
>   			interrupts = <0 283 4>;
>   			interrupt-names = "msi";
> -			interrupt-map-mask = <0xf800 0 0 7>;
> -			interrupt-map = <0x0 0 0 1
> +			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
> +			interrupt-map = <0x0 0 0 IRQ_INTA
>   					 &gic GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
> -					<0x0 0 0 2
> +					<0x0 0 0 IRQ_INTB
>   					 &gic GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
> -					<0x0 0 0 3
> +					<0x0 0 0 IRQ_INTC
>   					 &gic GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
> -					<0x0 0 0 4
> +					<0x0 0 0 IRQ_INTD
>   					 &gic GIC_SPI 285 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&crg_ctrl HI3660_PCIEPHY_REF>,
>   				 <&crg_ctrl HI3660_CLK_GATE_PCIEAUX>,
> diff --git a/arch/arm64/boot/dts/hisilicon/hip06.dtsi b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
> index 50ceaa959bdc..179a61e171de 100644
> --- a/arch/arm64/boot/dts/hisilicon/hip06.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
> @@ -741,11 +741,11 @@
>   				 0x5ff0000 0x01000000 0 0 0 0xb7ff0000
>   				 0 0x10000>;
>   			#interrupt-cells = <1>;
> -			interrupt-map-mask = <0xf800 0 0 7>;
> -			interrupt-map = <0x0 0 0 1 &mbigen_pcie0 650 4
> -					0x0 0 0 2 &mbigen_pcie0 650 4
> -					0x0 0 0 3 &mbigen_pcie0 650 4
> -					0x0 0 0 4 &mbigen_pcie0 650 4>;
> +			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
> +			interrupt-map = <0x0 0 0 IRQ_INTA &mbigen_pcie0 650 4
> +					0x0 0 0 IRQ_INTB &mbigen_pcie0 650 4
> +					0x0 0 0 IRQ_INTC &mbigen_pcie0 650 4
> +					0x0 0 0 IRQ_INTD &mbigen_pcie0 650 4>;
>   			status = "disabled";
>   		};
>

Thanks!
For the Hisilicon part,
Acked-by: Wei Xu <xuwei5@hisilicon.com>

Best Regards,
Wei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
