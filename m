Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9465CFF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MJFh3uvXsMI+3WsQlWbl0aCUt/SizA6XDd98evizrKE=; b=ejQ
	f8wNvjelS8jHJQ68qRhtGlFQcOv75GZhK92aqYbL72C3CeRGL7+PN2tifrbtnHx9OjCoOp7xbnMFX
	/2B2coXaIed96SepSdVgH+04+TI0PpgjBBHt1ensDgU2zd9VMyyVlvP18uqZn01Oam5I1yl1QF0H4
	ZRubq3xnnpqoRX0/+9/gq7u5mUlWsGDjte/PrTKjWZL+z8za+lyH5+LxqJntqFlKu+5FZu318TErz
	HUxT4CDnY9Qqn3akxFDCvGnmykvixGhTq3ht4iZPG61C5lzV4a+0bH0hX2ZRkhH5ioiOe6i5I8ukw
	e5XLjPFhiTJbgsNNGdCpiMEAc9DGrrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIRB-0002TZ-Ga; Tue, 02 Jul 2019 13:03:09 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIQx-0002SZ-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:02:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so17736909wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 06:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=myU+XZnl1dtXil8LJEfAOj5EYClom6cJqr/lwOnFqIE=;
 b=MBZRXec2/Gkkjiw2bk0zkltDzPnaWx80Fw9RvIvm6py+9VlacluQ+1xiCc9WSuuVeq
 YvEvWhfkt5pRaogbrRLuuou3HboNTnOo6BBq6ZHMlRh/zl+jO1nax61zRumNEeDVmW0r
 F7zwEDUPPj6CmA9kaotWV8TOWXc9jz2xUnW+GNjU4YcVl5PgljEwfBiUXOMDu/bVH7ke
 PLKdCA/tMM71rvKSzMkoVnhDUnjQ6pKpnK0yD9X8npNndC088GLfFbZtA/9VdBBwgqGR
 ceLISKbvEIE4bzMz62XI+RaVCCDo9Jqx0j1yjkTYdwg1CXAFYJLPfIVtqHFagkefsvEj
 mEnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=myU+XZnl1dtXil8LJEfAOj5EYClom6cJqr/lwOnFqIE=;
 b=hiqnFbMooq2yKVjrLJ/LKcqkTvDfWJAN+z7KeFphCYE4/66UgGy87JMQWxOgwGv+vj
 xDp/7jNx88r4QFZYiSk0sv8DQLlHnkAIltFrPjdMpHTkInAfXVIFeEp+hGD/FETyzvUL
 oFIKPvsHdbYr+f2GG2/mxhaWRcvlSwCesJQphbtLyRR/X64OKEs+qs0izge+iFNrHYVH
 AQo/rq3KgIB5gQ3Z2kXan9qHTt8/eu/wgwouWCZ2yXClJM4F1PR6tuQOFFTyCuHSBWY7
 vkJnQ1XeSxyNUy4kjf38EiMYvYUeBK13i/Er5rDBJhtt7GuQ+KQzFC69DBaYEFz/SnU/
 s7jA==
X-Gm-Message-State: APjAAAWq7RcDk23yjcv43jpB93pX6QaOXKFrRhg/0F7/rktJclCIkgYx
 sQuI/gEDUrxLRrm+YRAKAOM=
X-Google-Smtp-Source: APXvYqzCqvOJIGUDwgJNnhIe8WqgvZqGTactdqnVE9ck103tKfJ8bQsFD+tE+KUfctzM71zWesb0Hw==
X-Received: by 2002:adf:b605:: with SMTP id f5mr9854806wre.305.1562072571318; 
 Tue, 02 Jul 2019 06:02:51 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id e4sm1957685wme.16.2019.07.02.06.02.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 06:02:48 -0700 (PDT)
From: Andra Danciu <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM64: dts: freescale: add wand-pi-8m dtb
Date: Tue,  2 Jul 2019 16:02:39 +0300
Message-Id: <20190702130239.17864-1-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_060255_492000_E25EF69B 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andradanciu1997[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (andradanciu1997[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Hu <richard.hu@technexion.com>

Add dtb for WAND-PI-8M board.
---
 arch/arm64/boot/dts/freescale/Makefile       |   3 +-
 arch/arm64/boot/dts/freescale/wand-pi-8m.dts | 780 +++++++++++++++++++++++++++
 2 files changed, 782 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/wand-pi-8m.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 7a9dae6c43f5..308bbb1caa60 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -51,7 +51,8 @@ dtb-$(CONFIG_ARCH_FSL_IMX8MQ) += fsl-imx8mq-ddr3l-arm2.dtb \
 				 fsl-imx8mq-evk-dual-display.dtb \
 				 fsl-imx8mq-evk-ak4497.dtb \
 				 fsl-imx8mq-evk-audio-tdm.dtb \
-				 fsl-imx8mq-evk-drm.dtb
+				 fsl-imx8mq-evk-drm.dtb \
+				 wand-pi-8m.dtb
 
 always		:= $(dtb-y)
 subdir-y	:= $(dts-dirs)
diff --git a/arch/arm64/boot/dts/freescale/wand-pi-8m.dts b/arch/arm64/boot/dts/freescale/wand-pi-8m.dts
new file mode 100644
index 000000000000..cc1d55ee88e2
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/wand-pi-8m.dts
@@ -0,0 +1,780 @@
+/*
+ * Copyright 2018 Wandboard, Org.
+ * Copyright 2017 NXP
+ *
+ * Author: Richard Hu <hakahu@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+/dts-v1/;
+
+#include "fsl-imx8mq.dtsi"
+
+/ {
+	model = "WAND-PI-8M";
+	compatible = "wand,imx8mq-wand-pi", "fsl,imx8mq";
+
+	chosen {
+		bootargs = "console=ttymxc0,115200 earlycon=ec_imx6q,0x30860000,115200";
+		stdout-path = &uart1;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_usdhc2_vmmc: usdhc2_vmmc {
+			compatible = "regulator-fixed";
+			regulator-name = "VSD_3V3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+		};
+
+		reg_gpio_dvfs: regulator-gpio {
+			compatible = "regulator-gpio";
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_dvfs>;
+			regulator-min-microvolt = <900000>;
+			regulator-max-microvolt = <1000000>;
+			regulator-name = "gpio_dvfs";
+			regulator-type = "voltage";
+			gpios = <&gpio1 13 GPIO_ACTIVE_HIGH>;
+			states = <900000 0x1 1000000 0x0>;
+		};
+	};
+
+	modem_reset: modem-reset {
+		compatible = "gpio-reset";
+		reset-gpios = <&gpio3 5 GPIO_ACTIVE_LOW>;
+		reset-delay-us = <2000>;
+		reset-post-delay-ms = <40>;
+		#reset-cells = <0>;
+	};
+
+	wm8524: wm8524 {
+		compatible = "wlf,wm8524";
+		clocks = <&clk IMX8MQ_CLK_SAI2_ROOT>;
+		clock-names = "mclk";
+		wlf,mute-gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
+	};
+
+	sound-wm8524 {
+		compatible = "fsl,imx-audio-wm8524";
+		model = "wm8524-audio";
+		audio-cpu = <&sai2>;
+		audio-codec = <&wm8524>;
+		audio-routing =
+			"Line Out Jack", "LINEVOUTL",
+			"Line Out Jack", "LINEVOUTR";
+	};
+
+	sound-hdmi {
+		compatible = "fsl,imx-audio-cdnhdmi";
+		model = "imx-audio-hdmi";
+		audio-cpu = <&sai4>;
+		protocol = <1>;
+	};
+
+	sound-spdif {
+		compatible = "fsl,imx-audio-spdif";
+		model = "imx-spdif";
+		spdif-controller = <&spdif1>;
+		spdif-out;
+		spdif-in;
+	};
+
+	sound-hdmi-arc {
+		compatible = "fsl,imx-audio-spdif";
+		model = "imx-hdmi-arc";
+		spdif-controller = <&spdif2>;
+		spdif-in;
+	};
+};
+
+&clk {
+	assigned-clocks = <&clk IMX8MQ_AUDIO_PLL1>;
+	assigned-clock-rates = <786432000>;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+
+	wand-pi-8m {
+		pinctrl_csi1: csi1grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x19
+				MX8MQ_IOMUXC_GPIO1_IO06_GPIO1_IO6		0x19
+				MX8MQ_IOMUXC_GPIO1_IO15_CCMSRCGPCMIX_CLKO2	0x59
+			>;
+		};
+		pinctrl_csi2: csi2grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_GPIO1_IO05_GPIO1_IO5		0x19
+				MX8MQ_IOMUXC_GPIO1_IO06_GPIO1_IO6		0x19
+				MX8MQ_IOMUXC_GPIO1_IO15_CCMSRCGPCMIX_CLKO2	0x59
+			>;
+		};
+
+		pinctrl_fec1: fec1grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC		0x3
+				MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO	0x23
+				MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3	0x1f
+				MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2	0x1f
+				MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1	0x1f
+				MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0	0x1f
+				MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3	0x91
+				MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2	0x91
+				MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1	0x91
+				MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0	0x91
+				MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC	0x1f
+				MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC	0x91
+				MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
+				MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
+				MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9	0x19
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f
+				MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA			0x4000007f
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_I2C2_SCL_I2C2_SCL			0x4000007f
+				MX8MQ_IOMUXC_I2C2_SDA_I2C2_SDA			0x4000007f
+			>;
+		};
+
+
+		pinctrl_pcie0: pcie0grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_I2C4_SCL_GPIO5_IO20	0x16
+				MX8MQ_IOMUXC_UART4_TXD_GPIO5_IO29	0x16
+				MX8MQ_IOMUXC_UART4_RXD_GPIO5_IO28	0x16
+			>;
+		};
+
+		pinctrl_pcie1: pcie1grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_I2C4_SDA_GPIO5_IO21	0x16
+				MX8MQ_IOMUXC_ECSPI2_SCLK_GPIO5_IO10	0x16
+				MX8MQ_IOMUXC_ECSPI2_MISO_GPIO5_IO12	0x16
+			>;
+		};
+
+		pinctrl_dvfs: dvfsgrp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_GPIO1_IO13_GPIO1_IO13	0x16
+			>;
+		};
+
+		pinctrl_qspi: qspigrp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_NAND_ALE_QSPI_A_SCLK	0x82
+				MX8MQ_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B	0x82
+				MX8MQ_IOMUXC_NAND_DATA00_QSPI_A_DATA0	0x82
+				MX8MQ_IOMUXC_NAND_DATA01_QSPI_A_DATA1	0x82
+				MX8MQ_IOMUXC_NAND_DATA02_QSPI_A_DATA2	0x82
+				MX8MQ_IOMUXC_NAND_DATA03_QSPI_A_DATA3	0x82
+
+			>;
+		};
+
+		pinctrl_typec: typecgrp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_NAND_RE_B_GPIO3_IO15	0x16
+				MX8MQ_IOMUXC_NAND_CE2_B_GPIO3_IO3	0x17059
+			>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x49
+				MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX		0x49
+			>;
+		};
+
+		pinctrl_uart3: uart3grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_UART3_TXD_UART3_DCE_TX		0x49
+				MX8MQ_IOMUXC_UART3_RXD_UART3_DCE_RX		0x49
+				MX8MQ_IOMUXC_ECSPI1_MISO_UART3_DCE_CTS_B	0x49
+				MX8MQ_IOMUXC_ECSPI1_SS0_UART3_DCE_RTS_B		0x49
+				MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5			0x19
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
+				MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
+				MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
+				MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
+				MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
+				MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
+				MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
+				MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
+				MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
+				MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
+				MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x83
+				MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+			>;
+		};
+
+		pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+			fsl,pins = <
+				MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x85
+				MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc5
+				MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc5
+				MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc5
+				MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc5
+				MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc5
+				MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc5
+				MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc5
+				MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc5
+				MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc5
+				MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x85
+				MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+			>;
+		};
+
+		pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+			fsl,pins = <
+				MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x87
+				MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc7
+				MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc7
+				MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc7
+				MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc7
+				MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc7
+				MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc7
+				MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc7
+				MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc7
+				MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc7
+				MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x87
+				MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+			>;
+		};
+
+		pinctrl_usdhc2_gpio: usdhc2grpgpio {
+			fsl,pins = <
+				MX8MQ_IOMUXC_SD2_CD_B_GPIO2_IO12	0x41
+				MX8MQ_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x83
+				MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc3
+				MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc3
+				MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc3
+				MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc3
+				MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc3
+				MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
+			>;
+		};
+
+		pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+			fsl,pins = <
+				MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x85
+				MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc5
+				MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc5
+				MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc5
+				MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc5
+				MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc5
+				MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
+			>;
+		};
+
+		pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+			fsl,pins = <
+				MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x87
+				MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc7
+				MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc7
+				MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc7
+				MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc7
+				MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc7
+				MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
+			>;
+		};
+
+		pinctrl_sai2: sai2grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC	0xd6
+				MX8MQ_IOMUXC_SAI2_TXC_SAI2_TX_BCLK	0xd6
+				MX8MQ_IOMUXC_SAI2_MCLK_SAI2_MCLK	0xd6
+				MX8MQ_IOMUXC_SAI2_TXD0_SAI2_TX_DATA0	0xd6
+				MX8MQ_IOMUXC_GPIO1_IO08_GPIO1_IO8	0xd6
+			>;
+		};
+
+		pinctrl_spdif1: spdif1grp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_SPDIF_TX_SPDIF1_OUT	0xd6
+				MX8MQ_IOMUXC_SPDIF_RX_SPDIF1_IN		0xd6
+			>;
+		};
+
+		pinctrl_wdog: wdoggrp {
+			fsl,pins = <
+				MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B 0xc6
+			>;
+		};
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			at803x,led-act-blind-workaround;
+			at803x,eee-disabled;
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
+	pmic: pfuze100@08 {
+		compatible = "fsl,pfuze100";
+		reg = <0x08>;
+
+		regulators {
+			sw1a_reg: sw1ab {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+			};
+
+			sw1c_reg: sw1c {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			sw3a_reg: sw3ab {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			sw4_reg: sw4 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
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
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-always-on;
+			};
+
+			vgen1_reg: vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+
+			vgen2_reg: vgen2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen4_reg: vgen4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen5_reg: vgen5 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen6_reg: vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+
+	typec_ptn5100: ptn5110@50 {
+		compatible = "usb,tcpci";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_typec>;
+		reg = <0x50>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <3 8>;
+		ss-sel-gpios = <&gpio3 15 GPIO_ACTIVE_HIGH>;
+		src-pdos = <0x380190c8>;
+		snk-pdos = <0x380190c8 0x3802d0c8>;
+		max-snk-mv = <9000>;
+		max-snk-ma = <1000>;
+		op-snk-mw = <9000>;
+		port-type = "drp";
+		default-role = "sink";
+	};
+
+	ov5640_mipi: ov5640_mipi@3c {
+		compatible = "ovti,ov5640_mipi";
+		reg = <0x3c>;
+		status = "okay";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_csi1>;
+		clocks = <&clk IMX8MQ_CLK_CLKO2_DIV>;
+		clock-names = "csi_mclk";
+		assigned-clocks = <&clk IMX8MQ_CLK_CLKO2_SRC>,
+				  <&clk IMX8MQ_CLK_CLKO2_DIV>;
+		assigned-clock-parents = <&clk IMX8MQ_SYS2_PLL_200M>;
+		assigned-clock-rates = <0>, <20000000>;
+		csi_id = <0>;
+		pwn-gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+		rst-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+		mclk = <20000000>;
+		mclk_source = <0>;
+		port {
+			ov5640_mipi1_ep: endpoint {
+				remote-endpoint = <&mipi1_sensor_ep>;
+			};
+		};
+	};
+
+	ov5640_mipi2: ov5640_mipi2@3c {
+		compatible = "ovti,ov5640_mipi";
+		reg = <0x3c>;
+		status = "disabled";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_csi2>;
+		clocks = <&clk IMX8MQ_CLK_CLKO2_DIV>;
+		clock-names = "csi_mclk";
+		assigned-clocks = <&clk IMX8MQ_CLK_CLKO2_SRC>,
+				  <&clk IMX8MQ_CLK_CLKO2_DIV>;
+		assigned-clock-parents = <&clk IMX8MQ_SYS2_PLL_200M>;
+		assigned-clock-rates = <0>, <20000000>;
+		csi_id = <0>;
+		pwn-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+		rst-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+		mclk = <20000000>;
+		mclk_source = <0>;
+		port {
+			ov5640_mipi2_ep: endpoint {
+				remote-endpoint = <&mipi2_sensor_ep>;
+			};
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "disabled";
+};
+
+&pcie0{
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie0>;
+	clkreq-gpio = <&gpio5 20 GPIO_ACTIVE_LOW>;
+	disable-gpio = <&gpio5 29 GPIO_ACTIVE_LOW>;
+	reset-gpio = <&gpio5 28 GPIO_ACTIVE_LOW>;
+	ext_osc = <1>;
+	hard-wired = <1>;
+	status = "okay";
+};
+
+&pcie1{
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie1>;
+	clkreq-gpio = <&gpio5 21 GPIO_ACTIVE_LOW>;
+	disable-gpio = <&gpio5 10 GPIO_ACTIVE_LOW>;
+	reset-gpio = <&gpio5 12 GPIO_ACTIVE_LOW>;
+	ext_osc = <1>;
+	status = "okay";
+};
+
+&uart1 { /* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	assigned-clocks = <&clk IMX8MQ_CLK_UART1_SRC>;
+	assigned-clock-parents = <&clk IMX8MQ_CLK_25M>;
+	status = "okay";
+};
+
+&qspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi>;
+	status = "okay";
+
+	flash0: n25q256a@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "micron,n25q256a";
+		spi-max-frequency = <29000000>;
+		spi-nor,ddr-quad-read-dummy = <6>;
+	};
+};
+
+&uart3 { /* BT */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	assigned-clocks = <&clk IMX8MQ_CLK_UART3_SRC>;
+	assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_80M>;
+	fsl,uart-has-rtscts;
+	resets = <&modem_reset>;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	bus-width = <4>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb3_0 {
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	status = "okay";
+	extcon = <&typec_ptn5100>;
+	dr_mode = "otg";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&sai2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai2>;
+	assigned-clocks = <&clk IMX8MQ_CLK_SAI2_SRC>,
+			<&clk IMX8MQ_CLK_SAI2_DIV>;
+	assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <0>, <24576000>;
+	status = "okay";
+};
+
+&sai4 {
+	assigned-clocks = <&clk IMX8MQ_CLK_SAI4_SRC>,
+			<&clk IMX8MQ_CLK_SAI4_DIV>;
+	assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <0>, <24576000>;
+	status = "okay";
+};
+
+&spdif1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spdif1>;
+	assigned-clocks = <&clk IMX8MQ_CLK_SPDIF1_SRC>,
+			<&clk IMX8MQ_CLK_SPDIF1_DIV>;
+	assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <0>, <24576000>;
+	status = "okay";
+};
+
+&spdif2 {
+	assigned-clocks = <&clk IMX8MQ_CLK_SPDIF2_SRC>,
+			<&clk IMX8MQ_CLK_SPDIF2_DIV>;
+	assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <0>, <24576000>;
+	status = "okay";
+};
+
+&gpu_pd {
+	power-supply = <&sw1a_reg>;
+};
+
+&vpu_pd {
+	power-supply = <&sw1c_reg>;
+};
+
+&gpu {
+	status = "okay";
+};
+
+&vpu {
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&mu {
+	status = "okay";
+};
+
+&rpmsg{
+	/*
+	 * 64K for one rpmsg instance:
+	 * --0xb8000000~0xb800ffff: pingpong
+	 */
+	vdev-nums = <1>;
+	reg = <0x0 0xb8000000 0x0 0x10000>;
+	status = "okay";
+};
+
+&A53_0 {
+	operating-points = <
+		/* kHz    uV */
+		1500000 1000000
+		1300000 1000000
+		1000000 900000
+		800000  900000
+	>;
+	dc-supply = <&reg_gpio_dvfs>;
+};
+
+&dcss {
+	status = "okay";
+
+	disp-dev = "hdmi_disp";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_cec {
+	status = "okay";
+};
+
+&csi1_bridge {
+	fsl,mipi-mode;
+	fsl,two-8bit-sensor-mode;
+	status = "okay";
+
+	port {
+		csi1_ep: endpoint {
+			remote-endpoint = <&csi1_mipi_ep>;
+		};
+	};
+};
+
+&csi2_bridge {
+	fsl,mipi-mode;
+	fsl,two-8bit-sensor-mode;
+	status = "disabled";
+
+	port {
+		csi2_ep: endpoint {
+			remote-endpoint = <&csi2_mipi_ep>;
+		};
+	};
+};
+
+&mipi_csi_1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+	port {
+		mipi1_sensor_ep: endpoint1 {
+			remote-endpoint = <&ov5640_mipi1_ep>;
+			data-lanes = <1 2>;
+		};
+
+		csi1_mipi_ep: endpoint2 {
+			remote-endpoint = <&csi1_ep>;
+		};
+	};
+};
+
+&mipi_csi_2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "disabled";
+	port {
+		mipi2_sensor_ep: endpoint1 {
+			remote-endpoint = <&ov5640_mipi2_ep>;
+			data-lanes = <1 2>;
+		};
+
+		csi2_mipi_ep: endpoint2 {
+			remote-endpoint = <&csi2_ep>;
+		};
+	};
+};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
