Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874249EAE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Ija3eYuWbj12OcyuzhVGJNCW/Y/u5Au3TcS3/ynggk=; b=IWLAyrfrrRcDNY
	T2TZGOZ0wUyz0SCzcB/K2XJ2rc2kaNErPtvXUvrCE8LydVaUNfyyd3eFetRzlxH54prFZhJHWcI/i
	F93zUESO7plTM/9Qfchy2jzhOh515GbTtal4PvsZR0wuJ+t9/FylSeFspZOyzK7Oi0Nyo+Wpj8jhZ
	BKDjCET1EB2w+nZxwv+Ui3oi/f5vZAus0s32xWRbisLSgHeAF1ldwcRTVbSBXjvP1lAXfCcg5p6Ru
	BAo2a7on9XMYaI4GfNI66Ou+QVG5GUQVAJBpi8Ktzf28Qz3HYk6hMKTmP8wJK0V4ckTIZikOjSMMy
	Ole5qlt32CDtCwvd+C1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cQL-0005PG-Sp; Tue, 27 Aug 2019 14:26:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cPx-0005FF-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:25:55 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A832721872;
 Tue, 27 Aug 2019 14:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566915953;
 bh=g4eeAIyFu2Qc6nElKVtHJTXmo8ZMb+dIHDrxDO/BT7k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VPEf0dQNGptwrHbtbQb0yVqDmGzvD5qJQ04UeC2x6RkNqhsR65jEM2MQtQyjuUAAP
 6Owv2rihqPrr5jSzHWmnYmUvM8IxvROy6/9iO+/ODEIcvTSikn6Ymly7sWX03qVj5e
 JuZEFEBPOhcA4U1qEOpB7SHsi2HSxuWVwx49kAh4=
From: Maxime Ripard <mripard@kernel.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 2/5] dt-bindings: sound: Convert Allwinner A10 codec to a
 schema
Date: Tue, 27 Aug 2019 16:25:44 +0200
Message-Id: <20190827142547.14577-2-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190827142547.14577-1-mripard@kernel.org>
References: <20190827142547.14577-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_072553_769894_0DCF6D76 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner SoCs have an embedded audio codec that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../sound/allwinner,sun4i-a10-codec.yaml      | 162 ++++++++++++++++++
 .../devicetree/bindings/sound/sun4i-codec.txt |  94 ----------
 2 files changed, 162 insertions(+), 94 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-codec.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
new file mode 100644
index 000000000000..44feefae0ef0
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
@@ -0,0 +1,162 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-codec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Codec Device Tree Bindings
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
+    enum:
+      - allwinner,sun4i-a10-codec
+      - allwinner,sun6i-a31-codec
+      - allwinner,sun7i-a20-codec
+      - allwinner,sun8i-a23-codec
+      - allwinner,sun8i-h3-codec
+      - allwinner,sun8i-v3s-codec
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
+      - const: codec
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
+  resets:
+    maxItems: 1
+
+  allwinner,audio-routing:
+    $ref: /schemas/types.yaml#definitions/non-unique-string-array
+    description: |-
+      A list of the connections between audio components.  Each entry
+      is a pair of strings, the first being the connection\'s sink, the
+      second being the connection\'s source. Valid names include
+
+        Audio pins on the SoC
+          HP
+          HPCOM
+          LINEIN    (not on sun8i-v3s)
+          LINEOUT   (not on sun8i-a23 or sun8i-v3s)
+          MIC1
+          MIC2      (not on sun8i-v3s)
+          MIC3      (only on sun6i-a31)
+
+        Microphone biases from the SoC
+          HBIAS
+          MBIAS     (not on sun8i-v3s)
+
+        Board connectors
+          Headphone
+          Headset Mic
+          Line In
+          Line Out
+          Mic
+          Speaker
+
+  allwinner,codec-analog-controls:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the codec analog controls in the PRCM
+
+  allwinner,pa-gpios:
+    description: GPIO to enable the external amplifier
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
+if:
+  properties:
+    compatible:
+      enum:
+        - allwinner,sun6i-a31-codec
+        - allwinner,sun8i-a23-codec
+        - allwinner,sun8i-h3-codec
+        - allwinner,sun8i-v3s-codec
+
+then:
+  if:
+    properties:
+      compatible:
+        const: allwinner,sun6i-a31-codec
+
+  then:
+    required:
+      - resets
+      - allwinner,audio-routing
+
+  else:
+    required:
+      - resets
+      - allwinner,audio-routing
+      - allwinner,codec-analog-controls
+
+additionalProperties: false
+
+examples:
+  - |
+    codec@1c22c00 {
+        #sound-dai-cells = <0>;
+        compatible = "allwinner,sun7i-a20-codec";
+        reg = <0x01c22c00 0x40>;
+        interrupts = <0 30 4>;
+        clocks = <&apb0_gates 0>, <&codec_clk>;
+        clock-names = "apb", "codec";
+        dmas = <&dma 0 19>, <&dma 0 19>;
+        dma-names = "rx", "tx";
+    };
+
+  - |
+    codec@1c22c00 {
+        #sound-dai-cells = <0>;
+        compatible = "allwinner,sun6i-a31-codec";
+        reg = <0x01c22c00 0x98>;
+        interrupts = <0 29 4>;
+        clocks = <&ccu 61>, <&ccu 135>;
+        clock-names = "apb", "codec";
+        resets = <&ccu 42>;
+        dmas = <&dma 15>, <&dma 15>;
+        dma-names = "rx", "tx";
+        allwinner,audio-routing =
+            "Headphone", "HP",
+            "Speaker", "LINEOUT",
+            "LINEIN", "Line In",
+            "MIC1", "MBIAS",
+            "MIC1", "Mic",
+            "MIC2", "HBIAS",
+            "MIC2", "Headset Mic";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sun4i-codec.txt b/Documentation/devicetree/bindings/sound/sun4i-codec.txt
deleted file mode 100644
index 66579bbd3294..000000000000
--- a/Documentation/devicetree/bindings/sound/sun4i-codec.txt
+++ /dev/null
@@ -1,94 +0,0 @@
-* Allwinner A10 Codec
-
-Required properties:
-- compatible: must be one of the following compatibles:
-		- "allwinner,sun4i-a10-codec"
-		- "allwinner,sun6i-a31-codec"
-		- "allwinner,sun7i-a20-codec"
-		- "allwinner,sun8i-a23-codec"
-		- "allwinner,sun8i-h3-codec"
-		- "allwinner,sun8i-v3s-codec"
-- reg: must contain the registers location and length
-- interrupts: must contain the codec interrupt
-- dmas: DMA channels for tx and rx dma. See the DMA client binding,
-	Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should include "tx" and "rx".
-- clocks: a list of phandle + clock-specifer pairs, one for each entry
-  in clock-names.
-- clock-names: should contain the following:
-   - "apb": the parent APB clock for this controller
-   - "codec": the parent module clock
-
-Optional properties:
-- allwinner,pa-gpios: gpio to enable external amplifier
-
-Required properties for the following compatibles:
-		- "allwinner,sun6i-a31-codec"
-		- "allwinner,sun8i-a23-codec"
-		- "allwinner,sun8i-h3-codec"
-		- "allwinner,sun8i-v3s-codec"
-- resets: phandle to the reset control for this device
-- allwinner,audio-routing: A list of the connections between audio components.
-			   Each entry is a pair of strings, the first being the
-			   connection's sink, the second being the connection's
-			   source. Valid names include:
-
-			   Audio pins on the SoC:
-			   "HP"
-			   "HPCOM"
-			   "LINEIN"	(not on sun8i-v3s)
-			   "LINEOUT"	(not on sun8i-a23 or sun8i-v3s)
-			   "MIC1"
-			   "MIC2"	(not on sun8i-v3s)
-			   "MIC3"	(sun6i-a31 only)
-
-			   Microphone biases from the SoC:
-			   "HBIAS"
-			   "MBIAS"	(not on sun8i-v3s)
-
-			   Board connectors:
-			   "Headphone"
-			   "Headset Mic"
-			   "Line In"
-			   "Line Out"
-			   "Mic"
-			   "Speaker"
-
-Required properties for the following compatibles:
-		- "allwinner,sun8i-a23-codec"
-		- "allwinner,sun8i-h3-codec"
-		- "allwinner,sun8i-v3s-codec"
-- allwinner,codec-analog-controls: A phandle to the codec analog controls
-				   block in the PRCM.
-
-Example:
-codec: codec@1c22c00 {
-	#sound-dai-cells = <0>;
-	compatible = "allwinner,sun7i-a20-codec";
-	reg = <0x01c22c00 0x40>;
-	interrupts = <0 30 4>;
-	clocks = <&apb0_gates 0>, <&codec_clk>;
-	clock-names = "apb", "codec";
-	dmas = <&dma 0 19>, <&dma 0 19>;
-	dma-names = "rx", "tx";
-};
-
-codec: codec@1c22c00 {
-	#sound-dai-cells = <0>;
-	compatible = "allwinner,sun6i-a31-codec";
-	reg = <0x01c22c00 0x98>;
-	interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&ccu CLK_APB1_CODEC>, <&ccu CLK_CODEC>;
-	clock-names = "apb", "codec";
-	resets = <&ccu RST_APB1_CODEC>;
-	dmas = <&dma 15>, <&dma 15>;
-	dma-names = "rx", "tx";
-	allwinner,audio-routing =
-		"Headphone", "HP",
-		"Speaker", "LINEOUT",
-		"LINEIN", "Line In",
-		"MIC1",	"MBIAS",
-		"MIC1", "Mic",
-		"MIC2", "HBIAS",
-		"MIC2", "Headset Mic";
-};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
