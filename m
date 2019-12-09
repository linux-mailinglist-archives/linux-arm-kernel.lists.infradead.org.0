Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F321911695D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:34:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UpCerVuAjzm3ncPL0xi5g2aw6Ufg7ALIrjKzGlZUiUM=; b=MGYlztSWzbLhlU
	rwBapeTPWdkOB5QxrMKaraLIaE4QorWSULIYNuXowQnTZxQtauN31JnLHZLu+86nsVtMuSuuD++f9
	BJaDkLJgD6JFlk17lB4XfSpDxHQz/17bmJXVgDrAB1c56Xrpkwbt5Qtp9vkrIrdj05vSB+DZ5floh
	5u3fytKLIEa5GiYk+pHytF8L1Dz2X9pAmULvHIBXLV3UScFMl3XyJB0wJ0OfYWcDSxl6r+hjtiwR5
	D5m2aMhFnh3B+axThynTej2cW33Z0gSIG68cfCsnDLTOYEGoMZGGti2HqCmR1AOG2m1S+IuYAjgUd
	rXMbJ+IZm426kg5drbHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFQX-0007Db-9S; Mon, 09 Dec 2019 09:34:01 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFQL-0007D1-Oz
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:33:53 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 11AD722844;
 Mon,  9 Dec 2019 04:33:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 09 Dec 2019 04:33:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=CzRTS+zLwSmz8j9boPn7XwoLe7
 GpXZpeUy5iQWVdTl8=; b=mCHRontePT0dkN2Uc+PgE7Ry1r9Id9oZZjLiIWFSoA
 tQ486B9P46ngnYrD7n8CLeiwDOBK3cVqfLNfB/ctS2Ez8KDPiqerb4KzDrLsKgjV
 Gw4kEj3QJtY9c1/e1RpZqagOs524vDuekrPNtopWmqZg32gfZ/BRFFFc5JijE9s1
 KhcuSd/j//hbKzsyvyS6tmOaC8dKuRkMh8HFfdEK65pnGID/CCZaHtAdRfJOFjRW
 KLouCUja8MBOcRz1lwtdCW6Vqpwn85cUvB9j4s3SVRCf9Qev+SCZBjwmwZVNDv6f
 IqnzIfh2tkxj1Gk4OBtR7XmBwKOmXXpNLUofYDCD5EYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=CzRTS+zLwSmz8j9bo
 Pn7XwoLe7GpXZpeUy5iQWVdTl8=; b=mKfT+gADxrdn337JEUgNb1f3HtGQeWcji
 JTQeeRcb2X2jGRSZ41ff9Fu400js2MISCOEAfRWYcFuyxb0FpNPH17c0rEepXZXS
 DdT8CagzsXfk+atobRI9NMhrBLc0EErWpjTFrEDipaw+om8lEF2By8k119ExU1mb
 eCzgKYRlTr3qrybODE5dP6BsuuWoNXeKsvNrv0kASfoNiqNxFuYCru06KWkA8jNX
 yJurCwuVbowBSL4J2Vi2Ms7z2u7gNeaFgnN0yuFQeDIyVjVLjQNk3ULh5pVgdJqc
 AqOWXOYdwjFSwcPXviac6sB2wjShqFBRoeWmjqd8REhofxyTu/xug==
X-ME-Sender: <xms:9xTuXZSqig6A2_yJNxf_FdkVy7Cz0Qv1O_YHrb7SAikxslkFaSWjIw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeltddgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcu
 tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpe
 guvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucfrrghr
 rghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhush
 htvghrufhiiigvpedu
X-ME-Proxy: <xmx:9xTuXZIv3hwdsgKinZMavgfDE-RRdmUqCbfpV6XL9Pb8VIienU-51w>
 <xmx:9xTuXThtlahYfs4ZyZkaDh1azq0nuJ5LisPj_vlcAemgSV0XmFcEGQ>
 <xmx:9xTuXUL3ARr6e92QJdQ0Ik7OdafC-ZsAfxLR0SghWjO_atoQGVjAeA>
 <xmx:-BTuXVh5u3eMsiqxNl0CuTYqc1kt47QHgSwL1wjazCcXEOiQJYf1QQ>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8EDE230600AB;
 Mon,  9 Dec 2019 04:33:42 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] dt-bindings: usb: Convert Allwinner USB PHY controller to
 a schema
Date: Mon,  9 Dec 2019 10:33:40 +0100
Message-Id: <20191209093340.50552-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013349_963431_E526D2F4 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have a USB PHY controller that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Split the schemas into files of their own to make it more readable
---
 .../phy/allwinner,sun4i-a10-usb-phy.yaml      | 105 ++++++++++++++
 .../phy/allwinner,sun50i-a64-usb-phy.yaml     | 106 ++++++++++++++
 .../phy/allwinner,sun50i-h6-usb-phy.yaml      | 105 ++++++++++++++
 .../phy/allwinner,sun5i-a13-usb-phy.yaml      |  93 ++++++++++++
 .../phy/allwinner,sun6i-a31-usb-phy.yaml      | 119 +++++++++++++++
 .../phy/allwinner,sun8i-a23-usb-phy.yaml      | 102 +++++++++++++
 .../phy/allwinner,sun8i-a83t-usb-phy.yaml     | 122 ++++++++++++++++
 .../phy/allwinner,sun8i-h3-usb-phy.yaml       | 137 ++++++++++++++++++
 .../phy/allwinner,sun8i-r40-usb-phy.yaml      | 119 +++++++++++++++
 .../phy/allwinner,sun8i-v3s-usb-phy.yaml      |  86 +++++++++++
 .../devicetree/bindings/phy/sun4i-usb-phy.txt |  68 ---------
 11 files changed, 1094 insertions(+), 68 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
new file mode 100644
index 000000000000..020ef9e4c411
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun4i-a10-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-usb-phy
+      - allwinner,sun7i-a20-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU1 registers
+      - description: PHY PMU2 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu1
+      - const: pmu2
+
+  clocks:
+    maxItems: 1
+    description: USB PHY bus clock
+
+  clock-names:
+    const: usb_phy
+
+  resets:
+    items:
+      - description: USB OTG reset
+      - description: USB Host 1 Controller reset
+      - description: USB Host 2 Controller reset
+
+  reset-names:
+    items:
+      - const: usb0_reset
+      - const: usb1_reset
+      - const: usb2_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb1_vbus-supply:
+    description: Regulator controlling USB1 Host controller
+
+  usb2_vbus-supply:
+    description: Regulator controlling USB2 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun4i-a10-ccu.h>
+    #include <dt-bindings/reset/sun4i-a10-ccu.h>
+
+    usbphy: phy@01c13400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun4i-a10-usb-phy";
+        reg = <0x01c13400 0x10>, <0x01c14800 0x4>, <0x01c1c800 0x4>;
+        reg-names = "phy_ctrl", "pmu1", "pmu2";
+        clocks = <&ccu CLK_USB_PHY>;
+        clock-names = "usb_phy";
+        resets = <&ccu RST_USB_PHY0>,
+                 <&ccu RST_USB_PHY1>,
+                 <&ccu RST_USB_PHY2>;
+        reset-names = "usb0_reset", "usb1_reset", "usb2_reset";
+        usb0_id_det-gpios = <&pio 7 19 GPIO_ACTIVE_HIGH>;
+        usb0_vbus_det-gpios = <&pio 7 22 GPIO_ACTIVE_HIGH>;
+        usb0_vbus-supply = <&reg_usb0_vbus>;
+        usb1_vbus-supply = <&reg_usb1_vbus>;
+        usb2_vbus-supply = <&reg_usb2_vbus>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
new file mode 100644
index 000000000000..fd6e126fcf18
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
@@ -0,0 +1,106 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun50i-a64-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A64 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun50i-a64-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU0 registers
+      - description: PHY PMU1 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu0
+      - const: pmu1
+
+  clocks:
+    items:
+      - description: USB OTG PHY bus clock
+      - description: USB Host 0 PHY bus clock
+
+  clock-names:
+    items:
+      - const: usb0_phy
+      - const: usb1_phy
+
+  resets:
+    items:
+      - description: USB OTG reset
+      - description: USB Host 1 Controller reset
+
+  reset-names:
+    items:
+      - const: usb0_reset
+      - const: usb1_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb1_vbus-supply:
+    description: Regulator controlling USB1 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun50i-a64-ccu.h>
+    #include <dt-bindings/reset/sun50i-a64-ccu.h>
+
+    phy@1c19400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun50i-a64-usb-phy";
+        reg = <0x01c19400 0x14>,
+              <0x01c1a800 0x4>,
+              <0x01c1b800 0x4>;
+        reg-names = "phy_ctrl",
+                    "pmu0",
+                    "pmu1";
+        clocks = <&ccu CLK_USB_PHY0>,
+                 <&ccu CLK_USB_PHY1>;
+        clock-names = "usb0_phy",
+                      "usb1_phy";
+        resets = <&ccu RST_USB_PHY0>,
+                 <&ccu RST_USB_PHY1>;
+        reset-names = "usb0_reset",
+                      "usb1_reset";
+        usb0_id_det-gpios = <&pio 7 9 GPIO_ACTIVE_HIGH>; /* PH9 */
+        usb0_vbus_power-supply = <&usb_power_supply>;
+        usb0_vbus-supply = <&reg_drivevbus>;
+        usb1_vbus-supply = <&reg_usb1_vbus>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml
new file mode 100644
index 000000000000..7670411002c9
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun50i-h6-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner H6 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun50i-h6-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU0 registers
+      - description: PHY PMU3 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu0
+      - const: pmu3
+
+  clocks:
+    items:
+      - description: USB OTG PHY bus clock
+      - description: USB Host PHY bus clock
+
+  clock-names:
+    items:
+      - const: usb0_phy
+      - const: usb3_phy
+
+  resets:
+    items:
+      - description: USB OTG reset
+      - description: USB Host Controller reset
+
+  reset-names:
+    items:
+      - const: usb0_reset
+      - const: usb3_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb3_vbus-supply:
+    description: Regulator controlling USB3 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun50i-h6-ccu.h>
+    #include <dt-bindings/reset/sun50i-h6-ccu.h>
+
+    phy@5100400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun50i-h6-usb-phy";
+        reg = <0x05100400 0x24>,
+              <0x05101800 0x4>,
+              <0x05311800 0x4>;
+        reg-names = "phy_ctrl",
+                    "pmu0",
+                    "pmu3";
+        clocks = <&ccu CLK_USB_PHY0>,
+                 <&ccu CLK_USB_PHY3>;
+        clock-names = "usb0_phy",
+                      "usb3_phy";
+        resets = <&ccu RST_USB_PHY0>,
+                 <&ccu RST_USB_PHY3>;
+        reset-names = "usb0_reset",
+                      "usb3_reset";
+        usb0_id_det-gpios = <&pio 2 6 GPIO_ACTIVE_HIGH>; /* PC6 */
+        usb0_vbus-supply = <&reg_vcc5v>;
+        usb3_vbus-supply = <&reg_vcc5v>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml
new file mode 100644
index 000000000000..9b319381d1ad
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun5i-a13-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A13 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun5i-a13-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU1 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu1
+
+  clocks:
+    maxItems: 1
+    description: USB OTG PHY bus clock
+
+  clock-names:
+    const: usb_phy
+
+  resets:
+    items:
+      - description: USB OTG reset
+      - description: USB Host 1 Controller reset
+
+  reset-names:
+    items:
+      - const: usb0_reset
+      - const: usb1_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb1_vbus-supply:
+    description: Regulator controlling USB1 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun5i-ccu.h>
+    #include <dt-bindings/reset/sun5i-ccu.h>
+
+    phy@1c13400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun5i-a13-usb-phy";
+        reg = <0x01c13400 0x10>, <0x01c14800 0x4>;
+        reg-names = "phy_ctrl", "pmu1";
+        clocks = <&ccu CLK_USB_PHY0>;
+        clock-names = "usb_phy";
+        resets = <&ccu RST_USB_PHY0>, <&ccu RST_USB_PHY1>;
+        reset-names = "usb0_reset", "usb1_reset";
+        usb0_id_det-gpios = <&pio 6 2 (GPIO_ACTIVE_HIGH | GPIO_PULL_UP)>; /* PG2 */
+        usb0_vbus_det-gpios = <&pio 6 1 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>; /* PG1 */
+        usb0_vbus-supply = <&reg_usb0_vbus>;
+        usb1_vbus-supply = <&reg_usb1_vbus>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml
new file mode 100644
index 000000000000..b0ed01bbf3db
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun6i-a31-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun6i-a31-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU1 registers
+      - description: PHY PMU2 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu1
+      - const: pmu2
+
+  clocks:
+    items:
+      - description: USB OTG PHY bus clock
+      - description: USB Host 0 PHY bus clock
+      - description: USB Host 1 PHY bus clock
+
+  clock-names:
+    items:
+      - const: usb0_phy
+      - const: usb1_phy
+      - const: usb2_phy
+
+  resets:
+    items:
+      - description: USB OTG reset
+      - description: USB Host 1 Controller reset
+      - description: USB Host 2 Controller reset
+
+  reset-names:
+    items:
+      - const: usb0_reset
+      - const: usb1_reset
+      - const: usb2_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb1_vbus-supply:
+    description: Regulator controlling USB1 Host controller
+
+  usb2_vbus-supply:
+    description: Regulator controlling USB2 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun6i-a31-ccu.h>
+    #include <dt-bindings/reset/sun6i-a31-ccu.h>
+
+    phy@1c19400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun6i-a31-usb-phy";
+        reg = <0x01c19400 0x10>,
+              <0x01c1a800 0x4>,
+              <0x01c1b800 0x4>;
+        reg-names = "phy_ctrl",
+                    "pmu1",
+                    "pmu2";
+        clocks = <&ccu CLK_USB_PHY0>,
+                 <&ccu CLK_USB_PHY1>,
+                 <&ccu CLK_USB_PHY2>;
+        clock-names = "usb0_phy",
+                      "usb1_phy",
+                      "usb2_phy";
+        resets = <&ccu RST_USB_PHY0>,
+                 <&ccu RST_USB_PHY1>,
+                 <&ccu RST_USB_PHY2>;
+        reset-names = "usb0_reset",
+                      "usb1_reset",
+                      "usb2_reset";
+        usb0_id_det-gpios = <&pio 0 15 GPIO_ACTIVE_HIGH>; /* PA15 */
+        usb0_vbus_det-gpios = <&pio 0 16 GPIO_ACTIVE_HIGH>; /* PA16 */
+        usb0_vbus_power-supply = <&usb_power_supply>;
+        usb0_vbus-supply = <&reg_drivevbus>;
+        usb1_vbus-supply = <&reg_usb1_vbus>;
+        usb2_vbus-supply = <&reg_usb2_vbus>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml
new file mode 100644
index 000000000000..b0674406f8aa
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun8i-a23-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A23 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - allwinner,sun8i-a23-usb-phy
+      - allwinner,sun8i-a33-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU1 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu1
+
+  clocks:
+    items:
+      - description: USB OTG PHY bus clock
+      - description: USB Host 0 PHY bus clock
+
+  clock-names:
+    items:
+      - const: usb0_phy
+      - const: usb1_phy
+
+  resets:
+    items:
+      - description: USB OTG reset
+      - description: USB Host 1 Controller reset
+
+  reset-names:
+    items:
+      - const: usb0_reset
+      - const: usb1_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb1_vbus-supply:
+    description: Regulator controlling USB1 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun8i-a23-a33-ccu.h>
+    #include <dt-bindings/reset/sun8i-a23-a33-ccu.h>
+
+    phy@1c19400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun8i-a23-usb-phy";
+        reg = <0x01c19400 0x10>, <0x01c1a800 0x4>;
+        reg-names = "phy_ctrl", "pmu1";
+        clocks = <&ccu CLK_USB_PHY0>,
+                 <&ccu CLK_USB_PHY1>;
+        clock-names = "usb0_phy",
+                      "usb1_phy";
+        resets = <&ccu RST_USB_PHY0>,
+                 <&ccu RST_USB_PHY1>;
+        reset-names = "usb0_reset",
+                      "usb1_reset";
+        usb0_id_det-gpios = <&pio 1 3 GPIO_ACTIVE_HIGH>; /* PB3 */
+        usb0_vbus_power-supply = <&usb_power_supply>;
+        usb0_vbus-supply = <&reg_drivevbus>;
+        usb1_vbus-supply = <&reg_usb1_vbus>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml
new file mode 100644
index 000000000000..48dc9c834a9b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml
@@ -0,0 +1,122 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun8i-a83t-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A83t USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun8i-a83t-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU1 registers
+      - description: PHY PMU2 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu1
+      - const: pmu2
+
+  clocks:
+    items:
+      - description: USB OTG PHY bus clock
+      - description: USB Host 0 PHY bus clock
+      - description: USB Host 1 PHY bus clock
+      - description: USB HSIC 12MHz clock
+
+  clock-names:
+    items:
+      - const: usb0_phy
+      - const: usb1_phy
+      - const: usb2_phy
+      - const: usb2_hsic_12M
+
+  resets:
+    items:
+      - description: USB OTG reset
+      - description: USB Host 1 Controller reset
+      - description: USB Host 2 Controller reset
+
+  reset-names:
+    items:
+      - const: usb0_reset
+      - const: usb1_reset
+      - const: usb2_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb1_vbus-supply:
+    description: Regulator controlling USB1 Host controller
+
+  usb2_vbus-supply:
+    description: Regulator controlling USB2 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun8i-a83t-ccu.h>
+    #include <dt-bindings/reset/sun8i-a83t-ccu.h>
+
+    phy@1c19400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun8i-a83t-usb-phy";
+        reg = <0x01c19400 0x10>,
+              <0x01c1a800 0x14>,
+              <0x01c1b800 0x14>;
+        reg-names = "phy_ctrl",
+                    "pmu1",
+                    "pmu2";
+        clocks = <&ccu CLK_USB_PHY0>,
+                 <&ccu CLK_USB_PHY1>,
+                 <&ccu CLK_USB_HSIC>,
+                 <&ccu CLK_USB_HSIC_12M>;
+        clock-names = "usb0_phy",
+                      "usb1_phy",
+                      "usb2_phy",
+                      "usb2_hsic_12M";
+        resets = <&ccu RST_USB_PHY0>,
+                 <&ccu RST_USB_PHY1>,
+                 <&ccu RST_USB_HSIC>;
+        reset-names = "usb0_reset",
+                      "usb1_reset",
+                      "usb2_reset";
+        usb0_id_det-gpios = <&pio 7 11 GPIO_ACTIVE_HIGH>; /* PH11 */
+        usb0_vbus_power-supply = <&usb_power_supply>;
+        usb0_vbus-supply = <&reg_drivevbus>;
+        usb1_vbus-supply = <&reg_usb1_vbus>;
+        usb2_vbus-supply = <&reg_usb2_vbus>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
new file mode 100644
index 000000000000..60c344585276
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun8i-h3-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner H3 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun8i-h3-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU0 registers
+      - description: PHY PMU1 registers
+      - description: PHY PMU2 registers
+      - description: PHY PMU3 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu0
+      - const: pmu1
+      - const: pmu2
+      - const: pmu3
+
+  clocks:
+    items:
+      - description: USB OTG PHY bus clock
+      - description: USB Host 0 PHY bus clock
+      - description: USB Host 1 PHY bus clock
+      - description: USB Host 2 PHY bus clock
+
+  clock-names:
+    items:
+      - const: usb0_phy
+      - const: usb1_phy
+      - const: usb2_phy
+      - const: usb3_phy
+
+  resets:
+    items:
+      - description: USB OTG reset
+      - description: USB Host 1 Controller reset
+      - description: USB Host 2 Controller reset
+      - description: USB Host 3 Controller reset
+
+  reset-names:
+    items:
+      - const: usb0_reset
+      - const: usb1_reset
+      - const: usb2_reset
+      - const: usb3_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb1_vbus-supply:
+    description: Regulator controlling USB1 Host controller
+
+  usb2_vbus-supply:
+    description: Regulator controlling USB2 Host controller
+
+  usb3_vbus-supply:
+    description: Regulator controlling USB3 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun8i-h3-ccu.h>
+    #include <dt-bindings/reset/sun8i-h3-ccu.h>
+
+    phy@1c19400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun8i-h3-usb-phy";
+        reg = <0x01c19400 0x2c>,
+              <0x01c1a800 0x4>,
+              <0x01c1b800 0x4>,
+              <0x01c1c800 0x4>,
+              <0x01c1d800 0x4>;
+        reg-names = "phy_ctrl",
+                    "pmu0",
+                    "pmu1",
+                    "pmu2",
+                    "pmu3";
+        clocks = <&ccu CLK_USB_PHY0>,
+                 <&ccu CLK_USB_PHY1>,
+                 <&ccu CLK_USB_PHY2>,
+                 <&ccu CLK_USB_PHY3>;
+        clock-names = "usb0_phy",
+                      "usb1_phy",
+                      "usb2_phy",
+                      "usb3_phy";
+        resets = <&ccu RST_USB_PHY0>,
+                 <&ccu RST_USB_PHY1>,
+                 <&ccu RST_USB_PHY2>,
+                 <&ccu RST_USB_PHY3>;
+        reset-names = "usb0_reset",
+                      "usb1_reset",
+                      "usb2_reset",
+                      "usb3_reset";
+        usb0_id_det-gpios = <&pio 6 12 GPIO_ACTIVE_HIGH>; /* PG12 */
+        usb0_vbus-supply = <&reg_usb0_vbus>;
+        usb1_vbus-supply = <&reg_usb1_vbus>;
+        usb2_vbus-supply = <&reg_usb2_vbus>;
+        usb3_vbus-supply = <&reg_usb3_vbus>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml
new file mode 100644
index 000000000000..a2bb36790fbd
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun8i-r40-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner R40 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun8i-r40-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU0 registers
+      - description: PHY PMU1 registers
+      - description: PHY PMU2 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu0
+      - const: pmu1
+      - const: pmu2
+
+  clocks:
+    items:
+      - description: USB OTG PHY bus clock
+      - description: USB Host 0 PHY bus clock
+      - description: USB Host 1 PHY bus clock
+
+  clock-names:
+    items:
+      - const: usb0_phy
+      - const: usb1_phy
+      - const: usb2_phy
+
+  resets:
+    items:
+      - description: USB OTG reset
+      - description: USB Host 1 Controller reset
+      - description: USB Host 2 Controller reset
+
+  reset-names:
+    items:
+      - const: usb0_reset
+      - const: usb1_reset
+      - const: usb2_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+  usb1_vbus-supply:
+    description: Regulator controlling USB1 Host controller
+
+  usb2_vbus-supply:
+    description: Regulator controlling USB2 Host controller
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun8i-r40-ccu.h>
+    #include <dt-bindings/reset/sun8i-r40-ccu.h>
+
+    phy@1c13400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun8i-r40-usb-phy";
+        reg = <0x01c13400 0x14>,
+              <0x01c14800 0x4>,
+              <0x01c19800 0x4>,
+              <0x01c1c800 0x4>;
+        reg-names = "phy_ctrl",
+                    "pmu0",
+                    "pmu1",
+                    "pmu2";
+        clocks = <&ccu CLK_USB_PHY0>,
+                 <&ccu CLK_USB_PHY1>,
+                 <&ccu CLK_USB_PHY2>;
+        clock-names = "usb0_phy",
+                      "usb1_phy",
+                      "usb2_phy";
+        resets = <&ccu RST_USB_PHY0>,
+                 <&ccu RST_USB_PHY1>,
+                 <&ccu RST_USB_PHY2>;
+        reset-names = "usb0_reset",
+                      "usb1_reset",
+                      "usb2_reset";
+        usb1_vbus-supply = <&reg_vcc5v0>;
+        usb2_vbus-supply = <&reg_vcc5v0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml
new file mode 100644
index 000000000000..eadfd0c9493c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun8i-v3s-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner V3s USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun8i-v3s-usb-phy
+
+  reg:
+    items:
+      - description: PHY Control registers
+      - description: PHY PMU0 registers
+
+  reg-names:
+    items:
+      - const: phy_ctrl
+      - const: pmu0
+
+  clocks:
+    maxItems: 1
+    description: USB OTG PHY bus clock
+
+  clock-names:
+    const: usb0_phy
+
+  resets:
+    maxItems: 1
+    description: USB OTG reset
+
+  reset-names:
+    const: usb0_reset
+
+  usb0_id_det-gpios:
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
+    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
+
+    phy@1c19400 {
+        #phy-cells = <1>;
+        compatible = "allwinner,sun8i-v3s-usb-phy";
+        reg = <0x01c19400 0x2c>,
+              <0x01c1a800 0x4>;
+        reg-names = "phy_ctrl",
+                    "pmu0";
+        clocks = <&ccu CLK_USB_PHY0>;
+        clock-names = "usb0_phy";
+        resets = <&ccu RST_USB_PHY0>;
+        reset-names = "usb0_reset";
+        usb0_id_det-gpios = <&pio 5 6 GPIO_ACTIVE_HIGH>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt b/Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt
deleted file mode 100644
index f2e120af17f0..000000000000
--- a/Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt
+++ /dev/null
@@ -1,68 +0,0 @@
-Allwinner sun4i USB PHY
------------------------
-
-Required properties:
-- compatible : should be one of
-  * allwinner,sun4i-a10-usb-phy
-  * allwinner,sun5i-a13-usb-phy
-  * allwinner,sun6i-a31-usb-phy
-  * allwinner,sun7i-a20-usb-phy
-  * allwinner,sun8i-a23-usb-phy
-  * allwinner,sun8i-a33-usb-phy
-  * allwinner,sun8i-a83t-usb-phy
-  * allwinner,sun8i-h3-usb-phy
-  * allwinner,sun8i-r40-usb-phy
-  * allwinner,sun8i-v3s-usb-phy
-  * allwinner,sun50i-a64-usb-phy
-  * allwinner,sun50i-h6-usb-phy
-- reg : a list of offset + length pairs
-- reg-names :
-  * "phy_ctrl"
-  * "pmu0" for H3, V3s, A64 or H6
-  * "pmu1"
-  * "pmu2" for sun4i, sun6i, sun7i, sun8i-a83t or sun8i-h3
-  * "pmu3" for sun8i-h3 or sun50i-h6
-- #phy-cells : from the generic phy bindings, must be 1
-- clocks : phandle + clock specifier for the phy clocks
-- clock-names :
-  * "usb_phy" for sun4i, sun5i or sun7i
-  * "usb0_phy", "usb1_phy" and "usb2_phy" for sun6i
-  * "usb0_phy", "usb1_phy" for sun8i
-  * "usb0_phy", "usb1_phy", "usb2_phy" and "usb2_hsic_12M" for sun8i-a83t
-  * "usb0_phy", "usb1_phy", "usb2_phy" and "usb3_phy" for sun8i-h3
-  * "usb0_phy" and "usb3_phy" for sun50i-h6
-- resets : a list of phandle + reset specifier pairs
-- reset-names :
-  * "usb0_reset"
-  * "usb1_reset"
-  * "usb2_reset" for sun4i, sun6i, sun7i, sun8i-a83t or sun8i-h3
-  * "usb3_reset" for sun8i-h3 and sun50i-h6
-
-Optional properties:
-- usb0_id_det-gpios : gpio phandle for reading the otg id pin value
-- usb0_vbus_det-gpios : gpio phandle for detecting the presence of usb0 vbus
-- usb0_vbus_power-supply: power-supply phandle for usb0 vbus presence detect
-- usb0_vbus-supply : regulator phandle for controller usb0 vbus
-- usb1_vbus-supply : regulator phandle for controller usb1 vbus
-- usb2_vbus-supply : regulator phandle for controller usb2 vbus
-- usb3_vbus-supply : regulator phandle for controller usb3 vbus
-
-Example:
-	usbphy: phy@01c13400 {
-		#phy-cells = <1>;
-		compatible = "allwinner,sun4i-a10-usb-phy";
-		/* phy base regs, phy1 pmu reg, phy2 pmu reg */
-		reg = <0x01c13400 0x10 0x01c14800 0x4 0x01c1c800 0x4>;
-		reg-names = "phy_ctrl", "pmu1", "pmu2";
-		clocks = <&usb_clk 8>;
-		clock-names = "usb_phy";
-		resets = <&usb_clk 0>, <&usb_clk 1>, <&usb_clk 2>;
-		reset-names = "usb0_reset", "usb1_reset", "usb2_reset";
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb0_id_detect_pin>, <&usb0_vbus_detect_pin>;
-		usb0_id_det-gpios = <&pio 7 19 GPIO_ACTIVE_HIGH>; /* PH19 */
-		usb0_vbus_det-gpios = <&pio 7 22 GPIO_ACTIVE_HIGH>; /* PH22 */
-		usb0_vbus-supply = <&reg_usb0_vbus>;
-		usb1_vbus-supply = <&reg_usb1_vbus>;
-		usb2_vbus-supply = <&reg_usb2_vbus>;
-	};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
