Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56E717982F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 19:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S6upNpROvQaKkHz8DxsQh0bKZHzMzQ4UIcA3mlHsrfw=; b=iL2
	KTs/WK5PIoi3qIuOE77M32oLQpaXVZ4zXoLDaTd3okR/nYHuKokK4jFXksLdbNdyfTXi0qe4k+Bbq
	uEWLoOMYDX+PWwp9rP9a+We+yfxvOJG8BR4hehTOO1VRJTuwALPUo2RS6MHc9s2lTzPjjyQxyzPl2
	pXjbewd3ybr8qMOa93rri30KSkztV9Pc6jby7Zcmqyzdqhqw7ZMpEWkJoG2qvb4+k5/aAeTL8ocY+
	RycVvXY1mCk1YblQHXlxN87gymYI6+Htr/034qhi1tB2+fIC1uTeML7V+CDQbl/s0QdMRrgEgHsrg
	jKOzaoxowXAHxZ3+aNI5YXfHGPQoCtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Yyw-0004QM-SK; Wed, 04 Mar 2020 18:42:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9YyI-0003uU-GJ; Wed, 04 Mar 2020 18:42:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id a141so2949351wme.2;
 Wed, 04 Mar 2020 10:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=n3JBnX/t3238K8AX9Z0tiHPjoZ95keru42wfKQHCHgA=;
 b=eox3IuxJ6BfkF4yAskgRGgBsbZU3LY4N012yLltAYleKVDu4yFl/cUHLuYJBcemulN
 W7RDdPJGP2ixxj4TItm+COL0u25xRkNo3ClG+Av7H5G5JgVdmooaOfioOJvA0ACYDoaO
 lNO9HBk1gWuwFLvz4hecBkSzc3yDFysRkc/kMoYfxxa+FoqdV8mQsvB0XFGaVsm/1lN7
 OByJBw9wntEAdPJkoydQdz+4O7KDoMY5QBPsH8bIrkFU6wjOAgSiG5mOYsD1dyqWL9q1
 klwsW/L+nboc6nweb3RoX4Cs/xS0PjWV5eCtN98KjJYSfuRT8UBePMOIUe80JqmBwop7
 ukhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=n3JBnX/t3238K8AX9Z0tiHPjoZ95keru42wfKQHCHgA=;
 b=A8QSEjYdNhATjPJJC+/zmY/FA+IGVtsQnLn1tEf0RsUbUD9PmSamK2xO5opSxZCm2p
 q5615dCzBExlQXKRKtViz1rHq7MbEtKxhrZfOMZux98zl02HV73FfhxU6xVgLnO1CuZ/
 +jyb+aoAWGnbAyWodl8g1vw+Xn0/gpSN0QQv//o8t86ZrMpXe5eh3HmTETenEULfSmjn
 ikYZ0gneBcyJMblx1yHBDjcdYY9LwAJ846uAZaRi/SleCgk5yswCjx4s06urDEXH14UL
 GHtw8zVmkkqSiuBiLlfP2KY/L8C07uwdXc35PB8FoGjyFvUr704V1j2hxBoZm7akXPEs
 Yt5w==
X-Gm-Message-State: ANhLgQ3OlQt6jZIVcWNMJR0nNxW90byM3rEEfMKK/iewTzlRlI1Ia14h
 AyNb0B1fmOWyUmEmHBvOCis=
X-Google-Smtp-Source: ADFU+vvIfISnzBVzXFFGnLiDKphMhLOvwws7bFg+2nXRwwd6BVTM+ZhOmKS8Re14pkYX9GMRg3/X3g==
X-Received: by 2002:a05:600c:2f10:: with SMTP id
 r16mr2360925wmn.46.1583347330218; 
 Wed, 04 Mar 2020 10:42:10 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v11sm28175848wrs.54.2020.03.04.10.42.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 10:42:09 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: broonie@kernel.org
Subject: [PATCH v3 1/3] dt-bindings: spi: convert rockchip spi bindings to yaml
Date: Wed,  4 Mar 2020 19:42:01 +0100
Message-Id: <20200304184203.9548-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_104218_559581_070132B8 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files with 'spi' nodes are manually verified.
In order to automate this process spi-rockchip.txt
has to be converted to yaml. In the new setup
spi-rockchip.yaml will inherit properties from
spi-controller.yaml.

Add document to MAINTAINERS.

Also rk3188.dtsi, rk3288.dtsi, rk3368.dtsi and rk3399.dtsi
use an extra fallback string, so change this in the documentation.

Changed:
"rockchip,rk3188-spi", "rockchip,rk3066-spi"
"rockchip,rk3288-spi", "rockchip,rk3066-spi"
"rockchip,rk3368-spi", "rockchip,rk3066-spi"
"rockchip,rk3399-spi", "rockchip,rk3066-spi"

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changes v3:
  fix compile for latest linux-next
  remove some comments

Changes v2:
  include suggestions by robh
---
 .../devicetree/bindings/spi/spi-rockchip.txt       |  58 ------------
 .../devicetree/bindings/spi/spi-rockchip.yaml      | 105 +++++++++++++++++++++
 MAINTAINERS                                        |   1 +
 3 files changed, 106 insertions(+), 58 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-rockchip.txt
 create mode 100644 Documentation/devicetree/bindings/spi/spi-rockchip.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.txt b/Documentation/devicetree/bindings/spi/spi-rockchip.txt
deleted file mode 100644
index a0edac12d..000000000
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.txt
+++ /dev/null
@@ -1,58 +0,0 @@
-* Rockchip SPI Controller
-
-The Rockchip SPI controller is used to interface with various devices such as flash
-and display controllers using the SPI communication interface.
-
-Required Properties:
-
-- compatible: should be one of the following.
-    "rockchip,rv1108-spi" for rv1108 SoCs.
-    "rockchip,px30-spi", "rockchip,rk3066-spi" for px30 SoCs.
-    "rockchip,rk3036-spi" for rk3036 SoCS.
-    "rockchip,rk3066-spi" for rk3066 SoCs.
-    "rockchip,rk3188-spi" for rk3188 SoCs.
-    "rockchip,rk3228-spi" for rk3228 SoCS.
-    "rockchip,rk3288-spi" for rk3288 SoCs.
-    "rockchip,rk3368-spi" for rk3368 SoCs.
-    "rockchip,rk3399-spi" for rk3399 SoCs.
-- reg: physical base address of the controller and length of memory mapped
-       region.
-- interrupts: The interrupt number to the cpu. The interrupt specifier format
-              depends on the interrupt controller.
-- clocks: Must contain an entry for each entry in clock-names.
-- clock-names: Shall be "spiclk" for the transfer-clock, and "apb_pclk" for
-			   the peripheral clock.
-- #address-cells: should be 1.
-- #size-cells: should be 0.
-
-Optional Properties:
-
-- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
-		Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: DMA request names should include "tx" and "rx" if present.
-- rx-sample-delay-ns: nanoseconds to delay after the SCLK edge before sampling
-		Rx data (may need to be fine tuned for high capacitance lines).
-		No delay (0) by default.
-- pinctrl-names: Names for the pin configuration(s); may be "default" or
-		"sleep", where the "sleep" configuration may describe the state
-		the pins should be in during system suspend. See also
-		pinctrl/pinctrl-bindings.txt.
-
-
-Example:
-
-	spi0: spi@ff110000 {
-		compatible = "rockchip,rk3066-spi";
-		reg = <0xff110000 0x1000>;
-		dmas = <&pdma1 11>, <&pdma1 12>;
-		dma-names = "tx", "rx";
-		rx-sample-delay-ns = <10>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru SCLK_SPI0>, <&cru PCLK_SPI0>;
-		clock-names = "spiclk", "apb_pclk";
-		pinctrl-0 = <&spi1_pins>;
-		pinctrl-1 = <&spi1_sleep>;
-		pinctrl-names = "default", "sleep";
-	};
diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
new file mode 100644
index 000000000..bd1450c12
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spi-rockchip.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SPI Controller
+
+description:
+  The Rockchip SPI controller is used to interface with various devices such
+  as flash and display controllers using the SPI communication interface.
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+# Everything else is described in the common file
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3036-spi
+      - const: rockchip,rk3066-spi
+      - const: rockchip,rk3228-spi
+      - const: rockchip,rv1108-spi
+      - items:
+          - enum:
+            - rockchip,px30-spi
+            - rockchip,rk3188-spi
+            - rockchip,rk3288-spi
+            - rockchip,rk3368-spi
+            - rockchip,rk3399-spi
+          - const: rockchip,rk3066-spi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: transfer-clock
+      - description: peripheral clock
+
+  clock-names:
+    items:
+      - const: spiclk
+      - const: apb_pclk
+
+  dmas:
+    items:
+      - description: TX DMA Channel
+      - description: RX DMA Channel
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+
+  rx-sample-delay-ns:
+    default: 0
+    description:
+      Nano seconds to delay after the SCLK edge before sampling Rx data
+      (may need to be fine tuned for high capacitance lines).
+      If not specified 0 will be used.
+
+  pinctrl-names:
+    minItems: 1
+    items:
+      - const: default
+      - const: sleep
+    description:
+      Names for the pin configuration(s); may be "default" or "sleep",
+      where the "sleep" configuration may describe the state
+      the pins should be in during system suspend.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru-common.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi0: spi@ff110000 {
+      compatible = "rockchip,rk3066-spi";
+      reg = <0xff110000 0x1000>;
+      interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_SPI0>, <&cru PCLK_SPI0>;
+      clock-names = "spiclk", "apb_pclk";
+      dmas = <&pdma1 11>, <&pdma1 12>;
+      dma-names = "tx", "rx";
+      pinctrl-0 = <&spi1_pins>;
+      pinctrl-1 = <&spi1_sleep>;
+      pinctrl-names = "default", "sleep";
+      rx-sample-delay-ns = <10>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 3bd372323..42c21184d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2281,6 +2281,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
 S:	Maintained
 F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
 F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+F:	Documentation/devicetree/bindings/spi/spi-rockchip.yaml
 F:	arch/arm/boot/dts/rk3*
 F:	arch/arm/boot/dts/rv1108*
 F:	arch/arm/mach-rockchip/
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
