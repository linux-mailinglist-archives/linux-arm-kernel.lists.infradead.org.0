Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE116FB08
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 10:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=As7ynq+SxAqU+Ou9MRKazxju6HEkonzY/jABJ5gBHoc=; b=M1jXk8uMF6ttd7
	U8Igthn9AMmX/78CXW8WzRzW9UF8miu+rI4sHz+M8INNBWz8T730NqRTRKBjlqg/dRjMKjYHQiMa/
	I81NV5mo1Yk/wnOSDbTyZtf+GQeYWqVQDkxrBxXpjpEAfK/bKaX/9QcYx2DTwlJWVPdxmpbZon8Do
	+PYta8+GVXGCzrry0mpUu5SpWSLb1Jega8dcUWXXq8jfBBc83piqq9EkvqtBFJfzGl7JOLjvYbY4L
	rzg3yHhoxvhlQnFflnpkJ/ODuh5rANmM8p+aewUqspBD1ljat2mSL6j6fgpmfWXE4W1OJYAgPocGO
	1z36ra9aKMzNbiwUupRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTT9-000530-FR; Mon, 22 Jul 2019 08:14:51 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTRA-0003IO-38
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 08:12:51 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id E9485240002;
 Mon, 22 Jul 2019 08:12:30 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, daniel.lezcano@linaro.org,
 tglx@linutronix.de
Subject: [PATCH 01/11] dt-bindings: timer: Convert Allwinner A10 Timer to a
 schema
Date: Mon, 22 Jul 2019 10:12:19 +0200
Message-Id: <20190722081229.22422-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_011248_442766_A0B132E5 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The older Allwinner SoCs have a Timer supported in Linux, with a matching
Device Tree binding.

While the original binding only mentions one interrupt, the timer actually
has 6 of them.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../timer/allwinner,sun4i-a10-timer.yaml      | 76 +++++++++++++++++++
 .../bindings/timer/allwinner,sun4i-timer.txt  | 19 -----
 2 files changed, 76 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
 delete mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt

diff --git a/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml b/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
new file mode 100644
index 000000000000..7292a424092c
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/allwinner,sun4i-a10-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Timer Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-timer
+      - allwinner,suniv-f1c100s-timer
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description:
+      List of timers interrupts
+
+  clocks:
+    maxItems: 1
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          items:
+            const: allwinner,sun4i-a10-timer
+
+    then:
+      properties:
+        interrupts:
+          minItems: 6
+          maxItems: 6
+
+  - if:
+      properties:
+        compatible:
+          items:
+            const: allwinner,suniv-f1c100s-timer
+
+    then:
+      properties:
+        interrupts:
+          minItems: 3
+          maxItems: 3
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    timer {
+        compatible = "allwinner,sun4i-a10-timer";
+        reg = <0x01c20c00 0x400>;
+        interrupts = <22>,
+                     <23>,
+                     <24>,
+                     <25>,
+                     <67>,
+                     <68>;
+        clocks = <&osc>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt b/Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt
deleted file mode 100644
index 3da9d515c03a..000000000000
--- a/Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Allwinner A1X SoCs Timer Controller
-
-Required properties:
-
-- compatible : should be one of the following:
-              "allwinner,sun4i-a10-timer"
-              "allwinner,suniv-f1c100s-timer"
-- reg : Specifies base physical address and size of the registers.
-- interrupts : The interrupt of the first timer
-- clocks: phandle to the source clock (usually a 24 MHz fixed clock)
-
-Example:
-
-timer {
-	compatible = "allwinner,sun4i-a10-timer";
-	reg = <0x01c20c00 0x400>;
-	interrupts = <22>;
-	clocks = <&osc>;
-};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
