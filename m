Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087C145743
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vpBGcHWFJ5tIVSHZ6IxCzETdMMVgA/Q3/mY/WGAFg2s=; b=GB0VwcdS5VBxdlxLcwmd2R1SYM
	F4nWPYAlnvTh1XwzWCFC8FjxVSDCOu4JiG6L84YujHdBQY6iKxbeA34fRvbpBoiACqtRNNrlxNADo
	pKjoxsuOOjD+t1G4NtY22EyKykUTn0j8bJ3SJRkBDEGTftqH+KmsY6QB0z+AL5EF3A2xh38pr4x6l
	SqvzsGeOrvc9zOmtL83/+c02X1OjdZK+DSZcbGkANtsMKFsEowOhk06IM1922pVsrlewHjHapgm6S
	0O9Ttj/Bpl/TDoe+nypx+YvMo33X7mT1G7Oq+wdONE5GNYNLA+uOtNUkTVSDjUR0xjvSiblUL+S6L
	CoNZhrMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhPV-0008Gh-Ic; Fri, 14 Jun 2019 08:18:09 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhNH-0006jG-09
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:15:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9DAD92005E8;
 Fri, 14 Jun 2019 10:15:49 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 53E43200077;
 Fri, 14 Jun 2019 10:15:43 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9EEC14031C;
 Fri, 14 Jun 2019 16:15:35 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, mark.rutland@arm.com, vkoul@kernel.org,
 dan.j.williams@intel.com, angelo@sysam.it
Subject: [PATCH v4 4/6] dt-bindings: dma: fsl-edma: add new i.mx7ulp-edma
Date: Fri, 14 Jun 2019 16:17:22 +0800
Message-Id: <20190614081724.13366-5-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190614081724.13366-1-yibin.gong@nxp.com>
References: <20190614081724.13366-1-yibin.gong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_011551_362804_05F6AC9D 
X-CRM114-Status: GOOD (  12.61  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Gong <yibin.gong@nxp.com>

More channel interrupts, one more clock, and only one
dmamux on i.mx7ulp-edma.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 Documentation/devicetree/bindings/dma/fsl-edma.txt | 44 +++++++++++++++++++---
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/fsl-edma.txt b/Documentation/devicetree/bindings/dma/fsl-edma.txt
index 97e213e..29dd3cc 100644
--- a/Documentation/devicetree/bindings/dma/fsl-edma.txt
+++ b/Documentation/devicetree/bindings/dma/fsl-edma.txt
@@ -9,15 +9,16 @@ group, DMAMUX0 or DMAMUX1, but not both.
 Required properties:
 - compatible :
 	- "fsl,vf610-edma" for eDMA used similar to that on Vybrid vf610 SoC
+	- "fsl,imx7ulp-edma" for eDMA2 used similar to that on i.mx7ulp
 - reg : Specifies base physical address(s) and size of the eDMA registers.
 	The 1st region is eDMA control register's address and size.
 	The 2nd and the 3rd regions are programmable channel multiplexing
 	control register's address and size.
 - interrupts : A list of interrupt-specifiers, one for each entry in
-	interrupt-names.
-- interrupt-names : Should contain:
-	"edma-tx" - the transmission interrupt
-	"edma-err" - the error interrupt
+	interrupt-names on vf610 similar SoC. But for i.mx7ulp per channel
+	per transmission interrupt, total 16 channel interrupt and 1
+	error interrupt(located in the last), no interrupt-names list on
+	i.mx7ulp for clean on dts.
 - #dma-cells : Must be <2>.
 	The 1st cell specifies the DMAMUX(0 for DMAMUX0 and 1 for DMAMUX1).
 	Specific request source can only be multiplexed by specific channels
@@ -28,6 +29,7 @@ Required properties:
 - clock-names : A list of channel group clock names. Should contain:
 	"dmamux0" - clock name of mux0 group
 	"dmamux1" - clock name of mux1 group
+	Note: No dmamux0 on i.mx7ulp, but another 'dma' clk added on i.mx7ulp.
 - clocks : A list of phandle and clock-specifier pairs, one for each entry in
 	clock-names.
 
@@ -35,6 +37,10 @@ Optional properties:
 - big-endian: If present registers and hardware scatter/gather descriptors
 	of the eDMA are implemented in big endian mode, otherwise in little
 	mode.
+- interrupt-names : Should contain the below on vf610 similar SoC but not used
+	on i.mx7ulp similar SoC:
+	"edma-tx" - the transmission interrupt
+	"edma-err" - the error interrupt
 
 
 Examples:
@@ -52,8 +58,36 @@ edma0: dma-controller@40018000 {
 	clock-names = "dmamux0", "dmamux1";
 	clocks = <&clks VF610_CLK_DMAMUX0>,
 		<&clks VF610_CLK_DMAMUX1>;
-};
+}; /* vf610 */
 
+edma1: dma-controller@40080000 {
+	#dma-cells = <2>;
+	compatible = "fsl,imx7ulp-edma";
+	reg = <0x40080000 0x2000>,
+		<0x40210000 0x1000>;
+	dma-channels = <32>;
+	interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
+		     /* last is eDMA2-ERR interrupt */
+		     <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+	clock-names = "dma", "dmamux0";
+	clocks = <&pcc2 IMX7ULP_CLK_DMA1>,
+		 <&pcc2 IMX7ULP_CLK_DMA_MUX1>;
+}; /* i.mx7ulp */
 
 * DMA clients
 DMA client drivers that uses the DMA function must use the format described
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
