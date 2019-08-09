Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1BD87615
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3B2c91ho5mzVJevroppHTg/1OyXFM1fGBMbZD6/s4fY=; b=WS7pMnn7niIVMd
	TvbGlXpj+S20RK3I6YYoPndLbDtu4DH09ahMmL/v3XwMOfrF8G3FA7f1or+uLo7znf1CyWl/fRpUU
	cGifHqFjveuz4C1zI2/W1RGG9X52dYqY4uoRqdKdNhedl/LFmljBV4ErZfy33Mg0zzeW9MPGecgqX
	K10COm/70JzAbA2tuCt38vOWVGaXPfvQ6A4fAj0PXOZqbjDF/p7IEfZZTrdD09AeiU8fVlB6iCZaD
	EIiYWecIfInQfV6Tr3kSdiR5XyVuBKvW1BMIyCynZDqXg5yqA0TQa0W52Bl30+8T1RyKsVLfOn3FX
	4CHqbDt/7okgf2yMlytA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1Gw-0003W1-Px; Fri, 09 Aug 2019 09:33:19 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1GT-0003JJ-Bk
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:32:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id ED447D63D0;
 Fri,  9 Aug 2019 11:32:41 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Ot8nMOCSuZGo; Fri,  9 Aug 2019 11:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 84DC2D63BF;
 Fri,  9 Aug 2019 11:32:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 3IHxjYBNVwjk; Fri,  9 Aug 2019 11:32:11 +0200 (CEST)
Received: from furthur.local (ip-37-188-137-236.eurotel.cz [37.188.137.236])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 861A8D63BD;
 Fri,  9 Aug 2019 11:32:10 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 03/19] dt-bindings: mrvl, intc: Add a MMP3 interrupt controller
Date: Fri,  9 Aug 2019 11:31:42 +0200
Message-Id: <20190809093158.7969-4-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190809093158.7969-1-lkundrak@v3.sk>
References: <20190809093158.7969-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_023249_706906_089CCED8 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similar to MMP2 one, but has an extra range for the other core. The
muxes stay the same.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 .../interrupt-controller/mrvl,intc.txt        | 23 ++++++++++++++-----
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt
index 608fee15a4cfc..41c131d026f94 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt
@@ -1,13 +1,15 @@
 * Marvell MMP Interrupt controller
 
 Required properties:
-- compatible : Should be "mrvl,mmp-intc", "mrvl,mmp2-intc" or
-  "mrvl,mmp2-mux-intc"
+- compatible : Should be "mrvl,mmp-intc", "mrvl,mmp2-intc",
+  "marvell,mmp3-intc", "mrvl,mmp2-mux-intc"
 - reg : Address and length of the register set of the interrupt controller.
   If the interrupt controller is intc, address and length means the range
-  of the whole interrupt controller. If the interrupt controller is mux-intc,
-  address and length means one register. Since address of mux-intc is in the
-  range of intc. mux-intc is secondary interrupt controller.
+  of the whole interrupt controller. The "marvell,mmp3-intc" controller
+  also has a secondary range for the second CPU core.  If the interrupt
+  controller is mux-intc, address and length means one register. Since
+  address of mux-intc is in the range of intc. mux-intc is secondary
+  interrupt controller.
 - reg-names : Name of the register set of the interrupt controller. It's
   only required in mux-intc interrupt controller.
 - interrupts : Should be the port interrupt shared by mux interrupts. It's
@@ -20,7 +22,7 @@ Required properties:
 - mrvl,clr-mfp-irq : Specifies the interrupt that needs to clear MFP edge
   detection first.
 
-Example:
+Examples:
 	intc: interrupt-controller@d4282000 {
 		compatible = "mrvl,mmp2-intc";
 		interrupt-controller;
@@ -29,6 +31,15 @@ Example:
 		mrvl,intc-nr-irqs = <64>;
 	};
 
+	intc: interrupt-controller@d4282000 {
+		compatible = "marvell,mmp3-intc";
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		reg = <0xd4282000 0x1000>,
+		      <0xd4284000 0x100>;
+		mrvl,intc-nr-irqs = <64>;
+	};
+
 	intcmux4@d4282150 {
 		compatible = "mrvl,mmp2-mux-intc";
 		interrupts = <4>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
