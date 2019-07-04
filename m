Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6315F584
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v++T29S9p9kSeh0EYzqEnzvXvfX4+8cL99nmg222eh0=; b=WVxFdKpX0qGzE6jJca2nzRmS8S
	RifdAlObdYza+klau0NqAOXjlnIaDgQgdTvQCTbM/d4pV0jNoA29wjEr3J7plKwa3cBNUi70XXOMa
	C6qYNF0hKJuJETP241wWthDQULCTLkkYevGfSNLKY/A3umwWM2U780UK7mKRQZPwrVyFkuWztF2GH
	sLqMOl5P0F3n3mklitnpI8p8bXOk4IwJXypnpx1sjWQI+cxv0CDy4QbZB9lNnPDK+ERIrmPJR4npS
	mxvrLDMHaok343AJRLwTaAR4n5okn2J3xoHgHvdB2lI43QNXvwf6CqAR6zXI/cPtlseFHy3orKrOC
	bm/p0KfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixyW-0000GO-5g; Thu, 04 Jul 2019 09:24:20 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixwy-0007gb-9E
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:22:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 107091A0562;
 Thu,  4 Jul 2019 11:22:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 70EE51A0570;
 Thu,  4 Jul 2019 11:22:28 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1E8D4402E5;
 Thu,  4 Jul 2019 17:22:15 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, ping.bai@nxp.com, olof@lixom.net,
 maxime.ripard@bootlin.com, jagan@amarulasolutions.com,
 bjorn.andersson@linaro.org, dinguyen@kernel.org,
 enric.balletbo@collabora.com, marcin.juszkiewicz@linaro.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: imx8mm: Add thermal zone support
Date: Thu,  4 Jul 2019 17:13:13 +0800
Message-Id: <20190704091313.9516-5-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190704091313.9516-1-Anson.Huang@nxp.com>
References: <20190704091313.9516-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_022244_616732_7852AFFC 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Add thermal zone and tmu node to support i.MX8MM thermal
driver, ONLY cpu thermal zone is supported, and cpu cooling
is also added.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 43 +++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 3a62407..1870c89 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -70,6 +70,7 @@
 			nvmem-cells = <&cpu_speed_grade>;
 			nvmem-cell-names = "speed_grade";
 			cpu-idle-states = <&cpu_sleep_wait>;
+			#cooling-cells = <2>;
 		};
 
 		A53_1: cpu@1 {
@@ -82,6 +83,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			cpu-idle-states = <&cpu_sleep_wait>;
+			#cooling-cells = <2>;
 		};
 
 		A53_2: cpu@2 {
@@ -94,6 +96,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			cpu-idle-states = <&cpu_sleep_wait>;
+			#cooling-cells = <2>;
 		};
 
 		A53_3: cpu@3 {
@@ -106,6 +109,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			cpu-idle-states = <&cpu_sleep_wait>;
+			#cooling-cells = <2>;
 		};
 
 		A53_L2: l2-cache0 {
@@ -209,6 +213,38 @@
 		arm,no-tick-in-suspend;
 	};
 
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <2000>;
+			thermal-sensors = <&tmu>;
+			trips {
+				cpu_alert0: trip0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_crit0: trip1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device =
+						<&A53_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&A53_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&A53_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	usbphynop1: usbphynop1 {
 		compatible = "usb-nop-xceiv";
 		clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
@@ -368,6 +404,13 @@
 				gpio-ranges = <&iomuxc 0 119 30>;
 			};
 
+			tmu: tmu@30260000 {
+				compatible = "fsl,imx8mm-tmu";
+				reg = <0x30260000 0x10000>;
+				clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
+				#thermal-sensor-cells = <0>;
+			};
+
 			wdog1: watchdog@30280000 {
 				compatible = "fsl,imx8mm-wdt", "fsl,imx21-wdt";
 				reg = <0x30280000 0x10000>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
