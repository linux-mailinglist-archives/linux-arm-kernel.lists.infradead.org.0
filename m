Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7996185BD6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 11:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MV3dsfWL7hyB3nx6ZVTNfdVE+V0GjA/I3tFAjV7k5fU=; b=RSsw+IY8Jlw47s
	b7QzGK7MdTpDhiaaZuIlreQwdTaW8CRQGh3Ox1LNMGTwAfViVy750wMTL918ekw30jWF3qgHwUDLe
	llmxp6RLGEkxtfCr4GGX4M9ahvhFmkcEtOcupGyiQOkAgWyBP6nmkBQ7FaLlBna9SdUsPsgulIkG5
	trqbf9HAz4BLFhZtX4bFYsQNn2ovqB7R7EpMjEd0Lq1q1dFS5DS0aXCzmHLoT3OTREqbrVujkIh/M
	VBvBcYrhnCV31NthaKrHwMK/dFUAl+NypBUXbDPwoKz7a9ov7e2b3y/6UFZnLkSehYR36RB0+5NpW
	v3t/7qtKL1nXgnJyNr3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDQ8W-0000Rp-8n; Sun, 15 Mar 2020 10:04:48 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDQ8L-0000Qf-Mp
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 10:04:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1584266661; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:references; bh=OPgCFclnK+dYLWIKySdQ0LeSCQYlJQFqnweXUYr2lRo=;
 b=ysAKBEQwfZwp6cOlmO4u+3BgcS/CCdEDygsjhdOMkCSKoxy6/WEn1P5MGahPXsWKU3c7W8
 Rd/6leiWLqbLWtQdq/U3ztJJX7cEoDhYyqRou0GzIyYMSQmrGUwYYTR1yWU/HRiUQIQ/tC
 /POQvZVhIAQWEplzYVD3EJg05swJNRs=
From: Paul Cercueil <paul@crapouillou.net>
To: Nick Dyer <nick@shmanahar.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] dt-bindings: input: Update atmel,maxtouch.txt to YAML
Date: Sun, 15 Mar 2020 11:04:15 +0100
Message-Id: <20200315100416.14151-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_030438_134134_3622F7A9 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Cercueil <paul@crapouillou.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update atmel,maxtouch.txt to YAML. The new 'vdd-supply' property was
added in the process.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 .../bindings/input/atmel,maxtouch.txt         | 41 -----------
 .../bindings/input/atmel,maxtouch.yaml        | 68 +++++++++++++++++++
 2 files changed, 68 insertions(+), 41 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/atmel,maxtouch.txt
 create mode 100644 Documentation/devicetree/bindings/input/atmel,maxtouch.yaml

diff --git a/Documentation/devicetree/bindings/input/atmel,maxtouch.txt b/Documentation/devicetree/bindings/input/atmel,maxtouch.txt
deleted file mode 100644
index c88919480d37..000000000000
--- a/Documentation/devicetree/bindings/input/atmel,maxtouch.txt
+++ /dev/null
@@ -1,41 +0,0 @@
-Atmel maXTouch touchscreen/touchpad
-
-Required properties:
-- compatible:
-    atmel,maxtouch
-
-    The following compatibles have been used in various products but are
-    deprecated:
-	atmel,qt602240_ts
-	atmel,atmel_mxt_ts
-	atmel,atmel_mxt_tp
-	atmel,mXT224
-
-- reg: The I2C address of the device
-
-- interrupts: The sink for the touchpad's IRQ output
-    See ../interrupt-controller/interrupts.txt
-
-Optional properties for main touchpad device:
-
-- linux,gpio-keymap: When enabled, the SPT_GPIOPWN_T19 object sends messages
-    on GPIO bit changes. An array of up to 8 entries can be provided
-    indicating the Linux keycode mapped to each bit of the status byte,
-    starting at the LSB. Linux keycodes are defined in
-    <dt-bindings/input/input.h>.
-
-    Note: the numbering of the GPIOs and the bit they start at varies between
-    maXTouch devices. You must either refer to the documentation, or
-    experiment to determine which bit corresponds to which input. Use
-    KEY_RESERVED for unused padding values.
-
-- reset-gpios: GPIO specifier for the touchscreen's reset pin (active low)
-
-Example:
-
-	touch@4b {
-		compatible = "atmel,maxtouch";
-		reg = <0x4b>;
-		interrupt-parent = <&gpio>;
-		interrupts = <TEGRA_GPIO(W, 3) IRQ_TYPE_LEVEL_LOW>;
-	};
diff --git a/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml b/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
new file mode 100644
index 000000000000..1b138a9836bf
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/atmel,maxtouch.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel maXTouch touchscreen/touchpad DT bindings
+
+maintainers:
+  - Paul Cercueil <paul@crapouillou.net>
+
+properties:
+  compatible:
+    enum:
+      - atmel,maxtouch
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vdd-supply:
+    description: Phandle to regulator providing power to the touchscreen
+
+  linux,gpio-keymap:
+    minItems: 1
+    maxItems: 8
+    description: >
+      When enabled, the SPT_GPIOPWN_T19 object sends messages
+      on GPIO bit changes. An array of up to 8 entries can be provided
+      indicating the Linux keycode mapped to each bit of the status byte,
+      starting at the LSB. Linux keycodes are defined in
+      <dt-bindings/input/input.h>.
+
+      Note: the numbering of the GPIOs and the bit they start at varies between
+      maXTouch devices. You must either refer to the documentation, or
+      experiment to determine which bit corresponds to which input. Use
+      KEY_RESERVED for unused padding values.
+
+  reset-gpios:
+    description: GPIO specifier for the touchscreen's reset pin (active low)
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
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      mxt224-touchscreen@4a {
+        compatible = "atmel,maxtouch";
+        reg = <0x4a>;
+
+        interrupt-parent = <&gpx0>;
+        interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
+
+        vdd-supply = <&tsp_reg>;
+      };
+    };
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
