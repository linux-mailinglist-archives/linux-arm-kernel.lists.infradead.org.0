Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A44258F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=T2HiD3m/w+rzuPDaA81P0seNVDnwmMxB0xwdQDDUEa4=; b=YJk
	gLblt78hWXkl3Gv7rfy8EQ8FMaftFug6SLQz83xdsPYwS2vmniQF6Ye/4JZ2JKgCqCN+AXasHjSfD
	wvAuk+w66nZwbs8N1zwIn6ztTj4HENonIcc2dXIj/BFiQCR0FEIQGjOWahuZxEB+rEcfmvPvpBKJL
	bTDNwjX+jidue9ku55zQ8KH1L9C6QTdW+oeNnciDrgsROKRsd+n3dZaXhPcsktMgZnpNt/Z8uMPw2
	AnyLwZn06yr/FUeprY+JsPJnLNBE0jPOXjA06buekgoFeY4GvWSJUmGkhPnyOafm7Pe3MQNcrxiVC
	sn6Qthnjc6cq5fO60cV8PxMyS178UQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBRt-0005HF-Hm; Tue, 21 May 2019 20:33:25 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBRk-0005FJ-EJ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=LY3+p8lGNnmMDIcqQcuLAr8OOQt/RcXXJAAyFE0u9c0=; b=afJQBKDDQxRc
 Dt1rbYpIRjbOU2OqMNRpGidUaFu5jXOYtUrs/EPaXgIEMataIzNZX+Z+xpxoub6Epe2cmFBn9PHtf
 y68X8oP2QHHDXtRspFUDuEmKWLC6wmHdhydDH6EK9LGJUSf5wrF7L+PT1NH0kRqIxGD/rGyZz0ykj
 1ZGKI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTBRd-00022a-LW; Tue, 21 May 2019 20:33:09 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 34FE71126D16; Tue, 21 May 2019 21:33:09 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "spi: sun4i: Add YAML schemas" to the spi tree
In-Reply-To: <b83d0e208072a4f7d017650bc10de8cbe7558a99.1558363790.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190521203309.34FE71126D16@debutante.sirena.org.uk>
Date: Tue, 21 May 2019 21:33:09 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_133316_657454_144BA190 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: sun4i: Add YAML schemas

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 3133f5c24305c31ef2805a7eb05fc18a664836d3 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 20 May 2019 16:50:34 +0200
Subject: [PATCH] spi: sun4i: Add YAML schemas

Switch the DT binding to a YAML schema to enable the DT validation.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../bindings/spi/allwinner,sun4i-a10-spi.yaml | 86 +++++++++++++++++++
 .../devicetree/bindings/spi/spi-sun4i.txt     | 23 -----
 2 files changed, 86 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-sun4i.txt

diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
new file mode 100644
index 000000000000..c374fd4923a6
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/allwinner,sun4i-a10-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 SPI Controller Device Tree Bindings
+
+allOf:
+  - $ref: "spi-controller.yaml"
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    const: allwinner,sun4i-a10-spi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+
+  clock-names:
+    items:
+      - const: ahb
+      - const: mod
+
+  dmas:
+    items:
+      - description: RX DMA Channel
+      - description: TX DMA Channel
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+  num-cs: true
+
+patternProperties:
+  "^.*@[0-9a-f]+":
+    properties:
+      reg:
+        items:
+          minimum: 0
+          maximum: 4
+
+      spi-rx-bus-width:
+        const: 1
+
+      spi-tx-bus-width:
+        const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    spi1: spi@1c06000 {
+        compatible = "allwinner,sun4i-a10-spi";
+        reg = <0x01c06000 0x1000>;
+        interrupts = <11>;
+        clocks = <&ahb_gates 21>, <&spi1_clk>;
+        clock-names = "ahb", "mod";
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/spi/spi-sun4i.txt b/Documentation/devicetree/bindings/spi/spi-sun4i.txt
deleted file mode 100644
index c75d604a8290..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-sun4i.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-Allwinner A10 SPI controller
-
-Required properties:
-- compatible: Should be "allwinner,sun4-a10-spi".
-- reg: Should contain register location and length.
-- interrupts: Should contain interrupt.
-- clocks: phandle to the clocks feeding the SPI controller. Two are
-          needed:
-  - "ahb": the gated AHB parent clock
-  - "mod": the parent module clock
-- clock-names: Must contain the clock names described just above
-
-Example:
-
-spi1: spi@1c06000 {
-	compatible = "allwinner,sun4i-a10-spi";
-	reg = <0x01c06000 0x1000>;
-	interrupts = <11>;
-	clocks = <&ahb_gates 21>, <&spi1_clk>;
-	clock-names = "ahb", "mod";
-	#address-cells = <1>;
-	#size-cells = <0>;
-};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
