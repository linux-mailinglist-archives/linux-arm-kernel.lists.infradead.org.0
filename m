Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C4639A61
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 05:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJzpoXEhVE3nle2TxQVqzTTUbR6VQVv44eyKkcHDzKs=; b=CEdx50IZPHMHbV
	tzPLnyak7QbYP0s4DMTe2uD8uOPTFWEQDXVqNa8HhXyNaOPS7Gl7Vn/AXRAYFL/5mnbSeR9YzpfX2
	HecplSYI9VYaCu8MWLjaYA+E12YKnXBscTdBru6S2+Vbxx7rdqoLIEsaTJBFhWkHkLv99wNEDDq5A
	4UWXIz5tLD3vTdMIitImsp0koQOq/+F51Z1qSgdnxVWxVsM6ADHM1F9dLoiA2g0aeIqVXmEJ5AZn9
	UomB+sLZVpvQhwSWlydS7UJFae1Zz9jblIpWgrHMeYx5tV325FqFsF8mEK/BmzIpZWF3u5CcqPqfn
	tVLPEeek0ODA2zvCEAjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZSLd-0006vF-5g; Sat, 08 Jun 2019 03:48:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZSLP-0006uB-MX
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 03:48:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so1709090pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 20:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yt5F3KHUlzjy0AdkA6V8SCn+TqvjDlOlGQ7sXkFU/4U=;
 b=pMq8yt72s6hvm85eFMqbo1bbvvUHknNb7NANwZTI7zKyQUy3mAxQsnmEzO/uYaDk86
 1tph5zL4g+BSsCzwZLG5mCMyNUtp4wEOVC2fMakjSyLC/+NwtC8C+S4/HIMzdc5Z1Nyv
 iDAVTJ8SLMnT/IeLDpMc8uHKUyMRLql0RExI11hvRp7bn35lgViBYH15ICPJzX9E3a/8
 wpmy9A33YsU4ssf8/ysUuyRSJkv3Q2SMSAehkPOKrSIH4jIs08C/ADnE42D507/iaBbZ
 DwdY8mc/uaT6Wfb+Qwvfpjvm4Qscwg3kX0U63wehEJzLI1BxfIUEK8N4ltciAkfVH0SX
 VhGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yt5F3KHUlzjy0AdkA6V8SCn+TqvjDlOlGQ7sXkFU/4U=;
 b=EG9J1K80Uwu1pUMMqeSmKRuUYZ61507U9wHYBXjK+X9H4RbShYpnaBN4wMTwVU9MnD
 lO+DpqRhoqVanwvUMAMk67iZNhifTCjJFFhAg+aCeHCRHSfytO1LqcXXjSPv9iqkQI3x
 IqjMheGXUYc1EeY/ZMZkM+pxBTUf007UIREUVV7xErFei37+jmZ6AJqW0tkzTN4qn29S
 cxFbTq0WGUVP79vZEbu0RIYmCm0EXymQ8lIJ+VFM8mY9JI9ZGFM9ghgt8hImv8GZLCFC
 zQOUiKqHAXQQIUcLF3ogNHY5cfDoapVxOaU2G1YEVd/7H5KV5OOYhMwdGxrpxXWM6hLR
 VoLg==
X-Gm-Message-State: APjAAAU2O7TxMylwlcYvi8fdFlnh0L+y8/UAIJTmyRjjk0wj5QNkXxiq
 WerSC6fYHfSO+io1EO04Rqu4xusAW8s=
X-Google-Smtp-Source: APXvYqx41j/Y9xOVY+gwjTUJtSuLJFtt/seEk+u1PtXLDXZTDfYMw85BXhi5o3RAGvgn0vb+EC8lHA==
X-Received: by 2002:a17:90a:5884:: with SMTP id
 j4mr9640327pji.142.1559965718573; 
 Fri, 07 Jun 2019 20:48:38 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a12sm4965276pgq.0.2019.06.07.20.48.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 20:48:37 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:48:35 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
Message-ID: <20190608034835.GH24059@builder>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-6-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559754961-26783-6-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_204839_741996_0621DC3F 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, sboyd@codeaurora.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 05 Jun 10:16 PDT 2019, Sricharan R wrote:

> Add initial device tree support for the Qualcomm IPQ6018 SoC and
> CP01 evaluation board.
> 
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>

Please fix the order of these (or add a Co-developed-by).

> ---
>  arch/arm64/boot/dts/qcom/Makefile            |   1 +
>  arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts |  35 ++++
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi        | 231 +++++++++++++++++++++++++++
>  3 files changed, 267 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018.dtsi
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 21d548f..ac22dbb 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -2,6 +2,7 @@
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-sbc.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= ipq6018-cp01-c1.dtb

Sort order.

>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8992-bullhead-rev-101.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8994-angler-rev-101.dtb
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> new file mode 100644
> index 0000000..ac7cb22
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * IPQ6018 CP01 board device tree source
> + *
> + * Copyright (c) 2019, The Linux Foundation. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "ipq6018.dtsi"
> +
> +/ {
> +	#address-cells = <0x2>;
> +	#size-cells = <0x2>;

This is a count, write it in base 10..

> +	model = "Qualcomm Technologies, Inc. IPQ6018/AP-CP01-C1";
> +	compatible = "qcom,ipq6018-cp01", "qcom,ipq6018";
> +	interrupt-parent = <&intc>;

Changing #address-cells, #size-cells and interrupt-parent will break the
dtsi, so I think you should specify them there.

> +};
> +
> +&tlmm {

Please sort your nodes based on address, then node name, then label.

> +	uart_pins: uart_pins {
> +		mux {
> +			pins = "gpio44", "gpio45";
> +			function = "blsp2_uart";
> +			drive-strength = <8>;
> +			bias-pull-down;
> +		};
> +	};
> +};
> +
> +&blsp1_uart3 {
> +	pinctrl-0 = <&uart_pins>;
> +	pinctrl-names = "default";
> +	status = "ok";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> new file mode 100644
> index 0000000..79cccdd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -0,0 +1,231 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * IPQ6018 SoC device tree source
> + *
> + * Copyright (c) 2019, The Linux Foundation. All rights reserved.
> + */
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/qcom,gcc-ipq6018.h>
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. IPQ6018";
> +	compatible = "qcom,ipq6018";

No need for model and compatible in the dtsi, these should always be
specified by the including file.

> +
> +	chosen {
> +		bootargs = "console=ttyMSM0,115200,n8 rw init=/init";

Do you really need console? Can't you use stdout-path?

And there's no need to specify init=/init.

> +		bootargs-append = " swiotlb=1 clk_ignore_unused";

I'm hoping that you will work on removing the need for
clk_ignore_unused.

> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		tz:tz@48500000 {

Space after :

> +			no-map;
> +			reg = <0x0 0x48500000 0x0 0x00200000>;

I would prefer to have the reg first in these nodes, then the region's
properties.

> +		};
> +	};
> +
> +	soc: soc {
> +		#address-cells = <0x1>;
> +		#size-cells = <0x1>;
> +		ranges = <0 0 0 0xffffffff>;
> +		dma-ranges;
> +		compatible = "simple-bus";
> +
> +		intc: interrupt-controller@b000000 {

As described above, please sort your nodes based on address, node name
and lastly label name.

> +			compatible = "qcom,msm-qgic2";
> +			interrupt-controller;
> +			#interrupt-cells = <0x3>;
> +			reg = <0xb000000 0x1000>, <0xb002000 0x1000>;
> +		};
> +
> +		timer {
> +			compatible = "arm,armv8-timer";
> +			interrupts = <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +				     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +				     <GIC_PPI 4 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +				     <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> +		};
> +
> +		timer@b120000 {
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +			compatible = "arm,armv7-timer-mem";
> +			reg = <0xb120000 0x1000>;

Please pad addresses in reg to 8 digits, to make them faster to compare.

> +			clock-frequency = <19200000>;
> +
> +			frame@b120000 {
> +				frame-number = <0>;
> +				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0xb121000 0x1000>,
> +				      <0xb122000 0x1000>;
> +			};
> +
> +			frame@b123000 {
> +				frame-number = <1>;
> +				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0xb123000 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@b124000 {
> +				frame-number = <2>;
> +				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0xb124000 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@b125000 {
> +				frame-number = <3>;
> +				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0xb125000 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@b126000 {
> +				frame-number = <4>;
> +				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0xb126000 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@b127000 {
> +				frame-number = <5>;
> +				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0xb127000 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@b128000 {
> +				frame-number = <6>;
> +				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0xb128000 0x1000>;
> +				status = "disabled";
> +			};
> +		};
> +
> +		gcc: gcc@1800000 {
> +			compatible = "qcom,gcc-ipq6018";
> +			reg = <0x1800000 0x80000>;
> +			#clock-cells = <0x1>;

This is a count, use base 10.

> +			#reset-cells = <0x1>;
> +		};
> +
> +		blsp1_uart3: serial@78b1000 {
> +			compatible = "qcom,msm-uartdm-v1.4", "qcom,msm-uartdm";
> +			reg = <0x78b1000 0x200>;
> +			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gcc GCC_BLSP1_UART3_APPS_CLK>,
> +				<&gcc GCC_BLSP1_AHB_CLK>;
> +			clock-names = "core", "iface";
> +			status = "disabled";
> +		};
> +
> +		tlmm: pinctrl@1000000 {
> +			compatible = "qcom,ipq6018-pinctrl";
> +			reg = <0x1000000 0x300000>;
> +			interrupts = <GIC_SPI 0xd0 IRQ_TYPE_NONE>;
> +			gpio-controller;
> +			#gpio-cells = <0x2>;

gpio-ranges = <&tlmm 0 80>;

> +			interrupt-controller;
> +			#interrupt-cells = <0x2>;
> +
> +			uart_pins: uart_pins {
> +				pins = "gpio44", "gpio45";
> +				function = "blsp2_uart";
> +				drive-strength = <8>;
> +				bias-pull-down;
> +			};
> +		};
> +	};
> +
> +	psci: psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	cpus: cpus {
> +		#address-cells = <0x1>;
> +		#size-cells = <0x0>;
> +
> +		CPU0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0>;
> +			enable-method = "psci";
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		CPU1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			enable-method = "psci";
> +			reg = <0x1>;
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		CPU2: cpu@2 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			enable-method = "psci";
> +			reg = <0x2>;
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		CPU3: cpu@3 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			enable-method = "psci";
> +			reg = <0x3>;
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		L2_0: l2-cache {
> +			compatible = "cache";
> +			cache-level = <0x2>;
> +		};
> +	};
> +
> +	pmuv8: pmu {
> +		compatible = "arm,armv8-pmuv3";
> +		interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(4) |
> +					 IRQ_TYPE_LEVEL_HIGH)>;
> +	};
> +
> +	clocks {
> +		sleep_clk: sleep_clk {

Don't use _ in the node names.

> +			compatible = "fixed-clock";
> +			clock-frequency = <32000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		xo: xo {
> +			compatible = "fixed-clock";
> +			clock-frequency = <24000000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		bias_pll_cc_clk {

Please give this a label and reference it from the node that uses it
(regardless of the implementation matching by clock name).

> +			compatible = "fixed-clock";
> +			clock-frequency = <300000000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		bias_pll_nss_noc_clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <416500000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		usb3phy_0_cc_pipe_clk {

This should come from the PHY.

> +			compatible = "fixed-clock";
> +			clock-frequency = <125000000>;
> +			#clock-cells = <0>;
> +		};

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
