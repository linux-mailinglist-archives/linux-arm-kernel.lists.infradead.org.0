Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A03162628
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEIFy42gw0qlhhlLlnnXZUmuxZXHI4Pn1MmF4qJhwK8=; b=TaexWHPxX2pjqg
	w1/LWLraySXTnOVmkpRu0UxbKy6QDwI0hhjxZVhvrewJ23jCvKSvlmodk/YfH1l7swDJ+jEYOUmeg
	nuptwgyi0AazPhWEJH1OU2W3CM0at0BJCtICXlWjM7PryPA1UP8RMsDtQRncQRdMtJzp7NRQhkGQZ
	U4uzLOJwc17p56FaojmaDHNK7+BGN7taoixPS6cJ0tjmI5Soo9NN9KC5uu8b6Yed4MFchGkfg9++D
	D1kp8sWuUXz3KZ22VNHrpGVE/jGWX8cnZ8kJNsPjp2mN1Ssq+5hUs9tlfKB6IqrJQLboA6qjWcFT1
	KaS237O3cWOQhMRuCRrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j423F-0004Fm-MZ; Tue, 18 Feb 2020 12:32:33 +0000
Received: from 212.199.177.27.static.012.net.il ([212.199.177.27]
 helo=herzl.nuvoton.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j422t-00044w-I9
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:32:13 +0000
Received: from taln60.nuvoton.co.il (ntil-fw [212.199.177.25])
 by herzl.nuvoton.co.il (8.13.8/8.13.8) with ESMTP id 01ICVdWY007990;
 Tue, 18 Feb 2020 14:31:39 +0200
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id 316E76032F; Tue, 18 Feb 2020 14:31:39 +0200 (IST)
From: Tomer Maimon <tmaimon77@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, joel@jms.id.au,
 avifishman70@gmail.com, tali.perry1@gmail.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/3] arm: dts: modify NPCM7xx device tree clock parameter
 to clock constant
Date: Tue, 18 Feb 2020 14:31:26 +0200
Message-Id: <20200218123128.17990-2-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200218123128.17990-1-tmaimon77@gmail.com>
References: <20200218123128.17990-1-tmaimon77@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_043212_018877_DD2297CA 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Modify NPCM7xx device tree clock parameter to clock constants that
define at include/dt-bindings/clock/nuvoton,npcm7xx-clock.h file.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi | 19 ++++++++++---------
 arch/arm/boot/dts/nuvoton-npcm750.dtsi        |  6 +++---
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
index d2d0761295a4..16a28c5c4131 100644
--- a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
@@ -3,6 +3,7 @@
 // Copyright 2018 Google, Inc.
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/nuvoton,npcm7xx-clock.h>
 
 / {
 	#address-cells = <1>;
@@ -80,7 +81,7 @@
 			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
 			cache-unified;
 			cache-level = <2>;
-			clocks = <&clk 10>;
+			clocks = <&clk NPCM7XX_CLK_AXI>;
 			arm,shared-override;
 		};
 
@@ -120,7 +121,7 @@
 				compatible = "nuvoton,npcm750-timer";
 				interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <0x8000 0x50>;
-				clocks = <&clk 5>;
+				clocks = <&clk NPCM7XX_CLK_TIMER>;
 			};
 
 			watchdog0: watchdog@801C {
@@ -128,7 +129,7 @@
 				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <0x801C 0x4>;
 				status = "disabled";
-				clocks = <&clk 5>;
+				clocks = <&clk NPCM7XX_CLK_TIMER>;
 			};
 
 			watchdog1: watchdog@901C {
@@ -136,7 +137,7 @@
 				interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <0x901C 0x4>;
 				status = "disabled";
-				clocks = <&clk 5>;
+				clocks = <&clk NPCM7XX_CLK_TIMER>;
 			};
 
 			watchdog2: watchdog@a01C {
@@ -144,13 +145,13 @@
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <0xa01C 0x4>;
 				status = "disabled";
-				clocks = <&clk 5>;
+				clocks = <&clk NPCM7XX_CLK_TIMER>;
 			};
 
 			serial0: serial@1000 {
 				compatible = "nuvoton,npcm750-uart";
 				reg = <0x1000 0x1000>;
-				clocks = <&clk 6>;
+				clocks = <&clk NPCM7XX_CLK_UART>;
 				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
 				reg-shift = <2>;
 				status = "disabled";
@@ -159,7 +160,7 @@
 			serial1: serial@2000 {
 				compatible = "nuvoton,npcm750-uart";
 				reg = <0x2000 0x1000>;
-				clocks = <&clk 6>;
+				clocks = <&clk NPCM7XX_CLK_UART>;
 				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 				reg-shift = <2>;
 				status = "disabled";
@@ -168,7 +169,7 @@
 			serial2: serial@3000 {
 				compatible = "nuvoton,npcm750-uart";
 				reg = <0x3000 0x1000>;
-				clocks = <&clk 6>;
+				clocks = <&clk NPCM7XX_CLK_UART>;
 				interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
 				reg-shift = <2>;
 				status = "disabled";
@@ -177,7 +178,7 @@
 			serial3: serial@4000 {
 				compatible = "nuvoton,npcm750-uart";
 				reg = <0x4000 0x1000>;
-				clocks = <&clk 6>;
+				clocks = <&clk NPCM7XX_CLK_UART>;
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 				reg-shift = <2>;
 				status = "disabled";
diff --git a/arch/arm/boot/dts/nuvoton-npcm750.dtsi b/arch/arm/boot/dts/nuvoton-npcm750.dtsi
index 6ac340533587..a37bb2294b8f 100644
--- a/arch/arm/boot/dts/nuvoton-npcm750.dtsi
+++ b/arch/arm/boot/dts/nuvoton-npcm750.dtsi
@@ -17,7 +17,7 @@
 		cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a9";
-			clocks = <&clk 0>;
+			clocks = <&clk NPCM7XX_CLK_CPU>;
 			clock-names = "clk_cpu";
 			reg = <0>;
 			next-level-cache = <&l2>;
@@ -26,7 +26,7 @@
 		cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a9";
-			clocks = <&clk 0>;
+			clocks = <&clk NPCM7XX_CLK_CPU>;
 			clock-names = "clk_cpu";
 			reg = <1>;
 			next-level-cache = <&l2>;
@@ -38,7 +38,7 @@
 			reg = <0x3fe600 0x20>;
 			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) |
 						  IRQ_TYPE_LEVEL_HIGH)>;
-			clocks = <&clk 5>;
+			clocks = <&clk NPCM7XX_CLK_AHB>;
 		};
 	};
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
