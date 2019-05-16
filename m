Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BDF206B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 14:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c37tr6hPT8YlkzW0mA24pFdCTAgytkq+2RHC+cYYS8o=; b=V6hZAL9/pL0fBM
	yAi6D7WvmjLpo4kHDwACOJXOvNs7x420Q0LxTi9RUfDgvrTc3CADuApXBlCvJAwOFYiF7ZKV7pDy5
	22ZbNHPyeMf1Z+16sKolBdmvAJt3bX9tjnUA7Ho4eTISnp9mxw5oqKv6Z+fDFZ6GoawJKT9/5u+uA
	1X61gzCIYSPrLKOLTVx8jfIKvgH9aNNnScXl0M0zryL6wrbenrsR9hkKMbf8PbOFQiUiZayaiVMwB
	0Plp9qOOsq8hOjIVLvOEdkWHwTaUveRfnjI9Q5wd6lOY4+Q2Gq9a6/1VwQYAaVdCHv1Lwvti/HprA
	NlKFBHyF0cYNWOzVF/vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRFCd-0005Ib-J2; Thu, 16 May 2019 12:09:39 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFCX-0005HZ-LA
 for linux-arm-kernel@bombadil.infradead.org; Thu, 16 May 2019 12:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mVet3PDtMrjmz0qx9TuYyd4zyKdH7dYA7+H5eFGjXw0=; b=NlVSBajKNyZAQAC4UT2zqQzkCN
 MpKQSAzbeuw0v/16knSS5YmW3kM5NyMPdUM3WDLF3pvA6CYjoFiipn6gEeAydzdvAHH7VRsFfemaY
 Y39/5yQFpr/z3kaYTNtgqlMNZh1b8ecsYnT8MYXEeHXogmZEHp/4O+VWNGsMFP9x6+wqJE95r3DVi
 AdmdWbHPMSe4vShHCj108izXaJp0VKVFgaCUDOT6GhfkvecpWdErQa1vkTYVlx9SysiNt1j4D6EMI
 7vos6bKf8kggGhr/gCPL1+SVYaOTGsHPqaICJHIqkGynAObstkzfxFNdMUwR4V77PR2oPL6I5sqd7
 f/qZm+GA==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFCT-0006nV-HM
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 12:09:31 +0000
X-Originating-IP: 80.215.79.199
Received: from localhost (unknown [80.215.79.199])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 17805E000E;
 Thu, 16 May 2019 12:08:49 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] dt-bindings: pwm: Convert Allwinner PWM to a schema
Date: Thu, 16 May 2019 14:08:48 +0200
Message-Id: <20190516120848.25007-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_080929_755682_972D9F21 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, linux-pwm@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have a PWM controller supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 57 +++++++++++++++++++
 .../devicetree/bindings/pwm/pwm-sun4i.txt     | 24 --------
 2 files changed, 57 insertions(+), 24 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
 delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-sun4i.txt

diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
new file mode 100644
index 000000000000..0ac52f83a58c
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/allwinner,sun4i-a10-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 PWM Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#pwm-cells":
+    const: 3
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-pwm
+      - const: allwinner,sun5i-a10s-pwm
+      - const: allwinner,sun5i-a13-pwm
+      - const: allwinner,sun7i-a20-pwm
+      - const: allwinner,sun8i-h3-pwm
+      - items:
+          - const: allwinner,sun8i-a83t-pwm
+          - const: allwinner,sun8i-h3-pwm
+      - items:
+          - const: allwinner,sun50i-a64-pwm
+          - const: allwinner,sun5i-a13-pwm
+      - items:
+          - const: allwinner,sun50i-h5-pwm
+          - const: allwinner,sun5i-a13-pwm
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - "#pwm-cells"
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    pwm: pwm@1c20e00 {
+        compatible = "allwinner,sun7i-a20-pwm";
+        reg = <0x01c20e00 0xc>;
+        clocks = <&osc24M>;
+        #pwm-cells = <3>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/pwm/pwm-sun4i.txt b/Documentation/devicetree/bindings/pwm/pwm-sun4i.txt
deleted file mode 100644
index 2a1affbff45e..000000000000
--- a/Documentation/devicetree/bindings/pwm/pwm-sun4i.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Allwinner sun4i and sun7i SoC PWM controller
-
-Required properties:
-  - compatible: should be one of:
-    - "allwinner,sun4i-a10-pwm"
-    - "allwinner,sun5i-a10s-pwm"
-    - "allwinner,sun5i-a13-pwm"
-    - "allwinner,sun7i-a20-pwm"
-    - "allwinner,sun8i-h3-pwm"
-    - "allwinner,sun50i-a64-pwm", "allwinner,sun5i-a13-pwm"
-    - "allwinner,sun50i-h5-pwm", "allwinner,sun5i-a13-pwm"
-  - reg: physical base address and length of the controller's registers
-  - #pwm-cells: should be 3. See pwm.txt in this directory for a description of
-    the cells format.
-  - clocks: From common clock binding, handle to the parent clock.
-
-Example:
-
-	pwm: pwm@1c20e00 {
-		compatible = "allwinner,sun7i-a20-pwm";
-		reg = <0x01c20e00 0xc>;
-		clocks = <&osc24M>;
-		#pwm-cells = <3>;
-	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
