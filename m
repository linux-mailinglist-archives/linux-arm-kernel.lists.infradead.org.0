Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1852F9B2AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mgrD2EVuS4Vd6xnsGGYMXMSa9qfKzm1Ie6yNW/B+FA4=; b=ic8iM+ePmgwv5JGyJ3bWl7Qdsa
	+uMU1woX2yEBT6J+GY908rLjSeWFfXbK9ChhY1eV6XB3e2NMLLNP+eeDWNzLNkv+RayWVaqKB8WBH
	2H9tr9wW/ArN7wvtkNsaqz5SM6QXUfZWwe5N+iYkMMylLrLA9DnKp6q91CrSxXUucADwfJ2l9p35A
	JeFGJNHfvr//javk8GVK78CW0JERT6GgWHSFgX7mo3jOU5pi9LH396Ln6XF5f+k5CMX9hRq9ba3pE
	MCFp+TP8NNbsInA2G08iNBuOlkh6B0OhcsUwWeUuouBZBBEGqov79pilIeZ2SRdNKJlzrDKsFdMTs
	c8wsFzXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Az9-0004kX-JX; Fri, 23 Aug 2019 14:56:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Axw-0002Pf-W9
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:55:05 +0000
Received: from localhost.localdomain (unknown [194.230.147.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46F3C23401;
 Fri, 23 Aug 2019 14:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566572099;
 bh=2zZ3n85/0UHPMbcgkgeEEMmql7o89Jja/uNBLg2lFsE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sbKoecBeP/pwwwYNFfR4aEw8QvN3rGUFfH1L0YLwLZhyZm8CseRmMofijqNEJwLiK
 vz0GjWUdhEjwQQlhd2mRyA1o8M/ItwTQJLJJiKszdFb9joEhwvYKZmJMqPBcLX4WL7
 PVqAEJYpFzs+xB7zvavDe3Ik1PxlOuXqahe8DaMU=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-rtc@vger.kernel.org
Subject: [RFC 8/9] dt-bindings: iio: adc: exynos: Convert Exynos ADC bindings
 to json-schema
Date: Fri, 23 Aug 2019 16:53:55 +0200
Message-Id: <20190823145356.6341-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823145356.6341-1-krzk@kernel.org>
References: <20190823145356.6341-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_075501_214584_0CC75B0D 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Olof Johansson <olof@lixom.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 notify@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Samsung Exynos Analog to Digital Converter bindings to DT schema
format using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../bindings/iio/adc/samsung,exynos-adc.txt   | 107 ------------
 .../bindings/iio/adc/samsung,exynos-adc.yaml  | 159 ++++++++++++++++++
 2 files changed, 159 insertions(+), 107 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.txt b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.txt
deleted file mode 100644
index e1fe02f3e3e9..000000000000
--- a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.txt
+++ /dev/null
@@ -1,107 +0,0 @@
-Samsung Exynos Analog to Digital Converter bindings
-
-The devicetree bindings are for the new ADC driver written for
-Exynos4 and upward SoCs from Samsung.
-
-New driver handles the following
-1. Supports ADC IF found on EXYNOS4412/EXYNOS5250
-   and future SoCs from Samsung
-2. Add ADC driver under iio/adc framework
-3. Also adds the Documentation for device tree bindings
-
-Required properties:
-- compatible:		Must be "samsung,exynos-adc-v1"
-				for Exynos5250 controllers.
-			Must be "samsung,exynos-adc-v2" for
-				future controllers.
-			Must be "samsung,exynos3250-adc" for
-				controllers compatible with ADC of Exynos3250.
-			Must be "samsung,exynos4212-adc" for
-				controllers compatible with ADC of Exynos4212 and Exynos4412.
-			Must be "samsung,exynos7-adc" for
-				the ADC in Exynos7 and compatibles
-			Must be "samsung,s3c2410-adc" for
-				the ADC in s3c2410 and compatibles
-			Must be "samsung,s3c2416-adc" for
-				the ADC in s3c2416 and compatibles
-			Must be "samsung,s3c2440-adc" for
-				the ADC in s3c2440 and compatibles
-			Must be "samsung,s3c2443-adc" for
-				the ADC in s3c2443 and compatibles
-			Must be "samsung,s3c6410-adc" for
-				the ADC in s3c6410 and compatibles
-			Must be "samsung,s5pv210-adc" for
-				the ADC in s5pv210 and compatibles
-- reg:			List of ADC register address range
-			- The base address and range of ADC register
-			- The base address and range of ADC_PHY register (every
-			  SoC except for s3c24xx/s3c64xx ADC)
-- interrupts: 		Contains the interrupt information for the timer. The
-			format is being dependent on which interrupt controller
-			the Samsung device uses.
-- #io-channel-cells = <1>; As ADC has multiple outputs
-- clocks		From common clock bindings: handles to clocks specified
-			in "clock-names" property, in the same order.
-- clock-names		From common clock bindings: list of clock input names
-			used by ADC block:
-			- "adc" : ADC bus clock
-			- "sclk" : ADC special clock (only for Exynos3250 and
-				   compatible ADC block)
-- vdd-supply		VDD input supply.
-
-- samsung,syscon-phandle Contains the PMU system controller node
-			(To access the ADC_PHY register on Exynos5250/5420/5800/3250)
-Optional properties:
-- has-touchscreen:	If present, indicates that a touchscreen is
-			connected an usable.
-
-Note: child nodes can be added for auto probing from device tree.
-
-Example: adding device info in dtsi file
-
-adc: adc@12d10000 {
-	compatible = "samsung,exynos-adc-v1";
-	reg = <0x12D10000 0x100>;
-	interrupts = <0 106 0>;
-	#io-channel-cells = <1>;
-	io-channel-ranges;
-
-	clocks = <&clock 303>;
-	clock-names = "adc";
-
-	vdd-supply = <&buck5_reg>;
-	samsung,syscon-phandle = <&pmu_system_controller>;
-};
-
-Example: adding device info in dtsi file for Exynos3250 with additional sclk
-
-adc: adc@126c0000 {
-	compatible = "samsung,exynos3250-adc", "samsung,exynos-adc-v2;
-	reg = <0x126C0000 0x100>;
-	interrupts = <0 137 0>;
-	#io-channel-cells = <1>;
-	io-channel-ranges;
-
-	clocks = <&cmu CLK_TSADC>, <&cmu CLK_SCLK_TSADC>;
-	clock-names = "adc", "sclk";
-
-	vdd-supply = <&buck5_reg>;
-	samsung,syscon-phandle = <&pmu_system_controller>;
-};
-
-Example: Adding child nodes in dts file
-
-adc@12d10000 {
-
-	/* NTC thermistor is a hwmon device */
-	ncp15wb473@0 {
-		compatible = "murata,ncp15wb473";
-		pullup-uv = <1800000>;
-		pullup-ohm = <47000>;
-		pulldown-ohm = <0>;
-		io-channels = <&adc 4>;
-	};
-};
-
-Note: Does not apply to ADC driver under arch/arm/plat-samsung/
-Note: The child node can be added under the adc node or separately.
diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
new file mode 100644
index 000000000000..c989d455b508
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
@@ -0,0 +1,159 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/samsung,exynos-adc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos Analog to Digital Converter (ADC)
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - samsung,exynos-adc-v1                 # Exynos5250
+          - samsung,exynos-adc-v2
+          - samsung,exynos3250-adc
+          - samsung,exynos4212-adc                # Exynos4212 and Exynos4412
+          - samsung,exynos7-adc
+          - samsung,s3c2410-adc
+          - samsung,s3c2416-adc
+          - samsung,s3c2440-adc
+          - samsung,s3c2443-adc
+          - samsung,s3c6410-adc
+          - samsung,s5pv210-adc
+  reg:
+    oneOf:
+      - items:
+          - description: base registers
+      - items:
+          # For S5P and Exynos
+          - description: base registers
+          - description: phy registers
+
+  clocks:
+    description:
+      Phandle to ADC bus clock. For Exynos3250 additional clock is needed.
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    description:
+      Must contain clock names matching phandles in clocks property.
+    oneOf:
+      - items:
+          - const: adc
+      - items:
+          # TODO: This can be in any order matching clocks, how to express it?
+          - const: adc
+          - const: sclk
+
+  interrupts:
+    maxItems: 1
+
+  "#io-channel-cells":
+    const: 1
+
+  vdd-supply:
+    description: VDD input supply
+    maxItems: 1
+
+  samsung,syscon-phandle:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    # TODO: reference to PMU schema?
+    description:
+      Phandle to the PMU system controller node (to access the ADC_PHY
+      register on Exynos5250/5420/5800/3250)
+    maxItems: 1
+
+  has-touchscreen:
+    description: If present, indicates that a touchscreen is connected an usable
+    type: boolean
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - "#io-channel-cells"
+  - samsung,syscon-phandle
+  - vdd-supply
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos-adc-v1
+              - samsung,exynos-adc-v2
+              - samsung,exynos3250-adc
+              - samsung,exynos4212-adc
+              - samsung,exynos7-adc
+              - samsung,s5pv210-adc
+    then:
+      properties:
+        reg:
+          items:
+            # For S5P and Exynos
+            - description: base registers
+            - description: phy registers
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos3250-adc
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+          - const: adc
+          - const: sclk
+
+examples:
+  - |
+    adc: adc@12d10000 {
+      compatible = "samsung,exynos-adc-v1";
+      reg = <0x12d10000 0x100>;
+      interrupts = <0 106 0>;
+      #io-channel-cells = <1>;
+      io-channel-ranges;
+
+      clocks = <&clock 303>;
+      clock-names = "adc";
+
+      vdd-supply = <&buck5_reg>;
+      samsung,syscon-phandle = <&pmu_system_controller>;
+
+      /* NTC thermistor is a hwmon device */
+      ncp15wb473@0 {
+        compatible = "murata,ncp15wb473";
+        pullup-uv = <1800000>;
+        pullup-ohm = <47000>;
+        pulldown-ohm = <0>;
+        io-channels = <&adc 4>;
+      };
+    };
+
+  - |
+    adc@126c0000 {
+      compatible = "samsung,exynos3250-adc";
+      reg = <0x126C0000 0x100>;
+      interrupts = <0 137 0>;
+      #io-channel-cells = <1>;
+      io-channel-ranges;
+
+      clocks = <&cmu 0>, // CLK_TSADC
+               <&cmu 1>; // CLK_SCLK_TSADC
+      clock-names = "adc", "sclk";
+
+      vdd-supply = <&buck5_reg>;
+      samsung,syscon-phandle = <&pmu_system_controller>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
