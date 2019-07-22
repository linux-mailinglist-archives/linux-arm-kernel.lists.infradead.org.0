Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85D2701E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fciZ0/ClWi/0melNkT9AYaVKN3HRO0krPR4dpdysTuM=; b=byFWcplhorrPH/
	DrWWPEYiFk2u9h6g7rIz4OaCoaNKDKlw1mNyTaIf6glA/SUguNwis2eVIK/kddYjNHpkDxfJDPnod
	NhiZBsXcLsN7SJln0YyO5EBuhUuTCnG49PpRHbP2jDfo/0t/5LBLOeC//4JcQFoMg61eUe/02+0L/
	p6O7dC1HB34Gfu7GDCkWwwfpsVvmRSZwV68dOe9aEMP6QvK4I45OBAtRp8N5FimDEmnBC5Ildrop0
	k98PA0o2zqY8GGjXTNQ5id+Hc9co/y721bWE9i4F6RLNL9azfGq23UlvvthWTKfBAz3+uuS7YdCKS
	FScLm4dcgBRDeOEJRKcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYzd-0006bS-Jc; Mon, 22 Jul 2019 14:08:45 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYzK-0006b0-6N
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:08:27 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 5A77260006;
 Mon, 22 Jul 2019 14:08:19 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 1/2] ARM: dts: sunxi: Unify the DE2 bus clocks order
Date: Mon, 22 Jul 2019 16:08:16 +0200
Message-Id: <20190722140817.21608-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_070826_551328_06364207 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DE2 bus takes two clocks, named bus and mod according to the binding.

However, the order of these clocks change from one SoC to another. Even
though it might not be an issue in most cases, having consistency will help
if we ever need to have some code to deal with deprecated bindings, and in
general it's just better.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi             | 8 ++++----
 arch/arm/boot/dts/sun8i-r40.dtsi              | 8 ++++----
 arch/arm/boot/dts/sun8i-v3s.dtsi              | 8 ++++----
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            | 8 ++++----
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 8 ++++----
 5 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index b849fbfd3cbf..60f36147dafc 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -314,10 +314,10 @@
 		display_clocks: clock@1000000 {
 			compatible = "allwinner,sun8i-a83t-de2-clk";
 			reg = <0x01000000 0x100000>;
-			clocks = <&ccu CLK_PLL_DE>,
-				 <&ccu CLK_BUS_DE>;
-			clock-names = "mod",
-				      "bus";
+			clocks = <&ccu CLK_BUS_DE>,
+				 <&ccu CLK_PLL_DE>;
+			clock-names = "bus",
+				      "mod";
 			resets = <&ccu RST_BUS_DE>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 6007d0cc252d..6323941b0f3e 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -119,10 +119,10 @@
 			compatible = "allwinner,sun8i-r40-de2-clk",
 				     "allwinner,sun8i-h3-de2-clk";
 			reg = <0x01000000 0x100000>;
-			clocks = <&ccu CLK_DE>,
-				 <&ccu CLK_BUS_DE>;
-			clock-names = "mod",
-				      "bus";
+			clocks = <&ccu CLK_BUS_DE>,
+				 <&ccu CLK_DE>;
+			clock-names = "bus",
+				      "mod";
 			resets = <&ccu RST_BUS_DE>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index 1fce5b07c65c..ddbcc28dc541 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -106,10 +106,10 @@
 		display_clocks: clock@1000000 {
 			compatible = "allwinner,sun8i-v3s-de2-clk";
 			reg = <0x01000000 0x100000>;
-			clocks = <&ccu CLK_DE>,
-				 <&ccu CLK_BUS_DE>;
-			clock-names = "mod",
-				      "bus";
+			clocks = <&ccu CLK_BUS_DE>,
+				 <&ccu CLK_DE>;
+			clock-names = "bus",
+				      "mod";
 			resets = <&ccu RST_BUS_DE>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index fa8bac5aa3ce..a7cd88fb4012 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -114,10 +114,10 @@
 		display_clocks: clock@1000000 {
 			/* compatible is in per SoC .dtsi file */
 			reg = <0x01000000 0x100000>;
-			clocks = <&ccu CLK_DE>,
-				 <&ccu CLK_BUS_DE>;
-			clock-names = "mod",
-				      "bus";
+			clocks = <&ccu CLK_BUS_DE>,
+				 <&ccu CLK_DE>;
+			clock-names = "bus",
+				      "mod";
 			resets = <&ccu RST_BUS_DE>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 9cc9bdde81ac..60afacfe141d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -228,10 +228,10 @@
 			display_clocks: clock@0 {
 				compatible = "allwinner,sun50i-a64-de2-clk";
 				reg = <0x0 0x100000>;
-				clocks = <&ccu CLK_DE>,
-					 <&ccu CLK_BUS_DE>;
-				clock-names = "mod",
-					      "bus";
+				clocks = <&ccu CLK_BUS_DE>,
+					 <&ccu CLK_DE>;
+				clock-names = "bus",
+					      "mod";
 				resets = <&ccu RST_BUS_DE>;
 				#clock-cells = <1>;
 				#reset-cells = <1>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
