Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF6E16714A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 08:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b88yzuxbHThYmI6yXzrL7BPz/iTmkElV+waWnhAkEwo=; b=DkEft5nzM6oMcpyMr5e3iWLH6U
	lW/dfG9skl0UzsLDwQg+AT15lPkjTnIf5BkJVWlR9gHWZu1b7lW7bzJncUofl4UmHYn6ubCV+ECMl
	40sQCJJBUgTTQommWOn3CspH7ck9BFjycbv+nmSx2E1oRH+Bup3WTmMgfXEvJjvz52cCd53VfSd+2
	A8XMi3IoX5JA3Z+jCC4Yi67SZEV73oE56daaeEZOhSqofWRVMO9uLLaTD25U8h8jTrpYO5PMnN6r0
	USLCUrjo5sZX14KjPEIEYXwFOPJlSmOiRZcSK9Cy+Kk0dNYvD2lMqbB9aeRmF9RmO/k0b3clMXuuD
	oCdzze2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j537S-0005bJ-8s; Fri, 21 Feb 2020 07:53:06 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5370-0005NG-PN
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 07:52:40 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 21 Feb 2020 16:52:37 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 04C8D18008C;
 Fri, 21 Feb 2020 16:52:38 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 21 Feb 2020 16:52:37 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 45B2F1A01BB;
 Fri, 21 Feb 2020 16:52:37 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [RESEND PATCH v4 1/2] dt-bindings: dmaengine: Add UniPhier external
 DMA controller bindings
Date: Fri, 21 Feb 2020 16:52:29 +0900
Message-Id: <1582271550-3403-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582271550-3403-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1582271550-3403-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_235238_933748_FDA1911B 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree binding documentation for external DMA controller
implemented on Socionext UniPhier SOCs.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../bindings/dma/socionext,uniphier-xdmac.yaml     | 63 ++++++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml

diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
new file mode 100644
index 00000000..86cfb59
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/socionext,uniphier-xdmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext UniPhier external DMA controller
+
+description: |
+  This describes the devicetree bindings for an external DMA engine to perform
+  memory-to-memory or peripheral-to-memory data transfer capable of supporting
+  16 channels, implemented in Socionext UniPhier SoCs.
+
+maintainers:
+  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
+
+allOf:
+  - $ref: "dma-controller.yaml#"
+
+properties:
+  compatible:
+    const: socionext,uniphier-xdmac
+
+  reg:
+    items:
+      - description: XDMAC base register region (offset and length)
+      - description: XDMAC extension register region (offset and length)
+
+  interrupts:
+    maxItems: 1
+
+  "#dma-cells":
+    const: 2
+    description: |
+      DMA request from clients consists of 2 cells:
+        1. Channel index
+        2. Transfer request factor number, If no transfer factor, use 0.
+           The number is SoC-specific, and this should be specified with
+           relation to the device to use the DMA controller.
+
+  dma-channels:
+    minimum: 1
+    maximum: 16
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#dma-cells"
+
+examples:
+  - |
+    xdmac: dma-controller@5fc10000 {
+        compatible = "socionext,uniphier-xdmac";
+        reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
+        interrupts = <0 188 4>;
+        #dma-cells = <2>;
+        dma-channels = <16>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
