Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280B14E472
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NM/j/j7eFcnYAfxGGs7hXuwe40JINSYxw8/e2kjs7c0=; b=S25g6PMO1DLNrT5/CRlXmst3SS
	H3Aj7JD+kHTc9jQHZYEUTZzyeJfAAY2B3EOpL8l1tMm/E2jH01GBDKiP721IMJEHHKCrvRd0K5xn6
	QUDCQ5XyxzqSNUUi7SEP4oHAAz6Jy2ysiItsjslmkGq6siKj6lUBYeHav2+SD7yiY7xEWiQb/WlBm
	VcnELdc+Ddc/UrPz58tDh6z0NF83ov1JQtot8kPz9hhgxQDK9S9Nap0478YJeKGDlG+Bxg7+DmM/v
	VSJfRTp9+lFSXtmBHMf27AJDp1uH+X5/K5n3nc+PZrCeyOyrHleh4InAy4BkBV8poqalh0UrA5M8R
	UytFFdeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heG6y-0004Pr-0Y; Fri, 21 Jun 2019 09:45:36 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFgW-0002tV-2a
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:18:19 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 1856925BE99;
 Fri, 21 Jun 2019 19:16:39 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 9BBD1942DF5; Fri, 21 Jun 2019 11:16:33 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 19/53] arm64: dts: renesas: Revise usb2_phy nodes and phys
 properties
Date: Fri, 21 Jun 2019 11:15:57 +0200
Message-Id: <7794bd7ed709abe042fed6e0a09712d8cd55b589.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021816_489248_D1603F2D 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Since the commit 233da2c9ec22 ("dt-bindings: phy: rcar-gen3-phy-usb2:
Revise #phy-cells property") revised the #phy-cells, this patch follows
the updated document for R-Car Gen3 and RZ/A2 SoCs.

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi | 14 +++++++-------
 arch/arm64/boot/dts/renesas/r8a774c0.dtsi |  8 ++++----
 arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 28 ++++++++++++++--------------
 arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 14 +++++++-------
 arch/arm64/boot/dts/renesas/r8a77965.dtsi | 14 +++++++-------
 arch/arm64/boot/dts/renesas/r8a77990.dtsi |  8 ++++----
 arch/arm64/boot/dts/renesas/r8a77995.dtsi |  8 ++++----
 7 files changed, 47 insertions(+), 47 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
index ff9bc16f4bbc..c2d99f5aaf74 100644
--- a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
@@ -606,7 +606,7 @@
 			       <&usb_dmac1 0>, <&usb_dmac1 1>;
 			dma-names = "ch0", "ch1", "ch2", "ch3";
 			renesas,buswait = <11>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 3>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A774A1_PD_ALWAYS_ON>;
 			resets = <&cpg 704>;
@@ -1733,7 +1733,7 @@
 			reg = <0 0xee080000 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A774A1_PD_ALWAYS_ON>;
 			resets = <&cpg 703>;
@@ -1745,7 +1745,7 @@
 			reg = <0 0xee0a0000 0 0x100>;
 			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 702>;
-			phys = <&usb2_phy1>;
+			phys = <&usb2_phy1 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A774A1_PD_ALWAYS_ON>;
 			resets = <&cpg 702>;
@@ -1757,7 +1757,7 @@
 			reg = <0 0xee080100 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 2>;
 			phy-names = "usb";
 			companion = <&ohci0>;
 			power-domains = <&sysc R8A774A1_PD_ALWAYS_ON>;
@@ -1770,7 +1770,7 @@
 			reg = <0 0xee0a0100 0 0x100>;
 			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 702>;
-			phys = <&usb2_phy1>;
+			phys = <&usb2_phy1 2>;
 			phy-names = "usb";
 			companion = <&ohci1>;
 			power-domains = <&sysc R8A774A1_PD_ALWAYS_ON>;
@@ -1786,7 +1786,7 @@
 			clocks = <&cpg CPG_MOD 703>;
 			power-domains = <&sysc R8A774A1_PD_ALWAYS_ON>;
 			resets = <&cpg 703>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
@@ -1797,7 +1797,7 @@
 			clocks = <&cpg CPG_MOD 702>;
 			power-domains = <&sysc R8A774A1_PD_ALWAYS_ON>;
 			resets = <&cpg 702>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r8a774c0.dtsi b/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
index 500b7bd58022..e7b5bf23f978 100644
--- a/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
@@ -684,7 +684,7 @@
 			       <&usb_dmac1 0>, <&usb_dmac1 1>;
 			dma-names = "ch0", "ch1", "ch2", "ch3";
 			renesas,buswait = <11>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 3>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
 			resets = <&cpg 704>, <&cpg 703>;
@@ -1580,7 +1580,7 @@
 			reg = <0 0xee080000 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
@@ -1592,7 +1592,7 @@
 			reg = <0 0xee080100 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 2>;
 			phy-names = "usb";
 			companion = <&ohci0>;
 			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
@@ -1608,7 +1608,7 @@
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
 			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r8a7795.dtsi b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
index 7a8fd80331d0..e09bd319e3ca 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
@@ -812,7 +812,7 @@
 			       <&usb_dmac1 0>, <&usb_dmac1 1>;
 			dma-names = "ch0", "ch1", "ch2", "ch3";
 			renesas,buswait = <11>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 3>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 704>, <&cpg 703>;
@@ -829,7 +829,7 @@
 			       <&usb_dmac3 0>, <&usb_dmac3 1>;
 			dma-names = "ch0", "ch1", "ch2", "ch3";
 			renesas,buswait = <11>;
-			phys = <&usb2_phy3>;
+			phys = <&usb2_phy3 3>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 705>, <&cpg 700>;
@@ -2416,7 +2416,7 @@
 			reg = <0 0xee080000 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
@@ -2428,7 +2428,7 @@
 			reg = <0 0xee0a0000 0 0x100>;
 			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 702>;
-			phys = <&usb2_phy1>;
+			phys = <&usb2_phy1 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 702>;
@@ -2440,7 +2440,7 @@
 			reg = <0 0xee0c0000 0 0x100>;
 			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 701>;
-			phys = <&usb2_phy2>;
+			phys = <&usb2_phy2 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 701>;
@@ -2452,7 +2452,7 @@
 			reg = <0 0xee0e0000 0 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 700>, <&cpg CPG_MOD 705>;
-			phys = <&usb2_phy3>;
+			phys = <&usb2_phy3 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 700>, <&cpg 705>;
@@ -2464,7 +2464,7 @@
 			reg = <0 0xee080100 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 2>;
 			phy-names = "usb";
 			companion = <&ohci0>;
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
@@ -2477,7 +2477,7 @@
 			reg = <0 0xee0a0100 0 0x100>;
 			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 702>;
-			phys = <&usb2_phy1>;
+			phys = <&usb2_phy1 2>;
 			phy-names = "usb";
 			companion = <&ohci1>;
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
@@ -2490,7 +2490,7 @@
 			reg = <0 0xee0c0100 0 0x100>;
 			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 701>;
-			phys = <&usb2_phy2>;
+			phys = <&usb2_phy2 2>;
 			phy-names = "usb";
 			companion = <&ohci2>;
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
@@ -2503,7 +2503,7 @@
 			reg = <0 0xee0e0100 0 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 700>, <&cpg CPG_MOD 705>;
-			phys = <&usb2_phy3>;
+			phys = <&usb2_phy3 2>;
 			phy-names = "usb";
 			companion = <&ohci3>;
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
@@ -2519,7 +2519,7 @@
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
@@ -2530,7 +2530,7 @@
 			clocks = <&cpg CPG_MOD 702>;
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 702>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
@@ -2541,7 +2541,7 @@
 			clocks = <&cpg CPG_MOD 701>;
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 701>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
@@ -2553,7 +2553,7 @@
 			clocks = <&cpg CPG_MOD 700>, <&cpg CPG_MOD 705>;
 			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
 			resets = <&cpg 700>, <&cpg 705>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r8a7796.dtsi b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
index a5c6a9920214..452532fbc443 100644
--- a/arch/arm64/boot/dts/renesas/r8a7796.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
@@ -783,7 +783,7 @@
 			       <&usb_dmac1 0>, <&usb_dmac1 1>;
 			dma-names = "ch0", "ch1", "ch2", "ch3";
 			renesas,buswait = <11>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 3>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A7796_PD_ALWAYS_ON>;
 			resets = <&cpg 704>, <&cpg 703>;
@@ -2286,7 +2286,7 @@
 			reg = <0 0xee080000 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A7796_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
@@ -2298,7 +2298,7 @@
 			reg = <0 0xee0a0000 0 0x100>;
 			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 702>;
-			phys = <&usb2_phy1>;
+			phys = <&usb2_phy1 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A7796_PD_ALWAYS_ON>;
 			resets = <&cpg 702>;
@@ -2310,7 +2310,7 @@
 			reg = <0 0xee080100 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 2>;
 			phy-names = "usb";
 			companion = <&ohci0>;
 			power-domains = <&sysc R8A7796_PD_ALWAYS_ON>;
@@ -2323,7 +2323,7 @@
 			reg = <0 0xee0a0100 0 0x100>;
 			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 702>;
-			phys = <&usb2_phy1>;
+			phys = <&usb2_phy1 2>;
 			phy-names = "usb";
 			companion = <&ohci1>;
 			power-domains = <&sysc R8A7796_PD_ALWAYS_ON>;
@@ -2339,7 +2339,7 @@
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
 			power-domains = <&sysc R8A7796_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
@@ -2350,7 +2350,7 @@
 			clocks = <&cpg CPG_MOD 702>;
 			power-domains = <&sysc R8A7796_PD_ALWAYS_ON>;
 			resets = <&cpg 702>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r8a77965.dtsi b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
index 41dfeadb89a6..814ed14b092b 100644
--- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
@@ -667,7 +667,7 @@
 			       <&usb_dmac1 0>, <&usb_dmac1 1>;
 			dma-names = "ch0", "ch1", "ch2", "ch3";
 			renesas,buswait = <11>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 3>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
 			resets = <&cpg 704>, <&cpg 703>;
@@ -2026,7 +2026,7 @@
 			reg = <0 0xee080000 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
@@ -2038,7 +2038,7 @@
 			reg = <0 0xee0a0000 0 0x100>;
 			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 702>;
-			phys = <&usb2_phy1>;
+			phys = <&usb2_phy1 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
 			resets = <&cpg 702>;
@@ -2050,7 +2050,7 @@
 			reg = <0 0xee080100 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 2>;
 			phy-names = "usb";
 			companion = <&ohci0>;
 			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
@@ -2063,7 +2063,7 @@
 			reg = <0 0xee0a0100 0 0x100>;
 			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 702>;
-			phys = <&usb2_phy1>;
+			phys = <&usb2_phy1 2>;
 			phy-names = "usb";
 			companion = <&ohci1>;
 			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
@@ -2079,7 +2079,7 @@
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
 			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
@@ -2090,7 +2090,7 @@
 			clocks = <&cpg CPG_MOD 702>;
 			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
 			resets = <&cpg 702>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
index 56cb566ffa09..3864fdc7ea91 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
@@ -630,7 +630,7 @@
 			       <&usb_dmac1 0>, <&usb_dmac1 1>;
 			dma-names = "ch0", "ch1", "ch2", "ch3";
 			renesas,buswait = <11>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 3>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A77990_PD_ALWAYS_ON>;
 			resets = <&cpg 704>, <&cpg 703>;
@@ -1537,7 +1537,7 @@
 			reg = <0 0xee080000 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A77990_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
@@ -1549,7 +1549,7 @@
 			reg = <0 0xee080100 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 2>;
 			phy-names = "usb";
 			companion = <&ohci0>;
 			power-domains = <&sysc R8A77990_PD_ALWAYS_ON>;
@@ -1565,7 +1565,7 @@
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
 			power-domains = <&sysc R8A77990_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
index 5bf3af246e14..e0a0149464a9 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
@@ -354,7 +354,7 @@
 			       <&usb_dmac1 0>, <&usb_dmac1 1>;
 			dma-names = "ch0", "ch1", "ch2", "ch3";
 			renesas,buswait = <11>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 3>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
 			resets = <&cpg 704>, <&cpg 703>;
@@ -875,7 +875,7 @@
 			reg = <0 0xee080000 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 1>;
 			phy-names = "usb";
 			power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
@@ -887,7 +887,7 @@
 			reg = <0 0xee080100 0 0x100>;
 			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
-			phys = <&usb2_phy0>;
+			phys = <&usb2_phy0 2>;
 			phy-names = "usb";
 			companion = <&ohci0>;
 			power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
@@ -903,7 +903,7 @@
 			clocks = <&cpg CPG_MOD 703>, <&cpg CPG_MOD 704>;
 			power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
 			resets = <&cpg 703>, <&cpg 704>;
-			#phy-cells = <0>;
+			#phy-cells = <1>;
 			status = "disabled";
 		};
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
