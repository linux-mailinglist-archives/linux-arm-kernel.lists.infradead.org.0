Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDB94E935
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 15:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ot9wKPcN4CNRS8dIQ+/JPmKF17UhZRl34XtLpl4qIb0=; b=tBIhFIMNWW5okS
	UuJq8+FHtlA4iPVi6J515sqIQb5EK3rWW2Fp71zqq/NdpQRQ6ZuS4HPceREEgwkj520Bb78V4HgF2
	7Ffjxf2NVwY2HYYh+x347khEJkE7PcwaqD4Y/Xj2hhriZt+PNM094XWAk9ygFRilwFQt5lvQWxIjk
	54IKk4/0DAU3+/MHAjWMfbc0aDjWjc53hEWLPM28W1q4Be3a62HO0u6oclKbk8pUdrHKk3Q6U3zb5
	XwiG/LBoB/+zsXh0cHVi77vnwXHk5cS6zgqMb66dPhQA/1899+rhDEiCCNgzz+jwT+j8snxMew7V1
	d3OjtFts6moje4W58fTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJeH-00039d-GC; Fri, 21 Jun 2019 13:32:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heJdx-00037c-Uu; Fri, 21 Jun 2019 13:31:57 +0000
Received: from p57b77384.dip0.t-ipconnect.de ([87.183.115.132]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1heJdw-00014u-BW; Fri, 21 Jun 2019 15:31:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vivek Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add support for SkyKirin X99 TV Box
Date: Fri, 21 Jun 2019 15:31:51 +0200
Message-ID: <2273961.GTPgWWlV5T@phil>
In-Reply-To: <20190618051025.458-1-npcomplete13@gmail.com>
References: <20190618051025.458-1-npcomplete13@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_063154_302511_34E091A2 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vivek,

Am Dienstag, 18. Juni 2019, 07:10:25 CEST schrieb Vivek Unune:
> Add devicetree support for SkyKirin X99 TV Box based on RK3999
> 
> Following peripherals tested and work:
> 
> Peripheral works:
> - UART2 debug
> - eMMC
> - USB 3.0 port
> - USB 2.0 port
> - sdio, sd-card
> - HDMI
> - Ethernet
> - WiFi/BT
> 
> Not tested:
> - Type-C port
> - OPTICAL
> - IR
> Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3399-skykirinx-99.dts | 748 ++++++++++++++++++
>  3 files changed, 903 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-skykirinx-99.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 5c6bbf10abc9..1cff15490da8 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -446,6 +446,11 @@ properties:
>            - const: rockchip,rv1108-evb
>            - const: rockchip,rv1108
>  
> +      - description: SkyKirin RK3399 TV Box
> +        items:
> +          - const: rockchip,rk3399-skykirin-x99

const: skykirin,x99

plus in a separate patch adding a skykirin entry to the vendor-prefixes.yaml

> +          - const: rockchip,rk3399
> +
>        - description: Theobroma Systems RK3368-uQ7 with Haikou baseboard
>          items:
>            - const: tsd,rk3368-uq7-haikou
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 5f2687acbf94..dc5fbf865012 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -27,3 +27,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-skykirin-x99.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-skykirin-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-skykirin-x99.dts
> new file mode 100644
> index 000000000000..4b6af66eb085
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-skykirin-x99.dts
> @@ -0,0 +1,748 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/dts-v1/;
> +#include <dt-bindings/pwm/pwm.h>
> +#include <dt-bindings/input/input.h>
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	model = "SkyKirin X99 TV BOX";
> +	compatible = "rockchip,rk3399-skykirin-x99", "rockchip,rk3399";

same as above
	compatible = "skykirin,x99", "rockchip,rk3399";

> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	clkin_gmac: external-gmac-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "clkin_gmac";
> +		#clock-cells = <0>;
> +	};
> +
> +	dc_5v: dc-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "dc_5v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	vcc1v8_s0: vcc1v8-s0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc1v8_s0";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +	};
> +
> +	vcc_sys: vcc-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_sys";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +		vin-supply = <&dc_5v>;
> +	};
> +
> +	vcc_phy: vcc-phy-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_phy";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +		vin-supply = <&vcc_sys>;
> +	};
> +
> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&host_vbus_drv>;
> +		regulator-name = "vcc5v0_host";
> +		regulator-always-on;
> +	};
> +
> +	vcc5v0_typec: vcc5v0-typec-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_typec_en>;
> +		regulator-name = "vcc5v0_typec";
> +		regulator-always-on;
> +		vin-supply = <&vcc5v0_usb>;
> +	};
> +
> +	vcc5v0_usb: vcc5v0-usb {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_usb";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_5v>;
> +	};
> +
> +	vdd_log: vdd-log {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 25000 1>;
> +		pwm-supply = <&vcc_sys>;
> +		regulator-name = "vdd_log";
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1400000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +
> +		/* for rockchip boot on */
> +		rockchip,pwm_id= <2>;
> +		rockchip,pwm_voltage = <900000>;

These bindings are specific to the vendor kernel and not part
of the mainline kernel, so please remove

> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		power-led {
> +			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "power";
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk808 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_reg_on_h>;
> +		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> +	};
> +
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
> +	vdd_cpu_b: syr827@40 {
> +		compatible = "silergy,syr827";
> +		reg = <0x40>;
> +		regulator-compatible = "fan53555-reg";
> +		pinctrl-0 = <&vsel1_gpio>;
> +		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;

not part of the binding

> +		regulator-name = "vdd_cpu_b";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-ramp-delay = <1000>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc_sys>;
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_gpu: syr828@41 {
> +		compatible = "silergy,syr828";
> +		reg = <0x41>;
> +		regulator-compatible = "fan53555-reg";
> +		pinctrl-0 = <&vsel2_gpio>;
> +		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;

same as above

> +		regulator-name = "vdd_gpu";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-ramp-delay = <1000>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc_sys>;
> +		regulator-initial-mode = <1>; /* 1:force PWM 2:auto */
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	rk808: pmic@1b {
> +		compatible = "rockchip,rk808";
> +		reg = <0x1b>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +		#clock-cells = <1>;
> +		clock-output-names = "xin32k", "rtc_clko_wifi";
> +
> +		vcc1-supply = <&vcc_sys>;
> +		vcc2-supply = <&vcc_sys>;
> +		vcc3-supply = <&vcc_sys>;
> +		vcc4-supply = <&vcc_sys>;
> +		vcc6-supply = <&vcc_sys>;
> +		vcc7-supply = <&vcc_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc_sys>;
> +		vcc10-supply = <&vcc_sys>;
> +		vcc11-supply = <&vcc_sys>;
> +		vcc12-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcc_1v8>;
> +
> +		regulators {
> +			vdd_center: DCDC_REG1 {
> +				regulator-name = "vdd_center";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_cpu_l: DCDC_REG2 {
> +				regulator-name = "vdd_cpu_l";
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-name = "vcc_ddr";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8: DCDC_REG4 {
> +				regulator-name = "vcc_1v8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc1v8_dvp: LDO_REG1 {
> +				regulator-name = "vcc1v8_dvp";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcca1v8_hdmi: LDO_REG2 {
> +				regulator-name = "vcca1v8_hdmi";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcca_1v8: LDO_REG3 {
> +				regulator-name = "vcca_1v8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc_sd: LDO_REG4 {
> +				regulator-name = "vcc_sd";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc3v0_sd: LDO_REG5 {
> +				regulator-name = "vcc3v0_sd";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +
> +			vcc_1v5: LDO_REG6 {
> +				regulator-name = "vcc_1v5";
> +				regulator-min-microvolt = <1500000>;
> +				regulator-max-microvolt = <1500000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1500000>;
> +				};
> +			};
> +
> +			vcca0v9_hdmi: LDO_REG7 {
> +				regulator-name = "vcca0v9_hdmi";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
> +				};
> +			};
> +
> +			vcc_3v0: LDO_REG8 {
> +				regulator-name = "vcc_3v0";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +
> +			vcc3v3_s3: SWITCH_REG1 {
> +				regulator-name = "vcc3v3_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_s0: SWITCH_REG2 {
> +				regulator-name = "vcc3v3_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	i2c-scl-rising-time-ns = <300>;
> +	i2c-scl-falling-time-ns = <15>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	i2c-scl-rising-time-ns = <450>;
> +	i2c-scl-falling-time-ns = <15>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	i2c-scl-rising-time-ns = <600>;
> +	i2c-scl-falling-time-ns = <40>;
> +	status = "okay";
> +
> +	fusb0: typec-portc@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fusb0_int>;
> +		vbus-supply = <&vcc5v0_typec>;
> +		status = "okay";
> +	};
> +};
> +
> +&i2s0 {
> +	rockchip,playback-channels = <8>;
> +	rockchip,capture-channels = <8>;
> +	status = "okay";
> +};
> +
> +&i2s1 {
> +	rockchip,playback-channels = <2>;
> +	rockchip,capture-channels = <2>;
> +	status = "okay";
> +};
> +
> +&i2s2 {
> +	status = "okay";
> +};
> +
> +&gmac {
> +	assigned-clocks = <&cru SCLK_RMII_SRC>;
> +	assigned-clock-parents = <&clkin_gmac>;
> +	clock_in_out = "input";
> +	phy-supply = <&vcc_phy>;
> +	phy-mode = "rgmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmii_pins>;
> +	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 10000 50000>;
> +	tx_delay = <0x28>;
> +	rx_delay = <0x11>;
> +	status = "okay";
> +};
> +
> +&gpu {
> +	status = "okay";
> +	mali-supply = <&vdd_gpu>;
> +};
> +
> +&hdmi {
> +	ddc-i2c-bus = <&i2c3>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&hdmi_cec>;
> +	status = "okay";
> +};
> +
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
> +&io_domains {
> +	status = "okay";
> +
> +	bt656-supply = <&vcc1v8_s0>; /* bt656_gpio2ab_ms */
> +	audio-supply = <&vcc1v8_s0>; /* audio_gpio3d4a_ms */
> +	sdmmc-supply = <&vcc_sd>; /* sdmmc_gpio4b_ms */
> +	gpio1830-supply = <&vcc_3v0>; /* gpio1833_gpio4cd_ms */

drop the comments please

> +};
> +
> +&pmu_io_domains {
> +	status = "okay";
> +	pmu1830-supply = <&vcc_1v8>;
> +};
> +
> +&pinctrl {
> +	fusb30x {
> +		fusb0_int: fusb0-int {
> +			rockchip,pins =
> +				<1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	gmac {
> +		rgmii_sleep_pins: rgmii-sleep-pins {
> +			rockchip,pins =
> +				<3 RK_PB7 RK_FUNC_GPIO &pcfg_output_low>;
> +		};
> +	};
> +
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins =
> +				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		vsel1_gpio: vsel1-gpio {
> +			rockchip,pins =
> +				<1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		vsel2_gpio: vsel2-gpio {
> +			rockchip,pins =
> +				<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +
> +	usb-typec {
> +		vcc5v0_typec_en: vcc5v0_typec_en {
> +			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	sdio {
> +		bt_host_wake_l: bt-host-wake-l {
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_reg_on_h: bt-reg-on-h {
> +			/* external pullup to VCC1V8_PMUPLL */
> +			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_wake_l: bt-wake-l {
> +			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		wifi_reg_on_h: wifi-reg_on-h {
> +			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	wifi {
> +		wifi_host_wake_l: wifi-host-wake-l {
> +			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb2 {
> +		host_vbus_drv: host-vbus-drv {
> +			rockchip,pins =
> +				<4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +	pinctrl-0 = <&pwm2_pin_pull_down>;
> +};
> +
> +&saradc {
> +	vref-supply = <&vcc1v8_s0>;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	clock-frequency = <150000000>;
> +	clock-freq-min-max = <200000 150000000>;
> +	supports-sd;
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	num-slots = <1>;

drop num-slots


Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
