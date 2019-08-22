Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E62993EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ik5rsvJDWJ/O89FJXFmL1QpuPuiGllVClg7cow7bwnE=; b=AnCC5b65ifdRMx
	kl2xD560ONxK9t7q/cO23WTnMLxjRraiYhsCqWlb3O4EZEDblFlhOp63ELN9/F/GC9S+7sxqQoFLd
	jOFVkWQgTxJvIyNIo0RYeIn9C5wlcw1p3mxLNuy8UIGuqClQftTfLaM/iMi2xz0WBLxDEMbzUXUH0
	CjuGgFVvvBygAbRROYX0e4P9+t1VlyECy6DmpUS44zS/txHVXM40FpcpYJPunX4ZE9At5Y2n/Cg32
	yz4CLcE4dM21ia/12gUMDNLi5RpZV0b9rF/qp7eIV41aCoMYAnl7M06BJsvUK9g2gc+J7iEMRDO8j
	qQM/rShKh9LvOit4WSJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mJt-0004rn-Lp; Thu, 22 Aug 2019 12:36:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mJe-0004qq-CX; Thu, 22 Aug 2019 12:35:48 +0000
X-UUID: 8e9a54f69b8147ec9bac6dd6447ace5a-20190822
X-UUID: 8e9a54f69b8147ec9bac6dd6447ace5a-20190822
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1406419757; Thu, 22 Aug 2019 04:35:34 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 05:35:32 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 20:35:31 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 20:35:30 +0800
From: <qii.wang@mediatek.com>
To: <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: mt8183: add I2C nodes
Date: Thu, 22 Aug 2019 20:35:16 +0800
Message-ID: <1566477316-13245-1-git-send-email-qii.wang@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_053546_433352_CF278FC5 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, leilk.liu@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 qii.wang@mediatek.com, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qii Wang <qii.wang@mediatek.com>

Add i2c nodes to mt8183 and mt8183-evb.

Signed-off-by: Qii Wang <qii.wang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts |  96 ++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 189 ++++++++++++++++++++++++++++
 2 files changed, 285 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index d8e555c..1fb195c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -30,7 +30,103 @@
 	status = "okay";
 };
 
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c_pins_0>;
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c_pins_1>;
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c_pins_2>;
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c_pins_3>;
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c_pins_4>;
+	status = "okay";
+	clock-frequency = <1000000>;
+};
+
+&i2c5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c_pins_5>;
+	status = "okay";
+	clock-frequency = <1000000>;
+};
+
 &pio {
+	i2c_pins_0: i2c0{
+		pins_i2c{
+			pinmux = <PINMUX_GPIO82__FUNC_SDA0>,
+				 <PINMUX_GPIO83__FUNC_SCL0>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c_pins_1: i2c1{
+		pins_i2c{
+			pinmux = <PINMUX_GPIO81__FUNC_SDA1>,
+				 <PINMUX_GPIO84__FUNC_SCL1>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c_pins_2: i2c2{
+		pins_i2c{
+			pinmux = <PINMUX_GPIO103__FUNC_SCL2>,
+				 <PINMUX_GPIO104__FUNC_SDA2>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c_pins_3: i2c3{
+		pins_i2c{
+			pinmux = <PINMUX_GPIO50__FUNC_SCL3>,
+				 <PINMUX_GPIO51__FUNC_SDA3>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c_pins_4: i2c4{
+		pins_i2c{
+			pinmux = <PINMUX_GPIO105__FUNC_SCL4>,
+				 <PINMUX_GPIO106__FUNC_SDA4>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
+	i2c_pins_5: i2c5{
+		pins_i2c{
+			pinmux = <PINMUX_GPIO48__FUNC_SCL5>,
+				 <PINMUX_GPIO49__FUNC_SDA5>;
+			mediatek,pull-up-adv = <3>;
+			mediatek,drive-strength-adv = <00>;
+		};
+	};
+
 	spi_pins_0: spi0{
 		pins_spi{
 			pinmux = <PINMUX_GPIO85__FUNC_SPI0_MI>,
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4..ab71291 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -16,6 +16,21 @@
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
+		i2c6 = &i2c6;
+		i2c7 = &i2c7;
+		i2c8 = &i2c8;
+		i2c9 = &i2c9;
+		i2c10 = &i2c10;
+		i2c11 = &i2c11;
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -294,6 +309,64 @@
 			status = "disabled";
 		};
 
+		i2c6: i2c@11005000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x11005000 0 0x1000>,
+			      <0 0x11000600 0 0x80>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C6>,
+				 <&infracfg CLK_INFRA_AP_DMA>;
+			clock-names = "main", "dma";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c0: i2c@11007000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x11007000 0 0x1000>,
+			      <0 0x11000080 0 0x80>;
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C0>,
+				 <&infracfg CLK_INFRA_AP_DMA>;
+			clock-names = "main", "dma";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c4: i2c@11008000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x11008000 0 0x1000>,
+			      <0 0x11000100 0 0x80>;
+			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C1>,
+				 <&infracfg CLK_INFRA_AP_DMA>,
+				 <&infracfg CLK_INFRA_I2C1_ARBITER>;
+			clock-names = "main", "dma","arb";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c2: i2c@11009000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x11009000 0 0x1000>,
+			      <0 0x11000280 0 0x80>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C2>,
+				 <&infracfg CLK_INFRA_AP_DMA>,
+				 <&infracfg CLK_INFRA_I2C2_ARBITER>;
+			clock-names = "main", "dma", "arb";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		spi0: spi@1100a000 {
 			compatible = "mediatek,mt8183-spi";
 			#address-cells = <1>;
@@ -307,6 +380,20 @@
 			status = "disabled";
 		};
 
+		i2c3: i2c@1100f000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x1100f000 0 0x1000>,
+			      <0 0x11000400 0 0x80>;
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C3>,
+				 <&infracfg CLK_INFRA_AP_DMA>;
+			clock-names = "main", "dma";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		spi1: spi@11010000 {
 			compatible = "mediatek,mt8183-spi";
 			#address-cells = <1>;
@@ -320,6 +407,20 @@
 			status = "disabled";
 		};
 
+		i2c1: i2c@11011000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x11011000 0 0x1000>,
+			      <0 0x11000480 0 0x80>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C4>,
+				 <&infracfg CLK_INFRA_AP_DMA>;
+			clock-names = "main", "dma";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		spi2: spi@11012000 {
 			compatible = "mediatek,mt8183-spi";
 			#address-cells = <1>;
@@ -346,6 +447,66 @@
 			status = "disabled";
 		};
 
+		i2c9: i2c@11014000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x11014000 0 0x1000>,
+			      <0 0x11000180 0 0x80>;
+			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C1_IMM>,
+				 <&infracfg CLK_INFRA_AP_DMA>,
+				 <&infracfg CLK_INFRA_I2C1_ARBITER>;
+			clock-names = "main", "dma", "arb";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c10: i2c@11015000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x11015000 0 0x1000>,
+			      <0 0x11000300 0 0x80>;
+			interrupts = <GIC_SPI 132 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C2_IMM>,
+				 <&infracfg CLK_INFRA_AP_DMA>,
+				 <&infracfg CLK_INFRA_I2C2_ARBITER>;
+			clock-names = "main", "dma", "arb";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c5: i2c@11016000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x11016000 0 0x1000>,
+			      <0 0x11000500 0 0x80>;
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C5>,
+				 <&infracfg CLK_INFRA_AP_DMA>,
+				 <&infracfg CLK_INFRA_I2C5_ARBITER>;
+			clock-names = "main", "dma", "arb";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c11: i2c@11017000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x11017000 0 0x1000>,
+			      <0 0x11000580 0 0x80>;
+			interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C5_IMM>,
+				 <&infracfg CLK_INFRA_AP_DMA>,
+				 <&infracfg CLK_INFRA_I2C5_ARBITER>;
+			clock-names = "main", "dma", "arb";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		spi4: spi@11018000 {
 			compatible = "mediatek,mt8183-spi";
 			#address-cells = <1>;
@@ -372,6 +533,34 @@
 			status = "disabled";
 		};
 
+		i2c7: i2c@1101a000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x1101a000 0 0x1000>,
+			      <0 0x11000680 0 0x80>;
+			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C7>,
+				 <&infracfg CLK_INFRA_AP_DMA>;
+			clock-names = "main", "dma";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c8: i2c@1101b000 {
+			compatible = "mediatek,mt8183-i2c";
+			reg = <0 0x1101b000 0 0x1000>,
+			      <0 0x11000700 0 0x80>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_I2C8>,
+				 <&infracfg CLK_INFRA_AP_DMA>;
+			clock-names = "main", "dma";
+			clock-div = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		audiosys: syscon@11220000 {
 			compatible = "mediatek,mt8183-audiosys", "syscon";
 			reg = <0 0x11220000 0 0x1000>;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
