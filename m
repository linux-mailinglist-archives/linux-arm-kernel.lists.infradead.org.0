Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CBE18056D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0wrvOczY+f3F4oO45zoTbxdaueV3uXA24rEfrp4Ee4=; b=Vba1CdDUTgextz
	rsC54wxdQFzA03YivnuHTSNjt2WMybiaX4m5uQwn1w2wMmS22Am80sj4jxaT/Tn9c7ELiYshVWsiw
	gp0OPSTpeq4KFR5AhQofQZm6tVZHdcxM2ONeIVy8WAPSM43e7smm1gBDHz4pU/+7KwTQXiXHVRkxH
	QRnKbCa8j/05gzqZtd7HHoM6/2e6iET1c2Ps1+0gr3DRcnEaO1L83u7ok95tC/+Lx2r6C5/aJwDhc
	RSC88F9QAoO+blIbd0mH7NjjnAuyyQU8kvf5VRTAQ5zgz04U0MBcnTLIfs96lPu+BVZbQLcrTWi40
	EYypMvLU9/Gnvo/lCQNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBizB-0000Ja-TC; Tue, 10 Mar 2020 17:48:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiyH-00082m-VK
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:47:16 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0BDC2146E;
 Tue, 10 Mar 2020 17:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583862432;
 bh=yEVqSVzjSrlW03t5Uobt/12zNzyYOKdExRRlDrrKUNg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nTwcoteXlhPI4lyJgviLHnEf8uRhovlKa30fr68qYMQc7fzq1uwEH+p9V9FeXUJ8X
 2QMS5aUIecXbxGl3iy/hAhJohWHqWu0j3BCBmYCliTQr1jPww21H2QRiOr8xlyqsPT
 /iTc2G5/PKwqhFXOdMqXThGDDjftjDjkrUtREdnA=
Received: by wens.tw (Postfix, from userid 1000)
 id 14A9960308; Wed, 11 Mar 2020 01:47:10 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 3/3] ARM: dts: sun8i: r40: Move SPI device nodes based on
 address order
Date: Wed, 11 Mar 2020 01:47:09 +0800
Message-Id: <20200310174709.24174-4-wens@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310174709.24174-1-wens@kernel.org>
References: <20200310174709.24174-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_104714_047635_81F31E71 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

When the SPI device nodes were added, they were added in the wrong
location in the device tree file. The device nodes should be sorted
by register address.

Move the devices node to their correct positions within the file.

Fixes: 554581b79139 ("ARM: dts: sun8i: R40: Add SPI controllers nodes and pinmuxes")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 104 +++++++++++++++----------------
 1 file changed, 52 insertions(+), 52 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 81cc92ddc78b..f0ede4f52aa3 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -198,6 +198,32 @@ nmi_intc: interrupt-controller@1c00030 {
 			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		spi0: spi@1c05000 {
+			compatible = "allwinner,sun8i-r40-spi",
+				     "allwinner,sun8i-h3-spi";
+			reg = <0x01c05000 0x1000>;
+			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
+			clock-names = "ahb", "mod";
+			resets = <&ccu RST_BUS_SPI0>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		spi1: spi@1c06000 {
+			compatible = "allwinner,sun8i-r40-spi",
+				     "allwinner,sun8i-h3-spi";
+			reg = <0x01c06000 0x1000>;
+			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
+			clock-names = "ahb", "mod";
+			resets = <&ccu RST_BUS_SPI1>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		csi0: csi@1c09000 {
 			compatible = "allwinner,sun8i-r40-csi0",
 				     "allwinner,sun7i-a20-csi0";
@@ -307,6 +333,19 @@ crypto: crypto@1c15000 {
 			resets = <&ccu RST_BUS_CE>;
 		};
 
+		spi2: spi@1c17000 {
+			compatible = "allwinner,sun8i-r40-spi",
+				     "allwinner,sun8i-h3-spi";
+			reg = <0x01c17000 0x1000>;
+			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
+			clock-names = "ahb", "mod";
+			resets = <&ccu RST_BUS_SPI2>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		ahci: sata@1c18000 {
 			compatible = "allwinner,sun8i-r40-ahci";
 			reg = <0x01c18000 0x1000>;
@@ -364,6 +403,19 @@ ohci2: usb@1c1c400 {
 			status = "disabled";
 		};
 
+		spi3: spi@1c1f000 {
+			compatible = "allwinner,sun8i-r40-spi",
+				     "allwinner,sun8i-h3-spi";
+			reg = <0x01c1f000 0x1000>;
+			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
+			clock-names = "ahb", "mod";
+			resets = <&ccu RST_BUS_SPI3>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		ccu: clock@1c20000 {
 			compatible = "allwinner,sun8i-r40-ccu";
 			reg = <0x01c20000 0x400>;
@@ -692,58 +744,6 @@ i2c4: i2c@1c2c000 {
 			#size-cells = <0>;
 		};
 
-		spi0: spi@1c05000 {
-			compatible = "allwinner,sun8i-r40-spi",
-				     "allwinner,sun8i-h3-spi";
-			reg = <0x01c05000 0x1000>;
-			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
-			clock-names = "ahb", "mod";
-			resets = <&ccu RST_BUS_SPI0>;
-			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-
-		spi1: spi@1c06000 {
-			compatible = "allwinner,sun8i-r40-spi",
-				     "allwinner,sun8i-h3-spi";
-			reg = <0x01c06000 0x1000>;
-			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
-			clock-names = "ahb", "mod";
-			resets = <&ccu RST_BUS_SPI1>;
-			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-
-		spi2: spi@1c17000 {
-			compatible = "allwinner,sun8i-r40-spi",
-				     "allwinner,sun8i-h3-spi";
-			reg = <0x01c17000 0x1000>;
-			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
-			clock-names = "ahb", "mod";
-			resets = <&ccu RST_BUS_SPI2>;
-			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-
-		spi3: spi@1c1f000 {
-			compatible = "allwinner,sun8i-r40-spi",
-				     "allwinner,sun8i-h3-spi";
-			reg = <0x01c1f000 0x1000>;
-			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
-			clock-names = "ahb", "mod";
-			resets = <&ccu RST_BUS_SPI3>;
-			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-
 		gmac: ethernet@1c50000 {
 			compatible = "allwinner,sun8i-r40-gmac";
 			syscon = <&ccu>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
