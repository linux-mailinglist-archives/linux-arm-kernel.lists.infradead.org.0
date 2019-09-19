Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC84B7276
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BQp+vVj3gKjVqS0tEpieR0hzb7aFYA81kTaSTlZ8VqE=; b=mntF8uSgLKJLX3aED5o21hLNxq
	a8lcoFEBYeWQVQG9vz+ZDdRaKeNazh0PeCbQBycjtJWe+ucWdY6LbHxAL8qFfdMox0qD3NZN4eHf3
	iLjlgR8FbjYutkFgbtzluxSCDeK8D14QxFHxCXdotrEV3n5Kx3qx6oyecK3u3NjcCp7txt/Cw3UKZ
	ZVmt3q3gYO8rupCaXFaJZMDpqFF8DzsYdrP3k35liWVNeiqsybMm1qloFHm06Zk1cJrSe1FVGpOaG
	fRoepPRkleFyF+iyk0Y8CsTr2zxW99ktv3DEwycROMqe+FH0iUIfRyWN6GfRUnuebFJJAgki9fNTh
	Ll73pzwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAofX-0005Ls-EV; Thu, 19 Sep 2019 05:07:51 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAofK-0005KR-4I
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 05:07:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8113020039E;
 Thu, 19 Sep 2019 07:07:35 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9F8862000D8;
 Thu, 19 Sep 2019 07:07:25 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9C87F402E6;
 Thu, 19 Sep 2019 13:07:13 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, daniel.lezcano@linaro.org, ping.bai@nxp.com,
 daniel.baluta@nxp.com, jun.li@nxp.com, l.stach@pengutronix.de,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, angus@akkea.ca,
 ccaione@baylibre.com, agx@sigxcpu.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: imx8mn: Use correct clock for usdhc's ipg clk
Date: Thu, 19 Sep 2019 13:05:59 +0800
Message-Id: <1568869559-28611-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568869559-28611-1-git-send-email-Anson.Huang@nxp.com>
References: <1568869559-28611-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_220738_310862_E8EC525C 
X-CRM114-Status: UNSURE (   8.40  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On i.MX8MN, usdhc's ipg clock is from IMX8MN_CLK_IPG_ROOT,
assign it explicitly instead of using IMX8MN_CLK_DUMMY.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
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
