Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C2B1C08E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k5jaB9w1IOAEPfM1ri9Enbt4idmNYp2EN2uO54sfSbY=; b=h6ODXnXZJountgPlN85UWvlHvW
	H3TdNCXhCuljurUJz1lqzdkITKbpclulvaeePt96tGYybyGRxTt895LBg2UpvidtIvutgQanHbXZs
	hu2soT+9eYIYJJAVVCxXbrP82w/7nCwBTXLdLmuyOyENyBbmAfOdBPXhVVWth3XCEJo+50fVupaVl
	NUYaArblSvyfJJB7gcdz2bdKpL35C+FVuNb4r6RVKPwRV6FPqWf5FWrZLa91DxQMxMLvrhZXDpcVq
	SGMZ1lmDpoVq8t47t2htHgCYo9s2ZHaR3VyriAjnoruiMCCtH0q1B6Td1igsIisB+LMRnEt2+tCH7
	UtgjEM+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGU2-0004zf-Bt; Thu, 30 Apr 2020 21:12:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGSe-00042A-HJ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:11:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA020101E;
 Thu, 30 Apr 2020 14:11:08 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB5323F68F;
 Thu, 30 Apr 2020 14:11:07 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 2/8] dt-bindings: sata: Convert Calxeda SATA controller to
 json-schema
Date: Thu, 30 Apr 2020 22:10:48 +0100
Message-Id: <20200430211054.30466-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430211054.30466-1-andre.przywara@arm.com>
References: <20200430211054.30466-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141112_666250_8822C2F2 
X-CRM114-Status: GOOD (  14.27  )
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
Cc: Maxime Ripard <mripard@kernel.org>, Jens Axboe <axboe@kernel.dk>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Calxeda Highbank SATA controller binding to DT schema format
using json-schema.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Cc: Jens Axboe <axboe@kernel.dk>
---
 .../devicetree/bindings/ata/sata_highbank.txt | 44 ---------
 .../bindings/ata/sata_highbank.yaml           | 95 +++++++++++++++++++
 2 files changed, 95 insertions(+), 44 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ata/sata_highbank.txt
 create mode 100644 Documentation/devicetree/bindings/ata/sata_highbank.yaml

diff --git a/Documentation/devicetree/bindings/ata/sata_highbank.txt b/Documentation/devicetree/bindings/ata/sata_highbank.txt
deleted file mode 100644
index aa83407cb7a4..000000000000
--- a/Documentation/devicetree/bindings/ata/sata_highbank.txt
+++ /dev/null
@@ -1,44 +0,0 @@
-* Calxeda AHCI SATA Controller
-
-SATA nodes are defined to describe on-chip Serial ATA controllers.
-The Calxeda SATA controller mostly conforms to the AHCI interface
-with some special extensions to add functionality.
-Each SATA controller should have its own node.
-
-Required properties:
-- compatible        : compatible list, contains "calxeda,hb-ahci"
-- interrupts        : <interrupt mapping for SATA IRQ>
-- reg               : <registers mapping>
-
-Optional properties:
-- dma-coherent      : Present if dma operations are coherent
-- calxeda,port-phys : phandle-combophy and lane assignment, which maps each
-			SATA port to a combophy and a lane within that
-			combophy
-- calxeda,sgpio-gpio: phandle-gpio bank, bit offset, and default on or off,
-			which indicates that the driver supports SGPIO
-			indicator lights using the indicated GPIOs
-- calxeda,led-order : a u32 array that map port numbers to offsets within the
-			SGPIO bitstream.
-- calxeda,tx-atten  : a u32 array that contains TX attenuation override
-			codes, one per port. The upper 3 bytes are always
-			0 and thus ignored.
-- calxeda,pre-clocks : a u32 that indicates the number of additional clock
-			cycles to transmit before sending an SGPIO pattern
-- calxeda,post-clocks: a u32 that indicates the number of additional clock
-			cycles to transmit after sending an SGPIO pattern
-
-Example:
-        sata@ffe08000 {
-		compatible = "calxeda,hb-ahci";
-		reg = <0xffe08000 0x1000>;
-		interrupts = <115>;
-		dma-coherent;
-		calxeda,port-phys = <&combophy5 0 &combophy0 0 &combophy0 1
-					&combophy0 2 &combophy0 3>;
-		calxeda,sgpio-gpio =<&gpioh 5 1 &gpioh 6 1 &gpioh 7 1>;
-		calxeda,led-order = <4 0 1 2 3>;
-		calxeda,tx-atten = <0xff 22 0xff 0xff 23>;
-		calxeda,pre-clocks = <10>;
-		calxeda,post-clocks = <0>;
-        };
diff --git a/Documentation/devicetree/bindings/ata/sata_highbank.yaml b/Documentation/devicetree/bindings/ata/sata_highbank.yaml
new file mode 100644
index 000000000000..b195457006cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/sata_highbank.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/sata_highbank.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Calxeda AHCI SATA Controller
+
+description: |
+  The Calxeda SATA controller mostly conforms to the AHCI interface
+  with some special extensions to add functionality, to map GPIOs for
+  activity LEDs and for mapping the ComboPHYs.
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+properties:
+  compatible:
+    const: calxeda,hb-ahci
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  dma-coherent: true
+
+  calxeda,pre-clocks:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Indicates the number of additional clock cycles to transmit before
+      sending an SGPIO pattern.
+
+  calxeda,post-clocks:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Indicates the number of additional clock cycles to transmit after
+      sending an SGPIO pattern.
+
+  calxeda,led-order:
+    description: Maps port numbers to offsets within the SGPIO bitstream.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-array
+      - minItems: 1
+        maxItems: 8
+
+  calxeda,port-phys:
+    description: |
+      phandle-combophy and lane assignment, which maps each SATA port to a
+      combophy and a lane within that combophy
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/phandle-array
+      - minItems: 1
+        maxItems: 8
+
+  calxeda,tx-atten:
+    description: |
+      Contains TX attenuation override codes, one per port.
+      The upper 24 bits of each entry are always 0 and thus ignored.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-array
+      - minItems: 1
+        maxItems: 8
+
+  calxeda,sgpio-gpio:
+    description: |
+      phandle-gpio bank, bit offset, and default on or off, which indicates
+      that the driver supports SGPIO indicator lights using the indicated
+      GPIOs.
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
+    sata@ffe08000 {
+        compatible = "calxeda,hb-ahci";
+        reg = <0xffe08000 0x1000>;
+        interrupts = <115>;
+        dma-coherent;
+        calxeda,port-phys = <&combophy5 0>, <&combophy0 0>, <&combophy0 1>,
+                             <&combophy0 2>, <&combophy0 3>;
+        calxeda,sgpio-gpio =<&gpioh 5 1>, <&gpioh 6 1>, <&gpioh 7 1>;
+        calxeda,led-order = <4 0 1 2 3>;
+        calxeda,tx-atten = <0xff 22 0xff 0xff 23>;
+        calxeda,pre-clocks = <10>;
+        calxeda,post-clocks = <0>;
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
