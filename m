Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4442F1D067F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 07:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+9VSj+fxME36rU9FfbuSiYutCU4W8KZrvjT0j6xxR00=; b=Vae
	hhdpCvcfG2kdnKbQh09gFq1tD7nDWcMo8gBz1BRETaLqFbnEM7yMyIuTD+FbvSAzJqjjutOQkJOrS
	ALHjUeKlUGrbS2j01bDRLHpJgrvhNP870S1OJM407PPeD5U+8tNmLVEQfvchhCK0NHUy0Wm+zhV++
	KlXNkYSpwQxhN56nuc5ioeyLAYq/Kl+UDyNxhYUthhpw4I6j9HffmSxyiXRDCcOTbhV/lrmaSFeAG
	Ulqk5tXKS2DxRDJ90r/Yj6g1deXo4TUq4xYIGVU/IWa2LvqUdWNnb+m34odtNMjKCPy78iK7yhIe7
	XYxvc1ShyjU2Lp2D5SVtHOaqvTEy2aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYkAi-0001XZ-8A; Wed, 13 May 2020 05:43:12 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYkAS-0001QO-RG
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 05:42:58 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 13 May 2020 14:42:53 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 218601800CF;
 Wed, 13 May 2020 14:42:54 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 13 May 2020 14:42:54 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id AB2C11A12AD;
 Wed, 13 May 2020 14:42:53 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>
Subject: [PATCH] dt-bindings: watchdog: Convert UniPhier watchdog timer to
 json-schema
Date: Wed, 13 May 2020 14:42:25 +0900
Message-Id: <1589348545-22244-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_224257_014362_DD011A6A 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert UniPhier watchdog timer binding to DT schema format.

Cc: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../bindings/watchdog/socionext,uniphier-wdt.yaml  | 36 ++++++++++++++++++++++
 .../devicetree/bindings/watchdog/uniphier-wdt.txt  | 20 ------------
 2 files changed, 36 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/socionext,uniphier-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/uniphier-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/socionext,uniphier-wdt.yaml b/Documentation/devicetree/bindings/watchdog/socionext,uniphier-wdt.yaml
new file mode 100644
index 0000000..a059d16
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/socionext,uniphier-wdt.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/socionext,uniphier-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext UniPhier watchdog timer
+
+maintainers:
+  - Keiji Hayashibara <hayashibara.keiji@socionext.com>
+
+allOf:
+  - $ref: "watchdog.yaml#"
+
+properties:
+  compatible:
+    const: socionext,uniphier-wdt
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    // The UniPhier watchdog should be a subnode of a "syscon" compatible node.
+
+    sysctrl@61840000 {
+        compatible = "socionext,uniphier-ld11-sysctrl",
+                     "simple-mfd", "syscon";
+        reg = <0x61840000 0x10000>;
+
+        watchdog {
+            compatible = "socionext,uniphier-wdt";
+        };
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/uniphier-wdt.txt b/Documentation/devicetree/bindings/watchdog/uniphier-wdt.txt
deleted file mode 100644
index bf63375..0000000
--- a/Documentation/devicetree/bindings/watchdog/uniphier-wdt.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-UniPhier watchdog timer controller
-
-This UniPhier watchdog timer controller must be under sysctrl node.
-
-Required properties:
-- compatible: should be "socionext,uniphier-wdt"
-
-Example:
-
-	sysctrl@61840000 {
-		compatible = "socionext,uniphier-ld11-sysctrl",
-			     "simple-mfd", "syscon";
-		reg = <0x61840000 0x4000>;
-
-		watchdog {
-			compatible = "socionext,uniphier-wdt";
-		}
-
-		other nodes ...
-	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
