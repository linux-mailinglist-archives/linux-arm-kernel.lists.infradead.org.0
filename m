Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AF6A5FD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 05:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XxqdASqHtZKWIWxhLEreFtbff9vzZiVlxcXojFRFufg=; b=r1z
	+ldGiuC42ZBFGO4n2s8IPY0po2Pl3wfSJHbIt0KD3o7XTUz9HLGPx29AdhefFjry8IB2KkJJ5njdY
	oduEPHI3V3EVKkt+93zFN7QPEzTRBPLIr2GquoM7vKrHC6bjotfnzWmtImYi8itDnNVkQ+dXQoUQi
	ZmmYLWJYl4UN9OqFcap4gEigjRpE6EK6eFHQvs9BPA8A2aSL7dvFEFHNfshrohEICtM3n0r4PNWRx
	90dU+nbbd63ckeAFx/dSKQ/q3zDEtLo8ttzc+ZF4+4lj5JSIdgqhiBY3nO14G02O4HiPq2owDPN9p
	qdoY+ttcRG1eKHhf7p6Vh4hxaNEyQ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4zhd-0007IY-I0; Tue, 03 Sep 2019 03:41:57 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4zhQ-0007HR-6t
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 03:41:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ACC60200231;
 Tue,  3 Sep 2019 05:41:40 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A7E5C200264;
 Tue,  3 Sep 2019 05:41:36 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A9DA6402B1;
 Tue,  3 Sep 2019 11:41:31 +0800 (SGT)
From: Yuantian Tang <andy.tang@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: lx2160a: add tmu device node
Date: Tue,  3 Sep 2019 11:31:32 +0800
Message-Id: <20190903033132.17661-1-andy.tang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_204144_538238_01A44384 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Yuantian Tang <andy.tang@nxp.com>, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the TMU (Thermal Monitoring Unit) device node to enable
TMU feature.

Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
---
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 108 +++++++++++++++---
 1 file changed, 92 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 39d497df769e..e70ddd01cd84 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -6,6 +6,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/thermal/thermal.h>
 
 /memreserve/ 0x80000000 0x00010000;
 
@@ -24,7 +25,7 @@
 		#size-cells = <0>;
 
 		// 8 clusters having 2 Cortex-A72 cores each
-		cpu@0 {
+		cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -38,9 +39,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster0_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@1 {
+		cpu1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -54,9 +56,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster0_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@100 {
+		cpu100: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -70,9 +73,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster1_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@101 {
+		cpu101: cpu@101 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -86,9 +90,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster1_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@200 {
+		cpu200: cpu@200 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -102,9 +107,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster2_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@201 {
+		cpu201: cpu@201 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -118,9 +124,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster2_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@300 {
+		cpu300: cpu@300 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -134,9 +141,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster3_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@301 {
+		cpu301: cpu@301 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -150,9 +158,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster3_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@400 {
+		cpu400: cpu@400 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -166,9 +175,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster4_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@401 {
+		cpu401: cpu@401 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -182,9 +192,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster4_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@500 {
+		cpu500: cpu@500 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -198,9 +209,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster5_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@501 {
+		cpu501: cpu@501 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -214,9 +226,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster5_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@600 {
+		cpu600: cpu@600 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -230,9 +243,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster6_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@601 {
+		cpu601: cpu@601 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -246,9 +260,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster6_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@700 {
+		cpu700: cpu@700 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -262,9 +277,10 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster7_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
-		cpu@701 {
+		cpu701: cpu@701 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -278,6 +294,7 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster7_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
 		cluster0_l2: l2-cache0 {
@@ -422,6 +439,51 @@
 		clock-output-names = "sysclk";
 	};
 
+	thermal-zones {
+		core_thermal1: core-thermal1 {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tmu 0>;
+
+			trips {
+				core_cluster_alert: core-cluster-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				core_cluster_crit: core-cluster-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&core_cluster_alert>;
+					cooling-device =
+						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu200 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu201 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu300 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu301 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu400 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu401 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu500 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu501 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu600 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu601 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu700 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu701 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -689,6 +751,20 @@
 			status = "disabled";
 		};
 
+		tmu: tmu@1f80000 {
+			compatible = "fsl,qoriq-tmu";
+			reg = <0x0 0x1f80000 0x0 0x10000>;
+			interrupts = <0 23 0x4>;
+			fsl,tmu-range = <0x800000E6 0x8001017D>;
+			fsl,tmu-calibration =
+				/* Calibration data group 1 */
+				<0x00000000 0x00000035
+				/* Calibration data group 2 */
+				0x00010001 0x00000154>;
+			little-endian;
+			#thermal-sensor-cells = <1>;
+		};
+
 		uart0: serial@21c0000 {
 			compatible = "arm,sbsa-uart","arm,pl011";
 			reg = <0x0 0x21c0000 0x0 0x1000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
