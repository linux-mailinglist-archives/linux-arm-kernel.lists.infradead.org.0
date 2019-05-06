Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E18214740
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BoMx4evMsoBeCg4GV+cWV7F7RKafkAaHKwlFfldmRi0=; b=KKJ+PjdI+NgdwuuH/YINRtKfBY
	mEkFR55uYbXwvYgujoIJkTJUmErlVd4APyfQuZfgKQtQ3LPOLyQwOi7C6vtbYW/jXE0QyBGFYvpb0
	yXIrUxPovpQ0Vf8XUT431n/2CEXSye7GgPdJRAkWMl+i1uR0mAuJS0b5Tg9GouutYkIn4mEvlx4JK
	+porY6yi67/fwN+b5JOwdQ/SZZU6GayHKJkoYcD4wYkbU9p+LQLtcO3TTnvk4eYEnw/SLKu6baOnE
	f4rpeZvN3YjkJXOm03MHl2PiSSJp2kcQwLkwyrtAMzp+53A5rCmDcGnGIETbcNwkwvcPO0a0KWI3U
	Fex/viLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZfB-0008Ue-3y; Mon, 06 May 2019 09:11:57 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZer-0008KM-64
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:11:38 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8796620000F;
 Mon,  6 May 2019 11:11:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9C344200169;
 Mon,  6 May 2019 11:11:29 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 45C64402A6;
 Mon,  6 May 2019 17:11:23 +0800 (SGT)
From: Peng Ma <peng.ma@nxp.com>
To: vkoul@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 mark.rutland@arm.com, leoyang.li@nxp.com
Subject: [PATCH 2/4] arm64: dts: fsl: ls1028a: Add eDMA node
Date: Mon,  6 May 2019 09:03:42 +0000
Message-Id: <20190506090344.37784-2-peng.ma@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190506090344.37784-1-peng.ma@nxp.com>
References: <20190506090344.37784-1-peng.ma@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_021137_365562_4F82B823 
X-CRM114-Status: UNSURE (   8.62  )
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

Add the eDMA device tree nodes for LS1028A devices

Signed-off-by: Peng Ma <peng.ma@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 8116fb3..71b87cb 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -235,6 +235,21 @@
 			status = "disabled";
 		};
 
+		edma0: edma@22c0000 {
+			#dma-cells = <2>;
+			compatible = "fsl,vf610-edma";
+			reg = <0x0 0x22c0000 0x0 0x10000>,
+			      <0x0 0x22d0000 0x0 0x10000>,
+			      <0x0 0x22e0000 0x0 0x10000>;
+			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "edma-tx", "edma-err";
+			dma-channels = <32>;
+			clock-names = "dmamux0", "dmamux1";
+			clocks = <&clockgen 4 1>,
+				 <&clockgen 4 1>;
+		};
+
 		gpio1: gpio@2300000 {
 			compatible = "fsl,qoriq-gpio";
 			reg = <0x0 0x2300000 0x0 0x10000>;
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
