Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BEA279EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpUZSy2swTOzjscviSXuX/75+huJwSTjY31+YFViD/E=; b=RBymlMTFmKznMp
	AZXtNX5qE4iAtgP5RZiWyPkNqSC3iwkLvu/oFswVo872lKfnBImlgZC3V879u/zQMFd3b+aWa5kVc
	YbDt2q8dy6R1j9m71xes1YqNPEqBCYc8kbSAa8sH9mZMtvpU/KOe3Nk8lNuYjwZlTjzUrrQJ7GUFz
	88jXnNnjTiwCjc5pmVNcMjtScVlf/98W8i1ultireQ7KIfgXijYdNds2+oa3poOLom9pUPqFJVgZn
	pf9m/p2I7XGUcX7kv8UfUQW1IP+L5LHTzKIzpqreBg6UcEAd81ByTQhttIEYXH8wWc/Xnr6QDiB/8
	3Vi7dSOjU0PTSfVrHDzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkUh-0000Ih-CM; Thu, 23 May 2019 09:58:39 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkTt-0007u4-Qm
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:58:00 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 96BFB1BF210;
 Thu, 23 May 2019 09:57:36 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 7/8] dt-bindings: net: sun7i-gmac: Convert the binding to a
 schemas
Date: Thu, 23 May 2019 11:56:50 +0200
Message-Id: <6f16585ffdc75af4e023c4d3ebba68feb65cc26e.1558605170.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_025750_529901_C71B0DE6 
X-CRM114-Status: GOOD (  13.48  )
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

Switch our Allwinner A20 GMAC controller binding to a YAML schema to enable
the DT validation. Since that controller is based on a Synopsys IP, let's
add the validation to that schemas with a bunch of conditionals.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt | 27 ---------------------------
 Documentation/devicetree/bindings/net/snps,dwmac.yaml              | 45 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt
deleted file mode 100644
index 8b3f953656e3..000000000000
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-* Allwinner GMAC ethernet controller
-
-This device is a platform glue layer for stmmac.
-Please see stmmac.txt for the other unchanged properties.
-
-Required properties:
- - compatible:  Should be "allwinner,sun7i-a20-gmac"
- - clocks: Should contain the GMAC main clock, and tx clock
-   The tx clock type should be "allwinner,sun7i-a20-gmac-clk"
- - clock-names: Should contain the clock names "stmmaceth",
-   and "allwinner_gmac_tx"
-
-Optional properties:
-- phy-supply: phandle to a regulator if the PHY needs one
-
-Examples:
-
-	gmac: ethernet@1c50000 {
-		compatible = "allwinner,sun7i-a20-gmac";
-		reg = <0x01c50000 0x10000>,
-		      <0x01c20164 0x4>;
-		interrupts = <0 85 1>;
-		interrupt-names = "macirq";
-		clocks = <&ahb_gates 49>, <&gmac_tx>;
-		clock-names = "stmmaceth", "allwinner_gmac_tx";
-		phy-mode = "mii";
-	};
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index be3ada5121e1..d213c32ef153 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -14,6 +14,7 @@ maintainers:
 properties:
   compatible:
     oneOf:
+      - const: allwinner,sun7i-a20-gmac
       - const: snps,dwmac
       - const: snps,dwmac-3.50a
       - const: snps,dwmac-3.610
@@ -232,6 +233,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - allwinner,sun7i-a20-gmac
             - snps,dwxgmac
             - snps,dwxgmac-2.10
             - st,spear600-gmac
@@ -273,6 +275,37 @@ allOf:
             Enables the TSO feature otherwise it will be managed by
             MAC HW capability register. Only for GMAC4 and newer.
 
+  - if:
+      properties:
+        compatible:
+          const: allwinner,sun7i-a20-gmac
+
+    then:
+      properties:
+        interrupts:
+          maxItems: 1
+
+        interrupt-names:
+          const: macirq
+
+        clocks:
+          items:
+            - description: GMAC main clock
+            - description: TX clock
+
+        clock-names:
+          items:
+            - const: stmmaceth
+            - const: allwinner_gmac_tx
+
+        phy-supply:
+          description:
+            PHY regulator
+
+      required:
+        - clocks
+        - clock-names
+
 examples:
   - |
     stmmac_axi_setup: stmmac-axi-config {
@@ -337,6 +370,18 @@ examples:
         };
     };
 
+  - |
+    gmac: ethernet@1c50000 {
+        compatible = "allwinner,sun7i-a20-gmac";
+        reg = <0x01c50000 0x10000>,
+              <0x01c20164 0x4>;
+        interrupts = <0 85 1>;
+        interrupt-names = "macirq";
+        clocks = <&ahb_gates 49>, <&gmac_tx>;
+        clock-names = "stmmaceth", "allwinner_gmac_tx";
+        phy-mode = "mii";
+    };
+
 # FIXME: We should set it, but it would report all the generic
 # properties as additional properties.
 # additionalProperties: false
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
