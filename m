Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23C510C833
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 12:51:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ecV1tWRzv09qcTrtmzvQUHdCERdALyAK1VFZgKnSXk=; b=tdmGxnn7kVBoH5WgQB1nJat3V
	SY8USHn4YggajcRHjUyLnPGHxGL+C9Du/2Lav3nyevlLQDDjdRtC6icZOqWhy7+nxnw/EiCJYm6dl
	aZIucpz+MSGQGv6px0d60QNhXT3+6Ya/UtnVPZS67fnn+XFkaUiqEgdSzDwiVsybingNo8iGTQQFi
	/6nNXWotWEFQH+uefQBnDphZ2q0L5cIg3iX89KjjPtMp7bl2KhRK6VuDZBtHS8gb8SkYjqbFll7GC
	vI7kX+R4ibkSnSQhk1ounqDVb+urS53S32XCGumWe7QE3v7NpPldazZcTmfI6fZ37Bx7EqczsARhZ
	oQM1YQmEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaIKG-0007Zu-HS; Thu, 28 Nov 2019 11:51:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaIK7-0007ZR-Bu
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 11:51:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E0ED30E;
 Thu, 28 Nov 2019 03:51:01 -0800 (PST)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D8ED3F6C4;
 Thu, 28 Nov 2019 03:50:59 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: juno: Fix DMA address translations by adding
 SOC bus node
To: Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20191126165355.6696-1-sudeep.holla@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d9b057ed-acfc-a9a1-a466-d3048f008568@arm.com>
Date: Thu, 28 Nov 2019 11:50:54 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191126165355.6696-1-sudeep.holla@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_035103_498319_0B265F13 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On 2019-11-26 4:53 pm, Sudeep Holla wrote:
> Commit 951d48855d86 ("of: Make of_dma_get_range() work on bus nodes")
> reworked the logic such that of_dma_get_range() works correctly
> starting from a bus node containing "dma-ranges".
> 
> Since on Juno we don't have a SoC level bus node and "dma-ranges" is
> present only in the root node, we get the following error:
> 
> OF: translation of DMA address(0) to CPU address failed node(/sram@2e000000)
> OF: translation of DMA address(0) to CPU address failed node(/uart@7ff80000)
> ...
> OF: translation of DMA address(0) to CPU address failed node(/mhu@2b1f0000)
> OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> 
> Let's fix it by adding a SoC bus node and moving all the devices along
> with the "dma-ranges" inside it.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>   arch/arm64/boot/dts/arm/juno-base.dtsi        | 162 +++++++++---------
>   arch/arm64/boot/dts/arm/juno-clocks.dtsi      |   2 +
>   arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     |   2 +
>   arch/arm64/boot/dts/arm/juno-motherboard.dtsi |   2 +
>   4 files changed, 88 insertions(+), 80 deletions(-)
> 
> Hi Rob, Robin,
> 
> Let me know if this is correct fix for the issue I am seeing with linux-next
> on Juno. This patch is generated with -b for ease of review. With lots of
> indentation, actual delta is:
> 
> 4 files changed, 1274 insertions(+), 1266 deletions(-)

Other than a few nits - the GIC should probably be under the soc node as 
it's an MMIO device, while the clocks shouldn't; the dtsi's could 
probably avoid churn with a "&soc {...}" phandle - I think this is a 
reasonable thing to do, as it's generally the preferred structure.

The cruder but far simpler alternative would be to just drop the 
dma-ranges property - I'm not sure the effort to make all 64-bit 
platforms describe their dma-ranges has really panned out, and it isn't 
actually necessary for Juno (which is why it didn't seem like sufficient 
reason to do all this restructuring at the time, and instead I took a 
very liberal interpretation of the spec to sneak it into the root node).

Robin.

> 
> Regards,
> Sudeep
> 
> diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
> index 9e3e8ce6adfe..ef21d7245e3b 100644
> --- a/arch/arm64/boot/dts/arm/juno-base.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
> @@ -3,6 +3,87 @@
>   #include "juno-motherboard.dtsi"
>   
>   / {
> +	gic: interrupt-controller@2c010000 {
> +		compatible = "arm,gic-400", "arm,cortex-a15-gic";
> +		reg = <0x0 0x2c010000 0 0x1000>,
> +		      <0x0 0x2c02f000 0 0x2000>,
> +		      <0x0 0x2c04f000 0 0x2000>,
> +		      <0x0 0x2c06f000 0 0x2000>;
> +		#address-cells = <2>;
> +		#interrupt-cells = <3>;
> +		#size-cells = <2>;
> +		interrupt-controller;
> +		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
> +		ranges = <0 0 0 0x2c1c0000 0 0x40000>;
> +
> +		v2m_0: v2m@0 {
> +			compatible = "arm,gic-v2m-frame";
> +			msi-controller;
> +			reg = <0 0 0 0x10000>;
> +		};
> +
> +		v2m@10000 {
> +			compatible = "arm,gic-v2m-frame";
> +			msi-controller;
> +			reg = <0 0x10000 0 0x10000>;
> +		};
> +
> +		v2m@20000 {
> +			compatible = "arm,gic-v2m-frame";
> +			msi-controller;
> +			reg = <0 0x20000 0 0x10000>;
> +		};
> +
> +		v2m@30000 {
> +			compatible = "arm,gic-v2m-frame";
> +			msi-controller;
> +			reg = <0 0x30000 0 0x10000>;
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +
> +	scpi {
> +		compatible = "arm,scpi";
> +		mboxes = <&mailbox 1>;
> +		shmem = <&cpu_scp_hpri>;
> +
> +		clocks {
> +			compatible = "arm,scpi-clocks";
> +
> +			scpi_dvfs: scpi-dvfs {
> +				compatible = "arm,scpi-dvfs-clocks";
> +				#clock-cells = <1>;
> +				clock-indices = <0>, <1>, <2>;
> +				clock-output-names = "atlclk", "aplclk","gpuclk";
> +			};
> +			scpi_clk: scpi-clk {
> +				compatible = "arm,scpi-variable-clocks";
> +				#clock-cells = <1>;
> +				clock-indices = <3>;
> +				clock-output-names = "pxlclk";
> +			};
> +		};
> +
> +		scpi_devpd: scpi-power-domains {
> +			compatible = "arm,scpi-power-domains";
> +			num-domains = <2>;
> +			#power-domain-cells = <1>;
> +		};
> +
> +		scpi_sensors0: sensors {
> +			compatible = "arm,scpi-sensors";
> +			#thermal-sensor-cells = <1>;
> +		};
> +	};
> +
> +	soc {
>   		/*
>   		 *  Devices shared by all Juno boards
>   		 */
> @@ -69,52 +150,6 @@
>   			power-domains = <&scpi_devpd 0>;
>   		};
>   
> -	gic: interrupt-controller@2c010000 {
> -		compatible = "arm,gic-400", "arm,cortex-a15-gic";
> -		reg = <0x0 0x2c010000 0 0x1000>,
> -		      <0x0 0x2c02f000 0 0x2000>,
> -		      <0x0 0x2c04f000 0 0x2000>,
> -		      <0x0 0x2c06f000 0 0x2000>;
> -		#address-cells = <2>;
> -		#interrupt-cells = <3>;
> -		#size-cells = <2>;
> -		interrupt-controller;
> -		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
> -		ranges = <0 0 0 0x2c1c0000 0 0x40000>;
> -
> -		v2m_0: v2m@0 {
> -			compatible = "arm,gic-v2m-frame";
> -			msi-controller;
> -			reg = <0 0 0 0x10000>;
> -		};
> -
> -		v2m@10000 {
> -			compatible = "arm,gic-v2m-frame";
> -			msi-controller;
> -			reg = <0 0x10000 0 0x10000>;
> -		};
> -
> -		v2m@20000 {
> -			compatible = "arm,gic-v2m-frame";
> -			msi-controller;
> -			reg = <0 0x20000 0 0x10000>;
> -		};
> -
> -		v2m@30000 {
> -			compatible = "arm,gic-v2m-frame";
> -			msi-controller;
> -			reg = <0 0x30000 0 0x10000>;
> -		};
> -	};
> -
> -	timer {
> -		compatible = "arm,armv8-timer";
> -		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> -			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> -			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> -			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>;
> -	};
> -
>   		/*
>   		 * Juno TRMs specify the size for these coresight components as 64K.
>   		 * The actual size is just 4K though 64K is reserved. Access to the
> @@ -557,40 +592,6 @@
>   			iommu-map = <0x0 &smmu_pcie 0x0 0x1>;
>   		};
>   
> -	scpi {
> -		compatible = "arm,scpi";
> -		mboxes = <&mailbox 1>;
> -		shmem = <&cpu_scp_hpri>;
> -
> -		clocks {
> -			compatible = "arm,scpi-clocks";
> -
> -			scpi_dvfs: scpi-dvfs {
> -				compatible = "arm,scpi-dvfs-clocks";
> -				#clock-cells = <1>;
> -				clock-indices = <0>, <1>, <2>;
> -				clock-output-names = "atlclk", "aplclk","gpuclk";
> -			};
> -			scpi_clk: scpi-clk {
> -				compatible = "arm,scpi-variable-clocks";
> -				#clock-cells = <1>;
> -				clock-indices = <3>;
> -				clock-output-names = "pxlclk";
> -			};
> -		};
> -
> -		scpi_devpd: scpi-power-domains {
> -			compatible = "arm,scpi-power-domains";
> -			num-domains = <2>;
> -			#power-domain-cells = <1>;
> -		};
> -
> -		scpi_sensors0: sensors {
> -			compatible = "arm,scpi-sensors";
> -			#thermal-sensor-cells = <1>;
> -		};
> -	};
> -
>   		thermal-zones {
>   			pmic {
>   				polling-delay = <1000>;
> @@ -838,4 +839,5 @@
>   			interrupt-map-mask = <0 0>;
>   			interrupt-map = <0 0 &gic 0 0 GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>;
>   		};
> +	};
>   };
> diff --git a/arch/arm64/boot/dts/arm/juno-clocks.dtsi b/arch/arm64/boot/dts/arm/juno-clocks.dtsi
> index e5e265dfa902..3ea934017b98 100644
> --- a/arch/arm64/boot/dts/arm/juno-clocks.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-clocks.dtsi
> @@ -7,6 +7,7 @@
>    *
>    */
>   / {
> +	soc {
>   		/* SoC fixed clocks */
>   		soc_uartclk: refclk7273800hz {
>   			compatible = "fixed-clock";
> @@ -42,4 +43,5 @@
>   			clock-frequency = <400000000>;
>   			clock-output-names = "faxi_clk";
>   		};
> +	};
>   };
> diff --git a/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi b/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
> index eda3d9e18af6..3f6e607b450d 100644
> --- a/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
> @@ -1,5 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   / {
> +	soc {
>   		funnel@20130000 { /* cssys1 */
>   			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>   			reg = <0 0x20130000 0 0x1000>;
> @@ -82,4 +83,5 @@
>   
>   			};
>   		};
> +	};
>   };
> diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
> index 9f60dacb4f80..638c6b5b342a 100644
> --- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
> +++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
> @@ -8,6 +8,7 @@
>    */
>   
>   / {
> +	soc {
>   		smb@8000000 {
>   			mb_clk24mhz: clk24mhz {
>   				compatible = "fixed-clock";
> @@ -292,4 +293,5 @@
>   				};
>   			};
>   		};
> +	};
>   };
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
