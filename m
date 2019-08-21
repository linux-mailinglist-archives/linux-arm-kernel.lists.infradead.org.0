Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091AF974AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hv18g1bMzAmPkLWn47cTqcc8uTRjYXi/vG49Npjy1sI=; b=TcvV6PkJFVJBcK
	rKrHSB6njGbV+aeJ+x8WPBwffVB1yRPJwgAKMu2a2JBrIBZo0779h8irTteemsfblUtz2kN9pRn/B
	1rUOecK2YdNii3I+029wceBHZ1a4VUNhSw8bi7KM2w8ldU2JUpEleB8IKUSBxsgJkJODoetYa7I6r
	5RN07v6Woaxm+7B/Kt0wwBpQpj9pOBQjnrtZk71PlQFbZ3V84STJ966dV18IvL3m+EAMOaSmL/odm
	sQbJMHJbCEvH2B7CMiFxl1Iva++4mJxn+C88aOED5EjXUeAd1+i9Jvd1NH+PbwWE8tcUHvd9MTglk
	C+JvVjDZ42CBJpXRluTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LtT-0002l0-3Q; Wed, 21 Aug 2019 08:22:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LsI-00025x-Qe
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:21:49 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FCE72332A;
 Wed, 21 Aug 2019 08:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566375706;
 bh=s6khMTMNTud2ZUJcSd/QD0CjoKrkbB6sXe6+ENqMLpQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NYQThxDg3Xw5qjeOKJ99D5Y7m/pLFASeQyI4wOaAm/7U5FGVRbdm2vhKvIJZfbcoq
 YkAvBDljPrTv+cK1bBBNoOhrkm9CrNATLoacKnVVvGB3Gep+2Nkvb1FHCadRzVVupc
 PQILgKVL9i30Qz3Di3+BSziqHtg9GUZdlxcyKpxs=
From: Maxime Ripard <mripard@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, tglx@linutronix.de,
 jason@lakedaemon.net, maz@kernel.org
Subject: [PATCH v2 2/2] dt-bindings: irq: Convert Allwinner NMI Controller to
 a schema
Date: Wed, 21 Aug 2019 10:21:38 +0200
Message-Id: <20190821082138.11049-2-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190821082138.11049-1-mripard@kernel.org>
References: <20190821082138.11049-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_012147_926587_0DDBE490 
X-CRM114-Status: GOOD (  17.09  )
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

The Allwinner SoCs have an interrupt controller called NMI supported in
Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Remove the custom select and rely on the deprecated property instead
---
 .../allwinner,sun7i-a20-sc-nmi.yaml           | 70 +++++++++++++++++++
 .../allwinner,sunxi-nmi.txt                   | 29 --------
 2 files changed, 70 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
new file mode 100644
index 000000000000..0eccf5551786
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
@@ -0,0 +1,70 @@
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
+      - const: allwinner,sun6i-a31-sc-nmi
+        deprecated: true
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
