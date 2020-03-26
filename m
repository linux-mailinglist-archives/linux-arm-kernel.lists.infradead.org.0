Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC25C194B32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyvj6kGs8PF4ipdfrvzuFnmccb915BexJ1B/PT6wSX0=; b=QFYH/xJElJMPYN
	SHets7Zaz12GI7SylFaEJZqqLbqDeKbDbtaYeNypNGfSnTDVR/+SnjmRB3IN/RyhL2vcZqUBQ8l5Q
	NIhzcn92zK6Es+Lyg/kPhENcm6XuUmK7kesqQJXpwFQhgmXqYHXbKbCJ7OAufEQOdV/9GK/AeteWe
	qWMTlZjrq3h1etTWW0wbJTBbtVW8iHVDXhV3IsTAvxuqhV7x8DU8zFTKjuBaPze+Lu9xgxyk1dCQW
	IJYDj+1utArwyy9QtoAI0jhyd3RYT61Q4KBMlcdW/qyAQCINoH9F+khnxQlX6/WAE1/eurWm8DTxy
	6N2TJRIThlbVVjJD9hCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHacH-0004vX-Pa; Thu, 26 Mar 2020 22:04:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaaa-0003US-2z
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:03:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaT-0006Ho-U0; Thu, 26 Mar 2020 23:02:53 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaT-0008TL-Jf; Thu, 26 Mar 2020 23:02:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH v2 7/8] ARM: dts: stm32: add STM32MP1-based Linux Automation
 MC-1 board
Date: Thu, 26 Mar 2020 23:02:11 +0100
Message-Id: <20200326220213.28632-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200326220213.28632-1-a.fatoum@pengutronix.de>
References: <20200326220213.28632-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: afa@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_150300_483423_B3B5BA46 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Linux Automation MC-1 is a SBC built around the Octavo Systems
OSD32MP15x SiP. The SiP features up to 1 GB DDR3 RAM, EEPROM and
a PMIC. The board has eMMC and a SD slot for storage and GbE
for both connectivity and power.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - rebased on stm32-next
  - moved pinctrl groups to stm32mp15-pinctrl (Alex)
  - added sleep pinctrl groups
  - moved enabling &gpu into SoC DTSI (Lucas)
  - sorted nodes alphabetically (Alex)
  - removed default-state from LED that already has linux,default-trigger
---
 arch/arm/boot/dts/Makefile                |   3 +-
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi  | 185 ++++++++++++++++
 arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts | 252 ++++++++++++++++++++++
 arch/arm/boot/dts/stm32mp15xx-osd32.dtsi  | 230 ++++++++++++++++++++
 4 files changed, 669 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
 create mode 100644 arch/arm/boot/dts/stm32mp15xx-osd32.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 527bfa4a4240..4d31eda5ba23 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1019,7 +1019,8 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32mp157c-dhcom-pdk2.dtb \
 	stm32mp157c-dk2.dtb \
 	stm32mp157c-ed1.dtb \
-	stm32mp157c-ev1.dtb
+	stm32mp157c-ev1.dtb \
+	stm32mp157c-lxa-mc1.dtb
 dtb-$(CONFIG_MACH_SUN4I) += \
 	sun4i-a10-a1000.dtb \
 	sun4i-a10-ba10-tvbox.dtb \
diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 377a8b2b3a3a..eb85ad19c926 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -162,6 +162,57 @@ pins1 {
 		};
 	};
 
+	ethernet0_rgmii_pins_b: rgmii-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
+				 <STM32_PINMUX('G', 4, AF11)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('G', 13, AF11)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 2, AF11)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('A', 2, AF11)>; /* ETH_MDIO */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('H', 7, AF11)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
+				 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
+			bias-disable;
+		};
+	};
+
+	ethernet0_rgmii_sleep_pins_b: rgmii-sleep-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_RGMII_CLK125 */
+				 <STM32_PINMUX('G', 4, ANALOG)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('G', 13, ANALOG)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_MDC */
+			         <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
+			         <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('H', 7, ANALOG)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 1, ANALOG)>, /* ETH_RGMII_RX_CLK */
+				 <STM32_PINMUX('A', 7, ANALOG)>; /* ETH_RGMII_RX_CTL */
+		 };
+	};
+
 	ethernet0_rmii_pins_a: rmii-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('G', 13, AF11)>, /* ETH1_RMII_TXD0 */
@@ -324,6 +375,23 @@ pins {
 		};
 	};
 
+	i2c5_pins_b: i2c5-1 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 0, AF4)>, /* I2C5_SCL */
+			         <STM32_PINMUX('D', 1, AF4)>; /* I2C5_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c5_sleep_pins_b: i2c5-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 0, ANALOG)>, /* I2C5_SCL */
+			         <STM32_PINMUX('D', 1, ANALOG)>; /* I2C5_SDA */
+		};
+	};
+
 	i2s2_pins_a: i2s2-0 {
 		pins {
 			pinmux = <STM32_PINMUX('I', 3, AF5)>, /* I2S2_SDO */
@@ -481,6 +549,68 @@ pins {
 		};
 	};
 
+	ltdc_pins_c: ltdc-2 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B',  1, AF9)>,  /* LTDC_R6 */
+				 <STM32_PINMUX('B',  9, AF14)>, /* LTDC_B7 */
+				 <STM32_PINMUX('C',  0, AF14)>, /* LTDC_R5 */
+				 <STM32_PINMUX('D',  3, AF14)>, /* LTDC_G7 */
+				 <STM32_PINMUX('D',  6, AF14)>, /* LTDC_B2 */
+				 <STM32_PINMUX('D', 10, AF14)>, /* LTDC_B3 */
+				 <STM32_PINMUX('E', 11, AF14)>, /* LTDC_G3 */
+				 <STM32_PINMUX('E', 12, AF14)>, /* LTDC_B4 */
+				 <STM32_PINMUX('E', 13, AF14)>, /* LTDC_DE */
+				 <STM32_PINMUX('E', 15, AF14)>, /* LTDC_R7 */
+				 <STM32_PINMUX('H',  4, AF9)>,  /* LTDC_G5 */
+				 <STM32_PINMUX('H',  8, AF14)>, /* LTDC_R2 */
+				 <STM32_PINMUX('H',  9, AF14)>, /* LTDC_R3 */
+				 <STM32_PINMUX('H', 10, AF14)>, /* LTDC_R4 */
+				 <STM32_PINMUX('H', 13, AF14)>, /* LTDC_G2 */
+				 <STM32_PINMUX('H', 15, AF14)>, /* LTDC_G4 */
+				 <STM32_PINMUX('I',  1, AF14)>, /* LTDC_G6 */
+				 <STM32_PINMUX('I',  5, AF14)>, /* LTDC_B5 */
+				 <STM32_PINMUX('I',  6, AF14)>, /* LTDC_B6 */
+				 <STM32_PINMUX('I',  9, AF14)>, /* LTDC_VSYNC */
+				 <STM32_PINMUX('I', 10, AF14)>; /* LTDC_HSYNC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 14, AF14)>; /* LTDC_CLK */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+	};
+
+	ltdc_sleep_pins_c: ltdc-sleep-2 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 1, ANALOG)>,  /* LTDC_R6 */
+				 <STM32_PINMUX('B', 9, ANALOG)>, /* LTDC_B7 */
+				 <STM32_PINMUX('C', 0, ANALOG)>, /* LTDC_R5 */
+				 <STM32_PINMUX('D', 3, ANALOG)>, /* LTDC_G7 */
+				 <STM32_PINMUX('D', 6, ANALOG)>, /* LTDC_B2 */
+				 <STM32_PINMUX('D', 10, ANALOG)>, /* LTDC_B3 */
+				 <STM32_PINMUX('E', 11, ANALOG)>, /* LTDC_G3 */
+				 <STM32_PINMUX('E', 12, ANALOG)>, /* LTDC_B4 */
+				 <STM32_PINMUX('E', 13, ANALOG)>, /* LTDC_DE */
+				 <STM32_PINMUX('E', 15, ANALOG)>, /* LTDC_R7 */
+				 <STM32_PINMUX('H', 4, ANALOG)>,  /* LTDC_G5 */
+				 <STM32_PINMUX('H', 8, ANALOG)>, /* LTDC_R2 */
+				 <STM32_PINMUX('H', 9, ANALOG)>, /* LTDC_R3 */
+				 <STM32_PINMUX('H', 10, ANALOG)>, /* LTDC_R4 */
+				 <STM32_PINMUX('H', 13, ANALOG)>, /* LTDC_G2 */
+				 <STM32_PINMUX('H', 15, ANALOG)>, /* LTDC_G4 */
+				 <STM32_PINMUX('I', 1, ANALOG)>, /* LTDC_G6 */
+				 <STM32_PINMUX('I', 5, ANALOG)>, /* LTDC_B5 */
+				 <STM32_PINMUX('I', 6, ANALOG)>, /* LTDC_B6 */
+				 <STM32_PINMUX('I', 9, ANALOG)>, /* LTDC_VSYNC */
+				 <STM32_PINMUX('I', 10, ANALOG)>, /* LTDC_HSYNC */
+				 <STM32_PINMUX('E', 14, ANALOG)>; /* LTDC_CLK */
+		};
+	};
+
 	m_can1_pins_a: m-can1-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('H', 13, AF9)>; /* CAN1_TX */
@@ -550,6 +680,21 @@ pins {
 		};
 	};
 
+	pwm3_pins_b: pwm3-1 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 5, AF2)>; /* TIM3_CH2 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm3_sleep_pins_b: pwm3-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 5, ANALOG)>; /* TIM3_CH2 */
+		};
+	};
+
 	pwm4_pins_a: pwm4-0 {
 		pins {
 			pinmux = <STM32_PINMUX('D', 14, AF2)>, /* TIM4_CH3 */
@@ -597,6 +742,25 @@ pins {
 		};
 	};
 
+	pwm5_pins_b: pwm5-1 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 11, AF2)>, /* TIM5_CH2 */
+				 <STM32_PINMUX('H', 12, AF2)>, /* TIM5_CH3 */
+				 <STM32_PINMUX('I', 0, AF2)>; /* TIM5_CH4 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm5_sleep_pins_b: pwm5-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 11, ANALOG)>, /* TIM5_CH2 */
+				 <STM32_PINMUX('H', 12, ANALOG)>, /* TIM5_CH3 */
+				 <STM32_PINMUX('I', 0, ANALOG)>; /* TIM5_CH4 */
+		};
+	};
+
 	pwm8_pins_a: pwm8-0 {
 		pins {
 			pinmux = <STM32_PINMUX('I', 2, AF3)>; /* TIM8_CH4 */
@@ -987,6 +1151,27 @@ pins {
 		};
 	};
 
+	sdmmc2_d47_pins_b: sdmmc2-d47-1 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, AF9)>,  /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	sdmmc2_d47_sleep_pins_b: sdmmc2-d47-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 9, ANALOG)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, ANALOG)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, ANALOG)>; /* SDMMC2_D7 */
+		};
+	};
+
 	sdmmc3_b4_pins_a: sdmmc3-b4-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
diff --git a/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts b/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
new file mode 100644
index 000000000000..5700e6b700d3
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
@@ -0,0 +1,252 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause) */
+/*
+ * Copyright (C) 2020 STMicroelectronics - All Rights Reserved
+ * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
+ */
+
+/dts-v1/;
+
+#include "stm32mp157.dtsi"
+#include "stm32mp15xx-osd32.dtsi"
+#include "stm32mp15xxac-pinctrl.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
+
+/ {
+	model = "Linux Automation MC-1 board";
+	compatible = "lxa,stm32mp157c-mc1", "st,stm32mp157";
+
+	aliases {
+		ethernet0 = &ethernet0;
+		mmc0 = &sdmmc1;
+		mmc1 = &sdmmc2;
+		serial0 = &uart4;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&backlight_pwm 1 100000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <0 31 63 95 127 159 191 223 255>;
+		default-brightness-level = <7>;
+		power-supply = <&reg_5v2>; /* 3V3_BACKLIGHT */
+	};
+
+	chosen {
+		stdout-path = &uart4;
+	};
+
+	led-act {
+		compatible = "gpio-leds";
+
+		led-green {
+			label = "mc1:green:act";
+			gpios = <&gpioa 13 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	led-rgb {
+		compatible = "pwm-leds";
+
+		led-red {
+			label = "mc1:red:rgb";
+			pwms = <&leds_pwm 1 1000000 0>;
+			max-brightness = <255>;
+			active-low;
+		};
+
+		led-green {
+			label = "mc1:green:rgb";
+			pwms = <&leds_pwm 2 1000000 0>;
+			max-brightness = <255>;
+			active-low;
+		};
+
+		led-blue {
+			label = "mc1:blue:rgb";
+			pwms = <&leds_pwm 3 1000000 0>;
+			max-brightness = <255>;
+			active-low;
+		};
+	};
+
+	panel: panel {
+		compatible = "edt,etm0700g0edh6", "simple-panel";
+		backlight = <&backlight>;
+		enable-gpios = <&gpiod 4 GPIO_ACTIVE_HIGH>;
+		power-supply = <&reg_3v3>;
+
+		port {
+			panel_input: endpoint {
+				remote-endpoint = <&ltdc_ep0_out>;
+			};
+		};
+	};
+
+	reg_3v3: regulator_3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		vin-supply = <&v3v3>;
+	};
+
+	/* supplied by either debug board or PoE */
+	reg_5v2: regulator_5v2 {
+		compatible = "regulator-fixed";
+		regulator-name = "5V2";
+		regulator-min-microvolt = <5200000>;
+		regulator-max-microvolt = <5200000>;
+		regulator-always-on;
+	};
+};
+
+&ethernet0 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&ethernet0_rgmii_pins_b>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_b>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy>;
+	status = "okay";
+
+	mdio0 {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@3 { /* KSZ9031RN */
+			reg = <3>;
+			reset-gpios = <&gpiog 0 GPIO_ACTIVE_LOW>; /* ETH_RST# */
+			interrupt-parent = <&gpioa>;
+			interrupts = <6 IRQ_TYPE_EDGE_FALLING>; /* ETH_MDINT# */
+			rxc-skew-ps = <1860>;
+			txc-skew-ps = <1860>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <300>;
+			micrel,force-master;
+		};
+	};
+};
+
+&gpioz {
+	gpio-line-names = "HWID0", "HWID1", "HWID2", "HWID3", "", "",
+			  "HWID4", "HWID5";
+};
+
+&i2c5 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c5_pins_b>;
+	pinctrl-1 = <&i2c5_sleep_pins_b>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	touchscreen@38 {
+		compatible = "edt,edt-ft5x06";
+		interrupt-parent = <&gpiod>;
+		interrupts = <11 IRQ_TYPE_EDGE_FALLING>; /* TOUCH_INT# */
+		vcc-supply = <&reg_3v3>;
+		reg = <0x38>;
+		reset-gpios = <&gpiof 8 GPIO_ACTIVE_LOW>; /* TOUCH_RESET# */
+		touchscreen-size-x = <1792>;
+		touchscreen-size-y = <1024>;
+		wakeup-source;
+	};
+};
+
+&ltdc {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&ltdc_pins_c>;
+	pinctrl-1 = <&ltdc_sleep_pins_c>;
+	status = "okay";
+
+	port {
+		ltdc_ep0_out: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&panel_input>;
+		};
+	};
+};
+
+&pmic {
+	regulators {
+		buck4-supply = <&reg_5v2>;	/* VIN */
+		ldo2-supply = <&reg_5v2>;	/* PMIC_LDO25IN */
+		ldo5-supply = <&reg_5v2>;	/* PMIC_LDO25IN */
+		boost-supply = <&reg_5v2>;	/* PMIC_BSTIN */
+		pwr_sw2-supply = <&bst_out>;    /* PMIC_SWIN */
+	};
+};
+
+&sdmmc1 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc1_b4_pins_a>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
+	bus-width = <4>;
+	cd-gpios = <&gpioh 3 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	no-1-8-v;
+	st,neg-edge;
+	vmmc-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&sdmmc1_b4_pins_a {
+	/*
+	 * board lacks external pull-ups on SDMMC lines. Class 10 SD refuses to
+	 * work, thus enable internal pull-ups.
+	 */
+	pins1 {
+		/delete-property/ bias-disable;
+		bias-pull-up;
+	};
+	pins2 {
+		/delete-property/ bias-disable;
+		bias-pull-up;
+	};
+};
+
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_b>;
+	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_b>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_b>;
+	bus-width = <8>;
+	no-1-8-v;
+	no-sd;
+	no-sdio;
+	non-removable;
+	st,neg-edge;
+	vmmc-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&timers3 {
+	status = "okay";
+
+	backlight_pwm: pwm {
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&pwm3_pins_b>;
+		pinctrl-1 = <&pwm3_sleep_pins_b>;
+		status = "okay";
+	};
+};
+
+&timers5 {
+	status = "okay";
+
+	leds_pwm: pwm {
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&pwm5_pins_b>;
+		pinctrl-1 = <&pwm5_sleep_pins_b>;
+		status = "okay";
+	};
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_pins_a>;
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/stm32mp15xx-osd32.dtsi b/arch/arm/boot/dts/stm32mp15xx-osd32.dtsi
new file mode 100644
index 000000000000..713485a95795
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xx-osd32.dtsi
@@ -0,0 +1,230 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause) */
+/*
+ * Copyright (C) 2020 STMicroelectronics - All Rights Reserved
+ * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
+ */
+
+#include "stm32mp15-pinctrl.dtsi"
+
+#include <dt-bindings/mfd/st,stpmic1.h>
+
+/ {
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		mcuram2: mcuram2@10000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10000000 0x40000>;
+			no-map;
+		};
+
+		vdev0vring0: vdev0vring0@10040000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10040000 0x1000>;
+			no-map;
+		};
+
+		vdev0vring1: vdev0vring1@10041000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10041000 0x1000>;
+			no-map;
+		};
+
+		vdev0buffer: vdev0buffer@10042000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10042000 0x4000>;
+			no-map;
+		};
+
+		mcuram: mcuram@30000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x30000000 0x40000>;
+			no-map;
+		};
+
+		retram: retram@38000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x38000000 0x10000>;
+			no-map;
+		};
+	};
+
+	reg_sip_eeprom: regulator_eeprom {
+		compatible = "regulator-fixed";
+		regulator-name = "sip_eeprom";
+		regulator-always-on;
+	};
+};
+
+&i2c4 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c4_pins_a>;
+	pinctrl-1 = <&i2c4_sleep_pins_a>;
+	clock-frequency = <400000>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+
+	pmic: stpmic@33 {
+		compatible = "st,stpmic1";
+		reg = <0x33>;
+		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		regulators {
+			compatible = "st,stpmic1-regulators";
+
+			ldo1-supply = <&v3v3>;
+			ldo6-supply = <&v3v3>;
+			pwr_sw1-supply = <&bst_out>;
+
+			vddcore: buck1 {
+				regulator-name = "vddcore";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd_ddr: buck2 {
+				regulator-name = "vdd_ddr";
+				regulator-min-microvolt = <1350000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd: buck3 {
+				regulator-name = "vdd";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				st,mask-reset;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			v3v3: buck4 {
+				regulator-name = "v3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-over-current-protection;
+				regulator-initial-mode = <0>;
+			};
+
+			v1v8_audio: ldo1 {
+				regulator-name = "v1v8_audio";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				interrupts = <IT_CURLIM_LDO1 0>;
+
+			};
+
+			v3v3_hdmi: ldo2 {
+				regulator-name = "v3v3_hdmi";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				interrupts = <IT_CURLIM_LDO2 0>;
+
+			};
+
+			vtt_ddr: ldo3 {
+				regulator-name = "vtt_ddr";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <750000>;
+				regulator-always-on;
+				regulator-over-current-protection;
+			};
+
+			vdd_usb: ldo4 {
+				regulator-name = "vdd_usb";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				interrupts = <IT_CURLIM_LDO4 0>;
+			};
+
+			vdda: ldo5 {
+				regulator-name = "vdda";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
+				interrupts = <IT_CURLIM_LDO5 0>;
+				regulator-boot-on;
+			};
+
+			v1v2_hdmi: ldo6 {
+				regulator-name = "v1v2_hdmi";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-always-on;
+				interrupts = <IT_CURLIM_LDO6 0>;
+
+			};
+
+			vref_ddr: vref_ddr {
+				regulator-name = "vref_ddr";
+				regulator-always-on;
+				regulator-over-current-protection;
+			};
+
+			bst_out: boost {
+				regulator-name = "bst_out";
+				interrupts = <IT_OCP_BOOST 0>;
+			};
+
+			vbus_otg: pwr_sw1 {
+				regulator-name = "vbus_otg";
+				interrupts = <IT_OCP_OTG 0>;
+				regulator-active-discharge;
+			};
+
+			vbus_sw: pwr_sw2 {
+				regulator-name = "vbus_sw";
+				interrupts = <IT_OCP_SWOUT 0>;
+				regulator-active-discharge;
+			};
+		};
+
+		onkey {
+			compatible = "st,stpmic1-onkey";
+			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 1>;
+			interrupt-names = "onkey-falling", "onkey-rising";
+		};
+
+		pmic_watchdog: watchdog {
+			compatible = "st,stpmic1-wdt";
+			status = "disabled";
+		};
+	};
+
+	sip_eeprom: eeprom@50 {
+		compatible = "atmel,24c32";
+		vcc-supply = <&reg_sip_eeprom>;
+		reg = <0x50>;
+	};
+};
+
+&ipcc {
+	status = "okay";
+};
+
+&m4_rproc {
+	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
+			<&vdev0vring1>, <&vdev0buffer>;
+	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
+	mbox-names = "vq0", "vq1", "shutdown";
+	interrupt-parent = <&exti>;
+	interrupts = <68 1>;
+	status = "okay";
+};
+
+&rng1 {
+	status = "okay";
+};
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
