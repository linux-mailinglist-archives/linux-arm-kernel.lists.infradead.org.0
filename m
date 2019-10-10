Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC100D2318
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QCZbqdfdU4Ce9kDrk2cujFTBuZdKuMhY5CCqmpbMp7g=; b=EwJ
	Zi/PblAxjo40ld+mwueTQH+c+XajiTYmsy6vNihtMV9SAWj4NeImNmKXAXB8nwOKckfudYnAbOm/X
	6drOzdLbf6bSjE7LQrY6fkgZ1jFbLo60CQa4cmBn7u2kAadOxoa39CEHSWWvyQ42AalWGjWDuRvUJ
	t0HXEm4QYOQMYbmAeyXJk5kd/lHJYNl4th/EFx8ZPgl0eM1ZQkfDWPqKxbIwq3gY6EvCP3cJ9tV9l
	1fGzKB2o42xnCC2x3hQMaun2d3niZWwFN2qapCHCnrhSl+crt8i6L0YEib/pc1fV+SHGZNbusf8k2
	W9eVGFBZ/tAx0ODL7XBGkQAsumR7U6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIU0x-0000dA-6Y; Thu, 10 Oct 2019 08:41:39 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIU0f-0000b0-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:41:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 378E32008AA;
 Thu, 10 Oct 2019 10:41:13 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F275020091A;
 Thu, 10 Oct 2019 10:41:08 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B2D7E4031C;
 Thu, 10 Oct 2019 16:41:03 +0800 (SGT)
From: Yuantian Tang <andy.tang@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH v2] arm64: dts: lx2160a: add tmu device node
Date: Thu, 10 Oct 2019 16:30:22 +0800
Message-Id: <20191010083022.6700-1-andy.tang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_014122_317176_71FCD87D 
X-CRM114-Status: UNSURE (   8.17  )
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
v2:
	- sort the node and use micro to replace hardcoded number

 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 108 +++++++++++++++---
 1 file changed, 92 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 80268c6ed5fb..72054fe1cafe 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -6,6 +6,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/thermal/thermal.h>
 
 /memreserve/ 0x80000000 0x00010000;
 
@@ -20,7 +21,7 @@
 		#size-cells = <0>;
 
 		// 8 clusters having 2 Cortex-A72 cores each
-		cpu@0 {
+		cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			enable-method = "psci";
@@ -34,9 +35,10 @@
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
@@ -50,9 +52,10 @@
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
@@ -66,9 +69,10 @@
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
@@ -82,9 +86,10 @@
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
@@ -98,9 +103,10 @@
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
@@ -114,9 +120,10 @@
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
@@ -130,9 +137,10 @@
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
@@ -146,9 +154,10 @@
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
@@ -162,9 +171,10 @@
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
@@ -178,9 +188,10 @@
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
@@ -194,9 +205,10 @@
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
@@ -210,9 +222,10 @@
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
@@ -226,9 +239,10 @@
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
@@ -242,9 +256,10 @@
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
@@ -258,9 +273,10 @@
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
@@ -274,6 +290,7 @@
 			i-cache-sets = <192>;
 			next-level-cache = <&cluster7_l2>;
 			cpu-idle-states = <&cpu_pw20>;
+			#cooling-cells = <2>;
 		};
 
 		cluster0_l2: l2-cache0 {
@@ -418,6 +435,51 @@
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
@@ -478,6 +540,20 @@
 			little-endian;
 		};
 
+		tmu: tmu@1f80000 {
+			compatible = "fsl,qoriq-tmu";
+			reg = <0x0 0x1f80000 0x0 0x10000>;
+			interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+			fsl,tmu-range = <0x800000e6 0x8001017d>;
+			fsl,tmu-calibration =
+				/* Calibration data group 1 */
+				<0x00000000 0x00000035
+				/* Calibration data group 2 */
+				0x00010001 0x00000154>;
+			little-endian;
+			#thermal-sensor-cells = <1>;
+		};
+
 		i2c0: i2c@2000000 {
 			compatible = "fsl,vf610-i2c";
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
