Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E07ED85D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 04:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=p/jmxIkGjRHJxgzcrRrtHBZgyETmSVClmCGumikV0iY=; b=J+y
	7DzabLCPEG4+8AFrmM6rU/1d8Keji96rdR1XJl0zgIZghCyepigpB/G7xHBMOeCWjIHSeTP71RPTZ
	WdoUGGhmAzOllGDtOAnV42nU4d/03SAcJlnO0Ix28hYHw+3Gq6abvb4BYIaIu1vKPhkSpKWfHuxjZ
	Te/ICtyNUxv3ibDqUU8E1AFSUUGoKu2TQdoZQgVvG+HcaO4JicOMlWF5KMstFfXi2YA5NJoGwesKO
	j88I+Xy6nEYff7jCujr3wVR4K2HG//0Ccg6vtWCFN0a5WidqXgcekBrfRjDpufwck/jb7j0XjgYwS
	jeawVTywFxdOmlE2rRfyUpYuFl5bkHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKYtL-0003p4-5i; Wed, 16 Oct 2019 02:18:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKYsa-0003N5-FU
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 02:17:39 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 17F481A0854;
 Wed, 16 Oct 2019 04:17:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 205311A04F9;
 Wed, 16 Oct 2019 04:17:12 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id DC22C402B3;
 Wed, 16 Oct 2019 10:16:58 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 jun.li@nxp.com, ping.bai@nxp.com, daniel.baluta@nxp.com,
 leonard.crestez@nxp.com, daniel.lezcano@linaro.org, l.stach@pengutronix.de,
 ccaione@baylibre.com, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 jon@solid-run.com, baruch@tkos.co.il, angus@akkea.ca, pavel@ucw.cz,
 agx@sigxcpu.org, troy.kisky@boundarydevices.com,
 gary.bisson@boundarydevices.com, dafna.hirschfeld@collabora.com,
 richard.hu@technexion.com, andradanciu1997@gmail.com,
 manivannan.sadhasivam@linaro.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: imx8qxp: Move usdhc clocks assignment to
 board DT
Date: Wed, 16 Oct 2019 10:14:23 +0800
Message-Id: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_191736_794801_FD1330A4 
X-CRM114-Status: UNSURE (   8.77  )
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

usdhc's clock rate is different according to different devices
connected, so clock rate assignment should be placed in board
DT according to different devices connected on each usdhc port.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts | 4 ++++
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts   | 4 ++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi      | 6 ------
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
index 91eef97..a3f8cf1 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
@@ -133,6 +133,8 @@
 &usdhc1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
+	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	bus-width = <4>;
@@ -149,6 +151,8 @@
 
 /* SD */
 &usdhc2 {
+	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	bus-width = <4>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index 88dd9132..d3d26cc 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -137,6 +137,8 @@
 };
 
 &usdhc1 {
+	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	bus-width = <8>;
@@ -147,6 +149,8 @@
 };
 
 &usdhc2 {
+	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	bus-width = <4>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 2d69f1a..9646a41 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -368,8 +368,6 @@
 				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
 				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
 			clock-names = "ipg", "per", "ahb";
-			assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
-			assigned-clock-rates = <200000000>;
 			power-domains = <&pd IMX_SC_R_SDHC_0>;
 			status = "disabled";
 		};
@@ -383,8 +381,6 @@
 				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
 				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
 			clock-names = "ipg", "per", "ahb";
-			assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
-			assigned-clock-rates = <200000000>;
 			power-domains = <&pd IMX_SC_R_SDHC_1>;
 			fsl,tuning-start-tap = <20>;
 			fsl,tuning-step= <2>;
@@ -400,8 +396,6 @@
 				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_PER_CLK>,
 				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_HCLK>;
 			clock-names = "ipg", "per", "ahb";
-			assigned-clocks = <&clk IMX_CONN_SDHC2_CLK>;
-			assigned-clock-rates = <200000000>;
 			power-domains = <&pd IMX_SC_R_SDHC_2>;
 			status = "disabled";
 		};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
