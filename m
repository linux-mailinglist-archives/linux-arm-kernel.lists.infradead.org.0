Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5545FB9EFE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 19:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=odCgd3znTlR85Pu8CmsYt/vhl0Jo9epkN97X5AR7/6Q=; b=SvW
	5VshoExU8c/JujMk04vMR/a0Vx5gq6UxqOF6VXZcvpXjFRuwoSj5CybV3bUX8Bact4dd/WjbJ5k8a
	I3WUCYwO1jqUXgy2yM3z2p9CuhGKwM1OOp0wNXpRrE7ZWC4R7X33+ksYpokacQCk5gQe0O6M9HTBb
	RN/kb7i9u6/Cq8+bfRLm6Hm8KKKQsNIDPQBdaECe4gL7eHp18efvGqGowaoHeJpA9DSRzMOMwMOnO
	tecysJJ50DQoNwFpnQgd1ssBJLya8X+vFimnG+LciTIApYVWbb2Vb9KihjZLc6P6C31z/SpOeeJT4
	8rYjyfwtJCevODyeevjNiwZTr/zoYew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBim3-0001su-L8; Sat, 21 Sep 2019 17:02:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBilp-0001ra-OA
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 17:02:07 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BADC20820;
 Sat, 21 Sep 2019 17:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569085323;
 bh=D/aj1o5oREexJ28TkCWasuQ4NQ6KQT2BjyhV/jLm9fM=;
 h=From:To:Cc:Subject:Date:From;
 b=ivY7rekAsl0U8vsoflBPsWSU1AXznr2gsFox8O6voDZFTrEqG0Luykrp/A9QRtYT5
 8Buc3vvfAAZ73LPo+E9Lw5T4TsXw11aD8XTNVmqpToqtKWJ04IyUogd6ycasdC/da/
 rFoC2lZZKsA1op+eN2x8QJiJN+Y2IHryOeAZ4Z7U=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 1/8] dt-bindings: timer: Convert Exynos MCT bindings to
 json-schema
Date: Sat, 21 Sep 2019 19:01:45 +0200
Message-Id: <20190921170152.5033-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_100205_833464_0108407D 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Samsung Exynos Soc Multi Core Timer bindings to DT schema format
using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Indent example with four spaces (more readable),
2. Rename nodes in example to timer,
3. Remove mct-map subnode.
---
 .../bindings/timer/samsung,exynos4210-mct.txt |  88 --------------
 .../timer/samsung,exynos4210-mct.yaml         | 113 ++++++++++++++++++
 2 files changed, 113 insertions(+), 88 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
 create mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml

diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
deleted file mode 100644
index 8f78640ad64c..000000000000
--- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
+++ /dev/null
@@ -1,88 +0,0 @@
-Samsung's Multi Core Timer (MCT)
-
-The Samsung's Multi Core Timer (MCT) module includes two main blocks, the
-global timer and CPU local timers. The global timer is a 64-bit free running
-up-counter and can generate 4 interrupts when the counter reaches one of the
-four preset counter values. The CPU local timers are 32-bit free running
-down-counters and generate an interrupt when the counter expires. There is
-one CPU local timer instantiated in MCT for every CPU in the system.
-
-Required properties:
-
-- compatible: should be "samsung,exynos4210-mct".
-  (a) "samsung,exynos4210-mct", for mct compatible with Exynos4210 mct.
-  (b) "samsung,exynos4412-mct", for mct compatible with Exynos4412 mct.
-
-- reg: base address of the mct controller and length of the address space
-  it occupies.
-
-- interrupts: the list of interrupts generated by the controller. The following
-  should be the order of the interrupts specified. The local timer interrupts
-  should be specified after the four global timer interrupts have been
-  specified.
-
-	0: Global Timer Interrupt 0
-	1: Global Timer Interrupt 1
-	2: Global Timer Interrupt 2
-	3: Global Timer Interrupt 3
-	4: Local Timer Interrupt 0
-	5: Local Timer Interrupt 1
-	6: ..
-	7: ..
-	i: Local Timer Interrupt n
-
-  For MCT block that uses a per-processor interrupt for local timers, such
-  as ones compatible with "samsung,exynos4412-mct", only one local timer
-  interrupt might be specified, meaning that all local timers use the same
-  per processor interrupt.
-
-Example 1: In this example, the IP contains two local timers, using separate
-	   interrupts, so two local timer interrupts have been specified,
-	   in addition to four global timer interrupts.
-
-	mct@10050000 {
-		compatible = "samsung,exynos4210-mct";
-		reg = <0x10050000 0x800>;
-		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
-			     <0 42 0>, <0 48 0>;
-	};
-
-Example 2: In this example, the timer interrupts are connected to two separate
-	   interrupt controllers. Hence, an interrupt-map is created to map
-	   the interrupts to the respective interrupt controllers.
-
-	mct@101c0000 {
-		compatible = "samsung,exynos4210-mct";
-		reg = <0x101C0000 0x800>;
-		interrupt-parent = <&mct_map>;
-		interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
-
-		mct_map: mct-map {
-			#interrupt-cells = <1>;
-			#address-cells = <0>;
-			#size-cells = <0>;
-			interrupt-map = <0 &gic 0 57 0>,
-					<1 &gic 0 69 0>,
-					<2 &combiner 12 6>,
-					<3 &combiner 12 7>,
-					<4 &gic 0 42 0>,
-					<5 &gic 0 48 0>;
-		};
-	};
-
-Example 3: In this example, the IP contains four local timers, but using
-	   a per-processor interrupt to handle them. Either all the local
-	   timer interrupts can be specified, with the same interrupt specifier
-	   value or just the first one.
-
-	mct@10050000 {
-		compatible = "samsung,exynos4412-mct";
-		reg = <0x10050000 0x800>;
-
-		/* Both ways are possible in this case. Either: */
-		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
-			     <0 42 0>;
-		/* or: */
-		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
-			     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
-	};
diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
new file mode 100644
index 000000000000..5d6db1ddd7f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/samsung,exynos4210-mct.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC Multi Core Timer (MCT)
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+description: |+
+  The Samsung's Multi Core Timer (MCT) module includes two main blocks, the
+  global timer and CPU local timers. The global timer is a 64-bit free running
+  up-counter and can generate 4 interrupts when the counter reaches one of the
+  four preset counter values. The CPU local timers are 32-bit free running
+  down-counters and generate an interrupt when the counter expires. There is
+  one CPU local timer instantiated in MCT for every CPU in the system.
+
+properties:
+  compatible:
+    enum:
+      - samsung,exynos4210-mct
+      - samsung,exynos4412-mct
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: |
+      Interrupts should be put in specific order. This is, the local timer
+      interrupts should be specified after the four global timer interrupts
+      have been specified:
+      0: Global Timer Interrupt 0
+      1: Global Timer Interrupt 1
+      2: Global Timer Interrupt 2
+      3: Global Timer Interrupt 3
+      4: Local Timer Interrupt 0
+      5: Local Timer Interrupt 1
+      6: ..
+      7: ..
+      i: Local Timer Interrupt n
+      For MCT block that uses a per-processor interrupt for local timers, such
+      as ones compatible with "samsung,exynos4412-mct", only one local timer
+      interrupt might be specified, meaning that all local timers use the same
+      per processor interrupt.
+    minItems: 5               # 4 Global + 1 local
+    maxItems: 20              # 4 Global + 16 local
+
+required:
+  - compatible
+  - interrupts
+  - reg
+
+examples:
+  - |
+    // In this example, the IP contains two local timers, using separate
+    // interrupts, so two local timer interrupts have been specified,
+    // in addition to four global timer interrupts.
+
+    timer@10050000 {
+        compatible = "samsung,exynos4210-mct";
+        reg = <0x10050000 0x800>;
+        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
+                     <0 42 0>, <0 48 0>;
+    };
+
+  - |
+    // In this example, the timer interrupts are connected to two separate
+    // interrupt controllers. Hence, an interrupt-map is created to map
+    // the interrupts to the respective interrupt controllers.
+
+    mct: timer@101c0000 {
+        compatible = "samsung,exynos4210-mct";
+        reg = <0x101C0000 0x800>;
+        #address-cells = <0>;
+        #size-cells = <0>;
+        #interrupt-cells = <1>;
+        interrupt-parent = <&mct>;
+        interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
+        interrupt-map = <0 &gic 0 57 0>,
+                        <1 &gic 0 69 0>,
+                        <2 &combiner 12 6>,
+                        <3 &combiner 12 7>,
+                        <4 &gic 0 42 0>,
+                        <5 &gic 0 48 0>;
+    };
+
+  - |
+    // In this example, the IP contains four local timers, but using
+    // a per-processor interrupt to handle them. Only one first local
+    // interrupt is specified.
+
+    timer@10050000 {
+        compatible = "samsung,exynos4412-mct";
+        reg = <0x10050000 0x800>;
+
+        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
+                     <0 42 0>;
+    };
+
+  - |
+    // In this example, the IP contains four local timers, but using
+    // a per-processor interrupt to handle them. All the local timer
+    // interrupts are specified.
+
+    timer@10050000 {
+        compatible = "samsung,exynos4412-mct";
+        reg = <0x10050000 0x800>;
+
+        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
+                     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
