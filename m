Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8419521445
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8DMuY/tbfPtkZbLiG/xF0CgZ0yW+0qjHO8VWxTw5i8Q=; b=ka7bPNfiE7LR/GOdJql4H+A7Q5
	WnV7ZcOwmk3HwZmlyqNoqCuiiHNYtvpCTHWToTjvVbZj0wdETKmqmb1Owv9deC2vx80EEBrELLYhS
	8RvBKuFrSNdGCL6xJuAisb9OOO+wW+7dI7ryeeB6pcBE9dvJtGQ7YZeB6OONbXHoBa2utFGh0Qr1U
	2f/a53dMEV2/91z0YGckDsoU8SL5ifxXWvEIsqkVSSFV7F6sh9cAr12w5yOyBbLY6Y4H/6F7bXwyE
	RUuGzOVMetwBM+B9dh1nAOvz9+lBEGNR8XXKZbZusmProYw161LCTD2UdHgQNDD/y+eBfDs6cwZ+Z
	oIOmCeKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXJy-00085F-EP; Fri, 17 May 2019 07:30:26 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXJI-0006rB-La
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:29:56 +0000
Received: by mail-wm1-x335.google.com with SMTP id 15so1655981wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 00:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8pnOrpTtP59VOOEqLVj4XhZ3E/tOyT0P7lE9asknfqE=;
 b=bkumZFdykMzo/Gfl2l27V8ssPo5JD4lLPRkVsgUS07erxRPsaeHVzECQ+T3RGCc35t
 j6/e9LYtp1Twj/QUg3E9neK9hmpgBOP941rXgn9Jtr2jeB94QejMmUXV5ysU3vrZ2Hza
 7UgQR/P91T3rSo03wlPOwEVJU/7iSVweRPwSK8H7OeO1PCrTlcobAEPSF5PFuGHVNxV2
 x7rRmIhNWBiIjuOPPh72OHESri25QhCCnusOjUjogoWdJpdEtnvVaN9qnuqeP9CZG0NX
 ljSFM7MxS4MlItY+Th6kHhK1pEpjrlqEeGJSIVwjUE/YnnuQvSujYIfdtyow0UUpmUP1
 tIKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8pnOrpTtP59VOOEqLVj4XhZ3E/tOyT0P7lE9asknfqE=;
 b=PR0BhfNgStlHBhlhY5rp3lzSdwBoOMxH4QDrrpKlr6tooGuy6AKdS3q3P2A7zikOD3
 WYS8WMJG0Ren2J3sjWq9lVGjS3OhXNO56seoxRt2BBoiM82OsXS1HH4K6kS+AsZVz9Xz
 1DDwsv/TQHjLKjzTvHrZwcdPfoLiqFFmRiarUsFxt54b7W0QONqPpc89LINgSStY2c0+
 yV2X3GrjvibtFq8xEWotiJo6BJMHM3tG0vr2SnLsowqha8nu4mqfQ48LONZUeHrT6XKW
 /mI7241I+o6RVf3YydxiUNBm8B1IFcjZD3l3NqLc094kASY8+Lv4UlBV0RwHhE3b2MYS
 Fq1w==
X-Gm-Message-State: APjAAAUduXZl2LFVFvDMD7K7AbLdJeb1MTFtGc4iOQ9oyKVg8M2u1Pym
 x4dJEnopLdFGB2uA8bd/I69h1xY3S2I=
X-Google-Smtp-Source: APXvYqyzzY1wLGqwkPhE4uF7eHZMau2mfOJPV2dO3wYJr9DYTqIGSxg8bjiL+sI8DPJT+o8EldWC9w==
X-Received: by 2002:a1c:3:: with SMTP id 3mr22145926wma.44.1558078181154;
 Fri, 17 May 2019 00:29:41 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id 17sm9650169wrk.91.2019.05.17.00.29.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 00:29:40 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: add DTS for imx8qm-rom7720-a1 board
Date: Fri, 17 May 2019 09:18:13 +0200
Message-Id: <20190517071813.26674-5-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517071813.26674-1-oliver.graute@gmail.com>
References: <20190517071813.26674-1-oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_002945_061300_891D0235 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 oliver.graute@gmail.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 Oliver Graute <oliver.graute@kococonnector.com>, l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Oliver Graute <oliver.graute@kococonnector.com>

add DTS file for a Advantech iMX8QM Qseven Board

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |    1 +
 .../boot/dts/freescale/imx8qm-rom7720-a1.dts  | 1111 +++++++++++++++++
 2 files changed, 1112 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 0bd122f60549..a7427be25e5d 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -25,3 +25,4 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8qm-rom7720-a1.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
new file mode 100644
index 000000000000..b17fb56b9ffa
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
@@ -0,0 +1,1111 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/dts-v1/;
+
+#include "imx8qm.dtsi"
+
+/ {
+	model = "Advantech iMX8QM Qseven series";
+	compatible = "fsl,imx8qm";
+
+	board {
+		compatible = "proc-board";
+		board-type = "ROM-7720_A1";
+		board-cpu  = "iMX8QM";
+	};
+
+	chosen {
+		bootargs = "console=ttyLP0,115200 earlycon=lpuart32,0x5a060000,115200";
+		stdout-path = &lpuart0;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+		user {
+			label = "heartbeat";
+			gpios = <&gpio2 15 0>;
+			default-state = "on";
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_audio: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+			regulator-name = "cs42888_supply";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+
+		reg_2p5v: 2p5v {
+			compatible = "regulator-fixed";
+			regulator-name = "2P5V";
+			regulator-min-microvolt = <2500000>;
+			regulator-max-microvolt = <2500000>;
+			regulator-always-on;
+		};
+
+		reg_3p3v: 3p3v {
+			compatible = "regulator-fixed";
+			regulator-name = "3P3V";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+
+		reg_can_en: regulator-can-gen {
+			compatible = "regulator-fixed";
+			regulator-name = "can-en";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+
+		reg_can_stby: regulator-can-stby {
+			compatible = "regulator-fixed";
+			regulator-name = "can-stby";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+			vin-supply = <&reg_can_en>;
+		};
+
+		reg_usdhc2_vmmc: usdhc2_vmmc {
+			compatible = "regulator-fixed";
+			regulator-name = "sw-3p3-sd1";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio4 7 GPIO_ACTIVE_HIGH>;
+			off-on-delay = <3000>;
+			enable-active-high;
+		};
+
+		reg_usdhc3_vmmc: usdhc3_vmmc {
+			compatible = "regulator-fixed";
+			regulator-name = "sw-3p3-sd2";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio4 9 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+		};
+	};
+
+	lvds_backlight0: lvds_backlight@0 {
+		compatible = "pwm-backlight";
+		pwms = <&lvds0_pwm 0 100000 0>;
+
+		brightness-levels = < 0  1  2  3  4  5  6  7  8  9
+				     10 11 12 13 14 15 16 17 18 19
+				     20 21 22 23 24 25 26 27 28 29
+				     30 31 32 33 34 35 36 37 38 39
+				     40 41 42 43 44 45 46 47 48 49
+				     50 51 52 53 54 55 56 57 58 59
+				     60 61 62 63 64 65 66 67 68 69
+				     70 71 72 73 74 75 76 77 78 79
+				     80 81 82 83 84 85 86 87 88 89
+				     90 91 92 93 94 95 96 97 98 99
+				    100>;
+		default-brightness-level = <100>;
+	};
+
+};
+
+&asrc0 {
+	assigned-clocks = <&clk IMX8QM_AUD_PLL0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_PLL_CLK0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_REC_CLK0_DIV>;
+	assigned-clock-rates = <786432000>, <49152000>, <24576000>;
+	fsl,asrc-rate  = <48000>;
+	status = "okay";
+};
+
+&asrc1 {
+	assigned-clocks = <&clk IMX8QM_AUD_PLL0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_PLL_CLK0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_REC_CLK0_DIV>;
+	assigned-clock-rates = <786432000>, <49152000>, <24576000>;
+	fsl,asrc-rate = <48000>;
+	status = "okay";
+};
+
+&esai0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esai0>;
+	assigned-clocks = <&clk IMX8QM_ACM_ESAI0_MCLK_SEL>,
+			<&clk IMX8QM_AUD_PLL0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_PLL_CLK0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_REC_CLK0_DIV>,
+			<&clk IMX8QM_AUD_ESAI_0_EXTAL_IPG>;
+	assigned-clock-parents = <&clk IMX8QM_AUD_ACM_AUD_PLL_CLK0_CLK>;
+	assigned-clock-rates = <0>, <786432000>, <49152000>, <24576000>, <49152000>;
+	status = "okay";
+};
+
+&sai_hdmi_tx {
+	assigned-clocks =<&clk IMX8QM_ACM_HDMI_TX_SAI0_MCLK_SEL>,
+			<&clk IMX8QM_AUD_PLL0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_PLL_CLK0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_REC_CLK0_DIV>,
+			<&clk IMX8QM_AUD_SAI_HDMITX0_MCLK>;
+	assigned-clock-parents = <&clk IMX8QM_AUD_ACM_AUD_PLL_CLK0_CLK>;
+	assigned-clock-rates = <0>, <786432000>, <49152000>, <24576000>, <49152000>;
+	fsl,sai-asynchronous;
+	status = "okay";
+};
+
+&sai1 {
+	assigned-clocks = <&clk IMX8QM_AUD_PLL0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_PLL_CLK0_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_REC_CLK0_DIV>,
+			<&clk IMX8QM_AUD_SAI_1_MCLK>;
+	assigned-clock-rates = <786432000>, <49152000>, <12288000>, <49152000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai1>;
+	status = "okay";
+};
+
+&sai6 {
+	assigned-clocks = <&clk IMX8QM_ACM_SAI6_MCLK_SEL>,
+			<&clk IMX8QM_AUD_PLL1_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_PLL_CLK1_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_REC_CLK1_DIV>,
+			<&clk IMX8QM_AUD_SAI_6_MCLK>;
+	assigned-clock-parents = <&clk IMX8QM_AUD_ACM_AUD_PLL_CLK1_CLK>;
+	assigned-clock-rates = <0>, <786432000>, <98304000>, <24576000>, <98304000>;
+	fsl,sai-asynchronous;
+	fsl,txm-rxs;
+	status = "okay";
+};
+
+&sai7 {
+	assigned-clocks = <&clk IMX8QM_ACM_SAI7_MCLK_SEL>,
+			<&clk IMX8QM_AUD_PLL1_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_PLL_CLK1_DIV>,
+			<&clk IMX8QM_AUD_ACM_AUD_REC_CLK1_DIV>,
+			<&clk IMX8QM_AUD_SAI_7_MCLK>;
+	assigned-clock-parents = <&clk IMX8QM_AUD_ACM_AUD_PLL_CLK1_CLK>;
+	assigned-clock-rates = <0>, <786432000>, <98304000>, <24576000>, <98304000>;
+	fsl,sai-asynchronous;
+	fsl,txm-rxs;
+	status = "okay";
+};
+
+&iomuxc {
+	imx8qm-arm2 {
+
+		pinctrl_esai0: esai0grp {
+			fsl,pins = <
+				IMX8QM_ESAI0_FSR_AUD_ESAI0_FSR		0xc6000040
+				IMX8QM_ESAI0_FST_AUD_ESAI0_FST		0xc6000040
+				IMX8QM_ESAI0_SCKR_AUD_ESAI0_SCKR	0xc6000040
+				IMX8QM_ESAI0_SCKT_AUD_ESAI0_SCKT	0xc6000040
+				IMX8QM_ESAI0_TX0_AUD_ESAI0_TX0		0xc6000040
+				IMX8QM_ESAI0_TX1_AUD_ESAI0_TX1		0xc6000040
+				IMX8QM_ESAI0_TX2_RX3_AUD_ESAI0_TX2_RX3	0xc6000040
+				IMX8QM_ESAI0_TX3_RX2_AUD_ESAI0_TX3_RX2	0xc6000040
+				IMX8QM_ESAI0_TX4_RX1_AUD_ESAI0_TX4_RX1	0xc6000040
+				IMX8QM_ESAI0_TX5_RX0_AUD_ESAI0_TX5_RX0	0xc6000040
+				IMX8QM_MCLK_OUT0_AUD_ACM_MCLK_OUT0	0xc6000040
+			>;
+		};
+
+		pinctrl_fec1: fec1grp {
+			fsl,pins = <
+				IMX8QM_COMP_CTL_GPIO_1V8_3V3_ENET_ENETB_PAD	0x000014a0
+				IMX8QM_ENET0_MDC_CONN_ENET0_MDC			0x06000020
+				IMX8QM_ENET0_MDIO_CONN_ENET0_MDIO		0x06000020
+				IMX8QM_ENET0_RGMII_TX_CTL_CONN_ENET0_RGMII_TX_CTL	0x00000060
+				IMX8QM_ENET0_RGMII_TXC_CONN_ENET0_RGMII_TXC	0x00000060
+				IMX8QM_ENET0_RGMII_TXD0_CONN_ENET0_RGMII_TXD0	0x00000060
+				IMX8QM_ENET0_RGMII_TXD1_CONN_ENET0_RGMII_TXD1	0x00000060
+				IMX8QM_ENET0_RGMII_TXD2_CONN_ENET0_RGMII_TXD2	0x00000060
+				IMX8QM_ENET0_RGMII_TXD3_CONN_ENET0_RGMII_TXD3	0x00000060
+				IMX8QM_ENET0_RGMII_RXC_CONN_ENET0_RGMII_RXC	0x00000060
+				IMX8QM_ENET0_RGMII_RX_CTL_CONN_ENET0_RGMII_RX_CTL	0x00000060
+				IMX8QM_ENET0_RGMII_RXD0_CONN_ENET0_RGMII_RXD0	0x00000060
+				IMX8QM_ENET0_RGMII_RXD1_CONN_ENET0_RGMII_RXD1	0x00000060
+				IMX8QM_ENET0_RGMII_RXD2_CONN_ENET0_RGMII_RXD2	0x00000060
+				IMX8QM_ENET0_RGMII_RXD3_CONN_ENET0_RGMII_RXD3	0x00000060
+			>;
+		};
+
+		pinctrl_fec2: fec2grp {
+			fsl,pins = <
+				IMX8QM_COMP_CTL_GPIO_1V8_3V3_ENET_ENETA_PAD	0x000014a0
+				IMX8QM_ENET1_MDC_CONN_ENET1_MDC			0x06000020
+				IMX8QM_ENET1_MDIO_CONN_ENET1_MDIO		0x06000020
+				IMX8QM_ENET1_RGMII_TX_CTL_CONN_ENET1_RGMII_TX_CTL	0x00000060
+				IMX8QM_ENET1_RGMII_TXC_CONN_ENET1_RGMII_TXC	0x00000060
+				IMX8QM_ENET1_RGMII_TXD0_CONN_ENET1_RGMII_TXD0	0x00000060
+				IMX8QM_ENET1_RGMII_TXD1_CONN_ENET1_RGMII_TXD1	0x00000060
+				IMX8QM_ENET1_RGMII_TXD2_CONN_ENET1_RGMII_TXD2	0x00000060
+				IMX8QM_ENET1_RGMII_TXD3_CONN_ENET1_RGMII_TXD3	0x00000060
+				IMX8QM_ENET1_RGMII_RXC_CONN_ENET1_RGMII_RXC	0x00000060
+				IMX8QM_ENET1_RGMII_RX_CTL_CONN_ENET1_RGMII_RX_CTL	0x00000060
+				IMX8QM_ENET1_RGMII_RXD0_CONN_ENET1_RGMII_RXD0	0x00000060
+				IMX8QM_ENET1_RGMII_RXD1_CONN_ENET1_RGMII_RXD1	0x00000060
+				IMX8QM_ENET1_RGMII_RXD2_CONN_ENET1_RGMII_RXD2	0x00000060
+				IMX8QM_ENET1_RGMII_RXD3_CONN_ENET1_RGMII_RXD3	0x00000060
+			>;
+		};
+
+		pinctrl_lvds0_lpi2c1: lvds0lpi2c1grp {
+			fsl,pins = <
+				IMX8QM_LVDS0_I2C1_SCL_LVDS0_I2C1_SCL	0xc600004c
+				IMX8QM_LVDS0_I2C1_SDA_LVDS0_I2C1_SDA	0xc600004c
+			>;
+		};
+
+		pinctrl_lvds1_lpi2c1: lvds1lpi2c1grp {
+			fsl,pins = <
+				IMX8QM_LVDS1_I2C1_SCL_LVDS1_I2C1_SCL	0xc600004c
+				IMX8QM_LVDS1_I2C1_SDA_LVDS1_I2C1_SDA	0xc600004c
+			>;
+		};
+
+		pinctrl_hdmi_lpi2c0: hdmilpi2c0grp {
+			fsl,pins = <
+				IMX8QM_HDMI_TX0_TS_SCL_HDMI_TX0_I2C0_SCL  0xc600004c
+				IMX8QM_HDMI_TX0_TS_SDA_HDMI_TX0_I2C0_SDA  0xc600004c
+			>;
+		};
+
+		pinctrl_mipi0_lpi2c0: mipi0_lpi2c0grp {
+			fsl,pins = <
+				IMX8QM_MIPI_DSI0_I2C0_SCL_MIPI_DSI0_I2C0_SCL	0xc600004c
+				IMX8QM_MIPI_DSI0_I2C0_SDA_MIPI_DSI0_I2C0_SDA	0xc600004c
+			>;
+		};
+
+		pinctrl_mipi1_lpi2c0: mipi1_lpi2c0grp {
+			fsl,pins = <
+				IMX8QM_MIPI_DSI1_I2C0_SCL_MIPI_DSI1_I2C0_SCL	0xc600004c
+				IMX8QM_MIPI_DSI1_I2C0_SDA_MIPI_DSI1_I2C0_SDA	0xc600004c
+			>;
+		};
+
+		pinctrl_mipi_dsi_0_1_en: mipi_dsi_0_1_en {
+			fsl,pins = <
+				IMX8QM_LVDS0_I2C0_SDA_LSIO_GPIO1_IO07		0x00000021
+			>;
+		};
+
+		pinctrl_lpi2c0: lpi2c0grp {
+			fsl,pins = <
+				IMX8QM_HDMI_TX0_TS_SCL_DMA_I2C0_SCL   0xc600004c
+				IMX8QM_HDMI_TX0_TS_SDA_DMA_I2C0_SDA   0xc600004c
+			>;
+		};
+
+		pinctrl_csi0_lpi2c0: csi0lpi2c0grp {
+			fsl,pins = <
+				IMX8QM_MIPI_CSI0_I2C0_SCL_MIPI_CSI0_I2C0_SCL  0xc2000020
+				IMX8QM_MIPI_CSI0_I2C0_SDA_MIPI_CSI0_I2C0_SDA  0xc2000020
+			>;
+		};
+
+		pinctrl_csi1_lpi2c0: csi1lpi2c0grp {
+			fsl,pins = <
+				IMX8QM_MIPI_CSI1_I2C0_SCL_MIPI_CSI1_I2C0_SCL  0xc2000020
+				IMX8QM_MIPI_CSI1_I2C0_SDA_MIPI_CSI1_I2C0_SDA  0xc2000020
+			>;
+		};
+
+		pinctrl_lpi2c1: lpi2c1grp {
+			fsl,pins = <
+				IMX8QM_GPT0_CLK_DMA_I2C1_SCL              0xc600004c
+				IMX8QM_GPT0_CAPTURE_DMA_I2C1_SDA          0xc600004c
+			>;
+		};
+
+		pinctrl_lpi2c2: lpi2c2grp {
+			fsl,pins = <
+				IMX8QM_GPT1_CLK_DMA_I2C2_SCL              0xc600004c
+				IMX8QM_GPT1_CAPTURE_DMA_I2C2_SDA          0xc600004c
+			>;
+		};
+
+		pinctrl_lpuart0: lpuart0grp {
+			fsl,pins = <
+				IMX8QM_UART0_RX_DMA_UART0_RX		0x06000020
+				IMX8QM_UART0_TX_DMA_UART0_TX		0x06000020
+			>;
+		};
+
+		pinctrl_lpuart1: lpuart1grp {
+			fsl,pins = <
+				IMX8QM_UART1_RX_DMA_UART1_RX		0x06000020
+				IMX8QM_UART1_TX_DMA_UART1_TX		0x06000020
+			>;
+		};
+
+		pinctrl_lpuart3: lpuart3grp {
+			fsl,pins = <
+				IMX8QM_M41_GPIO0_00_DMA_UART3_RX		0x06000020
+				IMX8QM_M41_GPIO0_01_DMA_UART3_TX		0x06000020
+			>;
+		};
+
+		pinctrl_mlb: mlbgrp {
+			fsl,pins = <
+				IMX8QM_MLB_SIG_CONN_MLB_SIG               0x21
+				IMX8QM_MLB_CLK_CONN_MLB_CLK               0x21
+				IMX8QM_MLB_DATA_CONN_MLB_DATA             0x21
+			>;
+		};
+
+		pinctrl_isl29023: isl29023grp {
+			fsl,pins = <
+				IMX8QM_ADC_IN2_LSIO_GPIO3_IO20		0x00000021
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000041
+				IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000021
+				IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000021
+				IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000021
+				IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000021
+				IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000021
+				IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000021
+				IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000021
+				IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000021
+				IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000021
+				IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000041
+				IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+			fsl,pins = <
+				IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000040
+				IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000020
+				IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000020
+				IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000020
+				IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000020
+				IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000020
+				IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000020
+				IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000020
+				IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000020
+				IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000020
+				IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000040
+				IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+			fsl,pins = <
+				IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000040
+				IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000020
+				IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000020
+				IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000020
+				IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000020
+				IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000020
+				IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000020
+				IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000020
+				IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000020
+				IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000020
+				IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000040
+				IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc2_gpio: usdhc2grpgpio {
+			fsl,pins = <
+				IMX8QM_USDHC1_DATA6_LSIO_GPIO5_IO21	0x00000021
+				IMX8QM_USDHC1_DATA7_LSIO_GPIO5_IO22	0x00000021
+				IMX8QM_USDHC1_RESET_B_LSIO_GPIO4_IO07	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000041
+				IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000021
+				IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000021
+				IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000021
+				IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000021
+				IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000021
+				IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+			fsl,pins = <
+				IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000040
+				IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000020
+				IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000020
+				IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000020
+				IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000020
+				IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000020
+				IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+			fsl,pins = <
+				IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000040
+				IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000020
+				IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000020
+				IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000020
+				IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000020
+				IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000020
+				IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <
+				IMX8QM_USDHC2_CLK_CONN_USDHC2_CLK	0x06000041
+				IMX8QM_USDHC2_CMD_CONN_USDHC2_CMD	0x00000021
+				IMX8QM_USDHC2_DATA0_CONN_USDHC2_DATA0	0x00000021
+				IMX8QM_USDHC2_DATA1_CONN_USDHC2_DATA1	0x00000021
+				IMX8QM_USDHC2_DATA2_CONN_USDHC2_DATA2	0x00000021
+				IMX8QM_USDHC2_DATA3_CONN_USDHC2_DATA3	0x00000021
+				IMX8QM_USDHC2_VSELECT_CONN_USDHC2_VSELECT	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc3_gpio: usdhc3grpgpio {
+			fsl,pins = <
+				IMX8QM_USDHC2_WP_LSIO_GPIO4_IO11	0x00000021
+				IMX8QM_USDHC2_CD_B_LSIO_GPIO4_IO12	0x00000021
+				IMX8QM_USDHC2_RESET_B_LSIO_GPIO4_IO09	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
+			fsl,pins = <
+				IMX8QM_USDHC2_CLK_CONN_USDHC2_CLK	0x06000040
+				IMX8QM_USDHC2_CMD_CONN_USDHC2_CMD	0x00000020
+				IMX8QM_USDHC2_DATA0_CONN_USDHC2_DATA0	0x00000020
+				IMX8QM_USDHC2_DATA1_CONN_USDHC2_DATA1	0x00000020
+				IMX8QM_USDHC2_DATA2_CONN_USDHC2_DATA2	0x00000020
+				IMX8QM_USDHC2_DATA3_CONN_USDHC2_DATA3	0x00000020
+				IMX8QM_USDHC2_VSELECT_CONN_USDHC2_VSELECT	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
+			fsl,pins = <
+				IMX8QM_USDHC2_CLK_CONN_USDHC2_CLK	0x06000040
+				IMX8QM_USDHC2_CMD_CONN_USDHC2_CMD	0x00000020
+				IMX8QM_USDHC2_DATA0_CONN_USDHC2_DATA0	0x00000020
+				IMX8QM_USDHC2_DATA1_CONN_USDHC2_DATA1	0x00000020
+				IMX8QM_USDHC2_DATA2_CONN_USDHC2_DATA2	0x00000020
+				IMX8QM_USDHC2_DATA3_CONN_USDHC2_DATA3	0x00000020
+				IMX8QM_USDHC2_VSELECT_CONN_USDHC2_VSELECT	0x00000020
+			>;
+		};
+
+		pinctrl_flexcan1: flexcan0grp {
+			fsl,pins = <
+				IMX8QM_FLEXCAN0_TX_DMA_FLEXCAN0_TX	0x21
+				IMX8QM_FLEXCAN0_RX_DMA_FLEXCAN0_RX	0x21
+			>;
+		};
+
+		pinctrl_flexcan2: flexcan1grp {
+			fsl,pins = <
+				IMX8QM_FLEXCAN1_TX_DMA_FLEXCAN1_TX	0x21
+				IMX8QM_FLEXCAN1_RX_DMA_FLEXCAN1_RX	0x21
+			>;
+		};
+
+		pinctrl_flexcan3: flexcan2grp {
+			fsl,pins = <
+				IMX8QM_FLEXCAN2_TX_DMA_FLEXCAN2_TX	0x21
+				IMX8QM_FLEXCAN2_RX_DMA_FLEXCAN2_RX	0x21
+			>;
+		};
+
+		pinctrl_gpio_leds: gpioledsgrp {
+			fsl,pins = <
+				IMX8QM_SPDIF0_TX_LSIO_GPIO2_IO15		0x00000021
+			>;
+		};
+
+		pinctrl_pciea: pcieagrp{
+			fsl,pins = <
+				IMX8QM_PCIE_CTRL0_CLKREQ_B_LSIO_GPIO4_IO27	0x06000021
+				IMX8QM_PCIE_CTRL0_WAKE_B_LSIO_GPIO4_IO28	0x04000021
+				IMX8QM_PCIE_CTRL0_PERST_B_LSIO_GPIO4_IO29	0x06000021
+			>;
+		};
+
+		pinctrl_pcieb: pciebgrp{
+			fsl,pins = <
+				IMX8QM_PCIE_CTRL1_CLKREQ_B_LSIO_GPIO4_IO30	0x06000021
+				IMX8QM_PCIE_CTRL1_WAKE_B_LSIO_GPIO4_IO31	0x04000021
+				IMX8QM_PCIE_CTRL1_PERST_B_LSIO_GPIO5_IO00	0x06000021
+			>;
+		};
+
+		pinctrl_usbotg1: usbotg1 {
+			fsl,pins = <
+				IMX8QM_USB_SS3_TC0_CONN_USB_OTG1_PWR		0x00000021
+				IMX8QM_USB_SS3_TC2_CONN_USB_OTG1_OC		0x00000021
+			>;
+		};
+
+		pinctrl_lvds0_pwm0: lvds0pwm0grp {
+			fsl,pins = <
+				IMX8QM_LVDS0_GPIO00_LVDS0_PWM0_OUT	0x00000020
+			>;
+		};
+
+		pinctrl_lvds0_bklt: lvds0_bklt {
+			fsl,pins = <
+				IMX8QM_LVDS1_GPIO00_LSIO_GPIO1_IO10	0x00000021
+			>;
+		};
+
+		pinctrl_lvds0_vdd: lvds0_vdd {
+			fsl,pins = <
+				IMX8QM_LVDS0_GPIO01_LSIO_GPIO1_IO05	0x00000021
+			>;
+		};
+
+		pinctrl_mipi_csi0_gpio: mipicsi0gpiogrp{
+			fsl,pins = <
+				IMX8QM_MIPI_CSI0_GPIO0_00_MIPI_CSI0_GPIO0_IO00	0x00000021
+				IMX8QM_MIPI_CSI0_GPIO0_01_MIPI_CSI0_GPIO0_IO01	0x00000021
+			>;
+		};
+
+		pinctrl_mipi_csi1_gpio: mipicsi1gpiogrp{
+			fsl,pins = <
+				IMX8QM_MIPI_CSI1_GPIO0_00_MIPI_CSI1_GPIO0_IO00	0x00000021
+				IMX8QM_MIPI_CSI1_GPIO0_01_MIPI_CSI1_GPIO0_IO01	0x00000021
+			>;
+		};
+	};
+};
+
+&gpio2 {
+	status = "okay";
+};
+
+&gpio5 {
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
+	cd-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio5 21 GPIO_ACTIVE_HIGH>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>, <&pinctrl_usdhc3_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>, <&pinctrl_usdhc3_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>, <&pinctrl_usdhc3_gpio>;
+	bus-width = <4>;
+	cd-gpios = <&gpio4 12 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio4 11 GPIO_ACTIVE_HIGH>;
+	vmmc-supply = <&reg_usdhc3_vmmc>;
+	status = "okay";
+};
+
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg1>;
+	srp-disable;
+	hnp-disable;
+	adp-disable;
+	power-polarity-active-high;
+	disable-over-current;
+	status = "okay";
+};
+
+&usbotg3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-txid";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	fsl,rgmii_rxc_dly;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <4>;
+			at803x,eee-disabled;
+			at803x,vddio-1p8v;
+		};
+
+	};
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	xceiver-supply = <&reg_can_stby>;
+	disable-fd-mode;
+	status = "okay";
+};
+
+&gpio0_mipi_csi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mipi_csi0_gpio>;
+	status = "okay";
+};
+
+&gpio0_mipi_csi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mipi_csi1_gpio>;
+	status = "okay";
+};
+
+&i2c0_mipi_csi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+    pinctrl-0 = <&pinctrl_csi0_lpi2c0>;
+	clock-frequency = <100000>;
+	status = "okay";
+};
+
+&i2c0_mipi_csi1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+    pinctrl-0 = <&pinctrl_csi1_lpi2c0>;
+	clock-frequency = <100000>;
+	status = "okay";
+};
+
+&i2c0_hdmi {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi_lpi2c0>;
+	clock-frequency = <100000>;
+	status = "disabled";
+};
+
+&i2c0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpi2c0>;
+	clock-frequency = <100000>;
+	status = "disabled";
+};
+
+&i2c2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpi2c2>;
+	status = "okay";
+};
+
+&i2c3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rtc_epson_rx8900>;
+	status = "okay";
+
+	rx8900@32 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "epson,rx8900";
+		reg = <0x32>;
+	};
+};
+
+&pd_dma_lpuart0 {
+	debug_console;
+};
+
+&lpuart0 { /* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpuart0>;
+	status = "okay";
+};
+
+&lpuart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpuart1>;
+	status = "okay";
+};
+
+&isi_0 {
+	status = "okay";
+};
+
+&isi_1 {
+	status = "okay";
+};
+
+&isi_2 {
+	status = "okay";
+};
+
+&isi_3 {
+	status = "okay";
+};
+
+&gpu_3d0 {
+	status = "okay";
+};
+
+&gpu_3d1 {
+	status = "okay";
+};
+
+&imx8_gpu_ss {
+	status = "okay";
+};
+
+&pixel_combiner1 {
+	status = "okay";
+};
+
+&prg1 {
+	status = "okay";
+};
+
+&prg2 {
+	status = "okay";
+};
+
+&prg3 {
+	status = "okay";
+};
+
+&prg4 {
+	status = "okay";
+};
+
+&prg5 {
+	status = "okay";
+};
+
+&prg6 {
+	status = "okay";
+};
+
+&prg7 {
+	status = "okay";
+};
+
+&prg8 {
+	status = "okay";
+};
+
+&prg9 {
+	status = "okay";
+};
+
+&dpr1_channel1 {
+	status = "okay";
+};
+
+&dpr1_channel2 {
+	status = "okay";
+};
+
+&dpr1_channel3 {
+	status = "okay";
+};
+
+&dpr2_channel1 {
+	status = "okay";
+};
+
+&dpr2_channel2 {
+	status = "okay";
+};
+
+&dpr2_channel3 {
+	status = "okay";
+};
+
+&dpu1 {
+	status = "okay";
+};
+
+&pixel_combiner2 {
+	status = "okay";
+};
+
+&prg10 {
+	status = "okay";
+};
+
+&prg11 {
+	status = "okay";
+};
+
+&prg12 {
+	status = "okay";
+};
+
+&prg13 {
+	status = "okay";
+};
+
+&prg14 {
+	status = "okay";
+};
+
+&prg15 {
+	status = "okay";
+};
+
+&prg16 {
+	status = "okay";
+};
+
+&prg17 {
+	status = "okay";
+};
+
+&prg18 {
+	status = "okay";
+};
+
+&dpr3_channel1 {
+	status = "okay";
+};
+
+&dpr3_channel2 {
+	status = "okay";
+};
+
+&dpr3_channel3 {
+	status = "okay";
+};
+
+&dpr4_channel1 {
+	status = "okay";
+};
+
+&dpr4_channel2 {
+	status = "okay";
+};
+
+&dpr4_channel3 {
+	status = "okay";
+};
+
+&dpu2 {
+	status = "okay";
+};
+
+&pciea{
+	ext_osc = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pciea>;
+	reset-gpio = <&gpio4 29 GPIO_ACTIVE_LOW>;
+	disable-gpio = <&gpio4 28 GPIO_ACTIVE_LOW>;
+	clkreq-gpio = <&gpio4 27 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pcieb{
+	ext_osc = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcieb>;
+	reset-gpio = <&gpio5 0 GPIO_ACTIVE_LOW>;
+	disable-gpio = <&gpio4 31 GPIO_ACTIVE_LOW>;
+	clkreq-gpio = <&gpio4 30 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&sata {
+	status = "disabled";
+};
+
+&intmux_cm40 {
+	status = "okay";
+};
+
+&rpmsg{
+	vdev-nums = <1>;
+	reg = <0x0 0x90000000 0x0 0x10000>;
+	status = "okay";
+};
+
+&intmux_cm41 {
+	status = "okay";
+};
+
+&rpmsg1{
+	vdev-nums = <1>;
+	reg = <0x0 0x90100000 0x0 0x10000>;
+	status = "okay";
+};
+
+
+&lvds_backlight0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lvds0_bklt>, <&pinctrl_lvds0_vdd>;
+	gpios = <&gpio1 10 GPIO_ACTIVE_LOW>, <&gpio1 5 GPIO_ACTIVE_LOW>;
+};
+
+&lvds0_pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lvds0_pwm0>;
+	status = "okay";
+};
+
+&ldb1_phy {
+	status = "okay";
+};
+
+&lpspi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	fsl,spi-num-chipselects = <2>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpspi0 &pinctrl_lpspi0_cs_0 &pinctrl_lpspi0_cs_1>;
+	cs-gpios = <&gpio3 05 GPIO_ACTIVE_LOW>, <&gpio3 06 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	chip1: m25p80@0 {
+		compatible = "n25qba16";
+		spi-max-frequency = <5000000>;
+		reg = <0>;
+	};
+
+	chip2: m25p80@1 {
+		compatible = "n25qba16";
+		spi-max-frequency = <5000000>;
+		reg = <1>;
+	};
+
+};
+
+
+
+/ {
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-0 = <&pinctrl_gpio_sleep>;
+
+		sleep@1 {
+			label = "Sleep Button";
+			gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_PWR>;
+			linux,code = <KEY_SUSPEND>; //KEY_SUSPEND 205, KEY_SLEEP 142
+			debounce-interval = <1>;
+			wakeup-source;
+		};
+	};
+
+	sound-amix-sai {
+		compatible = "fsl,imx-audio-amix";
+		model = "amix-audio-sai";
+		dais = <&sai6>, <&sai7>;
+		amix-controller = <&amix>;
+		status = "disable";
+	};
+
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_common_gpio>;
+
+	imx8qm-arm2 {
+		pinctrl_gpio_sleep: gpio_sleep_grp{
+			fsl,pins = <
+				IMX8QM_SCU_GPIO0_05_LSIO_GPIO1_IO01		0x00000021
+			>;
+		};
+
+		pinctrl_common_gpio: common_gpio_grp{
+			fsl,pins = <
+				IMX8QM_M40_GPIO0_00_LSIO_GPIO0_IO08		0x00000021	/* GPIO0 */
+				IMX8QM_M40_GPIO0_01_LSIO_GPIO0_IO09		0x00000021	/* GPIO1 */
+				IMX8QM_FLEXCAN2_RX_LSIO_GPIO4_IO01		0x00000021	/* GPIO2 */
+				IMX8QM_FLEXCAN2_TX_LSIO_GPIO4_IO02		0x00000021	/* GPIO3 */
+				IMX8QM_ENET1_RGMII_TXC_LSIO_GPIO6_IO10	0x00000021	/* GPIO4 */
+				IMX8QM_ENET1_RGMII_TX_CTL_LSIO_GPIO6_IO11	0x00000021	/* GPIO5 */
+				IMX8QM_ENET1_RGMII_TXD0_LSIO_GPIO6_IO12	0x00000021	/* GPIO6 */
+				IMX8QM_ENET1_RGMII_TXD1_LSIO_GPIO6_IO13	0x00000021	/* GPIO7 */
+			>;
+		};
+
+		pinctrl_rtc_epson_rx8900: rtc_epson_rx8900_grp{
+			fsl,pins = <
+				IMX8QM_SIM0_POWER_EN_DMA_I2C3_SDA	0xc600004c
+				IMX8QM_SIM0_PD_DMA_I2C3_SCL		0xc600004c
+			>;
+		};
+
+
+		pinctrl_sai1: sai1grp {
+			fsl,pins = <
+				IMX8QM_SAI1_RXD_AUD_SAI1_RXD		0x06000040
+				IMX8QM_SAI1_TXD_AUD_SAI1_TXD		0x06000060
+				IMX8QM_SAI1_TXC_AUD_SAI1_TXC		0x06000040
+				IMX8QM_SAI1_TXFS_AUD_SAI1_TXFS		0x06000040
+			>;
+		};
+
+		pinctrl_lpspi0: lpspi0grp {
+			fsl,pins = <
+				IMX8QM_SPI0_SCK_DMA_SPI0_SCK		0x0600004c
+				IMX8QM_SPI0_SDO_DMA_SPI0_SDO		0x0600004c
+				IMX8QM_SPI0_SDI_DMA_SPI0_SDI		0x0600004c
+			>;
+		};
+
+		pinctrl_lpspi0_cs_0: lpspi0cs0 {
+			fsl,pins = <
+				IMX8QM_SPI0_CS0_LSIO_GPIO3_IO05		0x00000021
+			>;
+		};
+
+		pinctrl_lpspi0_cs_1: lpspi0cs1 {
+			fsl,pins = <
+				IMX8QM_SPI0_CS1_LSIO_GPIO3_IO06		0x00000021
+			>;
+		};
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
