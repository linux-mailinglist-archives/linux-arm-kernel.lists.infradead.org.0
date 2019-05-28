Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66CC2D063
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 22:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9VA+HhUw14FzCj/eIvKfs2t4RB90vzgQze0OB7ZKAo=; b=B9tVxeDlfzem0X
	4CN2AonNE5qJKTw8YPV8bdf0jF/NpY0rrE9DOC+uO4MzhHHxAy72cQbytIGAEda+EFK26fr6x0J4W
	OYnfwSCo7ZZ8ls7ZWBcKMeqBq8G0+/W3CQLdLzYCzrVoRKYmlDju1ABoX5K7x/goYPVCuP6yb8WG9
	kKvQzrcX+fPMy0l4N1rOWYyAbW7qNrlU2l0j3qpkjkiY8ZG4pIkvLXMU0Goeu44RaLl5EWL+7ZuVx
	i75eQfJd1Q/43ZAmgIGZOuFp7xxYtSUQfpd2IzYBEvK+NFmtMNGOiUXjRHwrzsu//BI8d+4aipyCp
	SAY2qWexCUO7dlqcjP+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVilU-0003Bo-6f; Tue, 28 May 2019 20:32:08 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVikW-00027v-LM
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 20:31:16 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 5BB94200010;
 Tue, 28 May 2019 20:30:55 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v2 04/11] dt-bindings: rtc: Convert Allwinner A31 RTC to a
 schema
Date: Tue, 28 May 2019 22:30:34 +0200
Message-Id: <7bacc68b9b922844bc3e27603f9873c5a7d87791.1559075389.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <434446bc5541d7dfe5823874355c7db8c7e213fa.1559075389.git-series.maxime.ripard@bootlin.com>
References: <434446bc5541d7dfe5823874355c7db8c7e213fa.1559075389.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_133109_769076_E0F8FC78 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The newer Allwinner SoCs have an embedded RTC supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Acked-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---
Changes from v1:
  - Add back the R40 compatible
---
 Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml | 115 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 Documentation/devicetree/bindings/rtc/sun6i-rtc.txt                |  46 +-----------------------------
 2 files changed, 115 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
 delete mode 100644 Documentation/devicetree/bindings/rtc/sun6i-rtc.txt

diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
new file mode 100644
index 000000000000..f154bbba6a69
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
@@ -0,0 +1,115 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/allwinner,sun6i-a31-rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 RTC Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#clock-cells":
+    const: 1
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun6i-a31-rtc
+      - const: allwinner,sun8i-a23-rtc
+      - const: allwinner,sun8i-h3-rtc
+      - items:
+          - const: allwinner,sun8i-r40-rtc
+          - const: allwinner,sun8i-h3-rtc
+      - const: allwinner,sun8i-v3-rtc
+      - const: allwinner,sun50i-h5-rtc
+      - items:
+          - const: allwinner,sun50i-a64-rtc
+          - const: allwinner,sun8i-h3-rtc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: RTC Alarm 0
+      - description: RTC Alarm 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    minItems: 1
+    maxItems: 3
+    description:
+      The RTC provides up to three clocks
+        - the Low Frequency Oscillator or LOSC, at index 0,
+        - the Low Frequency Oscillator External output (X32KFOUT in
+          the datasheet), at index 1,
+        - the Internal Oscillator, at index 2.
+
+allOf:
+  - $ref: "rtc.yaml#"
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun6i-a31-rtc
+
+    then:
+      properties:
+        clock-output-names:
+          minItems: 1
+          maxItems: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun8i-a23-rtc
+              - allwinner,sun8i-v3-rtc
+
+    then:
+      properties:
+        clock-output-names:
+          minItems: 2
+          maxItems: 2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun8i-h3-rtc
+              - allwinner,sun50i-h5-rtc
+
+    then:
+      properties:
+        clock-output-names:
+          minItems: 3
+          maxItems: 3
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    rtc: rtc@1f00000 {
+        compatible = "allwinner,sun6i-a31-rtc";
+        reg = <0x01f00000 0x400>;
+        interrupts = <0 40 4>, <0 41 4>;
+        clock-output-names = "osc32k";
+        clocks = <&ext_osc32k>;
+        #clock-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/rtc/sun6i-rtc.txt b/Documentation/devicetree/bindings/rtc/sun6i-rtc.txt
deleted file mode 100644
index 6b732c41392b..000000000000
--- a/Documentation/devicetree/bindings/rtc/sun6i-rtc.txt
+++ /dev/null
@@ -1,46 +0,0 @@
-* sun6i Real Time Clock
-
-RTC controller for the Allwinner A31
-
-Required properties:
-- compatible	: Should be one of the following combinations:
-		    - "allwinner,sun6i-a31-rtc"
-		    - "allwinner,sun8i-a23-rtc"
-		    - "allwinner,sun8i-h3-rtc"
-		    - "allwinner,sun8i-r40-rtc", "allwinner,sun8i-h3-rtc"
-		    - "allwinner,sun8i-v3-rtc"
-		    - "allwinner,sun50i-a64-rtc", "allwinner,sun8i-h3-rtc"
-		    - "allwinner,sun50i-h5-rtc"
-
-		  Where there are two or more compatible strings, this
-		  denotes the hardware covered by the most specific one
-		  is backward-compatible with the latter ones, and the
-		  implementation for the latter ones can be used, albeit
-		  with reduced functionality.
-
-- reg		: physical base address of the controller and length of
-		  memory mapped region.
-- interrupts	: IRQ lines for the RTC alarm 0 and alarm 1, in that order.
-
-Required properties for new device trees
-- clocks	: phandle to the 32kHz external oscillator
-- clock-output-names : names of up to three clock outputs. See below.
-- #clock-cells  : must be equal to 1.
-
-The RTC provides the following clocks at the given indices:
-- 0: LOSC
-- 1: LOSC external output, known as X32KFOUT in the datasheet.
-     This clock is not available on the A31 and is deprecated for old
-     device trees still using the "allwinner,sun6i-a31-rtc" compatible.
-- 2: InternalOSC, or internal RC oscillator (A64/H3/H5 only)
-
-Example:
-
-rtc: rtc@1f00000 {
-	compatible = "allwinner,sun6i-a31-rtc";
-	reg = <0x01f00000 0x400>;
-	interrupts = <0 40 4>, <0 41 4>;
-	clock-output-names = "osc32k";
-	clocks = <&ext_osc32k>;
-	#clock-cells = <1>;
-};
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
