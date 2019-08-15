Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695048EA1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:20:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OK/4OGhxAAh1wX+IQMvZ7feYQYO75EErC64RcH/iIsQ=; b=DvcFh7AMVc0AUN8EjsDj/zVYzo
	jE2Yfb9UyGeKpmGpF8yMr3eGXsBmb80hRXQztVeW2jMKzaadiPpq145ET3lFuS0VMByfawA6VJ3Pf
	O3nB114OubAo5LijKR+qXk6kbS/yo6RVl4EIC2+Fiipo4R4y4wpEplNg2wYeXUMz4EjMU/ZqUALjg
	G40sGfoaHTwZIWqflZBumXuBw+iESXAryAxYUkuICoiLvN5L+QSNgoTAEDp/fhTe5BDg5pWPZZZx2
	JVblx3YvsGfXe1zs2jBFIaNG6KVBzC62UeXaWLvjBRpiszTbZ+/SYc6bZuYPQWbSBOc6VQbKf+lCT
	spC5cBjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDnU-0002Fe-SC; Thu, 15 Aug 2019 11:20:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDlu-00015G-1s
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:18:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C82F42000B7;
 Thu, 15 Aug 2019 13:18:20 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E3819200296;
 Thu, 15 Aug 2019 13:18:12 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8A56340313;
 Thu, 15 Aug 2019 19:18:03 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, rjw@rjwysocki.net,
 viresh.kumar@linaro.org, leonard.crestez@nxp.com, abel.vesa@nxp.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: [PATCH 6/6] arm64: dts: imx8mn: Add cpu-freq support
Date: Thu, 15 Aug 2019 06:59:43 -0400
Message-Id: <1565866783-19672-6-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565866783-19672-1-git-send-email-Anson.Huang@nxp.com>
References: <1565866783-19672-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_041822_619786_754AA49B 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Add A53 OPP table, cpu regulator and speed grading node to
support cpu-freq driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts |  4 +++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi         | 41 +++++++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
index 10ebf77..11c705d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
@@ -27,6 +27,10 @@
 	};
 };
 
+&A53_0 {
+	cpu-supply = <&buck2_reg>;
+};
+
 &iomuxc {
 	pinctrl-names = "default";
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 1d8899b..785f4c4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -51,6 +51,9 @@
 			clocks = <&clk IMX8MN_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
+			operating-points-v2 = <&a53_opp_table>;
+			nvmem-cells = <&cpu_speed_grade>;
+			nvmem-cell-names = "speed_grade";
 		};
 
 		A53_1: cpu@1 {
@@ -61,6 +64,7 @@
 			clocks = <&clk IMX8MN_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
+			operating-points-v2 = <&a53_opp_table>;
 		};
 
 		A53_2: cpu@2 {
@@ -71,6 +75,7 @@
 			clocks = <&clk IMX8MN_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
+			operating-points-v2 = <&a53_opp_table>;
 		};
 
 		A53_3: cpu@3 {
@@ -81,6 +86,7 @@
 			clocks = <&clk IMX8MN_CLK_ARM>;
 			enable-method = "psci";
 			next-level-cache = <&A53_L2>;
+			operating-points-v2 = <&a53_opp_table>;
 		};
 
 		A53_L2: l2-cache0 {
@@ -88,6 +94,35 @@
 		};
 	};
 
+	a53_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <850000>;
+			opp-supported-hw = <0xb00>, <0x7>;
+			clock-latency-ns = <150000>;
+			opp-suspend;
+		};
+
+		opp-1400000000 {
+			opp-hz = /bits/ 64 <1400000000>;
+			opp-microvolt = <950000>;
+			opp-supported-hw = <0x300>, <0x7>;
+			clock-latency-ns = <150000>;
+			opp-suspend;
+		};
+
+		opp-1500000000 {
+			opp-hz = /bits/ 64 <1500000000>;
+			opp-microvolt = <1000000>;
+			opp-supported-hw = <0x100>, <0x3>;
+			clock-latency-ns = <150000>;
+			opp-suspend;
+		};
+	};
+
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0 0x80000000>;
@@ -288,6 +323,12 @@
 				compatible = "fsl,imx8mn-ocotp", "fsl,imx7d-ocotp", "syscon";
 				reg = <0x30350000 0x10000>;
 				clocks = <&clk IMX8MN_CLK_OCOTP_ROOT>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				cpu_speed_grade: speed-grade@10 {
+					reg = <0x10 4>;
+				};
 			};
 
 			anatop: anatop@30360000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
