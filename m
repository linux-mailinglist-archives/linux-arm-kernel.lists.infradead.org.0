Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDE12B3EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBCJb/Y0xGRHgvQtU6986R+W8MV/Ole8MVsYfgdZvII=; b=IXqhGJgl+zEE77
	y3Hufgi5o28JkuCMaZeuBarqeKqO6akCyNs/HHsBlu+ie9xZiBpRIGs4PoRW61QMLmyJ3ICfieEAb
	IobbUS3m5Gx1Y8sNBTY75VxVKgoKz/eRYRX9z0izu+cJLsd1v5gl3HbBTDCZ61fEQsvPVo6UHHNR2
	0FdgwcpdGt4nMXDbQLww+o9KjxDN+VLgZojCDOAaSuK1fmJK1n/Q2pAdplpaSHS7fAEHmBcD/uXfQ
	Y4QsEseV8f+I9yBWkb1oiSrHCVBc0W0yzE5PxQZ3zpORD3iqxolqUNkfWE583CsCDSRAFt48j+ux0
	HQ91CY0Wel2TGNRDTCkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEKH-0004XS-QH; Mon, 27 May 2019 12:02:01 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEJQ-0003Yr-Dd
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:01:10 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 2AFC2240004;
 Mon, 27 May 2019 12:00:59 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 07/10] ARM: dts: sun6i: Fix RTC node
Date: Mon, 27 May 2019 14:00:39 +0200
Message-Id: <9b447096c79c8660970013068457c05cb03f9027.1558958381.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_050108_652817_769D5FAD 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RTC node doesn't match what is described in the binding for historical
reasons. Let's add the proper description.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun6i-a31.dtsi | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index c04efad81bbc..8832650cdc8d 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -223,7 +223,7 @@
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
 			clock-frequency = <32768>;
-			clock-output-names = "osc32k";
+			clock-output-names = "ext_osc32k";
 		};
 
 		/*
@@ -588,7 +588,7 @@
 		ccu: clock@1c20000 {
 			compatible = "allwinner,sun6i-a31-ccu";
 			reg = <0x01c20000 0x400>;
-			clocks = <&osc24M>, <&osc32k>;
+			clocks = <&osc24M>, <&rtc 0>;
 			clock-names = "hosc", "losc";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
@@ -601,7 +601,7 @@
 				     <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_APB1_PIO>, <&osc24M>, <&osc32k>;
+			clocks = <&ccu CLK_APB1_PIO>, <&osc24M>, <&rtc 0>;
 			clock-names = "apb", "hosc", "losc";
 			gpio-controller;
 			interrupt-controller;
@@ -1279,10 +1279,13 @@
 		};
 
 		rtc: rtc@1f00000 {
+			#clock-cells = <1>;
 			compatible = "allwinner,sun6i-a31-rtc";
 			reg = <0x01f00000 0x54>;
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc32k>;
+			clock-output-names = "osc32k";
 		};
 
 		nmi_intc: interrupt-controller@1f00c00 {
@@ -1300,7 +1303,7 @@
 			ar100: ar100_clk {
 				compatible = "allwinner,sun6i-a31-ar100-clk";
 				#clock-cells = <0>;
-				clocks = <&osc32k>, <&osc24M>,
+				clocks = <&rtc 0>, <&osc24M>,
 					 <&ccu CLK_PLL_PERIPH>,
 					 <&ccu CLK_PLL_PERIPH>;
 				clock-output-names = "ar100";
@@ -1335,7 +1338,7 @@
 			ir_clk: ir_clk {
 				#clock-cells = <0>;
 				compatible = "allwinner,sun4i-a10-mod0-clk";
-				clocks = <&osc32k>, <&osc24M>;
+				clocks = <&rtc 0>, <&osc24M>;
 				clock-output-names = "ir";
 			};
 
@@ -1365,7 +1368,7 @@
 			reg = <0x01f02c00 0x400>;
 			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&apb0_gates 0>, <&osc24M>, <&osc32k>;
+			clocks = <&apb0_gates 0>, <&osc24M>, <&rtc 0>;
 			clock-names = "apb", "hosc", "losc";
 			resets = <&apb0_rst 0>;
 			gpio-controller;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
