Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA75894C88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A29Do/l9GHsHJ9t3apHj9DOR2CwuYX9XuMnO5JATJPk=; b=H+n1Ck+PUsva5u
	w7YbdphPk5trn+h0tF+TRRrNCxurSfQsRKTYKBXKRJnD6Y/iqJKRItvMPDidogHk4SbByGfCWbJQB
	+Clz3VdDMdJCj7zrdj1IVVseZk5GdjHwG1Q2KM12tVu2Nut2dR4rC6DQ8BtiN0GST+fWeDypIgv3V
	gTzZm6B853KwEo8VrqnF6jWWcbnS+OJ6ttYBDaDqP19gdFkA+4YLzlYiTw03nqPrZ8WKqQxhA+xD9
	e8oTz2K1fIjaeSuqpfECdEQ10MgsGgucUqME5ikU0LS2WbAyXbVOuVkUi5uDamo+DSg4/OzF/meNb
	SYmBXRZbx8bh5cmZL5bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmI5-0006Hj-7W; Mon, 19 Aug 2019 18:22:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmGs-0005aN-RG
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:20:48 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3C4122CF6;
 Mon, 19 Aug 2019 18:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566238846;
 bh=WlmSIy9FhdBOLKfq102q4YX3QMPbyA7nFdt9dtzsEoo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FnBL+MgF/ZB9CCVuwr5m9KxZREBzouKCnw8igv0c0JCFLkh41S5vVyloAifD8oYH1
 aGuPiAlokWUN5Hkx3nN2ytnjYdRLr/d79mUIFzZJK1V3koYQiDaG0LAgq6FswWllzQ
 OQYjfJeovXVTZ3wSDVgKluGpVG+yUr/bmQmHYko0=
From: Maxime Ripard <mripard@kernel.org>
To: linux@roeck-us.net,
	wim@linux-watchdog.org
Subject: [PATCH v2 2/6] dt-bindings: watchdog: Convert Allwinner watchdog to a
 schema
Date: Mon, 19 Aug 2019 20:20:35 +0200
Message-Id: <20190819182039.24892-2-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190819182039.24892-1-mripard@kernel.org>
References: <20190819182039.24892-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_112047_050738_2BA4DBDE 
X-CRM114-Status: GOOD (  13.70  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner SoCs have a watchdog supported in Linux, with a matching
Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Use generic watchdog schema
  - Use unevaluatedProperties instead of additionalProperties
---
 .../watchdog/allwinner,sun4i-a10-wdt.yaml     | 48 +++++++++++++++++++
 .../bindings/watchdog/sunxi-wdt.txt           | 22 ---------
 2 files changed, 48 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
new file mode 100644
index 000000000000..dc7553f57708
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/allwinner,sun4i-a10-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Watchdog Device Tree Bindings
+
+allOf:
+  - $ref: "watchdog.yaml#"
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-wdt
+      - const: allwinner,sun6i-a31-wdt
+      - items:
+          - const: allwinner,sun50i-a64-wdt
+          - const: allwinner,sun6i-a31-wdt
+      - items:
+          - const: allwinner,sun50i-h6-wdt
+          - const: allwinner,sun6i-a31-wdt
+      - items:
+          - const: allwinner,suniv-f1c100s-wdt
+          - const: allwinner,sun4i-a10-wdt
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    wdt: watchdog@1c20c90 {
+        compatible = "allwinner,sun4i-a10-wdt";
+        reg = <0x01c20c90 0x10>;
+        timeout-sec = <10>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt b/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
deleted file mode 100644
index e65198d82a2b..000000000000
--- a/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Allwinner SoCs Watchdog timer
-
-Required properties:
-
-- compatible : should be one of
-	"allwinner,sun4i-a10-wdt"
-	"allwinner,sun6i-a31-wdt"
-	"allwinner,sun50i-a64-wdt","allwinner,sun6i-a31-wdt"
-	"allwinner,sun50i-h6-wdt","allwinner,sun6i-a31-wdt"
-	"allwinner,suniv-f1c100s-wdt", "allwinner,sun4i-a10-wdt"
-- reg : Specifies base physical address and size of the registers.
-
-Optional properties:
-- timeout-sec : Contains the watchdog timeout in seconds
-
-Example:
-
-wdt: watchdog@1c20c90 {
-	compatible = "allwinner,sun4i-a10-wdt";
-	reg = <0x01c20c90 0x10>;
-	timeout-sec = <10>;
-};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
