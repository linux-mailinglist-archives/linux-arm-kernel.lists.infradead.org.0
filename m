Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539AC2D8A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tFp4U+3YBVt8EthNcZwmiZqbXMCj33aPiH31t1XmJQA=; b=XgtgrHvcZ2vc1V2J5JcFP1C2RO
	9GXcmk0w8ES9MLPo75uHIvDL5YM22VkHTDOlNA/t5OdLkRLve1iAFsBFrY/9AuOLrOu4tQqH3/Hz2
	/hrsEEnQQTbCxH3NhhhlUhLPidT+suB3YOrQmA/fbIcP86qeorLdpaXGAOwlD3lJWDUz1SYzNRKOD
	EyO0REJ3j6QLlzbMg1gUGIbHsXXEtcUzDitbOOEXN8clHL9lCf4Lw4Bow5ridhIvYbHXiqlzvfpEY
	x5IMOjYm/MajPXIxoH/ifgKqsfKDDILhtKdxsXQPJ7i71Pkjavs7nvaCJQOCzXcdFq7JkVPPLj1lu
	IQhjTIVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuZd-00048g-Uh; Wed, 29 May 2019 09:08:41 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuYK-0002ep-OC
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:07:28 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8278820027C;
 Wed, 29 May 2019 11:07:19 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D052E2011E3;
 Wed, 29 May 2019 11:07:13 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id ECC314030B;
 Wed, 29 May 2019 17:07:04 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, mark.rutland@arm.com, vkoul@kernel.org,
 dan.j.williams@intel.com
Subject: [PATCH v3 8/8] ARM: dts: imx7ulp: add edma device node
Date: Wed, 29 May 2019 17:08:48 +0800
Message-Id: <20190529090848.34350-9-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190529090848.34350-1-yibin.gong@nxp.com>
References: <20190529090848.34350-1-yibin.gong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_020721_597356_FE159C77 
X-CRM114-Status: UNSURE (   7.34  )
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

Add edma device node in dts.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index d6b7110..b4f7adf 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -100,6 +100,34 @@
 		reg = <0x40000000 0x800000>;
 		ranges;
 
+		edma1: dma-controller@40080000 {
+			#dma-cells = <2>;
+			compatible = "fsl,imx7ulp-edma";
+			reg = <0x40080000 0x2000>,
+				<0x40210000 0x1000>;
+			dma-channels = <32>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "dma", "dmamux0";
+			clocks = <&pcc2 IMX7ULP_CLK_DMA1>,
+				 <&pcc2 IMX7ULP_CLK_DMA_MUX1>;
+		};
+
 		lpuart4: serial@402d0000 {
 			compatible = "fsl,imx7ulp-lpuart";
 			reg = <0x402d0000 0x1000>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
