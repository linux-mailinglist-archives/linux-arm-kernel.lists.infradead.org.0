Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F086C17D47B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 16:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a7WPokaYBYpsqy2DZvozZCPJ2zdYlMe2gRV8446v9EA=; b=iSSniWdEStdiBQU5W6twzaqVzI
	ws+yii7s/mfsNeyw1EBZUCKLLFLQK02hObI7Lu1zTkYpmflv8dUo76ML0rbfg4/THJgmLLUF/fvhR
	srFEZlok1aC+rmVLt5CqbPizSRwiDkiJb6dL26gcrDYEAtyVVQd6tEt7LTSC8lR6s4hlOcimhfoQm
	1+IDNkbcqxNT9dDnSG9XNs5y5S7ttsbnnB2sB9UjpPLk0XMfHEuNFUSVrlS0MBO05H8E4JTOp0MPO
	P5OUoVoxV/d+Wm18FxGkvrGG96ZDnvtlJ8XJq+kC4IwvJcVzP58+jhHoX7UZB0U6SBWakpb0Bz0U4
	fiI2+m0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAxwI-0007Zu-Qi; Sun, 08 Mar 2020 15:34:02 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAxw8-0007ZC-1d
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 15:33:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9A3A61A1523;
 Sun,  8 Mar 2020 16:33:50 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8D3F21A151C;
 Sun,  8 Mar 2020 16:33:43 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id EFF94402DA;
 Sun,  8 Mar 2020 23:33:34 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: imx8mp: Add thermal zones support
Date: Sun,  8 Mar 2020 23:27:20 +0800
Message-Id: <1583681240-14782-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583681240-14782-1-git-send-email-Anson.Huang@nxp.com>
References: <1583681240-14782-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_083352_365747_B664143F 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

i.MX8MP has a TMU inside which supports two thermal zones, add support
for them.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 63 +++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index a253c3f..c621988 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/thermal/thermal.h>
 
 #include "imx8mp-pinfunc.h"
 
@@ -43,6 +44,7 @@
 			clocks = <&clk IMX8MP_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
+			#cooling-cells = <2>;
 		};
 
 		A53_1: cpu@1 {
@@ -53,6 +55,7 @@
 			clocks = <&clk IMX8MP_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
+			#cooling-cells = <2>;
 		};
 
 		A53_2: cpu@2 {
@@ -63,6 +66,7 @@
 			clocks = <&clk IMX8MP_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
+			#cooling-cells = <2>;
 		};
 
 		A53_3: cpu@3 {
@@ -73,6 +77,7 @@
 			clocks = <&clk IMX8MP_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
+			#cooling-cells = <2>;
 		};
 
 		A53_L2: l2-cache0 {
@@ -127,6 +132,57 @@
 		method = "smc";
 	};
 
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <2000>;
+			thermal-sensors = <&tmu 0x0>;
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
+
+		soc-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <2000>;
+			thermal-sensors = <&tmu 0x1>;
+			trips {
+				soc_alert0: trip0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				soc_crit0: trip1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
@@ -215,6 +271,13 @@
 				gpio-ranges = <&iomuxc 0 114 30>;
 			};
 
+			tmu: tmu@30260000 {
+				compatible = "fsl,imx8mp-tmu";
+				reg = <0x30260000 0x10000>;
+				clocks = <&clk IMX8MP_CLK_TSENSOR_ROOT>;
+				#thermal-sensor-cells = <1>;
+			};
+
 			wdog1: watchdog@30280000 {
 				compatible = "fsl,imx8mp-wdt", "fsl,imx21-wdt";
 				reg = <0x30280000 0x10000>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
