Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457E932638
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 03:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oLIeH5RhBFhcMmN1nYjoyoe/pZUN2JnB2wnX2Ndiuq4=; b=Jtc
	d2fptRyD+mu5AKiP3/zHfpSnftcT2PSEYyrPbPjOVBStFFS+0GdtWZQivHEdYdaDLBNnYf3fXboyx
	3l+PAhurOiDHIZ6GMYgEFvNpcRCPtqj2tte80LNr1Uiq2JMpLGNmC12X3C7fyvTIGpb8e+nxIlB+W
	h0Rcjm2i/AMGjrtxoTvgcQ7kD9P77R0QSrDHcOb1JadH2fqCb/q134gr9u7byZWPGod69a3GV1koj
	F+Nl0Gi7N/65x8IPHB6j59p8A4U6RNYv6GawXxrSJ2qqPzRKKAf/24a+fx/06vbANFjyJZdCYWRTw
	kU4s7wK+eOC6N0gLgO5PMg9KacgNw2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXc5f-0001if-FO; Mon, 03 Jun 2019 01:48:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXc5Y-0001he-L8
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 01:48:42 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7AA281A0314;
 Mon,  3 Jun 2019 03:48:38 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6553D1A02F9;
 Mon,  3 Jun 2019 03:48:32 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AEACF402A2;
 Mon,  3 Jun 2019 09:48:24 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, aisheng.dong@nxp.com, viresh.kumar@linaro.org,
 ping.bai@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mm: Move gic node into soc node
Date: Mon,  3 Jun 2019 09:50:20 +0800
Message-Id: <20190603015020.41410-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_184840_826022_9AE968CB 
X-CRM114-Status: UNSURE (   8.11  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

GIC is inside of SoC from architecture perspective, it should
be located inside of soc node in DT.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index dc99f45..429312e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -169,15 +169,6 @@
 		clock-output-names = "clk_ext4";
 	};
 
-	gic: interrupt-controller@38800000 {
-		compatible = "arm,gic-v3";
-		reg = <0x0 0x38800000 0 0x10000>, /* GIC Dist */
-		      <0x0 0x38880000 0 0xC0000>; /* GICR (RD_base + SGI_base) */
-		#interrupt-cells = <3>;
-		interrupt-controller;
-		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
-	};
-
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
@@ -739,6 +730,15 @@
 			dma-names = "rx-tx";
 			status = "disabled";
 		};
+
+		gic: interrupt-controller@38800000 {
+			compatible = "arm,gic-v3";
+			reg = <0x38800000 0x10000>, /* GIC Dist */
+			      <0x38880000 0xc0000>; /* GICR (RD_base + SGI_base) */
+			#interrupt-cells = <3>;
+			interrupt-controller;
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	usbphynop1: usbphynop1 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
