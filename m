Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E80313FCC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 00:12:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ry1DmNq0GJhwPyxB405twab8A5xH7N7/obmhMfZy/jY=; b=JkVZLrk2odoA9FVBJ6iqxU+W0s
	HPatxZH6S37dHHsYvawIOMMoyMU5f4aqw+H4baWJjncEQWDRW5UAvphH+WRuO/k4tzUNrB9hKFh0M
	t02+45rBAuxolQrXc9Mz9h5QJBE4izl2e7/wsZMVGxc7uGjW2lKGrVFo3iCZpDjC5VXOacMpBizo8
	uLdJiRx6uyt1Z9d/cNxTo21P1Pr0bRuDPyZPw+SrYk3VpU3VP1vYlB5LGxQKbOFc5sCzy/BSs2O+3
	Zs0uaxGVz8Y7DuAhCVNNRhhrdul21ESnr5/1yGLmuMhN+nuppgCRXdPgzfIfY24iMraRA9tzv25pt
	9kP4ot5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEJZ-00020l-Bf; Thu, 16 Jan 2020 23:12:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEJ6-0001mS-CM
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 23:12:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAA4D11FB;
 Thu, 16 Jan 2020 15:12:07 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 00CC33F68E;
 Thu, 16 Jan 2020 15:12:05 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 1/3] arm64: dts: sun50i: H6: Add SPI controllers nodes and
 pinmuxes
Date: Thu, 16 Jan 2020 23:11:46 +0000
Message-Id: <20200116231148.1490-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20200116231148.1490-1-andre.przywara@arm.com>
References: <20200116231148.1490-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_151208_468001_633FAD6C 
X-CRM114-Status: GOOD (  14.09  )
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
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 linux-sunxi@googlegroups.com, Mark Brown <broonie@kernel.org>,
 Icenowy Zheng <icenowy@aosc.xyz>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner H6 SoC contains two SPI controllers similar to the H3/A64,
but with the added capability of 3-wire and 4-wire operation modes.
For now the driver does not support those, but the SPI registers are
fully backwards-compatible, just adding bits and registers which were
formerly reserved. So we can use the existing driver in "legacy" SPI
modes, for instance to access the SPI NOR flash soldered on the PineH64
board.
We use an H6 specific compatible string in addition to the existing H3
string, so when the driver later gains QSPI support, it should work
automatically without any DT changes.

Tested by accessing the SPI flash on a Pine H64 board (SPI0), also
connecting another SPI flash to the SPI1 header pins.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 55 ++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 3329283e38ab..41b58ffa8596 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -338,6 +338,31 @@
 				bias-pull-up;
 			};
 
+			/omit-if-no-ref/
+			spi0_pins: spi0-pins {
+				pins = "PC0", "PC2", "PC3";
+				function = "spi0";
+			};
+
+			/* pin shared with MMC2-CMD (eMMC) */
+			/omit-if-no-ref/
+			spi0_cs_pin: spi0-cs-pin {
+				pins = "PC5";
+				function = "spi0";
+			};
+
+			/omit-if-no-ref/
+			spi1_pins: spi1-pins {
+				pins = "PH4", "PH5", "PH6";
+				function = "spi1";
+			};
+
+			/omit-if-no-ref/
+			spi1_cs_pin: spi1-cs-pin {
+				pins = "PH3";
+				function = "spi1";
+			};
+
 			spdif_tx_pin: spdif-tx-pin {
 				pins = "PH7";
 				function = "spdif";
@@ -504,6 +529,36 @@
 			#size-cells = <0>;
 		};
 
+		spi0: spi@5010000 {
+			compatible = "allwinner,sun50i-h6-spi",
+				     "allwinner,sun8i-h3-spi";
+			reg = <0x05010000 0x1000>;
+			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
+			clock-names = "ahb", "mod";
+			dmas = <&dma 22>, <&dma 22>;
+			dma-names = "rx", "tx";
+			resets = <&ccu RST_BUS_SPI0>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		spi1: spi@5011000 {
+			compatible = "allwinner,sun50i-h6-spi",
+				     "allwinner,sun8i-h3-spi";
+			reg = <0x05011000 0x1000>;
+			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
+			clock-names = "ahb", "mod";
+			dmas = <&dma 23>, <&dma 23>;
+			dma-names = "rx", "tx";
+			resets = <&ccu RST_BUS_SPI1>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		emac: ethernet@5020000 {
 			compatible = "allwinner,sun50i-h6-emac",
 				     "allwinner,sun50i-a64-emac";
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
