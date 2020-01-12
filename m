Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D675138477
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 02:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIblR+gmdNMgVQP30xrOQJE5MbtbDdmMM4IOx0syOHg=; b=FFEMI92q4yvndB
	Co/+IREhf1cDl5achj3ujgZGkTB06J+Cby6Ncb/uTW6jPk1GzCo0spzIMGLpQtEbbaRWLAKt+C0AO
	55xYXp7xljsIWUOeefrDi8RpTzd2BhnKC4u/BQCIDQovsCiac1U83ZzYa/8GYsUucFcCHhl8gNC7f
	8+MsOlhZwIcDl8co/DIyhOZo8gMP4s5liJBiX+7PAmgzhzj3y7/4wHfyLhd3SAs2oNzMW7rjGQIoe
	Zq2khmRrtjNT/W9mYhxPXd/o15BFWhAOkquLVSva9Lb6EimIMAV0n9t5EQcb05FbPerSE8wilfWxh
	AcPsOi+dgIkakaxSdV1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqSQy-0002Pv-BI; Sun, 12 Jan 2020 01:52:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqSQq-0002P2-PV
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 01:52:51 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5410F2084D;
 Sun, 12 Jan 2020 01:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578793968;
 bh=udka/sliyE9280BwDHTCnWylW+X4yKda42z/5IDDarI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NYB4D/aQkB6gIJpwifECbuX7+SReqoD6/WYps9XbUq0+oMEgf8qtnHVoSVCbxVdOK
 itAzZfBXIhLdUhe8MI3GzwS4xKMCFZLWi0jqeCIexOErSWCByaZjfmU+szJ6TB3raS
 OBD1wIVop+r/BT7kvUc4iwY7uVPB5eKcC3hzWnr4=
Date: Sun, 12 Jan 2020 09:52:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/3] arm64: dts: freescale: Add i.MX8MP dtsi support
Message-ID: <20200112015228.GX4456@T480>
References: <1577426385-31273-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577426385-31273-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_175248_875320_2108A754 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, cosmin.stoica@nxp.com,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 jun.li@nxp.com, gary.bisson@boundarydevices.com, marcel.ziswiler@toradex.com,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 27, 2019 at 01:59:43PM +0800, Anson Huang wrote:
> The i.MX8M Plus Media Applications Processor is part of the growing
> mScale family targeting the consumer and industrial market. It brings
> an effective Machine Learning and AI accelerator that enables a new
> class of applications. It is built in Samsung 14LPP to achieve both
> high performance and low power consumption and relies on a powerful
> fully coherent core complex based on a quad core ARM Cortex-A53 cluster
> and Cortex-M7 low-power coprocessor, audio digital signal processor,
> machine learning and graphics accelerators.
> 
> Add the basic dtsi support for i.MX8MP.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 598 ++++++++++++++++++++++++++++++
>  1 file changed, 598 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> new file mode 100644
> index 0000000..0fb29cc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -0,0 +1,598 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +#include <dt-bindings/clock/imx8mp-clock.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +#include "imx8mp-pinfunc.h"
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		ethernet0 = &fec;
> +		gpio0 = &gpio1;
> +		gpio1 = &gpio2;
> +		gpio2 = &gpio3;
> +		gpio3 = &gpio4;
> +		gpio4 = &gpio5;
> +		mmc0 = &usdhc1;
> +		mmc1 = &usdhc2;
> +		mmc2 = &usdhc3;
> +		serial0 = &uart1;
> +		serial1 = &uart2;
> +		serial2 = &uart3;
> +		serial3 = &uart4;
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		A53_0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0>;
> +			clock-latency = <61036>;
> +			clocks = <&clk IMX8MP_CLK_ARM>;
> +			enable-method = "psci";
> +			next-level-cache = <&A53_L2>;
> +		};
> +
> +		A53_1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x1>;
> +			clock-latency = <61036>;
> +			clocks = <&clk IMX8MP_CLK_ARM>;
> +			enable-method = "psci";
> +			next-level-cache = <&A53_L2>;
> +		};
> +
> +		A53_2: cpu@2 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x2>;
> +			clock-latency = <61036>;
> +			clocks = <&clk IMX8MP_CLK_ARM>;
> +			enable-method = "psci";
> +			next-level-cache = <&A53_L2>;
> +		};
> +
> +		A53_3: cpu@3 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x3>;
> +			clock-latency = <61036>;
> +			clocks = <&clk IMX8MP_CLK_ARM>;
> +			enable-method = "psci";
> +			next-level-cache = <&A53_L2>;
> +		};
> +
> +		A53_L2: l2-cache0 {
> +			compatible = "cache";
> +		};
> +	};
> +
> +	osc_32k: clock-osc-32k {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <32768>;
> +		clock-output-names = "osc_32k";
> +	};
> +
> +	osc_24m: clock-osc-24m {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		clock-output-names = "osc_24m";
> +	};
> +
> +	clk_ext1: clock-ext1 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <133000000>;
> +		clock-output-names = "clk_ext1";
> +	};
> +
> +	clk_ext2: clock-ext2 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <133000000>;
> +		clock-output-names = "clk_ext2";
> +	};
> +
> +	clk_ext3: clock-ext3 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <133000000>;
> +		clock-output-names = "clk_ext3";
> +	};
> +
> +	clk_ext4: clock-ext4 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency= <133000000>;
> +		clock-output-names = "clk_ext4";
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>;
> +		clock-frequency = <8000000>;
> +		arm,no-tick-in-suspend;
> +	};
> +
> +	soc@0 {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x0 0x0 0x3e000000>;
> +
> +		aips1: bus@30000000 {
> +			compatible = "simple-bus";
> +			reg = <0x30000000 0x400000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			gpio1: gpio@30200000 {
> +				compatible = "fsl,imx8mp-gpio", "fsl,imx35-gpio";

I would enforce that any new compatible needs to be documented.

> +				reg = <0x30200000 0x10000>;
> +				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_GPIO1_ROOT>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 5 30>;
> +			};
> +
> +			gpio2: gpio@30210000 {
> +				compatible = "fsl,imx8mp-gpio", "fsl,imx35-gpio";
> +				reg = <0x30210000 0x10000>;
> +				interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_GPIO2_ROOT>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 35 21>;
> +			};
> +
> +			gpio3: gpio@30220000 {
> +				compatible = "fsl,imx8mp-gpio", "fsl,imx35-gpio";
> +				reg = <0x30220000 0x10000>;
> +				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_GPIO3_ROOT>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 56 26>, <&iomuxc 0 144 4>;
> +			};
> +
> +			gpio4: gpio@30230000 {
> +				compatible = "fsl,imx8mp-gpio", "fsl,imx35-gpio";
> +				reg = <0x30230000 0x10000>;
> +				interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_GPIO4_ROOT>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 82 32>;
> +			};
> +
> +			gpio5: gpio@30240000 {
> +				compatible = "fsl,imx8mp-gpio", "fsl,imx35-gpio";
> +				reg = <0x30240000 0x10000>;
> +				interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_GPIO5_ROOT>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 114 30>;
> +			};
> +
> +			wdog1: watchdog@30280000 {
> +				compatible = "fsl,imx8mp-wdt", "fsl,imx21-wdt";
> +				reg = <0x30280000 0x10000>;
> +				interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_WDOG1_ROOT>;
> +				status = "disabled";
> +			};
> +
> +			iomuxc: pinctrl@30330000 {
> +				compatible = "fsl,imx8mp-iomuxc";
> +				reg = <0x30330000 0x10000>;
> +			};
> +
> +			gpr: iomuxc-gpr@30340000 {
> +				compatible = "fsl,imx8mp-iomuxc-gpr", "syscon";
> +				reg = <0x30340000 0x10000>;
> +			};
> +
> +			ocotp: ocotp-ctrl@30350000 {
> +				compatible = "fsl,imx8mp-ocotp", "fsl,imx8mm-ocotp", "syscon";
> +				reg = <0x30350000 0x10000>;
> +				clocks = <&clk IMX8MP_CLK_OCOTP_ROOT>;
> +				/* For nvmem subnodes */
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				cpu_speed_grade: speed-grade@10 {
> +					reg = <0x10 4>;
> +				};
> +			};
> +
> +			anatop: anatop@30360000 {
> +				compatible = "fsl,imx8mp-anatop", "fsl,imx8mm-anatop",
> +					     "syscon";
> +				reg = <0x30360000 0x10000>;
> +			};
> +
> +			snvs: snvs@30370000 {
> +				compatible = "fsl,sec-v4.0-mon","syscon", "simple-mfd";
> +				reg = <0x30370000 0x10000>;
> +
> +				snvs_rtc: snvs-rtc-lp {
> +					compatible = "fsl,sec-v4.0-mon-rtc-lp";
> +					regmap =<&snvs>;
> +					offset = <0x34>;
> +					interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
> +						     <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
> +					clocks = <&clk IMX8MP_CLK_SNVS_ROOT>;
> +					clock-names = "snvs-rtc";
> +				};
> +
> +				snvs_pwrkey: snvs-powerkey {
> +					compatible = "fsl,sec-v4.0-pwrkey";
> +					regmap = <&snvs>;
> +					interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> +					linux,keycode = <KEY_POWER>;
> +					wakeup-source;
> +					status = "disabled";
> +				};
> +			};
> +
> +			clk: clock-controller@30380000 {
> +				compatible = "fsl,imx8mp-ccm";
> +				reg = <0x30380000 0x10000>;
> +				#clock-cells = <1>;
> +				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
> +					 <&clk_ext3>, <&clk_ext4>;
> +				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
> +					      "clk_ext3", "clk_ext4";
> +				assigned-clocks = <&clk IMX8MP_CLK_AUDIO_AHB>,
> +						  <&clk IMX8MP_CLK_IPG_AUDIO_ROOT>,
> +						  <&clk IMX8MP_AUDIO_PLL1>,
> +						  <&clk IMX8MP_AUDIO_PLL2>;
> +			};
> +
> +			src: src@30390000 {
> +				compatible = "fsl,imx8mp-src", "fsl,imx8mq-src", "syscon";
> +				reg = <0x30390000 0x10000>;
> +				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> +				#reset-cells = <1>;
> +			};
> +		};
> +
> +		aips2: bus@30400000 {
> +			compatible = "simple-bus";
> +			reg = <0x30400000 0x400000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			pwm1: pwm@30660000 {
> +				compatible = "fsl,imx8mp-pwm", "fsl,imx27-pwm";
> +				reg = <0x30660000 0x10000>;
> +				interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_PWM1_ROOT>,
> +					 <&clk IMX8MP_CLK_PWM1_ROOT>;
> +				clock-names = "ipg", "per";
> +				#pwm-cells = <2>;
> +				status = "disabled";
> +			};
> +
> +			pwm2: pwm@30670000 {
> +				compatible = "fsl,imx8mp-pwm", "fsl,imx27-pwm";
> +				reg = <0x30670000 0x10000>;
> +				interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_PWM2_ROOT>,
> +					 <&clk IMX8MP_CLK_PWM2_ROOT>;
> +				clock-names = "ipg", "per";
> +				#pwm-cells = <2>;
> +				status = "disabled";
> +			};
> +
> +			pwm3: pwm@30680000 {
> +				compatible = "fsl,imx8mp-pwm", "fsl,imx27-pwm";
> +				reg = <0x30680000 0x10000>;
> +				interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_PWM3_ROOT>,
> +					 <&clk IMX8MP_CLK_PWM3_ROOT>;
> +				clock-names = "ipg", "per";
> +				#pwm-cells = <2>;
> +				status = "disabled";
> +			};
> +
> +			pwm4: pwm@30690000 {
> +				compatible = "fsl,imx8mp-pwm", "fsl,imx27-pwm";
> +				reg = <0x30690000 0x10000>;
> +				interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_PWM4_ROOT>,
> +					 <&clk IMX8MP_CLK_PWM4_ROOT>;
> +				clock-names = "ipg", "per";
> +				#pwm-cells = <2>;
> +				status = "disabled";
> +			};
> +		};
> +
> +		aips3: bus@30800000 {
> +			compatible = "simple-bus";
> +			reg = <0x30800000 0x400000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			ecspi1: spi@30820000 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				compatible = "fsl,imx8mp-ecspi", "fsl,imx51-ecspi";
> +				reg = <0x30820000 0x10000>;
> +				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_ECSPI1_ROOT>,
> +					 <&clk IMX8MP_CLK_ECSPI1_ROOT>;
> +				clock-names = "ipg", "per";
> +				dmas = <&sdma1 0 7 1>, <&sdma1 1 7 2>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};
> +
> +			ecspi2: spi@30830000 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				compatible = "fsl,imx8mp-ecspi", "fsl,imx51-ecspi";
> +				reg = <0x30830000 0x10000>;
> +				interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_ECSPI2_ROOT>,
> +					 <&clk IMX8MP_CLK_ECSPI2_ROOT>;
> +				clock-names = "ipg", "per";
> +				dmas = <&sdma1 2 7 1>, <&sdma1 3 7 2>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};
> +
> +			ecspi3: spi@30840000 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				compatible = "fsl,imx8mp-ecspi", "fsl,imx51-ecspi";
> +				reg = <0x30840000 0x10000>;
> +				interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_ECSPI3_ROOT>,
> +					 <&clk IMX8MP_CLK_ECSPI3_ROOT>;
> +				clock-names = "ipg", "per";
> +				dmas = <&sdma1 4 7 1>, <&sdma1 5 7 2>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};
> +
> +			uart1: serial@30860000 {
> +				compatible = "fsl,imx8mp-uart", "fsl,imx6q-uart";
> +				reg = <0x30860000 0x10000>;
> +				interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_UART1_ROOT>,
> +					 <&clk IMX8MP_CLK_UART1_ROOT>;
> +				clock-names = "ipg", "per";
> +				dmas = <&sdma1 22 4 0>, <&sdma1 23 4 0>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};
> +
> +			uart3: serial@30880000 {
> +				compatible = "fsl,imx8mp-uart", "fsl,imx6q-uart";
> +				reg = <0x30880000 0x10000>;
> +				interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_UART3_ROOT>,
> +					 <&clk IMX8MP_CLK_UART3_ROOT>;
> +				clock-names = "ipg", "per";
> +				dmas = <&sdma1 26 4 0>, <&sdma1 27 4 0>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};
> +
> +			uart2: serial@30890000 {
> +				compatible = "fsl,imx8mp-uart", "fsl,imx6q-uart";
> +				reg = <0x30890000 0x10000>;
> +				interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_UART2_ROOT>,
> +					 <&clk IMX8MP_CLK_UART2_ROOT>;
> +				clock-names = "ipg", "per";
> +				status = "disabled";
> +			};
> +
> +			i2c1: i2c@30a20000 {
> +				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0x30a20000 0x10000>;
> +				interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_I2C1_ROOT>;
> +				status = "disabled";
> +			};
> +
> +			i2c2: i2c@30a30000 {
> +				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0x30a30000 0x10000>;
> +				interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_I2C2_ROOT>;
> +				status = "disabled";
> +			};
> +
> +			i2c3: i2c@30a40000 {
> +				compatible = "fsl,imx8mm-i2c", "fsl,imx21-i2c";
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0x30a40000 0x10000>;
> +				interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_I2C3_ROOT>;
> +				status = "disabled";
> +			};
> +
> +			i2c4: i2c@30a50000 {
> +				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0x30a50000 0x10000>;
> +				interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_I2C4_ROOT>;
> +				status = "disabled";
> +			};
> +
> +			uart4: serial@30a60000 {
> +				compatible = "fsl,imx8mp-uart", "fsl,imx6q-uart";
> +				reg = <0x30a60000 0x10000>;
> +				interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_UART4_ROOT>,
> +					 <&clk IMX8MP_CLK_UART4_ROOT>;
> +				clock-names = "ipg", "per";
> +				dmas = <&sdma1 28 4 0>, <&sdma1 29 4 0>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};
> +
> +			i2c5: i2c@30ad0000 {
> +				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0x30ad0000 0x10000>;
> +				interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_I2C5_ROOT>;
> +				status = "disabled";
> +			};
> +
> +			i2c6: i2c@30ae0000 {
> +				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0x30ae0000 0x10000>;
> +				interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_I2C6_ROOT>;
> +				status = "disabled";
> +			};
> +
> +			usdhc1: mmc@30b40000 {
> +				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";

Why would we need two non-imx8mp compatibles here?

> +				reg = <0x30b40000 0x10000>;
> +				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_DUMMY>,
> +					 <&clk IMX8MP_CLK_NAND_USDHC_BUS>,
> +					 <&clk IMX8MP_CLK_USDHC1_ROOT>;
> +				clock-names = "ipg", "ahb", "per";
> +				fsl,tuning-start-tap = <20>;
> +				fsl,tuning-step= <2>;
> +				bus-width = <4>;
> +				status = "disabled";
> +			};
> +
> +			usdhc2: mmc@30b50000 {
> +				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
> +				reg = <0x30b50000 0x10000>;
> +				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_DUMMY>,
> +					 <&clk IMX8MP_CLK_NAND_USDHC_BUS>,
> +					 <&clk IMX8MP_CLK_USDHC2_ROOT>;
> +				clock-names = "ipg", "ahb", "per";
> +				fsl,tuning-start-tap = <20>;
> +				fsl,tuning-step= <2>;
> +				bus-width = <4>;
> +				status = "disabled";
> +			};
> +
> +			usdhc3: mmc@30b60000 {
> +				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
> +				reg = <0x30b60000 0x10000>;
> +				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_DUMMY>,
> +					 <&clk IMX8MP_CLK_NAND_USDHC_BUS>,
> +					 <&clk IMX8MP_CLK_USDHC3_ROOT>;
> +				clock-names = "ipg", "ahb", "per";
> +				fsl,tuning-start-tap = <20>;
> +				fsl,tuning-step= <2>;
> +				bus-width = <4>;
> +				status = "disabled";
> +			};
> +
> +			sdma1: dma-controller@30bd0000 {
> +				compatible = "fsl,imx8mp-sdma", "fsl,imx8mq-sdma";
> +				reg = <0x30bd0000 0x10000>;
> +				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_SDMA1_ROOT>,
> +					 <&clk IMX8MP_CLK_SDMA1_ROOT>;
> +				clock-names = "ipg", "ahb";
> +				#dma-cells = <3>;
> +				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx7d.bin";
> +			};
> +
> +			fec: ethernet@30be0000 {
> +				compatible = "fsl,imx8mm-fec", "fsl,imx8mq-fec", "fsl,imx6sx-fec";

We need only one non-imx8mp fallback compatible to get it probed, right?

Shawn

> +				reg = <0x30be0000 0x10000>;
> +				interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_ENET1_ROOT>,
> +					 <&clk IMX8MP_CLK_SIM_ENET_ROOT>,
> +					 <&clk IMX8MP_CLK_ENET_TIMER>,
> +					 <&clk IMX8MP_CLK_ENET_REF>,
> +					 <&clk IMX8MP_CLK_ENET_PHY_REF>;
> +				clock-names = "ipg", "ahb", "ptp",
> +					      "enet_clk_ref", "enet_out";
> +				assigned-clocks = <&clk IMX8MP_CLK_ENET_AXI>,
> +						  <&clk IMX8MP_CLK_ENET_TIMER>,
> +						  <&clk IMX8MP_CLK_ENET_REF>,
> +						  <&clk IMX8MP_CLK_ENET_TIMER>;
> +				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_266M>,
> +							 <&clk IMX8MP_SYS_PLL2_100M>,
> +							 <&clk IMX8MP_SYS_PLL2_125M>;
> +				assigned-clock-rates = <0>, <0>, <125000000>, <100000000>;
> +				fsl,num-tx-queues = <3>;
> +				fsl,num-rx-queues = <3>;
> +				status = "disabled";
> +			};
> +		};
> +
> +		gic: interrupt-controller@38800000 {
> +			compatible = "arm,gic-v3";
> +			reg = <0x38800000 0x10000>,
> +			      <0x38880000 0xc0000>;
> +			#interrupt-cells = <3>;
> +			interrupt-controller;
> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-parent = <&gic>;
> +		};
> +	};
> +};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
