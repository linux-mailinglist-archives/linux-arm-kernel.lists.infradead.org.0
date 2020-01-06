Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6B1130AEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 01:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hIm/tRTB9Ga2hhKFhtaNKZ3vRuoucfA8AxxFVDaNRZM=; b=GE0
	/HptXDbfgB6nK3TtUsLoLM5fPRJ5nXds5CMhvcD3Eftg/rzjsHJ1WWVBlCIaW9Myx8RYud6n4pVtn
	IeSVCDyVKoMOAgxpAIbiTc+M7eqyMvBW2bkHZ0yoq6l4j0awgK0cFzjafoZ16WptzNgjEG+JBLH0l
	LU8NNJ6nsbo8EHsTkcwVEa9ZknxWmxihjZpSiycUOlu6wxVCMUGzvg3oCFwKvmXzzEJotuVyhnkAy
	mGmoikZytByrcedNamU+lphZEZWXmvxRN6sW3NHWjTQ1LAA/LYiYeSLh99oIcBjs4aEBqhPJ2PXxc
	mWm2TBlRCfAVo2rBcAYG1GBiKl+vp3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioGQM-00062Z-7w; Mon, 06 Jan 2020 00:39:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioGQG-00061x-8m
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 00:39:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F2D531B;
 Sun,  5 Jan 2020 16:39:06 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C4D53F703;
 Sun,  5 Jan 2020 16:39:04 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2] ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
Date: Mon,  6 Jan 2020 00:38:49 +0000
Message-Id: <20200106003849.16666-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_163908_397227_2E91BC25 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner R40 SoC contains four SPI controllers, using the newer
sun6i design (but at the legacy addresses).
The controller seems to be fully compatible to the A64 one, so no driver
changes are necessary.
The first three controllers can be used on two sets of pins, but SPI3 is
only routed to one set on Port A.
Only the pin groups for SPI0 on PortC and SPI1 on PortI are added here,
because those seem to be the only one exposed on the Bananapi boards.

Tested by connecting a SPI flash to a Bananapi M2 Berry SPI0 and SPI1
header pins.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
Changes from v1 3/3 ... v2:
- Removed most pin groups except SPI0-PC and SPI1-PI
- Split off CS pins
- Add omit-if-no-ref tags

 arch/arm/boot/dts/sun8i-r40.dtsi | 90 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 8dcbc4465fbb..c5654fd034be 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -418,6 +418,36 @@
 				bias-pull-up;
 			};
 
+			/omit-if-no-ref/
+			spi0_pc_pins: spi0-pc-pins {
+				pins = "PC0", "PC1", "PC2";
+				function = "spi0";
+			};
+
+			/omit-if-no-ref/
+			spi0_cs0_pc_pin: spi0-cs0-pc-pin {
+				pins = "PC23";
+				function = "spi0";
+			};
+
+			/omit-if-no-ref/
+			spi1_pi_pins: spi1-pi-pins {
+				pins = "PI17", "PI18", "PI19";
+				function = "spi1";
+			};
+
+			/omit-if-no-ref/
+			spi1_cs0_pi_pin: spi1-cs0-pi-pin {
+				pins = "PI16";
+				function = "spi1";
+			};
+
+			/omit-if-no-ref/
+			spi1_cs1_pi_pin: spi1-cs1-pi-pin {
+				pins = "PI15";
+				function = "spi1";
+			};
+
 			uart0_pb_pins: uart0-pb-pins {
 				pins = "PB22", "PB23";
 				function = "uart0";
@@ -594,6 +624,66 @@
 			#size-cells = <0>;
 		};
 
+		spi0: spi@1c05000 {
+			compatible = "allwinner,sun8i-r40-spi",
+				     "allwinner,sun8i-h3-spi";
+			reg = <0x01c05000 0x1000>;
+			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
+			clock-names = "ahb", "mod";
+			dmas = <&dma 24>, <&dma 24>;
+			dma-names = "rx", "tx";
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
+			dmas = <&dma 25>, <&dma 25>;
+			dma-names = "rx", "tx";
+			resets = <&ccu RST_BUS_SPI1>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		spi2: spi@1c07000 {
+			compatible = "allwinner,sun8i-r40-spi",
+				     "allwinner,sun8i-h3-spi";
+			reg = <0x01c07000 0x1000>;
+			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
+			clock-names = "ahb", "mod";
+			dmas = <&dma 26>, <&dma 26>;
+			dma-names = "rx", "tx";
+			resets = <&ccu RST_BUS_SPI2>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		spi3: spi@1c0f000 {
+			compatible = "allwinner,sun8i-r40-spi",
+				     "allwinner,sun8i-h3-spi";
+			reg = <0x01c0f000 0x1000>;
+			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
+			clock-names = "ahb", "mod";
+			dmas = <&dma 27>, <&dma 27>;
+			dma-names = "rx", "tx";
+			resets = <&ccu RST_BUS_SPI3>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		ahci: sata@1c18000 {
 			compatible = "allwinner,sun8i-r40-ahci";
 			reg = <0x01c18000 0x1000>;
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
