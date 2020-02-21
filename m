Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FCD166CE0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:25:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s7piWyoTD/1ftA7wT0jn06WysjZKm0iqCsmfhKeZc0M=; b=dFt
	777VmdBbHHq3u3wu6K+yzJENmGUEmYTY+M9lms+cDZ2gVSRBRsODwwNUYioegEFpS6crhwEPXIeQL
	T1t9Kc3qJT4c/E2QoTBMT1lZ1HpoQ/R7eGUfLJuFTBxfZFVQRTvLFw4IC69EPGCOWiHfiNDxHXbXS
	0tb6vVKMk+0ItW0P+1jqYhC6sXJ63vouZb2SPj3gKNb0aYY0C6NG4M0fAcOM1My4hLUNyooQvx0zB
	LGPVSW92D5yg2ia+DGEtkqo1gITnGYKixih/Ks46PsXaQltlBmGg2uxsAKnSNPpifdKwrtffZPOoN
	54AA8596W/GIGHorEulzXTtqWce1YNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4y0f-0003Mo-0m; Fri, 21 Feb 2020 02:25:45 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4y0V-0003Ll-SR
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:25:37 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 01L2P6P4019101;
 Fri, 21 Feb 2020 11:25:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 01L2P6P4019101
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582251907;
 bh=eqHny2FaqNErlaYN7wu9BhfmPoOAesBI8drGqqCcumU=;
 h=From:To:Cc:Subject:Date:From;
 b=TKEJiQp0Jz01Hs5YJIVJSHWi8i8mxGOblcOKkYhYWSMLGCXwut6zT2hr3jJ2Fp6i9
 MU9zGmCJfeoqjBdjtN29n5GrXRemKacIW/GjCDi208sSieuJfEcpm0/mh+2L71X2d0
 F/DJFWnQgoiG9CsZx9jxtEZA+T1XErp7mr/pv8dFwdC72xQSstOM0BUexWRuzeDa5W
 hyeBhDa1Jg1v7q3hr9g06GjNUHfCSlfMd69A3axQUlNYnQDkxAiS9Ge07c/XtG4U0n
 MiA3MkaFIeogPLpbEzVwDyhSHvMpd0RdyQJgomUdgG4Ie4hgzIb0MOiZrZnovFVxma
 x00o7hYBKyPrw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: dma: Convert UniPhier MIO DMA controller to
 json-schema
Date: Fri, 21 Feb 2020 11:25:04 +0900
Message-Id: <20200221022504.24104-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_182536_143348_B310A9CC 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.76 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier MIO (Media I/O) DMA controller binding to DT
schema format.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 .../dma/socionext,uniphier-mio-dmac.yaml      | 59 +++++++++++++++++++
 .../bindings/dma/uniphier-mio-dmac.txt        | 25 --------
 2 files changed, 59 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-mio-dmac.yaml
 delete mode 100644 Documentation/devicetree/bindings/dma/uniphier-mio-dmac.txt

diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-mio-dmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-mio-dmac.yaml
new file mode 100644
index 000000000000..817e5aec3b31
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-mio-dmac.yaml
@@ -0,0 +1,59 @@
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
