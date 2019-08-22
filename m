Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C632D991B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tcHp6HuRwPMPKrvt7My2aXGkmqg20t8WHGij1kJRa38=; b=j58FfZ1UP5mm+f
	wRFFCCsplHu6wbuNFA6L682BXRUxrXM1/vt/FDDpdFxvG6QpQd+/bbBXACLXKgQVose8ktS9STD/a
	w+E7Zng9L0nF5nlYH2UdYi+hnz70MG78lfV/9QB/tLfkFFLf6dde79tz4kQ+5otLU2fzSrYkIfbTD
	Yu0/jxCBM8gnqHPZqvwszOlWL/y0+jHH+VSBL8XyBVSNKEPiDGx2XleqwOKWfDREg9sHFzj54q1XK
	HFe38fOl80ZP+5x55QSgc/dQ4n2QnMT0JoEg1YiFf3BjtCeJpKSMF7ylUmBziHYIWX63aFaCb7ttH
	fpwYeT4X5C5ftN5lYVNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ky2-00033r-4h; Thu, 22 Aug 2019 11:09:22 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kxV-0002rO-R0
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:08:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1566472125;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=XPjPHyDbWhUrRuQ0CqycnYPeLZ44U72qdeyARDnYYME=;
 b=EUE7qvAX8QvOt9iGjAkx5twMwHc2xMVZl/WAILrq/pKbvm062k/V/BR6ZrvbW+RSWl
 H/j8N/Ih+Ycmw2EzX3AEZqz69CEOpyCA43N7nX8In9cuI1nsN4rsA5eIoaqTsWoMmN/7
 J4E0GTe6fcoJIxXoyRlfXlL39c0vPfTG++uOlF4pwczpEgF7zrDx+Zt/DD5JikTCwo8c
 D4+CibSeivwjfW3do4MZNIAY2Kvkxiz9SLhzqnf3tpRgpoQAHDmVKELpXb1yJ5/PMSzJ
 NgS2oBBeofDFxKh3ubV+f58OmAG/PfbYKIuT8EYNdJgx5CrQaF2q/IZ/FMOEKZHX+UcE
 9DKQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1RgWArOaRE="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain
 by smtp.strato.de (RZmta 44.26.1 DYNA|AUTH)
 with ESMTPSA id g064fdv7MB8feHs
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Thu, 22 Aug 2019 13:08:41 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 1/2] ARM: dts: ux500: Move ab8500 nodes to ste-ab8500.dtsi
Date: Thu, 22 Aug 2019 13:07:19 +0200
Message-Id: <20190822110720.118828-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_040850_175244_A89447D2 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:12 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some Ux500 devices use the newer AB8505 PMIC instead of AB8500.
Although they are very similar, there are subtle differences
like the number of regulators or the available GPIO pins.

At the moment, ste-dbx5x0.dtsi always configures the AB8500 PMIC.
To support devices with AB8505, it is necessary to split the
AB8500-specific parts into a separate .dtsi file. Boards can then
select the PMIC by including either ste-ab8500.dtsi or ste-ab8505.dtsi.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-ab8500.dtsi      | 232 +++++++++++++++++++++++++
 arch/arm/boot/dts/ste-dbx5x0.dtsi      | 208 ----------------------
 arch/arm/boot/dts/ste-href-ab8500.dtsi |   2 +
 3 files changed, 234 insertions(+), 208 deletions(-)
 create mode 100644 arch/arm/boot/dts/ste-ab8500.dtsi

diff --git a/arch/arm/boot/dts/ste-ab8500.dtsi b/arch/arm/boot/dts/ste-ab8500.dtsi
new file mode 100644
index 000000000000..3ef1906e375c
--- /dev/null
+++ b/arch/arm/boot/dts/ste-ab8500.dtsi
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2012 Linaro Ltd
+ */
+
+#include <dt-bindings/clock/ste-ab8500.h>
+
+/ {
+	soc {
+		prcmu@80157000 {
+			ab8500 {
+				compatible = "stericsson,ab8500";
+				interrupt-parent = <&intc>;
+				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+
+				ab8500_clock: clock-controller {
+					compatible = "stericsson,ab8500-clk";
+					#clock-cells = <1>;
+				};
+
+				ab8500_gpio: ab8500-gpio {
+					compatible = "stericsson,ab8500-gpio";
+					gpio-controller;
+					#gpio-cells = <2>;
+				};
+
+				ab8500-rtc {
+					compatible = "stericsson,ab8500-rtc";
+					interrupts = <17 IRQ_TYPE_LEVEL_HIGH
+						      18 IRQ_TYPE_LEVEL_HIGH>;
+					interrupt-names = "60S", "ALARM";
+				};
+
+				ab8500-gpadc {
+					compatible = "stericsson,ab8500-gpadc";
+					interrupts = <32 IRQ_TYPE_LEVEL_HIGH
+						      39 IRQ_TYPE_LEVEL_HIGH>;
+					interrupt-names = "HW_CONV_END", "SW_CONV_END";
+					vddadc-supply = <&ab8500_ldo_tvout_reg>;
+				};
+
+				ab8500_battery: ab8500_battery {
+					stericsson,battery-type = "LIPO";
+					thermistor-on-batctrl;
+				};
+
+				ab8500_fg {
+					compatible = "stericsson,ab8500-fg";
+					battery	   = <&ab8500_battery>;
+				};
+
+				ab8500_btemp {
+					compatible = "stericsson,ab8500-btemp";
+					battery	   = <&ab8500_battery>;
+				};
+
+				ab8500_charger {
+					compatible	= "stericsson,ab8500-charger";
+					battery		= <&ab8500_battery>;
+					vddadc-supply	= <&ab8500_ldo_tvout_reg>;
+				};
+
+				ab8500_chargalg {
+					compatible	= "stericsson,ab8500-chargalg";
+					battery		= <&ab8500_battery>;
+				};
+
+				ab8500_usb {
+					compatible = "stericsson,ab8500-usb";
+					interrupts = < 90 IRQ_TYPE_LEVEL_HIGH
+						       96 IRQ_TYPE_LEVEL_HIGH
+						       14 IRQ_TYPE_LEVEL_HIGH
+						       15 IRQ_TYPE_LEVEL_HIGH
+						       79 IRQ_TYPE_LEVEL_HIGH
+						       74 IRQ_TYPE_LEVEL_HIGH
+						       75 IRQ_TYPE_LEVEL_HIGH>;
+					interrupt-names = "ID_WAKEUP_R",
+							  "ID_WAKEUP_F",
+							  "VBUS_DET_F",
+							  "VBUS_DET_R",
+							  "USB_LINK_STATUS",
+							  "USB_ADP_PROBE_PLUG",
+							  "USB_ADP_PROBE_UNPLUG";
+					vddulpivio18-supply = <&ab8500_ldo_intcore_reg>;
+					v-ape-supply = <&db8500_vape_reg>;
+					musb_1v8-supply = <&db8500_vsmps2_reg>;
+					clocks = <&prcmu_clk PRCMU_SYSCLK>;
+					clock-names = "sysclk";
+				};
+
+				ab8500-ponkey {
+					compatible = "stericsson,ab8500-poweron-key";
+					interrupts = <6 IRQ_TYPE_LEVEL_HIGH
+						      7 IRQ_TYPE_LEVEL_HIGH>;
+					interrupt-names = "ONKEY_DBF", "ONKEY_DBR";
+				};
+
+				ab8500-sysctrl {
+					compatible = "stericsson,ab8500-sysctrl";
+				};
+
+				ab8500-pwm {
+					compatible = "stericsson,ab8500-pwm";
+					clocks = <&ab8500_clock AB8500_SYSCLK_INT>;
+					clock-names = "intclk";
+				};
+
+				ab8500-debugfs {
+					compatible = "stericsson,ab8500-debug";
+				};
+
+				codec: ab8500-codec {
+					compatible = "stericsson,ab8500-codec";
+
+					V-AUD-supply = <&ab8500_ldo_audio_reg>;
+					V-AMIC1-supply = <&ab8500_ldo_anamic1_reg>;
+					V-AMIC2-supply = <&ab8500_ldo_anamic2_reg>;
+					V-DMIC-supply = <&ab8500_ldo_dmic_reg>;
+
+					clocks = <&ab8500_clock AB8500_SYSCLK_AUDIO>;
+					clock-names = "audioclk";
+
+					stericsson,earpeice-cmv = <950>; /* Units in mV. */
+				};
+
+				ext_regulators: ab8500-ext-regulators {
+					compatible = "stericsson,ab8500-ext-regulator";
+
+					ab8500_ext1_reg: ab8500_ext1 {
+						regulator-min-microvolt = <1800000>;
+						regulator-max-microvolt = <1800000>;
+						regulator-boot-on;
+						regulator-always-on;
+					};
+
+					ab8500_ext2_reg: ab8500_ext2 {
+						regulator-min-microvolt = <1360000>;
+						regulator-max-microvolt = <1360000>;
+						regulator-boot-on;
+						regulator-always-on;
+					};
+
+					ab8500_ext3_reg: ab8500_ext3 {
+						regulator-min-microvolt = <3400000>;
+						regulator-max-microvolt = <3400000>;
+						regulator-boot-on;
+					};
+				};
+
+				ab8500-regulators {
+					compatible = "stericsson,ab8500-regulator";
+					vin-supply = <&ab8500_ext3_reg>;
+
+					// supplies to the display/camera
+					ab8500_ldo_aux1_reg: ab8500_ldo_aux1 {
+						regulator-min-microvolt = <2500000>;
+						regulator-max-microvolt = <2900000>;
+						regulator-boot-on;
+						/* BUG: If turned off MMC will be affected. */
+						regulator-always-on;
+					};
+
+					// supplies to the on-board eMMC
+					ab8500_ldo_aux2_reg: ab8500_ldo_aux2 {
+						regulator-min-microvolt = <1100000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					// supply for VAUX3; SDcard slots
+					ab8500_ldo_aux3_reg: ab8500_ldo_aux3 {
+						regulator-min-microvolt = <1100000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					// supply for v-intcore12; VINTCORE12 LDO
+					ab8500_ldo_intcore_reg: ab8500_ldo_intcore {
+					};
+
+					// supply for tvout; gpadc; TVOUT LDO
+					ab8500_ldo_tvout_reg: ab8500_ldo_tvout {
+					};
+
+					// supply for ab8500-usb; USB LDO
+					ab8500_ldo_usb_reg: ab8500_ldo_usb {
+					};
+
+					// supply for ab8500-vaudio; VAUDIO LDO
+					ab8500_ldo_audio_reg: ab8500_ldo_audio {
+					};
+
+					// supply for v-anamic1 VAMIC1 LDO
+					ab8500_ldo_anamic1_reg: ab8500_ldo_anamic1 {
+					};
+
+					// supply for v-amic2; VAMIC2 LDO; reuse constants for AMIC1
+					ab8500_ldo_anamic2_reg: ab8500_ldo_anamic2 {
+					};
+
+					// supply for v-dmic; VDMIC LDO
+					ab8500_ldo_dmic_reg: ab8500_ldo_dmic {
+					};
+
+					// supply for U8500 CSI/DSI; VANA LDO
+					ab8500_ldo_ana_reg: ab8500_ldo_ana {
+					};
+				};
+			};
+		};
+
+		sound {
+			stericsson,audio-codec = <&codec>;
+			clocks = <&prcmu_clk PRCMU_SYSCLK>, <&ab8500_clock AB8500_SYSCLK_ULP>, <&ab8500_clock AB8500_SYSCLK_INT>;
+			clock-names = "sysclk", "ulpclk", "intclk";
+		};
+
+		mcde@a0350000 {
+			vana-supply = <&ab8500_ldo_ana_reg>;
+
+			dsi@a0351000 {
+				vana-supply = <&ab8500_ldo_ana_reg>;
+			};
+			dsi@a0352000 {
+				vana-supply = <&ab8500_ldo_ana_reg>;
+			};
+			dsi@a0353000 {
+				vana-supply = <&ab8500_ldo_ana_reg>;
+			};
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index b1a31134f860..b9b63fc41e47 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -8,7 +8,6 @@
 #include <dt-bindings/mfd/dbx500-prcmu.h>
 #include <dt-bindings/arm/ux500_pm_domains.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/clock/ste-ab8500.h>
 
 / {
 	#address-cells = <1>;
@@ -597,206 +596,6 @@
 				db8500_esram34_ret_reg: db8500_esram34_ret {
 				};
 			};
-
-			ab8500 {
-				compatible = "stericsson,ab8500";
-				interrupt-parent = <&intc>;
-				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-controller;
-				#interrupt-cells = <2>;
-
-				ab8500_clock: clock-controller {
-					compatible = "stericsson,ab8500-clk";
-					#clock-cells = <1>;
-				};
-
-				ab8500_gpio: ab8500-gpio {
-					compatible = "stericsson,ab8500-gpio";
-					gpio-controller;
-					#gpio-cells = <2>;
-				};
-
-				ab8500-rtc {
-					compatible = "stericsson,ab8500-rtc";
-					interrupts = <17 IRQ_TYPE_LEVEL_HIGH
-						      18 IRQ_TYPE_LEVEL_HIGH>;
-					interrupt-names = "60S", "ALARM";
-				};
-
-				ab8500-gpadc {
-					compatible = "stericsson,ab8500-gpadc";
-					interrupts = <32 IRQ_TYPE_LEVEL_HIGH
-						      39 IRQ_TYPE_LEVEL_HIGH>;
-					interrupt-names = "HW_CONV_END", "SW_CONV_END";
-					vddadc-supply = <&ab8500_ldo_tvout_reg>;
-				};
-
-				ab8500_battery: ab8500_battery {
-					stericsson,battery-type = "LIPO";
-					thermistor-on-batctrl;
-				};
-
-				ab8500_fg {
-					compatible = "stericsson,ab8500-fg";
-					battery	   = <&ab8500_battery>;
-				};
-
-				ab8500_btemp {
-					compatible = "stericsson,ab8500-btemp";
-					battery	   = <&ab8500_battery>;
-				};
-
-				ab8500_charger {
-					compatible	= "stericsson,ab8500-charger";
-					battery		= <&ab8500_battery>;
-					vddadc-supply	= <&ab8500_ldo_tvout_reg>;
-				};
-
-				ab8500_chargalg {
-					compatible	= "stericsson,ab8500-chargalg";
-					battery		= <&ab8500_battery>;
-				};
-
-				ab8500_usb {
-					compatible = "stericsson,ab8500-usb";
-					interrupts = < 90 IRQ_TYPE_LEVEL_HIGH
-						       96 IRQ_TYPE_LEVEL_HIGH
-						       14 IRQ_TYPE_LEVEL_HIGH
-						       15 IRQ_TYPE_LEVEL_HIGH
-						       79 IRQ_TYPE_LEVEL_HIGH
-						       74 IRQ_TYPE_LEVEL_HIGH
-						       75 IRQ_TYPE_LEVEL_HIGH>;
-					interrupt-names = "ID_WAKEUP_R",
-							  "ID_WAKEUP_F",
-							  "VBUS_DET_F",
-							  "VBUS_DET_R",
-							  "USB_LINK_STATUS",
-							  "USB_ADP_PROBE_PLUG",
-							  "USB_ADP_PROBE_UNPLUG";
-					vddulpivio18-supply = <&ab8500_ldo_intcore_reg>;
-					v-ape-supply = <&db8500_vape_reg>;
-					musb_1v8-supply = <&db8500_vsmps2_reg>;
-					clocks = <&prcmu_clk PRCMU_SYSCLK>;
-					clock-names = "sysclk";
-				};
-
-				ab8500-ponkey {
-					compatible = "stericsson,ab8500-poweron-key";
-					interrupts = <6 IRQ_TYPE_LEVEL_HIGH
-						      7 IRQ_TYPE_LEVEL_HIGH>;
-					interrupt-names = "ONKEY_DBF", "ONKEY_DBR";
-				};
-
-				ab8500-sysctrl {
-					compatible = "stericsson,ab8500-sysctrl";
-				};
-
-				ab8500-pwm {
-					compatible = "stericsson,ab8500-pwm";
-					clocks = <&ab8500_clock AB8500_SYSCLK_INT>;
-					clock-names = "intclk";
-				};
-
-				ab8500-debugfs {
-					compatible = "stericsson,ab8500-debug";
-				};
-
-				codec: ab8500-codec {
-					compatible = "stericsson,ab8500-codec";
-
-					V-AUD-supply = <&ab8500_ldo_audio_reg>;
-					V-AMIC1-supply = <&ab8500_ldo_anamic1_reg>;
-					V-AMIC2-supply = <&ab8500_ldo_anamic2_reg>;
-					V-DMIC-supply = <&ab8500_ldo_dmic_reg>;
-
-					clocks = <&ab8500_clock AB8500_SYSCLK_AUDIO>;
-					clock-names = "audioclk";
-
-					stericsson,earpeice-cmv = <950>; /* Units in mV. */
-				};
-
-				ext_regulators: ab8500-ext-regulators {
-					compatible = "stericsson,ab8500-ext-regulator";
-
-					ab8500_ext1_reg: ab8500_ext1 {
-						regulator-min-microvolt = <1800000>;
-						regulator-max-microvolt = <1800000>;
-						regulator-boot-on;
-						regulator-always-on;
-					};
-
-					ab8500_ext2_reg: ab8500_ext2 {
-						regulator-min-microvolt = <1360000>;
-						regulator-max-microvolt = <1360000>;
-						regulator-boot-on;
-						regulator-always-on;
-					};
-
-					ab8500_ext3_reg: ab8500_ext3 {
-						regulator-min-microvolt = <3400000>;
-						regulator-max-microvolt = <3400000>;
-						regulator-boot-on;
-					};
-				};
-
-				ab8500-regulators {
-					compatible = "stericsson,ab8500-regulator";
-					vin-supply = <&ab8500_ext3_reg>;
-
-					// supplies to the display/camera
-					ab8500_ldo_aux1_reg: ab8500_ldo_aux1 {
-						regulator-min-microvolt = <2500000>;
-						regulator-max-microvolt = <2900000>;
-						regulator-boot-on;
-						/* BUG: If turned off MMC will be affected. */
-						regulator-always-on;
-					};
-
-					// supplies to the on-board eMMC
-					ab8500_ldo_aux2_reg: ab8500_ldo_aux2 {
-						regulator-min-microvolt = <1100000>;
-						regulator-max-microvolt = <3300000>;
-					};
-
-					// supply for VAUX3; SDcard slots
-					ab8500_ldo_aux3_reg: ab8500_ldo_aux3 {
-						regulator-min-microvolt = <1100000>;
-						regulator-max-microvolt = <3300000>;
-					};
-
-					// supply for v-intcore12; VINTCORE12 LDO
-					ab8500_ldo_intcore_reg: ab8500_ldo_intcore {
-					};
-
-					// supply for tvout; gpadc; TVOUT LDO
-					ab8500_ldo_tvout_reg: ab8500_ldo_tvout {
-					};
-
-					// supply for ab8500-usb; USB LDO
-					ab8500_ldo_usb_reg: ab8500_ldo_usb {
-					};
-
-					// supply for ab8500-vaudio; VAUDIO LDO
-					ab8500_ldo_audio_reg: ab8500_ldo_audio {
-					};
-
-					// supply for v-anamic1 VAMIC1 LDO
-					ab8500_ldo_anamic1_reg: ab8500_ldo_anamic1 {
-					};
-
-					// supply for v-amic2; VAMIC2 LDO; reuse constants for AMIC1
-					ab8500_ldo_anamic2_reg: ab8500_ldo_anamic2 {
-					};
-
-					// supply for v-dmic; VDMIC LDO
-					ab8500_ldo_dmic_reg: ab8500_ldo_dmic {
-					};
-
-					// supply for U8500 CSI/DSI; VANA LDO
-					ab8500_ldo_ana_reg: ab8500_ldo_ana {
-					};
-				};
-			};
 		};
 
 		i2c@80004000 {
@@ -1110,9 +909,6 @@
 		sound {
 			compatible = "stericsson,snd-soc-mop500";
 			stericsson,cpu-dai = <&msp1 &msp3>;
-			stericsson,audio-codec = <&codec>;
-			clocks = <&prcmu_clk PRCMU_SYSCLK>, <&ab8500_clock AB8500_SYSCLK_ULP>, <&ab8500_clock AB8500_SYSCLK_INT>;
-			clock-names = "sysclk", "ulpclk", "intclk";
 		};
 
 		msp0: msp@80123000 {
@@ -1219,7 +1015,6 @@
 			reg = <0xa0350000 0x1000>;
 			interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
 			epod-supply = <&db8500_b2r2_mcde_reg>;
-			vana-supply = <&ab8500_ldo_ana_reg>;
 			clocks = <&prcmu_clk PRCMU_MCDECLK>, /* Main MCDE clock */
 				 <&prcmu_clk PRCMU_LCDCLK>, /* LCD clock */
 				 <&prcmu_clk PRCMU_PLLDSI>; /* HDMI clock */
@@ -1232,7 +1027,6 @@
 			dsi0: dsi@a0351000 {
 				compatible = "ste,mcde-dsi";
 				reg = <0xa0351000 0x1000>;
-				vana-supply = <&ab8500_ldo_ana_reg>;
 				clocks = <&prcmu_clk PRCMU_DSI0CLK>, <&prcmu_clk PRCMU_DSI0ESCCLK>;
 				clock-names = "hs", "lp";
 				#address-cells = <1>;
@@ -1241,7 +1035,6 @@
 			dsi1: dsi@a0352000 {
 				compatible = "ste,mcde-dsi";
 				reg = <0xa0352000 0x1000>;
-				vana-supply = <&ab8500_ldo_ana_reg>;
 				clocks = <&prcmu_clk PRCMU_DSI1CLK>, <&prcmu_clk PRCMU_DSI1ESCCLK>;
 				clock-names = "hs", "lp";
 				#address-cells = <1>;
@@ -1250,7 +1043,6 @@
 			dsi2: dsi@a0353000 {
 				compatible = "ste,mcde-dsi";
 				reg = <0xa0353000 0x1000>;
-				vana-supply = <&ab8500_ldo_ana_reg>;
 				/* This DSI port only has the Low Power / Energy Save clock */
 				clocks = <&prcmu_clk PRCMU_DSI2ESCCLK>;
 				clock-names = "lp";
diff --git a/arch/arm/boot/dts/ste-href-ab8500.dtsi b/arch/arm/boot/dts/ste-href-ab8500.dtsi
index 8e3e947d181f..4946743de7b9 100644
--- a/arch/arm/boot/dts/ste-href-ab8500.dtsi
+++ b/arch/arm/boot/dts/ste-href-ab8500.dtsi
@@ -3,6 +3,8 @@
  * Copyright 2014 Linaro Ltd.
  */
 
+#include "ste-ab8500.dtsi"
+
 / {
 	soc {
 		prcmu@80157000 {
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
