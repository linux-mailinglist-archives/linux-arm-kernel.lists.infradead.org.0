Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9646939A29
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 04:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jV3IfIgg3KOfGO2s0OcvAJ0toQs6QYP7Qxnh6zvVsq0=; b=rhut2tV7P3P6h1AKOmCSE55CMg
	KFzPvlBi/Tb9XJM0TIoB/C7esV7Cecu2EB6YyZ288t7XrbbAt52Pke9F4noKvAIhiGQB2cDiyNo8H
	hGUVAoLF0bA2ug6ltjukLY1DAgDZDlvPKqmahcOUwwc9fbEACq5FQBuiq/mizh03i4QrRuVbyqlaB
	K34qnmMd9GZwxjRCh2SQ8N+Snm46XUZ0pNbLEWop86Nwc71E8by2wDJMyIL2Jl12KLEvi3+ICESvj
	TOf3TCUGingOLUVcCC/plOkijf0krKH7bsdfLN8OAsIQzI3QI9WDLbsSofe7arQg7KCNpHLO7HOjY
	Ap5yhOlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZRLJ-0001VC-02; Sat, 08 Jun 2019 02:44:29 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZRLC-0001Ul-Tb
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 02:44:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8F729607EB; Sat,  8 Jun 2019 02:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559961860;
 bh=oKWJ7IKb+QbAvUpADFLHB7hOUGVmIRjnWSUgva6nGvc=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=GkOcePglk59aecjlDAiHgo1albSPlNW3AO+7uBFtBtbjQ6I1m915XtwDeJLN3Ctr/
 tDNlWZkviOHx0RmIrwBUrGtnWDh6fw2/qTdMGNQ91vJnAUsFdaPImmiRkwqmycGoll
 ubQGbXpMh60Q1s7ZSSMtXeKaiowBr5If1JR6oNXo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.1.6] (unknown [171.60.255.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: sricharan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B499660240;
 Sat,  8 Jun 2019 02:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559961859;
 bh=oKWJ7IKb+QbAvUpADFLHB7hOUGVmIRjnWSUgva6nGvc=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=am4cnrVIkLTW3BjoL2rTfOEK+yBpuSa1p396Q/acd5RAwWAOW57vc/ndv9KH39zwv
 hlJhtxcw733TPFb6sx8APFWX0UtRPuWgiwCpV33PA5fGQZHpictSF270BfkUpWvMCh
 Y2CdwX8/i5UPWVeVdm+13dwQpr45hCrqIDQdVM0E=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B499660240
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
To: Marc Zyngier <marc.zyngier@arm.com>, robh+dt@kernel.org,
 sboyd@codeaurora.org, linus.walleij@linaro.org, agross@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-6-git-send-email-sricharan@codeaurora.org>
 <d313bec5-1115-0ef7-0241-83e20672d2f1@arm.com>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <d0e5f602-34de-f28e-cc11-6ebd1d29b495@codeaurora.org>
Date: Sat, 8 Jun 2019 08:14:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <d313bec5-1115-0ef7-0241-83e20672d2f1@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_194422_988738_E69C074C 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 6/5/2019 10:56 PM, Marc Zyngier wrote:
> On 05/06/2019 18:16, Sricharan R wrote:
>> Add initial device tree support for the Qualcomm IPQ6018 SoC and
>> CP01 evaluation board.
>>
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
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
>> +	model = "Qualcomm Technologies, Inc. IPQ6018/AP-CP01-C1";
>> +	compatible = "qcom,ipq6018-cp01", "qcom,ipq6018";
>> +	interrupt-parent = <&intc>;
>> +};
>> +
>> +&tlmm {
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
>> +
>> +	chosen {
>> +		bootargs = "console=ttyMSM0,115200,n8 rw init=/init";
>> +		bootargs-append = " swiotlb=1 clk_ignore_unused";
>> +	};
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		tz:tz@48500000 {
>> +			no-map;
>> +			reg = <0x0 0x48500000 0x0 0x00200000>;
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
>> +			compatible = "qcom,msm-qgic2";
>> +			interrupt-controller;
>> +			#interrupt-cells = <0x3>;
>> +			reg = <0xb000000 0x1000>, <0xb002000 0x1000>;
> 
> Where are the rest of the GICv2 MMIO regions, such as GICV and GICH? And
> the maintenance interrupt?
> 
  GICH - 0xB001000 -- 0xB002000
  GICV - 0xB004000 -- 0xB005000
  Will add this and the PPI as well.

Regards,
 Sricharan

>> +		};
>> +
>> +		timer {
>> +			compatible = "arm,armv8-timer";
>> +			interrupts = <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
>> +				     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
>> +				     <GIC_PPI 4 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
>> +				     <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> 
> The fact that you expose the EL2 timer interrupt would tend to confirm
> the idea that this system supports virtualization... Hence my questions
> above.
> 
> Thanks,
> 
> 	M.
> 

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
