Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4914B3B874
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqHm29HFPVm5NUJ4ZRI9mW/evIOH+tOahqvMBvI5ZwM=; b=E4xwrqIWmWaZZU
	PPZBmsrljPsHFTKL5akz7B93oXQaDbDKGImX/aecP18U97pMZDg8VZ1jxoxzwGnYKXIJo1KLYDTh9
	oKuZWoCwM3NXi9gkelwoBQLi4AKAn+MGNTZ/LqMIuSdc6nS64nz6vPBiOrbY+oT/vClfywDjcjsGf
	CeUyWrpmfZzQOaLfxfuuKBn7sWFCNR6AQ+OZBHVJdfIx4mK0MT0K/lK61HYn+jOJfLoNpDvDwJVkO
	PGspoObflZ9vaH1mflAP2e09u3r+PmLB/8qt5I3QeeFzMF2bbIMmC4B8zLxhhdSDNg2eumeWp19v3
	0pG4vBsE+SeIkY3HH5uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMUa-0008F3-2C; Mon, 10 Jun 2019 15:45:52 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMUI-0008Ds-AZ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:45:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0EDE660213; Mon, 10 Jun 2019 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560181533;
 bh=JLkeq82w7WKXfiw+H9jdcNpXmDI145eAKRmA3feEAeU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=dRox7VQ03BzZZt9n8e+czaNKqicjCTGoyPmgb67fOXCWu/nR53/Y6L2K7XCASG4gg
 jUy8yVAaIa0ovVh1xSkdUfzhLy6ZOP7ZfA1tNlAggiZUkRxut8qGbviLXTJmJKVhpz
 IcfpvVxsLWNXQ9ST+JNpHd98DVySeQEoLc8bkhM0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.1.6] (unknown [171.60.244.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: sricharan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C24C060213;
 Mon, 10 Jun 2019 15:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560181531;
 bh=JLkeq82w7WKXfiw+H9jdcNpXmDI145eAKRmA3feEAeU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=GaUQuf0o1Jem/Hq3U+CRNQ6OcnLIbVZ8RBw9wb66XqGcfQn/AITy8H6QhXQAN481x
 gZ4FtBh6v7xiE1qfAFm+yfbVCpFh0Ih4gl83bY2U5R1wQelXVlY35ZPJ0qrJmF488p
 2E1LyMUyZJ2nj/kD6z1eVWa3eVPMo/90g+PIKbvs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C24C060213
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-6-git-send-email-sricharan@codeaurora.org>
 <20190608034835.GH24059@builder>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <048a25c0-3a2c-3906-84d4-5eb67f3ce2ef@codeaurora.org>
Date: Mon, 10 Jun 2019 21:15:22 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608034835.GH24059@builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_084534_411442_91B82D40 
X-CRM114-Status: GOOD (  30.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, sboyd@codeaurora.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,


On 6/8/2019 9:18 AM, Bjorn Andersson wrote:
> On Wed 05 Jun 10:16 PDT 2019, Sricharan R wrote:
> 
>> Add initial device tree support for the Qualcomm IPQ6018 SoC and
>> CP01 evaluation board.
>>
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> 
> Please fix the order of these (or add a Co-developed-by).
> 

 ok

>> ---
>>  arch/arm64/boot/dts/qcom/Makefile            |   1 +
>>  arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts |  35 ++++
>>  arch/arm64/boot/dts/qcom/ipq6018.dtsi        | 231 +++++++++++++++++++++++++++
>>  3 files changed, 267 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index 21d548f..ac22dbb 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -2,6 +2,7 @@
>>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-sbc.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)	+= ipq6018-cp01-c1.dtb
> 
> Sort order.
> 

 ok

>>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-mtp.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8992-bullhead-rev-101.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8994-angler-rev-101.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>> new file mode 100644
>> index 0000000..ac7cb22
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>> @@ -0,0 +1,35 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * IPQ6018 CP01 board device tree source
>> + *
>> + * Copyright (c) 2019, The Linux Foundation. All rights reserved.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "ipq6018.dtsi"
>> +
>> +/ {
>> +	#address-cells = <0x2>;
>> +	#size-cells = <0x2>;
> 
> This is a count, write it in base 10..
> 

 ok

>> +	model = "Qualcomm Technologies, Inc. IPQ6018/AP-CP01-C1";
>> +	compatible = "qcom,ipq6018-cp01", "qcom,ipq6018";
>> +	interrupt-parent = <&intc>;
> 
> Changing #address-cells, #size-cells and interrupt-parent will break the
> dtsi, so I think you should specify them there.
> 

 ok, will move it to the dtsi.

>> +};
>> +
>> +&tlmm {
> 
> Please sort your nodes based on address, then node name, then label.
> 

 ok

>> +	uart_pins: uart_pins {
>> +		mux {
>> +			pins = "gpio44", "gpio45";
>> +			function = "blsp2_uart";
>> +			drive-strength = <8>;
>> +			bias-pull-down;
>> +		};
>> +	};
>> +};
>> +
>> +&blsp1_uart3 {
>> +	pinctrl-0 = <&uart_pins>;
>> +	pinctrl-names = "default";
>> +	status = "ok";
>> +};
>> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> new file mode 100644
>> index 0000000..79cccdd
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> @@ -0,0 +1,231 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * IPQ6018 SoC device tree source
>> + *
>> + * Copyright (c) 2019, The Linux Foundation. All rights reserved.
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/clock/qcom,gcc-ipq6018.h>
>> +
>> +/ {
>> +	model = "Qualcomm Technologies, Inc. IPQ6018";
>> +	compatible = "qcom,ipq6018";
> 
> No need for model and compatible in the dtsi, these should always be
> specified by the including file.
> 

 ok, will move it to the dts.

>> +
>> +	chosen {
>> +		bootargs = "console=ttyMSM0,115200,n8 rw init=/init";
> 
> Do you really need console? Can't you use stdout-path?
> 

 ok, will change.

> And there's no need to specify init=/init.
> 

 ok.

>> +		bootargs-append = " swiotlb=1 clk_ignore_unused";
> 
> I'm hoping that you will work on removing the need for
> clk_ignore_unused.
> 

 hmm, should not be required even now. will remove that.

>> +	};
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		tz:tz@48500000 {
> 
> Space after :
> 

 ok.

>> +			no-map;
>> +			reg = <0x0 0x48500000 0x0 0x00200000>;
> 
> I would prefer to have the reg first in these nodes, then the region's
> properties.
> 

 ok.

>> +		};
>> +	};
>> +
>> +	soc: soc {
>> +		#address-cells = <0x1>;
>> +		#size-cells = <0x1>;
>> +		ranges = <0 0 0 0xffffffff>;
>> +		dma-ranges;
>> +		compatible = "simple-bus";
>> +
>> +		intc: interrupt-controller@b000000 {
> 
> As described above, please sort your nodes based on address, node name
> and lastly label name.
> 

 ok.

>> +			compatible = "qcom,msm-qgic2";
>> +			interrupt-controller;
>> +			#interrupt-cells = <0x3>;
>> +			reg = <0xb000000 0x1000>, <0xb002000 0x1000>;
>> +		};
>> +
>> +		timer {
>> +			compatible = "arm,armv8-timer";
>> +			interrupts = <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
>> +				     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
>> +				     <GIC_PPI 4 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
>> +				     <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
>> +		};
>> +
>> +		timer@b120000 {
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +			ranges;
>> +			compatible = "arm,armv7-timer-mem";
>> +			reg = <0xb120000 0x1000>;
> 
> Please pad addresses in reg to 8 digits, to make them faster to compare.
> 

 ok.

>> +			clock-frequency = <19200000>;
>> +
>> +			frame@b120000 {
>> +				frame-number = <0>;
>> +				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
>> +					     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
>> +				reg = <0xb121000 0x1000>,
>> +				      <0xb122000 0x1000>;
>> +			};
>> +
>> +			frame@b123000 {
>> +				frame-number = <1>;
>> +				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
>> +				reg = <0xb123000 0x1000>;
>> +				status = "disabled";
>> +			};
>> +
>> +			frame@b124000 {
>> +				frame-number = <2>;
>> +				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
>> +				reg = <0xb124000 0x1000>;
>> +				status = "disabled";
>> +			};
>> +
>> +			frame@b125000 {
>> +				frame-number = <3>;
>> +				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
>> +				reg = <0xb125000 0x1000>;
>> +				status = "disabled";
>> +			};
>> +
>> +			frame@b126000 {
>> +				frame-number = <4>;
>> +				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
>> +				reg = <0xb126000 0x1000>;
>> +				status = "disabled";
>> +			};
>> +
>> +			frame@b127000 {
>> +				frame-number = <5>;
>> +				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
>> +				reg = <0xb127000 0x1000>;
>> +				status = "disabled";
>> +			};
>> +
>> +			frame@b128000 {
>> +				frame-number = <6>;
>> +				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
>> +				reg = <0xb128000 0x1000>;
>> +				status = "disabled";
>> +			};
>> +		};
>> +
>> +		gcc: gcc@1800000 {
>> +			compatible = "qcom,gcc-ipq6018";
>> +			reg = <0x1800000 0x80000>;
>> +			#clock-cells = <0x1>;
> 
> This is a count, use base 10.
> 

 ok.

>> +			#reset-cells = <0x1>;
>> +		};
>> +
>> +		blsp1_uart3: serial@78b1000 {
>> +			compatible = "qcom,msm-uartdm-v1.4", "qcom,msm-uartdm";
>> +			reg = <0x78b1000 0x200>;
>> +			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&gcc GCC_BLSP1_UART3_APPS_CLK>,
>> +				<&gcc GCC_BLSP1_AHB_CLK>;
>> +			clock-names = "core", "iface";
>> +			status = "disabled";
>> +		};
>> +
>> +		tlmm: pinctrl@1000000 {
>> +			compatible = "qcom,ipq6018-pinctrl";
>> +			reg = <0x1000000 0x300000>;
>> +			interrupts = <GIC_SPI 0xd0 IRQ_TYPE_NONE>;
>> +			gpio-controller;
>> +			#gpio-cells = <0x2>;
> 
> gpio-ranges = <&tlmm 0 80>;
> 

 ok.

>> +			interrupt-controller;
>> +			#interrupt-cells = <0x2>;
>> +
>> +			uart_pins: uart_pins {
>> +				pins = "gpio44", "gpio45";
>> +				function = "blsp2_uart";
>> +				drive-strength = <8>;
>> +				bias-pull-down;
>> +			};
>> +		};
>> +	};
>> +
>> +	psci: psci {
>> +		compatible = "arm,psci-1.0";
>> +		method = "smc";
>> +	};
>> +
>> +	cpus: cpus {
>> +		#address-cells = <0x1>;
>> +		#size-cells = <0x0>;
>> +
>> +		CPU0: cpu@0 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a53";
>> +			reg = <0x0>;
>> +			enable-method = "psci";
>> +			next-level-cache = <&L2_0>;
>> +		};
>> +
>> +		CPU1: cpu@1 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a53";
>> +			enable-method = "psci";
>> +			reg = <0x1>;
>> +			next-level-cache = <&L2_0>;
>> +		};
>> +
>> +		CPU2: cpu@2 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a53";
>> +			enable-method = "psci";
>> +			reg = <0x2>;
>> +			next-level-cache = <&L2_0>;
>> +		};
>> +
>> +		CPU3: cpu@3 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a53";
>> +			enable-method = "psci";
>> +			reg = <0x3>;
>> +			next-level-cache = <&L2_0>;
>> +		};
>> +
>> +		L2_0: l2-cache {
>> +			compatible = "cache";
>> +			cache-level = <0x2>;
>> +		};
>> +	};
>> +
>> +	pmuv8: pmu {
>> +		compatible = "arm,armv8-pmuv3";
>> +		interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(4) |
>> +					 IRQ_TYPE_LEVEL_HIGH)>;
>> +	};
>> +
>> +	clocks {
>> +		sleep_clk: sleep_clk {
> 
> Don't use _ in the node names.
> 

 ok.

>> +			compatible = "fixed-clock";
>> +			clock-frequency = <32000>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		xo: xo {
>> +			compatible = "fixed-clock";
>> +			clock-frequency = <24000000>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		bias_pll_cc_clk {
> 
> Please give this a label and reference it from the node that uses it
> (regardless of the implementation matching by clock name).
> 
 ok, in that case, so might have to remove these for now, till we add
 the corresponding users.

>> +			compatible = "fixed-clock";
>> +			clock-frequency = <300000000>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		bias_pll_nss_noc_clk {
>> +			compatible = "fixed-clock";
>> +			clock-frequency = <416500000>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		usb3phy_0_cc_pipe_clk {
> 
> This should come from the PHY.

  ok, will remove it here and add it later when adding USB node

Regards,
 Sricharan  

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
