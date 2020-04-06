Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B30F19FAC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZixJOeni1wiYW6w4qY16mXhT7tksOUOhrQxz5r0l/+Q=; b=haC8KzbRkhB9KbWOmZBr6mjial
	zDtUPoMsEUvd3eY1YHl7JKMcze3EUBaHMs9oquB2EKXATaAarDXEqpaYu7UwuoTnykihwpa8rU/wI
	D5vm6+6G7zS7kl1DdRHMbA1dzp8G77y2x/ida7koQP6/jnNHhsyJ1qCEnuHYjdWietTpwuMHcWvu/
	+KgNi5Qe6Dl6IZofmt2wfZ8g+Ao3f9xg2SgEUCTaFe4wVkKlqnYaABEL3xNvrp6mKfRrB99yajNTj
	cwaGg4zP+qagC10a5MqKMaIGJrPcMgEx0Vags1kdvx64z88dx7SB3891lhtpNmw/zwDb6SNSvK6wY
	92R7iqjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUtt-0002ng-NA; Mon, 06 Apr 2020 16:47:05 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUqC-0005Ls-SN
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:43:20 +0000
X-IronPort-AV: E=Sophos;i="5.72,351,1580742000"; d="scan'208";a="43857586"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie5.idc.renesas.com with ESMTP; 07 Apr 2020 01:43:16 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id 8C21240065D4;
 Tue,  7 Apr 2020 01:43:12 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: [PATCH v5 5/5] media: dt-bindings: media: i2c: convert ov5645
 bindings to json-schema
Date: Mon,  6 Apr 2020 17:42:41 +0100
Message-Id: <1586191361-16598-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094317_255687_47BEE3F5 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert ov5645 bindings to json-schema.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/media/i2c/ov5645.txt  |  52 --------
 .../devicetree/bindings/media/i2c/ov5645.yaml | 126 ++++++++++++++++++
 2 files changed, 126 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.txt
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
deleted file mode 100644
index a55bb728ea48..000000000000
--- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
+++ /dev/null
@@ -1,52 +0,0 @@
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
index 000000000000..d5cdcf9a1c76
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ov5645.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision 1/4-Inch 5MP CMOS Digital Image Sensor
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
+    description: External clock frequency should range between 6MHz to 27MHz.
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: xclk
+
+  enable-gpios:
+    description: |-
+      Chip enable GPIO. This corresponds to the hardware pin PWDNB which is
+      physically active low.
+
+  reset-gpios:
+    description: Chip reset GPIO. This corresponds to the hardware pin RESETB.
+
+  vdddo-supply:
+    description: Chip digital IO regulator.
+
+  vdda-supply:
+    description: Chip analog regulator.
+
+  vddd-supply:
+    description: Chip digital core regulator.
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
+              The sensor supports either one-lane, or two-lane operation.
+              For one-lane operation the property must be set to <1> and
+              for two-lane operation the property must be set to <1 2>.
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
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ov5645: sensor@3c {
+            compatible = "ovti,ov5645";
+            reg = <0x3c>;
+            clocks = <&ov5645_cl>;
+            clock-names = "xclk";
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
