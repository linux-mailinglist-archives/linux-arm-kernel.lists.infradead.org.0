Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EB275264
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Subject:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=n0yMLWcrTi1gPc1JaW21GPyoAx4rTX13SzhAyXAIdg4=; b=g1
	7Gp9qZNA5wIW1DRigdEqIRHWUtKtKkQt66VNIloUJQoTvNeTbGVMhNbvUbPSYWOmj3PrJXRy9zsuR
	LirCCsuw/ghSBHL0gaVC/lV4JydOAqPOJGAltZAS3jvJk/VIgkska2uq9ErcbaNhnKKnCLloM5bov
	Y4XeaqD8PVjbp7P88K00hIA+obnXTgS3/GJZMqjplx3WICXkkrIMU+hrwOCVMha6A5DlG8rfnk586
	JTrpWJZjCy19Dr2NOCXpLdzIn3pyoykOh9W4CRuPE3uzuMVZ6gYco4eAgRjEyTFzPqSzm6gdGuozk
	rKGcNDtp5gyJKwZ/yilQ5jYU0MXLDtZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfW6-0005M2-DY; Thu, 25 Jul 2019 15:18:50 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfVp-0005Lb-0v
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:18:34 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id DC20968B02; Thu, 25 Jul 2019 17:18:29 +0200 (CEST)
From: Torsten Duwe <duwe@lst.de>
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
References: <20190722150414.9F97668B20@verein.lst.de>
Subject: [PATCH v3 6a/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-Id: <20190725151829.DC20968B02@verein.lst.de>
Date: Thu, 25 Jul 2019 17:18:29 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_081833_363978_97391264 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 .../devicetree/bindings/display/bridge/anx6345.yaml |   90 ++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx6345.yaml b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
new file mode 100644
index 000000000000..0af092d101c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
@@ -0,0 +1,90 @@
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
+    description: I2C address of the device
+
+  reset-gpios:
+    maxItems: 1
+    description: active low GPIO to use for reset
+
+  dvdd12-supply:
+    maxItems: 1
+    description: Regulator for 1.2V digital core power.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  dvdd25-supply:
+    maxItems: 1
+    description: Regulator for 2.5V digital core power.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  ports:
+    type: object
+    minItems: 1
+    maxItems: 2
+    description: |
+      Video port 0 for LVTTL input,
+      Video port 1 for eDP output (panel or connector)
+      using the DT bindings defined in
+      Documentation/devicetree/bindings/media/video-interfaces.txt
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
+ - |
+  anx6345: anx6345@38 {
+      compatible = "analogix,anx6345";
+      reg = <0x38>;
+      reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24 */
+      dvdd25-supply = <&reg_dldo2>;
+      dvdd12-supply = <&reg_fldo1>;
+
+      ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          anx6345_in: port@0 {
+              #address-cells = <1>;
+              #size-cells = <0>;
+              reg = <0>;
+              anx6345_in_tcon0: endpoint@0 {
+                  reg = <0>;
+                  remote-endpoint = <&tcon0_out_anx6345>;
+              };
+          };
+
+          anx6345_out: port@1 {
+              #address-cells = <1>;
+              #size-cells = <0>;
+              reg = <1>;
+
+              anx6345_out_panel: endpoint@0 {
+                  reg = <0>;
+                  remote-endpoint = <&panel_in_edp>;
+              };
+          };
+      };
+  };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
