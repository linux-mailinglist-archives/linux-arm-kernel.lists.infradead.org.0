Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FCD1927ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 13:14:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6wO2sDyWwpdXq+xZarnmCxoLjWnhyH6T+WxXH33AOcw=; b=Of1
	zY6m02DoGJ5rnE3eO9uuzbEhufJwpKVBXLrHeR9eung/rktAXKJ3YumIKnPoBv8r1E0TH3w6gTMQj
	9t/HswyiuHSLReydIeOaeZMG17oeskkiMU2y+5VnFzV/GNwws0rgJb+pW5JV8XXM20LA+pcxb8r4p
	TBrA8Oq2XN6LxxbVx2AFRTkfediuxQ8xpcPF7pXaegwgjCtudqDWouxSRfDwK9zOZueK6HlWaCI0V
	VNDp/5MGKgd19PnttG44J37S/3DiyG8cO3fsN46nlLZ0l52rBrNIrxLdF+DdNrrpRrOJPAmG9kt14
	9u0fZfvzC7fNVzEL6TRJum1rRsjtrzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4uy-0005qs-F4; Wed, 25 Mar 2020 12:13:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4ul-0005qE-Mw; Wed, 25 Mar 2020 12:13:45 +0000
Received: by mail-wr1-x443.google.com with SMTP id 65so2802338wrl.1;
 Wed, 25 Mar 2020 05:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hOl/owfaYb87sP9mVjhujvo/kAvWxhYs1nSOGilmW4A=;
 b=jeg4XdTKu/XvPZ1Xt3cF8yIQaKYs5aWC2NHt59RttrPbt0SqxL2nONJvUXDtWR3VsM
 he/pJZaKOoztPwWFclpqXDea5mIxyMAXnmrmQBRA3Lo1X2D0c9AtixK0wOl5PJVOKxsP
 dtrIBzMNlVI0yIXWPyGzcLXIg6VTsUTkqvOFD5AaYZZLdfWhWub+Ai197xzoUIYQdOiB
 U+EuUQvyxX0Cwf6/0k68URomy6Raj2+HVNMsmLdVBBVrJhxocwaam1YWoKzvZ3XSTdIn
 g4z0cAGsqFFqmCd0myDe/h4G3ntMr5OezQaQCanFHA92fGQDPU+iQbhOOfQ9I6iodafQ
 Zs+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hOl/owfaYb87sP9mVjhujvo/kAvWxhYs1nSOGilmW4A=;
 b=eWEvwlG7KB672Jh7jLSrHab3RDpHSd6K/QUzyijTDVAw1ASzAkT9/NdNJggdLCOjSf
 dke8hqvzi9BdllWF3u+Oo0ymbbJvKHawtSc3fdFZKX40WNp+2F5Lv7eyE8wCyFE55ivU
 9N0Zxm3RtW6FtjMUA+w3HnWEtlDnJXwd61sbMyW4vKYfKyXXQ84DlDANmbGa2y/WtL67
 OK8Zn8XuNYb99T39nXiJcwkaaNqeVZuA/7KHpDFnKJeskDHiUrngdgPMPVSWAmZV7X/F
 NlTn3poI+g4dGUdp9RUY0Iar0QXuMZZVL1VoDWUByPuzDVH3fc6PBpMeQBx3it59x46x
 E8Vw==
X-Gm-Message-State: ANhLgQ0/RbkLgyJ27baK7/o/fn6geqGDzLrjj6XBZGIf6UNOZT48E+8A
 ifkAz40KJbbfuY637dQWJyA=
X-Google-Smtp-Source: ADFU+vsAfNfD810hUfVVo81ck+67IHCKX2XgtJjX/9gCIeuNFKMXkmYoMLeOykpyMlq1qsRO68Tlig==
X-Received: by 2002:a5d:4e05:: with SMTP id p5mr3120806wrt.59.1585138421936;
 Wed, 25 Mar 2020 05:13:41 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k9sm35010397wrd.74.2020.03.25.05.13.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Mar 2020 05:13:41 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kishon@ti.com
Subject: [PATCH v3] dt-bindings: phy: convert phy-rockchip-inno-usb2 bindings
 to yaml
Date: Wed, 25 Mar 2020 13:13:35 +0100
Message-Id: <20200325121335.12249-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_051343_779473_47814CF5 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files for Rockchip with 'usb2-phy' subnodes
are manually verified. In order to automate this process
phy-rockchip-inno-usb2.txt has to be converted to yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changes v3:
  Replace oneOf by enum
  Remove allOf phy-provider.yaml
  Add "#phy-cells"
  Add additionalProperties: false

Changes v2:
  Keep "rockchip,rk3366-usb2phy" support.
  Add "#phy-cells" to example.
  Add allOf phy-provider.yaml
---
 .../bindings/phy/phy-rockchip-inno-usb2.txt        |  81 -----------
 .../bindings/phy/phy-rockchip-inno-usb2.yaml       | 155 +++++++++++++++++++++
 2 files changed, 155 insertions(+), 81 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
deleted file mode 100644
index 541f52988..000000000
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
+++ /dev/null
@@ -1,81 +0,0 @@
-ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
-
-Required properties (phy (parent) node):
- - compatible : should be one of the listed compatibles:
-	* "rockchip,px30-usb2phy"
-	* "rockchip,rk3228-usb2phy"
-	* "rockchip,rk3328-usb2phy"
-	* "rockchip,rk3366-usb2phy"
-	* "rockchip,rk3399-usb2phy"
-	* "rockchip,rv1108-usb2phy"
- - reg : the address offset of grf for usb-phy configuration.
- - #clock-cells : should be 0.
- - clock-output-names : specify the 480m output clock name.
-
-Optional properties:
- - clocks : phandle + phy specifier pair, for the input clock of phy.
- - clock-names : input clock name of phy, must be "phyclk".
- - assigned-clocks : phandle of usb 480m clock.
- - assigned-clock-parents : parent of usb 480m clock, select between
-		 usb-phy output 480m and xin24m.
-		 Refer to clk/clock-bindings.txt for generic clock
-		 consumer properties.
- - rockchip,usbgrf : phandle to the syscon managing the "usb general
-		 register files". When set driver will request its
-		 phandle as one companion-grf for some special SoCs
-		 (e.g RV1108).
- - extcon : phandle to the extcon device providing the cable state for
-		 the otg phy.
-
-Required nodes : a sub-node is required for each port the phy provides.
-		 The sub-node name is used to identify host or otg port,
-		 and shall be the following entries:
-	* "otg-port" : the name of otg port.
-	* "host-port" : the name of host port.
-
-Required properties (port (child) node):
- - #phy-cells : must be 0. See ./phy-bindings.txt for details.
- - interrupts : specify an interrupt for each entry in interrupt-names.
- - interrupt-names : a list which should be one of the following cases:
-	Regular case:
-	* "otg-id" : for the otg id interrupt.
-	* "otg-bvalid" : for the otg vbus interrupt.
-	* "linestate" : for the host/otg linestate interrupt.
-	Some SoCs use one interrupt with the above muxed together, so for these
-	* "otg-mux" : otg-port interrupt, which mux otg-id/otg-bvalid/linestate
-		to one.
-
-Optional properties:
- - phy-supply : phandle to a regulator that provides power to VBUS.
-		See ./phy-bindings.txt for details.
-
-Example:
-
-grf: syscon@ff770000 {
-	compatible = "rockchip,rk3366-grf", "syscon", "simple-mfd";
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-...
-
-	u2phy: usb2-phy@700 {
-		compatible = "rockchip,rk3366-usb2phy";
-		reg = <0x700 0x2c>;
-		#clock-cells = <0>;
-		clock-output-names = "sclk_otgphy0_480m";
-
-		u2phy_otg: otg-port {
-			#phy-cells = <0>;
-			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "otg-id", "otg-bvalid", "linestate";
-		};
-
-		u2phy_host: host-port {
-			#phy-cells = <0>;
-			interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "linestate";
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
new file mode 100644
index 000000000..cb71561a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -0,0 +1,155 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/phy-rockchip-inno-usb2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip USB2.0 phy with inno IP block
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-usb2phy
+      - rockchip,rk3228-usb2phy
+      - rockchip,rk3328-usb2phy
+      - rockchip,rk3366-usb2phy
+      - rockchip,rk3399-usb2phy
+      - rockchip,rv1108-usb2phy
+
+  reg:
+    maxItems: 1
+
+  clock-output-names:
+    description:
+      The usb 480m output clock name.
+
+  "#clock-cells":
+    const: 0
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: phyclk
+
+  assigned-clocks:
+    description:
+      Phandle of the usb 480m clock.
+
+  assigned-clock-parents:
+    description:
+      Parent of the usb 480m clock.
+      Select between usb-phy output 480m and xin24m.
+      Refer to clk/clock-bindings.txt for generic clock consumer properties.
+
+  extcon:
+    description:
+      Phandle to the extcon device providing the cable state for the otg phy.
+
+  rockchip,usbgrf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the 'usb general register files'.
+      When set the driver will request its phandle as one companion-grf
+      for some special SoCs (e.g rv1108).
+
+  host-port:
+    type: object
+    additionalProperties: false
+
+    properties:
+      "#phy-cells":
+        const: 0
+
+      interrupts:
+        description: host linestate interrupt
+
+      interrupt-names:
+        const: linestate
+
+      phy-supply:
+        description:
+          Phandle to a regulator that provides power to VBUS.
+          See ./phy-bindings.txt for details.
+
+    required:
+      - "#phy-cells"
+      - interrupts
+      - interrupt-names
+
+  otg-port:
+    type: object
+    additionalProperties: false
+
+    properties:
+      "#phy-cells":
+        const: 0
+
+      interrupts:
+        minItems: 1
+        maxItems: 3
+
+      interrupt-names:
+        oneOf:
+          - const: linestate
+          - const: otg-mux
+          - items:
+            - const: otg-bvalid
+            - const: otg-id
+            - const: linestate
+
+      phy-supply:
+        description:
+          Phandle to a regulator that provides power to VBUS.
+          See ./phy-bindings.txt for details.
+
+    required:
+      - "#phy-cells"
+      - interrupts
+      - interrupt-names
+
+required:
+  - compatible
+  - reg
+  - clock-output-names
+  - "#clock-cells"
+  - "#phy-cells"
+  - host-port
+  - otg-port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    u2phy0: usb2-phy@e450 {
+      compatible = "rockchip,rk3399-usb2phy";
+      reg = <0xe450 0x10>;
+      clocks = <&cru SCLK_USB2PHY0_REF>;
+      clock-names = "phyclk";
+      clock-output-names = "clk_usbphy0_480m";
+      #clock-cells = <0>;
+      #phy-cells = <0>;
+
+      u2phy0_host: host-port {
+        #phy-cells = <0>;
+        interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
+        interrupt-names = "linestate";
+      };
+
+      u2phy0_otg: otg-port {
+        #phy-cells = <0>;
+        interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
+        interrupt-names = "otg-bvalid", "otg-id", "linestate";
+      };
+    };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
