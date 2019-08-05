Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9685A81827
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0S4w1pcGjWFc2DFoyIoFNqtwxZ9dkZ8oN7zfX3uAKo=; b=UgLOiO58tb41vN
	yqxQGOQlv9XKwGaZh2vwXgXz+eux2NCoay3y52r/lW37S7tCh7TW3clizGrMyIuufVOvuY6c9mbdT
	3VotyhFJIMcL8N7kqtpT+8Ar1VYSLVdP0Nkk8yFJZPClndsver6fRO452g5ZuugswqQt/uk30lCdj
	YdYjQn4gsNHAN4Yv4C1xc8+YWDFJMcdyGGAbwE5daug2tUJ90JeJmigYf8nNsp3zrjvnMC2+8mgLu
	MncD4UqbO1/EtfDmlDR+mg6sZGwXrPDoIN2bbtrD3kZ9RtXOjen+A7Mcu+b5FK58i1BBfhSOylioO
	mCwc9Mt3mPJATKU5VhsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubAM-0004QI-HW; Mon, 05 Aug 2019 11:28:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubA4-0004O6-CH
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:28:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id i2so36383855plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X8OgyeZPRfLVWzgNJrfW04YCeG8Qe213kRsaltgIAwk=;
 b=VdaLSgQdBUvAaMWrv9tcV/265pLUJuD2c/bUvKwzb6Fc2Nqrs4bC/Fa/E5vqMIhvxs
 pH5J07sh8BwjvIyt9ViGr4Xd/XT9K6x29AYDQihUuAPcO8ZMwC0SLYr86ArGGjPGyl1O
 yZmh2BRZTHqHLikS5ONqKlEonEMH7WxdO/b7dbi+IDQMzMHyDUOnQr/kmy4DC83itVCu
 x9QL7yvWhnc0Gkfjr/MiwRUqMPIPerMzCm/goufiezZc/vG9KdTk235yvgyg3abmsfPY
 h8CoPZ7g5R7plAuKKUcO5l0zz/x/AhacuRtcxtUEFM+GMafdPtG7+KUSfyhsk1egwDrq
 HJ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X8OgyeZPRfLVWzgNJrfW04YCeG8Qe213kRsaltgIAwk=;
 b=ZGZBN2nvlIjtlawsiaSk9wQ+nfRbR3SKtQgH1dIF3jnQbT0G4RBogfRy+E0BQdXOyi
 Xf3S4aBoDEGpg6Qh4OG3pz3L+Rr6Z7JaorqQD1pUk6iAGR1gVicBJ7d14ntrpVyg7Ohg
 +ODAgV84353n/uMS5biTp/dP4i6hmoSjZsdLq/OkGrApWioXLuhNGyEQYFDYeVSagAlR
 +GxPlZ0bVXuT9THZ/fhRyGJjOFiHHwNVbP1TXNZiGF6LeA6ij24bL/YGNxpMTdoWx1eI
 U5x0wJhdfXLIsuqVA+EjS63Kr4rxoIdqtaorX3MBHImi6rr1VvV8Jxy29wMCv3LC/w19
 1NcQ==
X-Gm-Message-State: APjAAAXMDrBSrOFoNw8vzBPr/gclAMK3KSele0PWEN3mqjWaVHicRoKe
 GQ2x3pWw5uwlkgeSJF8+Q3WPuiHLXB1o
X-Google-Smtp-Source: APXvYqya3NNdgv6elOVUbXjvPYb57oFutzyp42rGG/203fJ2/IXrUJz48EBxl38u9T8O9K6PME9FmQ==
X-Received: by 2002:a17:902:7043:: with SMTP id
 h3mr117881740plt.10.1565004498777; 
 Mon, 05 Aug 2019 04:28:18 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id b37sm33933329pjc.15.2019.08.05.04.28.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 04:28:18 -0700 (PDT)
Date: Mon, 5 Aug 2019 16:58:10 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Elon Zhang <zhangzj@rock-chips.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: Add support for TB-96AI board
Message-ID: <20190805112810.GA19736@mani>
References: <20190805015755.26017-1-zhangzj@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805015755.26017-1-zhangzj@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_042820_420154_EED8BC48 
X-CRM114-Status: GOOD (  24.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Elon,

Thanks for the v2. Still the DT needs to be cleaned up a bit. I have tested this
patch on TB96-AI SOM/Carrier board and found that the USB ports are not working
at all! Do we need to change any switch settings?

Comments are inline.

On Mon, Aug 05, 2019 at 09:57:55AM +0800, Elon Zhang wrote:
> Add devicetree support for RK3399Pro TB-96AI board, one of
> the 96Boards family.
> 
> The TB-96AI board is a 96Boards Compute SOM design, launched
> by Linaro, Rockchip and Beiqicloud.
> 
> More information can be obtained from the following websites:
> 1.https://www.96boards.org/product/tb-96ai/
> 2.http://t.rock-chips.com/
> 3.http://www.beiqicloud.com/
> 
> This patch add basic node for the board and support booting up
> to Fedora.
> 
> Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>
> ---
> changes since v1:
> - remove needless node
> - using a standard LED formats for 96Boards
> 
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3399pro-tb-96ai.dts   | 560 ++++++++++++++++++
>  2 files changed, 561 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 5f2687acbf94..3d6c8d4363b5 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -27,3 +27,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-tb-96ai.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts b/arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts
> new file mode 100644
> index 000000000000..767b37b854ba
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts
> @@ -0,0 +1,560 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> + */
> +
> +/dts-v1/;
> +#include "rk3399pro.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	compatible = "beiqi,rk3399pro-tb-96ai", "rockchip,rk3399pro";
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	xin32k: xin32k {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		clock-output-names = "xin32k";
> +		#clock-cells = <0>;
> +	};
> +
> +	vcc5v0_sys: vccsys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	leds {

Still the LEDs are not defined as per the format I shared before...

> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&work_led1>,<&work_led2>,<&work_led3>;
> +
> +		work_led1 {
> +			gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
> +			label = "system_work_led1";
> +			retain-state-suspended;
> +		};
> +
> +		work_led2 {
> +			gpios = <&gpio2 4 GPIO_ACTIVE_HIGH>;
> +			label = "system_work_led2";
> +			retain-state-suspended;
> +		};
> +
> +		work_led3 {
> +			gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
> +			label = "system_work_led3";
> +			retain-state-suspended;
> +		};
> +	};
> +};
> +
> +&cpu_l0 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l1 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l2 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l3 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&emmc_phy {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +	i2c-scl-rising-time-ns = <180>;
> +	i2c-scl-falling-time-ns = <30>;
> +	clock-frequency = <400000>;
> +
> +	rk809: pmic@20 {
> +		compatible = "rockchip,rk809";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PC2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default", "pmic-sleep",
> +				"pmic-power-off", "pmic-reset";

Does these pinctrl configs useful other than default?

> +		pinctrl-0 = <&pmic_int_l>;
> +		pinctrl-1 = <&soc_slppin_slp>, <&rk809_slppin_slp>;
> +		pinctrl-2 = <&soc_slppin_gpio>, <&rk809_slppin_pwrdn>;
> +		pinctrl-3 = <&soc_slppin_gpio>,<&rk809_slppin_null>;
> +		rockchip,system-power-controller;
> +		pmic-reset-func = <1>;
> +		wakeup-source;
> +		#clock-cells = <1>;
> +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> +
> +		vcc1-supply = <&vcc5v0_sys>;
> +		vcc2-supply = <&vcc5v0_sys>;
> +		vcc3-supply = <&vcc5v0_sys>;
> +		vcc4-supply = <&vcc5v0_sys>;
> +		vcc5-supply = <&vcc_buck5>;
> +		vcc6-supply = <&vcc_buck5>;
> +		vcc7-supply = <&vcc3v3_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc5v0_sys>;
> +
> +		pwrkey {
> +			status = "okay";

No compatible needed?

> +		};
> +
> +		rtc {
> +			status = "okay";

No compatible needed?

> +		};
> +
> +		pinctrl_rk8xx: pinctrl_rk8xx {

Mainline MFD driver has no pinctrl support for RK809.

> +			gpio-controller;
> +			#gpio-cells = <2>;
> +
> +			rk809_slppin_null: rk809_slppin_null {
> +				pins = "gpio_slp";
> +				function = "pin_fun0";
> +			};
> +
> +			rk809_slppin_slp: rk809_slppin_slp {
> +				pins = "gpio_slp";
> +				function = "pin_fun1";
> +			};
> +
> +			rk809_slppin_pwrdn: rk809_slppin_pwrdn {
> +				pins = "gpio_slp";
> +				function = "pin_fun2";
> +			};
> +
> +			rk809_slppin_rst: rk809_slppin_rst {
> +				pins = "gpio_slp";
> +				function = "pin_fun3";
> +			};
> +		};
> +
> +		regulators {
> +			vdd_center: DCDC_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_center";

Please match the regulator names with schematic.

> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
> +				};
> +			};
> +
> +			vdd_cpu_l: DCDC_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_cpu_l";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc_ddr";
> +				regulator-initial-mode = <0x2>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sys: DCDC_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vcc3v3_sys";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_buck5: DCDC_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <2200000>;
> +				regulator-max-microvolt = <2200000>;
> +				regulator-name = "vcc_buck5";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <2200000>;
> +				};
> +			};
> +
> +			vcca_0v9: LDO_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-name = "vcca_0v9";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8: LDO_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-name = "vcc_1v8";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc0v9_soc: LDO_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +
> +				regulator-name = "vcc0v9_soc";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
> +				};
> +			};
> +
> +			vcca_1v8: LDO_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-name = "vcca_1v8";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd1v5_dvp: LDO_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-max-microvolt = <1500000>;
> +
> +				regulator-name = "vdd1v5_dvp";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v5: LDO_REG6 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-max-microvolt = <1500000>;
> +
> +				regulator-name = "vcc_1v5";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v0: LDO_REG7 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +
> +				regulator-name = "vcc_3v0";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG8 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-name = "vccio_sd";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_sd: LDO_REG9 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-name = "vcc_sd";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc5v0_usb: SWITCH_REG1 {
> +				regulator-min-microvolt = <5000000>;
> +				regulator-max-microvolt = <5000000>;
> +
> +				regulator-name = "vcc5v0_usb";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vccio_3v3: SWITCH_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-name = "vccio_3v3";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_cpu_b: regulator@1c {
> +		compatible = "fcs,fan53555";
> +		reg = <0x1c>;
> +		vin-supply = <&vcc5v0_sys>;
> +		pinctrl-0 = <&vsel1_gpio>;
> +		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		regulator-name = "vdd_cpu_b";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-ramp-delay = <2300>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-initial-state = <3>;
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_gpu: regulator@10 {
> +		compatible = "fcs,fan53555";
> +		status = "okay";
> +		reg = <0x10>;
> +		vin-supply = <&vcc5v0_sys>;
> +		pinctrl-0 = <&vsel2_gpio>;
> +		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
> +		regulator-name = "vdd_gpu";
> +		regulator-min-microvolt = <735000>;
> +		regulator-max-microvolt = <1400000>;
> +		regulator-ramp-delay = <2300>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&i2c8 {
> +	status = "okay";
> +	i2c-scl-rising-time-ns = <345>;
> +	i2c-scl-falling-time-ns = <11>;
> +	clock-frequency = <100000>;
> +};
> +
> +&io_domains {
> +	status = "okay";
> +	bt656-supply = <&vcca_1v8>; /* APIO2_VDD */
> +	audio-supply = <&vcca_1v8>; /* APIO5_VDD */
> +	sdmmc-supply = <&vccio_sd>; /* SDMMC0_VDD */
> +	gpio1830-supply = <&vcc_1v8>; /* APIO4_VDD */
> +};
> +
> +&pinctrl {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&npu_ref_clk>;
> +
> +	leds {
> +		work_led1: work_led1 {
> +			rockchip,pins =
> +				<2 5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		work_led2: work_led2 {
> +			rockchip,pins =
> +				<2 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		work_led3: work_led3 {
> +			rockchip,pins =
> +				<2 3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	npu_clk {
> +		npu_ref_clk: npu-ref-clk {
> +			rockchip,pins =
> +				<0 RK_PA2 1 &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins =
> +				<1 RK_PC2 0 &pcfg_pull_up>;
> +		};
> +
> +		soc_slppin_gpio: soc-slppin-gpio {
> +			rockchip,pins =
> +				<1 RK_PA5 0 &pcfg_output_low>;
> +		};
> +
> +		soc_slppin_slp: soc-slppin-slp {
> +			rockchip,pins =
> +				<1 RK_PA5 1 &pcfg_pull_down>;
> +		};
> +
> +		vsel1_gpio: vsel1-gpio {
> +			rockchip,pins =
> +				<1 RK_PC1 0 &pcfg_pull_down>;
> +		};
> +
> +		vsel2_gpio: vsel2-gpio {
> +			rockchip,pins =
> +				<1 RK_PB6 0 &pcfg_pull_down>;
> +		};
> +	};
> +
> +	usb3 {
> +		usb3_host_en: usb3-host-en {
> +			rockchip,pins =
> +				<2 RK_PA2 RK_FUNC_GPIO &pcfg_output_high>;
> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +	status = "okay";
> +	pmu1830-supply = <&vcc_1v8>;
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> +
> +&saradc {
> +	status = "okay";
> +	vref-supply = <&vcc_1v8>;
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs400-1_8v;
> +	non-removable;
> +	keep-power-in-suspend;
> +	mmc-hs400-enhanced-strobe;
> +	status = "okay";
> +};
> +
> +&tcphy1 {

No tcphy0? I can see this used in schematics.

> +	status = "okay";
> +};
> +
> +&tsadc {
> +	rockchip,hw-tshut-mode = <1>; /* tshut mode 0:CRU 1:GPIO */
> +	rockchip,hw-tshut-polarity = <1>; /* tshut polarity 0:LOW 1:HIGH */
> +	status = "okay";
> +};
> +
> +&u2phy1 {

No u2phy0?

> +	status = "okay";
> +
> +	u2phy1_otg: otg-port {
> +		status = "okay";
> +	};
> +
> +	u2phy1_host: host-port {
> +		phy-supply = <&vcc5v0_usb>;
> +		status = "okay";
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_xfer &uart0_cts>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	status = "okay";
> +};
> +
> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ohci {
> +	status = "okay";
> +};
> +
> +&usbdrd3_1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&usb3_host_en>;
> +};
> +
> +&usbdrd_dwc3_0 {

No usbdrd3_0?

Thanks,
Mani

> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3_1 {
> +	snps,dis-u3-autosuspend-quirk;
> +	status = "okay";
> +};
> +
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
