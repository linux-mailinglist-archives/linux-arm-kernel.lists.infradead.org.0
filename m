Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8502F1B7AA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYeo6KI0WlxboTgYNRrdYEmxAepAUrEXsXKxXvFsww8=; b=SwduChhqR1pFg5
	9IatMZV5LzqNvSXoFjrlQ3IwTZqxLgcdX2Rq0RgTGUGdATiFrvMxXHMAB0v1hiHa+WM0wukuHT5vJ
	2oApqnqT7XRRD5ngQSBZcJ8e1Lg1dEPBL7pbDMDAx4WSLEi83FRKr7YfZA6/QJ3+LGAOJ+wFu0ktx
	NxnfFsrtdwbTAoWWrryyM6Bu4+gnoPd3B4s1TLjLIcwLU+PWO32PBYDKvCA9IMJdNNxhHDB9USjij
	h1nDUaffQWz/CiFhqrosd7Oyue9K9CCnd1jcjelBOyuMtFlu44VCshxcT4HW08V5yk/13gN4xam1e
	SrZhq9WRRW9+SK4QhBzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0dq-0004bN-3l; Fri, 24 Apr 2020 15:53:26 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0N1-0007qc-7l; Fri, 24 Apr 2020 15:36:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id D6FBB1435;
 Fri, 24 Apr 2020 11:36:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=4/2w+o1es/zzu
 af5RoCd/j3fFOCGerGJcmRGCjAHIg4=; b=E2a05TE+l4YKAj97L3KNlfsjXE3h9
 Vt8v3GanFJ5qBhq0oE36cMgZleiBVOCzR3FqViEvgeof/IyzXELJ6VqVUTXMwePM
 SUxDFY28kdu1J1/V1ecbY+EDs42BXa/fcHTzErYw2HSNCpr2BnLC+F0/dd4Xm1G9
 GfjqHR4NiC6xrQzqg1V9+OXPSwB9galxcKe7TklWNEul9CfAyS5glD/4EFDNTpKf
 x+zIWQJgFwgNwihRJdXd7Tqk4Ce0qJwYDiyA4Y/cidOqqvrH7XxQr6k/RavbpOTx
 v4ohhCJ6/Lfv1gQhCXVY95qYoc031wWC6VR2QYHs8U/jWdP9Glbj1G5MA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=4/2w+o1es/zzuaf5RoCd/j3fFOCGerGJcmRGCjAHIg4=; b=zsA/05Th
 nOuKiRkaQpVQlMXtdWKT3xCyFmxFAoP0R8ucg7wT35Etd6l4VliERp9HN6ZeDer5
 niG0qjbVA+EF7xHRur65/UfTz6H/kfJV2wR7S2KooK3JHP1ZOnUQ/Bwx3NTI9e8b
 8qfd62EndJZ+xyf8o+Dp6Zrw8ouzlOkqjwg4MNwRGzJl3d9mojtl69sNYwvb+b2V
 SEAEEAuv3oLNsqVaKDkEG1sVKP9MGvzIAVOVtFZO/9/4qZJqfGGQkogdKYlSqb4d
 f9Nqbq5UKQHa1SgSFWOlaUkmbJ3UdcwVHOF4wBzQhCYgJ3eOAdhNwUgDDSKuVJEV
 /8Fj+MK3DQsTRw==
X-ME-Sender: <xms:YAejXg8eliCRxuu9HstRsjCY66NF1_9m3-Df3OkZz8nL2XrjDczkPw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epuggvvhhitggvthhrvggvrdhorhhgpdhgihhthhhusgdrtghomhdpfhhrvggvuggvshhk
 thhophdrohhrghenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgv
 tghh
X-ME-Proxy: <xmx:YAejXtLqtb5z5oYs-0rlAfPk0UABx843Q12Ac_CQ_u5fHL4j9Zi8yQ>
 <xmx:YAejXizf5_8cIqJvvcQgADSEk67jbsAFyZmslXRgY-_qvi9vJ9i75Q>
 <xmx:YAejXiZhj7z8W8qGW-US-LUg3iUle6hflqmcglc5m786z-xrSiIxuQ>
 <xmx:YAejXkPgxNwnBmD1dL8hwybenaP7BTGo3GTgM0HXMGw5DJ0sN0zT41NeBSI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0995B3065D9A;
 Fri, 24 Apr 2020 11:35:59 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 27/91] dt-bindings: display: Convert VC4 bindings to schemas
Date: Fri, 24 Apr 2020 17:34:08 +0200
Message-Id: <abfe72e59b796c86820d933bd81ba5ae0699e5b6.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083603_513313_7D13D8CB 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM283x SoCs have a display pipeline composed of several controllers
with device tree bindings that are supported by Linux.

Now that we have the DT validation in place, let's split into separate
files and convert the device tree bindings for those controllers to
schemas.

This is just a 1:1 conversion though, and some bindings were incomplete so
it results in example validation warnings that are going to be addressed in
the following patches.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt              | 174 +------------------------------------------------------------------------
 Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml         |  66 +++++++++++++++++++++++++++-
 Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml        |  73 ++++++++++++++++++++++++++++++-
 Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml        |  75 +++++++++++++++++++++++++++++++-
 Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml         |  37 +++++++++++++++-
 Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml |  40 +++++++++++++++++-
 Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml         |  37 +++++++++++++++-
 Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml         |  42 +++++++++++++++++-
 Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml         |  34 ++++++++++++++-
 Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml         |  44 ++++++++++++++++++-
 MAINTAINERS                                                             |   2 +-
 11 files changed, 449 insertions(+), 175 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt b/Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt
deleted file mode 100644
index 26649b4c4dd8..000000000000
--- a/Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt
+++ /dev/null
@@ -1,174 +0,0 @@
-Broadcom VC4 (VideoCore4) GPU
-
-The VC4 device present on the Raspberry Pi includes a display system
-with HDMI output and the HVS (Hardware Video Scaler) for compositing
-display planes.
-
-Required properties for VC4:
-- compatible:	Should be "brcm,bcm2835-vc4" or "brcm,cygnus-vc4"
-
-Required properties for Pixel Valve:
-- compatible:	Should be one of "brcm,bcm2835-pixelvalve0",
-		  "brcm,bcm2835-pixelvalve1", or "brcm,bcm2835-pixelvalve2"
-- reg:		Physical base address and length of the PV's registers
-- interrupts:	The interrupt number
-		  See bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
-
-Required properties for HVS:
-- compatible:	Should be "brcm,bcm2835-hvs"
-- reg:		Physical base address and length of the HVS's registers
-- interrupts:	The interrupt number
-		  See bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
-
-Required properties for HDMI
-- compatible:	Should be "brcm,bcm2835-hdmi"
-- reg:		Physical base address and length of the two register ranges
-		  ("HDMI" and "HD", in that order)
-- interrupts:	The interrupt numbers
-		  See bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
-- ddc:		phandle of the I2C controller used for DDC EDID probing
-- clocks:	a) hdmi: The HDMI state machine clock
-		b) pixel: The pixel clock.
-
-Optional properties for HDMI:
-- hpd-gpios:	The GPIO pin for HDMI hotplug detect (if it doesn't appear
-		  as an interrupt/status bit in the HDMI controller
-		  itself).  See bindings/pinctrl/brcm,bcm2835-gpio.txt
-- dmas:		Should contain one entry pointing to the DMA channel used to
-		transfer audio data
-- dma-names:	Should contain "audio-rx"
-
-Required properties for DPI:
-- compatible:	Should be "brcm,bcm2835-dpi"
-- reg:		Physical base address and length of the registers
-- clocks:	a) core: The core clock the unit runs on
-		b) pixel: The pixel clock that feeds the pixelvalve
-- port:		Port node with a single endpoint connecting to the panel
-		  device, as defined in [1]
-
-Required properties for VEC:
-- compatible:	Should be "brcm,bcm2835-vec"
-- reg:		Physical base address and length of the registers
-- clocks:	The core clock the unit runs on
-- interrupts:	The interrupt number
-		  See bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
-
-Required properties for V3D:
-- compatible:	Should be "brcm,bcm2835-v3d" or "brcm,cygnus-v3d"
-- reg:		Physical base address and length of the V3D's registers
-- interrupts:	The interrupt number
-		  See bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
-
-Optional properties for V3D:
-- clocks:	The clock the unit runs on
-
-Required properties for DSI:
-- compatible:	Should be "brcm,bcm2835-dsi0" or "brcm,bcm2835-dsi1"
-- reg:		Physical base address and length of the DSI block's registers
-- interrupts:	The interrupt number
-		  See bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
-- clocks:	a) phy: The DSI PLL clock feeding the DSI analog PHY
-		b) escape: The DSI ESC clock from CPRMAN
-		c) pixel: The DSI pixel clock from CPRMAN
-- clock-output-names:
-		The 3 clocks output from the DSI analog PHY: dsi[01]_byte,
-		dsi[01]_ddr2, and dsi[01]_ddr
-
-Required properties for the TXP (writeback) block:
-- compatible:	Should be "brcm,bcm2835-txp"
-- reg:		Physical base address and length of the TXP block's registers
-- interrupts:	The interrupt number
-		  See bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
-
-[1] Documentation/devicetree/bindings/media/video-interfaces.txt
-
-Example:
-pixelvalve@7e807000 {
-	compatible = "brcm,bcm2835-pixelvalve2";
-	reg = <0x7e807000 0x100>;
-	interrupts = <2 10>; /* pixelvalve */
-};
-
-hvs@7e400000 {
-	compatible = "brcm,bcm2835-hvs";
-	reg = <0x7e400000 0x6000>;
-	interrupts = <2 1>;
-};
-
-hdmi: hdmi@7e902000 {
-	compatible = "brcm,bcm2835-hdmi";
-	reg = <0x7e902000 0x600>,
-	      <0x7e808000 0x100>;
-	interrupts = <2 8>, <2 9>;
-	ddc = <&i2c2>;
-	hpd-gpios = <&gpio 46 GPIO_ACTIVE_HIGH>;
-	clocks = <&clocks BCM2835_PLLH_PIX>,
-		 <&clocks BCM2835_CLOCK_HSM>;
-	clock-names = "pixel", "hdmi";
-};
-
-dpi: dpi@7e208000 {
-	compatible = "brcm,bcm2835-dpi";
-	reg = <0x7e208000 0x8c>;
-	clocks = <&clocks BCM2835_CLOCK_VPU>,
-	         <&clocks BCM2835_CLOCK_DPI>;
-	clock-names = "core", "pixel";
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	port {
-		dpi_out: endpoint@0 {
-			remote-endpoint = <&panel_in>;
-		};
-	};
-};
-
-dsi1: dsi@7e700000 {
-	compatible = "brcm,bcm2835-dsi1";
-	reg = <0x7e700000 0x8c>;
-	interrupts = <2 12>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-	#clock-cells = <1>;
-
-	clocks = <&clocks BCM2835_PLLD_DSI1>,
-		 <&clocks BCM2835_CLOCK_DSI1E>,
-		 <&clocks BCM2835_CLOCK_DSI1P>;
-	clock-names = "phy", "escape", "pixel";
-
-	clock-output-names = "dsi1_byte", "dsi1_ddr2", "dsi1_ddr";
-
-	pitouchscreen: panel@0 {
-		compatible = "raspberrypi,touchscreen";
-		reg = <0>;
-
-		<...>
-	};
-};
-
-vec: vec@7e806000 {
-	compatible = "brcm,bcm2835-vec";
-	reg = <0x7e806000 0x1000>;
-	clocks = <&clocks BCM2835_CLOCK_VEC>;
-	interrupts = <2 27>;
-};
-
-v3d: v3d@7ec00000 {
-	compatible = "brcm,bcm2835-v3d";
-	reg = <0x7ec00000 0x1000>;
-	interrupts = <1 10>;
-};
-
-vc4: gpu {
-	compatible = "brcm,bcm2835-vc4";
-};
-
-panel: panel {
-	compatible = "ontat,yx700wv03", "simple-panel";
-
-	port {
-		panel_in: endpoint {
-			remote-endpoint = <&dpi_out>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
new file mode 100644
index 000000000000..288494b70e82
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2835-dpi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VC4 (VideoCore4) DPI Controller
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+properties:
+  compatible:
+    const: brcm,bcm2835-dpi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The core clock the unit runs on
+      - description: The pixel clock that feeds the pixelvalve
+
+  port:
+    type: object
+    description: >
+      Port node with a single endpoint connecting to the panel, as
+      defined in Documentation/devicetree/bindings/media/video-interfaces.txt.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/bcm2835.h>
+
+    panel: panel {
+        compatible = "ontat,yx700wv03", "simple-panel";
+
+        port {
+            panel_in: endpoint {
+                remote-endpoint = <&dpi_out>;
+            };
+        };
+    };
+
+    dpi: dpi@7e208000 {
+        compatible = "brcm,bcm2835-dpi";
+        reg = <0x7e208000 0x8c>;
+        clocks = <&clocks BCM2835_CLOCK_VPU>,
+                 <&clocks BCM2835_CLOCK_DPI>;
+        clock-names = "core", "pixel";
+
+        port {
+            dpi_out: endpoint {
+                remote-endpoint = <&panel_in>;
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
new file mode 100644
index 000000000000..3887675f844e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2835-dsi0.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VC4 (VideoCore4) DSI Controller
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm2835-dsi0
+      - brcm,bcm2835-dsi1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The DSI PLL clock feeding the DSI analog PHY
+      - description: The DSI ESC clock
+      - description: The DSI pixel clock
+
+  clock-output-names: true
+    # FIXME: The meta-schemas don't seem to allow it for now
+    # items:
+    #   - description: The DSI byte clock for the PHY
+    #   - description: The DSI DDR2 clock
+    #   - description: The DSI DDR clock
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/bcm2835.h>
+
+    dsi1: dsi@7e700000 {
+        compatible = "brcm,bcm2835-dsi1";
+        reg = <0x7e700000 0x8c>;
+        interrupts = <2 12>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        #clock-cells = <1>;
+
+        clocks = <&clocks BCM2835_PLLD_DSI1>,
+                 <&clocks BCM2835_CLOCK_DSI1E>,
+                 <&clocks BCM2835_CLOCK_DSI1P>;
+        clock-names = "phy", "escape", "pixel";
+
+        clock-output-names = "dsi1_byte", "dsi1_ddr2", "dsi1_ddr";
+
+        pitouchscreen: panel@0 {
+            compatible = "raspberrypi,touchscreen";
+            reg = <0>;
+
+            /* ... */
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
new file mode 100644
index 000000000000..834cc5f1c254
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2835-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VC4 (VideoCore4) HDMI Controller
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+properties:
+  compatible:
+    const: brcm,bcm2835-hdmi
+
+  reg:
+    items:
+      - description: HDMI register range
+      - description: HD register range
+
+  interrupts:
+    minItems: 2
+
+  clocks:
+    items:
+      - description: The HDMI state machine clock
+      - description: The pixel clock
+
+  ddc:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/phandle
+    description: >
+      Phandle of the I2C controller used for DDC EDID probing
+
+  hpd-gpios:
+    description: >
+      The GPIO pin for the HDMI hotplug detect (if it doesn't appear
+      as an interrupt/status bit in the HDMI controller itself)
+
+  dmas:
+    maxItems: 1
+    description: >
+      Should contain one entry pointing to the DMA channel used to
+      transfer audio data.
+
+  dma-names:
+    const: audio-rx
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - ddc
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/bcm2835.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    hdmi: hdmi@7e902000 {
+        compatible = "brcm,bcm2835-hdmi";
+        reg = <0x7e902000 0x600>,
+              <0x7e808000 0x100>;
+        interrupts = <2 8>, <2 9>;
+        ddc = <&i2c2>;
+        hpd-gpios = <&gpio 46 GPIO_ACTIVE_HIGH>;
+        clocks = <&clocks BCM2835_PLLH_PIX>,
+                 <&clocks BCM2835_CLOCK_HSM>;
+        clock-names = "pixel", "hdmi";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
new file mode 100644
index 000000000000..02410f8d6d49
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2835-hvs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VC4 (VideoCore4) Hardware Video Scaler
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+properties:
+  compatible:
+    const: brcm,bcm2835-hvs
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    hvs@7e400000 {
+        compatible = "brcm,bcm2835-hvs";
+        reg = <0x7e400000 0x6000>;
+        interrupts = <2 1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
new file mode 100644
index 000000000000..e60791db1fa1
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2835-pixelvalve0.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VC4 (VideoCore4) PixelValve
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm2835-pixelvalve0
+      - brcm,bcm2835-pixelvalve1
+      - brcm,bcm2835-pixelvalve2
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    pixelvalve@7e807000 {
+        compatible = "brcm,bcm2835-pixelvalve2";
+        reg = <0x7e807000 0x100>;
+        interrupts = <2 10>; /* pixelvalve */
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
new file mode 100644
index 000000000000..bb186197e471
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2835-txp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VC4 (VideoCore4) TXP (writeback) Controller
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+properties:
+  compatible:
+    const: brcm,bcm2835-txp
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    txp: txp@7e004000 {
+        compatible = "brcm,bcm2835-txp";
+        reg = <0x7e004000 0x20>;
+        interrupts = <1 11>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml
new file mode 100644
index 000000000000..8a73780f573d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2835-v3d.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VC4 (VideoCore4) V3D GPU
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm2835-v3d
+      - brcm,cygnus-v3d
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    v3d: v3d@7ec00000 {
+        compatible = "brcm,bcm2835-v3d";
+        reg = <0x7ec00000 0x1000>;
+        interrupts = <1 10>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
new file mode 100644
index 000000000000..0dcf0c397375
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2835-vc4.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VC4 (VideoCore4) GPU
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+description: >
+  The VC4 device present on the Raspberry Pi includes a display system
+  with HDMI output and the HVS (Hardware Video Scaler) for compositing
+  display planes.
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm2835-vc4
+      - brcm,cygnus-vc4
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    vc4: gpu {
+        compatible = "brcm,bcm2835-vc4";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
new file mode 100644
index 000000000000..d900cc57b4ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2835-vec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VC4 (VideoCore4) VEC
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+properties:
+  compatible:
+    const: brcm,bcm2835-vec
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/bcm2835.h>
+
+    vec: vec@7e806000 {
+        compatible = "brcm,bcm2835-vec";
+        reg = <0x7e806000 0x1000>;
+        clocks = <&clocks BCM2835_CLOCK_VEC>;
+        interrupts = <2 27>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index e64e5db31497..147868f5abdf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5746,7 +5746,7 @@ M:	Eric Anholt <eric@anholt.net>
 S:	Supported
 T:	git git://github.com/anholt/linux
 T:	git git://anongit.freedesktop.org/drm/drm-misc
-F:	Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt
+F:	Documentation/devicetree/bindings/display/brcm,bcm2835-*.yaml
 F:	drivers/gpu/drm/vc4/
 F:	include/uapi/drm/vc4_drm.h
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
