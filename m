Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1598182047
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=yr9ynxemwpIZLtOHkxW+W3Y90Bdr2ddKdSXMwPrb/E4=; b=d7N
	Dvu3Z2Hxdnk5vypuMPJuHeAqA96v2/HdRYNQofz8isFejXsEOOVjwDCGkfE79CMYzLocknkFiVcDV
	t5Yg6emsyfQwFpG4Cazen4QBdG+PrgxrhecTbZxxn6s3Qcae8QXUFLmYhmh/ZWQQHZooRx+7NcyC+
	YzXKO0oOhbxc2Dq8TUeLFRKbLBpHf1e+ufFYlhSajKl7ZyC07beVI1ku1X8tVQ2bc7sWPpg3Q4mGz
	3CO9xRr5sSGN1Wi/nLb8Y9UtlK9uUcareb1pTn1QMC7KB4MhpS0rQlZm1Wf6VVll3lBaIQDU4su4c
	fy8HJsb27IrTh3KFs1fHIwPYf3Z4dCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5fW-00014L-0m; Wed, 11 Mar 2020 18:01:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5eF-0007Uw-LM
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:00:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DC541FB;
 Wed, 11 Mar 2020 11:00:01 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C495F3F6CF;
 Wed, 11 Mar 2020 11:00:00 -0700 (PDT)
Date: Wed, 11 Mar 2020 17:59:59 +0000
From: Mark Brown <broonie@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Applied "ASoC: dt-bindings: stm32: convert spdfirx to json-schema" to
 the asoc tree
In-Reply-To: <20200117170352.16040-1-olivier.moysan@st.com>
Message-Id: <applied-20200117170352.16040-1-olivier.moysan@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_110003_838298_1EC8F3A5 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, olivier.moysan@st.com, alexandre.torgue@st.com,
 robh@kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 mcoquelin.stm32@gmail.com, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: dt-bindings: stm32: convert spdfirx to json-schema

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

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

From 9032cdd96a2d4b0ef2f43499328f8a68050be2ec Mon Sep 17 00:00:00 2001
From: Olivier Moysan <olivier.moysan@st.com>
Date: Fri, 17 Jan 2020 18:03:52 +0100
Subject: [PATCH] ASoC: dt-bindings: stm32: convert spdfirx to json-schema

Convert the STM32 SPDIFRX bindings to DT schema format using json-schema.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/r/20200117170352.16040-1-olivier.moysan@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../bindings/sound/st,stm32-spdifrx.txt       | 56 -------------
 .../bindings/sound/st,stm32-spdifrx.yaml      | 80 +++++++++++++++++++
 2 files changed, 80 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
 create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml

diff --git a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
deleted file mode 100644
index 33826f2459fa..000000000000
--- a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
+++ /dev/null
@@ -1,56 +0,0 @@
-STMicroelectronics STM32 S/PDIF receiver (SPDIFRX).
-
-The SPDIFRX peripheral, is designed to receive an S/PDIF flow compliant with
-IEC-60958 and IEC-61937.
-
-Required properties:
-  - compatible: should be "st,stm32h7-spdifrx"
-  - reg: cpu DAI IP base address and size
-  - clocks: must contain an entry for kclk (used as S/PDIF signal reference)
-  - clock-names: must contain "kclk"
-  - interrupts: cpu DAI interrupt line
-  - dmas: DMA specifiers for audio data DMA and iec control flow DMA
-    See STM32 DMA bindings, Documentation/devicetree/bindings/dma/stm32-dma.txt
-  - dma-names: two dmas have to be defined, "rx" and "rx-ctrl"
-
-Optional properties:
-  - resets: Reference to a reset controller asserting the SPDIFRX
-
-The device node should contain one 'port' child node with one child 'endpoint'
-node, according to the bindings defined in Documentation/devicetree/bindings/
-graph.txt.
-
-Example:
-spdifrx: spdifrx@40004000 {
-	compatible = "st,stm32h7-spdifrx";
-	reg = <0x40004000 0x400>;
-	clocks = <&rcc SPDIFRX_CK>;
-	clock-names = "kclk";
-	interrupts = <97>;
-	dmas = <&dmamux1 2 93 0x400 0x0>,
-	       <&dmamux1 3 94 0x400 0x0>;
-	dma-names = "rx", "rx-ctrl";
-	pinctrl-0 = <&spdifrx_pins>;
-	pinctrl-names = "default";
-
-	spdifrx_port: port {
-		cpu_endpoint: endpoint {
-			remote-endpoint = <&codec_endpoint>;
-		};
-	};
-};
-
-spdif_in: spdif-in {
-	compatible = "linux,spdif-dir";
-
-	codec_port: port {
-		codec_endpoint: endpoint {
-			remote-endpoint = <&cpu_endpoint>;
-		};
-	};
-};
-
-soundcard {
-	compatible = "audio-graph-card";
-	dais = <&spdifrx_port>;
-};
diff --git a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
new file mode 100644
index 000000000000..b7f7dc452231
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/st,stm32-spdifrx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 S/PDIF receiver (SPDIFRX)
+
+maintainers:
+  - Olivier Moysan <olivier.moysan@st.com>
+
+description: |
+  The SPDIFRX peripheral, is designed to receive an S/PDIF flow compliant with
+  IEC-60958 and IEC-61937.
+
+properties:
+  compatible:
+    enum:
+      - st,stm32h7-spdifrx
+
+  "#sound-dai-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: kclk
+
+  interrupts:
+    maxItems: 1
+
+  dmas:
+    items:
+      - description: audio data capture DMA
+      - description: IEC status bits capture DMA
+
+  dma-names:
+    items:
+      - const: rx
+      - const: rx-ctrl
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - "#sound-dai-cells"
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - dmas
+  - dma-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    spdifrx: spdifrx@40004000 {
+        compatible = "st,stm32h7-spdifrx";
+        #sound-dai-cells = <0>;
+        reg = <0x40004000 0x400>;
+        clocks = <&rcc SPDIF_K>;
+        clock-names = "kclk";
+        interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+        dmas = <&dmamux1 2 93 0x400 0x0>,
+               <&dmamux1 3 94 0x400 0x0>;
+        dma-names = "rx", "rx-ctrl";
+        pinctrl-0 = <&spdifrx_pins>;
+        pinctrl-names = "default";
+    };
+
+...
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
