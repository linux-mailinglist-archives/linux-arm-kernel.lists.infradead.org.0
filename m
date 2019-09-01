Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50755A4747
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 06:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYVOwDoacA4Hs0DsiKlA157M86EWxTK4+hf/fwiL6YA=; b=hZrvtxg+TzSvep
	KizrqB94nuVi2XFFgfSm5ycY+VKCiqiA6v6132Du6OnIcnWNKv9DZX2b0rT90kuu/G9PPmeWkhJQH
	IwXrkjCae/rLxG/W8DvJbzcxC2HTeANioooQybT7UOd2prrdPe6f6dofs7ibxtnfEVYjAyxbjSAsf
	7NB4mjHMWd3MGm3+WszC3b2ovBGslpPAiwfeXa5I1A2FpqA192troGiekfcAFhTdrDawr/wpwvx0b
	MlDiikmpj92wJWkZYMilWX7pAff5AbgrVfRVMharFcJR1iSf7L0fVnlJNHJTcnccLLJe4ApJKx1wC
	OZ1DZGA5NfghLZmVI5lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Hc8-0002ae-3z; Sun, 01 Sep 2019 04:37:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Hbo-0002Z6-GK; Sun, 01 Sep 2019 04:37:03 +0000
Received: from [88.128.80.103] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i4Hbi-00042y-2b; Sun, 01 Sep 2019 06:36:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Elon Zhang <zhangzj@rock-chips.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: Add support for TB-96AI board
Date: Sun, 01 Sep 2019 06:36:41 +0200
Message-ID: <3671433.J3OatT8Kjo@phil>
In-Reply-To: <20190805015755.26017-1-zhangzj@rock-chips.com>
References: <20190805015755.26017-1-zhangzj@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_213700_850326_EA1CEB52 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, manivannan.sadhasivam@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Elon,

Am Montag, 5. August 2019, 03:57:55 CEST schrieb Elon Zhang:
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

I would guess this 32kHz clock does originate from the rk809 below?
If so please simply adjust the clock-output-names in it, so that
it sources correctly.

> +
> +	vcc5v0_sys: vccsys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};

Please always try to construct a full regulator tree.
(see debugfs/regulator/regulator_summary)

Part of me doesn't want to believe that vcc5v0_sys is
the root regulator getting the outside power supply ;-) .


> +
> +	leds {
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
> +		pinctrl-0 = <&pmic_int_l>;
> +		pinctrl-1 = <&soc_slppin_slp>, <&rk809_slppin_slp>;
> +		pinctrl-2 = <&soc_slppin_gpio>, <&rk809_slppin_pwrdn>;
> +		pinctrl-3 = <&soc_slppin_gpio>,<&rk809_slppin_null>;
> +		rockchip,system-power-controller;
> +		pmic-reset-func = <1>;

That is not part of the binding I think

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
> +		};
> +
> +		rtc {
> +			status = "okay";
> +		};

There is no binding for either pwrkey nor rtc subnodes and
I think the rtc device is just created  in any case, so you should just
drop these nodes.


> +		pinctrl_rk8xx: pinctrl_rk8xx {
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

There is a binding for rk805 pinctrl, but it looks way different than this.
Please adapt and if necessary submit binding+code for rk809 first.

See Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt
for reference.


> +		regulators {
> +			vdd_center: DCDC_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_center";
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

I don't think there is a vsel-gpios propety specified yet and the
fan53555 driver cannot handle that pin yet.
You could change that ;-)

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
> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3_1 {
> +	snps,dis-u3-autosuspend-quirk;

This property is neither part of the dwc3 driver,
nor the dwc3 devicetree binding.

> +	status = "okay";
> +};
> +
> 


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
