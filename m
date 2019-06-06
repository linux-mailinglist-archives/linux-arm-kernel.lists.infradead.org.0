Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E7836A15
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4q8a2RI2ylPzjSs7x1pd4WV52oxBktYrPhtMtY3+9dY=; b=ZHN
	pLgd3qoDsIOAYuY/EMk7TSVuqXbgWqCLEf6pDNNgaU1rWXhuhDCIPhjv5j6hFxvF1UmMS4L0CE2nM
	jLv3NcuFo2raIqsjyE05YCxht/Sln2RaKoIHa/0fNaUzDeVTPf/Q8BjaGMYqrEZ+o7c5yyMVHv+IG
	dd9wBdfbfUbBrxGaQTtDJpRIbiOcznjipk2MwJNlDEUmD/q3zaMUPGPCpcf7brMALICigTDR+432e
	06aTsrFiixiaCcLBAF+A6GLzE/iEuZO9/xKqnTmt6B3c1xcL2od5S48tQeZrCrqsdMdaXNOCMv7ZQ
	4exvZwOzutmHuhet4RlBT0Xh3Zpu/Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYiI1-000192-LE; Thu, 06 Jun 2019 02:38:05 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYiHu-00018K-7I
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:37:59 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id ABD821A09EF;
 Thu,  6 Jun 2019 04:37:53 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 044391A09EC;
 Thu,  6 Jun 2019 04:37:48 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BBFF0402D5;
 Thu,  6 Jun 2019 10:37:40 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, ping.bai@nxp.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH RESEND] arm64: dts: imx8mm: Move gic node into soc node
Date: Thu,  6 Jun 2019 10:39:36 +0800
Message-Id: <20190606023936.25543-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_193758_400636_17D6E9D6 
X-CRM114-Status: UNSURE (   8.23  )
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
Resend the patch based on Shawn's imx/dt64 branch.
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 2128644..dcae59d 100644
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
@@ -810,5 +801,14 @@
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
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
