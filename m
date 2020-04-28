Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312A71BB6CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 08:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sy7R8ZE7Jf96k+0f9paS1Aj9yCFB3d32kwz5GrfQPLI=; b=kKpu1SVPz4ZIY8ZClTNBoOWUVQ
	JycFUnPV0NyP569cFxQ/Ic0JdGHfsmsUbe6RvV3fJr90vr2vww58mFN+4tCBwcUtOeL6GoMr9+F1A
	R0h5Wh/zunjXOu31zNGOMNHykWdBwdArABGS5dM2rT/RaomZi0EzoY0b3c+5aQlkrf0A2R2ukOW0T
	TZ11zyT4TZU8EMa5idfjs2MnL+VcK3qSI33nZ7iV1EbDFHQIkuBY28ybs1QzpGLBJUulX0LELvp4I
	ns2OGLwGliEvPOYo9L2HxlumqELFDRSgPLw4rFMHgg9UpxOt18PY8w8dAp+/EWoA4QxrmipEToTZE
	mgYFR7Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJqE-0000gy-Ov; Tue, 28 Apr 2020 06:35:38 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJpf-0006YM-IK
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 06:35:05 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 28 Apr 2020 15:35:02 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id D7E00180105;
 Tue, 28 Apr 2020 15:35:02 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 28 Apr 2020 15:35:02 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id A5FC01A01BB;
 Tue, 28 Apr 2020 15:35:02 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH 2/3] dt-bindings: phy: Convert UniPhier USB2-PHY controller to
 json-schema
Date: Tue, 28 Apr 2020 15:34:49 +0900
Message-Id: <1588055690-13200-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588055690-13200-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1588055690-13200-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_233503_892311_6E4E6625 
X-CRM114-Status: GOOD (  18.33  )
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

Convert the UniPhier USB2-PHY conroller to DT schema format.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../bindings/phy/socionext,uniphier-usb2-phy.yaml  | 85 ++++++++++++++++++++++
 .../devicetree/bindings/phy/uniphier-usb2-phy.txt  | 45 ------------
 2 files changed, 85 insertions(+), 45 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/uniphier-usb2-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml
new file mode 100644
index 0000000..479b203
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/socionext,uniphier-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext UniPhier USB2 PHY
+
+description: |
+  This describes the devicetree bindings for PHY interface built into
+  USB2 controller implemented on Socionext UniPhier SoCs.
+  Pro4 SoC has both USB2 and USB3 host controllers, however, this USB3
+  controller doesn't include its own High-Speed PHY. This needs to specify
+  USB2 PHY instead of USB3 HS-PHY.
+
+maintainers:
+  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
+
+properties:
+  compatible:
+    enum:
+      - socionext,uniphier-pro4-usb2-phy
+      - socionext,uniphier-ld11-usb2-phy
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^phy@[0-9]+$":
+    type: object
+    additionalProperties: false
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+        description:
+          The ID number for the PHY
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - "#phy-cells"
+
+required:
+  - compatible
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    // The UniPhier usb2-phy should be a subnode of a "syscon" compatible node.
+
+    soc-glue@5f800000 {
+        compatible = "socionext,uniphier-ld11-soc-glue", "simple-mfd", "syscon";
+        reg = <0x5f800000 0x2000>;
+
+        usb-controller {
+            compatible = "socionext,uniphier-ld11-usb2-phy";
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            usb_phy0: phy@0 {
+                reg = <0>;
+                #phy-cells = <0>;
+            };
+
+            usb_phy1: phy@1 {
+                reg = <1>;
+                #phy-cells = <0>;
+            };
+
+            usb_phy2: phy@2 {
+                reg = <2>;
+                #phy-cells = <0>;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/phy/uniphier-usb2-phy.txt b/Documentation/devicetree/bindings/phy/uniphier-usb2-phy.txt
deleted file mode 100644
index b43b282..0000000
--- a/Documentation/devicetree/bindings/phy/uniphier-usb2-phy.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-Socionext UniPhier USB2 PHY
-
-This describes the devicetree bindings for PHY interface built into
-USB2 controller implemented on Socionext UniPhier SoCs.
-
-Pro4 SoC has both USB2 and USB3 host controllers, however, this USB3
-controller doesn't include its own High-Speed PHY. This needs to specify
-USB2 PHY instead of USB3 HS-PHY.
-
-Required properties:
-- compatible: Should contain one of the following:
-    "socionext,uniphier-pro4-usb2-phy" - for Pro4 SoC
-    "socionext,uniphier-ld11-usb2-phy" - for LD11 SoC
-
-Sub-nodes:
-Each PHY should be represented as a sub-node.
-
-Sub-nodes required properties:
-- #phy-cells: Should be 0.
-- reg: The number of the PHY.
-
-Sub-nodes optional properties:
-- vbus-supply: A phandle to the regulator for USB VBUS.
-
-Refer to phy/phy-bindings.txt for the generic PHY binding properties.
-
-Example:
-	soc-glue@5f800000 {
-		...
-		usb-phy {
-			compatible = "socionext,uniphier-ld11-usb2-phy";
-			usb_phy0: phy@0 {
-				reg = <0>;
-				#phy-cells = <0>;
-			};
-			...
-		};
-	};
-
-	usb@5a800100 {
-		compatible = "socionext,uniphier-ehci", "generic-ehci";
-		...
-		phy-names = "usb";
-		phys = <&usb_phy0>;
-	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
