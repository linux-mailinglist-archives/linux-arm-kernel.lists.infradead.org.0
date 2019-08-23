Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9949AD0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Vi2TcYhheYl4TgCA3cIhzIwOaNaf+obxh1poouZp6qk=; b=qeX
	bk383UNCfGqJ/1I7Q2RlzKpl4ldsIGamnnUEx//h3S1wpHPwiCgo9EGR6WCj5OdIcCD423II+cvgz
	JVrfF/QWa6ITHKVelGbQCuwwLgncUbOvb8vBY79vRlRrknr8/AcTd8bk7CD1KeSdCi76oakwZMJt6
	9JfiG9fKwdKktjpV9+5OhHTEyiwpMCnNj4gvBP2iHebi0Au/ZfAoZYVN03bxmdW0EWeDO4VyVrufg
	SBLSMBQsHFESfAWujF5mdw/66/h4fgfNlBKKPpNvE7xQpSAP4IO0W7vgtBIM+qu4n4905pOyzetsF
	N5MboRE7lWfGtnpXiB9iSjzaW4F38ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16nN-0000Xg-By; Fri, 23 Aug 2019 10:27:49 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16nB-0000Ks-Pi
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:27:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CEF3E200314;
 Fri, 23 Aug 2019 12:27:33 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 360BE20070E;
 Fri, 23 Aug 2019 12:27:29 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 44783402B3;
 Fri, 23 Aug 2019 18:27:23 +0800 (SGT)
From: Wen He <wen.he_1@nxp.com>
To: linux-devel@linux.nxdi.nxp.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v1] arm64: dts: ls1028a: Remove some fixed-clock definiation
Date: Fri, 23 Aug 2019 18:17:31 +0800
Message-Id: <20190823101731.12609-1-wen.he_1@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_032737_978342_11F4F203 
X-CRM114-Status: UNSURE (   6.60  )
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
Cc: Wen He <wen.he_1@nxp.com>, leoyang.li@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace pclk/aclk/mclk fixed-clock clock provider with platform clockgen
pre-divider provider, those clocks should be driven by the CGA_PLL2/2.

More details please refer Reference Manual.

Signed-off-by: Wen He <wen.he_1@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 024d6fbd07ea..0fa3e29cb603 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -90,20 +90,6 @@
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
@@ -885,7 +871,8 @@
 		interrupts = <0 222 IRQ_TYPE_LEVEL_HIGH>,
 			     <0 223 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "DE", "SE";
-		clocks = <&dpclk>, <&aclk>, <&aclk>, <&pclk>;
+		clocks = <&dpclk>, <&clockgen 2 2>, <&clockgen 2 2>,
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
