Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2411B9538
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 04:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFBsEMJeSfgKPMiRFcMA0z9S7ec6raQiY7nDYmhezBE=; b=Ka0jOAcste/1vA
	ZRlgxItpY1oRmciNN0hPg42EYWjCk9BUKAQzsuE4SfK0uwgguB+TOGyeM1R9COonSmPc9vd6gqPgg
	xMmOR0r19hh3XaFeZc2l3Op/HSb+rrJpww9JwVF/84jxhN2R3bxoQW2Q18z+qqXtdw7MwckkDo4Gd
	rz7ZZanhpBkbKfGsK4NdA8CMn3hpFdUHZJzKFUw0udk/60cFBfgc4Jq/T1MqhRvHnCoXNRL98X5EJ
	T57MA6TpJkqoKKrgnfFE0XKix2K5PgudCQEbKcmjsYhhMF+KQ+s9BVBFRfQtNiHkqqT2oCPTac6di
	3lHkLLJtYEIuNa+EdmOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jStu6-0002nO-15; Mon, 27 Apr 2020 02:53:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSttX-0002X4-LG; Mon, 27 Apr 2020 02:53:21 +0000
X-UUID: d57636b161aa4e1abe9d6c428f7edd1d-20200426
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=8LWf1I8Bi1Ln+BLzpkqWL3VaHaWi3jnB2wOQ6Ts6Fl0=; 
 b=izpe41QGBZWL9LwKTnlWeCg8Zp3ukAyaAXfN+o8wEQUjtcYUxP0B7Se6WPGk24wYHfBu25XwGwyBn++SH/TtWTL6MhDBgrugvsLRWgFt/KWvgC41UocNHwVXkCu9tx/gDZ6VYRkego7alKb2WKFpgeaaKCeREJkhJbcXnbB6Bn8=;
X-UUID: d57636b161aa4e1abe9d6c428f7edd1d-20200426
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1280312478; Sun, 26 Apr 2020 18:53:36 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 26 Apr 2020 19:53:05 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 27 Apr 2020 10:53:03 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 27 Apr 2020 10:53:02 +0800
From: EastL <EastL.Lee@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH v3 1/2] dt-bindings: dmaengine: Add MediaTek Command-Queue DMA
 controller bindings
Date: Mon, 27 Apr 2020 10:52:56 +0800
Message-ID: <1587955977-17207-2-git-send-email-EastL.Lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1587955977-17207-1-git-send-email-EastL.Lee@mediatek.com>
References: <1587955977-17207-1-git-send-email-EastL.Lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_195319_699128_8A3D113B 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 .../devicetree/bindings/dma/mtk-cqdma.yaml         | 98 ++++++++++++++++++++++
 1 file changed, 98 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/mtk-cqdma.yaml

diff --git a/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml b/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
new file mode 100644
index 0000000..cd265e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
@@ -0,0 +1,98 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/mtk-cqdma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Command-Queue DMA controller Device Tree Binding
+
+maintainers:
+  - EastL <EastL.Lee@mediatek.com>
+
+description:
+  MediaTek Command-Queue DMA controller (CQDMA) on Mediatek SoC
+  is dedicated to memory-to-memory transfer through queue based
+  descriptor management.
+
+properties:
+  "#dma-cells":
+    minimum: 1
+    # Should be enough
+    maximum: 255
+    description:
+      Used to provide DMA controller specific information.
+
+  compatible:
+    const: mediatek,cqdma
+
+  reg:
+    maxItems: 255
+
+  interrupts:
+    maxItems: 255
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: cqdma
+
+  dma-channel-mask:
+    description:
+      Bitmask of available DMA channels in ascending order that are
+      not reserved by firmware and are available to the
+      kernel. i.e. first channel corresponds to LSB.
+      The first item in the array is for channels 0-31, the second is for
+      channels 32-63, etc.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      minItems: 1
+      # Should be enough
+      maxItems: 255
+
+  dma-channels:
+    $ref: /schemas/types.yaml#definitions/uint32
+    description:
+      Number of DMA channels supported by the controller.
+
+  dma-requests:
+    $ref: /schemas/types.yaml#definitions/uint32
+    description:
+      Number of DMA request signals supported by the controller.
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
+        compatible = "mediatek,cqdma";
+        reg = <0 0x10212000 0 0x80>,
+            <0 0x10212080 0 0x80>,
+            <0 0x10212100 0 0x80>;
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
