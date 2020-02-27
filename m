Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF69317178A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:37:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aQmiPQJyryQJPiVS4IU509GfwSeJ0VRoXYakNfJH7nA=; b=TdB
	sEqMBI3SSkP1X2XmlCbIYbl1vHi+38myIHR6wVF5yQ48iaRtRUfy6ty+YlgR09dlZaVhuDKPvFdlL
	9W8bDHGFY5oS1AvLu8zTCf6LgYby73VgJPiFR3eabdnrOC/ARCr5nl7raYpf2p5mEHrr5OPzKxRFy
	yo6XZlMO9IhAX2lGHzhdFiENihS5MQ7MnR9bDdXb8S/CkXpl4qrPSzlXDqz9bWB0aB0b04iCaMpoq
	K0k5u0khBrMtt/6+PwiYt3oG0niwwJheuqm6gDE+/Ow9i+OMhac9hfz/a8Q6oK65L6LR0z1NQ9+1M
	loj02G8Jv9EejT9DNcAxk7qtW1jE39A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IQA-0001FT-Vf; Thu, 27 Feb 2020 12:37:43 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IPu-00017R-Mx
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:37:28 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 01RCap9O018520;
 Thu, 27 Feb 2020 21:36:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 01RCap9O018520
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582807011;
 bh=ZOAQrMnQEXEPvN8bCNp3UgX+oQzExQ8Hfi1fHbs68aA=;
 h=From:To:Cc:Subject:Date:From;
 b=cjd7ijl8paDPTuhFKEtAp96O+UViOd4ayI08E3mSM6skmLRqDvmQ+3Tvx5wfts25U
 TwPNkiSoHRe+zIzGGzts9iZ3ToZOPPmySjNm6as/eGWOVTd4SCbk4F0hTPANXQkkd+
 D95+eH5ZXS3iuYTIoQKBiab2Uq3BWEgDcL/7Aztmc88t6IGdTqEOMFasmW6IwwKEd7
 GfLkRihcTFAgzqilDS5P3bZ9O5m8rAMSiLLrfIyuS/C/HPRKncOIigAz3YF8ocUsYW
 CaIiUEfR0LbgPhz0tFd+5WKwap6NARH0rWQCNsgNCfCUBYvajFS0ybW0oJQJ7ZDRtw
 xgQYkZvN/0cBQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: arm: Convert UniPhier System Cache to json-schema
Date: Thu, 27 Feb 2020 21:36:48 +0900
Message-Id: <20200227123648.12785-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043727_118355_4A13C56F 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier System Cache binding to DT schema format.
This is a full-custom outer cache (L2 and L3) used on UniPhier
ARM 32-bit SoCs.

While I was here, I added the interrupts property. This is not
used in Linux, but the hardware has interrupt lines at least.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 .../bindings/arm/socionext/cache-uniphier.txt |  60 -----------
 .../socionext,uniphier-system-cache.yaml      | 102 ++++++++++++++++++
 2 files changed, 102 insertions(+), 60 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/socionext/cache-uniphier.txt
 create mode 100644 Documentation/devicetree/bindings/arm/socionext/socionext,uniphier-system-cache.yaml

diff --git a/Documentation/devicetree/bindings/arm/socionext/cache-uniphier.txt b/Documentation/devicetree/bindings/arm/socionext/cache-uniphier.txt
deleted file mode 100644
index d27a646f48a9..000000000000
--- a/Documentation/devicetree/bindings/arm/socionext/cache-uniphier.txt
+++ /dev/null
@@ -1,60 +0,0 @@
-UniPhier outer cache controller
-
-UniPhier SoCs are integrated with a full-custom outer cache controller system.
-All of them have a level 2 cache controller, and some have a level 3 cache
-controller as well.
-
-Required properties:
-- compatible: should be "socionext,uniphier-system-cache"
-- reg: offsets and lengths of the register sets for the device.  It should
-  contain 3 regions: control register, revision register, operation register,
-  in this order.
-- cache-unified: specifies the cache is a unified cache.
-- cache-size: specifies the size in bytes of the cache
-- cache-sets: specifies the number of associativity sets of the cache
-- cache-line-size: specifies the line size in bytes
-- cache-level: specifies the level in the cache hierarchy.  The value should
-  be 2 for L2 cache, 3 for L3 cache, etc.
-
-Optional properties:
-- next-level-cache: phandle to the next level cache if present.  The next level
-  cache should be also compatible with "socionext,uniphier-system-cache".
-
-The L2 cache must exist to use the L3 cache; the cache hierarchy must be
-indicated correctly with "next-level-cache" properties.
-
-Example 1 (system with L2):
-	l2: l2-cache@500c0000 {
-		compatible = "socionext,uniphier-system-cache";
-		reg = <0x500c0000 0x2000>, <0x503c0100 0x4>,
-		      <0x506c0000 0x400>;
-		cache-unified;
-		cache-size = <0x80000>;
-		cache-sets = <256>;
-		cache-line-size = <128>;
-		cache-level = <2>;
-	};
-
-Example 2 (system with L2 and L3):
-	l2: l2-cache@500c0000 {
-		compatible = "socionext,uniphier-system-cache";
-		reg = <0x500c0000 0x2000>, <0x503c0100 0x8>,
-		      <0x506c0000 0x400>;
-		cache-unified;
-		cache-size = <0x200000>;
-		cache-sets = <512>;
-		cache-line-size = <128>;
-		cache-level = <2>;
-		next-level-cache = <&l3>;
-	};
-
-	l3: l3-cache@500c8000 {
-		compatible = "socionext,uniphier-system-cache";
-		reg = <0x500c8000 0x2000>, <0x503c8100 0x8>,
-		      <0x506c8000 0x400>;
-		cache-unified;
-		cache-size = <0x400000>;
-		cache-sets = <512>;
-		cache-line-size = <256>;
-		cache-level = <3>;
-	};
diff --git a/Documentation/devicetree/bindings/arm/socionext/socionext,uniphier-system-cache.yaml b/Documentation/devicetree/bindings/arm/socionext/socionext,uniphier-system-cache.yaml
new file mode 100644
index 000000000000..2e765bb3e6f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/socionext/socionext,uniphier-system-cache.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/socionext/socionext,uniphier-system-cache.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier outer cache controller
+
+description: |
+  UniPhier ARM 32-bit SoCs are integrated with a full-custom outer cache
+  controller system. All of them have a level 2 cache controller, and some
+  have a level 3 cache controller as well.
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+properties:
+  compatible:
+    const: socionext,uniphier-system-cache
+
+  reg:
+    description: |
+      should contain 3 regions: control register, revision register,
+      operation register, in this order.
+    minItems: 3
+    maxItems: 3
+
+  interrupts:
+    description: |
+      Interrupts can be used to notify the completion of cache operations.
+      The number of interrupts should match to the number of CPU cores.
+      The specified interrupts correspond to CPU0, CPU1, ... in this order.
+      minItems: 1
+      maxItems: 4
+
+  cache-unified: true
+
+  cache-size: true
+
+  cache-sets: true
+
+  cache-line-size: true
+
+  cache-level:
+    minimum: 2
+    maximum: 3
+
+  next-level-cache: true
+
+allOf:
+  - $ref: /schemas/cache-controller.yaml#
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - cache-unified
+  - cache-size
+  - cache-sets
+  - cache-line-size
+  - cache-level
+
+examples:
+  - |
+    // System with L2.
+    cache-controller@500c0000 {
+        compatible = "socionext,uniphier-system-cache";
+        reg = <0x500c0000 0x2000>, <0x503c0100 0x4>, <0x506c0000 0x400>;
+        interrupts = <0 174 4>, <0 175 4>, <0 190 4>, <0 191 4>;
+        cache-unified;
+        cache-size = <0x140000>;
+        cache-sets = <512>;
+        cache-line-size = <128>;
+        cache-level = <2>;
+    };
+  - |
+    // System with L2 and L3.
+    //   L2 should specify the next level cache by 'next-level-cache'.
+    l2: cache-controller@500c0000 {
+        compatible = "socionext,uniphier-system-cache";
+        reg = <0x500c0000 0x2000>, <0x503c0100 0x8>, <0x506c0000 0x400>;
+        interrupts = <0 190 4>, <0 191 4>;
+        cache-unified;
+        cache-size = <0x200000>;
+        cache-sets = <512>;
+        cache-line-size = <128>;
+        cache-level = <2>;
+        next-level-cache = <&l3>;
+    };
+
+    l3: cache-controller@500c8000 {
+        compatible = "socionext,uniphier-system-cache";
+        reg = <0x500c8000 0x2000>, <0x503c8100 0x8>, <0x506c8000 0x400>;
+        interrupts = <0 174 4>, <0 175 4>;
+        cache-unified;
+        cache-size = <0x200000>;
+        cache-sets = <512>;
+        cache-line-size = <256>;
+        cache-level = <3>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
