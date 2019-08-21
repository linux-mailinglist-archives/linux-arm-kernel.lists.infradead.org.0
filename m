Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C209974A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vfc7A/XGLt6j/ncxer1gStiutf9ufOKaqkksPmxTGXA=; b=s9oupgGg39kAcO
	1cr2iEXD3iZWrMENx1Pz1JH2LRG3vJSusRTY7tExoAZN/TzRIvSMVseZkhAzSCzYDP+JvreiA5oLj
	zulwOda0zEyowcl8YoUhoBYtMhnZuCbpnVqWZRUjkjXHraA6/24WFdrVo3NNHjJAGSidTY8GLaTR0
	uinMtLTzJnYijuoEDI+Wusf0WQC0VkEWyDZZzOjoRhJg2fMEGTDeQDNor2sG8ueXMO+jPrCRTfkvd
	32yTSy5jVO+5Gt/yndOoUW0BJYpAKVnrDmcdGObtJzFyc5K3wD6mtXJi3n+oI/3ejv/iLQDN46kdM
	tZ9EjijmXaK2Fdz0NOIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LtB-0002SB-8Y; Wed, 21 Aug 2019 08:22:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LsG-00023J-9s
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:21:46 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A3792339E;
 Wed, 21 Aug 2019 08:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566375703;
 bh=LOhB69dIe9oA37I5L0XwPEM++IcwFc8nRsjX+Z8kArU=;
 h=From:To:Cc:Subject:Date:From;
 b=ey17y3EjS1WfjQAWDsfcI3Me8Xh6HMT8RdCQMA9v3OEs7BcGAbQkitY0xEY6dB4Mz
 L2Dmoi7/e+euFQXzK3MlEBJH9PCl4yXXK4GEd2L+H84JgES4fi7cxCNSLrlLXNBa23
 PkxyS4/1OUHILOrrDrQWBhA7jO0eRfvAFCZLQMWA=
From: Maxime Ripard <mripard@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, tglx@linutronix.de,
 jason@lakedaemon.net, maz@kernel.org
Subject: [PATCH v2 1/2] dt-bindings: irq: Convert Allwinner IRQ Controller to
 a schema
Date: Wed, 21 Aug 2019 10:21:37 +0200
Message-Id: <20190821082138.11049-1-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_012144_574573_71B8AB06 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner SoCs have an interrupt controller supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Remove Fixme and add additionalProperties to false
  - Add unit address for the example
---
 .../allwinner,sun4i-a10-ic.yaml               | 47 +++++++++++++++++++
 .../allwinner,sun4i-ic.txt                    | 20 --------
 2 files changed, 47 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
new file mode 100644
index 000000000000..23a202d24e43
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun4i-a10-ic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Interrupt Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  "#interrupt-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-ic
+      - allwinner,suniv-f1c100s-ic
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+required:
+  - "#interrupt-cells"
+  - compatible
+  - reg
+  - interrupt-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    intc: interrupt-controller@1c20400 {
+        compatible = "allwinner,sun4i-a10-ic";
+        reg = <0x01c20400 0x400>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
deleted file mode 100644
index 404352524c3a..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Allwinner Sunxi Interrupt Controller
-
-Required properties:
-
-- compatible : should be one of the following:
-              "allwinner,sun4i-a10-ic"
-              "allwinner,suniv-f1c100s-ic"
-- reg : Specifies base physical address and size of the registers.
-- interrupt-controller : Identifies the node as an interrupt controller
-- #interrupt-cells : Specifies the number of cells needed to encode an
-  interrupt source. The value shall be 1.
-
-Example:
-
-intc: interrupt-controller {
-	compatible = "allwinner,sun4i-a10-ic";
-	reg = <0x01c20400 0x400>;
-	interrupt-controller;
-	#interrupt-cells = <1>;
-};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
