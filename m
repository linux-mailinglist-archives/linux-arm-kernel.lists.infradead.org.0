Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E8F18B354
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J5Go0SQ+V0CMom/RV7hGGbN81bbsAyEqTtwG94RHfyQ=; b=VR9vuk3UTncItoSVwgU5YHRCDg
	AIiNSBRrOE9OnB6jmHuZWYYUayaLkw6NlE3sIhgDx/P1Vq3wTjRxiteqOST3g6pmJI2LxZHV1NlhS
	Q/jgz2UlMPK4SpA/8tdtRq2nVlYxE9qcWfJrH/pCxtLlE1618Zz08WdWhmdGrD2APqTNqDLJqdKBY
	4lcbGZpwV7AwwABnyhUnVsL+4zVyLaDNv1S50egJlPlDYfrRSrExP7v7E3iBETPtUybzMZGask28c
	REKpNycw3Y9PgOMSWNdvTraG5G1BIthdAUQIq1mfx1hS73iH3ijhEsKMUwHVR8WMhkRdFgRJCC7dv
	vJGPELjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuC9-00042a-Af; Thu, 19 Mar 2020 12:22:41 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuBt-0003pI-LM
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 12:22:27 +0000
X-IronPort-AV: E=Sophos;i="5.70,571,1574089200"; d="scan'208";a="42339866"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 19 Mar 2020 21:22:25 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 8C96142ED940;
 Thu, 19 Mar 2020 21:22:21 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: [PATCH v4 5/5] media: dt-bindings: media: i2c: convert ov5645
 bindings to json-schema
Date: Thu, 19 Mar 2020 12:19:23 +0000
Message-Id: <1584620363-2255-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_052226_085631_93CABB24 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert ov5645 bindings to json-schema.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/media/i2c/ov5645.txt  |  54 -------
 .../devicetree/bindings/media/i2c/ov5645.yaml | 140 ++++++++++++++++++
 2 files changed, 140 insertions(+), 54 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.txt
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
deleted file mode 100644
index 1c85c78ec58c..000000000000
--- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
+++ /dev/null
@@ -1,54 +0,0 @@
-* Omnivision 1/4-Inch 5Mp CMOS Digital Image Sensor
-
-The Omnivision OV5645 is a 1/4-Inch CMOS active pixel digital image sensor with
-an active array size of 2592H x 1944V. It is programmable through a serial I2C
-interface.
-
-Required Properties:
-- compatible: Value should be "ovti,ov5645".
-- clocks: Reference to the xclk clock.
-- clock-names: Should be "xclk".
-- enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
-  to the hardware pin PWDNB which is physically active low.
-- reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
-  the hardware pin RESETB.
-- vdddo-supply: Chip digital IO regulator.
-- vdda-supply: Chip analog regulator.
-- vddd-supply: Chip digital core regulator.
-
-The device node must contain one 'port' child node for its digital output
-video port, in accordance with the video interface bindings defined in
-Documentation/devicetree/bindings/media/video-interfaces.txt.
-
-Example:
-
-	&i2c1 {
-		...
-
-		ov5645: ov5645@3c {
-			compatible = "ovti,ov5645";
-			reg = <0x3c>;
-
-			enable-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
-			reset-gpios = <&gpio5 20 GPIO_ACTIVE_LOW>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&camera_rear_default>;
-
-			clocks = <&clks 200>;
-			clock-names = "xclk";
-			assigned-clocks = <&clks 200>;
-			assigned-clock-rates = <24000000>;
-
-			vdddo-supply = <&camera_dovdd_1v8>;
-			vdda-supply = <&camera_avdd_2v8>;
-			vddd-supply = <&camera_dvdd_1v2>;
-
-			port {
-				ov5645_ep: endpoint {
-					clock-lanes = <1>;
-					data-lanes = <0 2>;
-					remote-endpoint = <&csi0_ep>;
-				};
-			};
-		};
-	};
diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.yaml b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
new file mode 100644
index 000000000000..4bf58ad210c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ov5645.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision 1/4-Inch 5Mp CMOS Digital Image Sensor
+
+maintainers:
+  - Sakari Ailus <sakari.ailus@linux.intel.com>
+  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
+
+description: |-
+ The Omnivision OV5645 is a 1/4-Inch CMOS active pixel digital image sensor with
+ an active array size of 2592H x 1944V. It is programmable through a serial I2C
+ interface.
+
+properties:
+  compatible:
+    const: ovti,ov5645
+
+  reg:
+    description: I2C device address
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: xclk
+
+  assigned-clocks:
+    maxItems: 1
+
+  assigned-clock-rates:
+     items:
+     - description: Must be 24MHz (24000000).
+
+  enable-gpios:
+    description: |-
+      Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
+      to the hardware pin PWDNB which is physically active low.
+
+  reset-gpios:
+    description: |-
+      Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
+      the hardware pin RESETB.
+
+  vdddo-supply:
+    description:
+      Chip digital IO regulator.
+
+  vdda-supply:
+    description:
+      Chip analog regulator.
+
+  vddd-supply:
+    description:
+      Chip digital core regulator.
+
+  # See ../video-interfaces.txt for more details
+  port:
+    type: object
+    properties:
+      endpoint:
+        type: object
+
+        properties:
+          data-lanes:
+            description: |-
+              The sensor supports two-lane operation.
+              For two-lane operation the property must be set to <1 2>.
+            items:
+              - const: 1
+              - const: 2
+
+          clock-lanes:
+            description:
+              should be set to <0> (clock lane on hardware lane 0).
+            items:
+              - const: 0
+
+          remote-endpoint: true
+
+        required:
+          - data-lanes
+          - clock-lanes
+          - remote-endpoint
+
+        additionalProperties: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - assigned-clocks
+  - assigned-clock-rates
+  - enable-gpios
+  - reset-gpios
+  - vdddo-supply
+  - vdda-supply
+  - vddd-supply
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c1 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ov5645: sensor@3c {
+            compatible = "ovti,ov5645";
+            reg = <0x3c>;
+            clocks = <&ov5645_cl>;
+            clock-names = "xclk";
+            assigned-clocks = <&ov5645_cl>;
+            assigned-clock-rates = <24000000>;
+            enable-gpios = <&gpio1 6 /* GPIO_ACTIVE_HIGH */>;
+            reset-gpios = <&gpio5 20 /* GPIO_ACTIVE_LOW */>;
+            vdddo-supply = <&camera_dovdd_1v8>;
+            vdda-supply = <&camera_avdd_2v8>;
+            vddd-supply = <&camera_dvdd_1v2>;
+
+            port {
+                ov5645_0: endpoint {
+                    remote-endpoint = <&csi1_ep>;
+                    clock-lanes = <0>;
+                    data-lanes = <1 2>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
