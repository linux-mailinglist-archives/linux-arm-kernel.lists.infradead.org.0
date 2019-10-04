Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5439CBD40
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2LKpJF/8UoN0TDdKVyWjrGVuChtY0aBiuZRiWyFXqs=; b=c8pAqgNsfhDKFf
	ZQCjNdzjQFXFljeRCgHhJjY1UI/hG7dh+A0elbhRVzi++J/qDKay1rO0zsQaokroqxAWlQGkhQeBc
	P14U8pkHaUTWaka+qd5UShbnI/x9Tx3JmI8EgRn/ghw2gKg15ge50En6+f3oFAs/36CDjcHOcYmEQ
	3KOOgqCvRKsmgLSvPlfW8LOERst2b2iP3c16spc4AvWUOi4E3FuuOu9U1n7LB4F0W8L6CAFwATUSU
	c89TAjnTJisHsMgFXKfCFch4t2v9puVWC0K2GFWiuazEs2PFsgib8bnSy5OwEGqYoL4RGd6yyZYku
	ULGuCGtn77qa7qBKhMtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOcR-0001KM-Tg; Fri, 04 Oct 2019 14:31:43 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYs-000507-EC
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:28:05 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A6E7FC0018;
 Fri,  4 Oct 2019 14:27:59 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 14/21] arm64: dts: marvell: Externalize PCIe macros from
 CP11x file
Date: Fri,  4 Oct 2019 16:27:31 +0200
Message-Id: <20191004142738.7370-15-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072802_775207_B363B23B 
X-CRM114-Status: GOOD (  12.71  )
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

PCIe macros are specific to CP110 and will not fit CP115
constraints. To keep the same way the files are organized, just move
some macros out of the CP11x generic file and define them directly in
SoC DTSI, instead of defining single addresses in the SoC DTSI and
reusing them in macros.

In the end:
* CP11X_PCIE_MEM_BASE SoC define is dropped
* CP11X_PCIEx_MEM_BASE is moved out of the generic DT to be put in the
  SoC files as it replaces the above definition.
* As the CP11X_PCIEx_MEM_SIZE macro is also subject to change with
  newer SoCs, we put it in the SoC files as well.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-70x0.dtsi  |  6 ++++--
 arch/arm64/boot/dts/marvell/armada-80x0.dtsi  | 12 ++++++++----
 arch/arm64/boot/dts/marvell/armada-cp11x.dtsi |  9 ++++-----
 3 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
index ac28903ea409..293403a1a333 100644
--- a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
@@ -19,7 +19,8 @@
  */
 #define CP11X_NAME		cp0
 #define CP11X_BASE		f2000000
-#define CP11X_PCIE_MEM_BASE	0xf6000000
+#define CP11X_PCIEx_MEM_BASE(iface) (0xf6000000 + (iface * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) 0xf00000
 #define CP11X_PCIE0_BASE	f2600000
 #define CP11X_PCIE1_BASE	f2620000
 #define CP11X_PCIE2_BASE	f2640000
@@ -28,7 +29,8 @@
 
 #undef CP11X_NAME
 #undef CP11X_BASE
-#undef CP11X_PCIE_MEM_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
 #undef CP11X_PCIE0_BASE
 #undef CP11X_PCIE1_BASE
 #undef CP11X_PCIE2_BASE
diff --git a/arch/arm64/boot/dts/marvell/armada-80x0.dtsi b/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
index 902eed571bcc..ee67c70bf02e 100644
--- a/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-80x0.dtsi
@@ -21,7 +21,8 @@
  */
 #define CP11X_NAME		cp0
 #define CP11X_BASE		f2000000
-#define CP11X_PCIE_MEM_BASE	0xf6000000
+#define CP11X_PCIEx_MEM_BASE(iface) (0xf6000000 + (iface * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) 0xf00000
 #define CP11X_PCIE0_BASE	f2600000
 #define CP11X_PCIE1_BASE	f2620000
 #define CP11X_PCIE2_BASE	f2640000
@@ -30,7 +31,8 @@
 
 #undef CP11X_NAME
 #undef CP11X_BASE
-#undef CP11X_PCIE_MEM_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
 #undef CP11X_PCIE0_BASE
 #undef CP11X_PCIE1_BASE
 #undef CP11X_PCIE2_BASE
@@ -40,7 +42,8 @@
  */
 #define CP11X_NAME		cp1
 #define CP11X_BASE		f4000000
-#define CP11X_PCIE_MEM_BASE	0xfa000000
+#define CP11X_PCIEx_MEM_BASE(iface) (0xfa000000 + (iface * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) 0xf00000
 #define CP11X_PCIE0_BASE	f4600000
 #define CP11X_PCIE1_BASE	f4620000
 #define CP11X_PCIE2_BASE	f4640000
@@ -49,7 +52,8 @@
 
 #undef CP11X_NAME
 #undef CP11X_BASE
-#undef CP11X_PCIE_MEM_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
 #undef CP11X_PCIE0_BASE
 #undef CP11X_PCIE1_BASE
 #undef CP11X_PCIE2_BASE
diff --git a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
index 7d1ab097453d..9dcf16beabf5 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
@@ -10,8 +10,7 @@
 
 #include "armada-common.dtsi"
 
-#define CP11X_PCIEx_MEM_BASE(iface)	(CP11X_PCIE_MEM_BASE + (iface *  0x1000000))
-#define CP11X_PCIEx_CONF_BASE(iface)	(CP11X_PCIEx_MEM_BASE(iface) + 0xf00000)
+#define CP11X_PCIEx_CONF_BASE(iface)	(CP11X_PCIEx_MEM_BASE(iface) + CP11X_PCIEx_MEM_SIZE(iface))
 
 / {
 	/*
@@ -507,7 +506,7 @@
 
 		bus-range = <0 0xff>;
 		/* non-prefetchable memory */
-		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(0) 0  CP11X_PCIEx_MEM_BASE(0) 0 0xf00000>;
+		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(0) 0  CP11X_PCIEx_MEM_BASE(0) 0 CP11X_PCIEx_MEM_SIZE(0)>;
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 22 IRQ_TYPE_LEVEL_HIGH>;
 		interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
@@ -531,7 +530,7 @@
 
 		bus-range = <0 0xff>;
 		/* non-prefetchable memory */
-		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(1) 0  CP11X_PCIEx_MEM_BASE(1) 0 0xf00000>;
+		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(1) 0  CP11X_PCIEx_MEM_BASE(1) 0 CP11X_PCIEx_MEM_SIZE(1)>;
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 24 IRQ_TYPE_LEVEL_HIGH>;
 		interrupts = <24 IRQ_TYPE_LEVEL_HIGH>;
@@ -556,7 +555,7 @@
 
 		bus-range = <0 0xff>;
 		/* non-prefetchable memory */
-		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(2) 0  CP11X_PCIEx_MEM_BASE(2) 0 0xf00000>;
+		ranges = <0x82000000 0 CP11X_PCIEx_MEM_BASE(2) 0  CP11X_PCIEx_MEM_BASE(2) 0 CP11X_PCIEx_MEM_SIZE(2)>;
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &CP11X_LABEL(icu_nsr) 23 IRQ_TYPE_LEVEL_HIGH>;
 		interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
