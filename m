Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F67194B2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:04:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59x5N+fhCjhuZh1m9nhgkKs/f/wYyj//SkLa9WwiWO0=; b=iW+PFGxCfboXr6
	AvmgzL5c3cd9YU/Lx1qxNOt7CjGioQqfhQHDvLbd8sla8cb68qnlOcld/23rpSrgR71vFZCar3lDr
	UhPf5JFeJrA4bPl91uxu7p5EHlNoeoZQ07tugctM67y3K7dBkBpd6GRPHJ3r+Ksc4GCe9kbdMPvtR
	UgTEFBgY5PgRi8il5e3rZuTCrcLQYGGgBLFB1/2C1ixXpJSDfixL8tJSJe9x/16w6YTssVWAHmRYF
	QVYZUHEakaccnXdccvuZgwCbOcqP/9QVycWNI4SXMfaH7+0drv5I04ep+l9u2S43ibdCoQcsZ2osG
	nnulM1Lz1JKxy4v8brww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHabT-00049e-Qw; Thu, 26 Mar 2020 22:03:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaaW-0003T7-S4
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:02:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaR-0006Em-DN; Thu, 26 Mar 2020 23:02:51 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaR-0008BD-2W; Thu, 26 Mar 2020 23:02:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 4/8] ARM: dts: stm32: use uniform label names for sleep
 pinctrl phandles
Date: Thu, 26 Mar 2020 23:02:08 +0100
Message-Id: <20200326220213.28632-4-a.fatoum@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200326_150257_077006_C61FEBA7 
X-CRM114-Status: GOOD (  11.12  )
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

Some labels follow the *_sleep_pins_* naming scheme, but some also use
*_pins_sleep_*. Because most labels use the former and for uniformity
with variants like sdmmc1_b4_pins_a and sdmmc1_dir_pins_a, adopt the
*_sleep_pins_* scheme throughout.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - New Patch
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi     | 28 ++++++++++----------
 arch/arm/boot/dts/stm32mp157a-avenger96.dts  |  2 +-
 arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts |  4 +--
 arch/arm/boot/dts/stm32mp157c-ed1.dts        |  2 +-
 arch/arm/boot/dts/stm32mp157c-ev1.dts        |  6 ++---
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi       | 12 ++++-----
 6 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 73c07f0dfad2..1971a9603ba6 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -37,7 +37,7 @@ pins {
 		};
 	};
 
-	cec_pins_sleep_a: cec-sleep-0 {
+	cec_sleep_pins_a: cec-sleep-0 {
 		pins {
 			pinmux = <STM32_PINMUX('A', 15, ANALOG)>; /* HDMI_CEC */
 		};
@@ -52,7 +52,7 @@ pins {
 		};
 	};
 
-	cec_pins_sleep_b: cec-sleep-1 {
+	cec_sleep_pins_b: cec-sleep-1 {
 		pins {
 			pinmux = <STM32_PINMUX('B', 6, ANALOG)>; /* HDMI_CEC */
 		};
@@ -142,7 +142,7 @@ pins3 {
 		};
 	};
 
-	ethernet0_rgmii_pins_sleep_a: rgmii-sleep-0 {
+	ethernet0_rgmii_sleep_pins_a: rgmii-sleep-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_RGMII_CLK125 */
 				 <STM32_PINMUX('G', 4, ANALOG)>, /* ETH_RGMII_GTX_CLK */
@@ -182,7 +182,7 @@ pins2 {
 		};
 	};
 
-	ethernet0_rmii_pins_sleep_a: rmii-sleep-0 {
+	ethernet0_rmii_sleep_pins_a: rmii-sleep-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('G', 13, ANALOG)>, /* ETH1_RMII_TXD0 */
 				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH1_RMII_TXD1 */
@@ -250,7 +250,7 @@ pins {
 		};
 	};
 
-	i2c1_pins_sleep_a: i2c1-1 {
+	i2c1_sleep_pins_a: i2c1-1 {
 		pins {
 			pinmux = <STM32_PINMUX('D', 12, ANALOG)>, /* I2C1_SCL */
 				 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
@@ -267,7 +267,7 @@ pins {
 		};
 	};
 
-	i2c1_pins_sleep_b: i2c1-3 {
+	i2c1_sleep_pins_b: i2c1-3 {
 		pins {
 			pinmux = <STM32_PINMUX('F', 14, ANALOG)>, /* I2C1_SCL */
 				 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
@@ -284,7 +284,7 @@ pins {
 		};
 	};
 
-	i2c2_pins_sleep_a: i2c2-1 {
+	i2c2_sleep_pins_a: i2c2-1 {
 		pins {
 			pinmux = <STM32_PINMUX('H', 4, ANALOG)>, /* I2C2_SCL */
 				 <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
@@ -300,7 +300,7 @@ pins {
 		};
 	};
 
-	i2c2_pins_sleep_b1: i2c2-3 {
+	i2c2_sleep_pins_b1: i2c2-3 {
 		pins {
 			pinmux = <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
 		};
@@ -316,7 +316,7 @@ pins {
 		};
 	};
 
-	i2c5_pins_sleep_a: i2c5-1 {
+	i2c5_sleep_pins_a: i2c5-1 {
 		pins {
 			pinmux = <STM32_PINMUX('A', 11, ANALOG)>, /* I2C5_SCL */
 				 <STM32_PINMUX('A', 12, ANALOG)>; /* I2C5_SDA */
@@ -335,7 +335,7 @@ pins {
 		};
 	};
 
-	i2s2_pins_sleep_a: i2s2-1 {
+	i2s2_sleep_pins_a: i2s2-1 {
 		pins {
 			pinmux = <STM32_PINMUX('I', 3, ANALOG)>, /* I2S2_SDO */
 				 <STM32_PINMUX('B', 9, ANALOG)>, /* I2S2_WS */
@@ -379,7 +379,7 @@ pins {
 		};
 	};
 
-	ltdc_pins_sleep_a: ltdc-a-1 {
+	ltdc_sleep_pins_a: ltdc-a-1 {
 		pins {
 			pinmux = <STM32_PINMUX('G',  7, ANALOG)>, /* LCD_CLK */
 				 <STM32_PINMUX('I', 10, ANALOG)>, /* LCD_HSYNC */
@@ -448,7 +448,7 @@ pins {
 		};
 	};
 
-	ltdc_pins_sleep_b: ltdc-b-1 {
+	ltdc_sleep_pins_b: ltdc-b-1 {
 		pins {
 			pinmux = <STM32_PINMUX('I', 14, ANALOG)>, /* LCD_CLK */
 				 <STM32_PINMUX('I', 12, ANALOG)>, /* LCD_HSYNC */
@@ -1145,7 +1145,7 @@ pins {
 		};
 	};
 
-	i2c2_pins_sleep_b2: i2c2-1 {
+	i2c2_sleep_pins_b2: i2c2-1 {
 		pins {
 			pinmux = <STM32_PINMUX('Z', 0, ANALOG)>; /* I2C2_SCL */
 		};
@@ -1161,7 +1161,7 @@ pins {
 		};
 	};
 
-	i2c4_pins_sleep_a: i2c4-1 {
+	i2c4_sleep_pins_a: i2c4-1 {
 		pins {
 			pinmux = <STM32_PINMUX('Z', 4, ANALOG)>, /* I2C4_SCL */
 				 <STM32_PINMUX('Z', 5, ANALOG)>; /* I2C4_SDA */
diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 425175f7d83c..aba38950f2e9 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -82,7 +82,7 @@ led6 {
 &ethernet0 {
 	status = "okay";
 	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
-	pinctrl-1 = <&ethernet0_rgmii_pins_sleep_a>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_a>;
 	pinctrl-names = "default", "sleep";
 	phy-mode = "rgmii";
 	max-speed = <1000>;
diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
index af99e132e1b1..06ea8c1a7c56 100644
--- a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
+++ b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
@@ -77,7 +77,7 @@ &cec {
 &ethernet0 {
 	status = "okay";
 	pinctrl-0 = <&ethernet0_rmii_pins_a>;
-	pinctrl-1 = <&ethernet0_rmii_pins_sleep_a>;
+	pinctrl-1 = <&ethernet0_rmii_sleep_pins_a>;
 	pinctrl-names = "default", "sleep";
 	phy-mode = "rmii";
 	max-speed = <100>;
@@ -147,7 +147,7 @@ polytouch@38 {
 &ltdc {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&ltdc_pins_b>;
-	pinctrl-1 = <&ltdc_pins_sleep_b>;
+	pinctrl-1 = <&ltdc_sleep_pins_b>;
 	status = "okay";
 
 	port {
diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index e9aad3e101ac..0aaae0df5b07 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -131,7 +131,7 @@ &gpu {
 &i2c4 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&i2c4_pins_a>;
-	pinctrl-1 = <&i2c4_pins_sleep_a>;
+	pinctrl-1 = <&i2c4_sleep_pins_a>;
 	i2c-scl-rising-time-ns = <185>;
 	i2c-scl-falling-time-ns = <20>;
 	clock-frequency = <400000>;
diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 26db0fe93a98..b19056557ef0 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -136,7 +136,7 @@ dsi_panel_in: endpoint {
 &ethernet0 {
 	status = "okay";
 	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
-	pinctrl-1 = <&ethernet0_rgmii_pins_sleep_a>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_a>;
 	pinctrl-names = "default", "sleep";
 	phy-mode = "rgmii-id";
 	max-speed = <1000>;
@@ -171,7 +171,7 @@ nand@0 {
 &i2c2 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&i2c2_pins_a>;
-	pinctrl-1 = <&i2c2_pins_sleep_a>;
+	pinctrl-1 = <&i2c2_sleep_pins_a>;
 	i2c-scl-rising-time-ns = <185>;
 	i2c-scl-falling-time-ns = <20>;
 	status = "okay";
@@ -225,7 +225,7 @@ joystick_pins: joystick-pins {
 &i2c5 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&i2c5_pins_a>;
-	pinctrl-1 = <&i2c5_pins_sleep_a>;
+	pinctrl-1 = <&i2c5_sleep_pins_a>;
 	i2c-scl-rising-time-ns = <185>;
 	i2c-scl-falling-time-ns = <20>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
index f964e2ae7d60..fcf50131e5fe 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
@@ -112,14 +112,14 @@ adc2: adc@100 {
 &cec {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&cec_pins_b>;
-	pinctrl-1 = <&cec_pins_sleep_b>;
+	pinctrl-1 = <&cec_sleep_pins_b>;
 	status = "okay";
 };
 
 &ethernet0 {
 	status = "okay";
 	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
-	pinctrl-1 = <&ethernet0_rgmii_pins_sleep_a>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_a>;
 	pinctrl-names = "default", "sleep";
 	phy-mode = "rgmii-id";
 	max-speed = <1000>;
@@ -142,7 +142,7 @@ &gpu {
 &i2c1 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&i2c1_pins_a>;
-	pinctrl-1 = <&i2c1_pins_sleep_a>;
+	pinctrl-1 = <&i2c1_sleep_pins_a>;
 	i2c-scl-rising-time-ns = <100>;
 	i2c-scl-falling-time-ns = <7>;
 	status = "okay";
@@ -217,7 +217,7 @@ cs42l51_rx_endpoint: endpoint@1 {
 &i2c4 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&i2c4_pins_a>;
-	pinctrl-1 = <&i2c4_pins_sleep_a>;
+	pinctrl-1 = <&i2c4_sleep_pins_a>;
 	i2c-scl-rising-time-ns = <185>;
 	i2c-scl-falling-time-ns = <20>;
 	clock-frequency = <400000>;
@@ -366,7 +366,7 @@ &i2s2 {
 	clock-names = "pclk", "i2sclk", "x8k", "x11k";
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&i2s2_pins_a>;
-	pinctrl-1 = <&i2s2_pins_sleep_a>;
+	pinctrl-1 = <&i2s2_sleep_pins_a>;
 	status = "okay";
 
 	i2s2_port: port {
@@ -390,7 +390,7 @@ &iwdg2 {
 &ltdc {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&ltdc_pins_a>;
-	pinctrl-1 = <&ltdc_pins_sleep_a>;
+	pinctrl-1 = <&ltdc_sleep_pins_a>;
 	status = "okay";
 
 	port {
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
