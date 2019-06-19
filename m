Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B153D4B569
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k0ephA6Fcw5svUB9fyhdgmkiOFF60R6O23K61oHHQ8=; b=ZgInzxOjSM69fG
	ZF7A1QM9hgLRrHoRJxlWOUaB1gaAazsTbBAjUyj5s7USgW5rALHgh5EPCFfBq3OxbEFoxMRg+HMf8
	nY9cMAFqCbK17UdQOglAdZlF6+Thatnnm7OxF6UGFPJu2jH1jn+5kEA15uGnrShGwfJSA/SarvT7R
	AMQOh7IsAiX6aKnrhFhf9pvQJfWsObB4s5rcdrX0IimUxDYj55G6H9+zlJLKAeXC+y2mHxJOwRisO
	gbcbTuLz1tuseU9PACgj1ORMO1yPdmFODTdDvb0pOgVKNmqvZYQNlDmkSukA6A6tiP8/U6W8tMx9I
	yM3MzWMmmibOrLbyjbbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXDm-0004lf-UY; Wed, 19 Jun 2019 09:49:38 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXC5-0003ej-QF
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 09:47:56 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 711F94001C;
 Wed, 19 Jun 2019 09:47:42 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v3 03/16] dt-bindings: net: Add a YAML schemas for the generic
 MDIO options
Date: Wed, 19 Jun 2019 11:47:12 +0200
Message-Id: <89b834af795fa6ad5ba1f04a5a61c54204bf4f96.1560937626.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_024754_182976_CEA79871 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Antoine=20T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MDIO buses have a number of available device tree properties that can
be used in their device tree node. Add a YAML schemas for those.

Suggested-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v2:
  - New patch
---
 Documentation/devicetree/bindings/net/mdio.txt  | 38 +-------------
 Documentation/devicetree/bindings/net/mdio.yaml | 51 ++++++++++++++++++-
 2 files changed, 52 insertions(+), 37 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/mdio.yaml

diff --git a/Documentation/devicetree/bindings/net/mdio.txt b/Documentation/devicetree/bindings/net/mdio.txt
index e3e1603f256c..cf8a0105488e 100644
--- a/Documentation/devicetree/bindings/net/mdio.txt
+++ b/Documentation/devicetree/bindings/net/mdio.txt
@@ -1,37 +1 @@
-Common MDIO bus properties.
-
-These are generic properties that can apply to any MDIO bus.
-
-Optional properties:
-- reset-gpios: One GPIO that control the RESET lines of all PHYs on that MDIO
-  bus.
-- reset-delay-us: RESET pulse width in microseconds.
-
-A list of child nodes, one per device on the bus is expected. These
-should follow the generic phy.txt, or a device specific binding document.
-
-The 'reset-delay-us' indicates the RESET signal pulse width in microseconds and
-applies to all PHY devices. It must therefore be appropriately determined based
-on all PHY requirements (maximum value of all per-PHY RESET pulse widths).
-
-Example :
-This example shows these optional properties, plus other properties
-required for the TI Davinci MDIO driver.
-
-	davinci_mdio: ethernet@5c030000 {
-		compatible = "ti,davinci_mdio";
-		reg = <0x5c030000 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
-		reset-delay-us = <2>;
-
-		ethphy0: ethernet-phy@1 {
-			reg = <1>;
-		};
-
-		ethphy1: ethernet-phy@3 {
-			reg = <3>;
-		};
-	};
+This file has moved to mdio.yaml.
diff --git a/Documentation/devicetree/bindings/net/mdio.yaml b/Documentation/devicetree/bindings/net/mdio.yaml
new file mode 100644
index 000000000000..8f4f9d0a2882
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/mdio.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/mdio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MDIO Bus Generic Binding
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+  - Florian Fainelli <f.fainelli@gmail.com>
+  - Heiner Kallweit <hkallweit1@gmail.com>
+
+description:
+  These are generic properties that can apply to any MDIO bus. Any
+  MDIO bus must have a list of child nodes, one per device on the
+  bus. These should follow the generic ethernet-phy.yaml document, or
+  a device specific binding document.
+
+properties:
+  reset-gpios:
+    maxItems: 1
+    description:
+      The phandle and specifier for the GPIO that controls the RESET
+      lines of all PHYs on that MDIO bus.
+
+  reset-delay-us:
+    description:
+      RESET pulse width in microseconds. It applies to all PHY devices
+      and must therefore be appropriately determined based on all PHY
+      requirements (maximum value of all per-PHY RESET pulse widths).
+
+examples:
+  - |
+    davinci_mdio: ethernet@5c030000 {
+        compatible = "ti,davinci_mdio";
+        reg = <0x5c030000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        reset-gpios = <&gpio2 5 1>;
+        reset-delay-us = <2>;
+
+        ethphy0: ethernet-phy@1 {
+            reg = <1>;
+        };
+
+        ethphy1: ethernet-phy@3 {
+            reg = <3>;
+        };
+    };
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
