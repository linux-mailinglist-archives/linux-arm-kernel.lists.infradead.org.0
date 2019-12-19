Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F91126ECB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:22:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NftyAfgTdZHRwQUB31FHLq88w+ix0UopSc7VTzyYpDc=; b=e+mlOvMg3I819u
	XEWbbwCF8nUsrli0RhDzNCsiUY097rko3w7OBKjvKEAaRSK3xwiHiYxB+YbA7BNXpqcUUskTgr/Lx
	dbfEb44JmZvKIXVWHD+vyz9dAB1W7mfP3oIv9L9EMoSjsIUZJGqVhTq6MUxu4T39VQDQtgCNe2xW8
	m7qHWZk6Y//mVys71TC+vydM0swZhQr9dgVkvJm1rkvfpqkyllfmoouI++Crv9zHclxAewJ1lA7TN
	UbNkrEinc7h2dEjlORdcW/InkNs0DwmJP2xY/7r0QfIExFHgtrX3R018YSwnCWeu0CDAYBcTdU2bN
	Bfj/Gx6A2r9x2LoTkgLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2Js-0008Vs-KO; Thu, 19 Dec 2019 20:22:48 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Iw-0007wl-CU
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:21:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786907;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=GfB/gxQXGyvKqOMzKZOvf0DfMPdmRi6VLaNbMgKxhW8=;
 b=gxIzP2UcLCCaI9GkYSFvpG8yjYvjgaqXGwh/15n8e5Fz+Ku9Ig7MOyuZRkm3sSFB+S
 zX5zAPOjE2SSkZR28WarlpWmHL8stBasvqSSXLUJTPj2IJ+Y3w0oIAVJMTPtrpnU1aon
 cEvBfp2z0OpHzIeKP/YTfLZXvkvBe/YrGsE4hI7yLccVlxxZjWroqwk8Rc5F8/O0779+
 zsh2q915bC8a7W8kNKyk4ZqUY8dS/VDWaa0JbxVHnGXO2VB4RxVWEIeERE1cypllzqpO
 0DdocVA+VJRaJlPaNg+OdBXFeVfUAZN5HeaVgLImHR0XePxw30pFus4cgZ5DOUnJfVoI
 HnfQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLe3Z9
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:40 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 2/9] ARM: dts: ux500: Add device tree include for AB8505
Date: Thu, 19 Dec 2019 21:20:45 +0100
Message-Id: <20191219202052.19039-3-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
References: <20191219202052.19039-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122150_567435_440628C2 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AB8505 is a slightly newer version of AB8500.
Overall it is quite similar, but there are some differences like
the number of GPIOs and regulators. Therefore we need a separate
device tree definition for devices making use of AB8505.

The AB8500-specific nodes were moved out of ste-dbx5x0.dtsi in
commit a46f7c6762d8 ("ARM: dts: ux500: Move ab8500 nodes to ste-ab8500.dtsi").
Add a new "ste-ab8505.dtsi" device tree include in a similar way.

Keep the battery/charging related sub-devices disabled by default
since they require additional configuration to work correctly.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-ab8505.dtsi | 275 ++++++++++++++++++++++++++++++
 1 file changed, 275 insertions(+)
 create mode 100644 arch/arm/boot/dts/ste-ab8505.dtsi

diff --git a/arch/arm/boot/dts/ste-ab8505.dtsi b/arch/arm/boot/dts/ste-ab8505.dtsi
new file mode 100644
index 000000000000..c72aa250bf6f
--- /dev/null
+++ b/arch/arm/boot/dts/ste-ab8505.dtsi
@@ -0,0 +1,275 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2012 Linaro Ltd
+ */
+
+#include <dt-bindings/clock/ste-ab8500.h>
+
+/ {
+	/* Essential housekeeping hardware monitors */
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&gpadc 0x02>, /* Battery temperature */
+			      <&gpadc 0x08>, /* Main battery voltage */
+			      <&gpadc 0x09>, /* VBUS */
+			      <&gpadc 0x0b>, /* Charger current */
+			      <&gpadc 0x0c>; /* Backup battery voltage */
+	};
+
+	soc {
+		prcmu@80157000 {
+			ab8505 {
+				compatible = "stericsson,ab8505";
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
+				ab8505_gpio: ab8505-gpio {
+					compatible = "stericsson,ab8505-gpio";
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
+				gpadc: ab8500-gpadc {
+					compatible = "stericsson,ab8500-gpadc";
+					interrupts = <32 IRQ_TYPE_LEVEL_HIGH
+						      39 IRQ_TYPE_LEVEL_HIGH>;
+					interrupt-names = "HW_CONV_END", "SW_CONV_END";
+					vddadc-supply = <&ab8500_ldo_adc_reg>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					#io-channel-cells = <1>;
+
+					/* GPADC channels */
+					bat_ctrl: channel@01 {
+						reg = <0x01>;
+					};
+					btemp_ball: channel@02 {
+						reg = <0x02>;
+					};
+					acc_detect1: channel@04 {
+						reg = <0x04>;
+					};
+					acc_detect2: channel@05 {
+						reg = <0x05>;
+					};
+					adc_aux1: channel@06 {
+						reg = <0x06>;
+					};
+					adc_aux2: channel@07 {
+						reg = <0x07>;
+					};
+					main_batt_v: channel@08 {
+						reg = <0x08>;
+					};
+					vbus_v: channel@09 {
+						reg = <0x09>;
+					};
+					charger_c: channel@0b {
+						reg = <0x0b>;
+					};
+					bk_bat_v: channel@0c {
+						reg = <0x0c>;
+					};
+					usb_id: channel@0e {
+						reg = <0x0e>;
+					};
+				};
+
+				ab8500_battery: ab8500_battery {
+					status = "disabled";
+					thermistor-on-batctrl;
+				};
+
+				ab8500_fg {
+					status = "disabled";
+					compatible = "stericsson,ab8500-fg";
+					battery = <&ab8500_battery>;
+					io-channels = <&gpadc 0x08>;
+					io-channel-name = "main_bat_v";
+				};
+
+				ab8500_btemp {
+					status = "disabled";
+					compatible = "stericsson,ab8500-btemp";
+					battery = <&ab8500_battery>;
+					io-channels = <&gpadc 0x02>,
+						      <&gpadc 0x01>;
+					io-channel-name = "btemp_ball",
+							  "bat_ctrl";
+				};
+
+				ab8500_charger {
+					status = "disabled";
+					compatible = "stericsson,ab8500-charger";
+					battery = <&ab8500_battery>;
+					vddadc-supply = <&ab8500_ldo_adc_reg>;
+					io-channels = <&gpadc 0x09>,
+						      <&gpadc 0x0b>;
+					io-channel-name = "vbus_v",
+							  "usb_charger_c";
+				};
+
+				ab8500_chargalg {
+					status = "disabled";
+					compatible = "stericsson,ab8500-chargalg";
+					battery = <&ab8500_battery>;
+				};
+
+				ab8500_usb: ab8500_usb {
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
+
+					clocks = <&ab8500_clock AB8500_SYSCLK_AUDIO>;
+					clock-names = "audioclk";
+
+					stericsson,earpeice-cmv = <950>; /* Units in mV. */
+				};
+
+				ab8505-regulators {
+					compatible = "stericsson,ab8505-regulator";
+
+					ab8500_ldo_aux1_reg: ab8500_ldo_aux1 {
+						regulator-min-microvolt = <2800000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					ab8500_ldo_aux2_reg: ab8500_ldo_aux2 {
+						regulator-min-microvolt = <1100000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					ab8500_ldo_aux3_reg: ab8500_ldo_aux3 {
+						regulator-min-microvolt = <1100000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					ab8500_ldo_aux4_reg: ab8500_ldo_aux4 {
+						regulator-min-microvolt = <1100000>;
+						regulator-max-microvolt = <3300000>;
+					};
+
+					ab8500_ldo_aux5_reg: ab8500_ldo_aux5 {
+						regulator-min-microvolt = <1050000>;
+						regulator-max-microvolt = <2790000>;
+					};
+
+					ab8500_ldo_aux6_reg: ab8500_ldo_aux6 {
+						regulator-min-microvolt = <1050000>;
+						regulator-max-microvolt = <2790000>;
+					};
+
+					// supply for v-intcore12; VINTCORE12 LDO
+					ab8500_ldo_intcore_reg: ab8500_ldo_intcore {
+						regulator-min-microvolt = <1250000>;
+						regulator-max-microvolt = <1350000>;
+					};
+
+					// supply for gpadc; ADC LDO
+					ab8500_ldo_adc_reg: ab8500_ldo_adc {
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
+					// supply for v-aux8; VAUX8 LDO
+					ab8500_ldo_aux8_reg: ab8500_ldo_aux8 {
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
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
