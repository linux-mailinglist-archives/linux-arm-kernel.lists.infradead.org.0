Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F22C212C04B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 04:30:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3dvt/KR198ejnmobbZFXUMfhxqo56Sh/zB2SLzqz6s=; b=Px+TyX54m4uDpD
	wzRUL8LyuuUAxUMnKr+uGrAONftHKI4bwl195ie/9UHF9EpdNBEVIkGQNRkc8ujQ2jjPa6F1Nlot4
	qVa0MIsUYvjMpDFNPi6lNrjtgbOI8ohT9Cwq9Q7cxhKlLebA8neQ9DL+gr2jnboEl58JsZzsVrkGG
	rixFW3SfL76TAZxfTPx2lEojxJqMcZVLsPi1J7od8tsYaIEN+Pd5zdAaB51Ytq/slv2UhZwduq79B
	MCQSEFZqCnA/qxrnApGnUKCzRrZvKVRTnh9ACJqKfSrfNZezdm8nrvMCBiHvkcf91NEUWDLtYlI2o
	LS4i+aLyuCcMH0Ur0+/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilPHE-0005eV-ME; Sun, 29 Dec 2019 03:30:00 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilPH2-0005dx-MG
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 03:29:50 +0000
Received: by mail-pg1-x543.google.com with SMTP id z124so16421438pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 19:29:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YxxAZsSMUkW8oloeJnDXdpDkQN3gsR7yEBtfu7TuDYU=;
 b=bOemgE2NF7QpGIRtrZv2N65twkzoHEDc2KnHPThwWd7Q7Pjtovpxp7Y8PR7/eWk6BU
 rWkkbHVu1HbZU82PgsieO9tV9en1OmkSLBbVW8d8R91q0NnahRLNEXKpwpfA2RXGuJlW
 xgmpRPOKPh37Kw6PdlrtxcDRclrGHWnchm1QyZJNIDpXyrccKUGAA/QsBGxJFmFhSK1D
 IMrJ5dlMn7FM1U8YATh+JYVffNbZ9FrZp6fA5vrzi6+zI/SSU+SxL6ZHLY6sghDUULJY
 G+PHA/tbBAFot+IqQFkziyJ2opdEsEDpvGxbk0TbKnWKneiVhROQkCBFTHgThmnidnf/
 qbzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YxxAZsSMUkW8oloeJnDXdpDkQN3gsR7yEBtfu7TuDYU=;
 b=rUzQOgmfuu1jKNeZ9dEoZ0uI0goPER+Jn9oF/Rw4j0f4wqXcAFuqtpUM6NVg97Z16f
 qvucH584NbjnEJmIPH21lrTMHOpZdri0XA1VAC/Uhagzp9JSp1ymFb0HBT6IuxxWkhDu
 rxBt7C9B8nxHeyDXX8wUp/vIk2NJBohksMpehJXAURSGDGnCcvEPK0E33aadnXqBOgAG
 VV/+1OnW24y+TGm8oNwQJ0h++J5jGJ94eBr00gliRxUrnUUpIImxelN4QIf0rp/5+QXi
 x7FthG5ecAuEAiV+h0QjvqtvJUz6Rb93iVP/WH3gWh5S7RJ6EaTrtSWoj77QRdn57Phi
 Q4bw==
X-Gm-Message-State: APjAAAWrxlBbgpTkIKHMq3GUTNBwrZi9Gxk/AHFC7MANWduycs1QASqj
 lu/e/nZpWC8IzI/mmLvV1rKt6g==
X-Google-Smtp-Source: APXvYqxVv4m9SNNFO3z2Hb9Id0Yg/k7h6XQXcoK8OiYRuvyZDjyuRDzolk+0KwTD//I3PypGgqT3yQ==
X-Received: by 2002:a62:8602:: with SMTP id x2mr63898722pfd.39.1577590187534; 
 Sat, 28 Dec 2019 19:29:47 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 64sm44628030pfd.48.2019.12.28.19.29.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 19:29:46 -0800 (PST)
Date: Sat, 28 Dec 2019 19:29:44 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH V2 6/7] arm64: dts: Add ipq6018 SoC and CP01 board support
Message-ID: <20191229032944.GM3755841@builder>
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
 <1576752109-24497-7-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576752109-24497-7-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_192948_848384_E9881AAA 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-gpio@vger.kernel.org, agross@kernel.org, sivaprak@codeaurora.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 19 Dec 02:41 PST 2019, Sricharan R wrote:

> Add initial device tree support for the Qualcomm IPQ6018 SoC and
> CP01 evaluation board.
> 

Hi Sricharan, thanks for the rework, this looks pretty good now, just
some minor comments below.

> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>

Should this have some Co-developed-by?

> ---
> 
>  [V2] Sorted nodes based on address, name, label.
>       Removed unused clock nodes.
>       Addressed other review comments.
> 
>  arch/arm64/boot/dts/qcom/Makefile            |   1 +
>  arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts |  41 +++++
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi        | 215 +++++++++++++++++++++++++++
>  3 files changed, 257 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018.dtsi
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 6498a1e..2b24998 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-sbc.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= ipq6018-cp01-c1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-longcheer-l8150.dtb
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> new file mode 100644
> index 0000000..82a6024
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> @@ -0,0 +1,41 @@
> +// SPDX-License-Identifier: GPL-2.0

Please dual license as GPL+BSD

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
> +	model = "Qualcomm Technologies, Inc. IPQ6018/AP-CP01-C1";
> +	compatible = "qcom,ipq6018-cp01", "qcom,ipq6018";
> +
> +	aliases {
> +		serial0 = &blsp1_uart3;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +		bootargs-append = " swiotlb=1";
> +	};
> +};
> +
> +&blsp1_uart3 {
> +	pinctrl-0 = <&uart_pins>;
> +	pinctrl-names = "default";
> +	status = "ok";
> +};
> +
> +&tlmm {
> +	uart_pins: uart_pins {

Reference the &uart_pins directly, and please use a more specific name.

> +		mux {

I would suggest that you either flatten the "mux" subnode and define the
properties directly in &uart_pins; or you split it the functional pieces
of rx { } tx { }.

And right now you're duplicating the properties between the dtsi and the
dts, either drop one of them or define the function in the dtsi and add
the drive-strenght and bias-pull-down here.

> +			pins = "gpio44", "gpio45";
> +			function = "blsp2_uart";
> +			drive-strength = <8>;
> +			bias-pull-down;
> +		};
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> new file mode 100644
> index 0000000..269287c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -0,0 +1,215 @@
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
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +	interrupt-parent = <&intc>;
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		tz: tz@48500000 {
> +			reg = <0x0 0x48500000 0x0 0x00200000>;
> +			no-map;
> +		};
> +	};
> +
> +	soc: soc {

soc@0

Shouldn't this be sorted after 'p'?

Regards,
Bjorn

> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0 0 0xffffffff>;
> +		dma-ranges;
> +		compatible = "simple-bus";
> +
> +		tlmm: pinctrl@1000000 {
> +			compatible = "qcom,ipq6018-pinctrl";
> +			reg = <0x01000000 0x300000>;
> +			interrupts = <GIC_SPI 0xd0 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&tlmm 0 80>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +
> +			uart_pins: uart_pins {
> +				pins = "gpio44", "gpio45";
> +				function = "blsp2_uart";
> +				drive-strength = <8>;
> +				bias-pull-down;
> +			};
> +		};
> +
> +		gcc: gcc@1800000 {
> +			compatible = "qcom,gcc-ipq6018";
> +			reg = <0x01800000 0x80000>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
> +		blsp1_uart3: serial@78b1000 {
> +			compatible = "qcom,msm-uartdm-v1.4", "qcom,msm-uartdm";
> +			reg = <0x078b1000 0x200>;
> +			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gcc GCC_BLSP1_UART3_APPS_CLK>,
> +				<&gcc GCC_BLSP1_AHB_CLK>;
> +			clock-names = "core", "iface";
> +			status = "disabled";
> +		};
> +
> +		intc: interrupt-controller@b000000 {
> +			compatible = "qcom,msm-qgic2";
> +			interrupt-controller;
> +			#interrupt-cells = <0x3>;
> +			reg =   <0x0b000000 0x1000>,  /*GICD*/
> +				<0x0b002000 0x1000>,  /*GICC*/
> +				<0x0b001000 0x1000>,  /*GICH*/
> +				<0x0b004000 0x1000>;  /*GICV*/
> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
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
> +			reg = <0x0b120000 0x1000>;
> +			clock-frequency = <19200000>;
> +
> +			frame@b120000 {
> +				frame-number = <0>;
> +				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0b121000 0x1000>,
> +				      <0x0b122000 0x1000>;
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
> +				reg = <0x0b124000 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@b125000 {
> +				frame-number = <3>;
> +				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0b125000 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@b126000 {
> +				frame-number = <4>;
> +				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0b126000 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@b127000 {
> +				frame-number = <5>;
> +				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0b127000 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@b128000 {
> +				frame-number = <6>;
> +				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0b128000 0x1000>;
> +				status = "disabled";
> +			};
> +		};
> +
> +	};
> +
> +	clocks {
> +		sleep_clk: sleep-clk {
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
> +	};
> +
> +	cpus: cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
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
> +		compatible = "arm,cortex-a53-pmu";
> +		interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(4) |
> +					 IRQ_TYPE_LEVEL_HIGH)>;
> +	};
> +
> +	psci: psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +};
> -- 
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
