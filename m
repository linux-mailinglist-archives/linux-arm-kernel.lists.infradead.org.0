Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93C32D8A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vpBGcHWFJ5tIVSHZ6IxCzETdMMVgA/Q3/mY/WGAFg2s=; b=cd/aT0M6W9zQObKTmeF0DNh8cV
	bfWzyXVRbhGZb4Cag+xNLXs0p1pDHEU2jMN646lqdHm5HkgFAB3TF39z+aJfRsUfpGmGUo4FGU10N
	w243MB0nMC9d7QUUAlAK8E3Hi46CkjEt85IzBerPOuhVv68uSSPbTLvc0mLwtUqVyxmYO8cwiO2k9
	i/SMAlgOXqEdtRle2muZtBZ9zNR/3XeYma/dFtMOJN+Grb+VR4hbwcU/PKrHrSGjVlOyto8Sk7cq7
	FMYhAbnlLXGeYCTpMRKDIdqvofmBfrIhUKjM1AI8NbKYKG42uXMV1oM9LSQOSfErX+dPPKUoQb8mT
	naCf9Jvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuZT-0003u5-Nt; Wed, 29 May 2019 09:08:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuYJ-0002c3-8t
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:07:26 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D8B2E1A0006;
 Wed, 29 May 2019 11:07:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EC4B51A03C9;
 Wed, 29 May 2019 11:07:11 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6A51140314;
 Wed, 29 May 2019 17:07:02 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, mark.rutland@arm.com, vkoul@kernel.org,
 dan.j.williams@intel.com
Subject: [PATCH v3 6/8] dt-bindings: dma: fsl-edma: add new i.mx7ulp-edma
Date: Wed, 29 May 2019 17:08:46 +0800
Message-Id: <20190529090848.34350-7-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190529090848.34350-1-yibin.gong@nxp.com>
References: <20190529090848.34350-1-yibin.gong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_020719_890273_021887D4 
X-CRM114-Status: GOOD (  13.32  )
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
