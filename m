Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 193171B99EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQrTK1ysRZgTmR2VLbsOryGrkPEdV0dzjLjbf/w1daM=; b=Nv3eJjVXb0Udmz
	ZBVxPMmusCshbXP+Utz9LANY+1Fl/j37jftFi09TKGb2FXRqZbyVssAQFijlwlcxkfw7gPsQuBLYK
	nFh4YvkAB9XuKCd7YOy4pEVShTbvy92oR+qC7e6SFmKU2Tjhazkb1Xvak7acguOh1AjxE4mzWf74L
	AxhZXAL4c4CyXXUcT0YQ36pA6yLDiIcU2AQ4kmdNlse/5LRH2FaYAcnbtcZQJPjtj7VoEhtb+RaIy
	uJtD3e04zbKBN/npJTZfLmR1YpXi7RgXrjluBX9egHPoyJx2zPQssqFd2OPJOzL5rIVjAnXR2a8Ew
	7jniBY5hBTdSguhgq0Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSz1T-00073O-8c; Mon, 27 Apr 2020 08:21:51 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyyn-0002d8-Q6; Mon, 27 Apr 2020 08:19:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 4CEBA2A018F
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v8 07/10] dt-bindings: display: add i.MX6 MIPI DSI host
 controller doc
Date: Mon, 27 Apr 2020 11:19:49 +0300
Message-Id: <20200427081952.3536741-8-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_011906_132916_30DF91EB 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Rob Herring <robh@kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sjoerd Simons <sjoerd.simons@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Martyn Welch <martyn.welch@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This provides an example DT binding for the MIPI DSI host controller
present on the i.MX6 SoC based on Synopsis DesignWare v1.01 IP.

Cc: Rob Herring <robh@kernel.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org
Tested-by: Adrian Pop <pop.adrian61@gmail.com>
Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
Changes since v7:
  - Clarified port@0,1 descriptions, marked them as required and
  added missing port@0 in example (Laurent)

Changes since v6:
  - Added ref to the newly created snps,dw-mipi-dsi.yaml (Laurent)
  - Moved *-cells properties outside patternProperties (Laurent)
  - Removed the panel port documentation (Laurent)
  - Wrapped lines at 80 chars, typo fixes, sort includes (Laurent)

Changes since v5:
  - Fixed missing reg warning (Fabio)
  - Updated dt-schema and fixed warnings (Rob)

Changes since v4:
  - Fixed yaml binding to pass `make dt_binding_check dtbs_check`
  and addressed received binding feedback (Rob)

Changes since v3:
  - Added commit message (Neil)
  - Converted to yaml format (Neil)
  - Minor dt node + driver fixes (Rob)
  - Added small panel example to the host controller binding

Changes since v2:
  - Fixed commit tags (Emil)
---
 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 145 ++++++++++++++++++
 1 file changed, 145 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
new file mode 100644
index 0000000000000..c2c3489e63fa3
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
@@ -0,0 +1,145 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,mipi-dsi-imx6.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX6 DW MIPI DSI Host Controller
+
+maintainers:
+  - Adrian Ratiu <adrian.ratiu@collabora.com>
+
+description: |
+  The i.MX6 DSI host controller is a Synopsys DesignWare MIPI DSI v1.01
+  IP block with a companion PHY IP.
+
+  These DT bindings follow the Synopsys DW MIPI DSI bindings defined in
+  Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt with
+  the following device-specific properties.
+
+allOf:
+  - $ref: ../bridge/snps,dw-mipi-dsi.yaml#
+
+properties:
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  compatible:
+    items:
+      - const: fsl,imx6q-mipi-dsi
+      - const: snps,dw-mipi-dsi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Module Clock
+      - description: DSI bus clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: pclk
+
+  fsl,gpr:
+    description:
+      Phandle to the iomuxc-gpr region containing the multiplexer ctrl register.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  ports:
+    type: object
+    description: |
+      A node containing DSI input & output port nodes with endpoint
+      definitions as documented in
+      Documentation/devicetree/bindings/media/video-interfaces.txt
+      Documentation/devicetree/bindings/graph.txt
+    properties:
+      port@0:
+        type: object
+        description:
+          DSI input port connected to a parallel RGB LTDC output port.
+
+      port@1:
+        type: object
+        description:
+          DSI serial RGB output port connected to a panel or bridge input port.
+
+    required:
+      - port@0
+      - port@1
+
+additionalProperties: false
+
+patternProperties:
+  "^panel@[0-3]$":
+    type: object
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - ports
+
+examples:
+  - |+
+    #include <dt-bindings/clock/imx6qdl-clock.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    dsi: dsi@21e0000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi";
+        reg = <0x021e0000 0x4000>;
+        interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
+        fsl,gpr = <&gpr>;
+        clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
+                 <&clks IMX6QDL_CLK_MIPI_IPG>;
+        clock-names = "ref", "pclk";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            port@0 {
+                reg = <0>;
+                mipi_mux_0: endpoint {
+                    remote-endpoint = <&ipu1_di0_mipi>;
+                };
+            };
+            port@1 {
+                reg = <1>;
+                dsi_out: endpoint {
+                    remote-endpoint = <&panel_in>;
+                };
+            };
+        };
+
+        panel@0 {
+            compatible = "sharp,ls032b3sx01";
+            reg = <0>;
+            reset-gpios = <&gpio6 8 GPIO_ACTIVE_LOW>;
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    reg = <0>;
+                    panel_in: endpoint {
+                        remote-endpoint = <&dsi_out>;
+                    };
+                };
+            };
+        };
+    };
+
+...
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
