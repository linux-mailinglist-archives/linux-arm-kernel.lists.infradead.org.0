Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D587456E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4/hG0aVI1IhKCeSI2UiHeoJK05EcX8sRu0oaY5p9L5c=; b=BahXZXfpWf3MIR
	x0a1m9BJzFtuYJKJ5gsAW+43H6c73dY5VR2JJUccAGvvSvSDVtseUtvb0+/sW3j2x0RmGc/QhqMWg
	qpeaZwAwPcxODnkn+d+geVA4bVII/YdCK3FwzwspPj9jZ7QEeICRQ4lkBIUzcpE4zXfmn8ov0eWvx
	QDqMd6d4YM05T/xL03HcEkaH8fHQrrZ09ILJiMNSPHv2b98fgPnFXe0FmwlrGFNaFxKQOjyeoMmT4
	pDqQcXTg8x7rT+RDl8shIXRHpHM/SYwcUicEgGC/tOjExE/UwCZecUH4P30NLniyk4k8M4FlxaiI7
	7BwmmFj15sLbCx7Q7mBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhBe-0007lW-LN; Fri, 14 Jun 2019 08:03:50 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhBN-0007kf-Rq
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:03:35 +0000
Received: by mail-pl1-x62a.google.com with SMTP id s24so680526plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 01:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6Dwoarg07buvoXDBogOPDr/1lMa/FxCfxF94USEO5EU=;
 b=MSjB8VBkeI9/g3SBJjYAP7aZlyNM+5szuiBETq0+ZePQFT8IWv7FqTdhiIC0XnXKVs
 WCZRES11iSwCVRqiaVGEvRNdpHqDiJaOSSA/Antui/+UmYGyci4C9RfkI0lh87kMr+ap
 X2ULLxjfqlVItx9BP6zTPBL7UIdplOiJdnu6PEXApewUV1Uvr/q+MO5eFOuj9CPg0ny7
 JRQ7nbhz7Bz2oTZJL/oOED6qJu+mOwwKsxjk3OGsUgbBlaZ2UcIsQi8MTTljyhLLJutZ
 TnIUWZbfH7rSAzEm4Kir75Ufq4AyeTjP5jU5+G5P0ylcnDLtEUzZRWW10nGdVuT+4DW6
 dYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6Dwoarg07buvoXDBogOPDr/1lMa/FxCfxF94USEO5EU=;
 b=Z5hiEDA/hpVCOJEnbHwFF/RPTk+/JKuWVM0+0cQQLFQLfL3nhvBcRs2jgpHBtK/NjD
 ZyXUYNL1Ts6jGgMhprg+JKSS561vn4kffr61Uyln7zC3xrWbuf2g+OPCRQOhjrRc0SOg
 IAcIzHglVmXggsAJUs6jzjdjVTU8e3BPGR/WuGw+V3fymfMno4YRGEraoZNwPi5mG0cn
 fO4Wg7CWV+5EVDH6qh8mi2shcDoh+jwW+BL/R2L5V/7K56hrRw+xPdcslEr5QK68NpgA
 M4mp59uIUGwzF0WxMvS/mQx6cG4//h+90Bw6RFscb3ukYBjPFubEWvPjRypPOxs8hTUy
 DwyA==
X-Gm-Message-State: APjAAAWGPA3GnaM8wtdPuxwBQKpOeDVsR3j0Rkvv0yAvavCEeHpewiYz
 4sKTxFAJU7euqJSveyLizTZOCBY7WQQ=
X-Google-Smtp-Source: APXvYqxAkhniTFU+H+COqDPon6A1GCEmBxDe1nX4uRTBYtuPOzr9N4p+tCibndQXjrXrMpz3/M5WeA==
X-Received: by 2002:a17:902:165:: with SMTP id
 92mr64931296plb.197.1560499412491; 
 Fri, 14 Jun 2019 01:03:32 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id c10sm1718237pjq.14.2019.06.14.01.03.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 01:03:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: Add ZII support for ZII i.MX7 RMU2 board
Date: Fri, 14 Jun 2019 01:03:16 -0700
Message-Id: <20190614080317.16850-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_010333_936398_D45CED00 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Liang Pan <Liang.Pan@zii.aero>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Bob Langer <Bob.Langer@zii.aero>, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for ZII's i.MX7 based Remote Modem Unit 2 (RMU2) board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Bob Langer <Bob.Langer@zii.aero>
Cc: Liang Pan <Liang.Pan@zii.aero>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/Makefile           |   1 +
 arch/arm/boot/dts/imx7d-zii-rmu2.dts | 358 +++++++++++++++++++++++++++
 2 files changed, 359 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-zii-rmu2.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 5559028b770e..516e2912236d 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -593,6 +593,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-sdb.dtb \
 	imx7d-sdb-reva.dtb \
 	imx7d-sdb-sht11.dtb \
+	imx7d-zii-rmu2.dtb \
 	imx7d-zii-rpu2.dtb \
 	imx7s-colibri-eval-v3.dtb \
 	imx7s-mba7.dtb \
diff --git a/arch/arm/boot/dts/imx7d-zii-rmu2.dts b/arch/arm/boot/dts/imx7d-zii-rmu2.dts
new file mode 100644
index 000000000000..10fdafe5e0e4
--- /dev/null
+++ b/arch/arm/boot/dts/imx7d-zii-rmu2.dts
@@ -0,0 +1,358 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Device tree file for ZII's RMU2 board
+ *
+ * RMU - Remote Modem Unit
+ *
+ * Copyright (C) 2019 Zodiac Inflight Innovations
+ */
+
+/dts-v1/;
+#include <dt-bindings/thermal/thermal.h>
+#include "imx7d.dtsi"
+
+/ {
+	model = "ZII RMU2 Board";
+	compatible = "zii,imx7d-rmu2", "fsl,imx7d";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pinctrl_leds_debug>;
+		pinctrl-names = "default";
+
+		debug {
+			label = "zii:green:debug1";
+			gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&cpu0 {
+	arm-supply = <&sw1a_reg>;
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio4 19 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	assigned-clocks = <&clks IMX7D_ENET1_TIME_ROOT_SRC>,
+			  <&clks IMX7D_ENET1_TIME_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <0>, <100000000>;
+	phy-mode = "rgmii";
+	phy-handle = <&fec1_phy>;
+	status = "okay";
+
+	mdio {
+		fec1_phy: phy@0 {
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_enet1_phy_reset>,
+				    <&pinctrl_enet1_phy_interrupt>;
+			reg = <0>;
+			interrupt-parent = <&gpio1>;
+			interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpio = <&gpio5 11 GPIO_ACTIVE_LOW>;
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
+	pmic: pmic@8 {
+		compatible = "fsl,pfuze3000";
+		reg = <0x08>;
+
+		regulators {
+			sw1a_reg: sw1a {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw1c_reg: sw1b {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1475000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3a_reg: sw3 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1650000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			swbst_reg: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+			};
+
+			snvs_reg: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen1_reg: vldo1 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen2_reg: vldo2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			vgen3_reg: vccsd {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen4_reg: v33 {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen5_reg: vldo3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen6_reg: vldo4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+		};
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+	};
+
+	eeprom@52 {
+		compatible = "atmel,24c04";
+		reg = <0x52>;
+	};
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clks IMX7D_UART2_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_OSC_24M_CLK>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	assigned-clocks = <&clks IMX7D_UART4_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	status = "okay";
+
+	rave-sp {
+		compatible = "zii,rave-sp-rdu2";
+		current-speed = <1000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		watchdog {
+			compatible = "zii,rave-sp-watchdog";
+		};
+
+		eeprom@a3 {
+			compatible = "zii,rave-sp-eeprom";
+			reg = <0xa3 0x4000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			zii,eeprom-name = "main-eeprom";
+		};
+	};
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	disable-over-current;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	bus-width = <4>;
+	no-1-8-v;
+	no-sdio;
+	keep-power-in-suspend;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	bus-width = <8>;
+	no-1-8-v;
+	non-removable;
+	no-sdio;
+	no-sd;
+	keep-power-in-suspend;
+	status = "okay";
+};
+
+&wdog1 {
+	status = "disabled";
+};
+
+&snvs_rtc {
+	status = "disabled";
+};
+
+&snvs_pwrkey {
+	status = "disabled";
+};
+
+&iomuxc {
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX7D_PAD_ECSPI1_SCLK__ECSPI1_SCLK	0x2
+			MX7D_PAD_ECSPI1_MOSI__ECSPI1_MOSI	0x2
+			MX7D_PAD_ECSPI1_MISO__ECSPI1_MISO	0x2
+			MX7D_PAD_ECSPI1_SS0__GPIO4_IO19         0x59
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX7D_PAD_SD2_CD_B__ENET1_MDIO				0x3
+			MX7D_PAD_SD2_WP__ENET1_MDC				0x3
+			MX7D_PAD_ENET1_RGMII_TXC__ENET1_RGMII_TXC		0x1
+			MX7D_PAD_ENET1_RGMII_TD0__ENET1_RGMII_TD0		0x1
+			MX7D_PAD_ENET1_RGMII_TD1__ENET1_RGMII_TD1		0x1
+			MX7D_PAD_ENET1_RGMII_TD2__ENET1_RGMII_TD2		0x1
+			MX7D_PAD_ENET1_RGMII_TD3__ENET1_RGMII_TD3		0x1
+			MX7D_PAD_ENET1_RGMII_TX_CTL__ENET1_RGMII_TX_CTL		0x1
+			MX7D_PAD_ENET1_RGMII_RXC__ENET1_RGMII_RXC		0x1
+			MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0		0x1
+			MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1		0x1
+			MX7D_PAD_ENET1_RGMII_RD2__ENET1_RGMII_RD2		0x1
+			MX7D_PAD_ENET1_RGMII_RD3__ENET1_RGMII_RD3		0x1
+			MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL		0x1
+		>;
+	};
+
+	pinctrl_enet1_phy_reset: enet1phyresetgrp {
+		fsl,pins = <
+			MX7D_PAD_SD2_RESET_B__GPIO5_IO11	0x14
+
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX7D_PAD_I2C1_SDA__I2C1_SDA		0x4000007f
+			MX7D_PAD_I2C1_SCL__I2C1_SCL		0x4000007f
+		>;
+	};
+
+	pinctrl_leds_debug: debuggrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA08__GPIO2_IO8		0x59
+		>;
+	};
+
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX7D_PAD_UART2_RX_DATA__UART2_DCE_RX	0x79
+			MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX	0x79
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX7D_PAD_SD2_DATA0__UART4_DCE_RX	0x79
+			MX7D_PAD_SD2_DATA1__UART4_DCE_TX	0x79
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX7D_PAD_SD1_CMD__SD1_CMD		0x59
+			MX7D_PAD_SD1_CLK__SD1_CLK		0x19
+			MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
+			MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
+			MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
+			MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
+			MX7D_PAD_SD3_CLK__SD3_CLK		0x19
+			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x59
+			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x59
+			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x59
+			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x59
+			MX7D_PAD_SD3_DATA4__SD3_DATA4		0x59
+			MX7D_PAD_SD3_DATA5__SD3_DATA5		0x59
+			MX7D_PAD_SD3_DATA6__SD3_DATA6		0x59
+			MX7D_PAD_SD3_DATA7__SD3_DATA7		0x59
+			MX7D_PAD_SD3_RESET_B__SD3_RESET_B	0x59
+		>;
+	};
+};
+
+&iomuxc_lpsr {
+	pinctrl_enet1_phy_interrupt: enet1phyinterruptgrp {
+		fsl,phy = <
+			MX7D_PAD_LPSR_GPIO1_IO02__GPIO1_IO2	0x08
+		>;
+	};
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
