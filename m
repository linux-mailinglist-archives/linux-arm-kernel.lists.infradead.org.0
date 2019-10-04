Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 658D5CBD3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QjInwbF9gUwWUICYqd9rAuk0pIv09NTegIY/NjJhGc=; b=e3JpV3fxPGLtcK
	2Xyz9Z5OVJDr+9z901j0umm0umdKJsYwm88sMsBj3aUihya+qkO17Mc8pTei6R2e3AMWqi/BsRh6d
	WZIm/jGOauux6VJVA6B6re8beCXZjIgpVDoXgJPmri/0PZy7q691ILMHuZw1ymVTFVxeU+93Q2IlL
	ektf5WsLukfm1dPfVp5PXbQImxjLh9M5ijsLWm4zePfC7YsEXeEBpfDcY5Oty0ACUH87eZPW02BdS
	sTTrFjZlb6/cISLh0HnfayCAGFxhW8hYCqvVLGRCmF1awY3xpsDhUQ81D7wRMBp2RIP+/Qyht2eCU
	eCOM4yqTNHRR/+vGnNDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGObx-0000s0-FP; Fri, 04 Oct 2019 14:31:13 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYr-0004yo-1o
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:28:03 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 61AE8C0007;
 Fri,  4 Oct 2019 14:27:58 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 13/21] arm64: dts: marvell: Drop PCIe I/O ranges from CP11x
 file
Date: Fri,  4 Oct 2019 16:27:30 +0200
Message-Id: <20191004142738.7370-14-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072801_397147_A9DB6F5B 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As an example, Armada 70x0 and 80x0 SoC 0xf9000000 region points to
RUNIT/SPICS0 while it is referenced in the DT as PCIe I/O memory
range. This shows that I/O memory has never been used/working on the
old SoCs despite the region being advertised. As PCIe I/O ranges will
not be supported in newer SoCs using CP11x co-processors, let's
simply drop them. It is not harmful in any case as PCIe device drivers
can do it all with the regular mapped memory anyway.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-70x0.dtsi     |  2 --
 .../boot/dts/marvell/armada-8040-mcbin.dtsi      |  3 +--
 arch/arm64/boot/dts/marvell/armada-80x0.dtsi     |  4 ----
 arch/arm64/boot/dts/marvell/armada-cp11x.dtsi    | 16 +++-------------
 4 files changed, 4 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
index 4e78ccd207b7..ac28903ea409 100644
--- a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
@@ -19,7 +19,6 @@
  */
 #define CP11X_NAME		cp0
 #define CP11X_BASE		f2000000
-#define CP11X_PCIE_IO_BASE	0xf9000000
 #define CP11X_PCIE_MEM_BASE	0xf6000000
 #define CP11X_PCIE0_BASE	f2600000
 #define CP11X_PCIE1_BASE	f2620000
@@ -29,7 +28,6 @@
 
 #undef CP11X_NAME
 #undef CP11X_BASE
-#undef CP11X_PCIE_IO_BASE
 #undef CP11X_PCIE_MEM_BASE
 #undef CP11X_PCIE0_BASE
 #undef CP11X_PCIE1_BASE
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index d250f4b2bfed..572e2610e0a3 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -179,8 +179,7 @@
 	num-lanes = <4>;
 	num-viewport = <8>;
 	reset-gpios = <&cp0_gpio2 20 GPIO_ACTIVE_LOW>;
-	ranges = <0x81000000 0x0 0xf9010000 0x0 0xf9010000 0x0 0x10000
-		  0x82000000 0x0 0xc0000000 0x0 0xc0000000 0x0 0x20000000>;
+	ranges = <0x82000000 0x0 0xc0000000 0x0 0xc0000000 0x0 0x20000000>;
 	phys = <&cp0_comphy0 0>, <&cp0_comphy1 0>,
 	       <&cp0_comphy2 0>, <&cp0_comphy3 0>;
 	phy-names = "cp0-pcie0-x4-lane0-phy", "cp0-pcie0-x4-lane1-phy",
diff --git a/arch/arm64/boot/dts/marvell/armada-80x0.dtsi b/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
index ebb98836ec9c..902eed571bcc 100644
--- a/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
@@ -21,7 +21,6 @@
  */
 #define CP11X_NAME		cp0
 #define CP11X_BASE		f2000000
-#define CP11X_PCIE_IO_BASE	0xf9000000
 #define CP11X_PCIE_MEM_BASE	0xf6000000
 #define CP11X_PCIE0_BASE	f2600000
 #define CP11X_PCIE1_BASE	f2620000
@@ -31,7 +30,6 @@
 
 #undef CP11X_NAME
 #undef CP11X_BASE
-#undef CP11X_PCIE_IO_BASE
 #undef CP11X_PCIE_MEM_BASE
 #undef CP11X_PCIE0_BASE
 #undef CP11X_PCIE1_BASE
@@ -42,7 +40,6 @@
  */
 #define CP11X_NAME		cp1
 #define CP11X_BASE		f4000000
-#define CP11X_PCIE_IO_BASE	0xfd000000
 #define CP11X_PCIE_MEM_BASE	0xfa000000
 #define CP11X_PCIE0_BASE	f4600000
 #define CP11X_PCIE1_BASE	f4620000
@@ -52,7 +49,6 @@
 
 #undef CP11X_NAME
 #undef CP11X_BASE
-#undef CP11X_PCIE_IO_BASE
 #undef CP11X_PCIE_MEM_BASE
 #undef CP11X_PCIE0_BASE
 #undef CP11X_PCIE1_BASE
diff --git a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
index 3e77cf34604c..7d1ab097453d 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
@@ -10,7 +10,6 @@
 
 #include "armada-common.dtsi"
 
-#define CP11X_PCIEx_IO_BASE(iface)	(CP11X_PCIE_IO_BASE + (iface *  0x10000))
 #define CP11X_PCIEx_MEM_BASE(iface)	(CP11X_PCIE_MEM_BASE + (iface *  0x1000000))
 #define CP11X_PCIEx_CONF_BASE(iface)	(CP11X_PCIEx_MEM_BASE(iface) + 0xf00000)
 
@@ -507,11 +506,8 @@
 		msi-parent = <&gic_v2m0>;
 
 		bus-range = <0 0xff>;
-		ranges =
-		/* downstream I/O */
-		<0x81000000 0 CP11X_PCIEx_IO_BASE(0) 0  CP11X_PCIEx_IO_BASE(0) 0 0x10000
 		/* non-prefetchable memory */
-		0x82000000 0 CP11X_PCIEx_MEM_BASE(0) 0  CP11X_PCIEx_MEM_BASE(0) 0 0xf00000>;
+		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(0) 0  CP11X_PCIEx_MEM_BASE(0) 0 0xf00000>;
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 22 IRQ_TYPE_LEVEL_HIGH>;
 		interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
@@ -534,11 +530,8 @@
 		msi-parent = <&gic_v2m0>;
 
 		bus-range = <0 0xff>;
-		ranges =
-		/* downstream I/O */
-		<0x81000000 0 CP11X_PCIEx_IO_BASE(1) 0  CP11X_PCIEx_IO_BASE(1) 0 0x10000
 		/* non-prefetchable memory */
-		0x82000000 0 CP11X_PCIEx_MEM_BASE(1) 0  CP11X_PCIEx_MEM_BASE(1) 0 0xf00000>;
+		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(1) 0  CP11X_PCIEx_MEM_BASE(1) 0 0xf00000>;
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 24 IRQ_TYPE_LEVEL_HIGH>;
 		interrupts = <24 IRQ_TYPE_LEVEL_HIGH>;
@@ -562,11 +555,8 @@
 		msi-parent = <&gic_v2m0>;
 
 		bus-range = <0 0xff>;
-		ranges =
-		/* downstream I/O */
-		<0x81000000 0 CP11X_PCIEx_IO_BASE(2) 0  CP11X_PCIEx_IO_BASE(2) 0 0x10000
 		/* non-prefetchable memory */
-		0x82000000 0 CP11X_PCIEx_MEM_BASE(2) 0  CP11X_PCIEx_MEM_BASE(2) 0 0xf00000>;
+		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(2) 0  CP11X_PCIEx_MEM_BASE(2) 0 0xf00000>;
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 23 IRQ_TYPE_LEVEL_HIGH>;
 		interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
