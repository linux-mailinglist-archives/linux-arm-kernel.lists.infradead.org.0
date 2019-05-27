Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797A72B3EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0y1jff0XJCSMfSPmMRosX0CYVq5SUYk10NjHCHQIQA=; b=UW8rV09IBoP15E
	PLwUkEkpOO7l3BLHyhGATX2/kdGjzMVSh/rehFOO5hLlz9xelOmnxCrwKsVtMZmIhncJELWWEXQl8
	rL2Ef8O/140WeiUjAXwmp8Pi/Yf8pfOIwZ2GXxK2EiS2VRepNu9YK9JFtfwOyA3i/hAAHGZFha784
	bDrSk9rmB33RUys4x8wlV7fDLrRZKnT9SshgFSEsKljoxOg1FZHe4qzIrx8XXDvUNE7cPVIzpIpzq
	y66MTOivY8OdlBlvJHb9NBK7dO6DLI0OepkOvIbYnynbi68ohHp8Usva7EM13QH3JS+/uc+0c1JGj
	PAWQ0vGLBxYbZWy6uN4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEK7-0004Je-Gm; Mon, 27 May 2019 12:01:51 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEJI-0003Qc-1H
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:01:04 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 13C7D4000B;
 Mon, 27 May 2019 12:00:51 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 03/10] dt-bindings: rtc: Convert Allwinner A10 RTC to a schema
Date: Mon, 27 May 2019 14:00:35 +0200
Message-Id: <bd3004d8e2d52c96abbc6cc9ca51b8fea510446a.1558958381.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_050100_221077_B25C048F 
X-CRM114-Status: GOOD (  13.98  )
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The older Allwinner SoCs have an embedded RTC supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml | 43 +++++++++++++++++++++++++++++++++++++++++++
 Documentation/devicetree/bindings/rtc/sunxi-rtc.txt                | 17 -----------------
 2 files changed, 43 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml
 delete mode 100644 Documentation/devicetree/bindings/rtc/sunxi-rtc.txt

diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml
new file mode 100644
index 000000000000..46d69c32b89b
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/allwinner,sun4i-a10-rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 RTC Device Tree Bindings
+
+allOf:
+  - $ref: "rtc.yaml#"
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-rtc
+      - allwinner,sun7i-a20-rtc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    rtc: rtc@1c20d00 {
+        compatible = "allwinner,sun4i-a10-rtc";
+        reg = <0x01c20d00 0x20>;
+        interrupts = <24>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/rtc/sunxi-rtc.txt b/Documentation/devicetree/bindings/rtc/sunxi-rtc.txt
deleted file mode 100644
index 4a8d79c1cf08..000000000000
--- a/Documentation/devicetree/bindings/rtc/sunxi-rtc.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-* sun4i/sun7i Real Time Clock
-
-RTC controller for the Allwinner A10/A20
-
-Required properties:
-- compatible : Should be "allwinner,sun4i-a10-rtc" or "allwinner,sun7i-a20-rtc"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: IRQ line for the RTC.
-
-Example:
-
-rtc: rtc@1c20d00 {
-	compatible = "allwinner,sun4i-a10-rtc";
-	reg = <0x01c20d00 0x20>;
-	interrupts = <24>;
-};
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
