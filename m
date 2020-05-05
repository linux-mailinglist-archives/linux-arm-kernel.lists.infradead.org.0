Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A221C5EA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tV4cKvA+ErDsD+334hZr6K0xfLpyscGb0PMNYcmH2NI=; b=UJB0dYX9JYNvFvUBWyC4QcQfX
	x9Te0vx5tnJheMqIisftrSoBNcqy6+0aoUKoEh6MlN/8OUTn3SrEdCMfm57iACKHtIUIdY3nS5ULU
	6ep45ZK5gfpqtxPs+bqaFfUr3Gy6ib/th/DhZv/yR6HhQNzdm0oSt53uk/6I2t8FgVFDzI2I3OvFR
	Wahvz1tnUIAy/DM1sAmFoHoi0+peHiU1o8vUSVdfiZ5EONiL1350JcW/cH0/ClkhBYyethLqSYbLE
	4WzH1OUWfsYpCni4sGQcmGlewy32K3fratKv1nBElBnWKXtXtWf+wleZZAQvSLeKGz7LAYOXg4skU
	NEL8DG+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1DF-0001EP-2Y; Tue, 05 May 2020 17:18:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1D4-0001Db-P6
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:18:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DD2A31B;
 Tue,  5 May 2020 10:18:22 -0700 (PDT)
Received: from [10.57.39.240] (unknown [10.57.39.240])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E6AE33F305;
 Tue,  5 May 2020 10:18:19 -0700 (PDT)
Subject: Re: [PATCH 04/16] arm64: dts: arm: Fix node address fields
To: Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-5-andre.przywara@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <347cdcba-a1cf-d308-1cc2-6c2194f40d19@arm.com>
Date: Tue, 5 May 2020 18:18:19 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505165212.76466-5-andre.przywara@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_101822_897218_229AFBAA 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-05 5:52 pm, Andre Przywara wrote:
> The Arm Ltd. boards were using an outdated address convention in the DT
> node names, by separating the high from the low 32-bits of an address by
> a comma.

I thought that historically that was deliberate, since the actual thing 
being encoded is <chip select>,<address>, rather than just cosmetically 
splitting a 64-bit address value?

Or maybe I'm thinking too far back and things have already changed in 
the meantime :/

Robin.

> Remove the comma from the node name suffix to be DT spec compliant.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>   arch/arm/boot/dts/vexpress-v2m-rs1.dtsi              | 10 +++++-----
>   arch/arm64/boot/dts/arm/foundation-v8.dtsi           |  4 ++--
>   arch/arm64/boot/dts/arm/juno-motherboard.dtsi        |  6 +++---
>   arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi |  2 +-
>   arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi     |  6 +++---
>   5 files changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
> index 5c183483ec3b..8010cdcdb37a 100644
> --- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
> +++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
> @@ -31,7 +31,7 @@
>   			#interrupt-cells = <1>;
>   			ranges;
>   
> -			nor_flash: flash@0,00000000 {
> +			nor_flash: flash@0 {
>   				compatible = "arm,vexpress-flash", "cfi-flash";
>   				reg = <0 0x00000000 0x04000000>,
>   				      <4 0x00000000 0x04000000>;
> @@ -41,13 +41,13 @@
>   				};
>   			};
>   
> -			psram@1,00000000 {
> +			psram@100000000 {
>   				compatible = "arm,vexpress-psram", "mtd-ram";
>   				reg = <1 0x00000000 0x02000000>;
>   				bank-width = <4>;
>   			};
>   
> -			ethernet@2,02000000 {
> +			ethernet@202000000 {
>   				compatible = "smsc,lan9118", "smsc,lan9115";
>   				reg = <2 0x02000000 0x10000>;
>   				interrupts = <15>;
> @@ -59,14 +59,14 @@
>   				vddvario-supply = <&v2m_fixed_3v3>;
>   			};
>   
> -			usb@2,03000000 {
> +			usb@203000000 {
>   				compatible = "nxp,usb-isp1761";
>   				reg = <2 0x03000000 0x20000>;
>   				interrupts = <16>;
>   				port1-otg;
>   			};
>   
> -			iofpga@3,00000000 {
> +			iofpga@300000000 {
>   				compatible = "simple-bus";
>   				#address-cells = <1>;
>   				#size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> index 12f039fa3dad..e26b492795c5 100644
> --- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> +++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> @@ -151,7 +151,7 @@
>   				<0 0 41 &gic 0 0 GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
>   				<0 0 42 &gic 0 0 GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
>   
> -		ethernet@2,02000000 {
> +		ethernet@202000000 {
>   			compatible = "smsc,lan91c111";
>   			reg = <2 0x02000000 0x10000>;
>   			interrupts = <15>;
> @@ -178,7 +178,7 @@
>   			clock-output-names = "v2m:refclk32khz";
>   		};
>   
> -		iofpga@3,00000000 {
> +		iofpga@300000000 {
>   			compatible = "simple-bus";
>   			#address-cells = <1>;
>   			#size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
> index e3983ded3c3c..d5cefddde08c 100644
> --- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
> @@ -103,7 +103,7 @@
>   				};
>   			};
>   
> -			flash@0,00000000 {
> +			flash@0 {
>   				/* 2 * 32MiB NOR Flash memory mounted on CS0 */
>   				compatible = "arm,vexpress-flash", "cfi-flash";
>   				reg = <0 0x00000000 0x04000000>;
> @@ -120,7 +120,7 @@
>   				};
>   			};
>   
> -			ethernet@2,00000000 {
> +			ethernet@200000000 {
>   				compatible = "smsc,lan9118", "smsc,lan9115";
>   				reg = <2 0x00000000 0x10000>;
>   				interrupts = <3>;
> @@ -133,7 +133,7 @@
>   				vddvario-supply = <&mb_fixed_3v3>;
>   			};
>   
> -			iofpga@3,00000000 {
> +			iofpga@300000000 {
>   				compatible = "simple-bus";
>   				#address-cells = <1>;
>   				#size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
> index 60703b5763c6..350cbf17e8b4 100644
> --- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
> +++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
> @@ -9,7 +9,7 @@
>   		motherboard {
>   			arm,v2m-memory-map = "rs2";
>   
> -			iofpga@3,00000000 {
> +			iofpga@300000000 {
>   				virtio-p9@140000 {
>   					compatible = "virtio,mmio";
>   					reg = <0x140000 0x200>;
> diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
> index e333c8d2d0e4..d1bfa62ca073 100644
> --- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
> +++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
> @@ -17,14 +17,14 @@
>   			#interrupt-cells = <1>;
>   			ranges;
>   
> -			flash@0,00000000 {
> +			flash@0 {
>   				compatible = "arm,vexpress-flash", "cfi-flash";
>   				reg = <0 0x00000000 0x04000000>,
>   				      <4 0x00000000 0x04000000>;
>   				bank-width = <4>;
>   			};
>   
> -			ethernet@2,02000000 {
> +			ethernet@202000000 {
>   				compatible = "smsc,lan91c111";
>   				reg = <2 0x02000000 0x10000>;
>   				interrupts = <15>;
> @@ -51,7 +51,7 @@
>   				clock-output-names = "v2m:refclk32khz";
>   			};
>   
> -			iofpga@3,00000000 {
> +			iofpga@300000000 {
>   				compatible = "simple-bus";
>   				#address-cells = <1>;
>   				#size-cells = <1>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
