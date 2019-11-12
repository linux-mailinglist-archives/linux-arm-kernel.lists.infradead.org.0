Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CE3F9C9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 22:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PkVXMbX/w5LNsml7p1+HihFzZIGdQsVkenCE7JtHsQw=; b=nlxb37TnuJ/9KIR6q+KzkFEOoM
	51W/x/GagnVsDs3SXy4DJcfWtcHvKyoE3gE1QujkP/ioKv66MfHQnT9Gvhhh/QFE9jbO8U/4Neolq
	vVf4gO26yVIQoZcGoqFlo86A2kUvu/2tqunG1zZBA5t5XU7oFa6qaFY9hB0oJ147jaW0Tv/EDiThK
	gZAb/GxfOu/CqHIqpoHjw+IQ/FWV2rDUkKTk/JcDNfZXyxaxFhhbl76YrJfIPsnKOLFvZU1dW/DV4
	L3lI9OgCTAiUCSrZP2K1xBhMoUrWmbIbLLpypSc3dzpb+tzIDvZYoI0GGpEQlfKbQi10KQkE6C5kd
	f2H4ysUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUe5X-0005Ga-NA; Tue, 12 Nov 2019 21:52:39 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUe4C-0004Ee-0u
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 21:51:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AFB211A0258;
 Tue, 12 Nov 2019 22:51:14 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 984C51A071B;
 Tue, 12 Nov 2019 22:51:14 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 894AC205E9;
 Tue, 12 Nov 2019 22:51:13 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 5/5] arm64: dts: imx8m: Add ddr controller nodes
Date: Tue, 12 Nov 2019 23:50:55 +0200
Message-Id: <c548f691164d9f1335e5f32a2bdfc733cb7b7ec5.1573595319.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573595318.git.leonard.crestez@nxp.com>
References: <cover.1573595318.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573595318.git.leonard.crestez@nxp.com>
References: <cover.1573595318.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_135116_386322_557D9888 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is used by the imx-ddrc devfreq driver to implement dynamic
frequency scaling of DRAM.

Support for proactive scaling via interconnect will come later. The
high-performance bus masters which need that (display, vpu, gpu) are
mostly not yet enabled in upstream anyway.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 18 ++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 10 ++++++++
 .../boot/dts/freescale/imx8mn-ddr4-evk.dts    | 18 ++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     | 10 ++++++++
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts  | 24 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 10 ++++++++
 6 files changed, 90 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index 28ab17a277bb..ecf0d385c164 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -75,10 +75,28 @@
 
 &A53_0 {
 	cpu-supply = <&buck2_reg>;
 };
 
+&ddrc {
+	operating-points-v2 = <&ddrc_opp_table>;
+
+	ddrc_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-25M {
+			opp-hz = /bits/ 64 <25000000>;
+		};
+		opp-100M {
+			opp-hz = /bits/ 64 <100000000>;
+		};
+		opp-750M {
+			opp-hz = /bits/ 64 <750000000>;
+		};
+	};
+};
+
 &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec1>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy0>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 6edbdfe2d0d7..3d4802375715 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -856,10 +856,20 @@
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		ddrc: memory-controller@3d400000 {
+			compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
+			reg = <0x3d400000 0x400000>;
+			clock-names = "core", "pll", "alt", "apb";
+			clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
+				 <&clk IMX8MM_DRAM_PLL>,
+				 <&clk IMX8MM_CLK_DRAM_ALT>,
+				 <&clk IMX8MM_CLK_DRAM_APB>;
+		};
+
 		ddr-pmu@3d800000 {
 			compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-pmu";
 			reg = <0x3d800000 0x400000>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
index 071949412caf..b051c927c11e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
@@ -15,10 +15,28 @@
 
 &A53_0 {
 	cpu-supply = <&buck2_reg>;
 };
 
+&ddrc {
+	operating-points-v2 = <&ddrc_opp_table>;
+
+	ddrc_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-25M {
+			opp-hz = /bits/ 64 <25000000>;
+		};
+		opp-100M {
+			opp-hz = /bits/ 64 <100000000>;
+		};
+		opp-600M {
+			opp-hz = /bits/ 64 <600000000>;
+		};
+	};
+};
+
 &i2c1 {
 	pmic@4b {
 		compatible = "rohm,bd71847";
 		reg = <0x4b>;
 		pinctrl-0 = <&pinctrl_pmic>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index e91625063f8e..3a79fdddc72b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -757,10 +757,20 @@
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		ddrc: memory-controller@3d400000 {
+			compatible = "fsl,imx8mn-ddrc", "fsl,imx8m-ddrc";
+			reg = <0x3d400000 0x400000>;
+			clock-names = "core", "pll", "alt", "apb";
+			clocks = <&clk IMX8MN_CLK_DRAM_CORE>,
+				 <&clk IMX8MN_DRAM_PLL>,
+				 <&clk IMX8MN_CLK_DRAM_ALT>,
+				 <&clk IMX8MN_CLK_DRAM_APB>;
+		};
+
 		ddr-pmu@3d800000 {
 			compatible = "fsl,imx8mn-ddr-pmu", "fsl,imx8m-ddr-pmu";
 			reg = <0x3d800000 0x400000>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
 		};
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index c36685916683..ee6dc5f07622 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -103,10 +103,34 @@
 
 &A53_3 {
 	cpu-supply = <&buck2_reg>;
 };
 
+&ddrc {
+	operating-points-v2 = <&ddrc_opp_table>;
+
+	ddrc_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-25M {
+			opp-hz = /bits/ 64 <25000000>;
+		};
+		opp-100M {
+			opp-hz = /bits/ 64 <100000000>;
+		};
+		/*
+		 * On imx8mq B0 PLL can't be bypassed so low bus is 166M
+		 */
+		opp-166M {
+			opp-hz = /bits/ 64 <166935483>;
+		};
+		opp-800M {
+			opp-hz = /bits/ 64 <800000000>;
+		};
+	};
+};
+
 &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec1>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy0>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 7f9319452b58..d1fcf9887f8b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1111,10 +1111,20 @@
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
 		};
 
+		ddrc: memory-controller@3d400000 {
+			compatible = "fsl,imx8mq-ddrc", "fsl,imx8m-ddrc";
+			reg = <0x3d400000 0x400000>;
+			clock-names = "core", "pll", "alt", "apb";
+			clocks = <&clk IMX8MQ_CLK_DRAM_CORE>,
+				 <&clk IMX8MQ_DRAM_PLL_OUT>,
+				 <&clk IMX8MQ_CLK_DRAM_ALT>,
+				 <&clk IMX8MQ_CLK_DRAM_APB>;
+		};
+
 		ddr-pmu@3d800000 {
 			compatible = "fsl,imx8mq-ddr-pmu", "fsl,imx8m-ddr-pmu";
 			reg = <0x3d800000 0x400000>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
