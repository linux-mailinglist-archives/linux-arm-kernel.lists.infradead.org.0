Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D631DB412
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkY5Br2JiURXVxxW+hURqloii+Vazd6fS3KtCn7Jke0=; b=J5va1aiIn5gGN6
	e3fT++o3Y63IxO8czrAUCa1qCNtLpGYZMOnFH1QwE872woA1PqAIUspPoIVx4UMMxemazpBIbN5R+
	uDzfDHsK9odhEHJcAc34HuZMCuatzSBIKcLhvWcv/fodDEgL9QAhi6UI8haHSCSIHmUsnBqkWnu3b
	7OZ61JRPEpGxwFzzg3BbGDaMkSV6euNC3P6wtWRbk33vgZsq7jWn6YRGBlRl9PcOtkhPOCzdt0STh
	JTsA6TG9V+jPk2UyyizjuA3xBEoGMxg7PDx8SkH4xQna0TxyEsPqvyW1b/s9oOgPArPUQ2sshl30U
	MmQ8wLxwvBF657yRnhcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbO7w-0006lZ-VP; Wed, 20 May 2020 12:47:16 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO6D-0005d3-Mc
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:45:36 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KCjKgh006231;
 Wed, 20 May 2020 07:45:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589978720;
 bh=z9y0mgcu6JM96ZQi82We2CEMTc1z+4uI5pXlMOf4pbQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=wlFQF4mxNLjeP5TY67ggJtcMabsdHUiW3//tZs+GWBdAqyJFNUVIrkYRAqiHXkuAI
 dvkTSDof+b9/+lshjRpJIZsuMLHHg1lHwClRFRE22dpHAFQSHhSFEY8sWVaq3zjlv9
 20s4kZwCae5hRh0ds64LjQQFhQaZodMESoYinoR0=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCjKgb049894;
 Wed, 20 May 2020 07:45:20 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:45:19 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:45:19 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCiuvP026764;
 Wed, 20 May 2020 07:45:16 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 05/12] dt-bindings: irqchip: Convert ti,
 sci-intr bindings to yaml
Date: Wed, 20 May 2020 18:14:47 +0530
Message-ID: <20200520124454.10532-6-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520124454.10532-1-lokeshvutla@ti.com>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054529_832663_516BD158 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to automate the verification of DT nodes convert
ti,sci-intr.txt ti,sci-intr.yaml.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../interrupt-controller/ti,sci-intr.txt      |  83 -------------
 .../interrupt-controller/ti,sci-intr.yaml     | 113 ++++++++++++++++++
 MAINTAINERS                                   |   2 +-
 3 files changed, 114 insertions(+), 84 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
deleted file mode 100644
index 8b56b2de1c73..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
+++ /dev/null
@@ -1,83 +0,0 @@
-Texas Instruments K3 Interrupt Router
-=====================================
-
-The Interrupt Router (INTR) module provides a mechanism to mux M
-interrupt inputs to N interrupt outputs, where all M inputs are selectable
-to be driven per N output. An Interrupt Router can either handle edge triggered
-or level triggered interrupts and that is fixed in hardware.
-
-                                 Interrupt Router
-                             +----------------------+
-                             |  Inputs     Outputs  |
-        +-------+            | +------+    +-----+  |
-        | GPIO  |----------->| | irq0 |    |  0  |  |       Host IRQ
-        +-------+            | +------+    +-----+  |      controller
-                             |    .           .     |      +-------+
-        +-------+            |    .           .     |----->|  IRQ  |
-        | INTA  |----------->|    .           .     |      +-------+
-        +-------+            |    .        +-----+  |
-                             | +------+    |  N  |  |
-                             | | irqM |    +-----+  |
-                             | +------+             |
-                             |                      |
-                             +----------------------+
-
-There is one register per output (MUXCNTL_N) that controls the selection.
-Configuration of these MUXCNTL_N registers is done by a system controller
-(like the Device Memory and Security Controller on K3 AM654 SoC). System
-controller will keep track of the used and unused registers within the Router.
-Driver should request the system controller to get the range of GIC IRQs
-assigned to the requesting hosts. It is the drivers responsibility to keep
-track of Host IRQs.
-
-Communication between the host processor running an OS and the system
-controller happens through a protocol called TI System Control Interface
-(TISCI protocol). For more details refer:
-Documentation/devicetree/bindings/arm/keystone/ti,sci.txt
-
-TISCI Interrupt Router Node:
-----------------------------
-Required Properties:
-- compatible:		Must be "ti,sci-intr".
-- ti,intr-trigger-type:	Should be one of the following:
-			1: If intr supports edge triggered interrupts.
-			4: If intr supports level triggered interrupts.
-- interrupt-controller:	Identifies the node as an interrupt controller
-- #interrupt-cells:	Specifies the number of cells needed to encode an
-			interrupt source. The value should be 1.
-			First cell should contain interrupt router input number
-			as specified by hardware.
-- ti,sci:		Phandle to TI-SCI compatible System controller node.
-- ti,sci-dev-id:	TISCI device id of interrupt controller.
-- ti,interrupt-ranges:	Set of triplets containing ranges that convert
-			the INTR output interrupt numbers to parent's
-			interrupt number. Each triplet has following entries:
-			- First entry specifies the base for intr output irq
-			- Second entry specifies the base for parent irqs
-			- Third entry specifies the limit
-
-For more details on TISCI IRQ resource management refer:
-http://downloads.ti.com/tisci/esd/latest/2_tisci_msgs/rm/rm_irq.html
-
-Example:
---------
-The following example demonstrates both interrupt router node and the consumer
-node(main gpio) on the AM654 SoC:
-
-main_gpio_intr: interrupt-controller0 {
-	compatible = "ti,sci-intr";
-	ti,intr-trigger-type = <1>;
-	interrupt-controller;
-	interrupt-parent = <&gic500>;
-	#interrupt-cells = <1>;
-	ti,sci = <&dmsc>;
-	ti,sci-dev-id = <131>;
-	ti,interrupt-ranges = <0 360 32>;
-};
-
-main_gpio0: gpio@600000 {
-	...
-	interrupt-parent = <&main_gpio_intr>;
-	interrupts = <192>, <193>, <194>, <195>, <196>, <197>;
-	...
-};
diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
new file mode 100644
index 000000000000..fbc1e8631d6f
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/ti,sci-intr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments K3 Interrupt Router
+
+maintainers:
+  - Lokesh Vutla <lokeshvutla@ti.com>
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+description: |
+  The Interrupt Router (INTR) module provides a mechanism to mux M
+  interrupt inputs to N interrupt outputs, where all M inputs are selectable
+  to be driven per N output. An Interrupt Router can either handle edge
+  triggered or level triggered interrupts and that is fixed in hardware.
+
+                                   Interrupt Router
+                               +----------------------+
+                               |  Inputs     Outputs  |
+          +-------+            | +------+    +-----+  |
+          | GPIO  |----------->| | irq0 |    |  0  |  |       Host IRQ
+          +-------+            | +------+    +-----+  |      controller
+                               |    .           .     |      +-------+
+          +-------+            |    .           .     |----->|  IRQ  |
+          | INTA  |----------->|    .           .     |      +-------+
+          +-------+            |    .        +-----+  |
+                               | +------+    |  N  |  |
+                               | | irqM |    +-----+  |
+                               | +------+             |
+                               |                      |
+                               +----------------------+
+
+  There is one register per output (MUXCNTL_N) that controls the selection.
+  Configuration of these MUXCNTL_N registers is done by a system controller
+  (like the Device Memory and Security Controller on K3 AM654 SoC). System
+  controller will keep track of the used and unused registers within the Router.
+  Driver should request the system controller to get the range of GIC IRQs
+  assigned to the requesting hosts. It is the drivers responsibility to keep
+  track of Host IRQs.
+
+  Communication between the host processor running an OS and the system
+  controller happens through a protocol called TI System Control Interface
+  (TISCI protocol).
+
+properties:
+  compatible:
+    const: ti,sci-intr
+
+  ti,intr-trigger-type:
+    description: |
+      Should be one of the following.
+        1 = If intr supports edge triggered interrupts.
+        4 = If intr supports level triggered interrupts.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 1
+    description: |
+      The 1st cell should contain interrupt router input hw number.
+
+  ti,sci:
+    description: phandle to TI-SCI compatible System controller node
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/phandle
+
+  ti,sci-dev-id:
+    description: TI-SCI device id of Interrupt Controller
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+
+  ti,interrupt-ranges:
+    description: |
+      Interrupt ranges that converts the INTR output hw irq numbers
+      to parents's input interrupt numbers.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-matrix
+      - items:
+          items:
+            - description: |
+                "output_irq" specifies the base for intr output irq
+            - description: |
+                "parent's input irq" specifies the base for parent irq
+            - description: |
+                "limit" specifies the limit for translation
+
+required:
+  - compatible
+  - ti,intr-trigger-type
+  - interrupt-controller
+  - '#interrupt-cells'
+  - ti,sci
+  - ti,sci-dev-id
+  - ti,interrupt-ranges
+
+examples:
+  - |
+    main_gpio_intr: interrupt-controller0 {
+        compatible = "ti,sci-intr";
+        ti,intr-trigger-type = <1>;
+        interrupt-controller;
+        interrupt-parent = <&gic500>;
+        #interrupt-cells = <1>;
+        ti,sci = <&dmsc>;
+        ti,sci-dev-id = <131>;
+        ti,interrupt-ranges = <0 360 32>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 7b58ca29cc80..56f69be90346 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16652,7 +16652,7 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/arm/keystone/ti,sci.txt
 F:	Documentation/devicetree/bindings/clock/ti,sci-clk.txt
 F:	Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
-F:	Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
+F:	Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
 F:	Documentation/devicetree/bindings/reset/ti,sci-reset.txt
 F:	Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
 F:	drivers/clk/keystone/sci-clk.c
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
