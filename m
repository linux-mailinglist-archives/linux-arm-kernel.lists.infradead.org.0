Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167444368D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ElruD2URDdKjtl9BsdU3xr+F1Lre90bcmiaSbmOsUhw=; b=MMusG5fr5uNZGP
	71MlEsl32I6TYZb6fIooZoNsPc5PR/KSzfvxRKX2Xxwy14nxJXql1SVvGtSgBclnnspcp4sEbBAGU
	iIZbWckzOlRJwKkaTvoVXw3jH+7o3+XH6Xu95SOSgoo9DVsgbkNTz/imr8YFoEfOPPAAJIanqnEz5
	Dd3q1MDd5PN/AAQNN7D5nWDvb1aHzVGL1JS3s+IRdMZvhaRu7JBFDguXCVTrVVxUatqW7b5K+Gnml
	ExS84XMSYsSLUAA9xQesZmWJm3u0RTFVHz83M2ouy2QdDhXdB3iaftkSFPK9HrjpZ1iiTw0M7BRqH
	SiH4woZ1lT+v3W1yf7Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPn6-0005zc-CA; Thu, 13 Jun 2019 13:29:20 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPkH-0003WX-Ry
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:31 +0000
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C267620001E;
 Thu, 13 Jun 2019 13:26:21 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 1/2] dt-bindings: nvmem: Add YAML schemas for the generic
 NVMEM bindings
Date: Thu, 13 Jun 2019 10:57:11 +0200
Message-Id: <20190613085712.22241-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062626_357289_417FBC7E 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The nvmem providers and consumers have a bunch of generic properties that
are needed in a device tree. Add a YAML schemas for those.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../bindings/nvmem/nvmem-consumer.yaml        | 45 +++++++++
 .../devicetree/bindings/nvmem/nvmem.txt       | 81 +---------------
 .../devicetree/bindings/nvmem/nvmem.yaml      | 93 +++++++++++++++++++
 3 files changed, 139 insertions(+), 80 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
new file mode 100644
index 000000000000..c48b74733b68
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nvmem-consumer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVMEM (Non Volatile Memory) Consumer Device Tree Bindings
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+select: true
+
+properties:
+  nvmem:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      List of phandle to the nvmem providers.
+
+  nvmem-cells:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      List of phandle to the nvmem data cells.
+
+  nvmem-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      Names for the each nvmem provider.
+
+  nvmem-cell-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      Names for each nvmem-cells specified.
+
+dependencies:
+  nvmem-names: [ nvmem ]
+  nvmem-cell-names: [ nvmem-cells ]
+
+examples:
+  - |
+    tsens {
+        /* ... */
+        nvmem-cells = <&tsens_calibration>;
+        nvmem-cell-names = "calibration";
+    };
diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.txt b/Documentation/devicetree/bindings/nvmem/nvmem.txt
index fd06c09b822b..46a7ef485e24 100644
--- a/Documentation/devicetree/bindings/nvmem/nvmem.txt
+++ b/Documentation/devicetree/bindings/nvmem/nvmem.txt
@@ -1,80 +1 @@
-= NVMEM(Non Volatile Memory) Data Device Tree Bindings =
-
-This binding is intended to represent the location of hardware
-configuration data stored in NVMEMs like eeprom, efuses and so on.
-
-On a significant proportion of boards, the manufacturer has stored
-some data on NVMEM, for the OS to be able to retrieve these information
-and act upon it. Obviously, the OS has to know about where to retrieve
-these data from, and where they are stored on the storage device.
-
-This document is here to document this.
-
-= Data providers =
-Contains bindings specific to provider drivers and data cells as children
-of this node.
-
-Optional properties:
- read-only: Mark the provider as read only.
-
-= Data cells =
-These are the child nodes of the provider which contain data cell
-information like offset and size in nvmem provider.
-
-Required properties:
-reg:	specifies the offset in byte within the storage device.
-
-Optional properties:
-
-bits:	Is pair of bit location and number of bits, which specifies offset
-	in bit and number of bits within the address range specified by reg property.
-	Offset takes values from 0-7.
-
-For example:
-
-	/* Provider */
-	qfprom: qfprom@700000 {
-		...
-
-		/* Data cells */
-		tsens_calibration: calib@404 {
-			reg = <0x404 0x10>;
-		};
-
-		tsens_calibration_bckp: calib_bckp@504 {
-			reg = <0x504 0x11>;
-			bits = <6 128>
-		};
-
-		pvs_version: pvs-version@6 {
-			reg = <0x6 0x2>
-			bits = <7 2>
-		};
-
-		speed_bin: speed-bin@c{
-			reg = <0xc 0x1>;
-			bits = <2 3>;
-
-		};
-		...
-	};
-
-= Data consumers =
-Are device nodes which consume nvmem data cells/providers.
-
-Required-properties:
-nvmem-cells: list of phandle to the nvmem data cells.
-nvmem-cell-names: names for the each nvmem-cells specified. Required if
-	nvmem-cells is used.
-
-Optional-properties:
-nvmem	: list of phandles to nvmem providers.
-nvmem-names: names for the each nvmem provider. required if nvmem is used.
-
-For example:
-
-	tsens {
-		...
-		nvmem-cells = <&tsens_calibration>;
-		nvmem-cell-names = "calibration";
-	};
+This file has been moved to nvmem.yaml and nvmem-consumer.yaml.
diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
new file mode 100644
index 000000000000..65ef2dbbb2a9
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nvmem.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVMEM (Non Volatile Memory) Device Tree Bindings
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding is intended to represent the location of hardware
+  configuration data stored in NVMEMs like eeprom, efuses and so on.
+
+  On a significant proportion of boards, the manufacturer has stored
+  some data on NVMEM, for the OS to be able to retrieve these
+  information and act upon it. Obviously, the OS has to know about
+  where to retrieve these data from, and where they are stored on the
+  storage device.
+
+properties:
+  $nodename:
+    pattern: "^(eeprom|efuse|nvram)(@.*|-[0-9a-f])*$"
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  read-only:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Mark the provider as read only.
+
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    type: object
+
+    properties:
+      reg:
+        maxItems: 1
+        description:
+          Offset and size in bytes within the storage device.
+
+      bits:
+        maxItems: 1
+        items:
+          items:
+            - minimum: 0
+              maximum: 7
+              description:
+                Offset in bit within the address range specified by reg.
+            - minimum: 1
+              description:
+                Size in bit within the address range specified by reg.
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+examples:
+  - |
+      qfprom: qfprom@700000 {
+          #address-cells = <1>;
+          #size-cells = <1>;
+
+          /* ... */
+
+          /* Data cells */
+          tsens_calibration: calib@404 {
+              reg = <0x404 0x10>;
+          };
+
+          tsens_calibration_bckp: calib_bckp@504 {
+              reg = <0x504 0x11>;
+              bits = <6 128>;
+          };
+
+          pvs_version: pvs-version@6 {
+              reg = <0x6 0x2>;
+              bits = <7 2>;
+          };
+
+          speed_bin: speed-bin@c{
+              reg = <0xc 0x1>;
+              bits = <2 3>;
+          };
+      };
+
+...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
