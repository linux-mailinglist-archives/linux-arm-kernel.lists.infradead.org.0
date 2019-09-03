Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2AFA6345
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 10:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27r0j2yH28LaTQ5AoS/fMCCMCTvOlopY47hMWSBD+yU=; b=euLdS661bv9Bfu
	9y9z3BZYN031nzPPwTZQKt2VQNsxBRnt1IIx3pldSeCT+1GFLoO+lgF64KGmcgGGwqlSMvhUupHnz
	X/HZYAxLmsAZ6h8/umlo8+DkM1p9dN4jaJsApCD9fClSGGu58LEv4RNAZP0FzKNz/b9pUC7yyYsOD
	5QhAx6ngwSmGJpIULXkHaeMbndNi8RnablImaSUYsKs0uv+dVHi2CEbUx3o3+h2ZNbF4F3yQHEsoV
	ossiLCc9x527r8qIzTA2Fv/75Wnmi7ZvuObir2DTN5fou1RWEQLQUB54GJ6CHw3/mJmA5nPdQTvIS
	ua9+wK0aNhMDeCB5FsyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53jR-0001mk-Vt; Tue, 03 Sep 2019 08:00:06 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53jE-0001lJ-0B; Tue, 03 Sep 2019 07:59:53 +0000
Received: from [10.18.29.226] (10.18.29.226) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 3 Sep
 2019 16:00:37 +0800
Subject: Re: [PATCH 4/4] arm64: dts: add support for A1 based Amlogic AD401
To: Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 <linux-amlogic@lists.infradead.org>
References: <1567493475-75451-1-git-send-email-jianxin.pan@amlogic.com>
 <1567493475-75451-5-git-send-email-jianxin.pan@amlogic.com>
 <1jef0xrg5d.fsf@starbuckisacylon.baylibre.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <de374b4a-be2e-0b85-ff3f-f7cdc785c26a@amlogic.com>
Date: Tue, 3 Sep 2019 16:00:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1jef0xrg5d.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.18.29.226]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_005952_050356_760CF030 
X-CRM114-Status: GOOD (  13.86  )
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 Tao Zeng <tao.zeng@amlogic.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

Thanks for your suggestion.

I will fix them in the next version.


On 2019/9/3 15:30, Jerome Brunet wrote:
> On Tue 03 Sep 2019 at 02:51, Jianxin Pan <jianxin.pan@amlogic.com> wrote:
> 
>> Add basic support for the Amlogic A1 based Amlogic AD401 board:
>> which describe components as follows: Reserve Memory, CPU, GIC, IRQ,
>> Timer, UART. It's capable of booting up into the serial console.
>>
>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> ---
>>  arch/arm64/boot/dts/amlogic/Makefile           |   1 +
>>  arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts |  30 ++++++
>>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi      | 121 +++++++++++++++++++++++++
>>  3 files changed, 152 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts
>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>> index edbf128..1720c45 100644
>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>> @@ -36,3 +36,4 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxm-rbox-pro.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-gxm-vega-s96.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-khadas-vim3l.dtb
>> +dtb-$(CONFIG_ARCH_MESON) += meson-a1-ad401.dtb
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts b/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts
>> new file mode 100644
>> index 00000000..3c05cc0
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts
>> @@ -0,0 +1,30 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "meson-a1.dtsi"
>> +
>> +/ {
>> +	compatible = "amlogic,ad401", "amlogic,a1";
>> +	model = "Amlogic Meson A1 AD401 Development Board";
>> +
>> +	aliases {
>> +		serial0 = &uart_AO_B;
>> +	};
> 
> Newline here please
> 
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +	};
> 
> same
> 
>> +	memory@0 {
>> +		device_type = "memory";
>> +		linux,usable-memory = <0x0 0x0 0x0 0x8000000>;
>> +	};
>> +};
>> +
>> +&uart_AO_B {
>> +	status = "okay";
>> +	/*pinctrl-0 = <&uart_ao_a_pins>;*/
>> +	/*pinctrl-names = "default";*/
> 
> Remove the commented code please
> 
>> +};
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> new file mode 100644
>> index 00000000..b98d648
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> @@ -0,0 +1,121 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/ {
>> +	compatible = "amlogic,a1";
>> +
>> +	interrupt-parent = <&gic>;
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	cpus {
>> +		#address-cells = <0x2>;
>> +		#size-cells = <0x0>;
>> +
>> +		cpu0: cpu@0 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a35";
>> +			reg = <0x0 0x0>;
>> +			enable-method = "psci";
>> +			next-level-cache = <&l2>;
>> +		};
>> +
>> +		cpu1: cpu@1 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a35";
>> +			reg = <0x0 0x1>;
>> +			enable-method = "psci";
>> +			next-level-cache = <&l2>;
>> +		};
>> +
>> +		l2: l2-cache0 {
>> +			compatible = "cache";
>> +		};
>> +	};
> 
> New line here please
> 
> With this minor comments adressed, looks good.
> 
> Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>
> 
>> +	psci {
>> +		compatible = "arm,psci-1.0";
>> +		method = "smc";
>> +	};
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		linux,cma {
>> +			compatible = "shared-dma-pool";
>> +			reusable;
>> +			size = <0x0 0x800000>;
>> +			alignment = <0x0 0x400000>;
>> +			linux,cma-default;
>> +		};
>> +	};
>> +
>> +	sm: secure-monitor {
>> +		compatible = "amlogic,meson-gxbb-sm";
>> +	};
>> +
>> +	soc {
>> +		compatible = "simple-bus";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		uart_AO: serial@fe001c00 {
>> +			compatible = "amlogic,meson-gx-uart",
>> +				     "amlogic,meson-ao-uart";
>> +			reg = <0x0 0xfe001c00 0x0 0x18>;
>> +			interrupts = <GIC_SPI 25 IRQ_TYPE_EDGE_RISING>;
>> +			clocks = <&xtal>, <&xtal>, <&xtal>;
>> +			clock-names = "xtal", "pclk", "baud";
>> +			status = "disabled";
>> +		};
>> +
>> +		uart_AO_B: serial@fe002000 {
>> +			compatible = "amlogic,meson-gx-uart",
>> +				     "amlogic,meson-ao-uart";
>> +				     reg = <0x0 0xfe002000 0x0 0x18>;
>> +			interrupts = <GIC_SPI 26 IRQ_TYPE_EDGE_RISING>;
>> +			clocks = <&xtal>, <&xtal>, <&xtal>;
>> +			clock-names = "xtal", "pclk", "baud";
>> +			status = "disabled";
>> +		};
>> +
>> +		gic: interrupt-controller@ff901000 {
>> +			compatible = "arm,gic-400";
>> +			reg = <0x0 0xff901000 0x0 0x1000>,
>> +			      <0x0 0xff902000 0x0 0x2000>,
>> +			      <0x0 0xff904000 0x0 0x2000>,
>> +			      <0x0 0xff906000 0x0 0x2000>;
>> +			interrupt-controller;
>> +			interrupts = <GIC_PPI 9
>> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_HIGH)>;
>> +			#interrupt-cells = <3>;
>> +			#address-cells = <0>;
>> +		};
>> +	};
>> +
>> +	timer {
>> +		compatible = "arm,armv8-timer";
>> +		interrupts = <GIC_PPI 13
>> +			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>,
>> +			     <GIC_PPI 14
>> +			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>,
>> +			     <GIC_PPI 11
>> +			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>,
>> +			     <GIC_PPI 10
>> +			(GIC_CPU_MASK_RAW(0xff) | IRQ_TYPE_LEVEL_LOW)>;
>> +	};
>> +
>> +	xtal: xtal-clk {
>> +		compatible = "fixed-clock";
>> +		clock-frequency = <24000000>;
>> +		clock-output-names = "xtal";
>> +		#clock-cells = <0>;
>> +	};
>> +};
>> -- 
>> 2.7.4
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
