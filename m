Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAB3279EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIQRSxPKKlTCYSc4FpCPPDl3ecvf7NFORIkFN3RmREI=; b=i0Ki0NEgR2kpqt
	oO7HqRp+sy3aOQyB8gXT5jH6/LtGfLkRGr5izAQioFGvtsA7gZe++YMgHiv4b39u0dcJFNFjVsLd0
	4m7YTM8GYCWE0/30xcQJw4MhVrtX6kxe0XEm9Pe4C4YKaooFe4/MarGrH2qZPiMlcAL8GWPVAyTEd
	14av8y+RJhS3vKhgVM1Z4hh2kSPcTkNUznm61UEFQe+AgeGLmgFTSOpPCaP1Ehp7JUgdfJnZ5iRLY
	CkfUvpwCZo00CKec/c0FEuM4qGK175u7etmy9BEpA77BRHt8jU4dthCd+VpAJntkryLzKITSvq/40
	9oRN1JXRIgTdzna7Q16g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkUn-0000Zo-Ni; Thu, 23 May 2019 09:58:45 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkTt-0007u3-Ql
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:58:00 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id CFDA61BF212;
 Thu, 23 May 2019 09:57:44 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 4/8] dt-bindings: net: sun4i-emac: Convert the binding to a
 schemas
Date: Thu, 23 May 2019 11:56:47 +0200
Message-Id: <7a886bbf96d9d546968f4cae289a67ef6212cb9e.1558605170.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_025750_566542_4354DE0B 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 =?UTF-8?q?Antoine=20T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch our Allwinner A10 EMAC controller binding to a YAML schema to enable
the DT validation.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml | 55 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Documentation/devicetree/bindings/net/allwinner,sun4i-emac.txt      | 19 -------------------
 2 files changed, 55 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-emac.txt

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
new file mode 100644
index 000000000000..b5d82d0a59d8
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/allwinner,sun4i-a10-emac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 EMAC Ethernet Controller Device Tree Bindings
+
+allOf:
+  - $ref: "ethernet-controller.yaml#"
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    const: allwinner,sun4i-a10-emac
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
+  allwinner,sram:
+    description: Phandle to the device SRAM
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - phy
+  - allwinner,sram
+
+examples:
+  - |
+    emac: ethernet@1c0b000 {
+        compatible = "allwinner,sun4i-a10-emac";
+        reg = <0x01c0b000 0x1000>;
+        interrupts = <55>;
+        clocks = <&ahb_gates 17>;
+        phy = <&phy0>;
+    };
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+...
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-emac.txt b/Documentation/devicetree/bindings/net/allwinner,sun4i-emac.txt
deleted file mode 100644
index e98118aef5f6..000000000000
--- a/Documentation/devicetree/bindings/net/allwinner,sun4i-emac.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-* Allwinner EMAC ethernet controller
-
-Required properties:
-- compatible: should be "allwinner,sun4i-a10-emac" (Deprecated:
-              "allwinner,sun4i-emac")
-- reg: address and length of the register set for the device.
-- interrupts: interrupt for the device
-- phy: see ethernet.txt file in the same directory.
-- clocks: A phandle to the reference clock for this device
-
-Example:
-
-emac: ethernet@1c0b000 {
-       compatible = "allwinner,sun4i-a10-emac";
-       reg = <0x01c0b000 0x1000>;
-       interrupts = <55>;
-       clocks = <&ahb_gates 17>;
-       phy = <&phy0>;
-};
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
