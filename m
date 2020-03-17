Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72302188FB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 21:52:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxD9cUBoeWQPX4nBUcyzD5B3J7aGETa0BWixSm+rxlI=; b=iNfCBonQ+EByoy
	Rl0NnaggJBZvo8wXzMnYlWiZu/bViVOT/g1+03DDOjlvLtS1ZtvRCiZHyJ6VF3ndcmJakh7Rm8yW3
	/4zJHHyOP0ht1s5e0oUE2VVHJkOCpeQI5B/nMwyT5ryDvkocYntNbwMNU8lU2z+6hTWQuQGO1hepf
	dfb2EE0JSaPtj0me2YnFlSGPt5xegYNrnpxNExvwYtWZIkW8AjV1XEa/5C9OIE2PbyV0ZUVKn6t4z
	7S482x8KfH2hV7k5pV0NjFkqty4IjycR6PKNawaPWC9t6PqtrZfENjkEHkBRdHh0aHOtmf/XZvFo0
	PcBor8i0OH67erEvqcfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJCI-0000P7-Dq; Tue, 17 Mar 2020 20:52:22 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJAp-0007mD-K7
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 20:50:53 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id A696D23E57;
 Tue, 17 Mar 2020 21:50:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1584478250;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pnvrMHq4df7PzQAC7TxqlEV1vqqRU/yK9xcpXwNVrAk=;
 b=jGR32UkzFLXyXtavF5314t9FNqbgpQUuNIGQd7EMFzYI52w+yrSo0qjpNZxXtFLPoqpn6f
 8/qSs9/b7EE68cQvsCR9zAZvq6qXV3mbMdftT3LDRPefa3oYZ8I+2VFnIGuiUTxk34heY7
 +sH/kROcX7Xm1z5qyHxJXifGrw5dVvo=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 04/18] dt-bindings: mfd: Add bindings for sl28cpld
Date: Tue, 17 Mar 2020 21:50:03 +0100
Message-Id: <20200317205017.28280-5-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317205017.28280-1-michael@walle.cc>
References: <20200317205017.28280-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: A696D23E57
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; NEURAL_SPAM(0.00)[0.606];
 DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.1:email,0.0.0.0:email];
 RCPT_COUNT_TWELVE(0.00)[22]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,walle.cc];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_135051_952601_255C2278 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jason Cooper <jason@lakedaemon.net>, Shawn Guo <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
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
 .../bindings/mfd/kontron,sl28cpld.yaml        | 143 ++++++++++++++++++
 1 file changed, 143 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml

diff --git a/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml b/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
new file mode 100644
index 000000000000..3b9cca49d2d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
@@ -0,0 +1,143 @@
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
+  "^gp(io|i|o)(@[0-9]+)?$":
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
+  - "#interrupt-cells"
+  - interrupt-controller
+
+oneOf:
+  - required:
+    - interrupts
+  - required:
+    - interrupts-extended
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
+            gpio@0 {
+                compatible = "kontron,sl28cpld-gpio";
+                reg = <0>;
+
+                gpio-controller;
+                #gpio-cells = <2>;
+
+                interrupt-controller;
+                #interrupt-cells = <2>;
+            };
+
+            gpio@1 {
+                compatible = "kontron,sl28cpld-gpio";
+                reg = <1>;
+
+                gpio-controller;
+                #gpio-cells = <2>;
+
+                interrupt-controller;
+                #interrupt-cells = <2>;
+            };
+
+            gpo {
+                compatible = "kontron,sl28cpld-gpo";
+
+                gpio-controller;
+                #gpio-cells = <2>;
+                gpio-line-names = "a", "b", "c";
+            };
+
+            gpi {
+                compatible = "kontron,sl28cpld-gpi";
+
+                gpio-controller;
+                #gpio-cells = <2>;
+            };
+
+            hwmon {
+                compatible = "kontron,sl28cpld-fan";
+            };
+
+            pwm@0 {
+                compatible = "kontron,sl28cpld-pwm";
+                reg = <0>;
+                #pwm-cells = <2>;
+            };
+
+            pwm@1 {
+                compatible = "kontron,sl28cpld-pwm";
+                reg = <1>;
+                #pwm-cells = <2>;
+            };
+
+            watchdog {
+                compatible = "kontron,sl28cpld-wdt";
+            };
+        };
+    };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
