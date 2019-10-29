Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C66EDD76
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 12:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:
	Subject:Date:From:References:In-Reply-To:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OponUmLaW2/BIIvMlNRN7eFzOKlE/kokwMmat/ruy+M=; b=pwJ76E/UgCRms0WMi4GMQcrojb
	B2vEGZtCx+RIV+puKNtEINCeS1OO0/c4p0dqNwwLdyl1vjx/lYqb9IC88guHmp6s1zwN4po3el+PK
	4jBi/7LnnmtShtm0zFPak5AzEHPqSLayHwp2L5jOwdaMRDUShgbZpzgxN1U17DwLp98Rjt20V6ExR
	e0OqQCbRqv+03w76qQIBNUC8gI0QfiqZQXAoFjCUXLq3TiFJmS33DLCRWujPnzsuQZ00FFy8sWsmb
	xwYmdoQROw1us2876psaY2ovJqSMRD82ZFP4tnlIGRcFw/J5P0I6U4ltg6kjs5X+j9nHhW/22a0xl
	VNK90N5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRaD8-0003Ir-KO; Mon, 04 Nov 2019 11:07:50 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRaBb-0002E6-SU
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 11:06:17 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id C3BA468C4E; Mon,  4 Nov 2019 12:06:13 +0100 (CET)
In-Reply-To: <20191104110400.F319F68BE1@verein.lst.de>
References: <20191104110400.F319F68BE1@verein.lst.de>
From: Torsten Duwe <duwe@lst.de>
Date: Tue, 29 Oct 2019 13:16:57 +0100
Subject: [PATCH v5 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Icenowy Zheng <icenowy@aosc.io>, Sean Paul <seanpaul@chromium.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Harald Geyer <harald@ccbib.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
Message-Id: <20191104110613.C3BA468C4E@verein.lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_030616_238861_4E8D5F31 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
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
 .../bindings/display/bridge/anx6345.yaml           | 102 ++++++++++++++++++++++
 1 file changed, 102 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx6345.yaml b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
new file mode 100644
index 000000000000..094e8e8a5faa
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
@@ -0,0 +1,102 @@
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
+    type: object
+
+    properties:
+      port@0:
+        type: object
+        description: |
+          Video port for LVTTL input
+
+      port@1:
+        type: object
+        description: |
+          Video port for eDP output (panel or connector).
+          May be omitted if EDID works reliably.
+
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
+additionalProperties: false
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
