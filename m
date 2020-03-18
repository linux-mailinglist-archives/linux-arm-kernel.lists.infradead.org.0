Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5615D18A32D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 20:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=I66Ve27u3K/AD8J3g/BdRkaDHSHH/Rhh7SMwHU5VoFg=; b=Mxm
	wm4RfiRoSa0xEvh0YzJTyzMvVT6KunZU2BCN4xtBkauseXg/0os/+n3z/zKIYXesRX81RCbFjXsc4
	obocYtsn4zio8eomZptnHF3G72ltJP0BtSxEb+wBx83+2+CbaPFAY+N8KqyskBSI5lcXUTqSH5GPi
	8bq4GH14HaK7Enjw1VesHsijRyGxd0Rs3xKfdq4KMZU9cLETKHE9V2pU9YZ9f4EISPD9gmHygTcpt
	2/SoUjTH2DVX6Tt80SehfpngnzalxY0Y69b03PaW7/2KrOYBWbaG3/dFmTtPhhVfIA4TEwt7+DTH4
	pgY/AhhFEJMpMeEJVMHsBL5lkyX5STg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEeNn-0000Lr-UZ; Wed, 18 Mar 2020 19:29:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEeNV-0000CU-Ke; Wed, 18 Mar 2020 19:29:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id x3so3071983wmj.1;
 Wed, 18 Mar 2020 12:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KdMSCAwSZJxCt921knCES5wm2vjg59UHOmJpntfpsrQ=;
 b=sui7jwdNSHCvkLhFYYQSkI0ZjDuWgLtUu5b759IGsMx1wv9Z9N9ZzdJqIcgi4ib/6J
 bawhTKLg1nuRNdm7jXAdEchx2sS6sjhljMNMLJLUZ6E1gmLvU5uJsBHOkt5VzJ8wLcQu
 MRviLgH7pqcRjfo7c1AX3tyzH4xlEJNaLf/qRMknWGShNp2BE9I3G5UPF3lhSRPTkz6u
 +XSm4UQROFEOuwXX3YeB3JZahiasVUowWRwWNa7Oy0Il+0/aY4UyRiiznby5TJGiDEsm
 keY7btWvt8kAO+BPgKaEWLQIc6Lsfn0bU46CESNP3tQozftD1cXg+BJoypD7CmcupCQE
 cQXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KdMSCAwSZJxCt921knCES5wm2vjg59UHOmJpntfpsrQ=;
 b=XubbjCrjxhmzNOjeF26wT6RGGYgXs+3PhGylOKLFP4ZOJQBFlMS/+IgoU4FYO2XSYC
 KlXR6oqVenf5J1PvGXph2ClhgGw0rC6rMAoYqksn9BLJ6cZR+vAXknCZttVxcDyXCRxx
 HFkZrOXh1i/6FBj5087OMvy1g/m84S61J2gtl7/jw32lRJT0HzpsokgX0yBck0xzJUHd
 wny5S5wpn8cHJxWNEN20Pc9QJjU4Vg9LWUT5pPcd2DIeXcPR0rRuw07nMNMe9zh7Npr3
 09axNZO7WzXwZrFZ9HiormvDO8f4kWy4VN+3wOu4X1nBVC4OVjRjFTssEnoklnNq04gq
 UjhQ==
X-Gm-Message-State: ANhLgQ3KxhBqOGb0eCktsGPl83EUrx67g4OLuebabCTZGJQt6ChCwdpz
 zJ76W4nct+SfQcRLEIWS5rI=
X-Google-Smtp-Source: ADFU+vtNuNfl3UuIaIj8ul1aotqzBFUnCK8di4ve2AE4ngboh5WtUUw+uyNnpNWlHDERAppMlduMsA==
X-Received: by 2002:a7b:cb50:: with SMTP id v16mr6784337wmj.74.1584559748306; 
 Wed, 18 Mar 2020 12:29:08 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s131sm5333728wmf.35.2020.03.18.12.29.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Mar 2020 12:29:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kishon@ti.com
Subject: [RFC PATCH 1/2] dt-bindings: phy: convert phy-rockchip-inno-usb2
 bindings to yaml
Date: Wed, 18 Mar 2020 20:29:00 +0100
Message-Id: <20200318192901.5023-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_122922_214236_DFBE208B 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Changed:
  Removed unused "rockchip,rk3366-usb2phy" support.
  Replaced example with something that has SoC support
  in the kernel.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/phy/phy-rockchip-inno-usb2.txt        |  81 -----------
 .../bindings/phy/phy-rockchip-inno-usb2.yaml       | 149 +++++++++++++++++++++
 2 files changed, 149 insertions(+), 81 deletions(-)
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
index 000000000..df92ac993
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -0,0 +1,149 @@
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
+    oneOf:
+      - const: rockchip,px30-usb2phy
+      - const: rockchip,rk3228-usb2phy
+      - const: rockchip,rk3328-usb2phy
+      - const: rockchip,rk3399-usb2phy
+      - const: rockchip,rv1108-usb2phy
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
