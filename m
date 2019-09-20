Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45417B95A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 18:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLvKritDn3Tm0+KLbjFJ45Ofv1pWkRXqOk7YwjMzyK8=; b=hSBrmopbE9+r2r
	ij1O/TGQBqN26WTFq/MatencH+b/RkwvaNMTiYkeM24RETnwg0pw06QXLQxNX2cOcY8HxcKejPV7B
	p5yem2z9wjfzinrtkZidoFPYC8wtKZWc6Onnw2p2l36BOVX93aciCmhWcaHVtfJtViwArkX5YcQhe
	9rrI73jCdew99cOLVFsRIHGEbvEXhHJvYGJ9SA0r/+l2HB9RA6H4P/5vqLy6lUDOyj19IQbZQfp/1
	gZF2c+rLEbRlLOR54yzdJeJAKaxUu5pTsMvgsLGkzt0mny5iMHgggg9mH6QSbXjtl0FkXBHAVAdmh
	xTqfDCO5ijwhkMOmwnYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBLjo-000113-GW; Fri, 20 Sep 2019 16:26:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBLja-0000te-4M
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 16:26:15 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0CDE20B7C;
 Fri, 20 Sep 2019 16:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568996773;
 bh=4R9KksLBflgwnFwdfsbQwC8r1tkX9fJuZeOy8CTsqv8=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=dCgFewKkpqX4rKlHBWPjrweWnOFxrpMVpda07dWULGSztuddcPhf2+S/5BiGCNlw4
 Igce0K+mZmFFgNwbslK+6J3VZaqtZctC9iij3mmsezs/z78XSCjlLcPGk6Xmm472x7
 yTyBaiEydtF9njOlXpAc8Qgo809XKknCTU5+dTJE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] dt-bindings: arm: samsung: Convert Exynos PMU bindings
 to json-schema
Date: Fri, 20 Sep 2019 18:26:00 +0200
Message-Id: <20190920162600.7486-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920162600.7486-1-krzk@kernel.org>
References: <20190920162600.7486-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_092614_213367_81EB8901 
X-CRM114-Status: GOOD (  15.31  )
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

Convert Samsung Exynos Power Management Unit (PMU) bindings to DT schema
format using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v2:
1. Use select to skip other syscon nodes,
2. Indent example with four spaces (more readable),
3. Use pattern for clkoutN property,
4. Include header with clock IDs in example to bring it closer to real DTS.

Changes since v1:
1. Fix clock-names to match all elements against schema (any number of
   any clkoutN values).
   This currently fails:
       properties:clock-names:items: {'enum': ['clkout0', 'clkout1', 'clkout2',
       'clkout3', 'clkout4', 'clkout5', 'clkout6', 'clkout7', 'clkout8',
       'clkout9', 'clkout10', 'clkout11', 'clkout12', 'clkout13', 'clkout14',
       'clkout15', 'clkout16']} is not of type 'array

2. Add syscon reboot and poweroff nodes.
---
 .../devicetree/bindings/arm/samsung/pmu.txt   |  72 ------------
 .../devicetree/bindings/arm/samsung/pmu.yaml  | 105 ++++++++++++++++++
 2 files changed, 105 insertions(+), 72 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.txt
 create mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.yaml

diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.txt b/Documentation/devicetree/bindings/arm/samsung/pmu.txt
deleted file mode 100644
index 433bfd7593ac..000000000000
--- a/Documentation/devicetree/bindings/arm/samsung/pmu.txt
+++ /dev/null
@@ -1,72 +0,0 @@
-SAMSUNG Exynos SoC series PMU Registers
-
-Properties:
- - compatible : should contain two values. First value must be one from following list:
-		   - "samsung,exynos3250-pmu" - for Exynos3250 SoC,
-		   - "samsung,exynos4210-pmu" - for Exynos4210 SoC,
-		   - "samsung,exynos4412-pmu" - for Exynos4412 SoC,
-		   - "samsung,exynos5250-pmu" - for Exynos5250 SoC,
-		   - "samsung,exynos5260-pmu" - for Exynos5260 SoC.
-		   - "samsung,exynos5410-pmu" - for Exynos5410 SoC,
-		   - "samsung,exynos5420-pmu" - for Exynos5420 SoC.
-		   - "samsung,exynos5433-pmu" - for Exynos5433 SoC.
-		   - "samsung,exynos7-pmu" - for Exynos7 SoC.
-		second value must be always "syscon".
-
- - reg : offset and length of the register set.
-
- - #clock-cells : must be <1>, since PMU requires once cell as clock specifier.
-		The single specifier cell is used as index to list of clocks
-		provided by PMU, which is currently:
-			0 : SoC clock output (CLKOUT pin)
-
- - clock-names : list of clock names for particular CLKOUT mux inputs in
-		following format:
-			"clkoutN", where N is a decimal number corresponding to
-			CLKOUT mux control bits value for given input, e.g.
-				"clkout0", "clkout7", "clkout15".
-
- - clocks : list of phandles and specifiers to all input clocks listed in
-		clock-names property.
-
-Optional properties:
-
-Some PMUs are capable of behaving as an interrupt controller (mostly
-to wake up a suspended PMU). In which case, they can have the
-following properties:
-
-- interrupt-controller: indicate that said PMU is an interrupt controller
-
-- #interrupt-cells: must be identical to the that of the parent interrupt
-  controller.
-
-
-Optional nodes:
-
-- nodes defining the restart and poweroff syscon children
-
-
-Example :
-pmu_system_controller: system-controller@10040000 {
-	compatible = "samsung,exynos5250-pmu", "syscon";
-	reg = <0x10040000 0x5000>;
-	interrupt-controller;
-	#interrupt-cells = <3>;
-	interrupt-parent = <&gic>;
-	#clock-cells = <1>;
-	clock-names = "clkout0", "clkout1", "clkout2", "clkout3",
-			"clkout4", "clkout8", "clkout9";
-	clocks = <&clock CLK_OUT_DMC>, <&clock CLK_OUT_TOP>,
-		<&clock CLK_OUT_LEFTBUS>, <&clock CLK_OUT_RIGHTBUS>,
-		<&clock CLK_OUT_CPU>, <&clock CLK_XXTI>,
-		<&clock CLK_XUSBXTI>;
-};
-
-Example of clock consumer :
-
-usb3503: usb3503@8 {
-	/* ... */
-	clock-names = "refclk";
-	clocks = <&pmu_system_controller 0>;
-	/* ... */
-};
diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
new file mode 100644
index 000000000000..73b56fc5bf58
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/samsung/pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC series Power Management Unit (PMU)
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+# Custom select to avoid matching all nodes with 'syscon'
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - samsung,exynos3250-pmu
+          - samsung,exynos4210-pmu
+          - samsung,exynos4412-pmu
+          - samsung,exynos5250-pmu
+          - samsung,exynos5260-pmu
+          - samsung,exynos5410-pmu
+          - samsung,exynos5420-pmu
+          - samsung,exynos5433-pmu
+          - samsung,exynos7-pmu
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - samsung,exynos3250-pmu
+          - samsung,exynos4210-pmu
+          - samsung,exynos4412-pmu
+          - samsung,exynos5250-pmu
+          - samsung,exynos5260-pmu
+          - samsung,exynos5410-pmu
+          - samsung,exynos5420-pmu
+          - samsung,exynos5433-pmu
+          - samsung,exynos7-pmu
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  clock-names:
+    description:
+      List of clock names for particular CLKOUT mux inputs
+    minItems: 1
+    maxItems: 32
+    items:
+      pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
+
+  clocks:
+    minItems: 1
+    maxItems: 32
+
+  interrupt-controller:
+    description:
+      Some PMUs are capable of behaving as an interrupt controller (mostly
+      to wake up a suspended PMU).
+
+  '#interrupt-cells':
+    description:
+      Must be identical to the that of the parent interrupt controller.
+    const: 3
+
+  syscon-poweroff:
+    $ref: "../../power/reset/syscon-poweroff.yaml#"
+    type: object
+    description:
+      Node for power off method
+
+  syscon-reboot:
+    $ref: "../../power/reset/syscon-reboot.yaml#"
+    type: object
+    description:
+      Node for reboot method
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+  - clock-names
+  - clocks
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5250.h>
+
+    pmu_system_controller: system-controller@10040000 {
+        compatible = "samsung,exynos5250-pmu", "syscon";
+        reg = <0x10040000 0x5000>;
+        interrupt-controller;
+        #interrupt-cells = <3>;
+        interrupt-parent = <&gic>;
+        #clock-cells = <1>;
+        clock-names = "clkout16";
+        clocks = <&clock CLK_FIN_PLL>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
