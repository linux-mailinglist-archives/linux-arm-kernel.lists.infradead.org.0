Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1E9180D16
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 02:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=G3+EpQ3e9H/8N6Hu/vd3yV6/Wmy0VTFUO2J8PFDLRAE=; b=Ogv
	KnDVWOvjxMVCX7f+0KhUp37ruGxMhjdmI73fSAjT9if2RLvDgkDplNOdE/oSsWI+IlpfnTRLxx8kQ
	8q2HazUDZ70/afQT35aV1RYksYDTiFujwes97AyrWfSa4RPhlh0Fm4wy8flF44/shGOYifNsmNf66
	Ujhuhdougjmlqx9ApggY2miqfI+RrmZRoxEE9NMLWO08nbSFq0PWRNY+/P4+ULI70PpDETzh9DaI7
	O2d49jcissuqbiq3G7GInU8Uhq2IFPAy6XRlhx+d0e/YmH/soRdGF+xVd2/GcR9J/ngVDYIc8nIEv
	jueVpOFYl5SVjDy6nAuHcnlUOILtZkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBpmf-0005zc-SY; Wed, 11 Mar 2020 01:03:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBpmY-0005z8-Kf
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 01:03:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 178A131B;
 Tue, 10 Mar 2020 18:03:31 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CDB6B3F67D;
 Tue, 10 Mar 2020 18:03:29 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] ARM: dts: sun8i: R40: Fix SPI2 and SPI3 MMIO addresses
Date: Wed, 11 Mar 2020 01:03:08 +0000
Message-Id: <20200311010308.11880-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_180334_721909_98269D7B 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, JuanEsf <juanesf91@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Copy&paste suggested an MMIO pattern that wasn't there, so the wrong
MMIO base addresses for SPI2 and SPI3 sneaked in.

Fix them, now double checked against the manual and similar SoCs.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Fixes: 554581b79139 ("ARM: dts: sun8i: R40: Add SPI controllers nodes and pinmuxes")
Reported-by: JuanEsf <juanesf91@gmail.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 8f09a24b36ec..8c4c4282a055 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -679,10 +679,10 @@
 			#size-cells = <0>;
 		};
 
-		spi2: spi@1c07000 {
+		spi2: spi@1c17000 {
 			compatible = "allwinner,sun8i-r40-spi",
 				     "allwinner,sun8i-h3-spi";
-			reg = <0x01c07000 0x1000>;
+			reg = <0x01c17000 0x1000>;
 			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
 			clock-names = "ahb", "mod";
@@ -692,10 +692,10 @@
 			#size-cells = <0>;
 		};
 
-		spi3: spi@1c0f000 {
+		spi3: spi@1c1f000 {
 			compatible = "allwinner,sun8i-r40-spi",
 				     "allwinner,sun8i-h3-spi";
-			reg = <0x01c0f000 0x1000>;
+			reg = <0x01c1f000 0x1000>;
 			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
 			clock-names = "ahb", "mod";
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
