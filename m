Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702781DF622
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 10:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xiJXK4hhj7OeunBmrejOKfwHQJ/kgdce9UWlkVAofQ=; b=ZDPgJAMlxmxZsU
	V+clrK4kTHBtLyjRb7Vg+ijiccrAsBvFda6G+R0BraCsCDJHAq3xUrPk+SaW6y9dhPyySNcdRfsJp
	zZZ2XQgj/pXZNxJj4T8LUEBjPCnj5YQ43x7YEP3oRAbj8hCBWudleYk74+BRZa5YyNB7Q1arI5XFH
	zraaaKrnWshCo1suaccnvG+EknPnuQ2S6Bch1ynYpVMsp6RF8vITVR90GskjcsaI0zUGwRJo+7GES
	DYxQYoY2WTVafBDFgC1+3FFl9aOtSO9isodzeWrKnAEjgfpuf+PyMShzBm6op2LLPngBpwZdhfZ2u
	9XXbB0xIE/mGvsdpODFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcPtz-0003oi-KM; Sat, 23 May 2020 08:53:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcPtj-0003n2-NA; Sat, 23 May 2020 08:52:54 +0000
X-UUID: ef0761945c554b9b934149e4ec00e473-20200523
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=PhvFl3sBrDh5Chha4oDdTr7pxio4/UPPIepJuQ+yry4=; 
 b=JOhZbqyfzzcOXpGCaU+ODJkR1ptCKdNHrqMQrmH9/yDhoB0LuK0gEwYZby02Nt4iBlLOVXu9T7+eAUYiD925aeq8NOeOIyfmFujOnlxY0Xh37tfjpaBZnwhI6nr9mLZsNCBPo/DEoQ8Mmq4cBh7ADfKC5ASJQVpxOVn1b1czCmQ=;
X-UUID: ef0761945c554b9b934149e4ec00e473-20200523
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1420078203; Sat, 23 May 2020 00:52:41 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 23 May 2020 01:42:45 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 23 May 2020 16:42:44 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 23 May 2020 16:42:42 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <linus.walleij@linaro.org>, <bgolaszewski@baylibre.com>,
 <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V9, 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
Date: Sat, 23 May 2020 16:41:02 +0800
Message-ID: <20200523084103.31276-2-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_015251_764565_24A4F032 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT bindings documentation for Omnivision OV02A10 image sensor.

Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
---
 .../bindings/media/i2c/ovti,ov02a10.yaml           | 172 +++++++++++++++++++++
 MAINTAINERS                                        |   7 +
 2 files changed, 179 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
new file mode 100644
index 0000000..56f31b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
@@ -0,0 +1,172 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2020 MediaTek Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
+
+maintainers:
+  - Dongchun Zhu <dongchun.zhu@mediatek.com>
+
+description: |-
+  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
+  image sensor, which is the latest production derived from Omnivision's CMOS
+  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
+  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
+  sensor output is available via CSI-2 serial data output.
+
+properties:
+  compatible:
+    const: ovti,ov02a10
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: top mux camtg clock
+      - description: divider clock
+
+  clock-names:
+    items:
+      - const: eclk
+      - const: freq_mux
+
+  clock-frequency:
+    description:
+      Frequency of the eclk clock in Hertz.
+
+  dovdd-supply:
+    description:
+      Definition of the regulator used as Digital I/O voltage supply.
+
+  avdd-supply:
+    description:
+      Definition of the regulator used as Analog voltage supply.
+
+  dvdd-supply:
+    description:
+      Definition of the regulator used as Digital core voltage supply.
+
+  powerdown-gpios:
+    description:
+      Must be the device tree identifier of the GPIO connected to the
+      PD_PAD pin. This pin is used to place the OV02A10 into Standby mode
+      or Shutdown mode. As the line is active low, it should be
+      marked GPIO_ACTIVE_LOW.
+
+  reset-gpios:
+    description:
+      Must be the device tree identifier of the GPIO connected to the
+      RST_PD pin. If specified, it will be asserted during driver probe.
+      As the line is active high, it should be marked GPIO_ACTIVE_HIGH.
+
+  rotation:
+    description:
+      Definition of the sensor's placement.
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum:
+          - 0    # Sensor Mounted Upright
+          - 180  # Sensor Mounted Upside Down
+        default: 0
+
+  ovti,mipi-tx-speed:
+    description:
+      Indication of MIPI transmission speed select, which is to control D-PHY
+      timing setting by adjusting MIPI clock voltage to improve the clock
+      driver capability.
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum:
+          - 0    #  20MHz -  30MHz
+          - 1    #  30MHz -  50MHz
+          - 2    #  50MHz -  75MHz
+          - 3    #  75MHz - 100MHz
+          - 4    # 100MHz - 130MHz
+        default: 3
+
+  # See ../video-interfaces.txt for details
+  port:
+    type: object
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        type: object
+        additionalProperties: false
+
+        properties:
+          data-lanes:
+            maxItems: 1
+
+          link-frequencies: true
+          remote-endpoint: true
+
+        required:
+          - data-lanes
+          - link-frequencies
+          - remote-endpoint
+
+    required:
+      - endpoint
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - clock-frequency
+  - dovdd-supply
+  - avdd-supply
+  - dvdd-supply
+  - powerdown-gpios
+  - reset-gpios
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/clock/mt8183-clk.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ov02a10: camera-sensor@3d {
+            compatible = "ovti,ov02a10";
+            reg = <0x3d>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&clk_24m_cam>;
+
+            clocks = <&topckgen CLK_TOP_MUX_CAMTG>,
+                     <&topckgen CLK_TOP_UNIVP_192M_D8>;
+            clock-names = "eclk", "freq_mux";
+            clock-frequency = <24000000>;
+
+            rotation = <180>;
+            ovti,mipi-tx-speed = <4>;
+
+            dovdd-supply = <&mt6358_vcamio_reg>;
+            avdd-supply = <&mt6358_vcama1_reg>;
+            dvdd-supply = <&mt6358_vcn18_reg>;
+
+            powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
+            reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
+
+            port {
+                wcam_out: endpoint {
+                    data-lanes = <1>;
+                    link-frequencies = /bits/ 64 <390000000>;
+                    remote-endpoint = <&mipi_in_wcam>;
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index e64e5db..63a2335 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12389,6 +12389,13 @@ M:	Harald Welte <laforge@gnumonks.org>
 S:	Maintained
 F:	drivers/char/pcmcia/cm4040_cs.*
 
+OMNIVISION OV02A10 SENSOR DRIVER
+M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+T:	git git://linuxtv.org/media_tree.git
+F:	Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
+
 OMNIVISION OV13858 SENSOR DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
 L:	linux-media@vger.kernel.org
-- 
2.9.2
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
