Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA4911DEE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:50:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aLN45wfchnGZ2cEVuEfvKrT16Ro7oj8QVuyS5bR7eKw=; b=h0DIou/DxLs4Tq
	wAExOlgYS00b5VJ41XrKmlZe6r16WDx5dmLpLOdpez1OspkF8ZvoYDwLNg+IVLCSX14sySzUvxxI7
	sumFCNf4QM1DQ1bsQXBZC1B6wzTHwYC6I7z4EcLd2EdDhoPpkoAIkvztU35Alvt3L4J2nB7yD5L3x
	ATxUmcbAvq/WYUG3jNBviOr2WxNqeiTlsmwLVKea4qWXgCpAY/vFnLW5K4n3Ar0JNIb/qrrvZY76+
	FnZPe4qSosiNexTrD99wZsR1SPSb0m5MwjfRphHi9wWpgHA5L9Y7/rYfAWpvhWlw8Tna9UIbABVyD
	Abjz+LHl0FdzZp7moJYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffi0-0006b3-9o; Fri, 13 Dec 2019 07:49:56 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffhn-0006Zl-Sa
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 07:49:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1125822784;
 Fri, 13 Dec 2019 02:49:43 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 13 Dec 2019 02:49:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=mJFqAJ0C3QCpWN2iUjPkDmdFvn
 znhTzLbrbNUZFsDHk=; b=M5Z0fhzEup+SlJRpXx8Nk9814SOijbwUlJwPFXr3Fp
 UXqpw5TDvfj53uwfP5k001Y0KKkIp3sJ3cYzvL4uM/IXYvnLSwLktwJEs56LQr5u
 ONz83jKed3LKu4T/4s7I4BXg7MigZxMWmdCxPEZ+Nf0MDMxJLgncD+u4Oc53/3iU
 43jlJXMsQKMt8OY0AbZ9vrAmgzwBpvrLT1UG05t48wWpJq5dq4iqiCkeIH4teVsG
 yZnXhDz4Agl3XjSZzV/kO0lhfCFXb27UMBkO4bliuoBRhBgcxunN4EBCBmzUJQx5
 WuFaqBkVj22GilvqhuhbKm580KicthIsSZY0/U6EJ4og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=mJFqAJ0C3QCpWN2iU
 jPkDmdFvnznhTzLbrbNUZFsDHk=; b=xZ+B6sOQYtZxyvToFKhUpaFvzQkiGu4k2
 D6M/OzzLo3y3zN0FMj6bGuZj5J9eK5Ul5pUQKbQa07XVXIchfOXMGf8jq02dmhUE
 X47btzYL4GBhsJRPzSamTYnNNnVvz8CAqAqqYLgvsQM5oShXYymZ7HW424A8+ASD
 RYWHPvkQVbZQ05gRqaT9d6OVUcjaBgGuXB2GFuDOreCUtX9HTX+oKh6VMNTd9sDI
 RA9qk6iDz+KRVjbkzlrJsYBxeml0XQuZ6Fx0RxjhnpBYwfbWij7ocHPyT2pNx4cE
 uFSZI+O37mrXTdNpQ26er2HxIFBzDr4SfYRsQKkliH/jR1YefStww==
X-ME-Sender: <xms:lkLzXZU9KDrpochxgUwvzHVDtY2_D3LFfhBduW93rjRu1WIZMAFpZg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelkedgudduvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enogevohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffo
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomh
 epmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:lkLzXQf9_gBrxN17AcTL8Ma1jJ5ZOsSrHDAgNj-2FlZd56KBp_9UfQ>
 <xmx:lkLzXduYbHuMJZUUQmKSo__iuMRC7xP9IKO5qpN5P1WKJzsRQZp-Yw>
 <xmx:lkLzXX8BF3j5y60ZmFiHgjESVUxrzH8OnQFfXiKt4SfeI7M1-RC9pw>
 <xmx:l0LzXdSX-vkhze1OcB_TTFVL9e23hD77BV-zKs4PVlnD6LXN07sjXQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B783880069;
 Fri, 13 Dec 2019 02:49:41 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] dt-bindings: ata: Convert Allwinner AHCI controller to a
 schema
Date: Fri, 13 Dec 2019 08:49:38 +0100
Message-Id: <20191213074938.27285-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_234948_080772_E772A193 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@kernel.dk, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-ide@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have a AHCI controllers that is supported in Linux, with
a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/ata/ahci-platform.txt | 12 ----
 .../ata/allwinner,sun4i-a10-ahci.yaml         | 47 +++++++++++++
 .../ata/allwinner,sun8i-r40-ahci.yaml         | 67 +++++++++++++++++++
 3 files changed, 114 insertions(+), 12 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ata/allwinner,sun4i-a10-ahci.yaml
 create mode 100644 Documentation/devicetree/bindings/ata/allwinner,sun8i-r40-ahci.yaml

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.txt b/Documentation/devicetree/bindings/ata/ahci-platform.txt
index 55c6fab1b373..77091a277642 100644
--- a/Documentation/devicetree/bindings/ata/ahci-platform.txt
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.txt
@@ -9,8 +9,6 @@ PHYs.
 
 Required properties:
 - compatible        : compatible string, one of:
-  - "allwinner,sun4i-a10-ahci"
-  - "allwinner,sun8i-r40-ahci"
   - "brcm,iproc-ahci"
   - "hisilicon,hisi-ahci"
   - "cavium,octeon-7130-ahci"
@@ -45,8 +43,6 @@ Required properties when using sub-nodes:
 - #address-cells    : number of cells to encode an address
 - #size-cells       : number of cells representing the size of an address
 
-For allwinner,sun8i-r40-ahci, the reset property must be present.
-
 Sub-nodes required properties:
 - reg		    : the port number
 And at least one of the following properties:
@@ -60,14 +56,6 @@ Examples:
 		interrupts = <115>;
         };
 
-	ahci: sata@1c18000 {
-		compatible = "allwinner,sun4i-a10-ahci";
-		reg = <0x01c18000 0x1000>;
-		interrupts = <56>;
-		clocks = <&pll6 0>, <&ahb_gates 25>;
-		target-supply = <&reg_ahci_5v>;
-	};
-
 With sub-nodes:
 	sata@f7e90000 {
 		compatible = "marvell,berlin2q-achi", "generic-ahci";
diff --git a/Documentation/devicetree/bindings/ata/allwinner,sun4i-a10-ahci.yaml b/Documentation/devicetree/bindings/ata/allwinner,sun4i-a10-ahci.yaml
new file mode 100644
index 000000000000..cb530b46beff
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/allwinner,sun4i-a10-ahci.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/allwinner,sun4i-a10-ahci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 AHCI SATA Controller bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  compatible:
+    const: allwinner,sun4i-a10-ahci
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: AHCI Bus Clock
+      - description: AHCI Module Clock
+
+  interrupts:
+    maxItems: 1
+
+  target-supply:
+    description: Regulator for SATA target power
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    ahci: sata@1c18000 {
+        compatible = "allwinner,sun4i-a10-ahci";
+        reg = <0x01c18000 0x1000>;
+        interrupts = <56>;
+        clocks = <&pll6 0>, <&ahb_gates 25>;
+        target-supply = <&reg_ahci_5v>;
+    };
diff --git a/Documentation/devicetree/bindings/ata/allwinner,sun8i-r40-ahci.yaml b/Documentation/devicetree/bindings/ata/allwinner,sun8i-r40-ahci.yaml
new file mode 100644
index 000000000000..e74d609be3cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/allwinner,sun8i-r40-ahci.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/allwinner,sun8i-r40-ahci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner R40 AHCI SATA Controller bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  compatible:
+    const: allwinner,sun8i-r40-ahci
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: AHCI Bus Clock
+      - description: AHCI Module Clock
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    description: AHCI Reset Line
+
+  reset-names:
+    const: ahci
+
+  ahci-supply:
+    description: Regulator for the AHCI controller
+
+  phy-supply:
+    description: Regulator for the SATA PHY power
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun8i-r40-ccu.h>
+    #include <dt-bindings/reset/sun8i-r40-ccu.h>
+
+    ahci: sata@1c18000 {
+        compatible = "allwinner,sun8i-r40-ahci";
+        reg = <0x01c18000 0x1000>;
+        interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&ccu CLK_BUS_SATA>, <&ccu CLK_SATA>;
+        resets = <&ccu RST_BUS_SATA>;
+        reset-names = "ahci";
+        ahci-supply = <&reg_dldo4>;
+        phy-supply = <&reg_eldo3>;
+    };
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
