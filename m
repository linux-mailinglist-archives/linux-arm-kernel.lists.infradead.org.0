Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A80200344
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n03fv3WBlIAv7gC3qQpL1zMYj/ZdVURgPSVcY/rCBUc=; b=hSKzp4DeZQRMzP
	tjCJSWZRd/rub1uFlK2iPTuKCRMcZ5qc7Quw3XKlIZdgP0LuDAnW+s/3KcvMOhgbCZpG+QG0ixwTv
	K6VsQzr77TUQBLllbjyEv50rHtwprnxKVsa5zVEQcz7PiO6+/5dzGoVlFppEOF3DLH4W1+eJ5/ni8
	cMz0JsrUkBlmIS02CxDqB9UzEMkClNnMlxz/sJhWt15rF+ziJ4I9YWj3D7bmxLlVsIUd/6GRa3iht
	4GFJlEEIiMprbSh3FtmrJFurAOObfggJNzYIAC4K7RsjDJj9uuzT8HWhVhd3Kjn7i8DUev9gIok66
	JXJUq0i5+qTIIueYPv6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmC34-0001AZ-8U; Fri, 19 Jun 2020 08:06:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmC2V-0000t8-Ex; Fri, 19 Jun 2020 08:06:21 +0000
X-UUID: 196b186a61d647be8c6021c555f09f7a-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=UtXQMNPiKcI1teux/iFeLY1Gk2pKVYDIwGiIqNOtybw=; 
 b=jW5Z9Bx2K6HqBA/v9tHRhB2z80MJaXfvJG2L3I2TYpcXKA1I2gEIxYSVkYeBA6VDkIly2sPh5qsdDYmBpsJ9KtiMwPONUlL7CfrVHSDOF8J6WuQd9l/Oe8p2NL07e6PdzgFeLq4TJ6+9k5FRyvjyRS6i2c4dM4k0dZPRq5KVx8M=;
X-UUID: 196b186a61d647be8c6021c555f09f7a-20200619
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1419684489; Fri, 19 Jun 2020 00:06:29 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 01:06:13 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 16:05:06 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 19 Jun 2020 16:05:06 +0800
From: EastL <EastL.Lee@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH v5 1/4] dt-bindings: dmaengine: Add MediaTek Command-Queue DMA
 controller bindings
Date: Fri, 19 Jun 2020 16:04:59 +0800
Message-ID: <1592553902-30592-2-git-send-email-EastL.Lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1592553902-30592-1-git-send-email-EastL.Lee@mediatek.com>
References: <1592553902-30592-1-git-send-email-EastL.Lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 03BA4C7E34FC566C1EE83D711BB1655A4B129E4C11B45DF4651B520F2DD073182000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_010619_501975_47CA1DF3 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, EastL <EastL.Lee@mediatek.com>,
 dmaengine@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the devicetree bindings for MediaTek Command-Queue DMA controller
which could be found on MT6779 SoC or other similar Mediatek SoCs.

Signed-off-by: EastL <EastL.Lee@mediatek.com>
---
 .../devicetree/bindings/dma/mtk-cqdma.yaml         | 114 +++++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/mtk-cqdma.yaml

diff --git a/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml b/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
new file mode 100644
index 0000000..e6fdf05
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/mtk-cqdma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Command-Queue DMA controller Device Tree Binding
+
+maintainers:
+  - EastL Lee <EastL.Lee@mediatek.com>
+
+description:
+  MediaTek Command-Queue DMA controller (CQDMA) on Mediatek SoC
+  is dedicated to memory-to-memory transfer through queue based
+  descriptor management.
+
+allOf:
+  - $ref: "dma-controller.yaml#"
+
+properties:
+  "#dma-cells":
+    minimum: 1
+    maximum: 255
+    description:
+      Used to provide DMA controller specific information.
+
+  compatible:
+    oneOf:
+      - const: mediatek,common-cqdma
+      - const: mediatek,mt6765-cqdma
+      - const: mediatek,mt6779-cqdma
+
+  reg:
+    minItems: 1
+    maxItems: 5
+    description:
+        A base address of MediaTek Command-Queue DMA controller,
+        a channel will have a set of base address.
+
+  interrupts:
+    minItems: 1
+    maxItems: 5
+    description:
+        A interrupt number of MediaTek Command-Queue DMA controller,
+        one interrupt number per dma-channels.
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: cqdma
+
+  dma-channel-mask:
+    $ref: /schemas/types.yaml#definitions/uint32
+    description:
+       For DMA capability, We will know the addressing capability of
+       MediaTek Command-Queue DMA controller through dma-channel-mask.
+    items:
+      minItems: 1
+      maxItems: 63
+
+  dma-channels:
+    $ref: /schemas/types.yaml#definitions/uint32
+    description:
+      Number of DMA channels supported by MediaTek Command-Queue DMA
+      controller, support up to five.
+    items:
+      minItems: 1
+      maxItems: 5
+
+  dma-requests:
+    $ref: /schemas/types.yaml#definitions/uint32
+    description:
+      Number of DMA request (virtual channel) supported by MediaTek
+      Command-Queue DMA controller, support up to 32.
+    items:
+      minItems: 1
+      maxItems: 32
+
+required:
+  - "#dma-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dma-channel-mask
+  - dma-channels
+  - dma-requests
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/mt6779-clk.h>
+    cqdma: dma-controller@10212000 {
+        compatible = "mediatek,mt6779-cqdma";
+        reg = <0x10212000 0x80>,
+            <0x10212080 0x80>,
+            <0x10212100 0x80>;
+        interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_LOW>,
+            <GIC_SPI 140 IRQ_TYPE_LEVEL_LOW>,
+            <GIC_SPI 141 IRQ_TYPE_LEVEL_LOW>;
+        clocks = <&infracfg_ao CLK_INFRA_CQ_DMA>;
+        clock-names = "cqdma";
+        dma-channel-mask = <63>;
+        dma-channels = <3>;
+        dma-requests = <32>;
+        #dma-cells = <1>;
+    };
+
+...
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
