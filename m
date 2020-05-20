Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446181DB417
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5we2sF6+RQbc7clDchv3dQuzz4MBpF/VomgHinzgKbA=; b=X+3/zLWBVSJjcx
	KAFt8xGhmrByFH0LAbic1ARM0FFpm7W4/35O0QCPNuVAKVB/6Q59QggkgncBEtCSsPG6b3XghrsIG
	7+OB/FMk10ifzKJHDOHd6Pm7MxSipwB7zVpYZj5VJUq79pS7Fgi8+VC1EttuEg3s4RcjIGZnlq1Jm
	aAzdoZtXeXdjRFAYywmHJHlY7GsefBLpCmAQa9t+fQo6ew2HGEZMXPwzu0uMX3km2Tmit9GE6Fd/r
	tElVGX0EVPVizh7Sn0wg5cVUymDEr5GqnODIADcERq7Ggz4o4LDVZQGw+v9tUbNJZqy8v2jTBVCvP
	mUDtOdf1QnAIfWKEmFlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbO8v-0007bn-5m; Wed, 20 May 2020 12:48:17 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO6O-0005nZ-IY
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:45:47 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KCjVoa068017;
 Wed, 20 May 2020 07:45:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589978731;
 bh=OJjZlenc9f+XNpHnqm+7s/gCZwArilu4LTplk/QK3x4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=dW3fpylJC7y7jNGkMiR/Zfp0ayHbCvHfwPaSI4SDIL7WScLrjOTglnoNx0+M/ZHb9
 mW7M8Hv3MIwesr9gXCkYro75wvSFjqh//zN+yHuP9bw/oia1mAM92TGvcMcC+GfuVA
 qmk4mNgFdkRRVG3q1EUwri1UuBvU1zAvKkD/qFTM=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04KCjV9J001605
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 07:45:31 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:45:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:45:31 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCiuvS026764;
 Wed, 20 May 2020 07:45:28 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 08/12] dt-bindings: irqchip: Convert ti,
 sci-inta bindings to yaml
Date: Wed, 20 May 2020 18:14:50 +0530
Message-ID: <20200520124454.10532-9-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520124454.10532-1-lokeshvutla@ti.com>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054540_764799_61818678 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
ti,sci-inta.txt ti,sci-inta.yaml.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../interrupt-controller/ti,sci-inta.txt      |  66 -----------
 .../interrupt-controller/ti,sci-inta.yaml     | 104 ++++++++++++++++++
 MAINTAINERS                                   |   2 +-
 3 files changed, 105 insertions(+), 67 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
deleted file mode 100644
index b14abec580a2..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
+++ /dev/null
@@ -1,66 +0,0 @@
-Texas Instruments K3 Interrupt Aggregator
-=========================================
-
-The Interrupt Aggregator (INTA) provides a centralized machine
-which handles the termination of system events to that they can
-be coherently processed by the host(s) in the system. A maximum
-of 64 events can be mapped to a single interrupt.
-
-
-                              Interrupt Aggregator
-                     +-----------------------------------------+
-                     |      Intmap            VINT             |
-                     | +--------------+  +------------+        |
-            m ------>| | vint  | bit  |  | 0 |.....|63| vint0  |
-               .     | +--------------+  +------------+        |       +------+
-               .     |         .               .               |       | HOST |
-Globalevents  ------>|         .               .               |------>| IRQ  |
-               .     |         .               .               |       | CTRL |
-               .     |         .               .               |       +------+
-            n ------>| +--------------+  +------------+        |
-                     | | vint  | bit  |  | 0 |.....|63| vintx  |
-                     | +--------------+  +------------+        |
-                     |                                         |
-                     +-----------------------------------------+
-
-Configuration of these Intmap registers that maps global events to vint is done
-by a system controller (like the Device Memory and Security Controller on K3
-AM654 SoC). Driver should request the system controller to get the range
-of global events and vints assigned to the requesting host. Management
-of these requested resources should be handled by driver and requests
-system controller to map specific global event to vint, bit pair.
-
-Communication between the host processor running an OS and the system
-controller happens through a protocol called TI System Control Interface
-(TISCI protocol). For more details refer:
-Documentation/devicetree/bindings/arm/keystone/ti,sci.txt
-
-TISCI Interrupt Aggregator Node:
--------------------------------
-- compatible:		Must be "ti,sci-inta".
-- reg:			Should contain registers location and length.
-- interrupt-controller:	Identifies the node as an interrupt controller
-- msi-controller:	Identifies the node as an MSI controller.
-- interrupt-parent:	phandle of irq parent.
-- ti,sci:		Phandle to TI-SCI compatible System controller node.
-- ti,sci-dev-id:	TISCI device id of interrupt controller.
-- ti,interrupt-ranges:	Set of triplets containing ranges that convert
-			the INTA output interrupt numbers to parent's
-			interrupt number. Each triplet has following entries:
-			- First entry specifies the base for vint
-			- Second entry specifies the base for parent irqs
-			- Third entry specifies the limit
-
-
-Example:
---------
-main_udmass_inta: interrupt-controller@33d00000 {
-	compatible = "ti,sci-inta";
-	reg = <0x0 0x33d00000 0x0 0x100000>;
-	interrupt-controller;
-	msi-controller;
-	interrupt-parent = <&main_navss_intr>;
-	ti,sci = <&dmsc>;
-	ti,sci-dev-id = <179>;
-	interrupt-ranges = <0 0 256>;
-};
diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.yaml
new file mode 100644
index 000000000000..5e6cb76da45b
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/ti,sci-inta.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments K3 Interrupt Aggregator
+
+maintainers:
+  - Lokesh Vutla <lokeshvutla@ti.com>
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+description: |
+  The Interrupt Aggregator (INTA) provides a centralized machine
+  which handles the termination of system events to that they can
+  be coherently processed by the host(s) in the system. A maximum
+  of 64 events can be mapped to a single interrupt.
+
+                                Interrupt Aggregator
+                       +-----------------------------------------+
+                       |      Intmap            VINT             |
+                       | +--------------+  +------------+        |
+              m ------>| | vint  | bit  |  | 0 |.....|63| vint0  |
+                 .     | +--------------+  +------------+        |      +------+
+                 .     |         .               .               |      | HOST |
+  Globalevents  ------>|         .               .               |----->| IRQ  |
+                 .     |         .               .               |      | CTRL |
+                 .     |         .               .               |      +------+
+              n ------>| +--------------+  +------------+        |
+                       | | vint  | bit  |  | 0 |.....|63| vintx  |
+                       | +--------------+  +------------+        |
+                       |                                         |
+                       +-----------------------------------------+
+
+  Configuration of these Intmap registers that maps global events to vint is
+  done by a system controller (like the Device Memory and Security Controller
+  on AM654 SoC). Driver should request the system controller to get the range
+  of global events and vints assigned to the requesting host. Management
+  of these requested resources should be handled by driver and requests
+  system controller to map specific global event to vint, bit pair.
+
+  Communication between the host processor running an OS and the system
+  controller happens through a protocol called TI System Control Interface
+  (TISCI protocol).
+
+properties:
+  compatible:
+    const: ti,sci-inta
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  msi-controller: true
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
+                "output_irq" specifies the base for inta output irq
+            - description: |
+                "parent's input irq" specifies the base for parent irq
+            - description: |
+                "limit" specifies the limit for translation
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - msi-controller
+  - ti,sci
+  - ti,sci-dev-id
+  - ti,interrupt-ranges
+
+examples:
+  - |
+    main_udmass_inta: interrupt-controller@33d00000 {
+            compatible = "ti,sci-inta";
+            reg = <0x0 0x33d00000 0x0 0x100000>;
+            interrupt-controller;
+            msi-controller;
+            interrupt-parent = <&main_navss_intr>;
+            ti,sci = <&dmsc>;
+            ti,sci-dev-id = <179>;
+            ti,interrupt-ranges = <0 0 256>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 56f69be90346..c0d65d1bc31f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16651,7 +16651,7 @@ L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/keystone/ti,sci.txt
 F:	Documentation/devicetree/bindings/clock/ti,sci-clk.txt
-F:	Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
+F:	Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
 F:	Documentation/devicetree/bindings/reset/ti,sci-reset.txt
 F:	Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
