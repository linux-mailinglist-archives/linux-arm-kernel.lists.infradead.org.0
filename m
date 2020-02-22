Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACD3168CDA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 07:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wA8JA3YChGOEBwI6v8adGO2MRNvwlO9WoEQRYQxJkzg=; b=hx+
	L+sphnAWD4DKt2NkRs8vzqnSeMsoyDTDyEE3WIHejxObatp8Z7MEmg2M5tqqNszFYYjwnvM0EqfQG
	HHM/CDJTsx+E/Rj3Be/RfgURAWL4p0NCKQFAoPDSPDIk2pz7MlJK3iFa5Wnm7eEB9j8+8V92XXWsi
	Orl0y/fJE9Itm9fKZI0EqJHJnB1hYkh2Qqo0NNGMYEG4TU1qBrBEqOevAXOFm/Pz7RpSQab7M6+qL
	I1s2UTc42g8X4JvThRN3u3fTnd758y/tOXkkyzST2i/JdPcCQ4cvMeYCZRDNDloB1VbFavHe7Pg6c
	BZ6QVHqQOlDZm8ECTmAomimBKYQRUrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5O1D-0005LU-EV; Sat, 22 Feb 2020 06:12:03 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5O12-0005L5-Jf
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 06:11:56 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 01M6BBda022333;
 Sat, 22 Feb 2020 15:11:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 01M6BBda022333
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582351872;
 bh=ofaX97ywZVys/DBQiZa8Q89J0Zb7XR2aWwApmyQRzaU=;
 h=From:To:Cc:Subject:Date:From;
 b=e/Mhl4l/T02aWHh+dQ9/WCfuIvt8F4G7Pu7xo5VZc4QaFR7ca8fOw4VkUpM5NmVMB
 eI6YAzqJ06Wa+QMN1fSr0U9H6TV9G/hF5yQzyK+rlvDYYPgEvVT0S2TyEYoIrGbTDC
 EyUL4zOEIeMfq5zeDDTNz6MzmnnIGNb3PmQOP5o71gMvl5SsPJlXJ8dexQqlH9s6yH
 jLrQE9V324UMJ+pdLhsYG794Mb+aKKk0rxUeTq6cwuwjNeRf9R/8EiUKIrvzn+Qqdl
 jJZRvmuUsd3J2OwSmsrxl+YEojBYSgbNac20sXykTJYpfVZHE9/mczcEV8DsmkOAuX
 FwMCUqm0u419A==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2] dt-bindings: bus: Convert UniPhier System Bus to
 json-schema
Date: Sat, 22 Feb 2020 15:11:09 +0900
Message-Id: <20200222061109.2021-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_221152_872074_FF5193C6 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier System Bus controller binding to DT schema format.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
  - Fix the build error in the example

 .../bus/socionext,uniphier-system-bus.yaml    | 96 +++++++++++++++++++
 .../bindings/bus/uniphier-system-bus.txt      | 66 -------------
 2 files changed, 96 insertions(+), 66 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
 delete mode 100644 Documentation/devicetree/bindings/bus/uniphier-system-bus.txt

diff --git a/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml b/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
new file mode 100644
index 000000000000..ff9600d6de3b
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/socionext,uniphier-system-bus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier System Bus
+
+description: |
+  The UniPhier System Bus is an external bus that connects on-board devices to
+  the UniPhier SoC. It is a simple (semi-)parallel bus with address, data, and
+  some control signals. It supports up to 8 banks (chip selects).
+
+  Before any access to the bus, the bus controller must be configured; the bus
+  controller registers provide the control for the translation from the offset
+  within each bank to the CPU-viewed address. The needed setup includes the
+  base address, the size of each bank. Optionally, some timing parameters can
+  be optimized for faster bus access.
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+properties:
+  compatible:
+    const: socionext,uniphier-system-bus
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    description: |
+      The first cell is the bank number (chip select).
+      The second cell is the address offset within the bank.
+    const: 2
+
+  "#size-cells":
+    const: 1
+
+  ranges:
+    description: |
+      Provide address translation from the System Bus to the parent bus.
+
+      Note:
+      The address region(s) that can be assigned for the System Bus is
+      implementation defined. Some SoCs can use 0x00000000-0x0fffffff and
+      0x40000000-0x4fffffff, while other SoCs only 0x40000000-0x4fffffff.
+      There might be additional limitations depending on SoCs and the boot mode.
+      The address translation is arbitrary as long as the banks are assigned in
+      the supported address space with the required alignment and they do not
+      overlap one another.
+
+      For example, it is possible to map:
+        bank 0 to 0x42000000-0x43ffffff, bank 5 to 0x46000000-0x46ffffff
+      It is also possible to map:
+        bank 0 to 0x48000000-0x49ffffff, bank 5 to 0x44000000-0x44ffffff
+      There is no reason to stick to a particular translation mapping, but the
+      "ranges" property should provide a "reasonable" default that is known to
+      work. The software should initialize the bus controller according to it.
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+examples:
+  - |
+    // In this example,
+    // - the Ethernet device is connected at the offset 0x01f00000 of CS1 and
+    //   mapped to 0x43f00000 of the parent bus.
+    // - the UART device is connected at the offset 0x00200000 of CS5 and
+    //   mapped to 0x46200000 of the parent bus.
+
+    system-bus {
+        compatible = "socionext,uniphier-system-bus";
+        reg = <0x58c00000 0x400>;
+        #address-cells = <2>;
+        #size-cells = <1>;
+        ranges = <1 0x00000000 0x42000000 0x02000000>,
+                 <5 0x00000000 0x46000000 0x01000000>;
+
+        ethernet@1,01f00000 {
+            compatible = "smsc,lan9115";
+            reg = <1 0x01f00000 0x1000>;
+            interrupts = <0 48 4>;
+            phy-mode = "mii";
+        };
+
+        uart@5,00200000 {
+            compatible = "ns16550a";
+            reg = <5 0x00200000 0x20>;
+            interrupts = <0 49 4>;
+            clock-frequency = <12288000>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/bus/uniphier-system-bus.txt b/Documentation/devicetree/bindings/bus/uniphier-system-bus.txt
deleted file mode 100644
index 68ef80afff16..000000000000
--- a/Documentation/devicetree/bindings/bus/uniphier-system-bus.txt
+++ /dev/null
@@ -1,66 +0,0 @@
-UniPhier System Bus
-
-The UniPhier System Bus is an external bus that connects on-board devices to
-the UniPhier SoC.  It is a simple (semi-)parallel bus with address, data, and
-some control signals.  It supports up to 8 banks (chip selects).
-
-Before any access to the bus, the bus controller must be configured; the bus
-controller registers provide the control for the translation from the offset
-within each bank to the CPU-viewed address.  The needed setup includes the base
-address, the size of each bank.  Optionally, some timing parameters can be
-optimized for faster bus access.
-
-Required properties:
-- compatible: should be "socionext,uniphier-system-bus".
-- reg: offset and length of the register set for the bus controller device.
-- #address-cells: should be 2.  The first cell is the bank number (chip select).
-  The second cell is the address offset within the bank.
-- #size-cells: should be 1.
-- ranges: should provide a proper address translation from the System Bus to
-  the parent bus.
-
-Note:
-The address region(s) that can be assigned for the System Bus is implementation
-defined.  Some SoCs can use 0x00000000-0x0fffffff and 0x40000000-0x4fffffff,
-while other SoCs can only use 0x40000000-0x4fffffff.  There might be additional
-limitations depending on SoCs and the boot mode.  The address translation is
-arbitrary as long as the banks are assigned in the supported address space with
-the required alignment and they do not overlap one another.
-For example, it is possible to map:
-  bank 0 to 0x42000000-0x43ffffff, bank 5 to 0x46000000-0x46ffffff
-It is also possible to map:
-  bank 0 to 0x48000000-0x49ffffff, bank 5 to 0x44000000-0x44ffffff
-There is no reason to stick to a particular translation mapping, but the
-"ranges" property should provide a "reasonable" default that is known to work.
-The software should initialize the bus controller according to it.
-
-Example:
-
-	system-bus {
-		compatible = "socionext,uniphier-system-bus";
-		reg = <0x58c00000 0x400>;
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <1 0x00000000 0x42000000 0x02000000
-			  5 0x00000000 0x46000000 0x01000000>;
-
-		ethernet@1,01f00000 {
-			compatible = "smsc,lan9115";
-			reg = <1 0x01f00000 0x1000>;
-			interrupts = <0 48 4>
-			phy-mode = "mii";
-		};
-
-		uart@5,00200000 {
-			compatible = "ns16550a";
-			reg = <5 0x00200000 0x20>;
-			interrupts = <0 49 4>
-			clock-frequency = <12288000>;
-		};
-	};
-
-In this example,
- - the Ethernet device is connected at the offset 0x01f00000 of CS1 and
-   mapped to 0x43f00000 of the parent bus.
- - the UART device is connected at the offset 0x00200000 of CS5 and
-   mapped to 0x46200000 of the parent bus.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
