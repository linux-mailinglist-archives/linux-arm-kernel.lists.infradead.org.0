Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52687258F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=PcwyHfT5ldE5Tp8oTTaYIFSolLYmsAELgH9ONuvf128=; b=eNe
	RVB6srkBX88WqokC1yWoQYK/Ip8HmGLqpNx34O9crJWDXoq5TRaHTh6kvc57oUZUqyimk03H2pl8C
	c9HU4KqVuqatlaLvMQJPIq98gaUKSI8ZtecTKncVppxsdEGvKs8U0CdneFh6CN+06pvIXUFuGdlDM
	MYHaff8cnwh/A56OnqRvT42ahNRH2r26QOmF7n5ZYgUuLa46OsUoU/i3PeQ6/PaaqvrHlCbq4VwyO
	clW/qatK92mTgBxhkDzvwTHxQtzyNpmTtFx3N9FgvEiyQJowrghwjjq4NpzHf7oxy5dh/NySy2eKL
	rG6ysSSgxqo4ZDdaL/1eyN25o95ALGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBSJ-0005m3-Uf; Tue, 21 May 2019 20:33:52 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBRo-0005H4-2r
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:33:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=LWjAjMqpQmOp9/bSwEIGc/eCH1lXwJnGS01VpbKfTMw=; b=EuCePWfSe5Qk
 Yg2Y2JKXnwWbXj+5XUen4TyWlSPuKCm38JWy7yJK5v0uWYqIwLEmIuv3RRUuXXCyrV9S6fJJbjvGJ
 ocSjAC2eGwsV82MMDnCBC3BdtvWT7CoMogcVgj057hiNeUCE+nASOQDIzf7yZOZWUsIPwnoOMVEtB
 B/GWo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTBRj-00022b-2P; Tue, 21 May 2019 20:33:15 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 6E4781126D17; Tue, 21 May 2019 21:33:09 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "spi: Add YAML schemas for the generic SPI options" to the
 spi tree
In-Reply-To: <f53ee257855c6499fd783dc8665558f7670312f6.1558363790.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190521203309.6E4781126D17@debutante.sirena.org.uk>
Date: Tue, 21 May 2019 21:33:09 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_133320_445276_CF29050D 
X-CRM114-Status: GOOD (  26.45  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: Add YAML schemas for the generic SPI options

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 0a1b929356830257568f9547e173f0e7498060ea Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 20 May 2019 16:50:33 +0200
Subject: [PATCH] spi: Add YAML schemas for the generic SPI options

The SPI controllers have a bunch of generic options that are needed in a
device tree. Add a YAML schemas for those.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../devicetree/bindings/spi/spi-bus.txt       | 112 +-----------
 .../bindings/spi/spi-controller.yaml          | 161 ++++++++++++++++++
 2 files changed, 162 insertions(+), 111 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/spi-controller.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-bus.txt b/Documentation/devicetree/bindings/spi/spi-bus.txt
index 1f6e86f787ef..e07783505498 100644
--- a/Documentation/devicetree/bindings/spi/spi-bus.txt
+++ b/Documentation/devicetree/bindings/spi/spi-bus.txt
@@ -1,111 +1 @@
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
+This file has moved to spi-controller.yaml.
diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
new file mode 100644
index 000000000000..876c0623f322
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
+    pattern: "^spi(@.*|-[0-9a-f])*$"
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
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
