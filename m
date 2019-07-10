Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6255645C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 13:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xyvuGun84/uDqc8vU4p8ShL3kJEgY0VBJmRZHiSPicc=; b=gHwIkKiXSiPLRiuuhcfyiAmGUg
	LGPFbtj6wu+tnSuXi1gYlZLkqq4I72VQ7y5wy5NVUnCMd/xLR0l9Va/otGAXa5f7TbSBu3hc8ZwbE
	H/YEWlwIRT2b8Dv2+UmdiGSIa5KgLUIAS0i2DcrI8r41GCLdlBW5XhaPtMYgljHLtkhq7XS/mq2im
	HXq62KT3223D4SVWAw+mt0CleT3ZAc2f253DNR0K3LlaWKykAJxhBPP7TOLnD4G7pxKD+r+3rW3uv
	yNxuS9U/XOLHMIqsZxFhofw4rXhhgHct9/Vlj7eIQF5L/03aJBoyZrUIAFo22Xs/yL15ZcX6Yce1+
	0wcaqzsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlAmd-00010b-Fu; Wed, 10 Jul 2019 11:29:11 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAmE-0000nX-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 11:28:47 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 790D82002DA;
 Wed, 10 Jul 2019 13:28:42 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B7E8320070E;
 Wed, 10 Jul 2019 13:28:31 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AD956402E3;
 Wed, 10 Jul 2019 19:28:18 +0800 (SGT)
From: jun.li@nxp.com
To: shawnguo@kernel.org,
	sboyd@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mq: correct usb controller clocks
Date: Wed, 10 Jul 2019 19:19:17 +0800
Message-Id: <20190710111917.6615-2-jun.li@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190710111917.6615-1-jun.li@nxp.com>
References: <20190710111917.6615-1-jun.li@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_042846_513195_BB15BBA4 
X-CRM114-Status: UNSURE (   6.58  )
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
Cc: mark.rutland@arm.com, peter.chen@nxp.com, agx@sigxcpu.org, ping.bai@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 mturquette@baylibre.com, angus@akkea.ca, linux-clk@vger.kernel.org,
 abel.vesa@nxp.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Li Jun <jun.li@nxp.com>

The correct clock for "bus_early", "ref", "suspend" should be:
IMX8MQ_CLK_USB1_CTRL_ROOT, IMX8MQ_CLK_USB_CORE_REF, IMX8MQ_CLK_32K,
especially we may need the right suspend clock rate to set register
in controller driver.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d09b808..a43ddac 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -901,9 +901,9 @@
 		usb_dwc3_0: usb@38100000 {
 			compatible = "fsl,imx8mq-dwc3", "snps,dwc3";
 			reg = <0x38100000 0x10000>;
-			clocks = <&clk IMX8MQ_CLK_USB_BUS>,
+			clocks = <&clk IMX8MQ_CLK_USB1_CTRL_ROOT>,
 			         <&clk IMX8MQ_CLK_USB_CORE_REF>,
-			         <&clk IMX8MQ_CLK_USB1_CTRL_ROOT>;
+				 <&clk IMX8MQ_CLK_32K>;
 			clock-names = "bus_early", "ref", "suspend";
 			assigned-clocks = <&clk IMX8MQ_CLK_USB_BUS>,
 			                  <&clk IMX8MQ_CLK_USB_CORE_REF>;
@@ -933,9 +933,9 @@
 		usb_dwc3_1: usb@38200000 {
 			compatible = "fsl,imx8mq-dwc3", "snps,dwc3";
 			reg = <0x38200000 0x10000>;
-			clocks = <&clk IMX8MQ_CLK_USB_BUS>,
+			clocks = <&clk IMX8MQ_CLK_USB2_CTRL_ROOT>,
 			         <&clk IMX8MQ_CLK_USB_CORE_REF>,
-			         <&clk IMX8MQ_CLK_USB2_CTRL_ROOT>;
+				 <&clk IMX8MQ_CLK_32K>;
 			clock-names = "bus_early", "ref", "suspend";
 			assigned-clocks = <&clk IMX8MQ_CLK_USB_BUS>,
 			                  <&clk IMX8MQ_CLK_USB_CORE_REF>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
