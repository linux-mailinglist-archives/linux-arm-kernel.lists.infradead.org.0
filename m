Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA69C65013
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 04:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nKWKGL1Tt6pI5hTUsWxIt9cl9zVbMjirlXuvmVUCNlo=; b=S2B
	fmqangKJBGD9ksU0y92rFHYecqgrQuDP/FWBgAXEeu2hyAKa5Df23yLYGTS2kddDiaAPSgKvybWye
	iE1UbM3vdYIFmzAGXmFVaIme3TFQKP3mrT+qEaQ6crtCY8+KipYOaiRkgBJH3XNDlpOvvvFgYsrvI
	BEgBomSpq3A1d9FFy7aB/EZT3b2wS7/RCnvMlbjRJQnVYkGQMN7cQ40EyvjY7ubzlUyGF0sF6tULz
	ylKAvwayE/44V4EB+k3nHCI3G8rz2Fo0FXXgV/A9J5Hwem1V00V8P0v2FlMZp+cV+FZYakDqwcpte
	ex5Yw5W7eNSdj2fDyv72RhTsO2sV5VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlOa5-0006uj-J6; Thu, 11 Jul 2019 02:13:09 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlOZt-0006uI-7I; Thu, 11 Jul 2019 02:12:59 +0000
Received: from zhangzj?rock-chips.com (unknown [192.168.167.158])
 by regular1.263xmail.com (Postfix) with ESMTP id 578DD25F;
 Thu, 11 Jul 2019 10:12:43 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P17295T139859222501120S1562811161454565_; 
 Thu, 11 Jul 2019 10:12:42 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4fc1a89d2a0f1bfeced24737ded1a791>
X-RL-SENDER: zhangzj@rock-chips.com
X-SENDER: zhangzj@rock-chips.com
X-LOGIN-NAME: zhangzj@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elon Zhang <zhangzj@rock-chips.com>
To: heiko@sntech.de,
	mark.rutland@arm.com,
	robh+dt@kernel.org
Subject: [PATCH v1 1/1] arm64: dts: rockchip: Add support for TB-96AI board
Date: Thu, 11 Jul 2019 10:12:09 +0800
Message-Id: <20190711021209.32529-1-zhangzj@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_191257_615724_7C4F87EB 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Elon Zhang <zhangzj@rock-chips.com>, linux-rockchip@lists.infradead.org,
 manivannan.sadhasivam@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree support for RK3399Pro TB-96AI board, one of
the 96Boards family.

The TB-96AI board is a 96Boards Compute SOM design, launched
by Linaro, Rockchip and Beiqicloud.

More information can be obtained from the following websites:
1.https://www.96boards.org/product/tb-96ai/
2.http://t.rock-chips.com/
3.http://www.beiqicloud.com/

This patch add basic node for the board and support booting up
to Fedora.

Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 5f2687acbf94..3d6c8d4363b5 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -27,3 +27,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-tb-96ai.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts b/arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts
new file mode 100644
index 000000000000..1935df99065d
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts
@@ -0,0 +1,629 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+#include "rk3399pro.dtsi"
+#include "rk3399-opp.dtsi"
+
+/ {
+	compatible = "rockchip,rk3399pro-tb-96ai", "rockchip,rk3399pro";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	xin32k: xin32k {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+		#clock-cells = <0>;
+	};
+
+	vcc_phy: vcc-phy-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_phy";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc5v0_sys: vccsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vdd_log: vdd_log {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+	};
+
+	leds: gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 =<&leds_gpio>;
+
+		led@1 {
+			gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+			label = "system_work_led1";
+			retain-state-suspended;
+		};
+
+		led@2 {
+			gpios = <&gpio2 4 GPIO_ACTIVE_HIGH>;
+			label = "system_work_led2";
+			retain-state-suspended;
+		};
+
+		led@3 {
+			gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
+			label = "system_work_led3";
+			retain-state-suspended;
+		};
+	};
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&emmc_phy {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+	i2c-scl-rising-time-ns = <180>;
+	i2c-scl-falling-time-ns = <30>;
+	clock-frequency = <400000>;
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PC2 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default", "pmic-sleep",
+				"pmic-power-off", "pmic-reset";
+		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-1 = <&soc_slppin_slp>, <&rk809_slppin_slp>;
+		pinctrl-2 = <&soc_slppin_gpio>, <&rk809_slppin_pwrdn>;
+		pinctrl-3 = <&soc_slppin_gpio>,<&rk809_slppin_null>;
+		rockchip,system-power-controller;
+		pmic-reset-func = <1>;
+		wakeup-source;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc5-supply = <&vcc_buck5>;
+		vcc6-supply = <&vcc_buck5>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+
+		pwrkey {
+			status = "okay";
+		};
+
+		rtc {
+			status = "okay";
+		};
+
+		pinctrl_rk8xx: pinctrl_rk8xx {
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			rk809_slppin_null: rk809_slppin_null {
+				pins = "gpio_slp";
+				function = "pin_fun0";
+			};
+
+			rk809_slppin_slp: rk809_slppin_slp {
+				pins = "gpio_slp";
+				function = "pin_fun1";
+			};
+
+			rk809_slppin_pwrdn: rk809_slppin_pwrdn {
+				pins = "gpio_slp";
+				function = "pin_fun2";
+			};
+
+			rk809_slppin_rst: rk809_slppin_rst {
+				pins = "gpio_slp";
+				function = "pin_fun3";
+			};
+		};
+
+		regulators {
+			vdd_center: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_center";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vdd_cpu_l: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_cpu_l";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_ddr";
+				regulator-initial-mode = <0x2>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc3v3_sys: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc3v3_sys";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_buck5: DCDC_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2200000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-name = "vcc_buck5";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <2200000>;
+				};
+			};
+
+			vcca_0v9: LDO_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vcca_0v9";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-name = "vcc_1v8";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc0v9_soc: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-name = "vcc0v9_soc";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-name = "vcca_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd1v5_dvp: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+
+				regulator-name = "vdd1v5_dvp";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v5: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+
+				regulator-name = "vcc_1v5";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v0: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+
+				regulator-name = "vcc_3v0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_sd: LDO_REG9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-name = "vcc_sd";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc5v0_usb: SWITCH_REG1 {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5000000>;
+
+				regulator-name = "vcc5v0_usb";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_3v3: SWITCH_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-name = "vccio_3v3";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	vdd_cpu_b: tcs452x@1c {
+		compatible = "tcs,tcs452x";
+		reg = <0x1c>;
+		vin-supply = <&vcc5v0_sys>;
+		regulator-compatible = "fan53555-reg";
+		pinctrl-0 = <&vsel1_gpio>;
+		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vdd_cpu_b";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <2300>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-initial-state = <3>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_gpu: tcs452x@10 {
+		compatible = "tcs,tcs452x";
+		status = "okay";
+		reg = <0x10>;
+		vin-supply = <&vcc5v0_sys>;
+		regulator-compatible = "fan53555-reg";
+		pinctrl-0 = <&vsel2_gpio>;
+		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <735000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-ramp-delay = <2300>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+};
+
+&i2c8 {
+	status = "okay";
+	i2c-scl-rising-time-ns = <345>;
+	i2c-scl-falling-time-ns = <11>;
+	clock-frequency = <100000>;
+
+	fusb0: fusb30x@22 {
+		compatible = "fairchild,fusb302";
+		reg = <0x22>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&fusb0_int>;
+		int-n-gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
+		vbus-5v-gpios = <&gpio0 RK_PA1 GPIO_ACTIVE_LOW>;
+		status = "okay";
+	};
+
+};
+
+&io_domains {
+	status = "okay";
+	bt656-supply = <&vcca_1v8>; /* APIO2_VDD */
+	audio-supply = <&vcca_1v8>; /* APIO5_VDD */
+	sdmmc-supply = <&vccio_sd>; /* SDMMC0_VDD */
+	gpio1830-supply = <&vcc_1v8>; /* APIO4_VDD */
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&npu_ref_clk>;
+
+	fusb30x {
+		fusb0_int: fusb0-int {
+			rockchip,pins =
+				<1 RK_PA2 0 &pcfg_pull_up>;
+		};
+	};
+
+	gpio-leds {
+		leds_gpio: leds-gpio {
+			rockchip,pins =
+				<2 5 RK_FUNC_GPIO &pcfg_pull_up>,
+				<2 4 RK_FUNC_GPIO &pcfg_pull_up>,
+				<2 3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	npu_clk {
+		npu_ref_clk: npu-ref-clk {
+			rockchip,pins =
+				<0 RK_PA2 1 &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins =
+				<1 RK_PC2 0 &pcfg_pull_up>;
+		};
+
+		soc_slppin_gpio: soc-slppin-gpio {
+			rockchip,pins =
+				<1 RK_PA5 0 &pcfg_output_low>;
+		};
+
+		soc_slppin_slp: soc-slppin-slp {
+			rockchip,pins =
+				<1 RK_PA5 1 &pcfg_pull_down>;
+		};
+
+		vsel1_gpio: vsel1-gpio {
+			rockchip,pins =
+				<1 RK_PC1 0 &pcfg_pull_down>;
+		};
+
+		vsel2_gpio: vsel2-gpio {
+			rockchip,pins =
+				<1 RK_PB6 0 &pcfg_pull_down>;
+		};
+	};
+
+	usb3 {
+		usb3_host_en: usb3-host-en {
+			rockchip,pins =
+				<2 RK_PA2 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	status = "okay";
+	pmu1830-supply = <&vcc_1v8>;
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&saradc {
+	status = "okay";
+	vref-supply = <&vcc_1v8>;
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs400-1_8v;
+	supports-emmc;
+	non-removable;
+	keep-power-in-suspend;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
+
+&sdmmc {
+	clock-frequency = <150000000>;
+	clock-freq-min-max = <400000 150000000>;
+	supports-sd;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	num-slots = <1>;
+	vqmmc-supply = <&vccio_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
+	status = "okay";
+};
+
+&tcphy0 {
+	extcon = <&fusb0>;
+	status = "okay";
+};
+
+&tcphy1 {
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>; /* tshut mode 0:CRU 1:GPIO */
+	rockchip,hw-tshut-polarity = <1>; /* tshut polarity 0:LOW 1:HIGH */
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+	extcon = <&fusb0>;
+
+	u2phy0_otg: otg-port {
+		status = "okay";
+	};
+
+	u2phy0_host: host-port {
+		phy-supply = <&vcc5v0_usb>;
+		status = "okay";
+	};
+};
+
+&u2phy1 {
+	status = "okay";
+
+	u2phy1_otg: otg-port {
+		status = "okay";
+	};
+
+	u2phy1_host: host-port {
+		phy-supply = <&vcc5v0_usb>;
+		status = "okay";
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&uart4 {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usbdrd3_0 {
+	extcon = <&fusb0>;
+	status = "okay";
+};
+
+&usbdrd3_1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb3_host_en>;
+};
+
+&usbdrd_dwc3_0 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_1 {
+	snps,dis-u3-autosuspend-quirk;
+	status = "okay";
+};
+
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
