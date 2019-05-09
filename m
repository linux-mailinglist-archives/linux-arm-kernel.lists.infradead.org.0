Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD38185BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 09:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8wxIu7JczmWDNdC5aPKZmMwGgRFgGPe9BaO96LJ7qpY=; b=a7e
	fQbi1S9GzfMzqlfhlmnrjj/r6Is2qUtMAGGNmTgkkFK+kQsaRWKknlH38CrteD+gIPIv7Cga+RXxs
	eXDKIRpWz6Pcf03VUOg92/SD61birUoeKftsQIWBX0qxFwVKeUD3wWAhRQlDpNrKaACXWa5b0Kod5
	nUUs/b5hZbXRnriRMpDkYdjrvFEixpgAw9l1bFX9/k+6Ikp+Q5Phcke+WVefrcxfIiuKDZ+RsryOW
	mVfYguiS2JMDim5jhjq1LEkW1ewEJ+lGtMVQdJtRv+O395Y1jzT5NSqB8DaoSYz8rnp3wyXnedVF2
	Zzr2qKjYwbFTCsuShRy/O1+vKvxm5tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOd7Q-00015o-Rc; Thu, 09 May 2019 07:05:28 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOd7A-00014t-SE
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 07:05:14 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 85F3B200136;
 Thu,  9 May 2019 09:05:10 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C7F8C2000FC;
 Thu,  9 May 2019 09:05:06 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BFA68402F2;
 Thu,  9 May 2019 15:04:59 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: shawnguo@kernel.org,
	leoyang.li@nxp.com,
	mark.rutland@arm.com
Subject: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Date: Thu,  9 May 2019 15:06:57 +0800
Message-Id: <20190509070657.18281-1-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_000513_308541_06CC40E3 
X-CRM114-Status: UNSURE (   6.83  )
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
Cc: devicetree@vger.kernel.org, Zhang Ying-22455 <ying.zhang22455@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Chuanhua Han <chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ls1028a platform uses sp805 watchdog, and use 1/16 platform clock as
timer clock, this patch fix device tree node.

Signed-off-by: Zhang Ying-22455 <ying.zhang22455@nxp.com>
Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index b04581249f0b..1510b1858246 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -285,13 +285,18 @@
 			#interrupt-cells = <2>;
 		};
 
-		wdog0: watchdog@23c0000 {
-			compatible = "fsl,ls1028a-wdt", "fsl,imx21-wdt";
-			reg = <0x0 0x23c0000 0x0 0x10000>;
-			interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
-			big-endian;
-			status = "disabled";
+		cluster1_core0_watchdog: wdt@c000000 {
+			compatible = "arm,sp805", "arm,primecell";
+			reg = <0x0 0xc000000 0x0 0x1000>;
+			clocks = <&clockgen 4 15>, <&clockgen 4 15>;
+			clock-names = "apb_pclk", "wdog_clk";
+		};
+
+		cluster1_core1_watchdog: wdt@c010000 {
+			compatible = "arm,sp805", "arm,primecell";
+			reg = <0x0 0xc010000 0x0 0x1000>;
+			clocks = <&clockgen 4 15>, <&clockgen 4 15>;
+			clock-names = "apb_pclk", "wdog_clk";
 		};
 
 		sata: sata@3200000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
