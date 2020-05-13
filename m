Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2E01D20F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 23:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUShgPpvzL+109lBuRBuU8GV8VYP+LT9FBOARRLx9/8=; b=p9TQ/vHFeHPy9u
	TPe0w4aA6KCVfiLnNpHh0f4/jsqhLXSk8lCdYsUBstCQfUod040LIguanHBXSl3HvG/at3hHpu5K0
	RA14AUmLp51p8+3HG83vH14NLKq9QNrGniLIaTJN08I2F7B9ZVilj13qvFw2s8d+xj98qRMXtgtBf
	h2Vnglz5p/ttiAYVwbgBjSnm+lwXxnGdH917cteP2ONE+TVHy4CKmcgfS6lloBOekGtwVuiV8N0io
	zSk306o4HWfGgz0CujxvuGc/WuH/s97Y6O0ny0sdMwB9pdi1iddloGFOwSlX6Kv5j7UZ7GtKnXpVD
	Mh439AQ3o+aPhUfOhuxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYysX-0005N5-E1; Wed, 13 May 2020 21:25:25 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYys6-0005LK-6T
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 21:25:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1589405095; bh=gvSRm0rmQ7W+MSQqWiSzV31k3+eFDx+2BX8HfaNKv+o=;
 h=From:To:Cc:Subject:Date:References:From;
 b=NRRp3FXFRr6+JDPCv93mEyKR4cWbL4cCSQmwvGLKLoduDFsYwh1vOTtJUq0XlbHm+
 Zg6KGIJ9ii8UQlUxsPRjV89ludJxM3Sv3jaQNfrMN5F/XTQ7UqrAcorWf9Ptjg887M
 QOnxFZhPb5rKTwnEdCHYBtin7lFc72rVfcSRPGu8=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>, Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH v3 2/5] dt-bindings: panel: Add binding for Xingbangda XBD599
 panel
Date: Wed, 13 May 2020 23:24:48 +0200
Message-Id: <20200513212451.1919013-3-megous@megous.com>
In-Reply-To: <20200513212451.1919013-1-megous@megous.com>
References: <20200513212451.1919013-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_142458_582450_79F9A2F8 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Luca Weiss <luca@z3ntu.xyz>, Martijn Braam <martijn@brixit.nl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI LCD panel. It is based on
Sitronix ST7703 LCD controller.

Add its device tree binding.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../display/panel/sitronix,st7703.yaml        | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sitronix,st7703.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7703.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7703.yaml
new file mode 100644
index 000000000000..6e1606db4ab4
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7703.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/sitronix,st7703.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sitronix ST7703 MIPI DSI panel
+
+maintainers:
+  - Icenowy Zheng <icenowy@aosc.io>
+  - Ondrej Jirman <megous@megous.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - xingbangda,xbd599
+      - const: sitronix,st7703
+
+  reg:
+    description: DSI virtual channel used by that screen
+    maxItems: 1
+
+  vcc-supply:
+    description: regulator that supplies the VCC voltage
+
+  iovcc-supply:
+    description: regulator that supplies the IOVCC voltage
+
+  reset-gpios: true
+
+  backlight: true
+
+required:
+  - compatible
+  - reg
+  - vcc-supply
+  - iovcc-supply
+  - reset-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "xingbangda,xbd599", "sitronix,st7703";
+            reg = <0>;
+            reset-gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>; /* LCD-RST: PD24 */
+            iovcc-supply = <&reg_dldo2>;
+            vcc-supply = <&reg_ldo_io0>;
+            backlight = <&backlight>;
+        };
+    };
+
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
