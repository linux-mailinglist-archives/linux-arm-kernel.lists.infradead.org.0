Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095BA7192C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CQQbKzA+1eO7HusT0H+ywfC/zKGIbWb7hmw1fxE+NOg=; b=P7wdSZ3XFJ6Bxa
	wwA0+5vOWQ6Y3NG/2n/0cypI60iGZrR+Hsl6Hfss0Z9GwCIAfeESjiGTXKPu9iVWO9DUmzxuL4L+B
	kIuTspE1uBugIJcHxbtYHjnteWCKXm1qMNcP+81irWVlvG6dH59zo84iJKSOW/3y3VgKc64MWSHTk
	A0Vz2gDpluvSJvEqrREnjAkVVE5PBuFTwC09XBavmRoQ7vuZp0Mpid/kiguVX60Gw5qOzc8DaOQUd
	xz02qMG5GYP6qru1uU5fVAi3bdXUL7jeSrUnE6SV1McqEO6BD9fv82cDAh7bW9OUXNA2Of5M8sp+F
	jq4m81v/OYv744Y4EJJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpupn-0007LB-Jb; Tue, 23 Jul 2019 13:28:03 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpupZ-0007Ha-Ht
 for linux-arm-kernel@bombadil.infradead.org; Tue, 23 Jul 2019 13:27:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q/yopVwfghW6pELuUritfUtaJSdvPtm67O2SUIjPLoY=; b=e9OIbqIZ9f3Rtbv/MsP+6tWbqL
 vKoXUIZHZj7JkN6AQ5PKUp6CC7N+UIChYaSVNzP6jqzzl0fulPcmfMqkwhte7w0BiibvsDd1u18LZ
 6MjP2+hNpzHCEvUkRc3JGEVsCH3ZccX2BZWbvrWpXH2lQiukWIenZvwyGv1Oc+TnxvRtBv9yDYOJF
 pwvHVIM/sTHPnJQJVIoi6eHZJlfUKOd5okBvDAqkw71KHEA84EEEhOJHeIKDX1K8GT/D1vyQLOS5+
 ZC8cHDrXSTPhqURtNwh3bP/UjVSaBQKup/+7oTAR29Ulx2a0FycEb0Bnj4Eu0WXbCt9/oyuRBUDpF
 aOVBCKoQ==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpupW-0008Ab-18
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:27:47 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1F503240011;
 Tue, 23 Jul 2019 13:26:59 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, tglx@linutronix.de,
 jason@lakedaemon.net, maz@kernel.org
Subject: [PATCH 1/2] dt-bindings: irq: Convert Allwinner IRQ Controller to a
 schema
Date: Tue, 23 Jul 2019 15:26:57 +0200
Message-Id: <20190723132658.5068-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have an interrupt controller supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../allwinner,sun4i-a10-ic.yaml               | 49 +++++++++++++++++++
 .../allwinner,sun4i-ic.txt                    | 20 --------
 2 files changed, 49 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
new file mode 100644
index 000000000000..806cf4770f75
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
@@ -0,0 +1,49 @@
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
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+    intc: interrupt-controller {
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
