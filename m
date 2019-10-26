Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A048E5F62
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 21:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WGkzXeusOCjB/RFFFjGahzmy1pjaPlIqK7N581H724=; b=YBHWVGD8u+JgUu
	mTiquRQaIbnEmOFhsGgyvac82TyexC+slCs4hPEQb0AD10iOOM9fzzozZZxZ2+wtOq+Zea2UIe7ZS
	T/6N2tbVDVvI3V5S/KO+70TH7SRRyDE6FBibusZNJHPhyYRPUCC0RwesESNYMxpjPkZVY7VxAISt7
	cqvUyc1kebznVYHbFp0Vpq1vo/Ph74jjiXgqLSmVFE8Ct8ylYY2WChLqX0R7B2V+af6rRMFMlb+oL
	CLvlJaw49WjODKIsiyaYOVNbm3eyCG0QYxHGHPraVq3wFEi2Boo9ybDr865FyDIX4a/m/NmVX7z3A
	1jnwYJsNvcKiFifjPH4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOSD7-0001UQ-Ul; Sat, 26 Oct 2019 19:58:53 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSCS-0001FG-Hp
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 19:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Iu1cf5SXM1FPYlPFircUpjs1wAmVabBZQFNPF5WSCyU=; b=m0ppr4pf9iQ5MNxaulQLl6LJt9
 wvDH+AldltsHnW8/EMAjlI2iu6tdlCm3sEB91NzB/tSquPzQwvLP1CAYAMdMW8+GJTmadW9Nx2HmT
 krBU+huVkE+a7T+CSr8Wj6IDBlmnYeG1FOhdL/0oZiN2q66zhyhRxkzkNKHPzMN9BC2I=;
Received: from p5dc580b6.dip0.t-ipconnect.de ([93.197.128.182] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iOSC9-0006sL-Vc; Sat, 26 Oct 2019 21:57:54 +0200
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1iOSC9-0003pH-Cs; Sat, 26 Oct 2019 21:57:53 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, manivannan.sadhasivam@linaro.org,
 andrew.smirnov@gmail.com, marex@denx.de, angus@akkea.ca,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v4 2/3] ARM: dts: add Netronix E60K02 board common file
Date: Sat, 26 Oct 2019 21:57:47 +0200
Message-Id: <20191026195748.14562-3-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191026195748.14562-1-andreas@kemnade.info>
References: <20191026195748.14562-1-andreas@kemnade.info>
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_125812_745888_D2926CFB 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Netronix board E60K02 can be found some several Ebook-Readers,
at least the Kobo Clara HD and the Tolino Shine 3. The board
is equipped with different SoCs requiring different pinmuxes.

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
Changes in v4:
- style cleanup, non-legacy wakeup-source
- remove pinmux-* properties

Changes in v3:
- better led name
- correct memory size
- comments about missing devices

Changes in v2:
- reordered, was 1/3
- moved pinmuxes to their actual users, not the parents
  of them
- removed some already-disabled stuff
- minor cleanups

backligt dependencies:
module autoloading:
https://patchwork.kernel.org/patch/11139987/ 
enable-gpios property (accepted and acked):
https://patchwork.kernel.org/patch/11143795/

 arch/arm/boot/dts/e60k02.dtsi | 305 ++++++++++++++++++++++++++++++++++
 1 file changed, 305 insertions(+)
 create mode 100644 arch/arm/boot/dts/e60k02.dtsi

diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
new file mode 100644
index 000000000000..97b861042789
--- /dev/null
+++ b/arch/arm/boot/dts/e60k02.dtsi
@@ -0,0 +1,305 @@
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
+#include <dt-bindings/input/input.h>
+
+/ {
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+
+		power {
+			label = "Power";
+			gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_POWER>;
+			wakeup-source;
+		};
+		cover {
+			label = "Cover";
+			gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
+			linux,code = <SW_LID>;
+			linux,input-type = <EV_SW>;
+			wakeup-source;
+		};
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+
+		on {
+			label = "e60k02:white:on";
+			gpios = <&gpio5 7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "timer";
+		};
+	};
+
+	memory {
+		reg = <0x80000000 0x20000000>;
+	};
+
+	reg_wifi: regulator-wifi {
+		compatible = "regulator-fixed";
+		regulator-name = "SD3_SPWR";
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	wifi_pwrseq: wifi_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		post-power-on-delay-ms = <20>;
+		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
+	};
+};
+
+
+&i2c1 {
+	clock-frequency = <100000>;
+	status = "okay";
+
+	lm3630a: backlight@36 {
+		reg = <0x36>;
+		compatible = "ti,lm3630a";
+		enable-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>;
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
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	status = "okay";
+
+	/* TODO: CYTTSP5 touch controller at 0x24 */
+
+	/* TODO: TPS65185 PMIC for E Ink at 0x68 */
+
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	status = "okay";
+
+	ricoh619: pmic@32 {
+		compatible = "ricoh,rc5t619";
+		reg = <0x32>;
+		system-power-controller;
+
+		regulators {
+			dcdc1_reg: DCDC1 {
+				regulator-name = "DCDC1";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-max-microvolt = <900000>;
+					regulator-suspend-min-microvolt = <900000>;
+				};
+			};
+
+			/* Core3_3V3 */
+			dcdc2_reg: DCDC2 {
+				regulator-name = "DCDC2";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-max-microvolt = <3300000>;
+					regulator-suspend-min-microvolt = <3300000>;
+				};
+			};
+
+			dcdc3_reg: DCDC3 {
+				regulator-name = "DCDC3";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-max-microvolt = <1140000>;
+					regulator-suspend-min-microvolt = <1140000>;
+				};
+			};
+
+			/* Core4_1V2 */
+			dcdc4_reg: DCDC4 {
+				regulator-name = "DCDC4";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-max-microvolt = <1140000>;
+					regulator-suspend-min-microvolt = <1140000>;
+				};
+			};
+
+			/* Core4_1V8 */
+			dcdc5_reg: DCDC5 {
+				regulator-name = "DCDC5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-max-microvolt = <1700000>;
+					regulator-suspend-min-microvolt = <1700000>;
+				};
+			};
+
+			/* IR_3V3 */
+			ldo1_reg: LDO1  {
+				regulator-name = "LDO1";
+				regulator-boot-on;
+			};
+
+			/* Core1_3V3 */
+			ldo2_reg: LDO2  {
+				regulator-name = "LDO2";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-max-microvolt = <3000000>;
+					regulator-suspend-min-microvolt = <3000000>;
+				};
+			};
+
+			/* Core5_1V2 */
+			ldo3_reg: LDO3  {
+				regulator-name = "LDO3";
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "LDO4";
+				regulator-boot-on;
+			};
+
+			/* SPD_3V3 */
+			ldo5_reg: LDO5 {
+				regulator-name = "LDO5";
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			/* DDR_0V6 */
+			ldo6_reg: LDO6 {
+				regulator-name = "LDO6";
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			/* VDD_PWM */
+			ldo7_reg: LDO7 {
+				regulator-name = "LDO7";
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			/* ldo_1v8 */
+			ldo8_reg: LDO8 {
+				regulator-name = "LDO8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo9_reg: LDO9 {
+				regulator-name = "LDO9";
+				regulator-boot-on;
+			};
+
+			ldo10_reg: LDO10 {
+				regulator-name = "LDO10";
+				regulator-boot-on;
+			};
+
+			ldortc1_reg: LDORTC1  {
+				regulator-name = "LDORTC1";
+				regulator-boot-on;
+			};
+
+			ldortc2_reg: LDORTC2 {
+				regulator-name = "LDORTC2";
+				regulator-boot-on;
+			};
+		};
+	};
+};
+
+&snvs_rtc {
+	/* we are using the rtc in the pmic, not disabled in imx6sll.dtsi */
+	status = "disabled";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&usdhc2 {
+	non-removable;
+	status = "okay";
+};
+
+&usdhc3 {
+	vmmc-supply = <&reg_wifi>;
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
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
