Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AB08B909
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wj9ErEUcU9smSf5891oJNXMGXuUXytmdRpIkJPUJ6ws=; b=mYkGJHN81qwHny
	17oYgimyt5qvux1rxABBfU2SvwspWnAzQfs0s9jqYl85jvdoCgjLtRDL7z1FFCUi3rpZfCLjWLd0J
	CcoyoDa0rI6I4KN57kiVxsF4KiXCijVvrW99GppQRGuKOzhKrV2L7MnjopzxPaTDRurDMNGAJsCMn
	N1U1iK1/P3A1Kd+wiua1Ysxn2iWkVVwn9tJcn3jORWIeiKGSVEmxBPx3L3AIKgLgMRbvxSJgjvLAb
	I+4GrjR6a9rHH7iP2JhfL40ABfFGNob67wrjKAvbAw6xRrYmSDw/HBKeZc27UHRt4/MsEx/CRFhoW
	DeylKTb3fnmPx3FLQm4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWDW-0005rq-FU; Tue, 13 Aug 2019 12:47:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWDL-0005r6-Ur
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:47:49 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28A2920578;
 Tue, 13 Aug 2019 12:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565700467;
 bh=dTLd0NV4nc3df1m/ftsCyOz4UmpqOCatkV8U3W9MSX8=;
 h=From:To:Cc:Subject:Date:From;
 b=vF1BNEylha4mfnijR6v/y+2rRipDQWCnF2EC4rgEwXtuNH31yVHCxr+rhF2M4FrjY
 a7CVyvgRO/9RsgzdhqbqctSWWH6t+yaxdrzRylN9aZD5XUJxIJ8tma7UDVmAy+JFSp
 h6rIqfDXTH41O/elO+FSLDyd35LKlXzpixVwCd50=
From: Maxime Ripard <mripard@kernel.org>
To: linux@roeck-us.net,
	wim@linux-watchdog.org
Subject: [PATCH 1/5] dt-bindings: mfd: Convert Allwinner GPADC bindings to a
 schema
Date: Tue, 13 Aug 2019 14:47:40 +0200
Message-Id: <20190813124744.32614-1-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_054748_040115_CA8A52B8 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner SoCs have an embedded GPADC that is doing thermal reading as
well, supported in Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../iio/adc/allwinner,sun8i-a33-ths.yaml      | 43 +++++++++++
 .../bindings/mfd/allwinner,sun4i-a10-ts.yaml  | 76 +++++++++++++++++++
 .../devicetree/bindings/mfd/sun4i-gpadc.txt   | 59 --------------
 3 files changed, 119 insertions(+), 59 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/allwinner,sun8i-a33-ths.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
 delete mode 100644 Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt

diff --git a/Documentation/devicetree/bindings/iio/adc/allwinner,sun8i-a33-ths.yaml b/Documentation/devicetree/bindings/iio/adc/allwinner,sun8i-a33-ths.yaml
new file mode 100644
index 000000000000..d74962c0f5ae
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/allwinner,sun8i-a33-ths.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/allwinner,sun8i-a33-ths.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A33 Thermal Sensor Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#io-channel-cells":
+    const: 0
+
+  "#thermal-sensor-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun8i-a33-ths
+
+  reg:
+    maxItems: 1
+
+required:
+  - "#io-channel-cells"
+  - "#thermal-sensor-cells"
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    ths: ths@1c25000 {
+        compatible = "allwinner,sun8i-a33-ths";
+        reg = <0x01c25000 0x100>;
+        #thermal-sensor-cells = <0>;
+        #io-channel-cells = <0>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml b/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
new file mode 100644
index 000000000000..4b1a09acb98b
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/allwinner,sun4i-a10-ts.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Resistive Touchscreen Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#thermal-sensor-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-ts
+      - allwinner,sun5i-a13-ts
+      - allwinner,sun6i-a31-ts
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  allwinner,ts-attached:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: A touchscreen is attached to the controller
+
+  allwinner,tp-sensitive-adjust:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+        maximum: 15
+        default: 15
+    description: Sensitivity of pen down detection
+
+  allwinner,filter-type:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+        maximum: 3
+        default: 1
+    description: |
+      Select median and averaging filter. Sample used for median /
+      averaging filter:
+        0: 4/2
+        1: 5/3
+        2: 8/4
+        3: 16/8
+
+required:
+  - "#thermal-sensor-cells"
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    rtp: rtp@1c25000 {
+        compatible = "allwinner,sun4i-a10-ts";
+        reg = <0x01c25000 0x100>;
+        interrupts = <29>;
+        allwinner,ts-attached;
+        #thermal-sensor-cells = <0>;
+        /* sensitive/noisy touch panel */
+        allwinner,tp-sensitive-adjust = <0>;
+        allwinner,filter-type = <3>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt b/Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt
deleted file mode 100644
index 86dd8191b04c..000000000000
--- a/Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt
+++ /dev/null
@@ -1,59 +0,0 @@
-Allwinner SoCs' GPADC Device Tree bindings
-------------------------------------------
-The Allwinner SoCs all have an ADC that can also act as a thermal sensor
-and sometimes as a touchscreen controller.
-
-Required properties:
-  - compatible: "allwinner,sun8i-a33-ths",
-  - reg: mmio address range of the chip,
-  - #thermal-sensor-cells: shall be 0,
-  - #io-channel-cells: shall be 0,
-
-Example:
-	ths: ths@1c25000 {
-		compatible = "allwinner,sun8i-a33-ths";
-		reg = <0x01c25000 0x100>;
-		#thermal-sensor-cells = <0>;
-		#io-channel-cells = <0>;
-	};
-
-sun4i, sun5i and sun6i SoCs are also supported via the older binding:
-
-sun4i resistive touchscreen controller
---------------------------------------
-
-Required properties:
- - compatible: "allwinner,sun4i-a10-ts", "allwinner,sun5i-a13-ts" or
-   "allwinner,sun6i-a31-ts"
- - reg: mmio address range of the chip
- - interrupts: interrupt to which the chip is connected
- - #thermal-sensor-cells: shall be 0
-
-Optional properties:
- - allwinner,ts-attached	 : boolean indicating that an actual touchscreen
-				   is attached to the controller
- - allwinner,tp-sensitive-adjust : integer (4 bits)
-				   adjust sensitivity of pen down detection
-				   between 0 (least sensitive) and 15
-				   (defaults to 15)
- - allwinner,filter-type	 : integer (2 bits)
-				   select median and averaging filter
-				   samples used for median / averaging filter
-				   0: 4/2
-				   1: 5/3
-				   2: 8/4
-				   3: 16/8
-				   (defaults to 1)
-
-Example:
-
-	rtp: rtp@1c25000 {
-		compatible = "allwinner,sun4i-a10-ts";
-		reg = <0x01c25000 0x100>;
-		interrupts = <29>;
-		allwinner,ts-attached;
-		#thermal-sensor-cells = <0>;
-		/* sensitive/noisy touch panel */
-		allwinner,tp-sensitive-adjust = <0>;
-		allwinner,filter-type = <3>;
-	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
