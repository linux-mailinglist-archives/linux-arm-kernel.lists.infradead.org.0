Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF1DAC702
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 16:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IpnX1qyCzyJXqMLaohzq0IXIDf4NBOFVaIcl8FBogw0=; b=TEfMwA4q9BY2UN
	PLOxGB200swXec9T0gqeFgt+jKAxHoQTTmxEvPbl6rhfp+dzzP+Xdcq94ZtofZLhCNUALfRfdGcpH
	DPZ0k298BXWSUjoE+Ef9PUZdHRWny+rNsUip1oiFoMMd33/lSqp+Zc31sVwOM3ohGB+Hl9kd4R27/
	WaXei7uNCclc38wuUzyzhJbRxbgCDP7SaMkKBL21yZFH/pg9PUyRNEldD01ol+0wLT7gSAJwvQhBh
	WPYgQobw9Jwy0T3cZ8YQpgI6D9Ufk+OKBz6N71hvVLjvbenkF3AfD5qA9l73XgiEZLU9HE87jNYjV
	nrSlLSVc7d3J2qevKq+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6bxd-0005zh-Ty; Sat, 07 Sep 2019 14:45:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6bxN-0005yt-JZ
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 14:44:55 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C60621871;
 Sat,  7 Sep 2019 14:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567867490;
 bh=CzBqxNH8YU3TGgWi/x4OeA1WUtRagi+iAhx86MkACDY=;
 h=From:To:Subject:Date:From;
 b=NbktIZf+b71RFNlQ2Ky8B9cnVUPSximHMHRFiehd9/skB17ME4J52P0xyiVrpoDhN
 hnvTpt/z+LFEivcJlni0l4BD4B0bpcvlu3yVkut5QJPvzih7ybey4V0OcAgOvhGmR+
 P+yQLxYwt8rHJ2U2tx8QLP0a/ftRJ3htxWPfEz8s=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: memory-controllers: Convert Samsung Exynos SROM
 bindings to json-schema
Date: Sat,  7 Sep 2019 16:44:42 +0200
Message-Id: <20190907144442.16788-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_074453_690942_3AF8D302 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Samsung Exynos SROM controller bindings to DT schema format
using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../memory-controllers/exynos-srom.txt        |  79 ----------
 .../memory-controllers/exynos-srom.yaml       | 136 ++++++++++++++++++
 2 files changed, 136 insertions(+), 79 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/exynos-srom.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos-srom.txt b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.txt
deleted file mode 100644
index f633b5d0f8ca..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/exynos-srom.txt
+++ /dev/null
@@ -1,79 +0,0 @@
-SAMSUNG Exynos SoCs SROM Controller driver.
-
-Required properties:
-- compatible : Should contain "samsung,exynos4210-srom".
-
-- reg: offset and length of the register set
-
-Optional properties:
-The SROM controller can be used to attach external peripherals. In this case
-extra properties, describing the bus behind it, should be specified as below:
-
-- #address-cells: Must be set to 2 to allow device address translation.
-		  Address is specified as (bank#, offset).
-
-- #size-cells: Must be set to 1 to allow device size passing
-
-- ranges: Must be set up to reflect the memory layout with four integer values
-	  per bank:
-		<bank-number> 0 <parent address of bank> <size>
-
-Sub-nodes:
-The actual device nodes should be added as subnodes to the SROMc node. These
-subnodes, in addition to regular device specification, should contain the following
-properties, describing configuration of the relevant SROM bank:
-
-Required properties:
-- reg: bank number, base address (relative to start of the bank) and size of
-       the memory mapped for the device. Note that base address will be
-       typically 0 as this is the start of the bank.
-
-- samsung,srom-timing : array of 6 integers, specifying bank timings in the
-                        following order: Tacp, Tcah, Tcoh, Tacc, Tcos, Tacs.
-                        Each value is specified in cycles and has the following
-                        meaning and valid range:
-                        Tacp : Page mode access cycle at Page mode (0 - 15)
-                        Tcah : Address holding time after CSn (0 - 15)
-                        Tcoh : Chip selection hold on OEn (0 - 15)
-                        Tacc : Access cycle (0 - 31, the actual time is N + 1)
-                        Tcos : Chip selection set-up before OEn (0 - 15)
-                        Tacs : Address set-up before CSn (0 - 15)
-
-Optional properties:
-- reg-io-width : data width in bytes (1 or 2). If omitted, default of 1 is used.
-
-- samsung,srom-page-mode : if page mode is set, 4 data page mode will be configured,
-			   else normal (1 data) page mode will be set.
-
-Example: basic definition, no banks are configured
-	memory-controller@12570000 {
-		compatible = "samsung,exynos4210-srom";
-		reg = <0x12570000 0x14>;
-	};
-
-Example: SROMc with SMSC911x ethernet chip on bank 3
-	memory-controller@12570000 {
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0x04000000 0x20000   // Bank0
-			  1 0 0x05000000 0x20000   // Bank1
-			  2 0 0x06000000 0x20000   // Bank2
-			  3 0 0x07000000 0x20000>; // Bank3
-
-		compatible = "samsung,exynos4210-srom";
-		reg = <0x12570000 0x14>;
-
-		ethernet@3,0 {
-			compatible = "smsc,lan9115";
-			reg = <3 0 0x10000>;	   // Bank 3, offset = 0
-			phy-mode = "mii";
-			interrupt-parent = <&gpx0>;
-			interrupts = <5 8>;
-			reg-io-width = <2>;
-			smsc,irq-push-pull;
-			smsc,force-internal-phy;
-
-			samsung,srom-page-mode;
-			samsung,srom-timing = <9 12 1 9 1 1>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
new file mode 100644
index 000000000000..9573bcfd68bf
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
@@ -0,0 +1,136 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/exynos-srom.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC SROM Controller driver
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+description: |+
+  The SROM controller can be used to attach external peripherals. In this case
+  extra properties, describing the bus behind it, should be specified.
+
+properties:
+  compatible:
+    items:
+      - const: samsung,exynos4210-srom
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 1
+
+  ranges:
+    description: |
+      Reflects the memory layout with four integer values per bank. Format:
+      <bank-number> 0 <parent address of bank> <size>
+
+patternProperties:
+  "^.*@[0-9]+,[0-9]+$":
+    type: object
+    description:
+      The actual device nodes should be added as subnodes to the SROMc node.
+      These subnodes, in addition to regular device specification, should
+      contain the following properties, describing configuration
+      of the relevant SROM bank.
+
+    properties:
+      reg:
+        description:
+          Bank number, base address (relative to start of the bank) and size
+          of the memory mapped for the device. Note that base address will be
+          typically 0 as this is the start of the bank.
+        maxItems: 1
+
+      reg-io-width:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32
+          - enum: [1, 2]
+        description:
+          Data width in bytes (1 or 2). If omitted, default of 1 is used.
+
+      samsung,srom-page-mode:
+        description:
+          If page mode is set, 4 data page mode will be configured,
+          else normal (1 data) page mode will be set.
+        type: boolean
+
+      samsung,srom-timing:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+          - items:
+              minItems: 6
+              maxItems: 6
+        description: |
+          Array of 6 integers, specifying bank timings in the following order:
+          Tacp, Tcah, Tcoh, Tacc, Tcos, Tacs.
+          Each value is specified in cycles and has the following meaning
+          and valid range:
+          Tacp: Page mode access cycle at Page mode (0 - 15)
+          Tcah: Address holding time after CSn (0 - 15)
+          Tcoh: Chip selection hold on OEn (0 - 15)
+          Tacc: Access cycle (0 - 31, the actual time is N + 1)
+          Tcos: Chip selection set-up before OEn (0 - 15)
+          Tacs: Address set-up before CSn (0 - 15)
+
+    required:
+      - reg
+      - samsung,srom-timing
+
+required:
+  - compatible
+  - reg
+
+allOf:
+  - if:
+      anyOf:
+        - required: [ "#address-cells" ]
+        - required: [ ranges ]
+        - required: [ "#size-cells" ]
+    then:
+      required:
+        - "#address-cells"
+        - ranges
+        - "#size-cells"
+
+examples:
+  - |
+    // Example: basic definition, no banks are configured
+    memory-controller@12560000 {
+      compatible = "samsung,exynos4210-srom";
+      reg = <0x12560000 0x14>;
+    };
+
+    // Example: SROMc with SMSC911x ethernet chip on bank 3
+    memory-controller@12570000 {
+      #address-cells = <2>;
+      #size-cells = <1>;
+      ranges = <0 0 0x04000000 0x20000   // Bank0
+                1 0 0x05000000 0x20000   // Bank1
+                2 0 0x06000000 0x20000   // Bank2
+                3 0 0x07000000 0x20000>; // Bank3
+
+      compatible = "samsung,exynos4210-srom";
+      reg = <0x12570000 0x14>;
+
+      ethernet@3,0 {
+        compatible = "smsc,lan9115";
+        reg = <3 0 0x10000>;     // Bank 3, offset = 0
+        phy-mode = "mii";
+        interrupt-parent = <&gpx0>;
+        interrupts = <5 8>;
+        reg-io-width = <2>;
+        smsc,irq-push-pull;
+        smsc,force-internal-phy;
+
+        samsung,srom-page-mode;
+        samsung,srom-timing = <9 12 1 9 1 1>;
+      };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
