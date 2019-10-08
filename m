Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9C5CF010
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 02:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PZF6vGRfLb5nfmr051JMCW0FFBow768wHRmSy2b1ou0=; b=pm8z0pRp2Yap9ZMaRMk5xNqcmX
	ZVBKmiL92TK216mI8tyg1CranZ0GBH9RbUjMcAFhCGYaVJu2agJQ3YNSFEPFKMIg5mT9hjd3Z8LKc
	agJYGUNWO+k144UaGFgzvTrKLlNlLoCci98muCtUagZINxiTLyk6JGMhbvrgpKn646Vm7Y7qVwCNi
	Ef4hXTYG3dfnPcImsmPacJYlVURhwhlVHP2QuoHOyPp8mL7NpQ4a0KuIFVSbGaSNYEckB+wUFXQSX
	qj4cG3ZQLGgVn0TpRZI7Mu01mk81OIojykUX4/ebx03X0AN1KmZa0+ClnkNvbtN/15qdFhGOM70NS
	KKLXCt+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHdpq-0003Xq-BN; Tue, 08 Oct 2019 00:58:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdpS-0003Lw-3F
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 00:58:19 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CC6121A0058;
 Tue,  8 Oct 2019 02:58:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5B6F61A0337;
 Tue,  8 Oct 2019 02:58:07 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C6704402B1;
 Tue,  8 Oct 2019 08:57:55 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, daniel.lezcano@linaro.org, ping.bai@nxp.com,
 daniel.baluta@nxp.com, jun.li@nxp.com, abel.vesa@nxp.com,
 l.stach@pengutronix.de, andrew.smirnov@gmail.com, ccaione@baylibre.com,
 angus@akkea.ca, agx@sigxcpu.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 3/3] arm64: dts: imx8mn: Use correct clock for usdhc's ipg
 clk
Date: Tue,  8 Oct 2019 08:55:45 +0800
Message-Id: <1570496145-11053-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570496145-11053-1-git-send-email-Anson.Huang@nxp.com>
References: <1570496145-11053-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_175818_281989_62D3E2B6 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

On i.MX8MN, usdhc's ipg clock is from IMX8MN_CLK_IPG_ROOT,
assign it explicitly instead of using IMX8MN_CLK_DUMMY.

Fixes: 6c3debcbae47 ("arm64: dts: freescale: Add i.MX8MN dtsi support")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- Add fixes tag.
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 6cb6c9c..725a3a3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -594,7 +594,7 @@
 				compatible = "fsl,imx8mn-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x30b40000 0x10000>;
 				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clk IMX8MN_CLK_DUMMY>,
+				clocks = <&clk IMX8MN_CLK_IPG_ROOT>,
 					 <&clk IMX8MN_CLK_NAND_USDHC_BUS>,
 					 <&clk IMX8MN_CLK_USDHC1_ROOT>;
 				clock-names = "ipg", "ahb", "per";
@@ -610,7 +610,7 @@
 				compatible = "fsl,imx8mn-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x30b50000 0x10000>;
 				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clk IMX8MN_CLK_DUMMY>,
+				clocks = <&clk IMX8MN_CLK_IPG_ROOT>,
 					 <&clk IMX8MN_CLK_NAND_USDHC_BUS>,
 					 <&clk IMX8MN_CLK_USDHC2_ROOT>;
 				clock-names = "ipg", "ahb", "per";
@@ -624,7 +624,7 @@
 				compatible = "fsl,imx8mn-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x30b60000 0x10000>;
 				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clk IMX8MN_CLK_DUMMY>,
+				clocks = <&clk IMX8MN_CLK_IPG_ROOT>,
 					 <&clk IMX8MN_CLK_NAND_USDHC_BUS>,
 					 <&clk IMX8MN_CLK_USDHC3_ROOT>;
 				clock-names = "ipg", "ahb", "per";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
