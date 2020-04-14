Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1831A9700
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AG7soUCpMLhrsCkfBXH/s9PO8Eywq4Zp5RIdg563vzY=; b=sMqqmF4I8h4Izh
	E4g6hFMnRnuSMFzp+IJ6y7kbaTQTdcog+mCpLVvzDGF2ZmM84DfYT/eFqpWV4dynHn9stf7oTBbqv
	NSr81wi+14ZwEtakEa7PG1zedExNGehE3UV7wTpW6IGZgsn4mdK+PwrVYghrsfL7AQF6+GHPCT6Lv
	zLlZbKTUhhxWsPrAqU1jZCyoDRHE62OAYBEm80TD6DqR+TckvY26Y0c+4u4HUSql5XPIClOAV+NDh
	W9YOmVlegLtUUp7seIMmrhFiwtPm+lS6XNCtIHIotSh76aTbo5gmKlz0ax5i3c2pvIDF0FSFJRmXr
	903nd0FMU5bV6VGIsmew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdbP-0006Ga-8d; Wed, 15 Apr 2020 08:40:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdYu-0001hH-NF; Wed, 15 Apr 2020 08:38:28 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jOGx5-0007Fi-ML; Tue, 14 Apr 2020 10:29:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v4 3/3] arm64: dts: rockchip: add Odroid Advance Go
Date: Tue, 14 Apr 2020 10:29:38 +0200
Message-Id: <20200414082938.2977572-3-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200414082938.2977572-1-heiko@sntech.de>
References: <20200414082938.2977572-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013825_149055_0BD9F1D4 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 kever.yang@rock-chips.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 jbx6244@gmail.com, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The Odroid Advance Go is a handheld based on Rockchip's rk3326 soc
with a DSI display and some handheld controls including an analog
joystick connected to the saradc.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
changes in v3:
- fix "layoout" typo in button diagram
- sorting of pinctrl entries
- drop unneeded sound-dai-cells from i2s1
changes in v2:
- move backlight to its alphabetic correct position
- name heartbeat-led according to yaml binding
- re-sort some properties
- drop pinctrl overrides from tsdadc, they're using a wrong name anyway
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 560 ++++++++++++++++++
 2 files changed, 561 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index af1e1c3707d0..86c38467d487 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -6,6 +6,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-copperhead-ltk101b4029w.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
new file mode 100644
index 000000000000..cf20aac5f2fe
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -0,0 +1,560 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Hardkernel Co., Ltd
+ * Copyright (c) 2020 Theobroma Systems Design und Consulting GmbH
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3326.dtsi"
+
+/ {
+	model = "ODROID-GO Advance";
+	compatible = "hardkernel,rk3326-odroid-go2", "rockchip,rk3326";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		power-supply = <&vcc_bl>;
+		pwms = <&pwm1 0 25000 0>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&btn_pins>;
+
+		/*
+		 *      *** ODROIDGO2-Advance Switch layout ***
+		 * |------------------------------------------------|
+		 * | sw15                                      sw16 |
+		 * |------------------------------------------------|
+		 * |     sw1      |-------------------|      sw8    |
+		 * |  sw3   sw4   |                   |   sw7   sw5 |
+		 * |     sw2      |    LCD Display    |      sw6    |
+		 * |              |                   |             |
+		 * |              |-------------------|             |
+		 * |         sw9 sw10   sw11 sw12   sw13 sw14       |
+		 * |------------------------------------------------|
+		 */
+
+		sw1 {
+			gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_LOW>;
+			label = "DPAD-UP";
+			linux,code = <BTN_DPAD_UP>;
+		};
+		sw2 {
+			gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_LOW>;
+			label = "DPAD-DOWN";
+			linux,code = <BTN_DPAD_DOWN>;
+		};
+		sw3 {
+			gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_LOW>;
+			label = "DPAD-LEFT";
+			linux,code = <BTN_DPAD_LEFT>;
+		};
+		sw4 {
+			gpios = <&gpio1 RK_PB7 GPIO_ACTIVE_LOW>;
+			label = "DPAD-RIGHT";
+			linux,code = <BTN_DPAD_RIGHT>;
+		};
+		sw5 {
+			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_LOW>;
+			label = "BTN-A";
+			linux,code = <BTN_EAST>;
+		};
+		sw6 {
+			gpios = <&gpio1 RK_PA5 GPIO_ACTIVE_LOW>;
+			label = "BTN-B";
+			linux,code = <BTN_SOUTH>;
+		};
+		sw7 {
+			gpios = <&gpio1 RK_PA6 GPIO_ACTIVE_LOW>;
+			label = "BTN-Y";
+			linux,code = <BTN_WEST>;
+		};
+		sw8 {
+			gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_LOW>;
+			label = "BTN-X";
+			linux,code = <BTN_NORTH>;
+		};
+		sw9 {
+			gpios = <&gpio2 RK_PA0 GPIO_ACTIVE_LOW>;
+			label = "F1";
+			linux,code = <BTN_TRIGGER_HAPPY1>;
+		};
+		sw10 {
+			gpios = <&gpio2 RK_PA1 GPIO_ACTIVE_LOW>;
+			label = "F2";
+			linux,code = <BTN_TRIGGER_HAPPY2>;
+		};
+		sw11 {
+			gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
+			label = "F3";
+			linux,code = <BTN_TRIGGER_HAPPY3>;
+		};
+		sw12 {
+			gpios = <&gpio2 RK_PA3 GPIO_ACTIVE_LOW>;
+			label = "F4";
+			linux,code = <BTN_TRIGGER_HAPPY4>;
+		};
+		sw13 {
+			gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_LOW>;
+			label = "F5";
+			linux,code = <BTN_TRIGGER_HAPPY5>;
+		};
+		sw14 {
+			gpios = <&gpio2 RK_PA5 GPIO_ACTIVE_LOW>;
+			label = "F6";
+			linux,code = <BTN_TRIGGER_HAPPY6>;
+		};
+		sw15 {
+			gpios = <&gpio2 RK_PA6 GPIO_ACTIVE_LOW>;
+			label = "TOP-LEFT";
+			linux,code = <BTN_TL>;
+		};
+		sw16 {
+			gpios = <&gpio2 RK_PA7 GPIO_ACTIVE_LOW>;
+			label = "TOP-RIGHT";
+			linux,code = <BTN_TR>;
+		};
+	};
+
+	leds: gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "led_pins";
+		pinctrl-0 = <&led_pins>;
+
+		led-0 {
+			label = "blue:heartbeat";
+			gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	vccsys: vccsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v8_sys";
+		regulator-always-on;
+		regulator-min-microvolt = <3800000>;
+		regulator-max-microvolt = <3800000>;
+	};
+
+	vcc_host: vcc_host {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+
+		gpio = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+		vin-supply = <&vccsys>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cru {
+	assigned-clocks = <&cru PLL_NPLL>,
+		<&cru ACLK_BUS_PRE>, <&cru ACLK_PERI_PRE>,
+		<&cru HCLK_BUS_PRE>, <&cru HCLK_PERI_PRE>,
+		<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>,
+		<&cru PLL_CPLL>;
+
+	assigned-clock-rates = <1188000000>,
+		<200000000>, <200000000>,
+		<150000000>, <150000000>,
+		<100000000>, <200000000>,
+		<17000000>;
+};
+
+&display_subsystem {
+	status = "okay";
+};
+
+&dsi {
+	status = "okay";
+
+	ports {
+		mipi_out: port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel@0 {
+		compatible = "elida,kd35t133";
+		reg = <0>;
+		backlight = <&backlight>;
+		iovcc-supply = <&vcc_lcd>;
+		reset-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&vcc_lcd>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&dsi_dphy {
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_logic>;
+	status = "okay";
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+	i2c-scl-falling-time-ns = <16>;
+	i2c-scl-rising-time-ns = <280>;
+	status = "okay";
+
+	rk817: pmic@20 {
+		compatible = "rockchip,rk817";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "xin32k";
+
+		vcc1-supply = <&vccsys>;
+		vcc2-supply = <&vccsys>;
+		vcc3-supply = <&vccsys>;
+		vcc4-supply = <&vccsys>;
+		vcc5-supply = <&vccsys>;
+		vcc6-supply = <&vccsys>;
+		vcc7-supply = <&vccsys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_3v3: DCDC_REG4 {
+				regulator-name = "vcc_3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG2 {
+				regulator-name = "vcc_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_1v0: LDO_REG3 {
+				regulator-name = "vdd_1v0";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG4 {
+				regulator-name = "vcc3v3_pmu";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_sd: LDO_REG6 {
+				regulator-name = "vcc_sd";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_bl: LDO_REG7 {
+				regulator-name = "vcc_bl";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_lcd: LDO_REG8 {
+				regulator-name = "vcc_lcd";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <2800000>;
+				};
+			};
+
+			vcc_cam: LDO_REG9 {
+				regulator-name = "vcc_cam";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+		};
+	};
+};
+
+/* EXT Header(P2): 7(SCL:GPIO0.C2), 8(SDA:GPIO0.C3) */
+&i2c1 {
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+/* I2S 1 Channel Used */
+&i2s1_2ch {
+	status = "okay";
+};
+
+&io_domains {
+	vccio1-supply = <&vcc_3v3>;
+	vccio2-supply = <&vccio_sd>;
+	vccio3-supply = <&vcc_3v3>;
+	vccio4-supply = <&vcc_3v3>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	cd-gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_LOW>; /*[> CD GPIO <]*/
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&tsadc {
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+
+	u2phy_host: host-port {
+		status = "okay";
+	};
+
+	u2phy_otg: otg-port {
+		status = "disabled";
+	};
+};
+
+&usb20_otg {
+	status = "okay";
+};
+
+/* EXT Header(P2): 2(RXD:GPIO1.C0),3(TXD:.C1),4(CTS:.C2),5(RTS:.C3) */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_xfer &uart1_cts>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
+};
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+&pinctrl {
+	btns {
+		btn_pins: btn-pins {
+			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>,
+					<1 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
+					<2 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	headphone {
+		hp_det: hp-det {
+			rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	leds {
+		led_pins: led-pins {
+			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		dc_det: dc-det {
+			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pmic_int: pmic-int {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		soc_slppin_gpio: soc_slppin_gpio {
+			rockchip,pins =
+				<0 RK_PA4 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		soc_slppin_rst: soc_slppin_rst {
+			rockchip,pins =
+				<0 RK_PA4 RK_FUNC_2 &pcfg_pull_none>;
+		};
+
+		soc_slppin_slp: soc_slppin_slp {
+			rockchip,pins =
+				<0 RK_PA4 RK_FUNC_1 &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
