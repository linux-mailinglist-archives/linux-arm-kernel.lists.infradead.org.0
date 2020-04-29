Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42311BEB67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oMHPurx9/X52mhK5+ZZ1XOf3PkJJ3wPCZADEQQxFHy8=; b=IFkxnCCubMLzd/8ULkm786KQs2
	amG6Ay9ofnbRxkRZW9WNHcFyDhvxp3/6mze4a+oqTd6wns7KV6bU7DfAy6WgJAdjVWfDjjm6RCs/8
	TkU7Hjpa3G348opR14YOqreqrzRiOQQs0FwPmXfetr4usczAZItiBuaqfU1rvYFhG4ZTusbBCDlDO
	4NB7Z4YqxQQh8SUHLykD+hKJauuZYKYoJSimfA7KKNxFSzgvkqvkJlxSOCoDJ6CTdLfEWJDswmYmO
	wzcatV/bwgJeTjDkkHOOFLXANGOWJyHtQCLa93x6bHboAkPxYfNeR1tiQwAT9cdOi//SJOABWoYBC
	58m6n0Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuo5-0006CU-0X; Wed, 29 Apr 2020 22:03:53 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuim-0007pL-Jn
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:58:26 +0000
X-IronPort-AV: E=Sophos;i="5.73,333,1583161200"; d="scan'208";a="45795852"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie6.idc.renesas.com with ESMTP; 30 Apr 2020 06:58:24 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id E670B40ECBAC;
 Thu, 30 Apr 2020 06:58:19 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH 09/18] ARM: dts: r8a7742: Add IRQC support
Date: Wed, 29 Apr 2020 22:56:46 +0100
Message-Id: <1588197415-13747-10-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145824_878850_1C14F819 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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

Describe the IRQC interrupt controller in the r8a7742 device tree.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
---
 arch/arm/boot/dts/r8a7742.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/r8a7742.dtsi b/arch/arm/boot/dts/r8a7742.dtsi
index a2c858e..4c7baf2 100644
--- a/arch/arm/boot/dts/r8a7742.dtsi
+++ b/arch/arm/boot/dts/r8a7742.dtsi
@@ -337,6 +337,20 @@
 			#power-domain-cells = <1>;
 		};
 
+		irqc: interrupt-controller@e61c0000 {
+			compatible = "renesas,irqc-r8a7742", "renesas,irqc";
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			reg = <0 0xe61c0000 0 0x200>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 407>;
+			power-domains = <&sysc R8A7742_PD_ALWAYS_ON>;
+			resets = <&cpg 407>;
+		};
+
 		icram0:	sram@e63a0000 {
 			compatible = "mmio-sram";
 			reg = <0 0xe63a0000 0 0x12000>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
