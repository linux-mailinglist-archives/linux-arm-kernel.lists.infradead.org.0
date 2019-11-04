Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E89EE4E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 17:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/h1nyp4/LmsmBcSLtlSVTa7mdZ5QawX58cpivhDin2g=; b=Ae1mj9S9gjy6V7
	R7VnCWiVhtGAeA5TDbw1jZwRmmkwf6W++mPKVS1R8TNWj3hqjJMgBr+QtNwJlgt1ikAlnlB7WOa1R
	M9zb/tB7N7CcG4IEXZ0snarnZbi0lTYG4lM4OL+/riSrFd0OJrIbmZO8NS4hmODTCiE2UuT2VplSl
	EIauMHXpDq7iOj8rIcETrRwA8UFfXLRhs2OiIjrpe1msTY8eX1Jl2pptILXTsYsPpUKiXNNy59nBb
	aANtvc5cvesHYuGscGsBWAbK/yc5sv592qdt15n4XaRWWvJTgcptP5q7cPq4Dxi0IvmM4BEnTDIKQ
	PQVbtUPUMB01W7xA6MsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfOO-0006gi-OW; Mon, 04 Nov 2019 16:39:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfNc-0006ER-7f
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 16:39:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A84A6328;
 Mon,  4 Nov 2019 08:38:59 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DAAE3F71A;
 Mon,  4 Nov 2019 08:38:55 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Tsahee Zidenberg <tsahee@annapurnalabs.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Lars Persson <lars.persson@axis.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linus Walleij <linus.walleij@linaro.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, Andy Gross <agross@kernel.org>
Subject: [PATCH v1 3/7] arm: dts: Use IRQ flags for legacy PCI IRQ interrupts
Date: Mon,  4 Nov 2019 16:38:17 +0000
Message-Id: <20191104163834.8932-4-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191104163834.8932-1-andrew.murray@arm.com>
References: <20191104163834.8932-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_083900_372945_CE051036 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@axis.com, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace magic numbers used to describe legacy PCI IRQ interrupts
with #define.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm/boot/dts/alpine.dtsi              |  6 ++--
 arch/arm/boot/dts/artpec6.dtsi             | 10 +++---
 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 34 ++++++++++----------
 arch/arm/boot/dts/gemini-sl93512r.dts      | 34 ++++++++++----------
 arch/arm/boot/dts/gemini-sq201.dts         | 34 ++++++++++----------
 arch/arm/boot/dts/gemini-wbd111.dts        | 34 ++++++++++----------
 arch/arm/boot/dts/gemini-wbd222.dts        | 34 ++++++++++----------
 arch/arm/boot/dts/imx6qdl.dtsi             | 10 +++---
 arch/arm/boot/dts/imx6sx.dtsi              | 10 +++---
 arch/arm/boot/dts/integratorap.dts         | 36 ++++++++++++----------
 arch/arm/boot/dts/keystone-k2e.dtsi        | 11 ++++---
 arch/arm/boot/dts/keystone.dtsi            | 10 +++---
 arch/arm/boot/dts/qcom-apq8064.dtsi        | 10 +++---
 arch/arm/boot/dts/qcom-ipq4019.dtsi        | 10 +++---
 arch/arm/boot/dts/versatile-pb.dts         | 36 ++++++++++++----------
 15 files changed, 162 insertions(+), 157 deletions(-)

diff --git a/arch/arm/boot/dts/alpine.dtsi b/arch/arm/boot/dts/alpine.dtsi
index d3036ea823d1..51d8a7d1e569 100644
--- a/arch/arm/boot/dts/alpine.dtsi
+++ b/arch/arm/boot/dts/alpine.dtsi
@@ -152,10 +152,10 @@
 			#address-cells = <3>;
 			#interrupt-cells = <1>;
 			reg = <0x0 0xfbc00000 0x0 0x100000>;
-			interrupt-map-mask = <0xf800 0 0 7>;
+			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
 			/* Add legacy interrupts for SATA devices only */
-			interrupt-map =	<0x4000 0 0 1 &gic 0 43 4>,
-					<0x4800 0 0 1 &gic 0 44 4>;
+			interrupt-map =	<0x4000 0 0 IRQ_INTA &gic 0 43 4>,
+					<0x4800 0 0 IRQ_INTA &gic 0 44 4>;
 
 			/* 32 bit non prefetchable memory space */
 			ranges = <0x02000000 0x0 0xfe000000 0x0 0xfe000000 0x0 0x1000000>;
diff --git a/arch/arm/boot/dts/artpec6.dtsi b/arch/arm/boot/dts/artpec6.dtsi
index 037157e6c5ee..b2cf3d656ba4 100644
--- a/arch/arm/boot/dts/artpec6.dtsi
+++ b/arch/arm/boot/dts/artpec6.dtsi
@@ -177,11 +177,11 @@
 		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "msi";
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0x7>;
-		interrupt-map = <0 0 0 1 &intc GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 2 &intc GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 3 &intc GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 4 &intc GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+		interrupt-map = <0 0 0 IRQ_INTA &intc GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 IRQ_INTB &intc GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 IRQ_INTC &intc GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 IRQ_INTD &intc GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
 		axis,syscon-pcie = <&syscon>;
 		status = "disabled";
 	};
diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
index e2030ba16512..826022a9949b 100644
--- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -407,24 +407,24 @@
 
 		pci@50000000 {
 			status = "okay";
-			interrupt-map-mask = <0xf800 0 0 7>;
+			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
 			interrupt-map =
-				<0x4800 0 0 1 &pci_intc 0>, /* Slot 9 */
-				<0x4800 0 0 2 &pci_intc 1>,
-				<0x4800 0 0 3 &pci_intc 2>,
-				<0x4800 0 0 4 &pci_intc 3>,
-				<0x5000 0 0 1 &pci_intc 1>, /* Slot 10 */
-				<0x5000 0 0 2 &pci_intc 2>,
-				<0x5000 0 0 3 &pci_intc 3>,
-				<0x5000 0 0 4 &pci_intc 0>,
-				<0x5800 0 0 1 &pci_intc 2>, /* Slot 11 */
-				<0x5800 0 0 2 &pci_intc 3>,
-				<0x5800 0 0 3 &pci_intc 0>,
-				<0x5800 0 0 4 &pci_intc 1>,
-				<0x6000 0 0 1 &pci_intc 3>, /* Slot 12 */
-				<0x6000 0 0 2 &pci_intc 0>,
-				<0x6000 0 0 3 &pci_intc 1>,
-				<0x6000 0 0 4 &pci_intc 2>;
+				<0x4800 0 0 IRQ_INTA &pci_intc 0>, /* Slot 9 */
+				<0x4800 0 0 IRQ_INTB &pci_intc 1>,
+				<0x4800 0 0 IRQ_INTC &pci_intc 2>,
+				<0x4800 0 0 IRQ_INTD &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTA &pci_intc 1>, /* Slot 10 */
+				<0x5000 0 0 IRQ_INTB &pci_intc 2>,
+				<0x5000 0 0 IRQ_INTC &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTD &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTA &pci_intc 2>, /* Slot 11 */
+				<0x5800 0 0 IRQ_INTB &pci_intc 3>,
+				<0x5800 0 0 IRQ_INTC &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTD &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTA &pci_intc 3>, /* Slot 12 */
+				<0x6000 0 0 IRQ_INTB &pci_intc 0>,
+				<0x6000 0 0 IRQ_INTC &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTD &pci_intc 2>;
 		};
 
 		ethernet@60000000 {
diff --git a/arch/arm/boot/dts/gemini-sl93512r.dts b/arch/arm/boot/dts/gemini-sl93512r.dts
index a98af0351906..e80c59174431 100644
--- a/arch/arm/boot/dts/gemini-sl93512r.dts
+++ b/arch/arm/boot/dts/gemini-sl93512r.dts
@@ -256,24 +256,24 @@
 
 		pci@50000000 {
 			status = "okay";
-			interrupt-map-mask = <0xf800 0 0 7>;
+			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
 			interrupt-map =
-				<0x4800 0 0 1 &pci_intc 0>, /* Slot 9 */
-				<0x4800 0 0 2 &pci_intc 1>,
-				<0x4800 0 0 3 &pci_intc 2>,
-				<0x4800 0 0 4 &pci_intc 3>,
-				<0x5000 0 0 1 &pci_intc 1>, /* Slot 10 */
-				<0x5000 0 0 2 &pci_intc 2>,
-				<0x5000 0 0 3 &pci_intc 3>,
-				<0x5000 0 0 4 &pci_intc 0>,
-				<0x5800 0 0 1 &pci_intc 2>, /* Slot 11 */
-				<0x5800 0 0 2 &pci_intc 3>,
-				<0x5800 0 0 3 &pci_intc 0>,
-				<0x5800 0 0 4 &pci_intc 1>,
-				<0x6000 0 0 1 &pci_intc 3>, /* Slot 12 */
-				<0x6000 0 0 2 &pci_intc 0>,
-				<0x6000 0 0 3 &pci_intc 1>,
-				<0x6000 0 0 4 &pci_intc 2>;
+				<0x4800 0 0 IRQ_INTA &pci_intc 0>, /* Slot 9 */
+				<0x4800 0 0 IRQ_INTB &pci_intc 1>,
+				<0x4800 0 0 IRQ_INTC &pci_intc 2>,
+				<0x4800 0 0 IRQ_INTD &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTA &pci_intc 1>, /* Slot 10 */
+				<0x5000 0 0 IRQ_INTB &pci_intc 2>,
+				<0x5000 0 0 IRQ_INTC &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTD &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTA &pci_intc 2>, /* Slot 11 */
+				<0x5800 0 0 IRQ_INTB &pci_intc 3>,
+				<0x5800 0 0 IRQ_INTC &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTD &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTA &pci_intc 3>, /* Slot 12 */
+				<0x6000 0 0 IRQ_INTB &pci_intc 0>,
+				<0x6000 0 0 IRQ_INTC &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTD &pci_intc 2>;
 		};
 
 		ethernet@60000000 {
diff --git a/arch/arm/boot/dts/gemini-sq201.dts b/arch/arm/boot/dts/gemini-sq201.dts
index 239dfacaae4d..95deff80446a 100644
--- a/arch/arm/boot/dts/gemini-sq201.dts
+++ b/arch/arm/boot/dts/gemini-sq201.dts
@@ -252,24 +252,24 @@
 
 		pci@50000000 {
 			status = "okay";
-			interrupt-map-mask = <0xf800 0 0 7>;
+			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
 			interrupt-map =
-				<0x4800 0 0 1 &pci_intc 0>, /* Slot 9 */
-				<0x4800 0 0 2 &pci_intc 1>,
-				<0x4800 0 0 3 &pci_intc 2>,
-				<0x4800 0 0 4 &pci_intc 3>,
-				<0x5000 0 0 1 &pci_intc 1>, /* Slot 10 */
-				<0x5000 0 0 2 &pci_intc 2>,
-				<0x5000 0 0 3 &pci_intc 3>,
-				<0x5000 0 0 4 &pci_intc 0>,
-				<0x5800 0 0 1 &pci_intc 2>, /* Slot 11 */
-				<0x5800 0 0 2 &pci_intc 3>,
-				<0x5800 0 0 3 &pci_intc 0>,
-				<0x5800 0 0 4 &pci_intc 1>,
-				<0x6000 0 0 1 &pci_intc 3>, /* Slot 12 */
-				<0x6000 0 0 2 &pci_intc 0>,
-				<0x6000 0 0 3 &pci_intc 1>,
-				<0x6000 0 0 4 &pci_intc 2>;
+				<0x4800 0 0 IRQ_INTA &pci_intc 0>, /* Slot 9 */
+				<0x4800 0 0 IRQ_INTB &pci_intc 1>,
+				<0x4800 0 0 IRQ_INTC &pci_intc 2>,
+				<0x4800 0 0 IRQ_INTD &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTA &pci_intc 1>, /* Slot 10 */
+				<0x5000 0 0 IRQ_INTB &pci_intc 2>,
+				<0x5000 0 0 IRQ_INTC &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTD &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTA &pci_intc 2>, /* Slot 11 */
+				<0x5800 0 0 IRQ_INTB &pci_intc 3>,
+				<0x5800 0 0 IRQ_INTC &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTD &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTA &pci_intc 3>, /* Slot 12 */
+				<0x6000 0 0 IRQ_INTB &pci_intc 0>,
+				<0x6000 0 0 IRQ_INTC &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTD &pci_intc 2>;
 		};
 
 		ethernet@60000000 {
diff --git a/arch/arm/boot/dts/gemini-wbd111.dts b/arch/arm/boot/dts/gemini-wbd111.dts
index 3a2761dd460f..832b58739d4e 100644
--- a/arch/arm/boot/dts/gemini-wbd111.dts
+++ b/arch/arm/boot/dts/gemini-wbd111.dts
@@ -140,24 +140,24 @@
 
 		pci@50000000 {
 			status = "okay";
-			interrupt-map-mask = <0xf800 0 0 7>;
+			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
 			interrupt-map =
-				<0x4800 0 0 1 &pci_intc 0>, /* Slot 9 */
-				<0x4800 0 0 2 &pci_intc 1>,
-				<0x4800 0 0 3 &pci_intc 2>,
-				<0x4800 0 0 4 &pci_intc 3>,
-				<0x5000 0 0 1 &pci_intc 1>, /* Slot 10 */
-				<0x5000 0 0 2 &pci_intc 2>,
-				<0x5000 0 0 3 &pci_intc 3>,
-				<0x5000 0 0 4 &pci_intc 0>,
-				<0x5800 0 0 1 &pci_intc 2>, /* Slot 11 */
-				<0x5800 0 0 2 &pci_intc 3>,
-				<0x5800 0 0 3 &pci_intc 0>,
-				<0x5800 0 0 4 &pci_intc 1>,
-				<0x6000 0 0 1 &pci_intc 3>, /* Slot 12 */
-				<0x6000 0 0 2 &pci_intc 0>,
-				<0x6000 0 0 3 &pci_intc 1>,
-				<0x6000 0 0 4 &pci_intc 2>;
+				<0x4800 0 0 IRQ_INTA &pci_intc 0>, /* Slot 9 */
+				<0x4800 0 0 IRQ_INTB &pci_intc 1>,
+				<0x4800 0 0 IRQ_INTC &pci_intc 2>,
+				<0x4800 0 0 IRQ_INTD &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTA &pci_intc 1>, /* Slot 10 */
+				<0x5000 0 0 IRQ_INTB &pci_intc 2>,
+				<0x5000 0 0 IRQ_INTC &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTD &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTA &pci_intc 2>, /* Slot 11 */
+				<0x5800 0 0 IRQ_INTB &pci_intc 3>,
+				<0x5800 0 0 IRQ_INTC &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTD &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTA &pci_intc 3>, /* Slot 12 */
+				<0x6000 0 0 IRQ_INTB &pci_intc 0>,
+				<0x6000 0 0 IRQ_INTC &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTD &pci_intc 2>;
 		};
 
 		ethernet@60000000 {
diff --git a/arch/arm/boot/dts/gemini-wbd222.dts b/arch/arm/boot/dts/gemini-wbd222.dts
index 52b4dbc0c072..19776090a920 100644
--- a/arch/arm/boot/dts/gemini-wbd222.dts
+++ b/arch/arm/boot/dts/gemini-wbd222.dts
@@ -151,24 +151,24 @@
 
 		pci@50000000 {
 			status = "okay";
-			interrupt-map-mask = <0xf800 0 0 7>;
+			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
 			interrupt-map =
-				<0x4800 0 0 1 &pci_intc 0>, /* Slot 9 */
-				<0x4800 0 0 2 &pci_intc 1>,
-				<0x4800 0 0 3 &pci_intc 2>,
-				<0x4800 0 0 4 &pci_intc 3>,
-				<0x5000 0 0 1 &pci_intc 1>, /* Slot 10 */
-				<0x5000 0 0 2 &pci_intc 2>,
-				<0x5000 0 0 3 &pci_intc 3>,
-				<0x5000 0 0 4 &pci_intc 0>,
-				<0x5800 0 0 1 &pci_intc 2>, /* Slot 11 */
-				<0x5800 0 0 2 &pci_intc 3>,
-				<0x5800 0 0 3 &pci_intc 0>,
-				<0x5800 0 0 4 &pci_intc 1>,
-				<0x6000 0 0 1 &pci_intc 3>, /* Slot 12 */
-				<0x6000 0 0 2 &pci_intc 0>,
-				<0x6000 0 0 3 &pci_intc 1>,
-				<0x6000 0 0 4 &pci_intc 2>;
+				<0x4800 0 0 IRQ_INTA &pci_intc 0>, /* Slot 9 */
+				<0x4800 0 0 IRQ_INTB &pci_intc 1>,
+				<0x4800 0 0 IRQ_INTC &pci_intc 2>,
+				<0x4800 0 0 IRQ_INTD &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTA &pci_intc 1>, /* Slot 10 */
+				<0x5000 0 0 IRQ_INTB &pci_intc 2>,
+				<0x5000 0 0 IRQ_INTC &pci_intc 3>,
+				<0x5000 0 0 IRQ_INTD &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTA &pci_intc 2>, /* Slot 11 */
+				<0x5800 0 0 IRQ_INTB &pci_intc 3>,
+				<0x5800 0 0 IRQ_INTC &pci_intc 0>,
+				<0x5800 0 0 IRQ_INTD &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTA &pci_intc 3>, /* Slot 12 */
+				<0x6000 0 0 IRQ_INTB &pci_intc 0>,
+				<0x6000 0 0 IRQ_INTC &pci_intc 1>,
+				<0x6000 0 0 IRQ_INTD &pci_intc 2>;
 		};
 
 		ethernet@60000000 {
diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index e6b4b8525f98..e3f52e20bc5f 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -282,11 +282,11 @@
 			interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "msi";
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0x7>;
-			interrupt-map = <0 0 0 1 &gpc GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 2 &gpc GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 3 &gpc GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 4 &gpc GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0 0 0 IRQ_INTA &gpc GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTB &gpc GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTC &gpc GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTD &gpc GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clks IMX6QDL_CLK_PCIE_AXI>,
 				 <&clks IMX6QDL_CLK_LVDS1_GATE>,
 				 <&clks IMX6QDL_CLK_PCIE_REF_125M>;
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 531a52c1e987..5549820dbca4 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -1377,11 +1377,11 @@
 			interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "msi";
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0x7>;
-			interrupt-map = <0 0 0 1 &gpc GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 2 &gpc GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 3 &gpc GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 4 &gpc GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0 0 0 IRQ_INTA &gpc GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTB &gpc GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTC &gpc GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTD &gpc GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clks IMX6SX_CLK_PCIE_AXI>,
 				 <&clks IMX6SX_CLK_LVDS1_OUT>,
 				 <&clks IMX6SX_CLK_PCIE_REF_125M>,
diff --git a/arch/arm/boot/dts/integratorap.dts b/arch/arm/boot/dts/integratorap.dts
index 94d2ff9836d0..ea35a90123c6 100644
--- a/arch/arm/boot/dts/integratorap.dts
+++ b/arch/arm/boot/dts/integratorap.dts
@@ -6,6 +6,8 @@
 /dts-v1/;
 /include/ "integrator.dtsi"
 
+#include <dt-bindings/interrupt-controller/irq.h>
+
 / {
 	model = "ARM Integrator/AP";
 	compatible = "arm,integrator-ap";
@@ -174,28 +176,28 @@
 			0x20000000 0 0x20000000 /* 512 MB @ LB 20000000 1:1 */
 			0x02000000 0 0x80000000 /* Core module alias memory */
 			0x80000000 0 0x40000000>; /* 1GB @ LB 80000000 */
-		interrupt-map-mask = <0xf800 0 0 0x7>;
+		interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
 		interrupt-map = <
 		/* IDSEL 9 */
-		0x4800 0 0 1 &pic 13 /* INT A on slot 9 is irq 13 */
-		0x4800 0 0 2 &pic 14 /* INT B on slot 9 is irq 14 */
-		0x4800 0 0 3 &pic 15 /* INT C on slot 9 is irq 15 */
-		0x4800 0 0 4 &pic 16 /* INT D on slot 9 is irq 16 */
+		0x4800 0 0 IRQ_INTA &pic 13 /* INT A on slot 9 is irq 13 */
+		0x4800 0 0 IRQ_INTB &pic 14 /* INT B on slot 9 is irq 14 */
+		0x4800 0 0 IRQ_INTC &pic 15 /* INT C on slot 9 is irq 15 */
+		0x4800 0 0 IRQ_INTD &pic 16 /* INT D on slot 9 is irq 16 */
 		/* IDSEL 10 */
-		0x5000 0 0 1 &pic 14 /* INT A on slot 10 is irq 14 */
-		0x5000 0 0 2 &pic 15 /* INT B on slot 10 is irq 15 */
-		0x5000 0 0 3 &pic 16 /* INT C on slot 10 is irq 16 */
-		0x5000 0 0 4 &pic 13 /* INT D on slot 10 is irq 13 */
+		0x5000 0 0 IRQ_INTA &pic 14 /* INT A on slot 10 is irq 14 */
+		0x5000 0 0 IRQ_INTB &pic 15 /* INT B on slot 10 is irq 15 */
+		0x5000 0 0 IRQ_INTC &pic 16 /* INT C on slot 10 is irq 16 */
+		0x5000 0 0 IRQ_INTD &pic 13 /* INT D on slot 10 is irq 13 */
 		/* IDSEL 11 */
-		0x5800 0 0 1 &pic 15 /* INT A on slot 11 is irq 15 */
-		0x5800 0 0 2 &pic 16 /* INT B on slot 11 is irq 16 */
-		0x5800 0 0 3 &pic 13 /* INT C on slot 11 is irq 13 */
-		0x5800 0 0 4 &pic 14 /* INT D on slot 11 is irq 14 */
+		0x5800 0 0 IRQ_INTA &pic 15 /* INT A on slot 11 is irq 15 */
+		0x5800 0 0 IRQ_INTB &pic 16 /* INT B on slot 11 is irq 16 */
+		0x5800 0 0 IRQ_INTC &pic 13 /* INT C on slot 11 is irq 13 */
+		0x5800 0 0 IRQ_INTD &pic 14 /* INT D on slot 11 is irq 14 */
 		/* IDSEL 12 */
-		0x6000 0 0 1 &pic 16 /* INT A on slot 12 is irq 16 */
-		0x6000 0 0 2 &pic 13 /* INT B on slot 12 is irq 13 */
-		0x6000 0 0 3 &pic 14 /* INT C on slot 12 is irq 14 */
-		0x6000 0 0 4 &pic 15 /* INT D on slot 12 is irq 15 */
+		0x6000 0 0 IRQ_INTA &pic 16 /* INT A on slot 12 is irq 16 */
+		0x6000 0 0 IRQ_INTB &pic 13 /* INT B on slot 12 is irq 13 */
+		0x6000 0 0 IRQ_INTC &pic 14 /* INT C on slot 12 is irq 14 */
+		0x6000 0 0 IRQ_INTD &pic 15 /* INT D on slot 12 is irq 15 */
 		>;
 	};
 
diff --git a/arch/arm/boot/dts/keystone-k2e.dtsi b/arch/arm/boot/dts/keystone-k2e.dtsi
index 085e7326ea8e..d612aaac3759 100644
--- a/arch/arm/boot/dts/keystone-k2e.dtsi
+++ b/arch/arm/boot/dts/keystone-k2e.dtsi
@@ -5,6 +5,7 @@
  * Copyright (C) 2013-2017 Texas Instruments Incorporated - http://www.ti.com/
  */
 
+#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/reset/ti-syscon.h>
 
 / {
@@ -153,11 +154,11 @@
 			/* error interrupt */
 			interrupts = <GIC_SPI 385 IRQ_TYPE_EDGE_RISING>;
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 7>;
-			interrupt-map = <0 0 0 1 &pcie_intc1 0>, /* INT A */
-					<0 0 0 2 &pcie_intc1 1>, /* INT B */
-					<0 0 0 3 &pcie_intc1 2>, /* INT C */
-					<0 0 0 4 &pcie_intc1 3>; /* INT D */
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0 0 0 IRQ_INTA &pcie_intc1 0>,
+					<0 0 0 IRQ_INTB &pcie_intc1 1>,
+					<0 0 0 IRQ_INTC &pcie_intc1 2>,
+					<0 0 0 IRQ_INTD &pcie_intc1 3>;
 
 			pcie_msi_intc1: msi-interrupt-controller {
 				interrupt-controller;
diff --git a/arch/arm/boot/dts/keystone.dtsi b/arch/arm/boot/dts/keystone.dtsi
index c298675a29a5..c7c8f3f58cfb 100644
--- a/arch/arm/boot/dts/keystone.dtsi
+++ b/arch/arm/boot/dts/keystone.dtsi
@@ -313,11 +313,11 @@
 			/* error interrupt */
 			interrupts = <GIC_SPI 38 IRQ_TYPE_EDGE_RISING>;
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 7>;
-			interrupt-map = <0 0 0 1 &pcie_intc0 0>, /* INT A */
-					<0 0 0 2 &pcie_intc0 1>, /* INT B */
-					<0 0 0 3 &pcie_intc0 2>, /* INT C */
-					<0 0 0 4 &pcie_intc0 3>; /* INT D */
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0 0 0 IRQ_INTA &pcie_intc0 0>,
+					<0 0 0 IRQ_INTB &pcie_intc0 1>,
+					<0 0 0 IRQ_INTC &pcie_intc0 2>,
+					<0 0 0 IRQ_INTD &pcie_intc0 3>;
 
 			pcie_msi_intc0: msi-interrupt-controller {
 				interrupt-controller;
diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 8b79b4112ee1..2a80fc9d2c67 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1391,11 +1391,11 @@
 			interrupts = <GIC_SPI 238 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "msi";
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0x7>;
-			interrupt-map = <0 0 0 1 &intc 0 36 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
-					<0 0 0 2 &intc 0 37 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
-					<0 0 0 3 &intc 0 38 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
-					<0 0 0 4 &intc 0 39 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0 0 0 IRQ_INTA &intc 0 36 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTB &intc 0 37 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTC &intc 0 38 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTD &intc 0 39 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&gcc PCIE_A_CLK>,
 				 <&gcc PCIE_H_CLK>,
 				 <&gcc PCIE_PHY_REF_CLK>;
diff --git a/arch/arm/boot/dts/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom-ipq4019.dtsi
index 56f51599852d..d95f6bc2705e 100644
--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
@@ -398,11 +398,11 @@
 			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "msi";
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0x7>;
-			interrupt-map = <0 0 0 1 &intc 0 142 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
-					<0 0 0 2 &intc 0 143 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
-					<0 0 0 3 &intc 0 144 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
-					<0 0 0 4 &intc 0 145 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0 0 0 IRQ_INTA &intc 0 142 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTB &intc 0 143 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTC &intc 0 144 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTD &intc 0 145 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&gcc GCC_PCIE_AHB_CLK>,
 				 <&gcc GCC_PCIE_AXI_M_CLK>,
 				 <&gcc GCC_PCIE_AXI_S_CLK>;
diff --git a/arch/arm/boot/dts/versatile-pb.dts b/arch/arm/boot/dts/versatile-pb.dts
index 06a0fdf24026..ec91e3b81972 100644
--- a/arch/arm/boot/dts/versatile-pb.dts
+++ b/arch/arm/boot/dts/versatile-pb.dts
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "versatile-ab.dts"
 
+#include <dt-bindings/interrupt-controller/irq.h>
+
 / {
 	model = "ARM Versatile PB";
 	compatible = "arm,versatile-pb";
@@ -55,26 +57,26 @@
 				  0x02000000 0 0x50000000 0x50000000 0 0x10000000   /* non-prefetchable memory */
 				  0x42000000 0 0x60000000 0x60000000 0 0x10000000>; /* prefetchable memory */
 
-			interrupt-map-mask = <0x1800 0 0 7>;
-			interrupt-map = <0x1800 0 0 1 &sic 28
-					 0x1800 0 0 2 &sic 29
-					 0x1800 0 0 3 &sic 30
-					 0x1800 0 0 4 &sic 27
+			interrupt-map-mask = <0x1800 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0x1800 0 0 IRQ_INTA &sic 28
+					 0x1800 0 0 IRQ_INTB &sic 29
+					 0x1800 0 0 IRQ_INTC &sic 30
+					 0x1800 0 0 IRQ_INTD &sic 27
 
-					 0x1000 0 0 1 &sic 27
-					 0x1000 0 0 2 &sic 28
-					 0x1000 0 0 3 &sic 29
-					 0x1000 0 0 4 &sic 30
+					 0x1000 0 0 IRQ_INTA &sic 27
+					 0x1000 0 0 IRQ_INTB &sic 28
+					 0x1000 0 0 IRQ_INTC &sic 29
+					 0x1000 0 0 IRQ_INTD &sic 30
 
-					 0x0800 0 0 1 &sic 30
-					 0x0800 0 0 2 &sic 27
-					 0x0800 0 0 3 &sic 28
-					 0x0800 0 0 4 &sic 29
+					 0x0800 0 0 IRQ_INTA &sic 30
+					 0x0800 0 0 IRQ_INTB &sic 27
+					 0x0800 0 0 IRQ_INTC &sic 28
+					 0x0800 0 0 IRQ_INTD &sic 29
 
-					 0x0000 0 0 1 &sic 29
-					 0x0000 0 0 2 &sic 30
-					 0x0000 0 0 3 &sic 27
-					 0x0000 0 0 4 &sic 28>;
+					 0x0000 0 0 IRQ_INTA &sic 29
+					 0x0000 0 0 IRQ_INTB &sic 30
+					 0x0000 0 0 IRQ_INTC &sic 27
+					 0x0000 0 0 IRQ_INTD &sic 28>;
 		};
 
 		fpga {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
