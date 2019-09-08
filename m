Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0973BAD0FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 00:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lTRMoMdM1X8/ru2Mna80CxL69j5Xp+G6atUwH4BpL4c=; b=Qu6
	aVFbhIaxeF+deCuTvXWjZCloFYd7j0SzwKOfF9MXgXtglsMVFMLKsy1N+/IYvIZNBYMXX1IzSA1mJ
	cqg6bJ6ajoYDSvDGFb0p65SelxfBn0fmT7ua2bb3k4NxDFw1NHa6lU4PB8QThvtjFgpMGkT4UkEEI
	79ypQ9JjJNddeNRzfW61YFhnYhAdHUiCIIDbWijRlCUb+GaRW6u9nUzzJw52MtiLR5qNyspi7+K79
	5ZoKUvfOw5GzFl7O4t3lxkDc/0FThLos2ZlO1dK3YZsVE3/LTtrDA8uB+mDKv3iPV1a60TibbZ4+W
	cndQRRjMeKPqAZYYavrxLOjuaYfB+PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i75SL-0001EB-8J; Sun, 08 Sep 2019 22:14:49 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i75S8-00017o-If
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 22:14:38 +0000
Received: from penelope.horms.nl (195-23-252-147.net.novis.pt [195.23.252.147])
 by kirsty.vergenet.net (Postfix) with ESMTPA id A8DC425B705;
 Mon,  9 Sep 2019 08:14:27 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id ED21AE210B7; Sun,  8 Sep 2019 14:05:34 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: [PATCH v2] dt-bindings: arm: renesas: Convert 'renesas,
 prr' to json-schema
Date: Sun,  8 Sep 2019 13:05:28 +0100
Message-Id: <20190908120528.9392-1-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_151436_770731_01F7940C 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Renesas Product Register bindings documentation to json-schema.

Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
Based on v5.3-rc1
Tested using:
  make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/renesas,prr.yaml

v2
* Use simple enum for compat values
* Drop "" from compat values
* Only supply 'maxItems' property to 'reg'
---
 .../devicetree/bindings/arm/renesas,prr.txt        | 20 -------------
 .../devicetree/bindings/arm/renesas,prr.yaml       | 35 ++++++++++++++++++++++
 2 files changed, 35 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.txt
 create mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.yaml

diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.txt b/Documentation/devicetree/bindings/arm/renesas,prr.txt
deleted file mode 100644
index 08e482e953ca..000000000000
--- a/Documentation/devicetree/bindings/arm/renesas,prr.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Renesas Product Register
-
-Most Renesas ARM SoCs have a Product Register or Boundary Scan ID Register that
-allows to retrieve SoC product and revision information.  If present, a device
-node for this register should be added.
-
-Required properties:
-  - compatible: Must be one of:
-    "renesas,prr"
-    "renesas,bsid"
-  - reg: Base address and length of the register block.
-
-
-Examples
---------
-
-	prr: chipid@ff000044 {
-		compatible = "renesas,prr";
-		reg = <0 0xff000044 0 4>;
-	};
diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.yaml b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
new file mode 100644
index 000000000000..7f8d17f33983
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/renesas,prr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas Product Register
+
+maintainers:
+  - Geert Uytterhoeven <geert+renesas@glider.be>
+  - Magnus Damm <magnus.damm@gmail.com>
+
+description: |
+  Most Renesas ARM SoCs have a Product Register or Boundary Scan ID
+  Register that allows to retrieve SoC product and revision information.
+  If present, a device node for this register should be added.
+
+properties:
+  compatible:
+    enum:
+      - renesas,prr
+      - renesas,bsid
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    prr: chipid@ff000044 {
+        compatible = "renesas,prr";
+        reg = <0 0xff000044 0 4>;
+    };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
