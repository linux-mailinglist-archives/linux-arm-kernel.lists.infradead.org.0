Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C49E088E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0gwU1JSlOxJeqlUQpIJ3AHKv5sMKbkHXpV3ye28uRUs=; b=UDwcAOheyRU2qQ
	ETTjE3ORoVQ5hPzt4p3Hbc1f8mce3UKxGkspUw6Dh4Z80wH5z6dp7jMi90UnCjU9GmuBe16d3uyMH
	p8fgznJ39obJLeUgqMODlFT2PR0RiddND2MJYpi/eODnGWsHkwNdTA99U+SdGxzjC9rvmPOEVcwMP
	G1Z88h6BXHz0ZMxgqySQe47Fqw1W0tALPgBqAZkr+RMBLDYyn63xmxAdW1jQnzQKv4P8zMrgY2WKK
	C/QkcCjmQwosN4QMSNy9VNCmQnu9t+T7HNBlam6AS7R3w2uH+yUNRIpLG7thZ02amG300GjEBoG2u
	MBkFSYlGCeiwCkdbVz2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwrY-00048i-Oz; Tue, 22 Oct 2019 16:18:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwrO-000487-5d
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:18:16 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55EFD2084B;
 Tue, 22 Oct 2019 16:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571761093;
 bh=jb2yivL9+yU50fRNaBve8WRydtDuHo00D82uLsrkOMs=;
 h=From:To:Cc:Subject:Date:From;
 b=nUVpEuF+SO3z5Z8A96SfHT5XvHvk9vBjxGfGP+8J8BDgzdPCPD4OkT4nWMSjfUJLL
 3iN18UJ6LjZAdl8jF5t26k11Vfv4lSwC0ikJn0daDIXw5vH8FhFDa6sIz9V9p/TwkU
 KRYZz/Xf1/tKmmjNxhHAlAwM4w67cY3gdaaGbxvg=
From: Maxime Ripard <mripard@kernel.org>
To: kishon@ti.com
Subject: [PATCH] dt-bindings: usb: Convert Allwinner USB PHY controller to a
 schema
Date: Tue, 22 Oct 2019 18:18:10 +0200
Message-Id: <20191022161810.43451-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_091814_255691_BB6FAC95 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have a USB PHY controller that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 .../phy/allwinner,sun4i-a10-usb-phy.yaml      | 541 ++++++++++++++++++
 .../devicetree/bindings/phy/sun4i-usb-phy.txt |  68 ---
 2 files changed, 541 insertions(+), 68 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
new file mode 100644
index 000000000000..de63a5eb1e2a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
@@ -0,0 +1,541 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun4i-a10-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-usb-phy
+      - allwinner,sun5i-a13-usb-phy
+      - allwinner,sun6i-a31-usb-phy
+      - allwinner,sun7i-a20-usb-phy
+      - allwinner,sun8i-a23-usb-phy
+      - allwinner,sun8i-a33-usb-phy
+      - allwinner,sun8i-a83t-usb-phy
+      - allwinner,sun8i-h3-usb-phy
+      - allwinner,sun8i-r40-usb-phy
+      - allwinner,sun8i-v3s-usb-phy
+      - allwinner,sun50i-a64-usb-phy
+      - allwinner,sun50i-h6-usb-phy
+
+  reg:
+    anyOf:
+      - minItems: 2
+        maxItems: 3
+        items:
+          - description: PHY Control registers
+          - description: PHY PMU1 registers
+          - description: PHY PMU2 registers
+
+      - minItems: 2
+        maxItems: 5
+        items:
+          - description: PHY Control registers
+          - description: PHY PMU0 registers
+          - description: PHY PMU1 registers
+          - description: PHY PMU2 registers
+          - description: PHY PMU3 registers
+
+      - items:
+          - description: PHY Control registers
+          - description: PHY PMU0 registers
+          - description: PHY PMU3 registers
+
+  reg-names:
+    oneOf:
+      - minItems: 2
+        maxItems: 3
+        items:
+          - const: phy_ctrl
+          - const: pmu1
+          - const: pmu2
+
+      - minItems: 2
+        maxItems: 5
+        items:
+          - const: phy_ctrl
+          - const: pmu0
+          - const: pmu1
+          - const: pmu2
+          - const: pmu3
+
+      - items:
+          - const: phy_ctrl
+          - const: pmu0
+          - const: pmu3
+
+  clocks:
+    anyOf:
+      - description: USB PHY bus clock
+
+      - minItems: 1
+        maxItems: 4
+        items:
+          - description: USB OTG PHY bus clock
+          - description: USB Host 0 PHY bus clock
+          - description: USB Host 1 PHY bus clock
+          - description: USB Host 2 PHY bus clock
+
+      - items:
+          - description: USB OTG PHY bus clock
+          - description: USB Host 0 PHY bus clock
+          - description: USB Host 1 PHY bus clock
+          - description: USB HSIC 12MHz clock
+
+      - items:
+          - description: USB OTG PHY bus clock
+          - description: USB Host PHY bus clock
+
+  clock-names:
+    oneOf:
+      - const: usb_phy
+
+      - minItems: 1
+        maxItems: 4
+        items:
+          - const: usb0_phy
+          - const: usb1_phy
+          - const: usb2_phy
+          - const: usb3_phy
+
+      - items:
+          - const: usb0_phy
+          - const: usb1_phy
+          - const: usb2_phy
+          - const: usb2_hsic_12M
+
+      - items:
+          - const: usb0_phy
+          - const: usb3_phy
+
+  resets:
+    anyOf:
+      - minItems: 1
+        maxItems: 4
+        items:
+          - description: USB OTG reset
+          - description: USB Host 1 Controller reset
+          - description: USB Host 2 Controller reset
+          - description: USB Host 3 Controller reset
+
+      - items:
+          - description: USB OTG reset
+          - description: USB Host Controller reset
+
+  reset-names:
+    oneOf:
+      - minItems: 1
+        maxItems: 4
+        items:
+          - const: usb0_reset
+          - const: usb1_reset
+          - const: usb2_reset
+          - const: usb3_reset
+
+      - items:
+          - const: usb0_reset
+          - const: usb3_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb1_vbus-supply:
+    description: Regulator controlling USB1 Host controller
+
+  usb2_vbus-supply:
+    description: Regulator controlling USB2 Host controller
+
+  usb3_vbus-supply:
+    description: Regulator controlling USB3 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun4i-a10-usb-phy
+              - allwinner,sun7i-a20-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 3
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu1
+            - const: pmu2
+
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          const: usb_phy
+
+        resets:
+          maxItems: 3
+
+        reset-names:
+          items:
+            - const: usb0_reset
+            - const: usb1_reset
+            - const: usb2_reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun5i-a13-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 2
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu1
+
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          const: usb_phy
+
+        resets:
+          maxItems: 2
+
+        reset-names:
+          items:
+            - const: usb0_reset
+            - const: usb1_reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun6i-a31-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 3
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu1
+            - const: pmu2
+
+        clocks:
+          maxItems: 3
+
+        clock-names:
+          items:
+            - const: usb0_phy
+            - const: usb1_phy
+            - const: usb2_phy
+
+        resets:
+          maxItems: 3
+
+        reset-names:
+          items:
+            - const: usb0_reset
+            - const: usb1_reset
+            - const: usb2_reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun8i-a23-usb-phy
+              - allwinner,sun8i-a33-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 2
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu1
+
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: usb0_phy
+            - const: usb1_phy
+
+        resets:
+          maxItems: 2
+
+        reset-names:
+          items:
+            - const: usb0_reset
+            - const: usb1_reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-a83t-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 3
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu1
+            - const: pmu2
+
+        clocks:
+          maxItems: 4
+
+        clock-names:
+          items:
+            - const: usb0_phy
+            - const: usb1_phy
+            - const: usb2_phy
+            - const: usb2_hsic_12M
+
+        resets:
+          maxItems: 3
+
+        reset-names:
+          items:
+            - const: usb0_reset
+            - const: usb1_reset
+            - const: usb2_reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-h3-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 5
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu0
+            - const: pmu1
+            - const: pmu2
+            - const: pmu3
+
+        clocks:
+          maxItems: 4
+
+        clock-names:
+          items:
+            - const: usb0_phy
+            - const: usb1_phy
+            - const: usb2_phy
+            - const: usb3_phy
+
+        resets:
+          maxItems: 4
+
+        reset-names:
+          items:
+            - const: usb0_reset
+            - const: usb1_reset
+            - const: usb2_reset
+            - const: usb3_reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-r40-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 4
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu0
+            - const: pmu1
+            - const: pmu2
+
+        clocks:
+          maxItems: 3
+
+        clock-names:
+          items:
+            - const: usb0_phy
+            - const: usb1_phy
+            - const: usb2_phy
+
+        resets:
+          maxItems: 3
+
+        reset-names:
+          items:
+            - const: usb0_reset
+            - const: usb1_reset
+            - const: usb2_reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-v3s-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 2
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu0
+
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          const: usb0_phy
+
+        resets:
+          maxItems: 1
+
+        reset-names:
+          const: usb0_reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun50i-a64-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 3
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu0
+            - const: pmu1
+
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: usb0_phy
+            - const: usb1_phy
+
+        resets:
+          maxItems: 2
+
+        reset-names:
+          items:
+            - const: usb0_reset
+            - const: usb1_reset
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun50i-h6-usb-phy
+
+    then:
+      properties:
+        reg:
+          maxItems: 3
+
+        reg-names:
+          items:
+            - const: phy_ctrl
+            - const: pmu0
+            - const: pmu3
+
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: usb0_phy
+            - const: usb3_phy
+
+        resets:
+          maxItems: 2
+
+        reset-names:
+          items:
+            - const: usb0_reset
+            - const: usb3_reset
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    usbphy: phy@01c13400 {
+        compatible = "allwinner,sun4i-a10-usb-phy";
+        reg = <0x01c13400 0x10>, <0x01c14800 0x4>, <0x01c1c800 0x4>;
+        reg-names = "phy_ctrl", "pmu1", "pmu2";
+        clocks = <&usb_clk 8>;
+        clock-names = "usb_phy";
+        resets = <&usb_clk 0>, <&usb_clk 1>, <&usb_clk 2>;
+        reset-names = "usb0_reset", "usb1_reset", "usb2_reset";
+        usb0_id_det-gpios = <&pio 7 19 GPIO_ACTIVE_HIGH>;
+        usb0_vbus_det-gpios = <&pio 7 22 GPIO_ACTIVE_HIGH>;
+        usb0_vbus-supply = <&reg_usb0_vbus>;
+        usb1_vbus-supply = <&reg_usb1_vbus>;
+        usb2_vbus-supply = <&reg_usb2_vbus>;
+        #phy-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt b/Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt
deleted file mode 100644
index f2e120af17f0..000000000000
--- a/Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt
+++ /dev/null
@@ -1,68 +0,0 @@
-Allwinner sun4i USB PHY
------------------------
-
-Required properties:
-- compatible : should be one of
-  * allwinner,sun4i-a10-usb-phy
-  * allwinner,sun5i-a13-usb-phy
-  * allwinner,sun6i-a31-usb-phy
-  * allwinner,sun7i-a20-usb-phy
-  * allwinner,sun8i-a23-usb-phy
-  * allwinner,sun8i-a33-usb-phy
-  * allwinner,sun8i-a83t-usb-phy
-  * allwinner,sun8i-h3-usb-phy
-  * allwinner,sun8i-r40-usb-phy
-  * allwinner,sun8i-v3s-usb-phy
-  * allwinner,sun50i-a64-usb-phy
-  * allwinner,sun50i-h6-usb-phy
-- reg : a list of offset + length pairs
-- reg-names :
-  * "phy_ctrl"
-  * "pmu0" for H3, V3s, A64 or H6
-  * "pmu1"
-  * "pmu2" for sun4i, sun6i, sun7i, sun8i-a83t or sun8i-h3
-  * "pmu3" for sun8i-h3 or sun50i-h6
-- #phy-cells : from the generic phy bindings, must be 1
-- clocks : phandle + clock specifier for the phy clocks
-- clock-names :
-  * "usb_phy" for sun4i, sun5i or sun7i
-  * "usb0_phy", "usb1_phy" and "usb2_phy" for sun6i
-  * "usb0_phy", "usb1_phy" for sun8i
-  * "usb0_phy", "usb1_phy", "usb2_phy" and "usb2_hsic_12M" for sun8i-a83t
-  * "usb0_phy", "usb1_phy", "usb2_phy" and "usb3_phy" for sun8i-h3
-  * "usb0_phy" and "usb3_phy" for sun50i-h6
-- resets : a list of phandle + reset specifier pairs
-- reset-names :
-  * "usb0_reset"
-  * "usb1_reset"
-  * "usb2_reset" for sun4i, sun6i, sun7i, sun8i-a83t or sun8i-h3
-  * "usb3_reset" for sun8i-h3 and sun50i-h6
-
-Optional properties:
-- usb0_id_det-gpios : gpio phandle for reading the otg id pin value
-- usb0_vbus_det-gpios : gpio phandle for detecting the presence of usb0 vbus
-- usb0_vbus_power-supply: power-supply phandle for usb0 vbus presence detect
-- usb0_vbus-supply : regulator phandle for controller usb0 vbus
-- usb1_vbus-supply : regulator phandle for controller usb1 vbus
-- usb2_vbus-supply : regulator phandle for controller usb2 vbus
-- usb3_vbus-supply : regulator phandle for controller usb3 vbus
-
-Example:
-	usbphy: phy@01c13400 {
-		#phy-cells = <1>;
-		compatible = "allwinner,sun4i-a10-usb-phy";
-		/* phy base regs, phy1 pmu reg, phy2 pmu reg */
-		reg = <0x01c13400 0x10 0x01c14800 0x4 0x01c1c800 0x4>;
-		reg-names = "phy_ctrl", "pmu1", "pmu2";
-		clocks = <&usb_clk 8>;
-		clock-names = "usb_phy";
-		resets = <&usb_clk 0>, <&usb_clk 1>, <&usb_clk 2>;
-		reset-names = "usb0_reset", "usb1_reset", "usb2_reset";
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb0_id_detect_pin>, <&usb0_vbus_detect_pin>;
-		usb0_id_det-gpios = <&pio 7 19 GPIO_ACTIVE_HIGH>; /* PH19 */
-		usb0_vbus_det-gpios = <&pio 7 22 GPIO_ACTIVE_HIGH>; /* PH22 */
-		usb0_vbus-supply = <&reg_usb0_vbus>;
-		usb1_vbus-supply = <&reg_usb1_vbus>;
-		usb2_vbus-supply = <&reg_usb2_vbus>;
-	};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
