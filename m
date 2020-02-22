Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E3D168CCC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 07:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JgfmGmdIhbQtTrdEi3rRRlKSIFwOuwCLiANuuDwS5mQ=; b=D4s
	HyfJiLBk8R4MjouZO56sboOHYITMN7X35hXI/hCD2dNddO3KT78fNRyupnpoWnt7GyFv8qMC2QYSQ
	G8Ro7CL5N6HI98yikPEeia/HB2zH5lTY0YpjBCwf4oOguSrloIvgib1ohrYr6Ai4/VlafImEqaM2n
	X4mV9nvY4fJD35SNAFRAIa9BqZm1kF04Ie0WalzjBUAiFlEXCfHySWucymlYBUqoi2ApY+MJTydvS
	rpM7zrJrXMfco9BJ1J+E+cTx1xCSzh/bC+0+Quw+x9kWIHVwWYD2UgrMp+ze3Qq9vfc8t/x868MN+
	ZK07yTCnIO7VDjjk2ArNirOWLIAJW7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Nuy-00033I-Hk; Sat, 22 Feb 2020 06:05:36 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Num-00032P-5G
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 06:05:28 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 01M64cSJ007264;
 Sat, 22 Feb 2020 15:04:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 01M64cSJ007264
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582351479;
 bh=tZ/Fv+Hm02lylfP8gzd4irqcz0a8ojTD90nzr+or0w0=;
 h=From:To:Cc:Subject:Date:From;
 b=ymyB8kZzlnIkSU9Y+ArJQ/rpOTO4Svg1KDeKqwH4avIj0rPAbso4qj04CwHxfUsGL
 ZClkNY51eu/GmOMo+C/V5Qj5wn9ljIG1eCmgLPkrSJn3C6kHZxQdDmVnECEdZi27Um
 tRlMqOfIua7AxijHT0Go2VxdjiHQA5o9L/M9WoNzaGm8WhfBF6onIM+Jp6rMMBXyr9
 w5DnzTa5fxZS1HvV9mKdh/wgriqsYLry4SYoRODSaEC0LXR5a00uXq9CgQk4UUZR47
 /6CDH6GRJBaTstM23L2uKh2kCA4KnaJhS1W9F0icZxL3LnbU5Zfczvjo9X7Q1qVLPf
 ca3YQ+kRsV/9Q==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: arm: Convert UniPhier board/SoC bindings
 to json-schema
Date: Sat, 22 Feb 2020 15:04:33 +0900
Message-Id: <20200222060435.971-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_220524_419591_B7D6165B 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Socionext UniPhier board/SoC binding to DT schema format.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
  - Remove 'examples' because examples are fold into /example-0 node
    and there is no way to meet
      $nodename:
         const: '/'

 .../bindings/arm/socionext/uniphier.txt       | 47 --------------
 .../bindings/arm/socionext/uniphier.yaml      | 61 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 62 insertions(+), 48 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.txt
 create mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.yaml

diff --git a/Documentation/devicetree/bindings/arm/socionext/uniphier.txt b/Documentation/devicetree/bindings/arm/socionext/uniphier.txt
deleted file mode 100644
index b3ed1033740e..000000000000
--- a/Documentation/devicetree/bindings/arm/socionext/uniphier.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-Socionext UniPhier SoC family
------------------------------
-
-Required properties in the root node:
-  - compatible: should contain board and SoC compatible strings
-
-SoC and board compatible strings:
-  (sorted chronologically)
-
-  - LD4 SoC:  "socionext,uniphier-ld4"
-      - Reference Board: "socionext,uniphier-ld4-ref"
-
-  - Pro4 SoC: "socionext,uniphier-pro4"
-      - Reference Board: "socionext,uniphier-pro4-ref"
-      - Ace Board:       "socionext,uniphier-pro4-ace"
-      - Sanji Board:     "socionext,uniphier-pro4-sanji"
-
-  - sLD8 SoC: "socionext,uniphier-sld8"
-      - Reference Board: "socionext,uniphier-sld8-ref"
-
-  - PXs2 SoC: "socionext,uniphier-pxs2"
-      - Gentil Board:    "socionext,uniphier-pxs2-gentil"
-      - Vodka Board:     "socionext,uniphier-pxs2-vodka"
-
-  - LD6b SoC: "socionext,uniphier-ld6b"
-      - Reference Board: "socionext,uniphier-ld6b-ref"
-
-  - LD11 SoC: "socionext,uniphier-ld11"
-      - Reference Board: "socionext,uniphier-ld11-ref"
-      - Global Board:    "socionext,uniphier-ld11-global"
-
-  - LD20 SoC: "socionext,uniphier-ld20"
-      - Reference Board: "socionext,uniphier-ld20-ref"
-      - Global Board:    "socionext,uniphier-ld20-global"
-
-  - PXs3 SoC: "socionext,uniphier-pxs3"
-      - Reference Board: "socionext,uniphier-pxs3-ref"
-
-Example:
-
-/dts-v1/;
-
-/ {
-	compatible = "socionext,uniphier-ld20-ref", "socionext,uniphier-ld20";
-
-	...
-};
diff --git a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
new file mode 100644
index 000000000000..65ad6d8a3c99
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/socionext/uniphier.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext UniPhier platform device tree bindings
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+properties:
+  $nodename:
+    const: /
+  compatible:
+    oneOf:
+      - description: LD4 SoC boards
+        items:
+          - enum:
+            - socionext,uniphier-ld4-ref
+          - const: socionext,uniphier-ld4
+      - description: Pro4 SoC boards
+        items:
+          - enum:
+            - socionext,uniphier-pro4-ace
+            - socionext,uniphier-pro4-ref
+            - socionext,uniphier-pro4-sanji
+          - const: socionext,uniphier-pro4
+      - description: sLD8 SoC boards
+        items:
+          - enum:
+            - socionext,uniphier-sld8-ref
+          - const: socionext,uniphier-sld8
+      - description: PXs2 SoC boards
+        items:
+          - enum:
+            - socionext,uniphier-pxs2-gentil
+            - socionext,uniphier-pxs2-vodka
+          - const: socionext,uniphier-pxs2
+      - description: LD6b SoC boards
+        items:
+          - enum:
+            - socionext,uniphier-ld6b-ref
+          - const: socionext,uniphier-ld6b
+      - description: LD11 SoC boards
+        items:
+          - enum:
+            - socionext,uniphier-ld11-global
+            - socionext,uniphier-ld11-ref
+          - const: socionext,uniphier-ld11
+      - description: LD20 SoC boards
+        items:
+          - enum:
+            - socionext,uniphier-ld20-global
+            - socionext,uniphier-ld20-ref
+          - const: socionext,uniphier-ld20
+      - description: PXs3 SoC boards
+        items:
+          - enum:
+            - socionext,uniphier-pxs3-ref
+          - const: socionext,uniphier-pxs3
diff --git a/MAINTAINERS b/MAINTAINERS
index 4beb8dc4c7eb..93ccb6708ae9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2546,7 +2546,7 @@ M:	Masahiro Yamada <yamada.masahiro@socionext.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
 S:	Maintained
-F:	Documentation/devicetree/bindings/arm/socionext/uniphier.txt
+F:	Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
 F:	Documentation/devicetree/bindings/gpio/gpio-uniphier.txt
 F:	Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.txt
 F:	arch/arm/boot/dts/uniphier*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
