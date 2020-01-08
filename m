Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4561F134ADF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4BSSlJZZ5NsBSg8xgj6cATDlk/64Kvt0IaNovPw/38=; b=Ri589CqrAtaw+r
	G7rGBnOu6/1OvgQigIr+ZLEnABQjz2qlVA8p92zcYHLJxOtY04g9GpSyMjlKzNwuCRxHgcl2e8dvF
	Q3F6sXfqWvW1eJQQN9ArspghYlL+4wjwmPlK5+82SpexP+W9qeQeVxtn2jSscVV1uigVOVzGJoIbV
	mkddGw4l3J2j2nbMIfcM51r9QcVGE8GyNZQIzcjKxN+nWslK1jYTikIEgDOAKuZoVANGXAqFdufUo
	7VMKnP8HWYMEE5VdIS/hiExObljxqlsNPXMUQ4157GAWXkFQ+Q/3n9I8Vtp9D35/rqwS/SdA+tat7
	EYCu9uVHRCE5MN91Y9tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGNU-0001iv-Ea; Wed, 08 Jan 2020 18:48:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGLa-0000Nh-L1; Wed, 08 Jan 2020 18:46:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 93FE82912EE
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v13 08/11] media: staging: dt-bindings: add Rockchip ISP1 yaml
 bindings
Date: Wed,  8 Jan 2020 15:44:51 -0300
Message-Id: <20200108184454.825725-9-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200108184454.825725-1-helen.koike@collabora.com>
References: <20200108184454.825725-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_104627_048231_E192ECBA 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, ezequiel@collabora.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, mchehab@kernel.org,
 andrey.konovalov@linaro.org, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add yaml DT bindings for Rockchip ISP1.

This was tested and verified with:
mv drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml Documentation/devicetree/bindings/media/
make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml

Signed-off-by: Helen Koike <helen.koike@collabora.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

---

Changes in v13:
- improve clock descriptions
- fixed typo
- add description to port@0
- remove unecessary description in reg

Changes in v12:
- The commit replaces the following commit in previous series named
media: staging: dt-bindings: Document the Rockchip ISP1 bindings
This new patch adds yaml binding and was verified with
make dtbs_check and make dt_binding_check

Changes in v11:
- add clock-names values

Changes in v10:
- unsquash

Changes in v9:
- squash
- move to staging

Changes in v8:
- fix title division style

Changes in v7:
- update document with new design and tested example

 .../bindings/media/rockchip-isp1.yaml         | 192 ++++++++++++++++++
 1 file changed, 192 insertions(+)
 create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
new file mode 100644
index 000000000000..af246b71eac6
--- /dev/null
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -0,0 +1,192 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC Image Signal Processing unit v1
+
+maintainers:
+  - Helen Koike <helen.koike@collabora.com>
+
+description: |
+  Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
+  which contains image processing, scaling, and compression functions.
+
+properties:
+  compatible:
+    const: rockchip,rk3399-cif-isp
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+    description: phandle for the PHY port
+
+  phy-names:
+    const: dphy
+
+  clocks:
+    items:
+      - description: ISP clock
+      - description: ISP AXI clock clock
+      - description: ISP AXI clock  wrapper clock
+      - description: ISP AHB clock clock
+      - description: ISP AHB wrapper clock
+
+  clock-names:
+    items:
+      - const: clk_isp
+      - const: aclk_isp
+      - const: aclk_isp_wrap
+      - const: hclk_isp
+      - const: hclk_isp_wrap
+
+  # See ./video-interfaces.txt for details
+  ports:
+    type: object
+    additionalProperties: false
+
+    properties:
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+      port@0:
+        type: object
+        description: connection point for sensors at MIPI-DPHY RX0
+        additionalProperties: false
+
+        properties:
+          "#address-cells":
+            const: 1
+
+          "#size-cells":
+            const: 0
+
+          reg:
+            const: 0
+
+        patternProperties:
+          endpoint:
+            type: object
+            additionalProperties: false
+
+            properties:
+              reg:
+                maxItems: 1
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+              remote-endpoint: true
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - interrupts
+  - clocks
+  - clock-names
+  - power-domains
+  - iommus
+  - phys
+  - phy-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3399-power.h>
+
+    parent0: parent@0 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        isp0: isp0@ff910000 {
+            compatible = "rockchip,rk3399-cif-isp";
+            reg = <0x0 0xff910000 0x0 0x4000>;
+            interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
+            clocks = <&cru SCLK_ISP0>,
+                     <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
+                     <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
+            clock-names = "clk_isp",
+                          "aclk_isp", "aclk_isp_wrap",
+                          "hclk_isp", "hclk_isp_wrap";
+            power-domains = <&power RK3399_PD_ISP0>;
+            iommus = <&isp0_mmu>;
+            phys = <&dphy>;
+            phy-names = "dphy";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+                    reg = <0>;
+
+                    mipi_in_wcam: endpoint@0 {
+                        reg = <0>;
+                        remote-endpoint = <&wcam_out>;
+                        data-lanes = <1 2>;
+                    };
+
+                    mipi_in_ucam: endpoint@1 {
+                        reg = <1>;
+                        remote-endpoint = <&ucam_out>;
+                        data-lanes = <1>;
+                    };
+                };
+            };
+        };
+
+        i2c7: i2c@ff160000 {
+            clock-frequency = <400000>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            wcam: camera@36 {
+                compatible = "ovti,ov5695";
+                reg = <0x36>;
+
+                port {
+                    wcam_out: endpoint {
+                        remote-endpoint = <&mipi_in_wcam>;
+                        data-lanes = <1 2>;
+                    };
+                };
+            };
+
+            ucam: camera@3c {
+                compatible = "ovti,ov2685";
+                reg = <0x3c>;
+
+                  port {
+                      ucam_out: endpoint {
+                          remote-endpoint = <&mipi_in_ucam>;
+                          data-lanes = <1>;
+                      };
+                  };
+            };
+        };
+    };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
