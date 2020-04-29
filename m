Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F8D1BEB70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bUeruwzI9mhHOu40uQMyeHtyCNQTvO7ne+JsTXhZ1Cw=; b=FsO70T6WOSyzsVffP3ltkehSwJ
	2jg6TSTgDdeZFaMrUWeoaApc03jMts6vLjrKgB96g1e56icvknnZHPxTbrRwJj7Gbw+frizUusdP/
	/93gLVsDqYDMWYCqY76CUIHWy+YopPTzmEKBzvfKwkimQWZQEaOvEG3M+WT5YBfRqDUjt5VgwF0xK
	HiV3AJlLvmPWDZkgglRRdMgfjzhc+1WyZBGEN/o1aBzHOyxQiKdEYNIuIBJG2CJKHkW7qPB3b53gk
	7iAEwlKaCbaJ6VDNmsyf6badTXSJdX8N1siRc8ysLJP/M/KzQ7KRBxqpf4Ss2PrZQVn7pX2Cp/VmP
	2OAUOfEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuqO-0002Dk-0K; Wed, 29 Apr 2020 22:06:16 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTujJ-0008Hb-La
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:59:01 +0000
X-IronPort-AV: E=Sophos;i="5.73,333,1583161200"; d="scan'208";a="45795878"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie6.idc.renesas.com with ESMTP; 30 Apr 2020 06:58:57 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id E941640ECBAC;
 Thu, 30 Apr 2020 06:58:52 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH 16/18] ARM: dts: r8a7742: Add [H]SCIF{A|B} support
Date: Wed, 29 Apr 2020 22:56:53 +0100
Message-Id: <1588197415-13747-17-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145858_125790_4EA782B7 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, linux-serial@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Describe [H]SCIF{|A|B} ports in the R8A7742 device tree.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
---
 arch/arm/boot/dts/r8a7742.dtsi | 140 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 130 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/r8a7742.dtsi b/arch/arm/boot/dts/r8a7742.dtsi
index 0febd74..5305214 100644
--- a/arch/arm/boot/dts/r8a7742.dtsi
+++ b/arch/arm/boot/dts/r8a7742.dtsi
@@ -522,53 +522,173 @@
 		};
 
 		scifa0: serial@e6c40000 {
+			compatible = "renesas,scifa-r8a7742",
+				     "renesas,rcar-gen2-scifa", "renesas,scifa";
 			reg = <0 0xe6c40000 0 0x40>;
-			/* placeholder */
+			interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 204>;
+			clock-names = "fck";
+			dmas = <&dmac0 0x21>, <&dmac0 0x22>,
+			       <&dmac1 0x21>, <&dmac1 0x22>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 204>;
+			status = "disabled";
 		};
 
 		scifa1: serial@e6c50000 {
+			compatible = "renesas,scifa-r8a7742",
+				     "renesas,rcar-gen2-scifa", "renesas,scifa";
 			reg = <0 0xe6c50000 0 0x40>;
-			/* placeholder */
+			interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 203>;
+			clock-names = "fck";
+			dmas = <&dmac0 0x25>, <&dmac0 0x26>,
+			       <&dmac1 0x25>, <&dmac1 0x26>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 203>;
+			status = "disabled";
 		};
 
 		scifa2: serial@e6c60000 {
+			compatible = "renesas,scifa-r8a7742",
+				     "renesas,rcar-gen2-scifa", "renesas,scifa";
 			reg = <0 0xe6c60000 0 0x40>;
-			/* placeholder */
+			interrupts = <GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 202>;
+			clock-names = "fck";
+			dmas = <&dmac0 0x27>, <&dmac0 0x28>,
+			       <&dmac1 0x27>, <&dmac1 0x28>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 202>;
+			status = "disabled";
 		};
 
 		scifb0: serial@e6c20000 {
+			compatible = "renesas,scifb-r8a7742",
+				     "renesas,rcar-gen2-scifb", "renesas,scifb";
 			reg = <0 0xe6c20000 0 0x100>;
-			/* placeholder */
+			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 206>;
+			clock-names = "fck";
+			dmas = <&dmac0 0x3d>, <&dmac0 0x3e>,
+			       <&dmac1 0x3d>, <&dmac1 0x3e>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 206>;
+			status = "disabled";
 		};
 
 		scifb1: serial@e6c30000 {
+			compatible = "renesas,scifb-r8a7742",
+				     "renesas,rcar-gen2-scifb", "renesas,scifb";
 			reg = <0 0xe6c30000 0 0x100>;
-			/* placeholder */
+			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 207>;
+			clock-names = "fck";
+			dmas = <&dmac0 0x19>, <&dmac0 0x1a>,
+			       <&dmac1 0x19>, <&dmac1 0x1a>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 207>;
+			status = "disabled";
 		};
 
 		scifb2: serial@e6ce0000 {
+			compatible = "renesas,scifb-r8a7742",
+				     "renesas,rcar-gen2-scifb", "renesas,scifb";
 			reg = <0 0xe6ce0000 0 0x100>;
-			/* placeholder */
+			interrupts = <GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 216>;
+			clock-names = "fck";
+			dmas = <&dmac0 0x1d>, <&dmac0 0x1e>,
+			       <&dmac1 0x1d>, <&dmac1 0x1e>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 216>;
+			status = "disabled";
 		};
 
 		scif0: serial@e6e60000 {
+			compatible = "renesas,scif-r8a7742",
+				     "renesas,rcar-gen2-scif", "renesas,scif";
 			reg = <0 0xe6e60000 0 0x40>;
-			/* placeholder */
+			interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 721>,
+				 <&cpg CPG_CORE R8A7742_CLK_ZS>, <&scif_clk>;
+			clock-names = "fck", "brg_int", "scif_clk";
+			dmas = <&dmac0 0x29>, <&dmac0 0x2a>,
+			       <&dmac1 0x29>, <&dmac1 0x2a>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 721>;
+			status = "disabled";
 		};
 
 		scif1: serial@e6e68000 {
+			compatible = "renesas,scif-r8a7742",
+				     "renesas,rcar-gen2-scif", "renesas,scif";
 			reg = <0 0xe6e68000 0 0x40>;
-			/* placeholder */
+			interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 720>,
+				 <&cpg CPG_CORE R8A7742_CLK_ZS>, <&scif_clk>;
+			clock-names = "fck", "brg_int", "scif_clk";
+			dmas = <&dmac0 0x2d>, <&dmac0 0x2e>,
+			       <&dmac1 0x2d>, <&dmac1 0x2e>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 720>;
+			status = "disabled";
+		};
+
+		scif2: serial@e6e56000 {
+			compatible = "renesas,scif-r8a7742",
+				     "renesas,rcar-gen2-scif", "renesas,scif";
+			reg = <0 0xe6e56000 0 0x40>;
+			interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 310>,
+				 <&cpg CPG_CORE R8A7742_CLK_ZS>, <&scif_clk>;
+			clock-names = "fck", "brg_int", "scif_clk";
+			dmas = <&dmac0 0x2b>, <&dmac0 0x2c>,
+			       <&dmac1 0x2b>, <&dmac1 0x2c>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 310>;
+			status = "disabled";
 		};
 
 		hscif0: serial@e62c0000 {
+			compatible = "renesas,hscif-r8a7742",
+				     "renesas,rcar-gen2-hscif", "renesas,hscif";
 			reg = <0 0xe62c0000 0 0x60>;
-			/* placeholder */
+			interrupts = <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 717>,
+				 <&cpg CPG_CORE R8A7742_CLK_ZS>, <&scif_clk>;
+			clock-names = "fck", "brg_int", "scif_clk";
+			dmas = <&dmac0 0x39>, <&dmac0 0x3a>,
+			       <&dmac1 0x39>, <&dmac1 0x3a>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 717>;
+			status = "disabled";
 		};
 
 		hscif1: serial@e62c8000 {
+			compatible = "renesas,hscif-r8a7742",
+				     "renesas,rcar-gen2-hscif", "renesas,hscif";
 			reg = <0 0xe62c8000 0 0x60>;
-			/* placeholder */
+			interrupts = <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 716>,
+				 <&cpg CPG_CORE R8A7742_CLK_ZS>, <&scif_clk>;
+			clock-names = "fck", "brg_int", "scif_clk";
+			dmas = <&dmac0 0x4d>, <&dmac0 0x4e>,
+			       <&dmac1 0x4d>, <&dmac1 0x4e>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 716>;
+			status = "disabled";
 		};
 
 		can0: can@e6e80000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
