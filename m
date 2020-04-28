Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FA71BB6CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 08:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ItFw1os0GSDXCOZ4IYpJ84GX2rD2miSmFHhx3Kczdk4=; b=tIA
	azpIqGmJ1GMGTF2hU9vD/+2rlZ1BspZid4TO8FRjXRbbGm1L5gqTd1dRUu7XePIKzE6Hxa/KDBoaI
	PvH16sShPwDQrSjz0mbj2wsHJSvPKcdgi0VHoCwoch1hcaKdBnEiFhM8AQiBUOVcvVfDvFq5319Al
	7pjzWAFpBrlzfoZxlmfGSvp1b8pLj6H86MJyzU2iewvungh9H7wWgUqgvPA/m5gJlBKf+szg7AFhp
	DDlOWt6SBPKMMPrB9cRVxRR+g2IwaR4Bw5Ov+c4mx9+GnkP8jo603QIiQ/pwt5ACSHe61wzrwX+vj
	L56e8RjGGr8qSVvzavWH4JMwUFiYvJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJq2-0007O8-JK; Tue, 28 Apr 2020 06:35:26 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJpe-0006OR-HA
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 06:35:04 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 28 Apr 2020 15:35:01 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id C2875180105;
 Tue, 28 Apr 2020 15:35:01 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 28 Apr 2020 15:35:01 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 808AA1A01BB;
 Tue, 28 Apr 2020 15:35:01 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH 1/3] dt-bindings: phy: Convert UniPhier PCIe-PHY controller to
 json-schema
Date: Tue, 28 Apr 2020 15:34:48 +0900
Message-Id: <1588055690-13200-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_233502_862957_E24ADC14 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier PCIe-PHY controller to DT schema format.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../bindings/phy/socionext,uniphier-pcie-phy.yaml  | 77 ++++++++++++++++++++++
 .../devicetree/bindings/phy/uniphier-pcie-phy.txt  | 36 ----------
 2 files changed, 77 insertions(+), 36 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
new file mode 100644
index 0000000..86f4909
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/socionext,uniphier-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext UniPhier PCIe PHY
+
+description: |
+  This describes the devicetree bindings for PHY interface built into
+  PCIe controller implemented on Socionext UniPhier SoCs.
+
+maintainers:
+  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
+
+properties:
+  compatible:
+    enum:
+      - socionext,uniphier-pro5-pcie-phy
+      - socionext,uniphier-ld20-pcie-phy
+      - socionext,uniphier-pxs3-pcie-phy
+
+  reg:
+    description: PHY register region (offset and length)
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    oneOf:
+      - items:            # for Pro5
+        - const: gio
+        - const: link
+      - const: link       # for others
+
+  resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    oneOf:
+      - items:            # for Pro5
+        - const: gio
+        - const: link
+      - const: link       # for others
+
+  socionext,syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: A phandle to system control to set configurations for phy
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    pcie_phy: phy@66038000 {
+        compatible = "socionext,uniphier-ld20-pcie-phy";
+        reg = <0x66038000 0x4000>;
+        #phy-cells = <0>;
+        clock-names = "link";
+        clocks = <&sys_clk 24>;
+        reset-names = "link";
+        resets = <&sys_rst 24>;
+        socionext,syscon = <&soc_glue>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt b/Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt
deleted file mode 100644
index 3cee372..0000000
--- a/Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Socionext UniPhier PCIe PHY bindings
-
-This describes the devicetree bindings for PHY interface built into
-PCIe controller implemented on Socionext UniPhier SoCs.
-
-Required properties:
-- compatible: Should contain one of the following:
-    "socionext,uniphier-pro5-pcie-phy" - for Pro5 PHY
-    "socionext,uniphier-ld20-pcie-phy" - for LD20 PHY
-    "socionext,uniphier-pxs3-pcie-phy" - for PXs3 PHY
-- reg: Specifies offset and length of the register set for the device.
-- #phy-cells: Must be zero.
-- clocks: A list of phandles to the clock gate for PCIe glue layer
-	including this phy.
-- clock-names: For Pro5 only, should contain the following:
-    "gio", "link" - for Pro5 SoC
-- resets: A list of phandles to the reset line for PCIe glue layer
-	including this phy.
-- reset-names: For Pro5 only, should contain the following:
-    "gio", "link" - for Pro5 SoC
-
-Optional properties:
-- socionext,syscon: A phandle to system control to set configurations
-	for phy.
-
-Refer to phy/phy-bindings.txt for the generic PHY binding properties.
-
-Example:
-	pcie_phy: phy@66038000 {
-		compatible = "socionext,uniphier-ld20-pcie-phy";
-		reg = <0x66038000 0x4000>;
-		#phy-cells = <0>;
-		clocks = <&sys_clk 24>;
-		resets = <&sys_rst 24>;
-		socionext,syscon = <&soc_glue>;
-	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
