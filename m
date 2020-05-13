Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995F61D1D12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 20:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0a8oIuaa7bdlcMWc4yR9ux23RfL1ph4NCGcHG/fm+w=; b=LkO1aHigfTa9i3
	Ne1sXjv/hjPatlRxFxaXYWhUl4Y4iP337AZaDYDawJUzAlM/dXbMyCJdyfRA2S1qUBlBpu+00V8Zt
	s2rNIv877lfisq8NXqnwor+QliEWe8NOyMmjodgPuG5ES6HYHl0dPtORbob8eqeBB6YVC+M/W90tX
	tcIEzMAV7X2zIqB+AHsB3z0TY3DUXgxslGSoSMQNlSgF1eB1yaU6XRjFHRLg+z8CKvObLDjig/Yzb
	iVWsFcfDgGzvJMmxFbUx8iZV9XCc1io9tsEIg2PwIK0gPmvQlAgvb6bhXzy+8rLfUz0Jgz6BbiO3F
	mMxK5xPV3Ey1Qax6UHtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvqe-0001td-GT; Wed, 13 May 2020 18:11:16 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvpv-0001Pc-1o
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 18:10:34 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49MjQF5tHmz1qs0B;
 Wed, 13 May 2020 20:10:29 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49MjQF5BMMz1r6F3;
 Wed, 13 May 2020 20:10:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id skP0l45XGED7; Wed, 13 May 2020 20:10:27 +0200 (CEST)
X-Auth-Info: 8SjTU6bxaVQlF+eCTVPW3y/9PWfD+9bXh7aNsrSzv+Y=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 13 May 2020 20:10:27 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 3/4] ARM: dts: stm32: Split SoC-independent parts of DHCOM
 SOM and PDK2
Date: Wed, 13 May 2020 20:10:19 +0200
Message-Id: <20200513181020.8225-3-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200513181020.8225-1-marex@denx.de>
References: <20200513181020.8225-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_111031_437027_E877DA39 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DH Electronics PDK2 can be populated with SoM with any STM32MP15xx
variant. Split the SoC-independent parts of the SoM and PDK2 into the
stm32mp15xx-dhcom-*.dtsi and reduce stm32mp157c-dhcom-*dts* to example
of adding STM32MP157C variant of the SoM into a PDK2 carrier board.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: - Drop the stm32mp157c-dhcom-som.dtsi , as it was just include statements
    - Add comment about what SoM+Board combination is currently supported
V3: Move the comment to stm32mp157c-dhcom-pdk2.dts
---
 arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts  | 348 +-----------------
 arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi | 337 +++++++++++++++++
 ...om-som.dtsi => stm32mp15xx-dhcom-som.dtsi} |   5 +-
 3 files changed, 352 insertions(+), 338 deletions(-)
 create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
 rename arch/arm/boot/dts/{stm32mp157c-dhcom-som.dtsi => stm32mp15xx-dhcom-som.dtsi} (98%)

diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
index b380268750f3..197aa98d49e2 100644
--- a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
+++ b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
@@ -1,243 +1,23 @@
 // SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
 /*
- * Copyright (C) 2019 Marek Vasut <marex@denx.de>
+ * Copyright (C) 2019-2020 Marek Vasut <marex@denx.de>
+ *
+ * DHCOM STM32MP1 variant:
+ * DHCM-STM32MP157C-C065-R102-F0819-SPI-E2-CAN2-SDR104-RTC-WBT-T-DSI-I-01D2
+ * DHCOR PCB number: 587-200 or newer
+ * PDK2 PCB number: 516-400 or newer
  */
+/dts-v1/;
 
-#include "stm32mp157c-dhcom-som.dtsi"
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/pwm/pwm.h>
+#include "stm32mp157.dtsi"
+#include "stm32mp15xc.dtsi"
+#include "stm32mp15xx-dhcom-som.dtsi"
+#include "stm32mp15xx-dhcom-pdk2.dtsi"
 
 / {
-	model = "STMicroelectronics STM32MP157C DHCOM Premium Developer Kit (2)";
-	compatible = "dh,stm32mp157c-dhcom-pdk2", "st,stm32mp157";
-
-	aliases {
-		serial0 = &uart4;
-		serial1 = &usart3;
-		serial2 = &uart8;
-		ethernet0 = &ethernet0;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	clk_ext_audio_codec: clock-codec {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <24000000>;
-	};
-
-	display_bl: display-bl {
-		compatible = "pwm-backlight";
-		pwms = <&pwm2 0 500000 PWM_POLARITY_INVERTED>;
-		brightness-levels = <0 16 22 30 40 55 75 102 138 188 255>;
-		default-brightness-level = <8>;
-		enable-gpios = <&gpioi 0 GPIO_ACTIVE_HIGH>;
-		status = "okay";
-	};
-
-	ethernet_vio: vioregulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vio";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&gpiog 3 GPIO_ACTIVE_LOW>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
-	gpio-keys-polled {
-		compatible = "gpio-keys-polled";
-		#size-cells = <0>;
-		poll-interval = <20>;
-
-		/*
-		 * The EXTi IRQ line 3 is shared with touchscreen and ethernet,
-		 * so mark this as polled GPIO key.
-		 */
-		button-0 {
-			label = "TA1-GPIO-A";
-			linux,code = <KEY_A>;
-			gpios = <&gpiof 3 GPIO_ACTIVE_LOW>;
-		};
-	};
-
-	gpio-keys {
-		compatible = "gpio-keys";
-		#size-cells = <0>;
-
-		button-1 {
-			label = "TA2-GPIO-B";
-			linux,code = <KEY_B>;
-			gpios = <&gpiod 6 GPIO_ACTIVE_LOW>;
-			wakeup-source;
-		};
-
-		button-2 {
-			label = "TA3-GPIO-C";
-			linux,code = <KEY_C>;
-			gpios = <&gpioi 11 GPIO_ACTIVE_LOW>;
-			wakeup-source;
-		};
-
-		button-3 {
-			label = "TA4-GPIO-D";
-			linux,code = <KEY_D>;
-			gpios = <&gpiod 12 GPIO_ACTIVE_LOW>;
-			wakeup-source;
-		};
-	};
-
-	led {
-		compatible = "gpio-leds";
-
-		led-0 {
-			label = "green:led5";
-			gpios = <&gpiog 2 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
-		};
-
-		led-1 {
-			label = "green:led6";
-			gpios = <&gpiod 11 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
-		};
-
-		led-2 {
-			label = "green:led7";
-			gpios = <&gpioi 2 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
-		};
-
-		led-3 {
-			label = "green:led8";
-			gpios = <&gpioi 3 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
-		};
-	};
-
-	panel {
-		compatible = "edt,etm0700g0edh6";
-		backlight = <&display_bl>;
-
-		port {
-			lcd_panel_in: endpoint {
-				remote-endpoint = <&lcd_display_out>;
-			};
-		};
-	};
-
-	sound {
-		compatible = "audio-graph-card";
-		routing =
-			"MIC_IN", "Capture",
-			"Capture", "Mic Bias",
-			"Playback", "HP_OUT";
-		dais = <&sai2a_port &sai2b_port>;
-		status = "okay";
-	};
-};
-
-&cec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&cec_pins_a>;
-	status = "okay";
-};
-
-&ethernet0 {
-	status = "okay";
-	pinctrl-0 = <&ethernet0_rmii_pins_a>;
-	pinctrl-1 = <&ethernet0_rmii_sleep_pins_a>;
-	pinctrl-names = "default", "sleep";
-	phy-mode = "rmii";
-	max-speed = <100>;
-	phy-handle = <&phy0>;
-	st,eth-ref-clk-sel;
-	phy-reset-gpios = <&gpioh 15 GPIO_ACTIVE_LOW>;
-
-	mdio0 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "snps,dwmac-mdio";
-
-		phy0: ethernet-phy@1 {
-			reg = <1>;
-		};
-	};
-};
-
-&i2c2 {	/* Header X22 */
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c2_pins_a>;
-	i2c-scl-rising-time-ns = <185>;
-	i2c-scl-falling-time-ns = <20>;
-	status = "okay";
-	/* spare dmas for other usage */
-	/delete-property/dmas;
-	/delete-property/dma-names;
-	status = "okay";
-};
-
-&i2c5 {	/* Header X21 */
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c5_pins_a>;
-	i2c-scl-rising-time-ns = <185>;
-	i2c-scl-falling-time-ns = <20>;
-	status = "okay";
-	/* spare dmas for other usage */
-	/delete-property/dmas;
-	/delete-property/dma-names;
-
-	sgtl5000: codec@a {
-		compatible = "fsl,sgtl5000";
-		reg = <0x0a>;
-		#sound-dai-cells = <0>;
-		clocks = <&clk_ext_audio_codec>;
-		VDDA-supply = <&v3v3>;
-		VDDIO-supply = <&vdd>;
-
-		sgtl5000_port: port {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			sgtl5000_tx_endpoint: endpoint@0 {
-				reg = <0>;
-				remote-endpoint = <&sai2a_endpoint>;
-				frame-master;
-				bitclock-master;
-			};
-
-			sgtl5000_rx_endpoint: endpoint@1 {
-				reg = <1>;
-				remote-endpoint = <&sai2b_endpoint>;
-				frame-master;
-				bitclock-master;
-			};
-		};
-
-	};
-
-	polytouch@38 {
-		compatible = "edt,edt-ft5x06";
-		reg = <0x38>;
-		interrupt-parent = <&gpiog>;
-		interrupts = <2 IRQ_TYPE_EDGE_FALLING>; /* GPIO E */
-		linux,wakeup;
-	};
-};
-
-&ltdc {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&ltdc_pins_b>;
-	pinctrl-1 = <&ltdc_sleep_pins_b>;
-	status = "okay";
-
-	port {
-		lcd_display_out: endpoint {
-			remote-endpoint = <&lcd_panel_in>;
-		};
-	};
+	model = "DH Electronics STM32MP157C DHCOM Premium Developer Kit (2)";
+	compatible = "dh,stm32mp157c-dhcom-pdk2", "dh,stm32mp157c-dhcom-som",
+		     "st,stm32mp157";
 };
 
 &m_can1 {
@@ -246,103 +26,3 @@ &m_can1 {
 	pinctrl-1 = <&m_can1_sleep_pins_a>;
 	status = "okay";
 };
-
-&sai2 {
-	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
-	clock-names = "pclk", "x8k", "x11k";
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&sai2a_pins_b &sai2b_pins_b>;
-	pinctrl-1 = <&sai2a_sleep_pins_b &sai2b_sleep_pins_b>;
-	status = "okay";
-
-	sai2a: audio-controller@4400b004 {
-		#clock-cells = <0>;
-		dma-names = "tx";
-		clocks = <&rcc SAI2_K>;
-		clock-names = "sai_ck";
-		status = "okay";
-
-		sai2a_port: port {
-			sai2a_endpoint: endpoint {
-				remote-endpoint = <&sgtl5000_tx_endpoint>;
-				format = "i2s";
-				mclk-fs = <512>;
-				dai-tdm-slot-num = <2>;
-				dai-tdm-slot-width = <16>;
-			};
-		};
-	};
-
-	sai2b: audio-controller@4400b024 {
-		dma-names = "rx";
-		st,sync = <&sai2a 2>;
-		clocks = <&rcc SAI2_K>, <&sai2a>;
-		clock-names = "sai_ck", "MCLK";
-		status = "okay";
-
-		sai2b_port: port {
-			sai2b_endpoint: endpoint {
-				remote-endpoint = <&sgtl5000_rx_endpoint>;
-				format = "i2s";
-				mclk-fs = <512>;
-				dai-tdm-slot-num = <2>;
-				dai-tdm-slot-width = <16>;
-			};
-		};
-	};
-};
-
-&timers2 {
-	/* spare dmas for other usage (un-delete to enable pwm capture) */
-	/delete-property/dmas;
-	/delete-property/dma-names;
-	status = "okay";
-	pwm2: pwm {
-		pinctrl-0 = <&pwm2_pins_a>;
-		pinctrl-names = "default";
-		status = "okay";
-	};
-	timer@1 {
-		status = "okay";
-	};
-};
-
-&usart3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&usart3_pins_a>;
-	status = "okay";
-};
-
-&uart8 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart8_pins_a>;
-	status = "okay";
-};
-
-&usbh_ehci {
-	phys = <&usbphyc_port0>;
-	status = "okay";
-};
-
-&usbotg_hs {
-	dr_mode = "peripheral";
-	phys = <&usbphyc_port1 0>;
-	phy-names = "usb2-phy";
-	status = "okay";
-};
-
-&usbphyc {
-	status = "okay";
-};
-
-&usbphyc_port0 {
-	phy-supply = <&vdd_usb>;
-	vdda1v1-supply = <&reg11>;
-	vdda1v8-supply = <&reg18>;
-};
-
-&usbphyc_port1 {
-	phy-supply = <&vdd_usb>;
-	vdda1v1-supply = <&reg11>;
-	vdda1v8-supply = <&reg18>;
-};
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
new file mode 100644
index 000000000000..7c4bd615b311
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
@@ -0,0 +1,337 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) 2019-2020 Marek Vasut <marex@denx.de>
+ */
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/pwm/pwm.h>
+
+/ {
+	aliases {
+		serial0 = &uart4;
+		serial1 = &usart3;
+		serial2 = &uart8;
+		ethernet0 = &ethernet0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	clk_ext_audio_codec: clock-codec {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+	};
+
+	display_bl: display-bl {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 500000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <0 16 22 30 40 55 75 102 138 188 255>;
+		default-brightness-level = <8>;
+		enable-gpios = <&gpioi 0 GPIO_ACTIVE_HIGH>;
+		status = "okay";
+	};
+
+	ethernet_vio: vioregulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vio";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpiog 3 GPIO_ACTIVE_LOW>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		#size-cells = <0>;
+		poll-interval = <20>;
+
+		/*
+		 * The EXTi IRQ line 3 is shared with touchscreen and ethernet,
+		 * so mark this as polled GPIO key.
+		 */
+		button-0 {
+			label = "TA1-GPIO-A";
+			linux,code = <KEY_A>;
+			gpios = <&gpiof 3 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		#size-cells = <0>;
+
+		button-1 {
+			label = "TA2-GPIO-B";
+			linux,code = <KEY_B>;
+			gpios = <&gpiod 6 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		button-2 {
+			label = "TA3-GPIO-C";
+			linux,code = <KEY_C>;
+			gpios = <&gpioi 11 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		button-3 {
+			label = "TA4-GPIO-D";
+			linux,code = <KEY_D>;
+			gpios = <&gpiod 12 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+	};
+
+	led {
+		compatible = "gpio-leds";
+
+		led-0 {
+			label = "green:led5";
+			gpios = <&gpiog 2 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-1 {
+			label = "green:led6";
+			gpios = <&gpiod 11 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-2 {
+			label = "green:led7";
+			gpios = <&gpioi 2 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-3 {
+			label = "green:led8";
+			gpios = <&gpioi 3 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+	};
+
+	panel {
+		compatible = "edt,etm0700g0edh6";
+		backlight = <&display_bl>;
+
+		port {
+			lcd_panel_in: endpoint {
+				remote-endpoint = <&lcd_display_out>;
+			};
+		};
+	};
+
+	sound {
+		compatible = "audio-graph-card";
+		routing =
+			"MIC_IN", "Capture",
+			"Capture", "Mic Bias",
+			"Playback", "HP_OUT";
+		dais = <&sai2a_port &sai2b_port>;
+		status = "okay";
+	};
+};
+
+&cec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&cec_pins_a>;
+	status = "okay";
+};
+
+&ethernet0 {
+	status = "okay";
+	pinctrl-0 = <&ethernet0_rmii_pins_a>;
+	pinctrl-1 = <&ethernet0_rmii_sleep_pins_a>;
+	pinctrl-names = "default", "sleep";
+	phy-mode = "rmii";
+	max-speed = <100>;
+	phy-handle = <&phy0>;
+	st,eth-ref-clk-sel;
+	phy-reset-gpios = <&gpioh 15 GPIO_ACTIVE_LOW>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+
+		phy0: ethernet-phy@1 {
+			reg = <1>;
+		};
+	};
+};
+
+&i2c2 {	/* Header X22 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins_a>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+	/* spare dmas for other usage */
+	/delete-property/dmas;
+	/delete-property/dma-names;
+	status = "okay";
+};
+
+&i2c5 {	/* Header X21 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c5_pins_a>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+	/* spare dmas for other usage */
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	sgtl5000: codec@a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		#sound-dai-cells = <0>;
+		clocks = <&clk_ext_audio_codec>;
+		VDDA-supply = <&v3v3>;
+		VDDIO-supply = <&vdd>;
+
+		sgtl5000_port: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			sgtl5000_tx_endpoint: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&sai2a_endpoint>;
+				frame-master;
+				bitclock-master;
+			};
+
+			sgtl5000_rx_endpoint: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&sai2b_endpoint>;
+				frame-master;
+				bitclock-master;
+			};
+		};
+
+	};
+
+	polytouch@38 {
+		compatible = "edt,edt-ft5x06";
+		reg = <0x38>;
+		interrupt-parent = <&gpiog>;
+		interrupts = <2 IRQ_TYPE_EDGE_FALLING>; /* GPIO E */
+		linux,wakeup;
+	};
+};
+
+&ltdc {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&ltdc_pins_b>;
+	pinctrl-1 = <&ltdc_sleep_pins_b>;
+	status = "okay";
+
+	port {
+		lcd_display_out: endpoint {
+			remote-endpoint = <&lcd_panel_in>;
+		};
+	};
+};
+
+&sai2 {
+	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
+	clock-names = "pclk", "x8k", "x11k";
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&sai2a_pins_b &sai2b_pins_b>;
+	pinctrl-1 = <&sai2a_sleep_pins_b &sai2b_sleep_pins_b>;
+	status = "okay";
+
+	sai2a: audio-controller@4400b004 {
+		#clock-cells = <0>;
+		dma-names = "tx";
+		clocks = <&rcc SAI2_K>;
+		clock-names = "sai_ck";
+		status = "okay";
+
+		sai2a_port: port {
+			sai2a_endpoint: endpoint {
+				remote-endpoint = <&sgtl5000_tx_endpoint>;
+				format = "i2s";
+				mclk-fs = <512>;
+				dai-tdm-slot-num = <2>;
+				dai-tdm-slot-width = <16>;
+			};
+		};
+	};
+
+	sai2b: audio-controller@4400b024 {
+		dma-names = "rx";
+		st,sync = <&sai2a 2>;
+		clocks = <&rcc SAI2_K>, <&sai2a>;
+		clock-names = "sai_ck", "MCLK";
+		status = "okay";
+
+		sai2b_port: port {
+			sai2b_endpoint: endpoint {
+				remote-endpoint = <&sgtl5000_rx_endpoint>;
+				format = "i2s";
+				mclk-fs = <512>;
+				dai-tdm-slot-num = <2>;
+				dai-tdm-slot-width = <16>;
+			};
+		};
+	};
+};
+
+&timers2 {
+	/* spare dmas for other usage (un-delete to enable pwm capture) */
+	/delete-property/dmas;
+	/delete-property/dma-names;
+	status = "okay";
+	pwm2: pwm {
+		pinctrl-0 = <&pwm2_pins_a>;
+		pinctrl-names = "default";
+		status = "okay";
+	};
+	timer@1 {
+		status = "okay";
+	};
+};
+
+&usart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&usart3_pins_a>;
+	status = "okay";
+};
+
+&uart8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart8_pins_a>;
+	status = "okay";
+};
+
+&usbh_ehci {
+	phys = <&usbphyc_port0>;
+	status = "okay";
+};
+
+&usbotg_hs {
+	dr_mode = "peripheral";
+	phys = <&usbphyc_port1 0>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
+
+&usbphyc {
+	status = "okay";
+};
+
+&usbphyc_port0 {
+	phy-supply = <&vdd_usb>;
+	vdda1v1-supply = <&reg11>;
+	vdda1v8-supply = <&reg18>;
+};
+
+&usbphyc_port1 {
+	phy-supply = <&vdd_usb>;
+	vdda1v1-supply = <&reg11>;
+	vdda1v8-supply = <&reg18>;
+};
diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
similarity index 98%
rename from arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
rename to arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
index f97e0d2ecf17..ba905196fb54 100644
--- a/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
@@ -1,11 +1,8 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
 /*
- * Copyright (C) 2019 Marek Vasut <marex@denx.de>
+ * Copyright (C) 2019-2020 Marek Vasut <marex@denx.de>
  */
-/dts-v1/;
 
-#include "stm32mp157.dtsi"
-#include "stm32mp15xc.dtsi"
 #include "stm32mp15-pinctrl.dtsi"
 #include "stm32mp15xxaa-pinctrl.dtsi"
 #include <dt-bindings/gpio/gpio.h>
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
