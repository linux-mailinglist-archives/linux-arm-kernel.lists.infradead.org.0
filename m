Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FFCB8D20
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 10:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=T9LCVNKvnItP61sD9Kig6E3sg58pKts0vZeQ4rnNSOs=; b=gta
	0cL6BcNdDQtb7XFYGFnjmGVZYVWzMnSe0QuWJEK1A7Whsdft2SpeYeNfNnrOB68CTksSJ0uAk9+Ke
	R4bH9cj1iEMYRbuiELF3g5kzqr6nde/Wq3DBLoJyxz6DIRlz64vNrJfvrYuHssxUIDBXqA6QSnCB/
	Pn0aC3hSIXcBoEGZBYiQK1nTG970Jt5R0Fgs8xgAkwgC8kUFwsezKC3dFOEaZgnzgnhm+dBVQeS5V
	DIVt71ylz1K01c4IiNCOjHNFjC8PfQkubiROfQzfyYgCn3LBsY8ztv0UAWLYzRhB+1cwa+ystl1bf
	60uQvkwvCOKoCMIK+eoBpmTUwIxqmVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBEYB-0003dz-Cz; Fri, 20 Sep 2019 08:45:59 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBEXk-0003Sa-IV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 08:45:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1D764200479;
 Fri, 20 Sep 2019 10:45:29 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DCFBF20007B;
 Fri, 20 Sep 2019 10:45:24 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6B24C40309;
 Fri, 20 Sep 2019 16:45:19 +0800 (SGT)
From: Wen He <wen.he_1@nxp.com>
To: linux-devel@linux.nxdi.nxp.com, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [v2 1/2] arm64: dts: ls1028a: Update the clock providers for the Mali
 DP500
Date: Fri, 20 Sep 2019 16:34:18 +0800
Message-Id: <20190920083419.5092-1-wen.he_1@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_014532_753656_0DB07D4A 
X-CRM114-Status: UNSURE (   8.11  )
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
Cc: Wen He <wen.he_1@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to maximise performance of the LCD Controller's 64-bit AXI
bus, for any give speed bin of the device, the AXI master interface
clock(ACLK) clock can be up to CPU_frequency/2, which is already
capable of optimal performance. In general, ACLK is always expected
to be equal to CPU_frequency/2. APB slave interface clock(PCLK) and
Main processing clock(PCLK) both are tied to the same clock as ACLK.

This change followed the LS1028A Architecture Specification Manual.

Signed-off-by: Wen He <wen.he_1@nxp.com>
---
change in v2:
        - add details commit description for this change. 
        - v1: Link: https://lore.kernel.org/patchwork/patch/1119145/

 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 72b9a75976a1..51fa8f57fdac 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -86,20 +86,6 @@
 		clocks = <&osc_27m>;
 	};
 
-	aclk: clock-axi {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <650000000>;
-		clock-output-names= "aclk";
-	};
-
-	pclk: clock-apb {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <650000000>;
-		clock-output-names= "pclk";
-	};
-
 	reboot {
 		compatible ="syscon-reboot";
 		regmap = <&dcfg>;
@@ -679,7 +665,8 @@
 		interrupts = <0 222 IRQ_TYPE_LEVEL_HIGH>,
 			     <0 223 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "DE", "SE";
-		clocks = <&dpclk 0>, <&aclk>, <&aclk>, <&pclk>;
+		clocks = <&dpclk 0>, <&clockgen 2 2>, <&clockgen 2 2>,
+			 <&clockgen 2 2>;
 		clock-names = "pxlclk", "mclk", "aclk", "pclk";
 		arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
 		arm,malidp-arqos-value = <0xd000d000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
