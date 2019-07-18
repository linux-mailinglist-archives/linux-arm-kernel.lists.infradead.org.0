Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74E06CBD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 11:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xuCZ2pnReBtp0M7mqYkucWMqPF0Qi8xwO6eyN0W1Y6Y=; b=LrnFSdYFeMJbeOwRrrvh3wWQoR
	88HDWfZhxTug+lSddJjuPumpRNQn6GMRm1eMkaWsGVUF0hlDTLED+eOhvT5VSuLbtaDcyybBizLfn
	fJpBE2NT9+kx+DzcF1ueNkKFR2+NiqcHH4Fc6IT2k4oAIUdbkGJcCkjG/IlUnfSf5h8trAp5d6Q3H
	Oogl+NoMSwPnxG0hXYHHxKoXfs9kBdsJ3hzITZwuHy5Zq1ySJUsLm6iDj7sr9JeNixB/viywAmKKk
	54KPlBigWDY45PdBfe+FsmVVya+oKPqmk4xkgN3LnARRA9/z/ZcHvEZVRsoDrBRd3wtAPwiIpKfzc
	D+V0NBqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho2fH-0001k5-ML; Thu, 18 Jul 2019 09:25:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho2eP-0000EO-Ct
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 09:24:35 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 858291A011A;
 Thu, 18 Jul 2019 11:24:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3DDB01A0352;
 Thu, 18 Jul 2019 11:24:25 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8648C402D5;
 Thu, 18 Jul 2019 17:24:18 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] ARM: dts: imx6ul: move GIC to right location in DT
Date: Thu, 18 Jul 2019 17:15:07 +0800
Message-Id: <20190718091508.3248-3-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190718091508.3248-1-Anson.Huang@nxp.com>
References: <20190718091508.3248-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_022433_570326_8B3B91CF 
X-CRM114-Status: UNSURE (   7.47  )
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

From: Anson Huang <Anson.Huang@nxp.com>

GIC is inside of SoC from architecture perspective, it should
be located inside of soc node in DT.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 81d4b49..da1eae6 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -93,18 +93,6 @@
 		};
 	};
 
-	intc: interrupt-controller@a01000 {
-		compatible = "arm,gic-400", "arm,cortex-a7-gic";
-		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
-		#interrupt-cells = <3>;
-		interrupt-controller;
-		interrupt-parent = <&intc>;
-		reg = <0x00a01000 0x1000>,
-		      <0x00a02000 0x2000>,
-		      <0x00a04000 0x2000>,
-		      <0x00a06000 0x2000>;
-	};
-
 	timer {
 		compatible = "arm,armv7-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
@@ -171,6 +159,18 @@
 			reg = <0x00900000 0x20000>;
 		};
 
+		intc: interrupt-controller@a01000 {
+			compatible = "arm,gic-400", "arm,cortex-a7-gic";
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
+			#interrupt-cells = <3>;
+			interrupt-controller;
+			interrupt-parent = <&intc>;
+			reg = <0x00a01000 0x1000>,
+			      <0x00a02000 0x2000>,
+			      <0x00a04000 0x2000>,
+			      <0x00a06000 0x2000>;
+		};
+
 		dma_apbh: dma-apbh@1804000 {
 			compatible = "fsl,imx6q-dma-apbh", "fsl,imx28-dma-apbh";
 			reg = <0x01804000 0x2000>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
