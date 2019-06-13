Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689A143689
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeFPt/XKhr56bqb3mc0/B75ROR4YEcJX8iV+yJhcxDA=; b=XMFBtyrlTb+JrO
	UAQJ28jrqTHPaFBvwvK9ZRiJc2em2L5Bawjl+ahR9XbNNPIqs3NdYaOiqLm91PTzv8o+QFhfA9xus
	R70YO0E2WEt/pviVChvmvoCrY1RdBCp9Qr/hTRjmHDrQiq8SpBUFABtYW9WFxe3+xWm8FHjIzKzKC
	iglnfZ1E5vI2DxsTUdQHEV2QiePe5LaDPHrX06Y80PLIkFB7IzW/Ld7fwdJW8UUSOL6xmRYHa+Ui9
	6CM7P9YMiWbxgG+y1Xj4NTBC/HXgbCGi4RjPiwZitMB2Jsf1Q23dFQVfYugpz5jxnpSQYU9HFQ/xp
	lWeto8pxmUYwS2iTq8Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPmW-0005VP-VQ; Thu, 13 Jun 2019 13:28:45 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPkJ-0003X3-5i
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:31 +0000
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id D481A240017;
 Thu, 13 Jun 2019 13:26:18 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 2/2] dt-bindings: nvmem: Convert Allwinner SID to a schema
Date: Thu, 13 Jun 2019 10:57:12 +0200
Message-Id: <20190613085712.22241-2-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190613085712.22241-1-maxime.ripard@bootlin.com>
References: <20190613085712.22241-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062627_577744_A40E7A58 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have an efuse supported in Linux, with a matching Device
Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../nvmem/allwinner,sun4i-a10-sid.yaml        | 51 +++++++++++++++++++
 .../bindings/nvmem/allwinner,sunxi-sid.txt    | 29 -----------
 2 files changed, 51 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
 delete mode 100644 Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt

diff --git a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
new file mode 100644
index 000000000000..c9efd6e2c134
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/allwinner,sun4i-a10-sid.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Security ID Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: "nvmem.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-sid
+      - allwinner,sun7i-a20-sid
+      - allwinner,sun8i-a83t-sid
+      - allwinner,sun8i-h3-sid
+      - allwinner,sun50i-a64-sid
+      - allwinner,sun50i-h5-sid
+      - allwinner,sun50i-h6-sid
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+    sid@1c23800 {
+        compatible = "allwinner,sun4i-a10-sid";
+        reg = <0x01c23800 0x10>;
+    };
+
+  - |
+    sid@1c23800 {
+        compatible = "allwinner,sun7i-a20-sid";
+        reg = <0x01c23800 0x200>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt b/Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt
deleted file mode 100644
index cfb18b4ef8f7..000000000000
--- a/Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-Allwinner sunxi-sid
-
-Required properties:
-- compatible: Should be one of the following:
-  "allwinner,sun4i-a10-sid"
-  "allwinner,sun7i-a20-sid"
-  "allwinner,sun8i-a83t-sid"
-  "allwinner,sun8i-h3-sid"
-  "allwinner,sun50i-a64-sid"
-  "allwinner,sun50i-h5-sid"
-  "allwinner,sun50i-h6-sid"
-
-- reg: Should contain registers location and length
-
-= Data cells =
-Are child nodes of sunxi-sid, bindings of which as described in
-bindings/nvmem/nvmem.txt
-
-Example for sun4i:
-	sid@1c23800 {
-		compatible = "allwinner,sun4i-a10-sid";
-		reg = <0x01c23800 0x10>
-	};
-
-Example for sun7i:
-	sid@1c23800 {
-		compatible = "allwinner,sun7i-a20-sid";
-		reg = <0x01c23800 0x200>
-	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
