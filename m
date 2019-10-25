Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611F4E4601
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kb3vs4KwpUawk+f7pFZy5uj35GzDK/3mOD0giMKItG4=; b=TmAHwIDxT5S4ae
	1TmZc/Ja9Jsd/NOlKX54sRB4BxWt+T4fKi1RJR3qllAr8yEOR/wtGlYGalTKXtW+Y4VjbczP+ttSd
	GOH9L+HOBPo8rMaRmH5PFseevC2rpEjJfy4NwwKsQaY5T79GPvhIIT++CbXKbSQvNhhOv989h/Vdu
	Nyry1bLxDpc2Hxr66HL5CGaXs7IRnr6g/keK28z9/Ey4XVthcDq8qMlhOenXxeIl0FuBNtqR5cRS+
	hC/LZPliajgrG7UWQoW2jAG70fAEblC+qWxfDlsyWMUg3xgb2pMPl7nFZSz79lqDwNCIg6HuFv/yV
	MhE3SPZTUE51RI4MGueg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvC3-0004c1-Nm; Fri, 25 Oct 2019 08:43:35 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvBs-0004bT-EQ
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:43:25 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 106B120043F;
 Fri, 25 Oct 2019 10:43:23 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CA255200444;
 Fri, 25 Oct 2019 10:43:15 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BA655402DA;
 Fri, 25 Oct 2019 16:43:06 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, Anson.Huang@nxp.com, ping.bai@nxp.com, jun.li@nxp.com,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, daniel.lezcano@linaro.org,
 shengjiu.wang@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM64: imx8mn: Change compatible string for sdma
Date: Fri, 25 Oct 2019 16:40:07 +0800
Message-Id: <1571992807-31378-1-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_014324_627855_0EB5046C 
X-CRM114-Status: UNSURE (   8.20  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SDMA in i.MX8MN should use same configuration as i.MX8MQ
So need to change compatible string to be "fsl,imx8mq-sdma".

Fixes: 6c3debcbae47 ("arm64: dts: freescale: Add i.MX8MN dtsi support")
Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 785f4c420fa4..92fac295ca21 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -288,7 +288,7 @@
 			};
 
 			sdma3: dma-controller@302b0000 {
-				compatible = "fsl,imx8mn-sdma", "fsl,imx7d-sdma";
+				compatible = "fsl,imx8mn-sdma", "fsl,imx8mq-sdma";
 				reg = <0x302b0000 0x10000>;
 				interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MN_CLK_SDMA3_ROOT>,
@@ -299,7 +299,7 @@
 			};
 
 			sdma2: dma-controller@302c0000 {
-				compatible = "fsl,imx8mn-sdma", "fsl,imx7d-sdma";
+				compatible = "fsl,imx8mn-sdma", "fsl,imx8mq-sdma";
 				reg = <0x302c0000 0x10000>;
 				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MN_CLK_SDMA2_ROOT>,
@@ -612,7 +612,7 @@
 			};
 
 			sdma1: dma-controller@30bd0000 {
-				compatible = "fsl,imx8mn-sdma", "fsl,imx7d-sdma";
+				compatible = "fsl,imx8mn-sdma", "fsl,imx8mq-sdma";
 				reg = <0x30bd0000 0x10000>;
 				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MN_CLK_SDMA1_ROOT>,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
