Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466C91B291E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AXcjky/rtru+w+8XwwNfht7jV7b1rBYQ4Ai8DqdPJsk=; b=Du4
	Btmc2GxPOKjDTyrkTjX2HTgsvq37ghDgjktnGKgcAwSrNy0ogkJ4wvNt4TY+J/0SIKlcdaGQp5iT7
	sEmrwCxe94JTzt7oUHtO+7hs/Ky2f2j+uZDZoiow4CjWF24dP/1tX8BCwMDINKIMkg4uwDlwBoyg5
	aSzc8C7HzAVxU6sbxSfl9qZV4clrZTQ6yjQS6AUs45ADbfQhJbu7hVNdRSyRFA8udHUHFOFWHiV+X
	UJU6LJaBRCUrSBD/6W4BeV4gEIV4Ts8HJffXI9+xPR68csUJIMmAOQv5JCCi6YKrDhE7Io1a9WZvO
	Yh8nZ6ocI/2W2yN5upUX2IAisl4DkSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtdN-0004Tu-JU; Tue, 21 Apr 2020 14:12:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtdF-0004TI-07
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:12:14 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6386B1A0D78;
 Tue, 21 Apr 2020 16:12:11 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 409661A0D7F;
 Tue, 21 Apr 2020 16:12:06 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0DAAF402D9;
 Tue, 21 Apr 2020 22:11:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2] dt-bindings: gpio: Convert i.MX to json-schema
Date: Tue, 21 Apr 2020 22:03:43 +0800
Message-Id: <1587477823-21036-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_071213_315294_33541CD6 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the i.MX GPIO binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- improve compatible;
	- drop clocks description.
---
 .../devicetree/bindings/gpio/fsl-imx-gpio.txt      | 35 -----------
 .../devicetree/bindings/gpio/fsl-imx-gpio.yaml     | 68 ++++++++++++++++++++++
 2 files changed, 68 insertions(+), 35 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/fsl-imx-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.txt b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.txt
deleted file mode 100644
index b4cd9f90..0000000
--- a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.txt
+++ /dev/null
@@ -1,35 +0,0 @@
-* Freescale i.MX/MXC GPIO controller
-
-Required properties:
-- compatible : Should be "fsl,<soc>-gpio"
-- reg : Address and length of the register set for the device
-- interrupts : Should be the port interrupt shared by all 32 pins, if
-  one number.  If two numbers, the first one is the interrupt shared
-  by low 16 pins and the second one is for high 16 pins.
-- gpio-controller : Marks the device node as a gpio controller.
-- #gpio-cells : Should be two.  The first cell is the pin number and
-  the second cell is used to specify the gpio polarity:
-      0 = active high
-      1 = active low
-- interrupt-controller: Marks the device node as an interrupt controller.
-- #interrupt-cells : Should be 2.  The first cell is the GPIO number.
-  The second cell bits[3:0] is used to specify trigger type and level flags:
-      1 = low-to-high edge triggered.
-      2 = high-to-low edge triggered.
-      4 = active high level-sensitive.
-      8 = active low level-sensitive.
-
-Optional properties:
-- clocks: the clock for clocking the GPIO silicon
-
-Example:
-
-gpio0: gpio@73f84000 {
-	compatible = "fsl,imx51-gpio", "fsl,imx35-gpio";
-	reg = <0x73f84000 0x4000>;
-	interrupts = <50 51>;
-	gpio-controller;
-	#gpio-cells = <2>;
-	interrupt-controller;
-	#interrupt-cells = <2>;
-};
diff --git a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
new file mode 100644
index 0000000..0b223ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/fsl-imx-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX/MXC GPIO controller
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx1-gpio
+      - fsl,imx21-gpio
+      - fsl,imx31-gpio
+      - fsl,imx35-gpio
+      - fsl,imx7d-gpio
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: |
+      Should be the port interrupt shared by all 32 pins, if one number.
+      If two numbers, the first one is the interrupt shared by low 16 pins
+      and the second one is for high 16 pins.
+    minItems: 1
+    maxItems: 2
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+  clocks:
+    maxItems: 1
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-controller: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - "#interrupt-cells"
+  - "#gpio-cells"
+  - gpio-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    gpio0: gpio@73f84000 {
+        compatible = "fsl,imx35-gpio";
+        reg = <0x73f84000 0x4000>;
+        interrupts = <50 51>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
