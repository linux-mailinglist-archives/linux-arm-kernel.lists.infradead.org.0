Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B73FE8C06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:42:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:
	Subject:Date:From:References:In-Reply-To:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EXY7XyWVmcNPQJahwC+aeEcyFqEfzUZeGAKbR/H3A8U=; b=WCLm+4hVM/xG53PVSWTaufL+Ci
	cHcOXxK6lpWu/8G6oEd+AoNXZ2NkJBPf/dWkNzpDWgDp48prL9L+giFSHqQX6Zkp+YXFnQJAO+cH1
	YySg+/o0G/1KV5+NNxhhHTSF6Fdiaog6GghXuAnV+4r9xNtlVyMxuyFMUCbyfTa5V0ucialVVvHgz
	geb5xKUCl2xyxLMmlxRqOI+mUfvJewOdAqBZN7W9OH/34T3987TUH9gTwS7oXBf1XY1GPMH86+zXP
	YZN5I7g9l0RqZGj7iixqW/AWC7PdZi7yy5SLHzUEkAB9CssHjMFmvSAgzAGrlUc7CMkV92QN/NPQ6
	dVVQRaew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTdA-0001JB-FK; Tue, 29 Oct 2019 15:42:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTb9-0007Ci-VO
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 15:39:58 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id 8EE9B68D04; Tue, 29 Oct 2019 16:39:53 +0100 (CET)
In-Reply-To: <20191029153815.C631668C4E@verein.lst.de>
References: <20191029153815.C631668C4E@verein.lst.de>
From: Torsten Duwe <duwe@lst.de>
Date: Tue, 29 Oct 2019 13:16:57 +0100
Subject: [PATCH v4 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Icenowy Zheng <icenowy@aosc.io>, Sean Paul <seanpaul@chromium.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Harald Geyer <harald@ccbib.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
Message-Id: <20191029153953.8EE9B68D04@verein.lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_083956_318033_851A8D4D 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The anx6345 is an ultra-low power DisplayPort/eDP transmitter designed
for portable devices.

Add a binding document for it.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Torsten Duwe <duwe@suse.de>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../bindings/display/bridge/anx6345.yaml           | 92 ++++++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx6345.yaml b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
new file mode 100644
index 000000000000..094e8e8a5faa
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/anx6345.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analogix ANX6345 eDP Transmitter Device Tree Bindings
+
+maintainers:
+  - Torsten Duwe <duwe@lst.de>
+
+description: |
+  The ANX6345 is an ultra-low power Full-HD eDP transmitter designed for
+  portable devices.
+
+properties:
+  compatible:
+    const: analogix,anx6345
+
+  reg:
+    maxItems: 1
+    description: base I2C address of the device
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO connected to active low reset
+
+  dvdd12-supply:
+    maxItems: 1
+    description: Regulator for 1.2V digital core power.
+
+  dvdd25-supply:
+    maxItems: 1
+    description: Regulator for 2.5V digital core power.
+
+  ports:
+    anyOf:
+      - port@0:
+        description: Video port for LVTTL input
+      - port@1:
+        description: Video port for eDP output (panel or connector).
+                     May be omitted if EDID works reliably.
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - dvdd12-supply
+  - dvdd25-supply
+  - ports
+
+examples:
+  - |
+    i2c0 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      anx6345: anx6345@38 {
+        compatible = "analogix,anx6345";
+        reg = <0x38>;
+        reset-gpios = <&pio42 1 /* GPIO_ACTIVE_LOW */>;
+        dvdd25-supply = <&reg_dldo2>;
+        dvdd12-supply = <&reg_fldo1>;
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          anx6345_in: port@0 {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            reg = <0>;
+            anx6345_in_tcon0: endpoint@0 {
+              reg = <0>;
+              remote-endpoint = <&tcon0_out_anx6345>;
+            };
+          };
+
+          anx6345_out: port@1 {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            reg = <1>;
+            anx6345_out_panel: endpoint@0 {
+              reg = <0>;
+              remote-endpoint = <&panel_in_edp>;
+            };
+          };
+        };
+      };
+    };
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
