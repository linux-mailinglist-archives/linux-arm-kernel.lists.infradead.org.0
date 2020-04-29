Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74221BE424
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TfLKQaF3RY6x3LXU8iA0SMY2QUyptolYcHQm9ajrdd4=; b=cV6SO30XCxrKN6
	37G4W8BbLeOx9YwEs49ea8VclW+pN1Rra0GrAL0lnzKrl8ADSAbrJ82JBzGwxryD6Xr8v59n1CFak
	dxlz/klJ1AA0AS5cDgDQ8UYEm5xeS0FbFwT5DUUW7ZAXSDORB2xAT5naAJWShyko4reP6u9dUmvoG
	w5gubvEr3xuDUO9jCJrjCSY55D5uv9nOPPUB19+jCxy9Jzd7WGHIprbD0MKBF3wPLnsIeg79u0HeP
	6eqP3xcD4JZ4noybGz8iQozNgKGUfXjiP95XDGiOtlCIuTaI57ikuEvoGe59zsugYCflXJELZbR8o
	toEQQ1AWmJW2E5gfV7xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpml-00032T-5p; Wed, 29 Apr 2020 16:42:11 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpk7-0006z1-ES
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 16:39:34 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49C43d73GBz1qs4B;
 Wed, 29 Apr 2020 18:39:25 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49C43d6f4dz1qqkP;
 Wed, 29 Apr 2020 18:39:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id W4tG2cisgiQM; Wed, 29 Apr 2020 18:39:23 +0200 (CEST)
X-Auth-Info: dm1kTWx54nyY4tPOqc/s4QxkM1DLPFQw1erLQ1To/no=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 29 Apr 2020 18:39:22 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: stm32: Add DTs for STM32MP15x variants of the DHCOM
 SOM and PDK2
Date: Wed, 29 Apr 2020 18:39:14 +0200
Message-Id: <20200429163914.67921-1-marex@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_093927_875040_EF518E57 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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

The DH Electronics PDK2 can be populated with SoM with any STM32MP15x
variant. Add the DTs describing the remaining combinations.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/Makefile                    |   2 +
 arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts  |   8 +
 arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi  |   8 +
 arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts  |  15 +
 arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi  |   8 +
 arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts  | 268 +------------
 arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi  | 360 +----------------
 arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi | 269 +++++++++++++
 arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi  | 361 ++++++++++++++++++
 9 files changed, 676 insertions(+), 623 deletions(-)
 create mode 100644 arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts
 create mode 100644 arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts
 create mode 100644 arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index b4a4d2b0f18e..adc60dbefb64 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1033,6 +1033,8 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32mp153a-dhcor-avenger96.dtb \
 	stm32mp157a-dhcor-avenger96.dtb \
 	stm32mp157a-dk1.dtb \
+	stm32mp151c-dhcom-pdk2.dtb \
+	stm32mp153c-dhcom-pdk2.dtb \
 	stm32mp157c-dhcom-pdk2.dtb \
 	stm32mp157c-dk2.dtb \
 	stm32mp157c-ed1.dtb \
diff --git a/arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts
new file mode 100644
index 000000000000..196a6bddfcf0
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp151c-dhcom-pdk2.dts
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+/dts-v1/;
+
+#include "stm32mp151c-dhcom-som.dtsi"
+#include "stm32mp15xc-dhcom-pdk2.dtsi"
diff --git a/arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi
new file mode 100644
index 000000000000..7754b6d74e16
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp151c-dhcom-som.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+
+#include "stm32mp151.dtsi"
+#include "stm32mp15xc.dtsi"
+#include "stm32mp15xx-dhcom-som.dtsi"
diff --git a/arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts
new file mode 100644
index 000000000000..4f114b4f075a
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp153c-dhcom-pdk2.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+/dts-v1/;
+
+#include "stm32mp153c-dhcom-som.dtsi"
+#include "stm32mp15xc-dhcom-pdk2.dtsi"
+
+&m_can1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&m_can1_pins_a>;
+	pinctrl-1 = <&m_can1_sleep_pins_a>;
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi
new file mode 100644
index 000000000000..111fe9419f05
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp153c-dhcom-som.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+
+#include "stm32mp153.dtsi"
+#include "stm32mp15xc.dtsi"
+#include "stm32mp15xx-dhcom-som.dtsi"
diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
index 13b1586d4a8f..e65869ab35f1 100644
--- a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
+++ b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
@@ -1,173 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
 /*
- * Copyright (C) 2019 Marek Vasut <marex@denx.de>
+ * Copyright (C) 2019-2020 Marek Vasut <marex@denx.de>
  */
+/dts-v1/;
 
 #include "stm32mp157c-dhcom-som.dtsi"
-#include <dt-bindings/pwm/pwm.h>
-
-/ {
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
-};
+#include "stm32mp15xc-dhcom-pdk2.dtsi"
 
 &m_can1 {
 	pinctrl-names = "default", "sleep";
@@ -175,103 +13,3 @@ &m_can1 {
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
diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
index f97e0d2ecf17..776e041fb81e 100644
--- a/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
@@ -1,364 +1,8 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
 /*
- * Copyright (C) 2019 Marek Vasut <marex@denx.de>
+ * Copyright (C) 2019-2020 Marek Vasut <marex@denx.de>
  */
-/dts-v1/;
 
 #include "stm32mp157.dtsi"
 #include "stm32mp15xc.dtsi"
-#include "stm32mp15-pinctrl.dtsi"
-#include "stm32mp15xxaa-pinctrl.dtsi"
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/mfd/st,stpmic1.h>
-
-/ {
-	memory@c0000000 {
-		device_type = "memory";
-		reg = <0xC0000000 0x40000000>;
-	};
-
-	reserved-memory {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		mcuram2: mcuram2@10000000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10000000 0x40000>;
-			no-map;
-		};
-
-		vdev0vring0: vdev0vring0@10040000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10040000 0x1000>;
-			no-map;
-		};
-
-		vdev0vring1: vdev0vring1@10041000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10041000 0x1000>;
-			no-map;
-		};
-
-		vdev0buffer: vdev0buffer@10042000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10042000 0x4000>;
-			no-map;
-		};
-
-		mcuram: mcuram@30000000 {
-			compatible = "shared-dma-pool";
-			reg = <0x30000000 0x40000>;
-			no-map;
-		};
-
-		retram: retram@38000000 {
-			compatible = "shared-dma-pool";
-			reg = <0x38000000 0x10000>;
-			no-map;
-		};
-	};
-};
-
-&adc {
-	vdd-supply = <&vdd>;
-	vdda-supply = <&vdda>;
-	vref-supply = <&vdda>;
-	status = "okay";
-
-	adc1: adc@0 {
-		st,min-sample-time-nsecs = <5000>;
-		st,adc-channels = <0>;
-		status = "okay";
-	};
-
-	adc2: adc@100 {
-		st,adc-channels = <1>;
-		st,min-sample-time-nsecs = <5000>;
-		status = "okay";
-	};
-};
-
-&dac {
-	pinctrl-names = "default";
-	pinctrl-0 = <&dac_ch1_pins_a &dac_ch2_pins_a>;
-	vref-supply = <&vdda>;
-	status = "okay";
-
-	dac1: dac@1 {
-		status = "okay";
-	};
-	dac2: dac@2 {
-		status = "okay";
-	};
-};
-
-&dts {
-	status = "okay";
-};
-
-&i2c4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c4_pins_a>;
-	i2c-scl-rising-time-ns = <185>;
-	i2c-scl-falling-time-ns = <20>;
-	status = "okay";
-	/* spare dmas for other usage */
-	/delete-property/dmas;
-	/delete-property/dma-names;
-
-	rtc@32 {
-		compatible = "microcrystal,rv8803";
-		reg = <0x32>;
-	};
-
-	pmic: stpmic@33 {
-		compatible = "st,stpmic1";
-		reg = <0x33>;
-		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-		status = "okay";
-
-		regulators {
-			compatible = "st,stpmic1-regulators";
-			ldo1-supply = <&v3v3>;
-			ldo2-supply = <&v3v3>;
-			ldo3-supply = <&vdd_ddr>;
-			ldo5-supply = <&v3v3>;
-			ldo6-supply = <&v3v3>;
-			pwr_sw1-supply = <&bst_out>;
-			pwr_sw2-supply = <&bst_out>;
-
-			vddcore: buck1 {
-				regulator-name = "vddcore";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-always-on;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			vdd_ddr: buck2 {
-				regulator-name = "vdd_ddr";
-				regulator-min-microvolt = <1350000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-always-on;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			vdd: buck3 {
-				regulator-name = "vdd";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				st,mask-reset;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			v3v3: buck4 {
-				regulator-name = "v3v3";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				regulator-over-current-protection;
-				regulator-initial-mode = <0>;
-			};
-
-			vdda: ldo1 {
-				regulator-name = "vdda";
-				regulator-min-microvolt = <2900000>;
-				regulator-max-microvolt = <2900000>;
-				interrupts = <IT_CURLIM_LDO1 0>;
-			};
-
-			v2v8: ldo2 {
-				regulator-name = "v2v8";
-				regulator-min-microvolt = <2800000>;
-				regulator-max-microvolt = <2800000>;
-				interrupts = <IT_CURLIM_LDO2 0>;
-			};
-
-			vtt_ddr: ldo3 {
-				regulator-name = "vtt_ddr";
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <750000>;
-				regulator-always-on;
-				regulator-over-current-protection;
-			};
-
-			vdd_usb: ldo4 {
-				regulator-name = "vdd_usb";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				interrupts = <IT_CURLIM_LDO4 0>;
-			};
-
-			vdd_sd: ldo5 {
-				regulator-name = "vdd_sd";
-				regulator-min-microvolt = <2900000>;
-				regulator-max-microvolt = <2900000>;
-				interrupts = <IT_CURLIM_LDO5 0>;
-				regulator-boot-on;
-			};
-
-			v1v8: ldo6 {
-				regulator-name = "v1v8";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				interrupts = <IT_CURLIM_LDO6 0>;
-			};
-
-			vref_ddr: vref_ddr {
-				regulator-name = "vref_ddr";
-				regulator-always-on;
-				regulator-over-current-protection;
-			};
-
-			bst_out: boost {
-				regulator-name = "bst_out";
-				interrupts = <IT_OCP_BOOST 0>;
-			};
-
-			vbus_otg: pwr_sw1 {
-				regulator-name = "vbus_otg";
-				interrupts = <IT_OCP_OTG 0>;
-			};
-
-			vbus_sw: pwr_sw2 {
-				regulator-name = "vbus_sw";
-				interrupts = <IT_OCP_SWOUT 0>;
-				regulator-active-discharge;
-			};
-		};
-
-		onkey {
-			compatible = "st,stpmic1-onkey";
-			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 0>;
-			interrupt-names = "onkey-falling", "onkey-rising";
-			power-off-time-sec = <10>;
-			status = "okay";
-		};
-
-		watchdog {
-			compatible = "st,stpmic1-wdt";
-			status = "disabled";
-		};
-	};
-
-	touchscreen@49 {
-		compatible = "ti,tsc2004";
-		reg = <0x49>;
-		vio-supply = <&v3v3>;
-		interrupts-extended = <&gpioh 3 IRQ_TYPE_EDGE_FALLING>;
-	};
-
-	eeprom@50 {
-		compatible = "atmel,24c02";
-		reg = <0x50>;
-		pagesize = <16>;
-	};
-};
-
-&ipcc {
-	status = "okay";
-};
-
-&iwdg2 {
-	timeout-sec = <32>;
-	status = "okay";
-};
-
-&m4_rproc {
-	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
-			<&vdev0vring1>, <&vdev0buffer>;
-	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
-	mbox-names = "vq0", "vq1", "shutdown";
-	interrupt-parent = <&exti>;
-	interrupts = <68 1>;
-	status = "okay";
-};
-
-&pwr_regulators {
-	vdd-supply = <&vdd>;
-	vdd_3v3_usbfs-supply = <&vdd_usb>;
-};
-
-&qspi {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a &qspi_bk2_pins_a>;
-	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a &qspi_bk2_sleep_pins_a>;
-	reg = <0x58003000 0x1000>, <0x70000000 0x4000000>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-	status = "okay";
-
-	flash0: mx66l51235l@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-rx-bus-width = <4>;
-		spi-max-frequency = <108000000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-	};
-};
-
-&rng1 {
-	status = "okay";
-};
-
-&rtc {
-	status = "okay";
-};
-
-&sdmmc1 {
-	pinctrl-names = "default", "opendrain", "sleep";
-	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
-	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_a>;
-	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_a>;
-	broken-cd;
-	st,sig-dir;
-	st,neg-edge;
-	st,use-ckin;
-	bus-width = <4>;
-	vmmc-supply = <&vdd_sd>;
-	status = "okay";
-};
-
-&sdmmc2 {
-	pinctrl-names = "default", "opendrain", "sleep";
-	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
-	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
-	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
-	non-removable;
-	no-sd;
-	no-sdio;
-	st,neg-edge;
-	bus-width = <8>;
-	vmmc-supply = <&v3v3>;
-	vqmmc-supply = <&v3v3>;
-	mmc-ddr-3_3v;
-	status = "okay";
-};
-
-&sdmmc3 {
-	pinctrl-names = "default", "opendrain", "sleep";
-	pinctrl-0 = <&sdmmc3_b4_pins_a>;
-	pinctrl-1 = <&sdmmc3_b4_od_pins_a>;
-	pinctrl-2 = <&sdmmc3_b4_sleep_pins_a>;
-	broken-cd;
-	st,neg-edge;
-	bus-width = <4>;
-	vmmc-supply = <&v3v3>;
-	vqmmc-supply = <&v3v3>;
-	mmc-ddr-3_3v;
-	status = "okay";
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart4_pins_a>;
-	status = "okay";
-};
+#include "stm32mp15xx-dhcom-som.dtsi"
diff --git a/arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi b/arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi
new file mode 100644
index 000000000000..f5e71f2036ab
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xc-dhcom-pdk2.dtsi
@@ -0,0 +1,269 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) 2019 Marek Vasut <marex@denx.de>
+ */
+
+#include <dt-bindings/pwm/pwm.h>
+
+/ {
+	model = "STMicroelectronics STM32MP157C DHCOM Premium Developer Kit (2)";
+	compatible = "dh,stm32mp157c-dhcom-pdk2", "st,stm32mp157";
+
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
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
new file mode 100644
index 000000000000..ba905196fb54
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
@@ -0,0 +1,361 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2019-2020 Marek Vasut <marex@denx.de>
+ */
+
+#include "stm32mp15-pinctrl.dtsi"
+#include "stm32mp15xxaa-pinctrl.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/mfd/st,stpmic1.h>
+
+/ {
+	memory@c0000000 {
+		device_type = "memory";
+		reg = <0xC0000000 0x40000000>;
+	};
+
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
+};
+
+&adc {
+	vdd-supply = <&vdd>;
+	vdda-supply = <&vdda>;
+	vref-supply = <&vdda>;
+	status = "okay";
+
+	adc1: adc@0 {
+		st,min-sample-time-nsecs = <5000>;
+		st,adc-channels = <0>;
+		status = "okay";
+	};
+
+	adc2: adc@100 {
+		st,adc-channels = <1>;
+		st,min-sample-time-nsecs = <5000>;
+		status = "okay";
+	};
+};
+
+&dac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&dac_ch1_pins_a &dac_ch2_pins_a>;
+	vref-supply = <&vdda>;
+	status = "okay";
+
+	dac1: dac@1 {
+		status = "okay";
+	};
+	dac2: dac@2 {
+		status = "okay";
+	};
+};
+
+&dts {
+	status = "okay";
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4_pins_a>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+	/* spare dmas for other usage */
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	rtc@32 {
+		compatible = "microcrystal,rv8803";
+		reg = <0x32>;
+	};
+
+	pmic: stpmic@33 {
+		compatible = "st,stpmic1";
+		reg = <0x33>;
+		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		status = "okay";
+
+		regulators {
+			compatible = "st,stpmic1-regulators";
+			ldo1-supply = <&v3v3>;
+			ldo2-supply = <&v3v3>;
+			ldo3-supply = <&vdd_ddr>;
+			ldo5-supply = <&v3v3>;
+			ldo6-supply = <&v3v3>;
+			pwr_sw1-supply = <&bst_out>;
+			pwr_sw2-supply = <&bst_out>;
+
+			vddcore: buck1 {
+				regulator-name = "vddcore";
+				regulator-min-microvolt = <800000>;
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
+			vdda: ldo1 {
+				regulator-name = "vdda";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
+				interrupts = <IT_CURLIM_LDO1 0>;
+			};
+
+			v2v8: ldo2 {
+				regulator-name = "v2v8";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				interrupts = <IT_CURLIM_LDO2 0>;
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
+			vdd_sd: ldo5 {
+				regulator-name = "vdd_sd";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
+				interrupts = <IT_CURLIM_LDO5 0>;
+				regulator-boot-on;
+			};
+
+			v1v8: ldo6 {
+				regulator-name = "v1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				interrupts = <IT_CURLIM_LDO6 0>;
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
+			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 0>;
+			interrupt-names = "onkey-falling", "onkey-rising";
+			power-off-time-sec = <10>;
+			status = "okay";
+		};
+
+		watchdog {
+			compatible = "st,stpmic1-wdt";
+			status = "disabled";
+		};
+	};
+
+	touchscreen@49 {
+		compatible = "ti,tsc2004";
+		reg = <0x49>;
+		vio-supply = <&v3v3>;
+		interrupts-extended = <&gpioh 3 IRQ_TYPE_EDGE_FALLING>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c02";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
+};
+
+&ipcc {
+	status = "okay";
+};
+
+&iwdg2 {
+	timeout-sec = <32>;
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
+&pwr_regulators {
+	vdd-supply = <&vdd>;
+	vdd_3v3_usbfs-supply = <&vdd_usb>;
+};
+
+&qspi {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a &qspi_bk2_pins_a>;
+	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a &qspi_bk2_sleep_pins_a>;
+	reg = <0x58003000 0x1000>, <0x70000000 0x4000000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	flash0: mx66l51235l@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-rx-bus-width = <4>;
+		spi-max-frequency = <108000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
+&rng1 {
+	status = "okay";
+};
+
+&rtc {
+	status = "okay";
+};
+
+&sdmmc1 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_a>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_a>;
+	broken-cd;
+	st,sig-dir;
+	st,neg-edge;
+	st,use-ckin;
+	bus-width = <4>;
+	vmmc-supply = <&vdd_sd>;
+	status = "okay";
+};
+
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	st,neg-edge;
+	bus-width = <8>;
+	vmmc-supply = <&v3v3>;
+	vqmmc-supply = <&v3v3>;
+	mmc-ddr-3_3v;
+	status = "okay";
+};
+
+&sdmmc3 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc3_b4_pins_a>;
+	pinctrl-1 = <&sdmmc3_b4_od_pins_a>;
+	pinctrl-2 = <&sdmmc3_b4_sleep_pins_a>;
+	broken-cd;
+	st,neg-edge;
+	bus-width = <4>;
+	vmmc-supply = <&v3v3>;
+	vqmmc-supply = <&v3v3>;
+	mmc-ddr-3_3v;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_pins_a>;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
