Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6C9C87EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 14:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rhjsxrrXhEKJruq9RXcALMocdXQTaSoCH1r1DI/o5Ck=; b=lei3ejsK1fgSl8
	06VW/fIFqa/Zkgemo++6VyLqZy0xU+H3UoIiA40M0h6okXOEET1+hBbDHPpspir0axKCA/VHx9XOx
	wT4kXVGtmGLe/SkrmiEGGZstgFYSle8tLlznLOiNUxTwaOzF7zbQZ3yfTwyT2+2kaELehYeYOhLqR
	DcWvJ7T29GwjAl9DZwhhW/RAmLDoBX5o7s4bbzi9bYKg0gzjfQ5ClJoYjIpEOxkUoLArqPpaNOT0x
	woRUpOPYpln0l2nRYRj1aGE06cx/8OGafIPhdzN6oQewfHXLQ9cZQbbw2T6/0376eDKineCSXV60i
	1kxGaLgKEDSuswDD5Gwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFdPM-0001ef-2s; Wed, 02 Oct 2019 12:07:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFdPC-0001dz-VL
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 12:06:56 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECB95218DE;
 Wed,  2 Oct 2019 12:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570018012;
 bh=BRjR7cgK8oDZRXoILOXWVS7VjsEqlprYhyXRBZYgXM0=;
 h=From:To:Cc:Subject:Date:From;
 b=uiWgwYHJMPqydTnL83AaLxC2EwSLbxNlla9OyLXqvRFm3DhDWFvOYCGJJtZQgQ3gA
 5pvLWiiOCeQjuxkhwem2HZu8yz08U/oS1nLOmCclKgxkwsWWV8q+6puP2abvfrZXLw
 SvHK8v/b2H+MTsA1w5AOuJs8UkgcdbAb+Cv4CwGE=
From: Maxime Ripard <mripard@kernel.org>
To: dmitry.torokhov@gmail.com, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] dt-bindings: serio: Convert Allwinner PS2 controller to a
 schema
Date: Wed,  2 Oct 2019 14:06:45 +0200
Message-Id: <20191002120645.102805-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_050655_047086_DE91618F 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The older Allwinner SoCs have a PS2 controller that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 .../serio/allwinner,sun4i-a10-ps2.yaml        | 51 +++++++++++++++++++
 .../bindings/serio/allwinner,sun4i-ps2.txt    | 22 --------
 2 files changed, 51 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml
 delete mode 100644 Documentation/devicetree/bindings/serio/allwinner,sun4i-ps2.txt

diff --git a/Documentation/devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml b/Documentation/devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml
new file mode 100644
index 000000000000..ee9712f1c97d
--- /dev/null
+++ b/Documentation/devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serio/allwinner,sun4i-a10-ps2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 PS2 Host Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+description:
+  A20 PS2 is dual role controller (PS2 host and PS2 device). These
+  bindings for PS2 A10/A20 host controller. IBM compliant IBM PS2 and
+  AT-compatible keyboard and mouse can be connected.
+
+properties:
+  compatible:
+    const: allwinner,sun4i-a10-ps2
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun7i-a20-ccu.h>
+
+    ps20: ps2@1c2a000 {
+        compatible = "allwinner,sun4i-a10-ps2";
+        reg = <0x01c2a000 0x400>;
+        interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&ccu CLK_APB1_PS20>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/serio/allwinner,sun4i-ps2.txt b/Documentation/devicetree/bindings/serio/allwinner,sun4i-ps2.txt
deleted file mode 100644
index 75996b6111bb..000000000000
--- a/Documentation/devicetree/bindings/serio/allwinner,sun4i-ps2.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-* Device tree bindings for Allwinner A10, A20 PS2 host controller
-
-A20 PS2 is dual role controller (PS2 host and PS2 device). These bindings are
-for PS2 A10/A20 host controller. IBM compliant IBM PS2 and AT-compatible keyboard
-and mouse can be connected.
-
-Required properties:
-
- - reg             : Offset and length of the register set for the device.
- - compatible      : Should be as of the following:
-                     - "allwinner,sun4i-a10-ps2"
- - interrupts      : The interrupt line connected to the PS2.
- - clocks          : The gate clk connected to the PS2.
-
-
-Example:
-	ps20: ps2@01c2a000 {
-		compatible = "allwinner,sun4i-a10-ps2";
-		reg = <0x01c2a000 0x400>;
-		interrupts = <0 62 4>;
-		clocks = <&apb1_gates 6>;
-	};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
