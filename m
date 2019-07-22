Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FFC6FDD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Message-Id:Date:Subject:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xIz3P0EDDfx6vuNNECgkkDIuJA0NA8h9GhDbFSSTE90=; b=e6G
	5Ky5XdvfkSqWE7CHwYTIUyNgxE1D4rrEh5r9MZzu24zn57oNpWRTSwybRKhU3BhPWvJDKwku+PfYs
	O2O2pQ2SJaKoZmNItusyrMKdsNFsySoAnGcGRaW+AFCwjb9AITVY7SGTkfR62ZpO392OGg+oIU37A
	6MqYq0wM7zBYYHNALCHKcif5Eghs2pxbLaV4YYbz2iKVIXPJMgP7W/imBQzFe75X9ISoioQn3aIrZ
	AcH/Rzx2WG/r6ZfNRJVTojTKmcBXz3PP042AM7PnoY1OIGRXJw5HXD3mBJJHf8l/dwwY0ZBn6TwCi
	gjfS2+7bdIRpT/xb8FyeVsO07HRVbGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVaz-0001oZ-Fn; Mon, 22 Jul 2019 10:31:05 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVap-0001o4-Pr
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:30:57 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6BBAE2001D1;
 Mon, 22 Jul 2019 12:30:52 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5EDFD20023F;
 Mon, 22 Jul 2019 12:30:52 +0200 (CEST)
Received: from fsr-ub1464-137.ea.freescale.net
 (fsr-ub1464-137.ea.freescale.net [10.171.82.114])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 1E07A205DB;
 Mon, 22 Jul 2019 12:30:52 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: shawnguo@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] arm64: dts: add the console node for DPAA2 platforms
Date: Mon, 22 Jul 2019 13:30:43 +0300
Message-Id: <1563791443-26372-1-git-send-email-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 1.9.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033055_983816_5DDEAE11 
X-CRM114-Status: UNSURE (   7.26  )
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
Reply-To: ioana.ciornei@nxp.com
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, leoyang.li@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the console device tree node for the following
DPAA2 based platforms: LS1088A, LS2080A, LS2088A and LX2160A.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v3:
 - sort the node by unit address

Changes in v2:
 - use a generic node name
 - remove leading zeros and 0x from the unit-address

 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 5 +++++
 arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 5 +++++
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index dacd8cf03a7f..20f5ebd74200 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -609,6 +609,11 @@
 				     <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		console@8340020 {
+			compatible = "fsl,dpaa2-console";
+			reg = <0x00000000 0x08340020 0 0x2>;
+		};
+
 		ptp-timer@8b95000 {
 			compatible = "fsl,dpaa2-ptp";
 			reg = <0x0 0x8b95000 0x0 0x100>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
index 3ace91945b72..64101c9962ce 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
@@ -321,6 +321,11 @@
 			};
 		};
 
+		console@8340020 {
+			compatible = "fsl,dpaa2-console";
+			reg = <0x00000000 0x08340020 0 0x2>;
+		};
+
 		ptp-timer@8b95000 {
 			compatible = "fsl,dpaa2-ptp";
 			reg = <0x0 0x8b95000 0x0 0x100>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index e6fdba39453c..4720a8e7304c 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -848,6 +848,11 @@
 			dma-coherent;
 		};
 
+		console@8340020 {
+			compatible = "fsl,dpaa2-console";
+			reg = <0x00000000 0x08340020 0 0x2>;
+		};
+
 		ptp-timer@8b95000 {
 			compatible = "fsl,dpaa2-ptp";
 			reg = <0x0 0x8b95000 0x0 0x100>;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
