Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EB91473F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rmceMZ0QHLDj2TvNYS7AtnnU/QzgIgNlCa8gWCTHsto=; b=cG3
	q/JKa2S3pQE0y74TrVN+uVtC2o2UiQI02zfXrTudhfw5BMHbHRCtcs2J01LzOzEkAWQ3lNqbGlxM1
	cedcF1KRDdcbJKZ0m1pMZdj517fL4Jy5jnYOCmDD4gja58cNAnM95nDeeeopvqwNhqVjUKTiu6fw+
	A4j63noyTJrOBF7cRWTVfw9Muoh4l8850btfgnMPKzNbMzCbozMPgoPz4pfZlio4xXnYJVbKYpN86
	PwUKPe0CiZMsuoaZWYD6BF6lZk97BJMW4T+Hrjqi+nkxBKGxwguUXR3LVbBpMCiGNaAqdth76hSDG
	BMLT8KM8OT7+ab7S3KIKuPyIDyjcoZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZf0-0008MD-5h; Mon, 06 May 2019 09:11:46 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZeq-0008KL-Ko
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:11:38 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 595F0200057;
 Mon,  6 May 2019 11:11:33 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7263D20010B;
 Mon,  6 May 2019 11:11:28 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 26265402A3;
 Mon,  6 May 2019 17:11:22 +0800 (SGT)
From: Peng Ma <peng.ma@nxp.com>
To: vkoul@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 mark.rutland@arm.com, leoyang.li@nxp.com
Subject: [PATCH 1/4] arm64: dts: fsl: ls1028a: Add qDMA node
Date: Mon,  6 May 2019 09:03:41 +0000
Message-Id: <20190506090344.37784-1-peng.ma@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_021136_823919_C30DF70A 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Peng Ma <peng.ma@nxp.com>,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the qDMA device tree nodes for LS1028A devices

Signed-off-by: Peng Ma <peng.ma@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 2896bbc..8116fb3 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -336,6 +336,26 @@
 				     <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		qdma: dma-controller@8380000 {
+			compatible = "fsl,ls1028a-qdma", "fsl,ls1021a-qdma";
+			reg = <0x0 0x8380000 0x0 0x1000>, /* Controller regs */
+			      <0x0 0x8390000 0x0 0x10000>, /* Status regs */
+			      <0x0 0x83a0000 0x0 0x40000>; /* Block regs */
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "qdma-error", "qdma-queue0",
+				"qdma-queue1", "qdma-queue2", "qdma-queue3";
+			dma-channels = <8>;
+			block-number = <1>;
+			block-offset = <0x10000>;
+			fsl,dma-queues = <2>;
+			status-sizes = <64>;
+			queue-sizes = <64 64>;
+		};
+
 		pcie@1f0000000 { /* Integrated Endpoint Root Complex */
 			compatible = "pci-host-ecam-generic";
 			reg = <0x01 0xf0000000 0x0 0x100000>;
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
