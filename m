Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC4FC8EA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1+sxVRl+s1UXLEYld0CcPKBwr63PjikfuRn0eMwCspQ=; b=s2Po1KXr3ihJF6
	djqsDxXGOj64ySVEVeAwTMjTBUqpoZcvnQgoFJcFpfA+VlM9d1BAnBMVGiuggGRCy1iOwg7B/VTRD
	gYU4am+HCl0Iw7/JuG1ZtSr79ISWmLbE5QCJe1DC9q6t+Nye1dlEH7TJLiAYGcd6io6qi8CLZ3usV
	u2zlf9LZ8bgtQ/FotdtPy5P1RTfoBu3x0EVnk26IH53teWMKTLEyCuII57pbLu+R2mMLMNPNaYNzm
	WWJw10fvzlahuO3mrsCgo+GeUF/r4O+Qy2WBzuLiLno9oN0jkO0ugEnw7h/J7/SwZdFNrV4F1NwWo
	qQ2iblfLGc7YX+WOkk0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhjL-0002Z4-Jq; Wed, 02 Oct 2019 16:43:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhjD-0002Yk-AA
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:43:53 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DABB21848;
 Wed,  2 Oct 2019 16:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570034631;
 bh=6TGfhp6A9L6XL3h83OQIrQQEBV22mU2Dsc9NbOkvBhE=;
 h=From:To:Subject:Date:From;
 b=CUwCvhqHj52pdVjBwYJz3x8y4HFSYL0mkneIaaksQyDIdslFJVbjijLvVgE87v8rT
 KrjejYQZ+S1jh4cl0pkZv3OUPYLAcyQCZAtffRQlzEv3OlI2A/NasNcZoq7V/U+Z5R
 nFf4LVNvIJZ9Pua6oAB+4yuo2FyAQMem8vO0pIXM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH v3 01/10] dt-bindings: sram: Convert SRAM bindings to
 json-schema
Date: Wed,  2 Oct 2019 18:43:07 +0200
Message-Id: <20191002164316.14905-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_094351_393926_4C3CECB4 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert generic mmio-sram bindings to DT schema format using
json-schema.  Require the address/size cells to be 1, not equal to root
node.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v2:
1. Add Rob as maintainer,
2. Use "contains" for compatible,
3. Fix address and size cells to 1,
4. Add maxitems to reg under children,
5. Remove unneeded string type from label.

Changes since v1:
1. Indent example with four spaces (more readable).
---
 .../devicetree/bindings/sram/sram.txt         |  80 -----------
 .../devicetree/bindings/sram/sram.yaml        | 134 ++++++++++++++++++
 2 files changed, 134 insertions(+), 80 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/sram.txt
 create mode 100644 Documentation/devicetree/bindings/sram/sram.yaml

diff --git a/Documentation/devicetree/bindings/sram/sram.txt b/Documentation/devicetree/bindings/sram/sram.txt
deleted file mode 100644
index e98908bd4227..000000000000
--- a/Documentation/devicetree/bindings/sram/sram.txt
+++ /dev/null
@@ -1,80 +0,0 @@
-Generic on-chip SRAM
-
-Simple IO memory regions to be managed by the genalloc API.
-
-Required properties:
-
-- compatible : mmio-sram or atmel,sama5d2-securam
-
-- reg : SRAM iomem address range
-
-Reserving sram areas:
----------------------
-
-Each child of the sram node specifies a region of reserved memory. Each
-child node should use a 'reg' property to specify a specific range of
-reserved memory.
-
-Following the generic-names recommended practice, node names should
-reflect the purpose of the node. Unit address (@<address>) should be
-appended to the name.
-
-Required properties in the sram node:
-
-- #address-cells, #size-cells : should use the same values as the root node
-- ranges : standard definition, should translate from local addresses
-           within the sram to bus addresses
-
-Optional properties in the sram node:
-
-- no-memory-wc : the flag indicating, that SRAM memory region has not to
-                 be remapped as write combining. WC is used by default.
-
-Required properties in the area nodes:
-
-- reg : iomem address range, relative to the SRAM range
-
-Optional properties in the area nodes:
-
-- compatible : standard definition, should contain a vendor specific string
-               in the form <vendor>,[<device>-]<usage>
-- pool : indicates that the particular reserved SRAM area is addressable
-         and in use by another device or devices
-- export : indicates that the reserved SRAM area may be accessed outside
-           of the kernel, e.g. by bootloader or userspace
-- protect-exec : Same as 'pool' above but with the additional
-		 constraint that code wil be run from the region and
-		 that the memory is maintained as read-only, executable
-		 during code execution. NOTE: This region must be page
-		 aligned on start and end in order to properly allow
-		 manipulation of the page attributes.
-- label : the name for the reserved partition, if omitted, the label
-          is taken from the node name excluding the unit address.
-- clocks : a list of phandle and clock specifier pair that controls the
-	   single SRAM clock.
-
-Example:
-
-sram: sram@5c000000 {
-	compatible = "mmio-sram";
-	reg = <0x5c000000 0x40000>; /* 256 KiB SRAM at address 0x5c000000 */
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges = <0 0x5c000000 0x40000>;
-
-	smp-sram@100 {
-		compatible = "socvendor,smp-sram";
-		reg = <0x100 0x50>;
-	};
-
-	device-sram@1000 {
-		reg = <0x1000 0x1000>;
-		pool;
-	};
-
-	exported@20000 {
-		reg = <0x20000 0x20000>;
-		export;
-	};
-};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
new file mode 100644
index 000000000000..a1c1ec2183f2
--- /dev/null
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -0,0 +1,134 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sram/sram.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic on-chip SRAM
+
+maintainers:
+  - Rob Herring <robh@kernel.org>
+
+description: |+
+  Simple IO memory regions to be managed by the genalloc API.
+
+  Each child of the sram node specifies a region of reserved memory. Each
+  child node should use a 'reg' property to specify a specific range of
+  reserved memory.
+
+  Following the generic-names recommended practice, node names should
+  reflect the purpose of the node. Unit address (@<address>) should be
+  appended to the name.
+
+properties:
+  $nodename:
+    pattern: "^sram(@.*)?"
+
+  compatible:
+    contains:
+      enum:
+        - mmio-sram
+        - atmel,sama5d2-securam
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges:
+    description:
+      Should translate from local addresses within the sram to bus addresses.
+
+  no-memory-wc:
+    description:
+      The flag indicating, that SRAM memory region has not to be remapped
+      as write combining. WC is used by default.
+    type: boolean
+
+patternProperties:
+  "^([a-z]*-)?sram@[a-f0-9]$":
+    type: object
+    description:
+      Each child of the sram node specifies a region of reserved memory.
+    properties:
+      reg:
+        description:
+          IO mem address range, relative to the SRAM range.
+        maxItems: 1
+
+      compatible:
+        $ref: /schemas/types.yaml#/definitions/string
+        description:
+          Should contain a vendor specific string in the form
+          <vendor>,[<device>-]<usage>
+
+      pool:
+        description:
+          Indicates that the particular reserved SRAM area is addressable
+          and in use by another device or devices.
+        type: boolean
+
+      export:
+        description:
+          Indicates that the reserved SRAM area may be accessed outside
+          of the kernel, e.g. by bootloader or userspace.
+        type: boolean
+
+      protect-exec:
+        description: |
+          Same as 'pool' above but with the additional constraint that code
+          will be run from the region and that the memory is maintained as
+          read-only, executable during code execution. NOTE: This region must
+          be page aligned on start and end in order to properly allow
+          manipulation of the page attributes.
+        type: boolean
+
+      label:
+        description:
+          The name for the reserved partition, if omitted, the label is taken
+          from the node name excluding the unit address.
+
+      clocks:
+        description:
+          A list of phandle and clock specifier pair that controls the
+          single SRAM clock.
+
+    required:
+      - reg
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
+    sram: sram@5c000000 {
+        compatible = "mmio-sram";
+        reg = <0x5c000000 0x40000>; /* 256 KiB SRAM at address 0x5c000000 */
+
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x5c000000 0x40000>;
+
+        smp-sram@100 {
+            compatible = "socvendor,smp-sram";
+            reg = <0x100 0x50>;
+        };
+
+        device-sram@1000 {
+            reg = <0x1000 0x1000>;
+            pool;
+        };
+
+        exported@20000 {
+            reg = <0x20000 0x20000>;
+            export;
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
