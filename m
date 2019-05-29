Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA96B2D63D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiH9kDIGUxfq0tz44PQRmyttwTUgAk6UcMcZGhnFi10=; b=cuHy9yy56eoHIA
	BO/Gqcgfpzu9bhsWsK8Eq8CAoJ8HFVn7rV1Hh9NQ6480geWCQDa5DCqXaX6ukaV92HSOFzv2AJLAE
	QkT1nj6xsz8BLhgYARP3isn7BcfWACbSxuSxGTZZELJQ8O1owpiomP9MpnCufs4Lr8k/3HTlryPY1
	wr1E2J9hJPS9CobuByp45NhzXIxqrYbNxR0QT+UL9zlTSJAV5AsjbMfefwnsi99ho5p4ZazG5D/uP
	T7loj/uuY0DUXYaIyqmTNZs+oX9uS2zHQPmGuqKCIqyDchCIyFHlzdIv6O5nKwqSZTQ1XLBKiHuuf
	6YDVczJbSme4WxYDw7TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVswx-0005d3-IW; Wed, 29 May 2019 07:24:39 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVswW-0005Ia-8f
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:24:15 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9AAD0E000D;
 Wed, 29 May 2019 07:23:55 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v3 2/2] dt-bindings: mmc: sun4i: Add YAML schemas
Date: Wed, 29 May 2019 09:23:44 +0200
Message-Id: <18bb36183d93fd6bc03a401c2b6b498c0171d375.1559114458.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <fab0ec653b4e059cdb1206f65bfca051c8b0a7de.1559114458.git-series.maxime.ripard@bootlin.com>
References: <fab0ec653b4e059cdb1206f65bfca051c8b0a7de.1559114458.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_002412_744967_7AF2EFCC 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the DT binding to a YAML schema to enable the DT validation.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v2
  - Add Rob's Reviewed-by
---
 Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml | 98 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 Documentation/devicetree/bindings/mmc/sunxi-mmc.txt                | 52 +--------------------------------------
 2 files changed, 98 insertions(+), 52 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
 delete mode 100644 Documentation/devicetree/bindings/mmc/sunxi-mmc.txt

diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
new file mode 100644
index 000000000000..df0280edef97
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
@@ -0,0 +1,98 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/allwinner,sun4i-a10-mmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 MMC Controller Device Tree Bindings
+
+allOf:
+  - $ref: "mmc-controller.yaml"
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-mmc
+      - const: allwinner,sun5i-a13-mmc
+      - const: allwinner,sun7i-a20-mmc
+      - const: allwinner,sun8i-a83t-emmc
+      - const: allwinner,sun9i-a80-mmc
+      - const: allwinner,sun50i-a64-emmc
+      - const: allwinner,sun50i-a64-mmc
+      - items:
+          - const: allwinner,sun8i-a83t-mmc
+          - const: allwinner,sun7i-a20-mmc
+      - items:
+          - const: allwinner,sun50i-h6-emmc
+          - const: allwinner,sun50i-a64-emmc
+      - items:
+          - const: allwinner,sun50i-h6-mmc
+          - const: allwinner,sun50i-a64-mmc
+      - items:
+          - const: allwinner,sun8i-r40-emmc
+          - const: allwinner,sun50i-a64-emmc
+      - items:
+          - const: allwinner,sun8i-r40-mmc
+          - const: allwinner,sun50i-a64-mmc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 4
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+      - description: Output Clock
+      - description: Sample Clock
+
+  clock-names:
+    minItems: 2
+    maxItems: 4
+    items:
+      - const: ahb
+      - const: mmc
+      - const: output
+      - const: sample
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: ahb
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    mmc0: mmc@1c0f000 {
+        compatible = "allwinner,sun5i-a13-mmc";
+        reg = <0x01c0f000 0x1000>;
+        clocks = <&ahb_gates 8>, <&mmc0_clk>;
+        clock-names = "ahb", "mmc";
+        interrupts = <32>;
+        bus-width = <4>;
+        cd-gpios = <&pio 7 1 0>;
+    };
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+...
diff --git a/Documentation/devicetree/bindings/mmc/sunxi-mmc.txt b/Documentation/devicetree/bindings/mmc/sunxi-mmc.txt
deleted file mode 100644
index e9cb3ec5e502..000000000000
--- a/Documentation/devicetree/bindings/mmc/sunxi-mmc.txt
+++ /dev/null
@@ -1,52 +0,0 @@
-* Allwinner sunxi MMC controller
-
-The highspeed MMC host controller on Allwinner SoCs provides an interface
-for MMC, SD and SDIO types of memory cards.
-
-Supported maximum speeds are the ones of the eMMC standard 4.5 as well
-as the speed of SD standard 3.0.
-Absolute maximum transfer rate is 200MB/s
-
-Required properties:
- - compatible : should be one of:
-   * "allwinner,sun4i-a10-mmc"
-   * "allwinner,sun5i-a13-mmc"
-   * "allwinner,sun7i-a20-mmc"
-   * "allwinner,sun8i-a83t-emmc"
-   * "allwinner,sun9i-a80-mmc"
-   * "allwinner,sun50i-a64-emmc"
-   * "allwinner,sun50i-a64-mmc"
-   * "allwinner,sun50i-h6-emmc", "allwinner.sun50i-a64-emmc"
-   * "allwinner,sun50i-h6-mmc", "allwinner.sun50i-a64-mmc"
- - reg : mmc controller base registers
- - clocks : a list with 4 phandle + clock specifier pairs
- - clock-names : must contain "ahb", "mmc", "output" and "sample"
- - interrupts : mmc controller interrupt
-
-Optional properties:
- - resets : phandle + reset specifier pair
- - reset-names : must contain "ahb"
- - for cd, bus-width and additional generic mmc parameters
-   please refer to mmc.txt within this directory
-
-Examples:
-	- Within .dtsi:
-	mmc0: mmc@1c0f000 {
-		compatible = "allwinner,sun5i-a13-mmc";
-		reg = <0x01c0f000 0x1000>;
-		clocks = <&ahb_gates 8>, <&mmc0_clk>, <&mmc0_output_clk>, <&mmc0_sample_clk>;
-		clock-names = "ahb", "mod", "output", "sample";
-		interrupts = <0 32 4>;
-		status = "disabled";
-	};
-
-	- Within dts:
-	mmc0: mmc@1c0f000 {
-		pinctrl-names = "default", "default";
-		pinctrl-0 = <&mmc0_pins_a>;
-		pinctrl-1 = <&mmc0_cd_pin_reference_design>;
-		bus-width = <4>;
-		cd-gpios = <&pio 7 1 0>; /* PH1 */
-		cd-inverted;
-		status = "okay";
-	};
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
