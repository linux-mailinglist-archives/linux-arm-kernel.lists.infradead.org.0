Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5575FCE08A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 13:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KevOfNG0t9yqQM6Mg+CEQ7ytuOvYRw3hZBkHSmD8sPM=; b=kFTv9nVGS+IRXc
	6v++SboKTDaZYeuwOkl8naw98lwIlC72WZvUrHVvzw6pidxT9pZlHUrE4C9PQiAJnKHQztCDio2RQ
	c3tZl31Z2X65ZKXRoW8d5gmdu6XM73FEU8BJsGg42f0z/pnniieZmU0R4oBwCCuBeVI6Xpc6U9vBc
	euAkJeWGoy6oCFR2we/hbSNKFjVjClx6EnxG7z7ivByn/cPNDYoAMRun+uXMTtD9y9ymfqn4Ah6d/
	yVURXzCW6mClDguKSoouK24P3X4+bi3orVWmHf9hy5u7hl/9OFxVglhSLn9PP4/GmTpqaF8PKai/E
	tlbmvwH6NmdSQihMuYaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRHC-0007Di-9u; Mon, 07 Oct 2019 11:34:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRGn-00070Z-I3; Mon, 07 Oct 2019 11:33:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B3661570;
 Mon,  7 Oct 2019 04:33:35 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0ADC83F706;
 Mon,  7 Oct 2019 04:33:33 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Add Beelink A1
Date: Mon,  7 Oct 2019 12:33:24 +0100
Message-Id: <9037b7edbbb41cbbf699ebe3a511daf22d886e7d.1570444695.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_043341_681585_BCD53E4C 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Beelink A1 is a TV box implementing the higher-end options of the
RK3328 reference design - the DTB from the stock Android firmware is
clearly the "rk3328-box-plus" variant from the Rockchip 3.10 BSP with
minor modifications to accommodate the USB WiFi module and additional
VFD-style LED driver. It features:

- 4GB of 32-bit LPDDR3
- 16GB of HS200 eMMC (newer models with 32GB also exist)
- Realtek RTL8211F phy for gigabit ethernet
- Fn-Link 6221E-UUC module (RealTek RTL8821CU) for 11ac WiFi and Bluetooth 4.2
- HDMI and analog A/V
- 1x USB 3.0 type A host, 1x USB 2.0 type A OTG, 1x micro SD
- IR receiver and a neat little LED clock display.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

One question I'm wondering about is whether it's worth pushing the HDMI
and analog codec audio cards down into rk3328.dtsi (as with HDMI audio
on RK3399), since those audio pipelines are internal to the SoC and the
board only really governs whether the outputs are wired up or not.

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts    | 399 ++++++++++++++++++
 3 files changed, 405 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-a1.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c82c5e57d44c..f27f7805f57e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -40,6 +40,11 @@ properties:
           - const: asus,rk3288-tinker-s
           - const: rockchip,rk3288
 
+      - description: Beelink A1
+        items:
+          - const: azw,beelink-a1
+          - const: rockchip,rk3328
+
       - description: bq Curie 2 tablet
         items:
           - const: mundoreader,bq-curie2
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1f18a9392d15..a6f250e7cde2 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
new file mode 100644
index 000000000000..03ad663ff821
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -0,0 +1,399 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
+// Copyright (c) 2017-2019 Arm Ltd.
+
+/dts-v1/;
+#include "rk3328.dtsi"
+
+/ {
+	model = "Beelink A1";
+	compatible = "azw,beelink-a1", "rockchip,rk3328";
+
+	/*
+	 * UART pins, as viewed with bottom of case removed:
+	 *
+	 *           Front
+	 *        /-------
+	 *  L    / o <- Gnd
+	 *  e   / o <-- Rx
+	 *  f  / o <--- Tx
+	 *  t / o <---- +3.3v
+	 *    |
+	 */
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	gmac_clkin: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac_clkin";
+		#clock-cells = <0>;
+	};
+
+	vcc_host_5v: usb3-current-switch {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb30_host_drv>;
+		regulator-name = "vcc_host_5v";
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc_sys: vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	cpus {
+		idle-states {
+			entry-method = "arm,psci";
+
+			cpu_sleep: cpu-sleep {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
+				entry-latency-us = <120>;
+				exit-latency-us = <250>;
+				min-residency-us = <900>;
+			};
+		};
+	};
+
+	analog-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "Analog A/V";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&codec>;
+		};
+	};
+
+	hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "HDMI";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+	};
+
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&codec {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-idle-states = <&cpu_sleep>;
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-idle-states = <&cpu_sleep>;
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-idle-states = <&cpu_sleep>;
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-idle-states = <&cpu_sleep>;
+	cpu-supply = <&vdd_arm>;
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	no-sd;
+	no-sdio;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vcc18_emmc>;
+	status = "okay";
+};
+
+&gmac2io {
+	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
+	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
+	clock_in_out = "input";
+	phy-handle = <&rtl8211f>;
+	phy-mode = "rgmii";
+	phy-supply = <&vcc_io>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmiim1_pins>;
+	snps,aal;
+	snps,pbl = <0x4>;
+	tx_delay = <0x26>;
+	rx_delay = <0x11>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8211f: phy@0 {
+			reg = <0>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&gpu {
+	mali-supply = <&vdd_logic>;
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmiphy {
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <1000000>;
+	i2c-scl-falling-time-ns = <5>;
+	i2c-scl-rising-time-ns = <83>;
+	status = "okay";
+
+	pmic@18 {
+		compatible = "rockchip,rk805";
+		reg = <0x18>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc5-supply = <&vcc_io>;
+		vcc6-supply = <&vcc_io>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_io: DCDC_REG4 {
+				regulator-name = "vcc_io";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vdd_18: LDO_REG1 {
+				regulator-name = "vdd_18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc18_emmc: LDO_REG2 {
+				regulator-name = "vcc_18emmc";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_11: LDO_REG3 {
+				regulator-name = "vdd_11";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1100000>;
+				};
+			};
+		};
+	};
+};
+
+&i2s0 {
+	status = "okay";
+};
+
+&i2s1 {
+	status = "okay";
+};
+
+&io_domains {
+	vccio1-supply = <&vcc_io>;
+	vccio2-supply = <&vcc18_emmc>;
+	vccio3-supply = <&vcc_io>;
+	vccio4-supply = <&vdd_18>;
+	vccio5-supply = <&vcc_io>;
+	vccio6-supply = <&vdd_18>;
+	pmuio-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&pinctrl {
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb3 {
+		usb30_host_drv: usb30-host-drv {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		bt_dis: bt-dis {
+			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		bt_wake_host: bt-wake-host {
+			rockchip,pins = <2 RK_PC0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		chip_en: chip-en {
+			rockchip,pins = <2 RK_PC3 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		host_wake_bt: host-wake-bt {
+			rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+
+		wl_dis: wl-dis {
+			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		wl_wake_host: wl-wake-host {
+			rockchip,pins = <3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_dectn &sdmmc0_bus4>;
+	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <0>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
+	status = "okay";
+};
+
+&u2phy_otg {
+	status = "okay";
+};
+
+&usb20_otg {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	pinctrl-names = "default";
+	pinctrl-0 = <&bt_dis &bt_wake_host &chip_en &host_wake_bt &wl_dis &wl_wake_host>;
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
