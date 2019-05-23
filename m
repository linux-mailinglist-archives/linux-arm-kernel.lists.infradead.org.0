Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5B727EBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=22rORqAiPbdhiGzd4NQY32dvkNvdIi1I15eAcf50eqw=; b=VlU
	Hr4x19XWfyLdQRaNoldT8egvPrxOW3vfIo8JnVKNWImtsOcEq1GY8q37Io60s5+39dt51bcNI6Mh3
	71cZKjdtFyRorxIkH9B2nTHIThJQdyxStcCuI3Fj1nYJjOiKKli6bsLMmN5bo4RxJsn1zQMk2Wnc3
	tvN6pWhD7ctJLuxsNCH03ShG1OAHuMwT8NKhbNUQ1JTyuz7W2yh52l2FBW58IqvIgGK/UCvXYCoUf
	KO97jQzPpJivpxhmfkUEs4JV3XD388Dl+9wVf+3hUEf9JJt4TJ2PJlr7I2/bUnsrdx/3OUUxZo+WN
	eMdQ0F+WxixAnmehKXbiR+6HfiY9fgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTo6O-0000pi-GH; Thu, 23 May 2019 13:49:48 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTo5q-0000OH-Le
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:49:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=8WWyrpaTa2W9d3NaCw+OHGJiqHcnpCI4jxPNNRNidvM=; b=c131QvxPz9bH
 aiHPVi8RbsrK2yzAsy20Te4ohhY1Rt2M7ARMI+bL6lC1vJlU/F6w55k5V3+t4SIvoSu/nghfZMe8c
 YtjdZB0JXNWm+ZgZU36RR/XcIiuwAnpCDrFqsjVhmriahb4GQEE+H98+pJb/MwgzKaUX0Kh7km1Nu
 /le4o=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTo5j-0000FK-BX; Thu, 23 May 2019 13:49:07 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id DDCB51126D27; Thu, 23 May 2019 14:49:06 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Applied "spi: dt-bindings: Convert Arm pl022 to json-schema" to the
 spi tree
In-Reply-To: <20190521212325.16639-1-robh@kernel.org>
X-Patchwork-Hint: ignore
Message-Id: <20190523134906.DDCB51126D27@debutante.sirena.org.uk>
Date: Thu, 23 May 2019 14:49:06 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_064916_880400_250FBD62 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: dt-bindings: Convert Arm pl022 to json-schema

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

From cc0f6e96c4fd01fe1f935014c8c87ac6e994324c Mon Sep 17 00:00:00 2001
From: Rob Herring <robh@kernel.org>
Date: Tue, 21 May 2019 16:23:24 -0500
Subject: [PATCH] spi: dt-bindings: Convert Arm pl022 to json-schema

Convert the Arm pl022 binding to DT schema format. The clock binding was
missing, so it is added to the schema. It really should be required as
well, but there are some platforms (spear) not yet using DT clock
binding.

Cc: Mark Brown <broonie@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-spi@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../devicetree/bindings/spi/spi-pl022.yaml    | 165 ++++++++++++++++++
 .../devicetree/bindings/spi/spi_pl022.txt     |  70 --------
 2 files changed, 165 insertions(+), 70 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/spi-pl022.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi_pl022.txt

diff --git a/Documentation/devicetree/bindings/spi/spi-pl022.yaml b/Documentation/devicetree/bindings/spi/spi-pl022.yaml
new file mode 100644
index 000000000000..dfb697c69341
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-pl022.yaml
@@ -0,0 +1,165 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spi-pl022.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM PL022 SPI controller
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+# We need a select here so we don't match all nodes with 'arm,primecell'
+select:
+  properties:
+    compatible:
+      contains:
+        const: arm,pl022
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - const: arm,pl022
+      - const: arm,primecell
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - enum:
+          - SSPCLK
+          - sspclk
+      - const: apb_pclk
+
+  pl022,autosuspend-delay:
+    description: delay in ms following transfer completion before the
+      runtime power management system suspends the device. A setting of 0
+      indicates no delay and the device will be suspended immediately.
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+
+  pl022,rt:
+    description: indicates the controller should run the message pump with realtime
+               priority to minimise the transfer latency on the bus (boolean)
+    type: boolean
+
+  dmas:
+    description:
+      Two or more DMA channel specifiers following the convention outlined
+      in bindings/dma/dma.txt
+    minItems: 2
+    maxItems: 32
+
+  dma-names:
+    description:
+      There must be at least one channel named "tx" for transmit and named "rx"
+      for receive.
+    minItems: 2
+    maxItems: 32
+    additionalItems: true
+    items:
+      - const: rx
+      - const: tx
+
+patternProperties:
+  "^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-f]+$":
+    type: object
+    # SPI slave nodes must be children of the SPI master node and can
+    # contain the following properties.
+    properties:
+      pl022,interface:
+        description: SPI interface type
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/uint32"
+          - enum:
+              - 0  # SPI
+              - 1  # Texas Instruments Synchronous Serial Frame Format
+              - 2  # Microwire (Half Duplex)
+
+      pl022,com-mode:
+        description: Specifies the transfer mode
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/uint32"
+          - enum:
+              - 0  # interrupt mode
+              - 1  # polling mode
+              - 2  # DMA mode
+            default: 1
+
+      pl022,rx-level-trig:
+        description: Rx FIFO watermark level
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/uint32"
+          - minimum: 0
+            maximum: 4
+
+      pl022,tx-level-trig:
+        description: Tx FIFO watermark level
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/uint32"
+          - minimum: 0
+            maximum: 4
+
+      pl022,ctrl-len:
+        description: Microwire interface - Control length
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/uint32"
+          - minimum: 0x03
+            maximum: 0x1f
+
+      pl022,wait-state:
+        description: Microwire interface - Wait state
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/uint32"
+          - enum: [ 0, 1 ]
+
+      pl022,duplex:
+        description: Microwire interface - Full/Half duplex
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/uint32"
+          - enum: [ 0, 1 ]
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+examples:
+  - |
+    spi@e0100000 {
+      compatible = "arm,pl022", "arm,primecell";
+      reg = <0xe0100000 0x1000>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+      interrupts = <0 31 0x4>;
+      dmas = <&dma_controller 23 1>,
+        <&dma_controller 24 0>;
+      dma-names = "rx", "tx";
+
+      m25p80@1 {
+        compatible = "st,m25p80";
+        reg = <1>;
+        spi-max-frequency = <12000000>;
+        spi-cpol;
+        spi-cpha;
+        pl022,interface = <0>;
+        pl022,com-mode = <0x2>;
+        pl022,rx-level-trig = <0>;
+        pl022,tx-level-trig = <0>;
+        pl022,ctrl-len = <0x11>;
+        pl022,wait-state = <0>;
+        pl022,duplex = <0>;
+      };
+    };
+...
diff --git a/Documentation/devicetree/bindings/spi/spi_pl022.txt b/Documentation/devicetree/bindings/spi/spi_pl022.txt
deleted file mode 100644
index 7638b4968ddb..000000000000
--- a/Documentation/devicetree/bindings/spi/spi_pl022.txt
+++ /dev/null
@@ -1,70 +0,0 @@
-ARM PL022 SPI controller
-
-Required properties:
-- compatible : "arm,pl022", "arm,primecell"
-- reg : Offset and length of the register set for the device
-- interrupts : Should contain SPI controller interrupt
-- num-cs : total number of chipselects
-
-Optional properties:
-- cs-gpios : should specify GPIOs used for chipselects.
-  The gpios will be referred to as reg = <index> in the SPI child nodes.
-  If unspecified, a single SPI device without a chip select can be used.
-- pl022,autosuspend-delay : delay in ms following transfer completion before
-			    the runtime power management system suspends the
-			    device. A setting of 0 indicates no delay and the
-                            device will be suspended immediately
-- pl022,rt : indicates the controller should run the message pump with realtime
-             priority to minimise the transfer latency on the bus (boolean)
-- dmas : Two or more DMA channel specifiers following the convention outlined
-         in bindings/dma/dma.txt
-- dma-names: Names for the dma channels, if present. There must be at
-	     least one channel named "tx" for transmit and named "rx" for
-             receive.
-
-
-SPI slave nodes must be children of the SPI master node and can
-contain the following properties.
-
-- pl022,interface : interface type:
-	0: SPI
-	1: Texas Instruments Synchronous Serial Frame Format
-	2: Microwire (Half Duplex)
-- pl022,com-mode : specifies the transfer mode:
-	0: interrupt mode
-	1: polling mode (default mode if property not present)
-	2: DMA mode
-- pl022,rx-level-trig : Rx FIFO watermark level
-- pl022,tx-level-trig : Tx FIFO watermark level
-- pl022,ctrl-len : Microwire interface: Control length
-- pl022,wait-state : Microwire interface: Wait state
-- pl022,duplex : Microwire interface: Full/Half duplex
-
-
-Example:
-
-	spi@e0100000 {
-		compatible = "arm,pl022", "arm,primecell";
-		reg = <0xe0100000 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		interrupts = <0 31 0x4>;
-		dmas = <&dma-controller 23 1>,
-			<&dma-controller 24 0>;
-		dma-names = "rx", "tx";
-
-		m25p80@1 {
-			compatible = "st,m25p80";
-			reg = <1>;
-			spi-max-frequency = <12000000>;
-			spi-cpol;
-			spi-cpha;
-			pl022,interface = <0>;
-			pl022,com-mode = <0x2>;
-			pl022,rx-level-trig = <0>;
-			pl022,tx-level-trig = <0>;
-			pl022,ctrl-len = <0x11>;
-			pl022,wait-state = <0>;
-			pl022,duplex = <0>;
-		};
-	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
