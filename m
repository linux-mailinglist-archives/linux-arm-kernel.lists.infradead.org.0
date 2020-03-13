Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8293618430B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7apcEdyi+FZyXK9TdnI/TTos2QUHf7mB17rIgboRAM=; b=M77suluhAnszWJ
	q3F5TpsfkJVMajo+L7ScN61ecE/4gHI63duWNHtVHF/sn5Nkp5cSpZWPEl/aF+4DD2CHigErZcub7
	22uM7mzgwNO6G7Hdhi3kQU6VumyORoraDvILvZ+H2y2/y5BrX7DZFXCWNQ28xDjOmX+kHwYxnjAO3
	M24UMHTPLk4RkklbsENItAdzlb22eFzTiviE3GLAmFWIAzRZ+zu54o8i+0W9Ch2pTUmVaZINiSMRb
	1Ah0B+2wsRINhwkvB50iklSKkce8Fntara6fqqLm7QyV3cMP8LLsZw7sDJMoFCVYDwN1rUzanHvAP
	Q9DPUXaYWwwd/yNlmHyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgB8-0006Ct-51; Fri, 13 Mar 2020 09:00:26 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgAy-0006BX-TA
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:00:19 +0000
Received: by mail-ed1-f67.google.com with SMTP id a24so10975251edy.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:00:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QpUfdW4JMUyp0vSz7Oo/hO5E5wuyfssoZCP6uil0gHw=;
 b=tQ2sfyF43IhewBvmaYObB9V6YkFYF7r/CahEjEutr37LCsjJ9yNu84dPIHVS5yb5ac
 Ff3pkqGnpqF7yxfYDD3hmCRWJB4kN4kDGVYO9RVRGsIT33mDUm6mr06/a7iSeG+/PB8E
 oMV75jS7738MPKkJFxsb+xWYQe98IQjKh6vpU3aSUl62dKufBMjqxRoF959CFhM/hdi/
 Gk/RhdQ/qwfRjN2kHr2uR/p9PWcxmmXL/BjTNMszFV5OpBkhDOrivlZM1Lvdx7pSQFsF
 8ucF1gUmgycHvHsgoHoA4swFPFTTuLMS4De9ab+DSnHvBo0y/Pk4IDyk2vFSsaPezoYB
 FAqA==
X-Gm-Message-State: ANhLgQ2lYP24ogaRAvhGBTTgEwwi4AMNhgvNKLqgVNb7ajgC53biTh/J
 LJNdegSlgOBbuTgVR7xXRNc=
X-Google-Smtp-Source: ADFU+vt8w28ua0O0vJPH5gGqi/81mmTwujJ9yi8DHmU5PawZmoq4IrVg7/qbNbRwx5WzyeVncpLAWQ==
X-Received: by 2002:aa7:d2c1:: with SMTP id k1mr12561722edr.29.1584090014096; 
 Fri, 13 Mar 2020 02:00:14 -0700 (PDT)
Received: from pi3 ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id h4sm2131064ejl.25.2020.03.13.02.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 02:00:13 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:00:11 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
Message-ID: <20200313090011.GB7416@pi3>
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312153411.13535-2-paul@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020016_941542_3C95609B 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 04:34:11PM +0100, Paul Cercueil wrote:
> From: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
> 
> Add devicetree file for the Exynos 4210 based Galaxy S2 (i9100 version).

Thanks for the patch!

It is an GT-I9100.

+Cc Marek (I have few questions further)


> 
> Signed-off-by: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  arch/arm/boot/dts/Makefile             |   1 +
>  arch/arm/boot/dts/exynos4210-i9100.dts | 816 +++++++++++++++++++++++++
>  2 files changed, 817 insertions(+)
>  create mode 100644 arch/arm/boot/dts/exynos4210-i9100.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d6546d2676b9..522436d30690 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -181,6 +181,7 @@ dtb-$(CONFIG_ARCH_EXYNOS3) += \
>  	exynos3250-monk.dtb \
>  	exynos3250-rinato.dtb
>  dtb-$(CONFIG_ARCH_EXYNOS4) += \
> +	exynos4210-i9100.dtb \
>  	exynos4210-origen.dtb \
>  	exynos4210-smdkv310.dtb \
>  	exynos4210-trats.dtb \
> diff --git a/arch/arm/boot/dts/exynos4210-i9100.dts b/arch/arm/boot/dts/exynos4210-i9100.dts
> new file mode 100644
> index 000000000000..c218e34959be
> --- /dev/null
> +++ b/arch/arm/boot/dts/exynos4210-i9100.dts
> @@ -0,0 +1,816 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Samsung's Exynos4210 based Galaxy S2 (i9100 version) device tree

Ditto

> + *
> + * Copyright (c) 2012 Samsung Electronics Co., Ltd.
> + *		http://www.samsung.com
> + * Copyright (c) 2020 Stenkin Evgeniy <stenkinevgeniy@gmail.com>
> + * Copyright (c) 2020 Paul Cercueil <paul@crapouillou.net>
> + *
> + * Device tree source file for Samsung's Galaxy S2 smartphone (i9100 version),
> + * which is based on Samsung's Exynos4210 SoC.

Duplicated description, you mentioned it before.

> + */
> +
> +/dts-v1/;
> +#include "exynos4210.dtsi"
> +#include "exynos4412-ppmu-common.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +
> +/ {
> +	model = "Samsung Galaxy S2 (i9100)";

GT-I9100

> +	compatible = "samsung,i9100", "samsung,exynos4210", "samsung,exynos4";

I think it shares a lot with Trats board...

Marek, how similar these
designs are? Maybe it is worth to split some parts and make common part?

> +
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x40000000 0x40000000>;
> +	};
> +

You do not have a chosen node, at least for stdout serial selection.
Probably you should have one... bootargs I guess could come from
bootloader.


> +	vemmc_reg: regulator-0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VMEM_VDD_2.8V";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		gpio = <&gpk0 2 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;

This looks like a stub/fake regulator. Probably it shoould be replaced
with proper regulator coming from PMIC (few seems to be missing there).

I don't have the schematics so I cannot judge... I see Trats has the
same.

Marek, mayybe you know, is it really a separate regulator?

> +	};
> +
> +	tsp_reg: regulator-1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "TSP_FIXED_VOLTAGES";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpl0 3 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us = <70000>;
> +		enable-active-high;
> +		regulator-boot-on;
> +		regulator-always-on;

always-on and boot-on should not be needed. You have a consumer for this
regulator.

> +	};
> +
> +	cam_af_28v_reg: regulator-3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "8M_AF_2.8V_EN";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		gpio = <&gpk1 1 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	cam_io_en_reg: regulator-4 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "CAM_IO_EN";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		gpio = <&gpe2 1 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	cam_io_12v_reg: regulator-5 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "8M_1.2V_EN";
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +		gpio = <&gpe2 5 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	vt_core_15v_reg: regulator-6 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VT_CORE_1.5V";
> +		regulator-min-microvolt = <1500000>;
> +		regulator-max-microvolt = <1500000>;
> +		gpio = <&gpe2 2 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		vol-down {
> +			gpios = <&gpx2 1 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEDOWN>;
> +			label = "volume down";
> +			debounce-interval = <10>;
> +		};
> +
> +		vol-up {
> +			gpios = <&gpx2 0 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEUP>;
> +			label = "volume up";
> +			debounce-interval = <10>;
> +		};
> +
> +		power {
> +			gpios = <&gpx2 7 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_POWER>;
> +			label = "power";
> +			debounce-interval = <10>;
> +			wakeup-source;
> +		};
> +
> +		ok {
> +			gpios = <&gpx3 5 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_OK>;
> +			label = "ok";
> +			debounce-interval = <10>;
> +		};
> +	};
> +
> +	wlan_pwrseq: sdhci3-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpl1 2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	i2c_max17042_fuel: i2c-gpio-3 {

i2c-gpio-3 -> i2c-gpio

> +		compatible = "i2c-gpio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		sda-gpios = <&gpy4 0 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&gpy4 1 GPIO_ACTIVE_HIGH>;
> +		i2c-gpio,delay-us = <5>;
> +
> +		battery@36 {
> +			compatible = "maxim,max17042";
> +
> +			interrupt-parent = <&gpx2>;
> +			interrupts = <3 2>;

s/2/IRQ_TYPE_EDGE_FALLING/

> +
> +			pinctrl-0 = <&max17042_fuel_irq>;
> +			pinctrl-names = "default";
> +
> +			reg = <0x36>;
> +			maxim,over-heat-temp = <700>;
> +			maxim,over-volt = <4500>;
> +

Remove empty line.

> +		};
> +	};
> +
> +	spi-lcd {
> +		compatible = "spi-gpio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		num-chipselects = <1>;
> +		cs-gpios = <&gpy4 3 GPIO_ACTIVE_HIGH>;
> +		sck-gpios = <&gpy3 1 GPIO_ACTIVE_HIGH>;
> +		mosi-gpios = <&gpy3 3 GPIO_ACTIVE_HIGH>;
> +
> +		lcd@0 {
> +			compatible = "samsung,ld9040";
> +			reg = <0>;
> +
> +			spi-max-frequency = <1200000>;
> +			spi-cpol;
> +			spi-cpha;
> +
> +			vdd3-supply = <&vmipi_reg>;
> +			vci-supply = <&vcclcd_reg>;
> +
> +			reset-gpios = <&gpy4 5 GPIO_ACTIVE_HIGH>;
> +			power-on-delay = <10>;
> +			reset-delay = <10>;
> +
> +			panel-width-mm = <90>;
> +			panel-height-mm = <154>;
> +
> +			display-timings {
> +				timing {
> +					clock-frequency = <23492370>;
> +					hactive = <480>;
> +					vactive = <800>;
> +					hback-porch = <16>;
> +					hfront-porch = <16>;
> +					vback-porch = <2>;
> +					vfront-porch = <28>;
> +					hsync-len = <2>;
> +					vsync-len = <1>;
> +					hsync-active = <0>;
> +					vsync-active = <0>;
> +					de-active = <0>;
> +					pixelclk-active = <0>;
> +				};
> +			};
> +
> +			port {
> +				lcd_ep: endpoint {
> +					remote-endpoint = <&fimd_dpi_ep>;
> +				};
> +			};
> +		};
> +	};
> +
> +	fixed-rate-clocks {
> +		xxti {
> +			compatible = "samsung,clock-xxti";
> +			clock-frequency = <0>;
> +		};
> +
> +		xusbxti {
> +			compatible = "samsung,clock-xusbxti";
> +			clock-frequency = <24000000>;
> +		};
> +	};
> +
> +	thermal-zones {
> +		cpu_thermal: cpu-thermal {
> +			cooling-maps {
> +				map0 {
> +					/* Corresponds to 800MHz */
> +					cooling-device = <&cpu0 2 2>;
> +				};
> +				map1 {
> +					/* Corresponds to 200MHz */
> +					cooling-device = <&cpu0 4 4>;
> +				};
> +			};
> +		};
> +	};
> +
> +};
> +
> +&camera {
> +	status = "okay";
> +};
> +
> +&cpu0 {
> +	cpu0-supply = <&varm_breg>;
> +};
> +
> +&exynos_usbphy {
> +	status = "okay";
> +
> +	vbus-supply = <&safe1_sreg>;
> +};
> +
> +&fimc_0 {
> +	status = "okay";
> +
> +	assigned-clocks = <&clock CLK_MOUT_FIMC0>, <&clock CLK_SCLK_FIMC0>;
> +	assigned-clock-parents = <&clock CLK_SCLK_MPLL>;
> +	assigned-clock-rates = <0>, <160000000>;
> +};
> +
> +&fimc_1 {
> +	status = "okay";
> +
> +	assigned-clocks = <&clock CLK_MOUT_FIMC1>, <&clock CLK_SCLK_FIMC1>;
> +	assigned-clock-parents = <&clock CLK_SCLK_MPLL>;
> +	assigned-clock-rates = <0>, <160000000>;
> +};
> +
> +&fimc_2 {
> +	status = "okay";
> +
> +	assigned-clocks = <&clock CLK_MOUT_FIMC2>, <&clock CLK_SCLK_FIMC2>;
> +	assigned-clock-parents = <&clock CLK_SCLK_MPLL>;
> +	assigned-clock-rates = <0>, <160000000>;
> +};
> +
> +&fimc_3 {
> +	status = "okay";
> +
> +	assigned-clocks = <&clock CLK_MOUT_FIMC3>, <&clock CLK_SCLK_FIMC3>;
> +	assigned-clock-parents = <&clock CLK_SCLK_MPLL>;
> +	assigned-clock-rates = <0>, <160000000>;
> +};
> +
> +&fimd {
> +	status = "okay";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	samsung,invert-vden;
> +	samsung,invert-vclk;
> +
> +	pinctrl-0 = <&lcd_clk>, <&lcd_data24>;
> +	pinctrl-names = "default";
> +
> +	port@3 {
> +		reg = <3>;
> +
> +		fimd_dpi_ep: endpoint {
> +			remote-endpoint = <&lcd_ep>;
> +		};
> +	};
> +};
> +
> +&hsotg {
> +	status = "okay";
> +
> +	dr_mode = "otg";
> +	vusb_d-supply = <&vusb_reg>;
> +	vusb_a-supply = <&vusbdac_reg>;
> +};
> +
> +&ehci {

Order the phandle/nodes in alphabetical order, please. So:

&ehci ...
&hsoth ...
&i2c ...

etc.

> +	status = "okay";
> +
> +	port@0 {
> +		status = "okay";
> +	};
> +
> +	port@1 {
> +		status = "okay";
> +	};
> +
> +	port@2 {
> +		status = "okay";
> +	};
> +};
> +

Double empty line.

> +
> +&i2c_3 {
> +	status = "okay";
> +
> +	samsung,i2c-sda-delay = <100>;
> +	samsung,i2c-slave-addr = <0x10>;
> +	samsung,i2c-max-bus-freq = <100000>;
> +
> +	pinctrl-0 = <&i2c3_bus>;
> +	pinctrl-names = "default";
> +
> +	mxt224-touchscreen@4a {
> +		compatible = "atmel,maxtouch";
> +		reg = <0x4a>;
> +
> +		interrupt-parent = <&gpx0>;
> +		interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
> +
> +		avdd-supply = <&tsp_reg>;
> +		vdd-supply = <&tsp_reg>;
> +	};
> +};
> +
> +&i2c_7 {
> +	status = "okay";
> +
> +	samsung,i2c-sda-delay = <100>;
> +	samsung,i2c-slave-addr = <0x10>;
> +	samsung,i2c-max-bus-freq = <400000>;
> +
> +	pinctrl-0 = <&i2c7_bus>;
> +	pinctrl-names = "default";
> +
> +	ak8975@c {
> +		compatible = "asahi-kasei,ak8975";
> +		reg = <0x0c>;
> +
> +		gpios = <&gpx2 2 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +
> +&i2c_5 {
> +	status = "okay";
> +
> +	samsung,i2c-sda-delay = <100>;
> +	samsung,i2c-slave-addr = <0x10>;
> +	samsung,i2c-max-bus-freq = <100000>;
> +
> +	pinctrl-0 = <&i2c5_bus>;
> +	pinctrl-names = "default";
> +
> +	max8997_pmic@66 {
> +		compatible = "maxim,max8997-pmic";
> +		reg = <0x66>;
> +
> +		interrupts-extended = <&gpx0 7 0>, <&gpx2 3 2>;
> +		interrupt-parent = <&gpx0>;
> +		interrupts = <7 IRQ_TYPE_NONE>;
> +
> +		otg_en-gpios = <&gpx3 3 0>;
> +		usb_sel-gpios = <&gpl0 6 0>;
> +
> +		max8997,pmic-buck1-uses-gpio-dvs;
> +		max8997,pmic-buck2-uses-gpio-dvs;
> +		max8997,pmic-buck5-uses-gpio-dvs;
> +
> +		max8997,pmic-ignore-gpiodvs-side-effect;
> +		max8997,pmic-buck125-default-dvs-idx = <0>;
> +
> +		max8997,pmic-buck125-dvs-gpios = <&gpx0 5 GPIO_ACTIVE_HIGH>,
> +						 <&gpx0 6 GPIO_ACTIVE_HIGH>,
> +						 <&gpl0 0 GPIO_ACTIVE_HIGH>;
> +
> +		max8997,pmic-buck1-dvs-voltage = <1350000>, <1300000>,
> +						 <1250000>, <1200000>,
> +						 <1150000>, <1100000>,
> +						 <1000000>, <950000>;
> +
> +		max8997,pmic-buck2-dvs-voltage = <1100000>, <1000000>,
> +						 <950000>,  <900000>,
> +						 <1100000>, <1000000>,
> +						 <950000>,  <900000>;
> +
> +		max8997,pmic-buck5-dvs-voltage = <1200000>, <1200000>,
> +						 <1200000>, <1200000>,
> +						 <1200000>, <1200000>,
> +						 <1200000>, <1200000>;
> +
> +		pinctrl-0 = <&max8997_irq>, <&otg_gp>, <&usb_sel>;
> +		pinctrl-names = "default";
> +
> +		regulators {
> +			vadc_reg: LDO1 {
> +				regulator-name = "VADC_3.3V_C210";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +
> +			};

Add empty line.

> +			valive_reg: LDO2 {
> +				regulator-name = "VALIVE_1.1V_C210";
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-always-on;
> +
> +			};
> +
> +			vusb_reg: LDO3 {
> +				regulator-name = "VUSB_1.1V_C210";
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +			};
> +
> +			vmipi_reg: LDO4 {
> +				regulator-name = "VMIPI_1.8V";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +			};
> +
> +			vhsic_reg: LDO5 {
> +				regulator-name = "VHSIC_1.2V";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +			};
> +
> +			vpda_reg: LDO6 {
> +				regulator-name = "VCC_1.8V_PDA";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +			};
> +
> +			vcam_reg: LDO7 {
> +				regulator-name = "CAM_ISP_1.8V";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +
> +			vusbdac_reg: LDO8 {
> +				regulator-name = "VUSB+VDAC_3.3V_C210";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +			};
> +
> +			vccpda_reg: LDO9 {
> +				regulator-name = "VCC_2.8V_PDA";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-always-on;
> +			};
> +
> +			vtouch_reg: LDO11 {
> +				regulator-name = "TOUCH_2.8V";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-always-on;
> +			};
> +
> +			vpll_reg: LDO10 {
> +				regulator-name = "VPLL_1.1V";
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-always-on;
> +			};
> +
> +			vtcam_reg: LDO12 {
> +				regulator-name = "VT_CAM_1.8V";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +
> +			vcclcd_reg: LDO13 {
> +				regulator-name = "VCC_3.0V_LCD";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +			};
> +
> +			vmotor_reg: LDO14 {
> +				regulator-name = "VCC_2.8V_MOTOR";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +			};
> +
> +			vled_reg: LDO15 {
> +				regulator-name = "LED_A_2.8V";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +			};
> +
> +			camsensor_reg: LDO16 {
> +				regulator-name = "CAM_SENSOR_IO_1.8V";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +
> +			vtf_reg: LDO17 {
> +				regulator-name = "VTF_2.8V";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +			};
> +
> +			vtouchled_reg: LDO18 {
> +				regulator-name = "TOUCH_LED_3.3V";
> +				regulator-min-microvolt = <2500000>;
> +				regulator-max-microvolt = <3300000>;
> +			};
> +
> +			vddq_reg: LDO21 {
> +				regulator-name = "VDDQ_M1M2_1.2V";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +			};
> +
> +			varm_breg: BUCK1 {
> +				//regulator-name = "VARM_1.2V_C210";
> +				regulator-name = "vdd_arm";
> +				regulator-min-microvolt = <65000>;
> +				regulator-max-microvolt = <2225000>;
> +				regulator-always-on;
> +			};
> +
> +			vint_breg: BUCK2 {
> +				regulator-name = "VINT_1.1V_C210";
> +				regulator-min-microvolt = <65000>;
> +				regulator-max-microvolt = <2225000>;
> +				regulator-always-on;
> +			};
> +
> +			vg3d_breg: BUCK3 {
> +				regulator-name = "G3D_1.1V";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +			};
> +
> +			camisp_breg: BUCK4 {
> +				regulator-name = "CAM_ISP_CORE_1.2V";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +			};
> +
> +			vmem_breg: BUCK5 {
> +				regulator-name = "VMEM_1.2V";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +			};
> +
> +			vccsub_breg: BUCK7 {
> +				regulator-name = "VCC_SUB_2.0V";
> +				regulator-min-microvolt = <2000000>;
> +				regulator-max-microvolt = <2000000>;
> +				regulator-always-on;
> +			};
> +
> +			safe1_sreg: ESAFEOUT1 {
> +				regulator-name = "SAFEOUT1";
> +			};
> +
> +			safe2_sreg: ESAFEOUT2 {
> +				regulator-name = "SAFEOUT2";
> +				regulator-boot-on;
> +			};
> +
> +			charger_reg: CHARGER {
> +				regulator-name = "CHARGER";
> +				regulator-min-microamp = <60000>;
> +				regulator-max-microamp = <2580000>;
> +				regulator-always-on;
> +			};
> +
> +			chargercv_reg: CHARGER_CV {
> +				regulator-name = "CHARGER_CV";
> +				regulator-min-microvolt = <3800000>;
> +				regulator-max-microvolt = <4100000>;
> +				regulator-always-on;
> +			};
> +

Empty line, not needed.

> +		};
> +

Empty line, not needed.

> +	};
> +};
> +
> +

Empty line, not needed. Please fix them in all places.

> +&gpu {
> +	status = "okay";
> +
> +	mali-supply = <&vg3d_breg>;
> +	regulator-microvolt-offset = <50000>;
> +	regulator-microsecs-delay = <50>;
> +};
> +

and more...

> +
> +&sdhci_0 {
> +	status = "okay";
> +
> +	bus-width = <8>;
> +	non-removable;
> +	vmmc-supply = <&vemmc_reg>;
> +
> +	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_bus8>;
> +	pinctrl-names = "default";
> +};
> +
> +&sdhci_2 {
> +	status = "okay";
> +
> +	bus-width = <4>;
> +	cd-gpios = <&gpx3 4 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&vtf_reg>;
> +
> +	pinctrl-0 = <&sd2_clk>, <&sd2_cmd>, <&sd2_bus4>;
> +	pinctrl-names = "default";
> +};
> +
> +&ehci {

Duplicated.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
