Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B00186B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 10:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4v4oqiF5sSg5w3gnAluapQJVKs/n60zsN5pCt5zunHI=; b=h9yHww2wte5VxC
	dQJQQIm1j9PBW6v3WLkxURa5jwWbcbkqSKYSwX5LMeo6tNiZdl79FuS9H+yr/eyeS2JLI8/arXBYj
	TPEckgtuCfZ22i2JupXU65hSeAUdGStSca5YNPGa/s2JQQneQ058+R5Kp6XrIyX64SMRpPDgRAZB7
	PX+60zP+l+wdb15cXnQk1Y7lntE2DA+BiWxdpxGRZ7OLO5EDFxA+wH7N7k5aQtOXqWmLeFmqRV1Rj
	onq6bQGWnXnUSbYhOIjyGUokY/2QHTgKmgO6QGfGWk8JKay0qgDLU/xdc0bhOBaP6PvUZtjaCCXXf
	oyQwvvI+Nd47M3h3Dvog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOeJC-0002U1-V8; Thu, 09 May 2019 08:21:42 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOeJ1-0002T0-BL
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 08:21:34 +0000
Received: from localhost (aaubervilliers-681-1-86-253.w90-88.abo.wanadoo.fr
 [90.88.28.253]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A7C27100005;
 Thu,  9 May 2019 08:21:22 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 1/2] dt-bindings: mmc: Add YAML schemas for the generic MMC
 options
Date: Thu,  9 May 2019 10:21:20 +0200
Message-Id: <68d3fb999d16e49696e832e1d1a6bcd7b76a6e8d.1557389988.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_012131_700466_A457F281 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MMC controllers have a bunch of generic options that are needed in a
device tree. Add a YAML schemas for those.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 342 +++++++-
 Documentation/devicetree/bindings/mmc/mmc.txt             | 177 +----
 2 files changed, 342 insertions(+), 177 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/mmc-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/mmc/mmc.txt

diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
new file mode 100644
index 000000000000..d06f1764f02e
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
@@ -0,0 +1,342 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/mmc-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SPI Controller Generic Binding
+
+maintainers:
+  - Ulf Hansson <ulf.hansson@linaro.org>
+
+description: |
+  These properties are common to multiple MMC host controllers. Any host
+  that requires the respective functionality should implement them using
+  these definitions.
+
+properties:
+  $nodename:
+    pattern: "^mmc(@.*)?$"
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  # Card Detection.
+  # If none of these properties are supplied, the host native card
+  # detect will be used. Only one of them should be provided.
+
+  broken-cd:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      There is no card detection available; polling must be used.
+
+  cd-gpios:
+    description:
+      The card detection will be done using the GPIO provided.
+
+  non-removable:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Non-removable slot (like eMMC); assume always present.
+
+  # Other properties
+
+  bus-width:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [1, 4, 8]
+      - default: 1
+    description:
+      Number of data lines.
+
+  max-frequency:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 400000
+      - maximum: 200000000
+    description:
+      Maximum operating frequency of the bus.
+
+  disable-wp:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      When set, no physical write-protect line is present. This
+      property should only be specified when the controller has a
+      dedicated write-protect detection logic. If a GPIO is always
+      used for the write-protect detection. If a GPIO is always used
+      for the write-protect detection logic, it is sufficient to not
+      specify the wp-gpios property in the absence of a write-protect
+      line.
+
+  wp-inverted:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      The CD line polarity is inverted.
+
+  wp-gpios:
+    description:
+      GPIO to use for the write-protect detection.
+
+  cd-debounce-delay-ms:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Set delay time before detecting card after card insert
+      interrupt.
+
+  cd-inverted:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      The CD line polarity is inverted.
+
+  no-1-8-v:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      When specified, denotes that 1.8V card voltage is not supported
+      on this system, even if the controller claims it.
+
+  cap-sd-highspeed:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      SD high-speed timing is supported.
+
+  cap-mmc-highspeed:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      MMC high-speed timing is supported.
+
+  sd-uhs-sdr12:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      SD UHS SDR12 speed is supported.
+
+  sd-uhs-sdr25:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      SD UHS SDR25 speed is supported.
+
+  sd-uhs-sdr50:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      SD UHS SDR50 speed is supported.
+
+  sd-uhs-sdr104:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      SD UHS SDR104 speed is supported.
+
+  sd-uhs-ddr50:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      SD UHS DDR50 speed is supported.
+
+  cap-power-off-card:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Powering off the card is safe.
+
+  cap-mmc-hw-reset:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      eMMC hardware reset is supported
+
+  cap-sdio-irq:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      enable SDIO IRQ signalling on this interface
+
+  full-pwr-cycle:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Full power cycle of the card is supported.
+
+  mmc-ddr-1_2v:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      eMMC high-speed DDR mode (1.2V I/O) is supported.
+
+  mmc-ddr-1_8v:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      eMMC high-speed DDR mode (1.8V I/O) is supported.
+
+  mmc-ddr-3_3v:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      eMMC high-speed DDR mode (3.3V I/O) is supported.
+
+  mmc-hs200-1_2v:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      eMMC HS200 mode (1.2V I/O) is supported.
+
+  mmc-hs200-1_8v:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      eMMC HS200 mode (1.8V I/O) is supported.
+
+  mmc-hs400-1_2v:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      eMMC HS400 mode (1.2V I/O) is supported.
+
+  mmc-hs400-1_8v:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      eMMC HS400 mode (1.8V I/O) is supported.
+
+  mmc-hs400-enhanced-strobe:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      eMMC HS400 enhanced strobe mode is supported
+
+  dsr:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 65535
+    description:
+      Value the card Driver Stage Register (DSR) should be programmed
+      with.
+
+  no-sdio:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Controller is limited to send SDIO commands during
+      initialization.
+
+  no-sd:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Controller is limited to send SD commands during initialization.
+
+  no-mmc:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Controller is limited to send MMC commands during
+      initialization.
+
+  fixed-emmc-driver-type:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 4
+    description:
+      For non-removable eMMC, enforce this driver type. The value is
+      the driver type as specified in the eMMC specification (table
+      206 in spec version 5.1)
+
+  post-power-on-delay-ms:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - default: 10
+    description:
+      It was invented for MMC pwrseq-simple which could be referred to
+      mmc-pwrseq-simple.txt. But now it\'s reused as a tunable delay
+      waiting for I/O signalling and card power supply to be stable,
+      regardless of whether pwrseq-simple is used. Default to 10ms if
+      no available.
+
+  supports-cqe:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      The presence of this property indicates that the corresponding
+      MMC host controller supports HW command queue feature.
+
+  disable-cqe-dcmd:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      The presence of this property indicates that the MMC
+      controller\'s command queue engine (CQE) does not support direct
+      commands (DCMDs).
+
+  keep-power-in-suspend:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      SDIO only. Preserves card power during a suspend/resume cycle.
+
+  # Deprecated: enable-sdio-wakeup
+  wakeup-source:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      SDIO only. Enables wake up of host system on SDIO IRQ assertion.
+
+  vmmc-supply:
+    description:
+      Supply for the card power
+
+  vqmmc-supply:
+    description:
+      Supply for the bus IO line power
+
+  mmc-pwrseq:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      System-on-Chip designs may specify a specific MMC power
+      sequence. To successfully detect an (e)MMC/SD/SDIO card, that
+      power sequence must be maintained while initializing the card.
+
+patternProperties:
+  "^.*@[0-9]+$":
+    properties:
+      reg:
+        maxItems: 1
+        minimum: 0
+        maximum: 7
+        description:
+          Must contain the SDIO function number of the function this
+          subnode describes. A value of 0 denotes the memory SD
+          function, values from 1 to 7 denote the SDIO functions.
+
+      broken-hpi:
+        $ref: /schemas/types.yaml#/definitions/flag
+        description:
+          Use this to indicate that the mmc-card has a broken hpi
+          implementation, and that hpi should not be used.
+
+    required:
+      - reg
+
+dependencies:
+  cd-inverted: [ cd-gpios ]
+  cd-debounce-delay-ms: [ cd-gpios ]
+  wp-inverted: [ wp-gpios ]
+  fixed-emmc-driver-type: [ non-removable ]
+
+examples:
+  - |
+    sdhci@ab000000 {
+        compatible = "sdhci";
+        reg = <0xab000000 0x200>;
+        interrupts = <23>;
+        bus-width = <4>;
+        cd-gpios = <&gpio 69 0>;
+        cd-inverted;
+        wp-gpios = <&gpio 70 0>;
+        max-frequency = <50000000>;
+        keep-power-in-suspend;
+        wakeup-source;
+        mmc-pwrseq = <&sdhci0_pwrseq>;
+    };
+
+  - |
+    mmc3: mmc@1c12000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&mmc3_pins_a>;
+        vmmc-supply = <&reg_vmmc3>;
+        bus-width = <4>;
+        non-removable;
+        mmc-pwrseq = <&sdhci0_pwrseq>;
+
+        brcmf: bcrmf@1 {
+            reg = <1>;
+            compatible = "brcm,bcm43xx-fmac";
+            interrupt-parent = <&pio>;
+            interrupts = <10 8>;
+            interrupt-names = "host-wake";
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mmc/mmc.txt b/Documentation/devicetree/bindings/mmc/mmc.txt
deleted file mode 100644
index c269dbe384fe..000000000000
--- a/Documentation/devicetree/bindings/mmc/mmc.txt
+++ /dev/null
@@ -1,177 +0,0 @@
-These properties are common to multiple MMC host controllers. Any host
-that requires the respective functionality should implement them using
-these definitions.
-
-Interpreted by the OF core:
-- reg: Registers location and length.
-- interrupts: Interrupts used by the MMC controller.
-
-Card detection:
-If no property below is supplied, host native card detect is used.
-Only one of the properties in this section should be supplied:
-  - broken-cd: There is no card detection available; polling must be used.
-  - cd-gpios: Specify GPIOs for card detection, see gpio binding
-  - non-removable: non-removable slot (like eMMC); assume always present.
-
-Optional properties:
-- bus-width: Number of data lines, can be <1>, <4>, or <8>.  The default
-  will be <1> if the property is absent.
-- wp-gpios: Specify GPIOs for write protection, see gpio binding
-- cd-inverted: when present, polarity on the CD line is inverted. See the note
-  below for the case, when a GPIO is used for the CD line
-- cd-debounce-delay-ms: Set delay time before detecting card after card insert interrupt.
-  It's only valid when cd-gpios is present.
-- wp-inverted: when present, polarity on the WP line is inverted. See the note
-  below for the case, when a GPIO is used for the WP line
-- disable-wp: When set no physical WP line is present. This property should
-  only be specified when the controller has a dedicated write-protect
-  detection logic. If a GPIO is always used for the write-protect detection
-  logic it is sufficient to not specify wp-gpios property in the absence of a WP
-  line.
-- max-frequency: maximum operating clock frequency
-- no-1-8-v: when present, denotes that 1.8v card voltage is not supported on
-  this system, even if the controller claims it is.
-- cap-sd-highspeed: SD high-speed timing is supported
-- cap-mmc-highspeed: MMC high-speed timing is supported
-- sd-uhs-sdr12: SD UHS SDR12 speed is supported
-- sd-uhs-sdr25: SD UHS SDR25 speed is supported
-- sd-uhs-sdr50: SD UHS SDR50 speed is supported
-- sd-uhs-sdr104: SD UHS SDR104 speed is supported
-- sd-uhs-ddr50: SD UHS DDR50 speed is supported
-- cap-power-off-card: powering off the card is safe
-- cap-mmc-hw-reset: eMMC hardware reset is supported
-- cap-sdio-irq: enable SDIO IRQ signalling on this interface
-- full-pwr-cycle: full power cycle of the card is supported
-- mmc-ddr-3_3v: eMMC high-speed DDR mode(3.3V I/O) is supported
-- mmc-ddr-1_8v: eMMC high-speed DDR mode(1.8V I/O) is supported
-- mmc-ddr-1_2v: eMMC high-speed DDR mode(1.2V I/O) is supported
-- mmc-hs200-1_8v: eMMC HS200 mode(1.8V I/O) is supported
-- mmc-hs200-1_2v: eMMC HS200 mode(1.2V I/O) is supported
-- mmc-hs400-1_8v: eMMC HS400 mode(1.8V I/O) is supported
-- mmc-hs400-1_2v: eMMC HS400 mode(1.2V I/O) is supported
-- mmc-hs400-enhanced-strobe: eMMC HS400 enhanced strobe mode is supported
-- dsr: Value the card's (optional) Driver Stage Register (DSR) should be
-  programmed with. Valid range: [0 .. 0xffff].
-- no-sdio: controller is limited to send sdio cmd during initialization
-- no-sd: controller is limited to send sd cmd during initialization
-- no-mmc: controller is limited to send mmc cmd during initialization
-- fixed-emmc-driver-type: for non-removable eMMC, enforce this driver type.
-  The value <n> is the driver type as specified in the eMMC specification
-  (table 206 in spec version 5.1).
-- post-power-on-delay-ms : It was invented for MMC pwrseq-simple which could
-  be referred to mmc-pwrseq-simple.txt. But now it's reused as a tunable delay
-  waiting for I/O signalling and card power supply to be stable, regardless of
-  whether pwrseq-simple is used. Default to 10ms if no available.
-- supports-cqe : The presence of this property indicates that the corresponding
-  MMC host controller supports HW command queue feature.
-- disable-cqe-dcmd: This property indicates that the MMC controller's command
-  queue engine (CQE) does not support direct commands (DCMDs).
-
-*NOTE* on CD and WP polarity. To use common for all SD/MMC host controllers line
-polarity properties, we have to fix the meaning of the "normal" and "inverted"
-line levels. We choose to follow the SDHCI standard, which specifies both those
-lines as "active low." Therefore, using the "cd-inverted" property means, that
-the CD line is active high, i.e. it is high, when a card is inserted. Similar
-logic applies to the "wp-inverted" property.
-
-CD and WP lines can be implemented on the hardware in one of two ways: as GPIOs,
-specified in cd-gpios and wp-gpios properties, or as dedicated pins. Polarity of
-dedicated pins can be specified, using *-inverted properties. GPIO polarity can
-also be specified using the GPIO_ACTIVE_LOW flag. This creates an ambiguity
-in the latter case. We choose to use the XOR logic for GPIO CD and WP lines.
-This means, the two properties are "superimposed," for example leaving the
-GPIO_ACTIVE_LOW flag clear and specifying the respective *-inverted property
-property results in a double-inversion and actually means the "normal" line
-polarity is in effect.
-
-Optional SDIO properties:
-- keep-power-in-suspend: Preserves card power during a suspend/resume cycle
-- wakeup-source: Enables wake up of host system on SDIO IRQ assertion
-		 (Legacy property supported: "enable-sdio-wakeup")
-
-MMC power
----------
-
-Controllers may implement power control from both the connected cards and
-the IO signaling (for example to change to high-speed 1.8V signalling). If
-the system supports this, then the following two properties should point
-to valid regulator nodes:
-
-- vqmmc-supply: supply node for IO line power
-- vmmc-supply: supply node for card's power
-
-
-MMC power sequences:
---------------------
-
-System on chip designs may specify a specific MMC power sequence. To
-successfully detect an (e)MMC/SD/SDIO card, that power sequence must be
-maintained while initializing the card.
-
-Optional property:
-- mmc-pwrseq: phandle to the MMC power sequence node. See "mmc-pwrseq-*"
-	for documentation of MMC power sequence bindings.
-
-
-Use of Function subnodes
-------------------------
-
-On embedded systems the cards connected to a host may need additional
-properties. These can be specified in subnodes to the host controller node.
-The subnodes are identified by the standard 'reg' property.
-Which information exactly can be specified depends on the bindings for the
-SDIO function driver for the subnode, as specified by the compatible string.
-
-Required host node properties when using function subnodes:
-- #address-cells: should be one. The cell is the slot id.
-- #size-cells: should be zero.
-
-Required function subnode properties:
-- reg: Must contain the SDIO function number of the function this subnode
-       describes. A value of 0 denotes the memory SD function, values from
-       1 to 7 denote the SDIO functions.
-
-Optional function subnode properties:
-- compatible: name of SDIO function following generic names recommended practice
-
-
-Examples
---------
-
-Basic example:
-
-sdhci@ab000000 {
-	compatible = "sdhci";
-	reg = <0xab000000 0x200>;
-	interrupts = <23>;
-	bus-width = <4>;
-	cd-gpios = <&gpio 69 0>;
-	cd-inverted;
-	wp-gpios = <&gpio 70 0>;
-	max-frequency = <50000000>;
-	keep-power-in-suspend;
-	wakeup-source;
-	mmc-pwrseq = <&sdhci0_pwrseq>
-}
-
-Example with sdio function subnode:
-
-mmc3: mmc@1c12000 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	pinctrl-names = "default";
-	pinctrl-0 = <&mmc3_pins_a>;
-	vmmc-supply = <&reg_vmmc3>;
-	bus-width = <4>;
-	non-removable;
-	mmc-pwrseq = <&sdhci0_pwrseq>
-
-	brcmf: bcrmf@1 {
-		reg = <1>;
-		compatible = "brcm,bcm43xx-fmac";
-		interrupt-parent = <&pio>;
-		interrupts = <10 8>; /* PH10 / EINT10 */
-		interrupt-names = "host-wake";
-	};
-};

base-commit: fcdb095ad0016d77d3729dcf8ea915ca4b80fd8b
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
