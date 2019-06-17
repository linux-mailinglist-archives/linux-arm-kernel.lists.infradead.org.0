Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FD248727
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IchcV4bcc3Gy1HMKDXSk/1oujrXBMJECt04dtChwV5c=; b=rO3uJlpdFvq6ll
	tf6KwYj8JoRdIEEYGykC+WFpNaVc6MzoeSK0+B82rH0WQu4YXBRwoFBFr0K3rA3cWr6F2x3NIFNLJ
	21Z8CkhXpXPw90FCXhg6Br8VwG3G1EKuahZ1+U6LK/RQ696V6LEy8+17oAH64zpZEIPyD/teVyLie
	gc4IJ7o0OtsiK44uu3RngvXX+pntIdNuoB876sais5xCdv7omDiaD33hIQH8aq725rEMy8WPhOy7u
	uLdl1KeGxhnxJ+O6JwN0sv8aO+0Ww8YQ28KZlio8ye7DP7v6uEYcEa3JCr7X1shFmGpTJhIWL4JVM
	UwPq62opGuoYlNDIu1Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctb9-0003xy-Ds; Mon, 17 Jun 2019 15:31:07 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctas-0003wI-Fe
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:30:52 +0000
Received: by mail-pg1-x532.google.com with SMTP id n65so1560576pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 08:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O18JL/Mpv70x8m7+KNJ7e5WiGcMJUZtfLrO/2xJA8eU=;
 b=DGG0FFetLXT7Ryo0+0II5+TzgkmNqvGGeMly492MeB/u//9IQvPWrEmb3lt9mHo93O
 Wq362TABE/DZsPdFKKv7QdLQVpGvM9ZZKkfLevjZbJDaPdLpaiHLLBM/KyKgBHdCItqX
 +5rLXdf8hP20u6CyiOa+EqRgpkhkSE9qQ1Fbw4HQS4FdLCjN8HknI7jILTzZJiwZg2Ae
 1I7ctqLVSaE0PTlMCb+gUFuJW29Wzp1oc5giBp7cmNh4KtMYY3ooA2wc6x6dm6ueaQbI
 aGE3OQ47oD9WN3d0z7nd8vZhKH5ZXC8JxDal8dECCTM62dTZb3IH8oRvKWSEg2h6XbIP
 6RRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O18JL/Mpv70x8m7+KNJ7e5WiGcMJUZtfLrO/2xJA8eU=;
 b=nKWAumq+m8mwI2Z9fnm8qAk562+nb4mZJnKi9lCZFZcnuSLec3yZE/Bakbsq3YJXsc
 Ks/4JXnGB8zTHmRSENIhbuIr18aCPBVTJ4CgcPDkX3Qr3ANOuTXDHc1ls2f9wImNOb0t
 n8U0b45FfINDtPwCJfmZkJMn89iarNJEakFs9RjtoCHKqbn64ge56R2KKr/kACviOUFn
 lfCqV1iZ0o4CsH7lTAo6KaC2ireysPcgQaMCFRv5PSRhmvVSLdVUsaJlApbtpWqo/UYD
 ZHbe8xcOTndwhMplzTyPYCVxtOkRstmL5tRPHh0NysPPv7EAmuV9di9ThnMhccBege4f
 tIlg==
X-Gm-Message-State: APjAAAUJtivpZiByXxwhs7snUjy839aFeqBOvgOgvQsfR7JHcNwcTx4n
 T/Sot2V7e3oqbnCg+Lj1QFV1NXuUhgo=
X-Google-Smtp-Source: APXvYqwPfjh/r0myfrnPL3Izc2RXvaBgBweTf1QY2Sus6BKyI5+Q+zVeUVX5NPD0mXD9i1kMD+uvVw==
X-Received: by 2002:a63:c5:: with SMTP id 188mr24266189pga.108.1560785448670; 
 Mon, 17 Jun 2019 08:30:48 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id j13sm11426144pfh.13.2019.06.17.08.30.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 08:30:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] ARM: dts: Add ZII support for ZII i.MX7 RMU2 board
Date: Mon, 17 Jun 2019 08:30:24 -0700
Message-Id: <20190617153025.12120-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_083050_558000_183723EB 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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

Changes since [v1]:

    - Added missing #address-cells and #size-cells
    
    - Replaced reset-gpio -> reset-gpios


[v1] lore.kernel.org/r/20190614080317.16850-1-andrew.smirnov@gmail.com

 arch/arm/boot/dts/Makefile           |   1 +
 arch/arm/boot/dts/imx7d-zii-rmu2.dts | 361 +++++++++++++++++++++++++++
 2 files changed, 362 insertions(+)
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
index 000000000000..e60b3232a090
--- /dev/null
+++ b/arch/arm/boot/dts/imx7d-zii-rmu2.dts
@@ -0,0 +1,361 @@
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
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fec1_phy: phy@0 {
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_enet1_phy_reset>,
+				    <&pinctrl_enet1_phy_interrupt>;
+			reg = <0>;
+			interrupt-parent = <&gpio1>;
+			interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
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
