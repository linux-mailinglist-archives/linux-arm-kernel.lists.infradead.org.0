Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD09D259E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 23:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3EU4R0aUiGGiOgzxdQxsYaQ0kHw74FHsWKyjM6RRXgI=; b=XiaYCKqe+wpFQt
	wcTzA0w4YTDmSPRimuUs/GJf4f4UDuHCe+BA3IBrlurdhUeJEsR4puoQAdZ+uXcuiUbeHw1YcTQ1X
	SYKMGJsTJWITPvqixWpM3sf86KHKOJOL//klpBUbN3ha39301vBTBZ0sykK9M9VKMTcvmHStn4ja9
	qYjuC8kKwAal+WcjRdXIuN+WYcnGGhW+ZgWnWNFXrRg+m7GmopY/EcazCTu0i9/VPfrq/+gTHTkoA
	MWnrnKw1os4xDv86cz/+wGMuk8+l0F4wX9IGGiMvRoq7VJeA+o9OuqRc9ApMqdhe248ZIoRG8meHB
	myJvh7MDCkZMwh9by8IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTCES-0008VG-8G; Tue, 21 May 2019 21:23:36 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTCEK-0008UJ-TB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 21:23:30 +0000
Received: by mail-ot1-f67.google.com with SMTP id g18so113965otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 14:23:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aB1+FRKR0aNQ2GxStZ6ZrmY5xDQPylN9JPI4SJkM8No=;
 b=PFLjo71pjavAV7jcPUPd4zq0ECcQR4ZVSKhxOWV2PcPpoIEk0tXlAdf0FN/NuE3TXO
 Hn+Ua6UGJfrDEQvdf1rnWaNDfNVJbou0LRRjDVKoSuoBGt4Dp1lMoW5TC1VjETmHygGR
 1I4+Gj+4//YdCOzW2Ce2+zq2pa2SmEAmoOMFY87NJ3ypudE7KsYBoWFC30eQ9DsXHrW9
 CtXGVjbNUQK+imQo1J9IMvwyMTn0LELukaNHMG8ybVLXi0245vK9oxe8iRdSvU90L4Rg
 ZmWE1MEMGP2eaHg4ACyCmNV+plGc1ulgPzYDShqZGoLqgxvCzojrAyBz0+79ZQcT830m
 Nz/A==
X-Gm-Message-State: APjAAAXNDhDFAznSUFbIMOE44jPkUPIY/11zw+6a4k3vs4Qhv/yyZ1o7
 QzBb2zSrPJiZ0v0J2CuowQ==
X-Google-Smtp-Source: APXvYqzGoiLXQXPir7xd+RNmN0PkeHgxiOnKX34+pmgA12jo9MTDa1PZ8kFP77q7FZYcgh/YHgyAsw==
X-Received: by 2002:a9d:7a54:: with SMTP id z20mr33048466otm.103.1558473807120; 
 Tue, 21 May 2019 14:23:27 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id w24sm4835474otk.74.2019.05.21.14.23.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 21 May 2019 14:23:26 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] spi: dt-bindings: Convert Arm pl022 to json-schema
Date: Tue, 21 May 2019 16:23:24 -0500
Message-Id: <20190521212325.16639-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_142328_943229_64D60730 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Arm pl022 binding to DT schema format. The clock binding was
missing, so it is added to the schema. It really should be required as
well, but there are some platforms (spear) not yet using DT clock
binding.

Cc: Mark Brown <broonie@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-spi@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
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
