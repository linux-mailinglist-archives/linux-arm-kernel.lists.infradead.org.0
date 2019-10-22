Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5FCE0898
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZFw5mF5mumRqzV9nWIP2s2XwYMfunpeWUdx4M9uydws=; b=rxcmdr4ORGltWz
	rnSCoWhioFV5+Nj2aRpBWBS0zr3vCtsKyNXivk9+43ojfMiPUM8qsiN7WhPtsR5neczvcHQoSqc74
	aX9zAHJG/rRaVv5BlPhFduBidsNlLWkyRhk1GN2REd+KmRcmv938Ys5SpFqvly0mjudV+aH8ufLrO
	1q+LDWDVjkbefTs77VFqfMWyNHyzePe7Bw/8ljpFkPq04mH7VNsAjEm9DGHRSIEzTJOZnY20sSTzY
	v4r9jjqbyeYmO1n0yFO7G1ch5wqOMsgqZH2lFb47vXxWagLyoYiaB2NlwqN44A4soPDGCWL1FY7Bn
	KF9OEA6jGnp+30YRxYww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwtL-0004n0-VA; Tue, 22 Oct 2019 16:20:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwt1-0004m2-CX
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:19:58 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B71C52084B;
 Tue, 22 Oct 2019 16:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571761195;
 bh=DQF9Hp8z/WVu5AKT2YcHYod3pgOyWQnl03sIJ94C5NU=;
 h=From:To:Cc:Subject:Date:From;
 b=F65+8XoNPDW2X39qA8wF0MIRpBQr6j0BW5Ekl2E4OgyyWNfxpzkcf+n1kXtTC5j86
 ZrfXRkbxRUXY9A2H5FQl+PxnUtc874PjDrHu/fJ3fLujQNvGYl/cEQOEVKpr0jlA2w
 GvSbpPGOSjmwYRjxSUlAt8+4KefaSXJU6l2HVWRw=
From: Maxime Ripard <mripard@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] dt-bindings: usb: Convert Allwinner A10 mUSB controller to a
 schema
Date: Tue, 22 Oct 2019 18:19:51 +0200
Message-Id: <20191022161951.43567-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_091955_461964_C1595693 
X-CRM114-Status: GOOD (  12.80  )
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
 linux-usb@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have an mUSB controller that is supported in Linux, with
a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 .../bindings/usb/allwinner,sun4i-a10-musb.txt |  28 -----
 .../usb/allwinner,sun4i-a10-musb.yaml         | 101 ++++++++++++++++++
 2 files changed, 101 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
 create mode 100644 Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml

diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
deleted file mode 100644
index 50abb20fe319..000000000000
--- a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Allwinner sun4i A10 musb DRC/OTG controller
--------------------------------------------
-
-Required properties:
- - compatible      : "allwinner,sun4i-a10-musb", "allwinner,sun6i-a31-musb",
-                     "allwinner,sun8i-a33-musb" or "allwinner,sun8i-h3-musb"
- - reg             : mmio address range of the musb controller
- - clocks          : clock specifier for the musb controller ahb gate clock
- - reset           : reset specifier for the ahb reset (A31 and newer only)
- - interrupts      : interrupt to which the musb controller is connected
- - interrupt-names : must be "mc"
- - phys            : phy specifier for the otg phy
- - phy-names       : must be "usb"
- - dr_mode         : Dual-Role mode must be "host" or "otg"
- - extcon          : extcon specifier for the otg phy
-
-Example:
-
-	usb_otg: usb@1c13000 {
-		compatible = "allwinner,sun4i-a10-musb";
-		reg = <0x01c13000 0x0400>;
-		clocks = <&ahb_gates 0>;
-		interrupts = <38>;
-		interrupt-names = "mc";
-		phys = <&usbphy 0>;
-		phy-names = "usb";
-		extcon = <&usbphy 0>;
-	};
diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
new file mode 100644
index 000000000000..81d0189ed5c8
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
@@ -0,0 +1,101 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/allwinner,sun4i-a10-musb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 mUSB OTG Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-musb
+      - const: allwinner,sun6i-a31-musb
+      - const: allwinner,sun8i-a33-musb
+      - items:
+          - const: allwinner,sun8i-a83t-musb
+          - const: allwinner,sun8i-a33-musb
+      - const: allwinner,sun8i-h3-musb
+      - items:
+          - const: allwinner,sun50i-h6-musb
+          - const: allwinner,sun8i-a33-musb
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    const: mc
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  phys:
+    description: PHY specifier for the OTG PHY
+
+  phy-names:
+    const: usb
+
+  extcon:
+    description: Extcon specifier for the OTG PHY
+
+  dr_mode:
+    enum:
+      - host
+      - otg
+      - peripheral
+
+  allwinner,sram:
+    description: Phandle to the device SRAM
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - phys
+  - phy-names
+  - dr_mode
+  - extcon
+
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - allwinner,sun6i-a31-musb
+          - allwinner,sun8i-a33-musb
+          - allwinner,sun8i-h3-musb
+
+then:
+  required:
+    - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    usb_otg: usb@1c13000 {
+      compatible = "allwinner,sun4i-a10-musb";
+      reg = <0x01c13000 0x0400>;
+      clocks = <&ahb_gates 0>;
+      interrupts = <38>;
+      interrupt-names = "mc";
+      phys = <&usbphy 0>;
+      phy-names = "usb";
+      extcon = <&usbphy 0>;
+      dr_mode = "peripheral";
+    };
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
