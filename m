Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3D313134D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SPf/HscRmBMkQ5MBVLCbXtNA6yqiFuvUkqhMrDe/NyY=; b=O7o
	YqaD+NaNv74/G49URXpu1YphCIHwuiZ2cDafngRlrNQyBqUfsJ3RSLlReJYgQxkKPePE0/CKN6bHz
	VDaCITBsIYE2lMhu/7sh31vacFjsx+pX9Nb2YAtjxRSnXnPZTzKiVIxGxR2iutdA38l+NNHR0FBGf
	U+e0Bv2h62HNYTxVx2p0NZ4pNTU/EkARYmXB3RRxNjpmtqHM0kUukpZe/5+aMy3ZCvYlQJ+z5OYeI
	ZOAcns3sG6TR6i+9z2g9rB8i/W5slt8VZn+6SxKcnErFWNZhkbt+AvFBDVlnR7yppilTpyMgTIGr2
	OLZkAhI+IGMS2QNeRctgrOJQkXW99hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSxO-00025M-Hv; Mon, 06 Jan 2020 14:02:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSxG-00024j-OY
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 14:02:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC9E831B;
 Mon,  6 Jan 2020 06:01:58 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1847B3F6C4;
 Mon,  6 Jan 2020 06:01:57 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] FIXUP! ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
Date: Mon,  6 Jan 2020 14:01:49 +0000
Message-Id: <20200106140149.231960-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_060202_836304_1AE5A335 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DMA controller is not in the mainline DT, so remove the broken
reference from the SPI controller to that node.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reported-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 06d579f6d44b..8f09a24b36ec 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -660,8 +660,6 @@
 			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
 			clock-names = "ahb", "mod";
-			dmas = <&dma 24>, <&dma 24>;
-			dma-names = "rx", "tx";
 			resets = <&ccu RST_BUS_SPI0>;
 			status = "disabled";
 			#address-cells = <1>;
@@ -675,8 +673,6 @@
 			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
 			clock-names = "ahb", "mod";
-			dmas = <&dma 25>, <&dma 25>;
-			dma-names = "rx", "tx";
 			resets = <&ccu RST_BUS_SPI1>;
 			status = "disabled";
 			#address-cells = <1>;
@@ -690,8 +686,6 @@
 			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
 			clock-names = "ahb", "mod";
-			dmas = <&dma 26>, <&dma 26>;
-			dma-names = "rx", "tx";
 			resets = <&ccu RST_BUS_SPI2>;
 			status = "disabled";
 			#address-cells = <1>;
@@ -705,8 +699,6 @@
 			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
 			clock-names = "ahb", "mod";
-			dmas = <&dma 27>, <&dma 27>;
-			dma-names = "rx", "tx";
 			resets = <&ccu RST_BUS_SPI3>;
 			status = "disabled";
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
