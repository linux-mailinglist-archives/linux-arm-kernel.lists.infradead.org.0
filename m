Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC8B7192A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJzZBPrBabRhIqiXp0slkiUdO+ZBtCsxcy1gAjDVFCY=; b=rYkeGzYPpO2u+F
	Iblgy9rO+cJV19LsqlVEOUIdOgy7kjwmrLJiZzqw3GktqRgxjQWDuBnmGpyo5S3zCVfmMi4ba4baE
	9Fm1TJRyi9gvjPlYIv4iMCsZBRGBvsredf9y1C0EdMHc5B2U2z9KhYe8HjWrSiPsWPqiX4Ao8OJHD
	edjRfY6Le+wwbb63+J2XyGkexRjgQmiANc2l6HiX5VKRUbQI+3xsw/XLltET/XCqVTWh/KqNjW5k0
	BNfHx6rh9WI0t9vAZpEGpwL5BICtamjNMFf0ogssIA+87g0rmmuzB0/FctXtpEDdF6v+BXZbYMr+R
	XOgwH0O3hI9ZePYHe9Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpupF-0006mw-Vj; Tue, 23 Jul 2019 13:27:30 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpup1-0006kY-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:27:18 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 086C860018;
 Tue, 23 Jul 2019 13:27:02 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, tglx@linutronix.de,
 jason@lakedaemon.net, maz@kernel.org
Subject: [PATCH 2/2] dt-bindings: irq: Convert Allwinner NMI Controller to a
 schema
Date: Tue, 23 Jul 2019 15:26:58 +0200
Message-Id: <20190723132658.5068-2-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723132658.5068-1-maxime.ripard@bootlin.com>
References: <20190723132658.5068-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_062716_088135_029AA136 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have an interrupt controller called NMI supported in
Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../allwinner,sun7i-a20-sc-nmi.yaml           | 83 +++++++++++++++++++
 .../allwinner,sunxi-nmi.txt                   | 29 -------
 2 files changed, 83 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
new file mode 100644
index 000000000000..cb8077b0c8dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A20 Non-Maskable Interrupt Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - allwinner,sun6i-a31-r-intc
+          - allwinner,sun7i-a20-sc-nmi
+          - allwinner,sun9i-a80-sc-nmi
+
+          # Deprecated
+          - allwinner,sun6i-a31-sc-nmi
+
+  required:
+    - compatible
+
+properties:
+  "#interrupt-cells":
+    const: 2
+    description:
+      The first cell is the IRQ number, the second cell the trigger
+      type as defined in interrupt.txt in this directory.
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun6i-a31-r-intc
+      - const: allwinner,sun7i-a20-sc-nmi
+      - items:
+        - const: allwinner,sun8i-a83t-r-intc
+        - const: allwinner,sun6i-a31-r-intc
+      - const: allwinner,sun9i-a80-sc-nmi
+      - items:
+        - const: allwinner,sun50i-a64-r-intc
+        - const: allwinner,sun6i-a31-r-intc
+      - items:
+        - const: allwinner,sun50i-h6-r-intc
+        - const: allwinner,sun6i-a31-r-intc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+required:
+  - "#interrupt-cells"
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+    interrupt-controller@1c00030 {
+        compatible = "allwinner,sun7i-a20-sc-nmi";
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        reg = <0x01c00030 0x0c>;
+        interrupt-parent = <&gic>;
+        interrupts = <0 0 4>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
deleted file mode 100644
index 24beadf7ba83..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-Allwinner Sunxi NMI Controller
-==============================
-
-Required properties:
-
-- compatible : should be one of the following:
-  - "allwinner,sun7i-a20-sc-nmi"
-  - "allwinner,sun6i-a31-sc-nmi" (deprecated)
-  - "allwinner,sun6i-a31-r-intc"
-  - "allwinner,sun9i-a80-nmi"
-- reg : Specifies base physical address and size of the registers.
-- interrupt-controller : Identifies the node as an interrupt controller
-- #interrupt-cells : Specifies the number of cells needed to encode an
-  interrupt source. The value shall be 2. The first cell is the IRQ number, the
-  second cell the trigger type as defined in interrupt.txt in this directory.
-- interrupts: Specifies the interrupt line (NMI) which is handled by
-  the interrupt controller in the parent controller's notation. This value
-  shall be the NMI.
-
-Example:
-
-sc-nmi-intc@1c00030 {
-	compatible = "allwinner,sun7i-a20-sc-nmi";
-	interrupt-controller;
-	#interrupt-cells = <2>;
-	reg = <0x01c00030 0x0c>;
-	interrupt-parent = <&gic>;
-	interrupts = <0 0 4>;
-};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
