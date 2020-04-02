Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7846619CBBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 22:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ckadP6E3706xqAtryCm321LJXdTYzOCgHJpMJVg3xo=; b=Fqn9rh7xZ/pbKk
	VG7ajWa6GmafIDJjynQEsjG1fJRoevbk7OOV4gBnjWMt9u1TuzyDTc0jW7Wi9ArrQk1ILrT53X3v0
	fl62dhjdFFIiv4jvNwnRXrpLaQ/GhqrLaHExNMlVkX7Q6yMwdJJlYUbDCFs5xBGQB/KzjBEI48U2o
	V0bDkN+KyLQGxvoz/qHffA6+J5Mu529DnaqcQ3RdBKXS9PuASv1w6aVk9MHPLHwv867xTnRep0h75
	Kg7neYhY4BZl3ASjiyo+pd+QhP3/W1KT9/UvQdU8DOZ7xp/+o7iamwJC8tI2fQLk5efS36CebAXF3
	9Rr1vxJLB8JDOv7l2uzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK6dC-0003d5-Qs; Thu, 02 Apr 2020 20:40:06 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK6aU-0001TH-7n
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 20:37:22 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id D49A023D18;
 Thu,  2 Apr 2020 22:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585859832;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KXy7nJgnAk11tydoI+EmDNRy8IKIQCr6Ymye2zVSgho=;
 b=sj04Le7bjNMJiONy1LtO66Ph9iQ0NlIh4+hsvT2YvUjcC1GJ2kTl5s8rEbUJssdseAAdcq
 XZf41kpOQ3wjFwTZ2h/9xzbYuKTbaLr83e1hGPoy8oxvriCTBq6xRmGO7EFsvaePwXLVj4
 PguuQxFRGKkj6Ne4EszTeNR8yf/sYWY=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 05/16] dt-bindings: mfd: Add bindings for sl28cpld
Date: Thu,  2 Apr 2020 22:36:45 +0200
Message-Id: <20200402203656.27047-6-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402203656.27047-1-michael@walle.cc>
References: <20200402203656.27047-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: D49A023D18
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; NEURAL_SPAM(0.00)[0.049];
 DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.2:email,0.0.0.1:email,0.0.0.6:email,0.0.0.7:email,0.0.0.5:email,0.0.0.4:email,0.0.0.3:email,0.0.0.0:email];
 RCPT_COUNT_TWELVE(0.00)[24]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org,walle.cc];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_133718_603291_9C0BE214 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <maz@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds device tree bindings for the board management controller found
on the Kontron SMARC-sAL28 board.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../bindings/gpio/kontron,sl28cpld-gpio.yaml  |  51 ++++++
 .../hwmon/kontron,sl28cpld-hwmon.yaml         |  27 +++
 .../bindings/mfd/kontron,sl28cpld.yaml        | 162 ++++++++++++++++++
 .../bindings/pwm/kontron,sl28cpld-pwm.yaml    |  35 ++++
 .../watchdog/kontron,sl28cpld-wdt.yaml        |  35 ++++
 5 files changed, 310 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/kontron,sl28cpld-gpio.yaml
 create mode 100644 Documentation/devicetree/bindings/hwmon/kontron,sl28cpld-hwmon.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
 create mode 100644 Documentation/devicetree/bindings/pwm/kontron,sl28cpld-pwm.yaml
 create mode 100644 Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml

diff --git a/Documentation/devicetree/bindings/gpio/kontron,sl28cpld-gpio.yaml b/Documentation/devicetree/bindings/gpio/kontron,sl28cpld-gpio.yaml
new file mode 100644
index 000000000000..291ca116743d
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/kontron,sl28cpld-gpio.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/kontron,sl28cpld-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: GPIO driver for the sl28cpld board management controller
+
+maintainers:
+  - Michael Walle <michael@walle.cc>
+
+description: |
+  This module is part of the sl28cpld multi-function device. For more
+  details see Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml.
+
+  There are three flavors of the GPIO controller, one full featured
+  input/output with interrupt support (kontron,sl28cpld-gpio), one
+  output-only (kontron,sl28-gpo) and one input-only (kontron,sl28-gpi).
+
+  Each controller supports 8 GPIO lines.
+
+properties:
+  compatible:
+    enum:
+      - kontron,sl28cpld-gpio
+      - kontron,sl28cpld-gpi
+      - kontron,sl28cpld-gpo
+
+  reg:
+    maxItems: 1
+
+  "#interrupt-cells":
+    const: 2
+
+  interrupt-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-controller: true
+
+  gpio-line-names:
+      minItems: 1
+      maxItems: 8
+
+required:
+  - compatible
+  - "#gpio-cells"
+  - gpio-controller
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/hwmon/kontron,sl28cpld-hwmon.yaml b/Documentation/devicetree/bindings/hwmon/kontron,sl28cpld-hwmon.yaml
new file mode 100644
index 000000000000..1cebd61c6c32
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/kontron,sl28cpld-hwmon.yaml
@@ -0,0 +1,27 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/kontron,sl28cpld-hwmon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Hardware monitoring driver for the sl28cpld board management controller
+
+maintainers:
+  - Michael Walle <michael@walle.cc>
+
+description: |
+  This module is part of the sl28cpld multi-function device. For more
+  details see Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml.
+
+properties:
+  compatible:
+    enum:
+      - kontron,sl28cpld-fan
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml b/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
new file mode 100644
index 000000000000..e155e3035513
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
@@ -0,0 +1,162 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/kontron,sl28cpld.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Kontron's sl28cpld board management controller
+
+maintainers:
+  - Michael Walle <michael@walle.cc>
+
+description: |
+  The board management controller may contain different IP blocks like
+  watchdog, fan monitoring, PWM controller, interrupt controller and a
+  GPIO controller.
+
+  Currently the MFD exports the following functions at the given
+  unit-addresses.
+
+  === =========== =======================
+   ua name        compatible
+  === =========== =======================
+   0  watchdog    kontron,sl28cpld-wdt
+   1  hwmon       kontron,sl28cpld-fan
+   2  pwm         kontron,sl28cpld-pwm
+   3  pwm         kontron,sl28cpld-pwm
+   4  gpio        kontron,sl28cpld-gpio
+   5  gpio        kontron,sl28cpld-gpio
+   6  gpio        kontron,sl28cpld-gpo
+   7  gpio        kontron,sl28cpld-gpi
+  === =========== =======================
+
+  The MFD driver will match the child nodes according to the unit-address
+  (eg. the reg property) and the compatible string.
+
+properties:
+  compatible:
+    const: kontron,sl28cpld
+
+  reg:
+    description:
+      I2C device address.
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  "#interrupt-cells":
+    const: 2
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+patternProperties:
+  "^gpio(@[0-9]+)?$":
+    $ref: ../gpio/kontron,sl28cpld-gpio.yaml
+
+  "^hwmon(@[0-9]+)?$":
+    $ref: ../hwmon/kontron,sl28cpld-hwmon.yaml
+
+  "^pwm(@[0-9]+)?$":
+    $ref: ../pwm/kontron,sl28cpld-pwm.yaml
+
+  "^watchdog(@[0-9]+)?$":
+    $ref: ../watchdog/kontron,sl28cpld-wdt.yaml
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - interrupts
+  - "#interrupt-cells"
+  - interrupt-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        sl28cpld@4a {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            compatible = "kontron,sl28cpld";
+            reg = <0x4a>;
+            interrupts-extended = <&gpio2 6 IRQ_TYPE_EDGE_FALLING>;
+
+            #interrupt-cells = <2>;
+            interrupt-controller;
+
+            watchdog@0 {
+                compatible = "kontron,sl28cpld-wdt";
+                reg = <0>;
+                kontron,assert-wdt-timeout-pin;
+            };
+
+            hwmon@1 {
+                compatible = "kontron,sl28cpld-fan";
+                reg = <1>;
+            };
+
+            pwm@2 {
+                compatible = "kontron,sl28cpld-pwm";
+                reg = <2>;
+                #pwm-cells = <2>;
+            };
+
+            pwm@3 {
+                compatible = "kontron,sl28cpld-pwm";
+                reg = <3>;
+                #pwm-cells = <2>;
+            };
+
+            gpio@4 {
+                compatible = "kontron,sl28cpld-gpio";
+                reg = <4>;
+
+                gpio-controller;
+                #gpio-cells = <2>;
+
+                interrupt-controller;
+                #interrupt-cells = <2>;
+            };
+
+            gpio@5 {
+                compatible = "kontron,sl28cpld-gpio";
+                reg = <5>;
+
+                gpio-controller;
+                #gpio-cells = <2>;
+
+                interrupt-controller;
+                #interrupt-cells = <2>;
+            };
+
+            gpio@6 {
+                compatible = "kontron,sl28cpld-gpo";
+                reg = <6>;
+
+                gpio-controller;
+                #gpio-cells = <2>;
+                gpio-line-names = "a", "b", "c";
+            };
+
+            gpio@7 {
+                compatible = "kontron,sl28cpld-gpi";
+                reg = <7>;
+
+                gpio-controller;
+                #gpio-cells = <2>;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/pwm/kontron,sl28cpld-pwm.yaml b/Documentation/devicetree/bindings/pwm/kontron,sl28cpld-pwm.yaml
new file mode 100644
index 000000000000..02fe88c30233
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/kontron,sl28cpld-pwm.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/kontron,sl28cpld-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: PWM driver for the sl28cpld board management controller
+
+maintainers:
+  - Michael Walle <michael@walle.cc>
+
+description: |
+  This module is part of the sl28cpld multi-function device. For more
+  details see Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml.
+
+  The controller supports one PWM channel and supports only four distinct
+  frequencies (250Hz, 500Hz, 1kHz, 2kHz).
+
+allOf:
+  - $ref: pwm.yaml#
+
+properties:
+  compatible:
+    const: kontron,sl28cpld-pwm
+
+  reg:
+    maxItems: 1
+
+  "#pwm-cells":
+    const: 2
+
+required:
+  - compatible
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml b/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
new file mode 100644
index 000000000000..dd6559f2973a
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/kontron,sl28cpld-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Watchdog driver for the sl28cpld board management controller
+
+maintainers:
+  - Michael Walle <michael@walle.cc>
+
+description: |
+  This module is part of the sl28cpld multi-function device. For more
+  details see Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml.
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    const: kontron,sl28cpld-wdt
+
+  reg:
+    maxItems: 1
+
+  kontron,assert-wdt-timeout-pin:
+    description: The SMARC standard defines a WDT_TIME_OUT# pin. If this
+      property is set, this output will be pulsed when the watchdog bites
+      and the system resets.
+    type: boolean
+
+required:
+  - compatible
+
+additionalProperties: false
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
