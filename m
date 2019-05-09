Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4A31862F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 09:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FxVqWi/N0Hf8SP7E3vec+R3jI7kDSrkkwGqdj6KHDvw=; b=UavhN3nce/DOxY
	2py6UbuLpKl6lWE/kP7iYuNCZY61kXnYWiM7zFL17naU8jrHMYuM1N9LRFL8hhYB4wCJZPxI2luk9
	Kefvj1pe3Nu2q1qo54YGB4NUPQ3oFgxoie5vPI9uy7U2SfxLWcLAR9BY8ZpbNmbfxRwuaWQVzu1fo
	ahD076hVB80hpcqHUQr3ja8WXtnAxIc3Bist0HxhODvpSclTmMSW52aEHgG/qpmAffugnEn1AcpW/
	AicmcDZeYGifaHw5wgUXvbuiVrFw8gpYiGZl/0111bFVOARsseKDNqwIptSt8JcHdsoIpTc5xXoXS
	/8AFmVrn6yC64SMDPTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdRp-0007xu-2h; Thu, 09 May 2019 07:26:33 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdRZ-0007wi-4f
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 07:26:19 +0000
X-Originating-IP: 90.88.28.253
Received: from localhost (aaubervilliers-681-1-86-253.w90-88.abo.wanadoo.fr
 [90.88.28.253]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id AA0641C0007;
 Thu,  9 May 2019 07:26:11 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Mark Brown <broonie@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v2 1/4] dt-bindings: spi: Add YAML schemas for the generic SPI
 options
Date: Thu,  9 May 2019 09:26:05 +0200
Message-Id: <1acc9ff7f59064b74cc319b7812479bcd842a897.1557386749.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_002617_508439_CEAD9E5F 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SPI controllers have a bunch of generic options that are needed in a
device tree. Add a YAML schemas for those.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Rework the nodename pattern
  - Limit the index of the usable chip selects to 256
  - Rework the slave devices regex
  - Remove the requirement on #address-cells and #size-cells
  - Declare the slave and slave devices nodes as objects
  - Add spi-max-frequency
  - Fix the bus width range
---
 Documentation/devicetree/bindings/spi/spi-bus.txt         | 111 +-----
 Documentation/devicetree/bindings/spi/spi-controller.yaml | 161 +++++++-
 2 files changed, 161 insertions(+), 111 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-bus.txt
 create mode 100644 Documentation/devicetree/bindings/spi/spi-controller.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-bus.txt b/Documentation/devicetree/bindings/spi/spi-bus.txt
deleted file mode 100644
index 1f6e86f787ef..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-bus.txt
+++ /dev/null
@@ -1,111 +0,0 @@
-SPI (Serial Peripheral Interface) busses
-
-SPI busses can be described with a node for the SPI controller device
-and a set of child nodes for each SPI slave on the bus.  The system's SPI
-controller may be described for use in SPI master mode or in SPI slave mode,
-but not for both at the same time.
-
-The SPI controller node requires the following properties:
-- compatible      - Name of SPI bus controller following generic names
-		    recommended practice.
-
-In master mode, the SPI controller node requires the following additional
-properties:
-- #address-cells  - number of cells required to define a chip select
-		address on the SPI bus.
-- #size-cells     - should be zero.
-
-In slave mode, the SPI controller node requires one additional property:
-- spi-slave       - Empty property.
-
-No other properties are required in the SPI bus node.  It is assumed
-that a driver for an SPI bus device will understand that it is an SPI bus.
-However, the binding does not attempt to define the specific method for
-assigning chip select numbers.  Since SPI chip select configuration is
-flexible and non-standardized, it is left out of this binding with the
-assumption that board specific platform code will be used to manage
-chip selects.  Individual drivers can define additional properties to
-support describing the chip select layout.
-
-Optional properties (master mode only):
-- cs-gpios	  - gpios chip select.
-- num-cs	  - total number of chipselects.
-
-If cs-gpios is used the number of chip selects will be increased automatically
-with max(cs-gpios > hw cs).
-
-So if for example the controller has 2 CS lines, and the cs-gpios
-property looks like this:
-
-cs-gpios = <&gpio1 0 0>, <0>, <&gpio1 1 0>, <&gpio1 2 0>;
-
-Then it should be configured so that num_chipselect = 4 with the
-following mapping:
-
-cs0 : &gpio1 0 0
-cs1 : native
-cs2 : &gpio1 1 0
-cs3 : &gpio1 2 0
-
-
-SPI slave nodes must be children of the SPI controller node.
-
-In master mode, one or more slave nodes (up to the number of chip selects) can
-be present.  Required properties are:
-- compatible      - Name of SPI device following generic names recommended
-		    practice.
-- reg             - Chip select address of device.
-- spi-max-frequency - Maximum SPI clocking speed of device in Hz.
-
-In slave mode, the (single) slave node is optional.
-If present, it must be called "slave".  Required properties are:
-- compatible      - Name of SPI device following generic names recommended
-		    practice.
-
-All slave nodes can contain the following optional properties:
-- spi-cpol        - Empty property indicating device requires inverse clock
-		    polarity (CPOL) mode.
-- spi-cpha        - Empty property indicating device requires shifted clock
-		    phase (CPHA) mode.
-- spi-cs-high     - Empty property indicating device requires chip select
-		    active high.
-- spi-3wire       - Empty property indicating device requires 3-wire mode.
-- spi-lsb-first   - Empty property indicating device requires LSB first mode.
-- spi-tx-bus-width - The bus width (number of data wires) that is used for MOSI.
-		    Defaults to 1 if not present.
-- spi-rx-bus-width - The bus width (number of data wires) that is used for MISO.
-		    Defaults to 1 if not present.
-- spi-rx-delay-us - Microsecond delay after a read transfer.
-- spi-tx-delay-us - Microsecond delay after a write transfer.
-
-Some SPI controllers and devices support Dual and Quad SPI transfer mode.
-It allows data in the SPI system to be transferred using 2 wires (DUAL) or 4
-wires (QUAD).
-Now the value that spi-tx-bus-width and spi-rx-bus-width can receive is
-only 1 (SINGLE), 2 (DUAL) and 4 (QUAD).
-Dual/Quad mode is not allowed when 3-wire mode is used.
-
-If a gpio chipselect is used for the SPI slave the gpio number will be passed
-via the SPI master node cs-gpios property.
-
-SPI example for an MPC5200 SPI bus:
-	spi@f00 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "fsl,mpc5200b-spi","fsl,mpc5200-spi";
-		reg = <0xf00 0x20>;
-		interrupts = <2 13 0 2 14 0>;
-		interrupt-parent = <&mpc5200_pic>;
-
-		ethernet-switch@0 {
-			compatible = "micrel,ks8995m";
-			spi-max-frequency = <1000000>;
-			reg = <0>;
-		};
-
-		codec@1 {
-			compatible = "ti,tlv320aic26";
-			spi-max-frequency = <100000>;
-			reg = <1>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
new file mode 100644
index 000000000000..6258644249b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -0,0 +1,161 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spi-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SPI Controller Generic Binding
+
+maintainers:
+  - Mark Brown <broonie@kernel.org>
+
+description: |
+  SPI busses can be described with a node for the SPI controller device
+  and a set of child nodes for each SPI slave on the bus. The system SPI
+  controller may be described for use in SPI master mode or in SPI slave mode,
+  but not for both at the same time.
+
+properties:
+  $nodename:
+    pattern: "^spi(@.*)$"
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  cs-gpios:
+    description: |
+      GPIOs used as chip selects.
+      If that property is used, the number of chip selects will be
+      increased automatically with max(cs-gpios, hardware chip selects).
+
+      So if, for example, the controller has 2 CS lines, and the
+      cs-gpios looks like this
+        cs-gpios = <&gpio1 0 0>, <0>, <&gpio1 1 0>, <&gpio1 2 0>;
+
+      Then it should be configured so that num_chipselect = 4, with
+      the following mapping
+        cs0 : &gpio1 0 0
+        cs1 : native
+        cs2 : &gpio1 1 0
+        cs3 : &gpio1 2 0
+
+  num-cs:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Total number of chip selects.
+
+  spi-slave:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      The SPI controller acts as a slave, instead of a master.
+
+patternProperties:
+  "^slave$":
+    type: object
+
+    properties:
+      compatible:
+        description:
+          Compatible of the SPI device.
+
+    required:
+      - compatible
+
+  "^.*@[0-9a-f]+$":
+    type: object
+
+    properties:
+      compatible:
+        description:
+          Compatible of the SPI device.
+
+      reg:
+        maxItems: 1
+        minimum: 0
+        maximum: 256
+        description:
+          Chip select used by the device.
+
+      spi-3wire:
+        $ref: /schemas/types.yaml#/definitions/flag
+        description:
+          The device requires 3-wire mode.
+
+      spi-cpha:
+        $ref: /schemas/types.yaml#/definitions/flag
+        description:
+          The device requires shifted clock phase (CPHA) mode.
+
+      spi-cpol:
+        $ref: /schemas/types.yaml#/definitions/flag
+        description:
+          The device requires inverse clock polarity (CPOL) mode.
+
+      spi-cs-high:
+        $ref: /schemas/types.yaml#/definitions/flag
+        description:
+          The device requires the chip select active high.
+
+      spi-lsb-first:
+        $ref: /schemas/types.yaml#/definitions/flag
+        description:
+          The device requires the LSB first mode.
+
+      spi-max-frequency:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          Maximum SPI clocking speed of the device in Hz.
+
+      spi-rx-bus-width:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32
+          - enum: [ 1, 2, 4 ]
+          - default: 1
+        description:
+          Bus width to the SPI bus used for MISO.
+
+      spi-rx-delay-us:
+        description:
+          Delay, in microseconds, after a read transfer.
+
+      spi-tx-bus-width:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32
+          - enum: [ 1, 2, 4 ]
+          - default: 1
+        description:
+          Bus width to the SPI bus used for MOSI.
+
+      spi-tx-delay-us:
+        description:
+          Delay, in microseconds, after a write transfer.
+
+    required:
+      - compatible
+      - reg
+
+examples:
+  - |
+    spi@f00 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "fsl,mpc5200b-spi","fsl,mpc5200-spi";
+        reg = <0xf00 0x20>;
+        interrupts = <2 13 0 2 14 0>;
+        interrupt-parent = <&mpc5200_pic>;
+
+        ethernet-switch@0 {
+            compatible = "micrel,ks8995m";
+            spi-max-frequency = <1000000>;
+            reg = <0>;
+        };
+
+        codec@1 {
+            compatible = "ti,tlv320aic26";
+            spi-max-frequency = <100000>;
+            reg = <1>;
+        };
+    };

base-commit: fcdb095ad0016d77d3729dcf8ea915ca4b80fd8b
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
