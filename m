Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0F6961BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOmS9jX3z9nibWFbSNQWow8bqgAoUPBEbhrsGlghD0M=; b=pwPhdZ83y6KRh6
	cLJ/k/vqSXpfPWMEocbb7RFMKIk6MBjduzeYMJ/6iOcpRChEJ8RR+nls0e81duVVgH1NCy+P/1/t4
	rK8JL/wgO4MvbSqP9FgxL2jlkCd6UAziYh4NSsknZGX3L6qS7ZiVjMj+ZVn0T/BuQZXQjiE3p5QtL
	y4HEW5kcTjiQ69jKUzZSNIMly3FXt63ryGgXUbXJ0le56YE/aRIn1DpI554EuRcTJ9uLf+GtqtMyQ
	QdC0TyzzSMC+FmWli65JNkNIJGv6o9C3Hl2EKcuQFkDWVPnVOw2MzPMdeGGQJTt+5BGhZ9XPuF3Xn
	FHnBE2xtbyuNRA3AQdXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04dU-0002XG-18; Tue, 20 Aug 2019 13:57:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04dE-0002W4-1Z; Tue, 20 Aug 2019 13:57:05 +0000
Received: from c-73-71-116-68.hsd1.ca.comcast.net ([73.71.116.68]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i04d7-0004zU-JN; Tue, 20 Aug 2019 15:56:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH] ARM: dts: rockchip: remove rk3288 fennec board support
Date: Tue, 20 Aug 2019 15:56:54 +0200
Message-ID: <3270378.xvmEzLMrnJ@phil>
In-Reply-To: <20190820100353.17728-1-kever.yang@rock-chips.com>
References: <20190820100353.17728-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_065704_250051_59FA8697 
X-CRM114-Status: GOOD (  13.04  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kever,

Am Dienstag, 20. August 2019, 12:03:52 CEST schrieb Kever Yang:
> Since there is no one using this board, remove it.

so just to elaborate a bit, I guess this board was internal to Rockchip,
never went to the market and therefore is obsolete without any users,
right?

Also we should remove the binding  from
	Documentation/devicetree/bindings/arm/rockchip.yaml as well


Heiko


> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
>  arch/arm/boot/dts/rk3288-fennec.dts | 347 ----------------------------
>  1 file changed, 347 deletions(-)
>  delete mode 100644 arch/arm/boot/dts/rk3288-fennec.dts
> 
> diff --git a/arch/arm/boot/dts/rk3288-fennec.dts b/arch/arm/boot/dts/rk3288-fennec.dts
> deleted file mode 100644
> index 4847cf902a15..000000000000
> --- a/arch/arm/boot/dts/rk3288-fennec.dts
> +++ /dev/null
> @@ -1,347 +0,0 @@
> -// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> -
> -/dts-v1/;
> -
> -#include "rk3288.dtsi"
> -
> -/ {
> -	model = "Rockchip RK3288 Fennec Board";
> -	compatible = "rockchip,rk3288-fennec", "rockchip,rk3288";
> -
> -	memory@0 {
> -		reg = <0x0 0x0 0x0 0x80000000>;
> -		device_type = "memory";
> -	};
> -
> -	ext_gmac: external-gmac-clock {
> -		compatible = "fixed-clock";
> -		#clock-cells = <0>;
> -		clock-frequency = <125000000>;
> -		clock-output-names = "ext_gmac";
> -	};
> -
> -	vcc_sys: vsys-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc_sys";
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -		regulator-always-on;
> -		regulator-boot-on;
> -	};
> -};
> -
> -&cpu0 {
> -	cpu0-supply = <&vdd_cpu>;
> -};
> -
> -&emmc {
> -	bus-width = <8>;
> -	cap-mmc-highspeed;
> -	non-removable;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
> -	status = "okay";
> -};
> -
> -&gmac {
> -	assigned-clocks = <&cru SCLK_MAC>;
> -	assigned-clock-parents = <&ext_gmac>;
> -	clock_in_out = "input";
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&rgmii_pins>, <&phy_rst>, <&phy_pmeb>, <&phy_int>;
> -	phy-supply = <&vcc_lan>;
> -	phy-mode = "rgmii";
> -	snps,reset-active-low;
> -	snps,reset-delays-us = <0 10000 1000000>;
> -	snps,reset-gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_LOW>;
> -	tx_delay = <0x30>;
> -	rx_delay = <0x10>;
> -	status = "okay";
> -};
> -
> -&gpu {
> -	mali-supply = <&vdd_gpu>;
> -	status = "okay";
> -};
> -
> -&hdmi {
> -	status = "okay";
> -};
> -
> -&i2c0 {
> -	status = "okay";
> -	clock-frequency = <400000>;
> -
> -	rk808: pmic@1b {
> -		compatible = "rockchip,rk808";
> -		reg = <0x1b>;
> -		interrupt-parent = <&gpio0>;
> -		interrupts = <RK_PA4 IRQ_TYPE_LEVEL_LOW>;
> -		#clock-cells = <1>;
> -		clock-output-names = "xin32k", "rk808-clkout2";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pmic_int &global_pwroff>;
> -		rockchip,system-power-controller;
> -		wakeup-source;
> -
> -		vcc1-supply = <&vcc_sys>;
> -		vcc2-supply = <&vcc_sys>;
> -		vcc3-supply = <&vcc_sys>;
> -		vcc4-supply = <&vcc_sys>;
> -		vcc6-supply = <&vcc_sys>;
> -		vcc7-supply = <&vcc_sys>;
> -		vcc8-supply = <&vcc_io>;
> -		vcc9-supply = <&vcc_io>;
> -		vcc10-supply = <&vcc_io>;
> -		vcc11-supply = <&vcc_io>;
> -		vcc12-supply = <&vcc_io>;
> -		vddio-supply = <&vcc_io>;
> -
> -		regulators {
> -			vdd_cpu: DCDC_REG1 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <750000>;
> -				regulator-max-microvolt = <1350000>;
> -				regulator-name = "vdd_arm";
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vdd_gpu: DCDC_REG2 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <850000>;
> -				regulator-max-microvolt = <1250000>;
> -				regulator-name = "vdd_gpu";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1000000>;
> -				};
> -			};
> -
> -			vcc_ddr: DCDC_REG3 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-name = "vcc_ddr";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -				};
> -			};
> -
> -			vcc_io: DCDC_REG4 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-name = "vcc_io";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <3300000>;
> -				};
> -			};
> -
> -			vccio_pmu: LDO_REG1 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-name = "vccio_pmu";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <3300000>;
> -				};
> -			};
> -
> -			vcca_33: LDO_REG2 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-name = "vcca_33";
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vdd_10: LDO_REG3 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1000000>;
> -				regulator-max-microvolt = <1000000>;
> -				regulator-name = "vdd_10";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1000000>;
> -				};
> -			};
> -
> -			vcc_wl: LDO_REG4 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-name = "vcc_wl";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1800000>;
> -				};
> -			};
> -
> -			vccio_sd: LDO_REG5 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-name = "vccio_sd";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <3300000>;
> -				};
> -			};
> -
> -			vdd10_lcd: LDO_REG6 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1000000>;
> -				regulator-max-microvolt = <1000000>;
> -				regulator-name = "vdd10_lcd";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1000000>;
> -				};
> -			};
> -
> -			vcc_18: LDO_REG7 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-name = "vcc_18";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1800000>;
> -				};
> -			};
> -
> -			vcc18_lcd: LDO_REG8 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-name = "vcc18_lcd";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1800000>;
> -				};
> -			};
> -
> -			vcc_sd: SWITCH_REG1 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-name = "vcc_sd";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -				};
> -			};
> -
> -			vcc_lan: SWITCH_REG2 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-name = "vcc_lan";
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -				};
> -			};
> -		};
> -	};
> -};
> -
> -&pinctrl {
> -	pcfg_output_high: pcfg-output-high {
> -		output-high;
> -	};
> -
> -	pcfg_output_low: pcfg-output-low {
> -		output-low;
> -	};
> -
> -	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
> -		drive-strength = <8>;
> -	};
> -
> -	pcfg_pull_up_drv_8ma: pcfg-pull-up-drv-8ma {
> -		bias-pull-up;
> -		drive-strength = <8>;
> -	};
> -
> -	gmac {
> -		phy_int: phy-int {
> -			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -
> -		phy_pmeb: phy-pmeb {
> -			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -
> -		phy_rst: phy-rst {
> -			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_output_high>;
> -		};
> -	};
> -
> -	pmic {
> -		pmic_int: pmic-int {
> -			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -
> -	usbphy {
> -		host_drv: host-drv {
> -			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -};
> -
> -&uart2 {
> -	status = "okay";
> -};
> -
> -&usbphy {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&host_drv>;
> -	vbus_drv-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
> -	status = "okay";
> -};
> -
> -&usb_host0_ehci {
> -	status = "okay";
> -};
> -
> -&usb_host1 {
> -	status = "okay";
> -};
> -
> -&usb_otg {
> -	status = "okay";
> -};
> -
> -&usb_hsic {
> -	status = "okay";
> -};
> -
> -&vopb {
> -	status = "okay";
> -};
> -
> -&vopb_mmu {
> -	status = "okay";
> -};
> -
> -&vopl {
> -	status = "okay";
> -};
> -
> -&vopl_mmu {
> -	status = "okay";
> -};
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
