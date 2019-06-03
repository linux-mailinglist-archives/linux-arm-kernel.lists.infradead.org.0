Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D43C325C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 02:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Kf75VzpQxKsQKaAAKaNcZfpsweDlYns64HYpTxUqvB8=; b=Sv1
	RPzerOiJdTj6e/+7Mtt1DSNLBQDNejSiTPUCpNLrGwXeYfE303RrBlwbOdAQQtOXFbRyyyWo1iRyJ
	Y0Y1TcdmTvUaP1zj4cNuvJYXrhOoOz1i+KcQsxHjlkdBhdebIQ+KhUjWu1ta/h5BRFuLo/iG2aKhE
	0anrAHVBWeTtQ2oHVWRYHG9T4rgcTfiUau2mdDV+KmPDRE/b5+48XVsdzmx2Qyi/ADk2uHKiCYCXy
	1q+R1nJK8tac9gX+RqJ/IkQrwvssmAmv1sfIUMkuxq3WZ3YWfuuqqpiINzWZMssbCkT1EJFJDfixx
	FGKVfUNC7RJwJHMrsNWvJnWzFhC6eSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXb7m-0005gv-D2; Mon, 03 Jun 2019 00:46:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXb7e-0005gR-DK
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 00:46:48 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 210161A001B;
 Mon,  3 Jun 2019 02:46:38 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D41D91A02FA;
 Mon,  3 Jun 2019 02:46:31 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2957B402CF;
 Mon,  3 Jun 2019 08:46:24 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, aisheng.dong@nxp.com, viresh.kumar@linaro.org,
 ping.bai@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mm: Fix build warnings
Date: Mon,  3 Jun 2019 08:48:20 +0800
Message-Id: <20190603004820.36247-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_174646_736586_FD7D3646 
X-CRM114-Status: UNSURE (   8.20  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

This patch fixes below build warning with "W=1":

arch/arm64/boot/dts/freescale/imx8mm.dtsi:203.6-754.4:
 Warning (unit_address_vs_reg): /soc: node has a reg or
 ranges property, but no unit name
arch/arm64/boot/dts/freescale/imx8mm.dtsi:209.23-388.5:
 Warning (unit_address_vs_reg): /soc/bus@30000000: node
 has a unit name, but no reg property
arch/arm64/boot/dts/freescale/imx8mm.dtsi:390.23-439.5:
 Warning (unit_address_vs_reg): /soc/bus@30400000: node
 has a unit name, but no reg property
arch/arm64/boot/dts/freescale/imx8mm.dtsi:441.23-658.5:
 Warning (unit_address_vs_reg): /soc/bus@30800000: node
 has a unit name, but no reg property
arch/arm64/boot/dts/freescale/imx8mm.dtsi:660.23-724.5:
 Warning (unit_address_vs_reg): /soc/bus@32c00000: node
 has a unit name, but no reg property
arch/arm64/boot/dts/freescale/imx8mm.dtsi:681.27-687.6:
 Warning (simple_bus_reg): /soc/bus@32c00000/usbphynop1:
 missing or empty reg/ranges property
arch/arm64/boot/dts/freescale/imx8mm.dtsi:710.27-716.6:
 Warning (simple_bus_reg): /soc/bus@32c00000/usbphynop2:
 missing or empty reg/ranges property

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 38 +++++++++++++++++--------------
 1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 708d3c4..dc99f45 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -200,7 +200,7 @@
 		arm,no-tick-in-suspend;
 	};
 
-	soc {
+	soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -208,6 +208,7 @@
 
 		aips1: bus@30000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x30000000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -389,6 +390,7 @@
 
 		aips2: bus@30400000 {
 			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x30400000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -440,6 +442,7 @@
 
 		aips3: bus@30800000 {
 			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x30800000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -659,6 +662,7 @@
 
 		aips4: bus@32c00000 {
 			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x32c00000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -678,14 +682,6 @@
 				status = "disabled";
 			};
 
-			usbphynop1: usbphynop1 {
-				compatible = "usb-nop-xceiv";
-				clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
-				assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
-				clock-names = "main_clk";
-			};
-
 			usbmisc1: usbmisc@32e40200 {
 				compatible = "fsl,imx8mm-usbmisc", "fsl,imx7d-usbmisc";
 				#index-cells = <1>;
@@ -707,14 +703,6 @@
 				status = "disabled";
 			};
 
-			usbphynop2: usbphynop2 {
-				compatible = "usb-nop-xceiv";
-				clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
-				assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
-				clock-names = "main_clk";
-			};
-
 			usbmisc2: usbmisc@32e50200 {
 				compatible = "fsl,imx8mm-usbmisc", "fsl,imx7d-usbmisc";
 				#index-cells = <1>;
@@ -752,4 +740,20 @@
 			status = "disabled";
 		};
 	};
+
+	usbphynop1: usbphynop1 {
+		compatible = "usb-nop-xceiv";
+		clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
+		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
+		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
+		clock-names = "main_clk";
+	};
+
+	usbphynop2: usbphynop2 {
+		compatible = "usb-nop-xceiv";
+		clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
+		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
+		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
+		clock-names = "main_clk";
+	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
