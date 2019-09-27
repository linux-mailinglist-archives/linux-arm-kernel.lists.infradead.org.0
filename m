Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35504BFEF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 08:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOy8OH72oYvDwE3ryQLXbTcFFhN6QYWZZOFZRJrE+34=; b=NZIN+cb3urEq8p
	/RhtLykEQF/THi2D0u8rBFYMA7zn2WaKRGrNch6AwS2PAXvGoGvDYvrrOmDutcCRk9HKIKtvh+lU+
	j6k5adu03YL4H98ojKwuGnTt86cPUwsSdc3rOLTqXUs6qj2OkgnVj/L/SaIjOUZiK3pOnIqpgM9ee
	HwHR7QjYMAeER+8QIEhpqUWA4cEX+pJdnfZO/QdsD05qLD1n5fkybluzuUf6tulY5Ja3W7r0918h6
	7EWWr3t3wFFlYDVnJC9+TMEQV3KEwi6yxr9sfJjDKTk3czTiynV2EQ6ShbZeiwMW0ieBDHk64ebbV
	eLWfkXos8VnqaSdAJqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDjY2-0002Li-NE; Fri, 27 Sep 2019 06:16:10 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDjWo-0000Kh-JJ
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 06:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=laXuu3SB2GKwJK71KTIFp11T2JbNxk6cWdAAsFJtfRE=; b=lBPCFXS59oMlbAy1ZRO/wMOBuY
 gCirZp84HE3VqmodPzXtbLxvHIa8c073jwJAb5WvJpZiWQyVa8vPLEchJDb7w/aCEi9pvbN92P9fj
 vcFj4Ic9VN/AoveX+jb8OyQNGyjV4y/ahMVkth+tKKMnCzVsYIZN9hoUTAPfaRvYq+YU=;
Received: from p200300ccff0e5f001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff0e:5f00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iDjWX-0001kK-3U; Fri, 27 Sep 2019 08:14:37 +0200
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1iDjWW-0004VW-Pf; Fri, 27 Sep 2019 08:14:36 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, manivannan.sadhasivam@linaro.org,
 andrew.smirnov@gmail.com, marex@denx.de, angus@akkea.ca,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>
Subject: [PATCH 1/3] ARM: dts: add Netronix E60K02 board common file
Date: Fri, 27 Sep 2019 08:14:21 +0200
Message-Id: <20190927061423.17278-2-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927061423.17278-1-andreas@kemnade.info>
References: <20190927061423.17278-1-andreas@kemnade.info>
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_231454_793537_2D27A2FA 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Netronix board E60K02 can be found some several Ebook-Readers,
at least the Kobo Clara HD and the Tolino Shine 3. The board
is equipped with different SoCs.

For now the following peripherals are included:
- LED
- Power Key
- Cover (gpio via hall sensor)
- RC5T619 PMIC (the kernel misses support for rtc and charger
  subdevices).
- Backlight via lm3630a
- Wifi sdio chip detection (mmc-powerseq and stuff)

It is based on vendor kernel but heavily reworked due to many
changed bindings.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
backligt dependencies:
module autoloading:
https://patchwork.kernel.org/patch/11139987/ 
enable-gpios property:
https://patchwork.kernel.org/patch/11143795/

arch/arm/boot/dts/e60k02.dtsi | 339 ++++++++++++++++++++++++++++++++++
 1 file changed, 339 insertions(+)
 create mode 100644 arch/arm/boot/dts/e60k02.dtsi

diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
new file mode 100644
index 000000000000..c4fa8e314e2e
--- /dev/null
+++ b/arch/arm/boot/dts/e60k02.dtsi
@@ -0,0 +1,339 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 Andreas Kemnade
+ * based on works
+ * Copyright 2016 Freescale Semiconductor, Inc.
+ * and
+ * Copyright (C) 2014 Ricoh Electronic Devices Co., Ltd
+ *
+ * Netronix E60K02 board common.
+ * This board is equipped with different SoCs and
+ * found in ebook-readers like the Kobo Clara HD (with i.MX6SLL) and
+ * the Tolino Shine 3 (with i.MX6SL)
+ */
+
+/ {
+
+	memory {
+		reg = <0x80000000 0x80000000>;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	wifi_pwrseq: wifi_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		post-power-on-delay-ms = <20>;
+		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_sd3_vmmc: wifi_regulator {
+			compatible = "regulator-fixed";
+			regulator-name = "SD3_SPWR";
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3000000>;
+
+			gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_led>;
+
+		GLED {
+			gpios = <&gpio5 7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "timer";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>;
+		power {
+			label = "Power";
+			gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_POWER>;
+			gpio-key,wakeup;
+		};
+		cover {
+			label = "Cover";
+			gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
+			linux,code = <SW_LID>;
+			linux,input-type = <0x05>;    /* EV_SW */
+			gpio-key,wakeup;
+		};
+	};
+
+};
+
+
+
+&audmux {
+	pinctrl-names = "default";
+	status = "disabled";
+};
+
+&snvs_rtc {
+	status = "disabled";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default","sleep";
+	pinctrl-0 = <&pinctrl_i2c1 &pinctrl_lm3630a_bl_gpio>;
+	pinctrl-1 = <&pinctrl_i2c1_sleep>;
+	status = "okay";
+
+	lm3630a: lm3630a-i2c@36 {
+		reg = <0x36>;
+		status = "ok";
+
+		compatible = "ti,lm3630a";
+		enable-gpios = <&gpio2 10 0>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@0 {
+			reg = <0>;
+			led-sources = <0>;
+			label = "backlight_warm";
+			default-brightness = <0>;
+			max-brightness = <255>;
+		};
+
+		led@1 {
+			reg = <1>;
+			led-sources = <1>;
+			label = "backlight_cold";
+			default-brightness = <0>;
+			max-brightness = <255>;
+		};
+
+	};
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3 &pinctrl_ricoh_gpio>;
+	status = "okay";
+
+	ricoh619: ricoh619-i2c@32 {
+		compatible = "ricoh,rc5t619";
+		reg = <0x32>;
+
+		system-power-controller;
+		gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
+		gpio_chg = <&gpio5 15 GPIO_ACTIVE_LOW>;
+		gpio_bat_low = <&gpio3 28 GPIO_ACTIVE_LOW>;
+	};
+
+};
+
+&ricoh619
+{
+	compatible = "ricoh,rc5t619";
+
+	regulators {
+		ricoh619_dcdc1_reg: DCDC1 {
+			regulator-name = "DCDC1";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1875000>;
+			regulator-always-on;
+			regulator-boot-on;
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <900000>;
+			};
+		};
+
+		/* Core3_3V3 */
+		ricoh619_dcdc2_reg: DCDC2 {
+			regulator-name = "DCDC2";
+			regulator-always-on;
+			regulator-boot-on;
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <3300000>;
+			};
+		};
+
+		ricoh619_dcdc3_reg: DCDC3 {
+			regulator-name = "DCDC3";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1875000>;
+			regulator-always-on;//
+			regulator-boot-on;
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <1140000>;
+			};
+		};
+
+		/* Core4_1V2 */
+		ricoh619_dcdc4_reg: DCDC4 {
+			regulator-name = "DCDC4";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-always-on;
+			regulator-boot-on;
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <1140000>;
+			};
+		};
+
+		/* Core4_1V8 */
+		ricoh619_dcdc5_reg: DCDC5 {
+			regulator-name = "DCDC5";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-always-on;
+			regulator-boot-on;
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <1700000>;
+			};
+		};
+
+		/* IR_3V3 */
+		ricoh619_ldo1_reg: LDO1  {
+			regulator-name = "LDO1";
+			//regulator-always-on;
+			regulator-boot-on;
+		};
+
+		/* Core1_3V3 */
+		ricoh619_ldo2_reg: LDO2  {
+			regulator-name = "LDO2";
+			regulator-always-on;
+			regulator-boot-on;
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <3000000>;
+			};
+		};
+
+		/* Core5_1V2 */
+		ricoh619_ldo3_reg: LDO3  {
+			regulator-name = "LDO3";
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		ricoh619_ldo4_reg: LDO4 {
+			regulator-name = "LDO4";
+			regulator-boot-on;
+		};
+
+		/* SPD_3V3 */
+		ricoh619_ldo5_reg: LDO5 {
+			regulator-name = "LDO5";
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		/* DDR_0V6 */
+		ricoh619_ldo6_reg: LDO6 {
+			regulator-name = "LDO6";
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		/* VDD_PWM */
+		ricoh619_ldo7_reg: LDO7 {
+			regulator-name = "LDO7";
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		/* ldo_1v8 */
+		ricoh619_ldo8_reg: LDO8 {
+			regulator-name = "LDO8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		ricoh619_ldo9_reg: LDO9 {
+			regulator-name = "LDO9";
+			regulator-boot-on;
+		};
+
+		ricoh619_ldo10_reg: LDO10 {
+			regulator-name = "LDO10";
+			regulator-boot-on;
+		};
+
+		ricoh619_ldortc1_reg: LDORTC1  {
+			regulator-name = "LDORTC1";
+			regulator-boot-on;
+		};
+
+		ricoh619_ldortc2_reg: LDORTC2 {
+			regulator-name = "LDORTC2";
+			regulator-boot-on;
+		};
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&usdhc1 {
+	status = "disabled";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz","sleep";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc2_sleep>;
+	non-removable;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz","sleep";
+	pinctrl-0 = <&pinctrl_usdhc3>, <&pinctrl_usdhc3_pwr>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc3_sleep>, <&pinctrl_usdhc3_pwr>;
+	vmmc-supply = <&reg_sd3_vmmc>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	cap-power-off-card;
+	non-removable;
+	status = "okay";
+};
+
+&usbotg1 {
+	pinctrl-names = "default";
+	disable-over-current;
+	srp-disable;
+	hnp-disable;
+	adp-disable;
+	status = "okay";
+};
+
+
+&ssi2 {
+	status = "disabled";
+};
+
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
