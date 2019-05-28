Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD39F2C990
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 17:07:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=2gJ2xes4G8B2S80YnOy8BMA3XxBp35gk9+pUsn2p6gQ=; b=NYn
	t5qjoax6aIdwq2x6eXlWJ4lhxJK4K0py+j7i4gbULDOWIHkKrqlqbQVFdsPvxGR9SRdhRojIS1WNf
	vSxpl9KPRCWrnyu+aI8pigmG7+O8IN+LTTIQm4cjq/P5YzkU1aUtTQ1OuxZIKNiIeKLbZv+OLEcue
	CbkFmsUyb3K2+d/5Er0NpsU+FTNqoDkpt4FZ5uMdMbC7dTFuBgaVIjQ9ZaheOsAeBa0+HtS9o+ASf
	NnbrEfaiGspW4urJQeDdofv9alv7a/7AYHvqjb47MPmmdKePTSysYZ/WPj4GzdARgdrTubGHwRcaL
	f1UYi1P6I3bLMk9OQ3Lnk+OIywAIu7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVdh5-00087M-Ij; Tue, 28 May 2019 15:07:15 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVdgw-00085I-UV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 15:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=50UF5NrIgTV94h2lmtoHlHIleHK4ai5jgUswsShESRU=; b=P+hrYHLLCJn/
 Y7ptg4w+HgOPPs3EAFacc8mjpi4YJ6DDhgq7owPzTnVxYaNfZFonJGP+xSvV22gDP6lHsLgoCPjJY
 gBm28iBepZgjmZ6u6VCuS9aMXGZ0/ihKCNYqcFk/tAHNsIdWwt4fz/iSGEcW2Qn+BC5ALKZGo9Ts7
 hdG1s=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hVdgn-0002nl-2u; Tue, 28 May 2019 15:06:57 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 5B5C3440049; Tue, 28 May 2019 16:06:56 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "dt-bindings: sound: Convert Allwinner I2S binding to YAML"
 to the asoc tree
In-Reply-To: <5f8095fbd5c2c34478792b9715059675251a30e6.1558702660.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190528150656.5B5C3440049@finisterre.sirena.org.uk>
Date: Tue, 28 May 2019 16:06:56 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_080707_150102_4CFF69DE 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: sound: Convert Allwinner I2S binding to YAML

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

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

From 0a0ca8e94ca36d2153c2fbea69a31f792bfc5831 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Fri, 24 May 2019 14:57:58 +0200
Subject: [PATCH] dt-bindings: sound: Convert Allwinner I2S binding to YAML

The Allwinner SoCs feature an I2S controller across multiple SoC
generations.

However, earlier generations were a bit simpler than the subsequent ones,
and for example would always have RX and TX capabilities, and no reset
lines.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../sound/allwinner,sun4i-a10-i2s.yaml        | 100 ++++++++++++++++++
 .../devicetree/bindings/sound/sun4i-i2s.txt   |  45 --------
 2 files changed, 100 insertions(+), 45 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-i2s.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
new file mode 100644
index 000000000000..85b2d6d84055
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 I2S Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#sound-dai-cells":
+    const: 0
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-i2s
+      - const: allwinner,sun6i-a31-i2s
+      - const: allwinner,sun8i-a83t-i2s
+      - const: allwinner,sun8i-h3-i2s
+      - const: allwinner,sun50i-a64-codec-i2s
+      - items:
+          - const: allwinner,sun50i-a64-i2s
+          - const: allwinner,sun8i-h3-i2s
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
+      - const: apb
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
+  # Even though it only applies to subschemas under the conditionals,
+  # not listing them here will trigger a warning because of the
+  # additionalsProperties set to false.
+  resets:
+    maxItems: 1
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun6i-a31-i2s
+              - allwinner,sun8i-a83t-i2s
+              - allwinner,sun8i-h3-i2s
+              - allwinner,sun50i-a64-codec-i2s
+
+    then:
+      required:
+        - resets
+
+required:
+  - "#sound-dai-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+
+additionalProperties: false
+
+examples:
+  - |
+    i2s0: i2s@1c22400 {
+        #sound-dai-cells = <0>;
+        compatible = "allwinner,sun4i-a10-i2s";
+        reg = <0x01c22400 0x400>;
+        interrupts = <0 16 4>;
+        clocks = <&apb0_gates 3>, <&i2s0_clk>;
+        clock-names = "apb", "mod";
+        dmas = <&dma 0 3>, <&dma 0 3>;
+        dma-names = "rx", "tx";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sun4i-i2s.txt b/Documentation/devicetree/bindings/sound/sun4i-i2s.txt
deleted file mode 100644
index 61e71c1729e0..000000000000
--- a/Documentation/devicetree/bindings/sound/sun4i-i2s.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-* Allwinner A10 I2S controller
-
-The I2S bus (Inter-IC sound bus) is a serial link for digital
-audio data transfer between devices in the system.
-
-Required properties:
-
-- compatible: should be one of the following:
-   - "allwinner,sun4i-a10-i2s"
-   - "allwinner,sun6i-a31-i2s"
-   - "allwinner,sun8i-a83t-i2s"
-   - "allwinner,sun8i-h3-i2s"
-   - "allwinner,sun50i-a64-codec-i2s"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: should contain the I2S interrupt.
-- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
-	Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should include "tx" and "rx".
-- clocks: a list of phandle + clock-specifer pairs, one for each entry in clock-names.
-- clock-names: should contain the following:
-   - "apb" : clock for the I2S bus interface
-   - "mod" : module clock for the I2S controller
-- #sound-dai-cells : Must be equal to 0
-
-Required properties for the following compatibles:
-	- "allwinner,sun6i-a31-i2s"
-	- "allwinner,sun8i-a83t-i2s"
-	- "allwinner,sun8i-h3-i2s"
-	- "allwinner,sun50i-a64-codec-i2s"
-- resets: phandle to the reset line for this codec
-
-Example:
-
-i2s0: i2s@1c22400 {
-	#sound-dai-cells = <0>;
-	compatible = "allwinner,sun4i-a10-i2s";
-	reg = <0x01c22400 0x400>;
-	interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&apb0_gates 3>, <&i2s0_clk>;
-	clock-names = "apb", "mod";
-	dmas = <&dma SUN4I_DMA_NORMAL 3>,
-	       <&dma SUN4I_DMA_NORMAL 3>;
-	dma-names = "rx", "tx";
-};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
