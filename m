Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C891DDDBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 05:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPfZ40SmKOnrPXyL9eSLP+WRl85nPSvunXJ8mJmYhuM=; b=W70mnneqWGyIa7
	SxR8owm9bSMfdcj8FVikomobFWOe9h8j/Q2IC0k3iPZxEI+mwQECak3wnSRLzotE9Le5a2kWyu/5Q
	I0SOZeueTSQjroTylbPTZi/7y71THNN5OyPMavnHaXWptdaCTe0V2EdwTqafnRE58nxgyF+n1vtz2
	xK7CFwOXI9u15nVaiRAyrfQE1VUq1AqxjwgRhv4mG3hRf39UDZvvX+Rkd9jfMcgc3RphZMqkfI5vi
	vJRK9EVY5VLpkvSRccvgmQmrunAlDmk48COJWKenbr6dRNPvUwvWVOv5yQrvdyg8tY5VKmTQGS6Vr
	Rv1+H1raeCnJUe4Egelw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jby3c-0006aP-03; Fri, 22 May 2020 03:09:12 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jby2p-000688-7d
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 03:08:27 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.06730018|-1; CH=green;
 DM=|CONTINUE|false|;
 DS=CONTINUE|ham_regular_dialog|0.667596-9.51996e-05-0.332309;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03299; MF=frank@allwinnertech.com; NM=1; PH=DS;
 RN=15; RT=15; SR=0; TI=SMTPD_---.HbxBGFJ_1590116882; 
Received: from allwinnertech.com(mailfrom:frank@allwinnertech.com
 fp:SMTPD_---.HbxBGFJ_1590116882)
 by smtp.aliyun-inc.com(10.147.41.178);
 Fri, 22 May 2020 11:08:19 +0800
From: Frank Lee <frank@allwinnertech.com>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linus.walleij@linaro.org,
 p.zabel@pengutronix.de, frank@allwinnertech.com,
 huangshuosheng@allwinnertech.com, tiny.windzz@gmail.com
Subject: [PATCH 3/4] arm64: allwinner: A100: add the basical Allwinner A100
 DTSI file
Date: Fri, 22 May 2020 11:07:42 +0800
Message-Id: <20200522030743.10204-4-frank@allwinnertech.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200522030743.10204-1-frank@allwinnertech.com>
References: <20200522030743.10204-1-frank@allwinnertech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_200823_447239_FA2A6224 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner A100 is a new SoC with Cortex-A53 cores, this commit adds
the basical DTSI file of it, including the clock, pins and UART support.

Signed-off-by: Frank Lee <frank@allwinnertech.com>
---
 .../arm64/boot/dts/allwinner/sun50i-a100.dtsi | 173 ++++++++++++++++++
 1 file changed, 173 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
new file mode 100644
index 000000000000..bd9bf9b2f832
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
@@ -0,0 +1,173 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+/*
+ * Copyright (c) 2020 Frank Lee <frank@allwinner.com>
+ */
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/sun50i-a100-ccu.h>
+#include <dt-bindings/clock/sun50i-a100-r-ccu.h>
+#include <dt-bindings/reset/sun50i-a100-ccu.h>
+#include <dt-bindings/reset/sun50i-a100-r-ccu.h>
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			compatible = "arm,armv8";
+			device_type = "cpu";
+			reg = <0x0>;
+			enable-method = "psci";
+		};
+
+		cpu@1 {
+			compatible = "arm,armv8";
+			device_type = "cpu";
+			reg = <0x1>;
+			enable-method = "psci";
+		};
+
+		cpu@2 {
+			compatible = "arm,armv8";
+			device_type = "cpu";
+			reg = <0x2>;
+			enable-method = "psci";
+		};
+
+		cpu@3 {
+			compatible = "arm,armv8";
+			device_type = "cpu";
+			reg = <0x3>;
+			enable-method = "psci";
+		};
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	iosc: internal-osc-clk {
+		compatible = "fixed-clock";
+		clock-frequency = <16000000>;
+		clock-accuracy = <300000000>;
+		clock-output-names = "iosc";
+		#clock-cells = <0>;
+	};
+
+	dcxo24M: dcxo24M_clk {
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+		clock-output-names = "dcxo24M";
+		#clock-cells = <0>;
+	};
+
+	osc32k: osc32k_clk {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "osc32k";
+		#clock-cells = <0>;
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13
+			(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 14
+			(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 11
+			(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 10
+			(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+	};
+
+	soc: soc {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		ccu: clock@3001000 {
+			compatible = "allwinner,sun50i-a100-ccu";
+			reg = <0x0 0x03001000 0x0 0x1000>;
+			clocks = <&dcxo24M>, <&osc32k>, <&iosc>;
+			clock-names = "hosc", "losc", "iosc";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		gic: interrupt-controller@3021000 {
+			compatible = "arm,gic-400";
+			reg = <0x0 0x03021000 0x0 0x1000>,
+			      <0x0 0x03022000 0x0 0x2000>,
+			      <0x0 0x03024000 0x0 0x2000>,
+			      <0x0 0x03026000 0x0 0x2000>;
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) |
+						 IRQ_TYPE_LEVEL_HIGH)>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+		};
+
+		pio: pinctrl@300b000 {
+			compatible = "allwinner,sun50i-a100-pinctrl";
+			reg = <0x0 0x0300b000 0x0 0x400>;
+			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_APB1>, <&dcxo24M>, <&osc32k>;
+			clock-names = "apb", "hosc", "losc";
+			gpio-controller;
+			#gpio-cells = <3>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			uart0_pb_pins: uart0-pb-pins {
+				pins = "PB9", "PB10";
+				function = "uart0";
+			};
+		};
+
+		uart0: serial@5000000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x05000000 0x0 0x400>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&ccu CLK_BUS_UART0>;
+			resets = <&ccu RST_BUS_UART0>;
+		};
+
+		r_ccu: clock@7010000 {
+			compatible = "allwinner,sun50i-a100-r-ccu";
+			reg = <0x0 0x07010000 0x0 0x400>;
+			clocks = <&dcxo24M>, <&osc32k>, <&iosc>,
+				 <&ccu CLK_PLL_PERIPH0>;
+			clock-names = "hosc", "losc", "iosc", "pll-periph";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		r_pio: pinctrl@7022000 {
+			compatible = "allwinner,sun50i-a100-r-pinctrl";
+			reg = <0x0 0x07022000 0x0 0x400>;
+			interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&r_ccu CLK_R_APB1>, <&dcxo24M>, <&osc32k>;
+			clock-names = "apb", "hosc", "losc";
+			gpio-controller;
+			#gpio-cells = <3>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+		};
+	};
+};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
