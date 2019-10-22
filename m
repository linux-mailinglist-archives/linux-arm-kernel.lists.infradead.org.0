Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB460E07CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aHj1rWWNVY/M4Kc4abVaOlKHGVu2p2f/TVye9gEU+Yo=; b=WPlMXH7lxlAtBx
	8eI35/I9BHyKUEPem0oVsTEMjtWweE4o4OkbCUWrHADE2sL52xxidGbEv+FMkOaouP3+EoSahXL1q
	t0CnPDi5NE6e0RfLJZzdWySjkYNG2Z/Jqe3XNOY08NAfi6mmWPkVsRqc0qJmEkGk07PQheyMQuEX8
	psZ+Mh1erdyVGdzTNLnfsjdAyfyeNAZ+u6PqRxgzRurBo339I2qPa5uGsarJpqaHCCScIDVx6hxXN
	Tlw+anXTEawe+BAiNOTvPW8CM/4igZLhEFZp7v68YMEb0qg/xLxhqt9BBaq4svcSDNiYXUPzk/LKO
	TqRTpO0g4dvD/CSTlGcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwO9-0005d5-Jr; Tue, 22 Oct 2019 15:48:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwNz-0005cJ-Ol
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:47:53 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37E52214B2;
 Tue, 22 Oct 2019 15:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571759269;
 bh=AejEtY/BzekHga8zdI53AO/Lgt0U9aGhqsnmnZTTvEk=;
 h=From:To:Cc:Subject:Date:From;
 b=uIwo/poRGQ2nZ+Ll0BT/EKjrLOkddCaonISjJKhlgNes7MYBprmOjkz0hJ5OVg9cU
 SQwcO1uSROrdizd+ThAd4149harMVJFT99FKVFGco96K5/coENG9iWDFQHEpNGGv7T
 uPkDFfV/Iu1SCgCew3BL5GqvjsqY5Ahn2GhbVQJU=
From: Maxime Ripard <mripard@kernel.org>
To: wg@grandegger.com,
	mkl@pengutronix.de,
	davem@davemloft.net
Subject: [PATCH] dt-bindings: can: Convert Allwinner A10 CAN controller to a
 schema
Date: Tue, 22 Oct 2019 17:47:45 +0200
Message-Id: <20191022154745.41865-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_084751_840937_377A2134 
X-CRM114-Status: GOOD (  12.64  )
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
 netdev@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-can@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The older Allwinner SoCs have a CAN controller that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 .../net/can/allwinner,sun4i-a10-can.yaml      | 51 +++++++++++++++++++
 .../devicetree/bindings/net/can/sun4i_can.txt | 36 -------------
 2 files changed, 51 insertions(+), 36 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/can/allwinner,sun4i-a10-can.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/can/sun4i_can.txt

diff --git a/Documentation/devicetree/bindings/net/can/allwinner,sun4i-a10-can.yaml b/Documentation/devicetree/bindings/net/can/allwinner,sun4i-a10-can.yaml
new file mode 100644
index 000000000000..770af7c46114
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/can/allwinner,sun4i-a10-can.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/can/allwinner,sun4i-a10-can.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 CAN Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: allwinner,sun7i-a20-can
+          - const: allwinner,sun4i-a10-can
+      - const: allwinner,sun4i-a10-can
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
+    can0: can@1c2bc00 {
+        compatible = "allwinner,sun7i-a20-can",
+                     "allwinner,sun4i-a10-can";
+        reg = <0x01c2bc00 0x400>;
+        interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&ccu CLK_APB1_CAN>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/net/can/sun4i_can.txt b/Documentation/devicetree/bindings/net/can/sun4i_can.txt
deleted file mode 100644
index f69845e6feaf..000000000000
--- a/Documentation/devicetree/bindings/net/can/sun4i_can.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Allwinner A10/A20 CAN controller Device Tree Bindings
------------------------------------------------------
-
-Required properties:
-- compatible: "allwinner,sun4i-a10-can"
-- reg: physical base address and size of the Allwinner A10/A20 CAN register map.
-- interrupts: interrupt specifier for the sole interrupt.
-- clock: phandle and clock specifier.
-
-Example
--------
-
-SoC common .dtsi file:
-
-	can0_pins_a: can0@0 {
-		allwinner,pins = "PH20","PH21";
-		allwinner,function = "can";
-		allwinner,drive = <0>;
-		allwinner,pull = <0>;
-	};
-...
-	can0: can@1c2bc00 {
-		compatible = "allwinner,sun4i-a10-can";
-		reg = <0x01c2bc00 0x400>;
-		interrupts = <0 26 4>;
-		clocks = <&apb1_gates 4>;
-		status = "disabled";
-	};
-
-Board specific .dts file:
-
-	can0: can@1c2bc00 {
-		pinctrl-names = "default";
-		pinctrl-0 = <&can0_pins_a>;
-		status = "okay";
-	};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
