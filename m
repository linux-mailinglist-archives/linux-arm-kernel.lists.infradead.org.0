Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884412B104
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHxIIMswKCPKC3H6pa+t+EtLgxFxqGwNqArFM/2C1bI=; b=qF8WNEW8hpo4+4
	hpjsiAUxVxfdmWqgn7sAbQ1hFtGEAzK9KtFAikM0eyOaQPpaT77E+BE44YS/Rxfd8fpdtrwe0RKDc
	LrTj5R7lyKXSN2Mc/PEqYZxXJ3GC6JQkifvMted9IkrB/9Ogrh59SLLqfa60/Ha9BjlWL6vwMSuzY
	cTfsoE21a1NJYVEvTjUjt0litse+d3waQ8SYgyiESnVLnlrJ37ImtmMjAI0OJI3nhYrIWEJuBOmWd
	+YWn22m718DqcDHdgxHJ72IiQxK/0XCkhCd4vf8+cSxZ2nOtOugEFI9ycJxiipa7XI0JZ8gWszMGK
	QL7hO6y/LIKi4886onPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBcQ-0000HY-Up; Mon, 27 May 2019 09:08:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBbo-00087l-9i; Mon, 27 May 2019 09:07:57 +0000
X-UUID: 27592c327fbc42269c88976daf15b073-20190527
X-UUID: 27592c327fbc42269c88976daf15b073-20190527
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <erin.lo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 204175935; Mon, 27 May 2019 01:05:33 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 02:05:20 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 17:05:19 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 27 May 2019 17:05:19 +0800
From: Erin Lo <erin.lo@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 5/6] arm64: dts: mt8183: add spi node
Date: Mon, 27 May 2019 17:04:46 +0800
Message-ID: <1558947887-31084-6-git-send-email-erin.lo@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
References: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_020756_354035_94CFF71B 
X-CRM114-Status: UNSURE (   9.34  )
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
Cc: devicetree@vger.kernel.org, Mengqi Zhang <Mengqi.Zhang@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, erin.lo@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-serial@vger.kernel.org, mars.cheng@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add spi DTS node to the mt8183 and mt8183-evb.

Signed-off-by: Mengqi Zhang <Mengqi.Zhang@mediatek.com>
Signed-off-by: Erin Lo <erin.lo@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 105 ++++++++++++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    |  78 +++++++++++++++++++++
 2 files changed, 183 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 49909ac..d8e555c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -30,6 +30,111 @@
 	status = "okay";
 };
 
+&pio {
+	spi_pins_0: spi0{
+		pins_spi{
+			pinmux = <PINMUX_GPIO85__FUNC_SPI0_MI>,
+				 <PINMUX_GPIO86__FUNC_SPI0_CSB>,
+				 <PINMUX_GPIO87__FUNC_SPI0_MO>,
+				 <PINMUX_GPIO88__FUNC_SPI0_CLK>;
+			bias-disable;
+		};
+	};
+
+	spi_pins_1: spi1{
+		pins_spi{
+			pinmux = <PINMUX_GPIO161__FUNC_SPI1_A_MI>,
+				 <PINMUX_GPIO162__FUNC_SPI1_A_CSB>,
+				 <PINMUX_GPIO163__FUNC_SPI1_A_MO>,
+				 <PINMUX_GPIO164__FUNC_SPI1_A_CLK>;
+			bias-disable;
+		};
+	};
+
+	spi_pins_2: spi2{
+		pins_spi{
+			pinmux = <PINMUX_GPIO0__FUNC_SPI2_CSB>,
+				 <PINMUX_GPIO1__FUNC_SPI2_MO>,
+				 <PINMUX_GPIO2__FUNC_SPI2_CLK>,
+				 <PINMUX_GPIO94__FUNC_SPI2_MI>;
+			bias-disable;
+		};
+	};
+
+	spi_pins_3: spi3{
+		pins_spi{
+			pinmux = <PINMUX_GPIO21__FUNC_SPI3_MI>,
+				 <PINMUX_GPIO22__FUNC_SPI3_CSB>,
+				 <PINMUX_GPIO23__FUNC_SPI3_MO>,
+				 <PINMUX_GPIO24__FUNC_SPI3_CLK>;
+			bias-disable;
+		};
+	};
+
+	spi_pins_4: spi4{
+		pins_spi{
+			pinmux = <PINMUX_GPIO17__FUNC_SPI4_MI>,
+				 <PINMUX_GPIO18__FUNC_SPI4_CSB>,
+				 <PINMUX_GPIO19__FUNC_SPI4_MO>,
+				 <PINMUX_GPIO20__FUNC_SPI4_CLK>;
+			bias-disable;
+		};
+	};
+
+	spi_pins_5: spi5{
+		pins_spi{
+			pinmux = <PINMUX_GPIO13__FUNC_SPI5_MI>,
+				 <PINMUX_GPIO14__FUNC_SPI5_CSB>,
+				 <PINMUX_GPIO15__FUNC_SPI5_MO>,
+				 <PINMUX_GPIO16__FUNC_SPI5_CLK>;
+			bias-disable;
+		};
+	};
+};
+
+&spi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins_0>;
+	mediatek,pad-select = <0>;
+	status = "okay";
+};
+
+&spi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins_1>;
+	mediatek,pad-select = <0>;
+	status = "okay";
+};
+
+&spi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins_2>;
+	mediatek,pad-select = <0>;
+	status = "okay";
+};
+
+&spi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins_3>;
+	mediatek,pad-select = <0>;
+	status = "okay";
+};
+
+&spi4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins_4>;
+	mediatek,pad-select = <0>;
+	status = "okay";
+};
+
+&spi5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins_5>;
+	mediatek,pad-select = <0>;
+	status = "okay";
+
+};
+
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 5672c18..2e3063f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -285,6 +285,84 @@
 			status = "disabled";
 		};
 
+		spi0: spi@1100a000 {
+			compatible = "mediatek,mt8183-spi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0x1100a000 0 0x1000>;
+			interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_SYSPLL_D5_D2>,
+				 <&topckgen CLK_TOP_MUX_SPI>,
+				 <&infracfg CLK_INFRA_SPI0>;
+			clock-names = "parent-clk", "sel-clk", "spi-clk";
+			status = "disabled";
+		};
+
+		spi1: spi@11010000 {
+			compatible = "mediatek,mt8183-spi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0x11010000 0 0x1000>;
+			interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_SYSPLL_D5_D2>,
+				 <&topckgen CLK_TOP_MUX_SPI>,
+				 <&infracfg CLK_INFRA_SPI1>;
+			clock-names = "parent-clk", "sel-clk", "spi-clk";
+			status = "disabled";
+		};
+
+		spi2: spi@11012000 {
+			compatible = "mediatek,mt8183-spi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0x11012000 0 0x1000>;
+			interrupts = <GIC_SPI 129 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_SYSPLL_D5_D2>,
+				 <&topckgen CLK_TOP_MUX_SPI>,
+				 <&infracfg CLK_INFRA_SPI2>;
+			clock-names = "parent-clk", "sel-clk", "spi-clk";
+			status = "disabled";
+		};
+
+		spi3: spi@11013000 {
+			compatible = "mediatek,mt8183-spi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0x11013000 0 0x1000>;
+			interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_SYSPLL_D5_D2>,
+				 <&topckgen CLK_TOP_MUX_SPI>,
+				 <&infracfg CLK_INFRA_SPI3>;
+			clock-names = "parent-clk", "sel-clk", "spi-clk";
+			status = "disabled";
+		};
+
+		spi4: spi@11018000 {
+			compatible = "mediatek,mt8183-spi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0x11018000 0 0x1000>;
+			interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_SYSPLL_D5_D2>,
+				 <&topckgen CLK_TOP_MUX_SPI>,
+				 <&infracfg CLK_INFRA_SPI4>;
+			clock-names = "parent-clk", "sel-clk", "spi-clk";
+			status = "disabled";
+		};
+
+		spi5: spi@11019000 {
+			compatible = "mediatek,mt8183-spi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0 0x11019000 0 0x1000>;
+			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_SYSPLL_D5_D2>,
+				 <&topckgen CLK_TOP_MUX_SPI>,
+				 <&infracfg CLK_INFRA_SPI5>;
+			clock-names = "parent-clk", "sel-clk", "spi-clk";
+			status = "disabled";
+		};
+
 		audiosys: syscon@11220000 {
 			compatible = "mediatek,mt8183-audiosys", "syscon";
 			reg = <0 0x11220000 0 0x1000>;
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
