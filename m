Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8D43B220
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 11:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sVJ1u0rQ8DqSAmGX054Cjvg8qTXc+oijsabX6bcjak=; b=Li6glj93RB51cE
	ciLSpHhK37ws30YSs0dcKHZ61Ggv/qSPcQCj0FyMpw67i6nwRnwC8oTAIzUuOOxJhajzu513AK3vm
	AYdTsLFYpC8PQUGQK/ROIEP32M69knO5xscwLoQ6EvgbisYbm4FBbyXeBKjGwh+0JcRwEVzYzpM87
	6WwbN/OemrPvU6+kxPwUoS/Fa5mHZv5tw//BGsyGbXT57LnRYqzFM8lZihw7nH9kjjWIrEijjrkBq
	CmBz/V0oe7gJFfhb0oZBoSFcvyNzA0glunN2T5hYUk6D0ZpHgyvYcVWRU+AMZBHgP0XDWkRDYPweS
	sT1H2IWQTXQI3t2NdWKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGdg-0001Uv-M4; Mon, 10 Jun 2019 09:30:52 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGZi-0006UH-U0
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 09:26:52 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A773AC000B;
 Mon, 10 Jun 2019 09:26:42 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v2 10/11] dt-bindings: net: dwmac: Deprecate the PHY reset
 properties
Date: Mon, 10 Jun 2019 11:25:49 +0200
Message-Id: <ff6306c71a6b6ad174007f9f2823499d3093e21c.1560158667.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_022648_002905_D1099605 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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

Even though the DWMAC driver uses some driver specific properties, the PHY
core has a bunch of generic properties and can deal with them nicely.

Let's deprecate our specific properties.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - New patch
---
 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 54 ++++++------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index c48a089edc21..a2d56e8a7a39 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -171,26 +171,6 @@ properties:
             * snps,low_credit, max read outstanding req. limit
           * snps,priority, TX queue priority (Range 0x0 to 0xF)
 
-  snps,reset-gpio:
-    maxItems: 1
-    description:
-      PHY Reset GPIO
-
-  snps,reset-active-low:
-    $ref: /schemas/types.yaml#definitions/flag
-    description:
-      Indicates that the PHY Reset is active low
-
-  snps,reset-delays-us:
-    allOf:
-      - $ref: /schemas/types.yaml#definitions/uint32-array
-      - minItems: 3
-        maxItems: 3
-    description:
-      Triplet of delays. The 1st cell is reset pre-delay in micro
-      seconds. The 2nd cell is reset pulse in micro seconds. The 3rd
-      cell is reset post-delay in micro seconds.
-
   snps,aal:
     $ref: /schemas/types.yaml#definitions/flag
     description:
@@ -253,6 +233,36 @@ properties:
     required:
       - compatible
 
+  ## Deprecated properties
+  #
+  # Deprecated in favor of ethernet phy's reset-gpios property
+  # snps,reset-gpio:
+  #   maxItems: 1
+  #   description:
+  #     PHY Reset GPIO
+
+  # Deprecated in favor of ethernet phy's reset-gpios property
+  # snps,reset-active-low:
+  #   $ref: /schemas/types.yaml#definitions/flag
+  #   description:
+  #     Indicates that the PHY Reset is active low
+
+  # Deprecated in favor of ethernet phy's reset-assert-us and
+  # reset-deassert-us properties
+  # snps,reset-delays-us:
+  #   allOf:
+  #     - $ref: /schemas/types.yaml#definitions/uint32-array
+  #     - minItems: 3
+  #       maxItems: 3
+  #   description:
+  #     Triplet of delays. The 1st cell is reset pre-delay in micro
+  #     seconds. The 2nd cell is reset pulse in micro seconds. The 3rd
+  #     cell is reset post-delay in micro seconds.
+
+# dependencies:
+#   snps,reset-active-low: ["snps,reset-gpio"]
+#   snps,reset-delay-us: ["snps,reset-gpio"]
+
 required:
   - compatible
   - reg
@@ -260,10 +270,6 @@ required:
   - interrupt-names
   - phy-mode
 
-dependencies:
-  snps,reset-active-low: ["snps,reset-gpio"]
-  snps,reset-delay-us: ["snps,reset-gpio"]
-
 allOf:
   - $ref: "ethernet-controller.yaml#"
   - if:
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
