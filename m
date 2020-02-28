Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1508B172F08
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 04:01:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+UMJ7+Q/Rs2kUu18rgAaiTMS1y6spjoevcP7vOJWtos=; b=Z13TvcAwxbnBloKrJ16BaGAzGf
	uIypjiA70Da8Yk5curRLjr1Bwl0bIXRf2vA5K9CtZW9Ygx1f7jqXiQfRUQLUq9BLI8ZWHreEPxiCm
	GJzHASqimjpkUJ1c5uFu+9HQ14dexYunzW0oISOA+L2J7rfeaVXl/+SWxv1lsYvbkpdMm2dRut0S+
	/qW5KudwSGFkHp0qeHB8sOHXw/4LGBhh1IYI5KzSJjJZZSlE+5S9thpYU+FQecC/NmzYWjm4cYsqr
	QnA7Ayw/v/QYHuklpUykQ+awAaJs0w5jvq+/LITpvWscb4gYHc8YGxsfS7uOT/CL3tS1UT0aESr6f
	cODcJLTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7VtS-00007d-Hi; Fri, 28 Feb 2020 03:00:50 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7VsY-0006fT-Uq
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 02:59:56 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DF139201000;
 Fri, 28 Feb 2020 03:59:52 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4E1A720AA5F;
 Fri, 28 Feb 2020 03:59:37 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 840F1402AD;
 Fri, 28 Feb 2020 10:59:24 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, aford173@gmail.com,
 shengjiu.wang@nxp.com, ping.bai@nxp.com, jun.li@nxp.com, peng.fan@nxp.com,
 bjorn.andersson@linaro.org, olof@lixom.net, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 4/4] arm64: dts: imx8mm: Add thermal zone support
Date: Fri, 28 Feb 2020 10:53:33 +0800
Message-Id: <1582858413-11906-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582858413-11906-1-git-send-email-Anson.Huang@nxp.com>
References: <1582858413-11906-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_185955_267885_90B9F3D6 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add thermal zone and tmu node to support i.MX8MM thermal
driver, ONLY cpu thermal zone is supported, and cpu cooling
is also added.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 43 +++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index b3d0b29..e438095 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -68,6 +68,7 @@
 			nvmem-cells = <&cpu_speed_grade>;
 			nvmem-cell-names = "speed_grade";
 			cpu-idle-states = <&cpu_pd_wait>;
+			#cooling-cells = <2>;
 		};
 
 		A53_1: cpu@1 {
@@ -80,6 +81,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			cpu-idle-states = <&cpu_pd_wait>;
+			#cooling-cells = <2>;
 		};
 
 		A53_2: cpu@2 {
@@ -92,6 +94,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			cpu-idle-states = <&cpu_pd_wait>;
+			#cooling-cells = <2>;
 		};
 
 		A53_3: cpu@3 {
@@ -104,6 +107,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			cpu-idle-states = <&cpu_pd_wait>;
+			#cooling-cells = <2>;
 		};
 
 		A53_L2: l2-cache0 {
@@ -204,6 +208,38 @@
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
@@ -363,6 +399,13 @@
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
