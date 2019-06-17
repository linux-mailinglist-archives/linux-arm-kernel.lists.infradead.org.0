Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE724848C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wAOeIvSve/idL6Cm5/w78zbegcEVelMPtbNB+pi0p2k=; b=c5M1Ye+ch3CVDAcTkHTCVqxg7s
	o37CGo3T7xGVe2Wn8dWLsQm3293qHGH2vJolglf2r103cjfXHtI2dnT/UE9D382UFe0uEgNgZOGV9
	VkRxcGKLk7zIN9+p1ems4TtBFb63wiosP4i3/QK7aJoblYVfTwFp8sr+FM4pT2X5/kO4DnI9IRQNa
	MLb4O7Nx5UwyUWgKEc46cWGi5EMzWYRDOAXBi+pfS/V8097HM0sKlZqrPES6wmsdTck/zqRY0Jal6
	3GAKbVdl7wQ8hEwmwDp7ak8gb1mPVgwMlfX9+5YNPxpaeVuFHBs9C/t9tYUPYL6fHX7G80P0bljdi
	FYPAcZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcs4b-0002Lz-DJ; Mon, 17 Jun 2019 13:53:25 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcs3p-00027V-OX
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:52:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id 994974E2051;
 Mon, 17 Jun 2019 13:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1560779557; bh=Kmi69c3USm3srGMQIjo724zX6ioornVpNVeG4d8Q52c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Mbke8wfDU8WMKLNzIZKu/gLbcjcGkcHRhbaLJvcgbzxiXy9UIJpAS6s3UG5QLj7uf
 z0XShXz5fsbUs6tv9pWGbhp2VAO/uZpCXe/0obMu4CP2KeyIXATbufLGIAOXwvfGsB
 kkyi1l/t52GBxAar3e614B4lGX8yQAP+ihw1dwpU=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sMicyGahtOz6; Mon, 17 Jun 2019 13:52:36 +0000 (UTC)
Received: from localhost.localdomain (198-48-167-13.cpe.pppoe.ca
 [198.48.167.13])
 by node.akkea.ca (Postfix) with ESMTPSA id 57DB34E204D;
 Mon, 17 Jun 2019 13:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1560779556; bh=Kmi69c3USm3srGMQIjo724zX6ioornVpNVeG4d8Q52c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=V+Kq0eW1rBrnGNHQ0bwmQovlmctc6wXcNwdQV0lKVjyBqErr3QabAQRxXYnMQxhTZ
 EzkoqtLalQAcSmePU+K209i8XWuRXlCns1hMEqw7r0pnUmPorfit9d+aUg8PSDpVAk
 QmzKX+6cxDEGvkbWzBvGQHe1kuS9liTCS4agpyKQ=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v16 1/3] arm64: dts: fsl: librem5: Add a device tree for the
 Librem5 devkit
Date: Mon, 17 Jun 2019 07:52:13 -0600
Message-Id: <20190617135215.550-2-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190617135215.550-1-angus@akkea.ca>
References: <20190617135215.550-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_065237_832963_9DFB96E5 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 pavel@ucw.cz, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is for the development kit board for the Librem 5. The current level
of support yields a working console and is able to boot userspace from
the network or eMMC.

Additional subsystems that are active :

- Both USB ports
- SD card socket
- WiFi usdhc
- WWAN modem
- GNSS
- GPIO keys
- LEDs
- gyro
- magnetometer
- touchscreen
- pwm
- backlight
- haptic motor

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx8mq-librem5-devkit.dts   | 806 ++++++++++++++++++
 2 files changed, 807 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 0bd122f60549..c043aca66572 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -22,6 +22,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
new file mode 100644
index 000000000000..93b3830e5406
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -0,0 +1,806 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 Purism SPC
+ */
+
+/dts-v1/;
+
+#include "dt-bindings/input/input.h"
+#include "dt-bindings/pwm/pwm.h"
+#include "dt-bindings/usb/pd.h"
+#include "imx8mq.dtsi"
+
+/ {
+	model = "Purism Librem 5 devkit";
+	compatible = "purism,librem5-devkit", "fsl,imx8mq";
+
+	backlight_dsi: backlight-dsi {
+		compatible = "pwm-backlight";
+		/* 200 Hz for the PAM2841 */
+		pwms = <&pwm1 0 5000000>;
+		brightness-levels = <0 100>;
+		num-interpolated-steps = <100>;
+		/* Default brightness level (index into the array defined by */
+		/* the "brightness-levels" property) */
+		default-brightness-level = <0>;
+		power-supply = <&reg_22v4_p>;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>;
+
+		btn1 {
+			label = "VOL_UP";
+			gpios = <&gpio4 21 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+			linux,code = <KEY_VOLUMEUP>;
+		};
+
+		btn2 {
+			label = "VOL_DOWN";
+			gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+			linux,code = <KEY_VOLUMEDOWN>;
+		};
+
+		hp-det {
+			label = "HP_DET";
+			gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+			linux,code = <KEY_HP>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led1 {
+			label = "LED 1";
+			gpios = <&gpio1 13 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+	};
+
+	pmic_osc: clock-pmic {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "pmic_osc";
+	};
+
+	reg_1v8_p: regulator-1v8-p {
+		compatible = "regulator-fixed";
+		regulator-name = "1v8_p";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&reg_pwr_en>;
+	};
+
+	reg_2v8_p: regulator-2v8-p {
+		compatible = "regulator-fixed";
+		regulator-name = "2v8_p";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		vin-supply = <&reg_pwr_en>;
+	};
+
+	reg_3v3_p: regulator-3v3-p {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3_p";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&reg_pwr_en>;
+
+		regulator-state-mem {
+			regulator-on-in-suspend;
+		};
+	};
+
+	reg_5v_p: regulator-5v-p {
+		compatible = "regulator-fixed";
+		regulator-name = "5v_p";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&reg_pwr_en>;
+
+		regulator-state-mem {
+			regulator-on-in-suspend;
+		};
+	};
+
+	reg_22v4_p: regulator-22v4-p  {
+		compatible = "regulator-fixed";
+		regulator-name = "22v4_P";
+		regulator-min-microvolt = <22400000>;
+		regulator-max-microvolt = <22400000>;
+		vin-supply = <&reg_pwr_en>;
+	};
+
+	reg_pwr_en: regulator-pwr-en {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pwr_en>;
+		regulator-name = "PWR_EN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usdhc2_pwr>;
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	vibrator {
+		compatible = "gpio-vibrator";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_haptic>;
+	        enable-gpios = <&gpio5 4 GPIO_ACTIVE_LOW>;
+		vcc-supply = <&reg_3v3_p>;
+	};
+
+	wifi_pwr_en: regulator-wifi-en {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wifi_pwr_en>;
+		regulator-name = "WIFI_EN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio3 5 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+};
+
+&clk {
+	assigned-clocks = <&clk IMX8MQ_AUDIO_PLL1>, <&clk IMX8MQ_AUDIO_PLL2>;
+	assigned-clock-rates = <786432000>, <722534400>;
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	phy-supply = <&reg_3v3_p>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic: pmic@4b {
+		compatible = "rohm,bd71837";
+		reg = <0x4b>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		clocks = <&pmic_osc>;
+		clock-names = "osc";
+		clock-output-names = "pmic_clk";
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 GPIO_ACTIVE_LOW>;
+		interrupt-names = "irq";
+		rohm,reset-snvs-powered;
+
+		regulators {
+			buck1_reg: BUCK1 {
+				regulator-name = "buck1";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-ramp-delay = <1250>;
+				rohm,dvs-run-voltage = <900000>;
+				rohm,dvs-idle-voltage = <850000>;
+				rohm,dvs-suspend-voltage = <800000>;
+			};
+
+			buck2_reg: BUCK2 {
+				regulator-name = "buck2";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-ramp-delay = <1250>;
+				rohm,dvs-run-voltage = <1000000>;
+				rohm,dvs-idle-voltage = <900000>;
+			};
+
+			buck3_reg: BUCK3 {
+				regulator-name = "buck3";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				rohm,dvs-run-voltage = <1000000>;
+			};
+
+			buck4_reg: BUCK4 {
+				regulator-name = "buck4";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				rohm,dvs-run-voltage = <1000000>;
+			};
+
+			buck5_reg: BUCK5 {
+				regulator-name = "buck5";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+			};
+
+			buck6_reg: BUCK6 {
+				regulator-name = "buck6";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+			};
+
+			buck7_reg: BUCK7 {
+				regulator-name = "buck7";
+				regulator-min-microvolt = <1605000>;
+				regulator-max-microvolt = <1995000>;
+				regulator-boot-on;
+			};
+
+			buck8_reg: BUCK8 {
+				regulator-name = "buck8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-boot-on;
+			};
+
+			ldo1_reg: LDO1 {
+				regulator-name = "ldo1";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				/* leave on for snvs power button */
+				regulator-always-on;
+			};
+
+			ldo2_reg: LDO2 {
+				regulator-name = "ldo2";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				/* leave on for snvs power button */
+				regulator-always-on;
+			};
+
+			ldo3_reg: LDO3 {
+				regulator-name = "ldo3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "ldo4";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+			};
+
+			ldo5_reg: LDO5 {
+				regulator-name = "ldo5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			ldo6_reg: LDO6 {
+				regulator-name = "ldo6";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+			};
+
+			ldo7_reg: LDO7 {
+				regulator-name = "ldo7";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+			};
+		};
+	};
+
+	typec_ptn5100: usb_typec@52 {
+		compatible = "nxp,ptn5110";
+		reg = <0x52>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_typec>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			power-role = "dual";
+			try-power-role = "sink";
+			source-pdos = <PDO_FIXED(5000, 2000,
+				PDO_FIXED_USB_COMM |
+				PDO_FIXED_DUAL_ROLE |
+				PDO_FIXED_DATA_SWAP )>;
+			sink-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM |
+				PDO_FIXED_DUAL_ROLE |
+				PDO_FIXED_DATA_SWAP )
+			     PDO_VAR(5000, 12000, 2000)>;
+			op-sink-microwatt = <10000000>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_con_hs: endpoint {
+						remote-endpoint = <&typec_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_con_ss: endpoint {
+						remote-endpoint = <&typec_ss>;
+					};
+				};
+			};
+		};
+	};
+
+	rtc@68 {
+		compatible = "microcrystal,rv4162";
+		reg = <0x68>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <29 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	charger@6b { /* bq25896 */
+		compatible = "ti,bq25890";
+		reg = <0x6b>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_charger>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
+		ti,battery-regulation-voltage = <4192000>; /* 4.192V */
+		ti,charge-current = <1600000>; /* 1.6A */
+		ti,termination-current = <66000>;  /* 66mA */
+		ti,precharge-current = <130000>; /* 130mA */
+		ti,minimum-sys-voltage = <3000000>; /* 3V */
+		ti,boost-voltage = <5000000>; /* 5V */
+		ti,boost-max-current = <50000>; /* 50mA */
+	};
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	magnetometer@1e	{
+		compatible = "st,lsm9ds1-magn";
+		reg = <0x1e>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_imu>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
+		vdd-supply = <&reg_3v3_p>;
+		vddio-supply = <&reg_3v3_p>;
+	};
+
+	touchscreen@5d {
+		compatible = "goodix,gt5688";
+		reg = <0x5d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ts>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+		irq-gpios = <&gpio3 0 GPIO_ACTIVE_HIGH>;
+		touchscreen-size-x = <720>;
+		touchscreen-size-y = <1440>;
+		AVDD28-supply = <&reg_2v8_p>;
+		VDDIO-supply = <&reg_1v8_p>;
+	};
+};
+
+&iomuxc {
+	pinctrl_bl: blgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO01_PWM1_OUT	0x6 /* DSI_BL_PWM */
+		>;
+	};
+
+	pinctrl_bt: btgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_DATA05_GPIO3_IO11	0x16 /* nBT_DISABLE */
+			MX8MQ_IOMUXC_NAND_DATA01_GPIO3_IO7	0x10 /* BT_HOST_WAKE */
+		>;
+	};
+
+	pinctrl_charger: chargergrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI5_MCLK_GPIO3_IO25	0x80 /* CHRG_nINT */
+		>;
+	};
+
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
+			MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO		0x3
+			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
+			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
+			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
+			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
+			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
+			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
+			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
+			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
+			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
+			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
+			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
+			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
+			MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
+			MX8MQ_IOMUXC_GPIO1_IO15_CCMSRCGPCMIX_CLKO2      0x1f
+		>;
+	};
+
+	pinctrl_ts: tsgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_ALE_GPIO3_IO0		0x16  /* TOUCH INT */
+			MX8MQ_IOMUXC_GPIO1_IO05_GPIO1_IO5	0x19  /* TOUCH RST */
+		>;
+	};
+
+	pinctrl_gpio_leds: gpioledgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO13_GPIO1_IO13	0x16
+		>;
+	};
+
+	pinctrl_gpio_keys: gpiokeygrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI2_RXFS_GPIO4_IO21	0x16
+			MX8MQ_IOMUXC_SAI2_RXC_GPIO4_IO22	0x16
+			MX8MQ_IOMUXC_SAI5_RXC_GPIO3_IO20	0x180  /* HP_DET */
+		>;
+	};
+
+	pinctrl_haptic: hapticgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SPDIF_RX_GPIO5_IO4		0xc6   /* nHAPTIC */
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL		0x4000001f
+			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA		0x4000001f
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_I2C3_SCL_I2C3_SCL		0x4000001f
+			MX8MQ_IOMUXC_I2C3_SDA_I2C3_SDA		0x4000001f
+		>;
+	};
+
+	pinctrl_imu: imugrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI5_RXFS_GPIO3_IO19	0x8  /* IMU_INT */
+		>;
+	};
+
+	pinctrl_pmic: pmicgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x80  /* PMIC intr */
+		>;
+	};
+
+	pinctrl_pwr_en: pwrengrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO08_GPIO1_IO8	0x06
+		>;
+	};
+
+	pinctrl_rtc: rtcgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI3_RXC_GPIO4_IO29	0x80  /* RTC intr */
+		>;
+	};
+
+	pinctrl_typec: typecgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_DATA06_GPIO3_IO12		0x16
+			MX8MQ_IOMUXC_NAND_CE0_B_GPIO3_IO1		0x80
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x49
+			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX		0x49
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART2_TXD_UART2_DCE_TX		0x49
+			MX8MQ_IOMUXC_UART2_RXD_UART2_DCE_RX		0x49
+			MX8MQ_IOMUXC_UART4_RXD_UART2_DCE_CTS_B		0x49
+			MX8MQ_IOMUXC_UART4_TXD_UART2_DCE_RTS_B		0x49
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART3_RXD_UART3_DCE_RX		0x49
+			MX8MQ_IOMUXC_UART3_TXD_UART3_DCE_TX		0x49
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_ECSPI2_SCLK_UART4_DCE_RX		0x49
+			MX8MQ_IOMUXC_ECSPI2_MOSI_UART4_DCE_TX		0x49
+			MX8MQ_IOMUXC_ECSPI2_MISO_UART4_DCE_CTS_B	0x49
+			MX8MQ_IOMUXC_ECSPI2_SS0_UART4_DCE_RTS_B		0x49
+			MX8MQ_IOMUXC_GPIO1_IO00_ANAMIX_REF_CLK_32K	0x49
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x83
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x8d
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xcd
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xcd
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xcd
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xcd
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xcd
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xcd
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xcd
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xcd
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xcd
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x8d
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x9f
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xdf
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xdf
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xdf
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xdf
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xdf
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xdf
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xdf
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xdf
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xdf
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x9f
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_pwr: usdhc2grppwr {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2grpgpio {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_WP_GPIO2_IO20		0x80 /* WIFI_WAKE */
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK		0x83
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD		0xc3
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0	0xc3
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xc3
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xc3
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xc3
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK		0x8d
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD		0xcd
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0	0xcd
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xcd
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xcd
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xcd
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK		0x9f
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD		0xcf
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0	0xcf
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xcf
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xcf
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xcf
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0xc6
+		>;
+	};
+
+	pinctrl_wifi_pwr_en: wifipwrengrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5         0x06
+		>;
+	};
+
+	pinctrl_wwan: wwangrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_CE3_B_GPIO3_IO4	0x09 /* nWWAN_DISABLE */
+			MX8MQ_IOMUXC_NAND_DATA02_GPIO3_IO8	0x80 /* nWoWWAN */
+			MX8MQ_IOMUXC_NAND_DATA03_GPIO3_IO9	0x19 /* WWAN_RESET */
+		>;
+	};
+};
+
+&pgc_gpu {
+	power-supply = <&buck3_reg>;
+};
+
+&pgc_vpu {
+	power-supply = <&buck4_reg>;
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_bl>;
+	status = "okay";
+};
+
+
+&uart1 { /* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart3 { /* GNSS */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&uart4 { /* BT */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>, <&pinctrl_bt>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb3_phy1 {
+	vbus-supply = <&reg_5v_p>;
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	dr_mode = "otg";
+	status = "okay";
+
+	port@0 {
+		reg = <0>;
+
+		typec_hs: endpoint {
+			remote-endpoint = <&usb_con_hs>;
+		};
+	};
+
+	port@1 {
+		reg = <1>;
+
+		typec_ss: endpoint {
+			remote-endpoint = <&usb_con_ss>;
+		};
+	};
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	power-supply = <&wifi_pwr_en>;
+	non-removable;
+	disable-wp;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	wakeup-source;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
