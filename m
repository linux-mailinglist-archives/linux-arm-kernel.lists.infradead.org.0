Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043391C08F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6b8lc/52VOOHdIdO/lrYajtTO2OQXpUtmYVFm1wCwBo=; b=GIYXBrCzWdVmmZUBga9Vk8USIE
	BxU4IftRmaDVTI553FgUGG3cOlOBIj3Ch0pskH+w55t9pZdB8go2KCIzJR9XKcr6Ih94HnGxGb+Gi
	Ytgb8yniJLRKNEWOln8BqqYtg8KP0Qk0KVWt/HaUuE9lVwscn242dxBpE/MeWWCghTAVHSUh6NV1/
	oEMI+662vrVqcUAEq44w+L9A86rJ4IrYv2O3PNfPzLdYcwglEolpFkeIV2hBJbvzV0eBcNMZbGqeG
	BnCHs9lXOYiUq4NoUrHSH8IDYv5DKRUIVtvsvo8D4m8STiIUKvn4wYtM5r7kA4MsvrS+nhh5XS9Jn
	hn/RFCQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGUt-0005lk-Dl; Thu, 30 Apr 2020 21:13:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGSg-00043y-24
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:11:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 436821045;
 Thu, 30 Apr 2020 14:11:13 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E3CB3F68F;
 Thu, 30 Apr 2020 14:11:12 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 6/8] dt-bindings: memory-controllers: Convert Calxeda DDR
 to json-schema
Date: Thu, 30 Apr 2020 22:10:52 +0100
Message-Id: <20200430211054.30466-7-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430211054.30466-1-andre.przywara@arm.com>
References: <20200430211054.30466-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141114_157788_23AD3E8E 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Calxeda DDR memory controller binding to DT schema format
using json-schema.
Although this technically covers the whole DRAM controller, the
intention to use it only for error reporting and mapping fault addresses
to DRAM chips.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../memory-controllers/calxeda-ddr-ctrlr.txt  | 16 -------
 .../memory-controllers/calxeda-ddr-ctrlr.yaml | 42 +++++++++++++++++++
 2 files changed, 42 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
deleted file mode 100644
index 049675944b78..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Calxeda DDR memory controller
-
-Properties:
-- compatible : Should be:
-  - "calxeda,hb-ddr-ctrl" for ECX-1000
-  - "calxeda,ecx-2000-ddr-ctrl" for ECX-2000
-- reg : Address and size for DDR controller registers.
-- interrupts : Interrupt for DDR controller.
-
-Example:
-
-	memory-controller@fff00000 {
-		compatible = "calxeda,hb-ddr-ctrl";
-		reg = <0xfff00000 0x1000>;
-		interrupts = <0 91 4>;
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml
new file mode 100644
index 000000000000..96d563fd61f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/calxeda-ddr-ctrlr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Calxeda DDR memory controller binding
+
+description: |
+  The Calxeda DDR memory controller is initialised and programmed by the
+  firmware, but an OS might want to read its registers for error reporting
+  purposes and to learn about the DRAM topology.
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+properties:
+  compatible:
+    enum:
+      - calxeda,hb-ddr-ctrl
+      - calxeda,ecx-2000-ddr-ctrl
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    memory-controller@fff00000 {
+        compatible = "calxeda,hb-ddr-ctrl";
+        reg = <0xfff00000 0x1000>;
+        interrupts = <0 91 4>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
