Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECA5168E64
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 12:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IGkYUu1n7zo7pCXWxgXhuOBKidxbVHcYEDl2PAFepDo=; b=OqO
	aN/wIsH9l9H+Lb71nBmF41l+foz2UMN1IaVXVYYuaNsiqC0gpVQ1vhdE1KgJ6kBBzXv0p1qLC/gfc
	mFz04GBKqc+er3KeBq9/yFuHI88XfHLGHs5DDEVb2uy4K2T4KHMM4/UJ73w1N+szjfam8Jg+d4LEH
	gSJfUwpiMSiY3u0fl4P1o5A5V7gR3jUCX2MVeF4/RGzOe0R43XZqlyHaBpg2mezBV0ZoweEnQY9W5
	QERqvHR7y4xipBkI511gY8vwhGvGGYVMWD9/fGZad5ZzN6Dv8AcEQD50PgohCrc6z0NZZg9rV/Z3x
	hpbotImF37VBSWiilE7X8SNSvZ7k2WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5SqU-00086s-2I; Sat, 22 Feb 2020 11:21:18 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5SqK-000867-89
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 11:21:11 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 01MBKjen004488;
 Sat, 22 Feb 2020 20:20:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 01MBKjen004488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582370446;
 bh=Fm1qChr6ZbZLhdE3dP5bKvN2cnwWcGsLh5GHdABxVyE=;
 h=From:To:Cc:Subject:Date:From;
 b=tND51qjySwpbpvelT1nqARk2V3PBmw+G/91f5VL+7kQ8U6lzFvobKmL4ivpI3tTZR
 Y/OjJTFSMLPAggU5pvKARW8Xw3YdLeCQAwX/h3Vfob1Y6IAUMLe1pez7DeBazDmt1X
 m8Csj6062CPiy6sgOUKnB0K4EsShKp+mU9ISVC9ANX6ZxbImQovZcdEqqAGdqL2nUQ
 xIh1PYOOFIgKcttm1GxTOyRZNJibjW8xfol4nS+jy13eIBvzT9X5ke7ynxf8io/q6K
 baxH+4UFcdsw+llaa38eluyvX5mP5LGjwgzr+SPRdfhQ1+XavGSOnPLBwKMmyft4fZ
 ZP/EEdXZCwkBA==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2] dt-bindings: dma: Convert UniPhier MIO DMA controller to
 json-schema
Date: Sat, 22 Feb 2020 20:20:42 +0900
Message-Id: <20200222112042.32345-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_032108_594431_3DBC5F12 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier MIO (Media I/O) DMA controller binding to DT
schema format.

While I was here, I added the resets property.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
 - add 'resets'

 .../dma/socionext,uniphier-mio-dmac.yaml      | 63 +++++++++++++++++++
 .../bindings/dma/uniphier-mio-dmac.txt        | 25 --------
 2 files changed, 63 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-mio-dmac.yaml
 delete mode 100644 Documentation/devicetree/bindings/dma/uniphier-mio-dmac.txt

diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-mio-dmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-mio-dmac.yaml
new file mode 100644
index 000000000000..e7bf6dd7da29
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-mio-dmac.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/socionext,uniphier-mio-dmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier Media IO DMA controller
+
+description: |
+  This works as an external DMA engine for SD/eMMC controllers etc.
+  found in UniPhier LD4, Pro4, sLD8 SoCs.
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+allOf:
+  - $ref: "dma-controller.yaml#"
+
+properties:
+  compatible:
+    const: socionext,uniphier-mio-dmac
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: |
+      A list of interrupt specifiers associated with the DMA channels.
+      The number of interrupt lines is SoC-dependent.
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  '#dma-cells':
+    description: The single cell represents the channel index.
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - '#dma-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    // In the example below, "interrupts = <0 68 4>, <0 68 4>, ..." is not a
+    // typo. The first two channels share a single interrupt line.
+
+    dmac: dma-controller@5a000000 {
+        compatible = "socionext,uniphier-mio-dmac";
+        reg = <0x5a000000 0x1000>;
+        interrupts = <0 68 4>, <0 68 4>, <0 69 4>, <0 70 4>,
+                     <0 71 4>, <0 72 4>, <0 73 4>, <0 74 4>;
+        clocks = <&mio_clk 7>;
+        resets = <&mio_rst 7>;
+        #dma-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/dma/uniphier-mio-dmac.txt b/Documentation/devicetree/bindings/dma/uniphier-mio-dmac.txt
deleted file mode 100644
index b12388dc7eac..000000000000
--- a/Documentation/devicetree/bindings/dma/uniphier-mio-dmac.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-UniPhier Media IO DMA controller
-
-This works as an external DMA engine for SD/eMMC controllers etc.
-found in UniPhier LD4, Pro4, sLD8 SoCs.
-
-Required properties:
-- compatible: should be "socionext,uniphier-mio-dmac".
-- reg: offset and length of the register set for the device.
-- interrupts: a list of interrupt specifiers associated with the DMA channels.
-- clocks: a single clock specifier.
-- #dma-cells: should be <1>. The single cell represents the channel index.
-
-Example:
-	dmac: dma-controller@5a000000 {
-		compatible = "socionext,uniphier-mio-dmac";
-		reg = <0x5a000000 0x1000>;
-		interrupts = <0 68 4>, <0 68 4>, <0 69 4>, <0 70 4>,
-			     <0 71 4>, <0 72 4>, <0 73 4>, <0 74 4>;
-		clocks = <&mio_clk 7>;
-		#dma-cells = <1>;
-	};
-
-Note:
-In the example above, "interrupts = <0 68 4>, <0 68 4>, ..." is not a typo.
-The first two channels share a single interrupt line.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
