Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818431A42F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 09:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEPwh6PA0KQh0t7Kd1ZmrdwBIU1lsN2o9YGPBu+H2vY=; b=EgHWPJcvK5FYYj
	G2+YG7qdmHAL/CizCiSsv6J+l5dwc7uHkexU3mUApsNyOvOAvfJwKC88sEVpPNWRhQwF+RNhKLB73
	W07llypZOQfNor8PD9roh6MGM+X+uzYRlPg/Ui4SYkOyUddlYMj17Wk60gjDCIEJ0C1Oz/Gud0Lz9
	0ZMct4Zy2QZQHIHVJj3ng0HoLrw62wBpFP/qzo3dT7IlPQna1psv9JDQ5hev7g/jdo1116oRg8kHW
	T7pE5OuVLnu3Is8CAbUI1QpLJuUwCjLuGkm2WEm/b8QPsPqave0UOYOEqU275M8wuSVGwio4U6qg+
	a38j6oS17JxY1QA9g0aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMnyO-0007Cf-Cb; Fri, 10 Apr 2020 07:21:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMnxn-0006go-KF; Fri, 10 Apr 2020 07:20:33 +0000
X-UUID: 1694f905be944b5ab5a27f54b5364077-20200409
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=kSc1VSUFMhS93AZxKPxNBlcYGw6yPmLBY8gUjRDuIcg=; 
 b=IVtYDc3kg9Cp0KsptcASnXMZhuUYgq5sb0cXEcccQ777kllcmwauRdtPmcS9rflxDzJ0YriHQzW7MOlKPmNc5Ig6IwFftgFdu35jC/Z3qA55Eo6Qoy//n4YAI2wzelA56cDy6tJDBSU2rxXqaPqk5ZCfH8fsspctpWtlyOuNbew=;
X-UUID: 1694f905be944b5ab5a27f54b5364077-20200409
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <louis.kuo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1181888470; Thu, 09 Apr 2020 23:20:22 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 00:17:33 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 15:17:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 10 Apr 2020 15:17:30 +0800
From: Louis Kuo <louis.kuo@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <keiichiw@chromium.org>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC PATCH V6 2/3] dt-bindings: mt8183: Add sensor interface
 dt-bindings
Date: Fri, 10 Apr 2020 15:17:22 +0800
Message-ID: <20200410071723.19720-3-louis.kuo@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200410071723.19720-1-louis.kuo@mediatek.com>
References: <20200410071723.19720-1-louis.kuo@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_002031_694627_4539B217 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 louis.kuo@mediatek.com, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the DT binding documentation for the sensor interface
module in Mediatek SoCs.

Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
---
 .../bindings/media/mediatek-seninf.yaml       | 219 ++++++++++++++++++
 1 file changed, 219 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-seninf.yaml

diff --git a/Documentation/devicetree/bindings/media/mediatek-seninf.yaml b/Documentation/devicetree/bindings/media/mediatek-seninf.yaml
new file mode 100644
index 000000000000..c9e5776a2bd0
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek-seninf.yaml
@@ -0,0 +1,219 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/mediatek-seninf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek seninf MIPI-CSI2 host driver
+
+maintainers:
+  - Louis Kuo <louis.kuo@mediatek.com>
+
+description: |
+  Seninf MIPI-CSI2 host driver is a HW camera interface controller. It support
+  a widely adopted, simple, high-speed protocol primarily intended for
+  point-to-point image and video transmission between cameras and host devices.
+
+properties:
+  compatible:
+    const: mediatek,mt8183-seninf
+
+  reg:
+    minItems: 2
+    items:
+      - description: The Seninf main register region
+      - description: The RX register region
+
+  reg-names:
+    minItems: 2
+    items:
+      - const: base
+      - const: rx
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Seninf camsys clock
+      - description: Seninf top mux clock
+
+  clock-names:
+    items:
+      - const: clk_cam_seninf
+      - const: clk_top_mux_seninf
+
+  # See ./video-interfaces.txt for details
+  ports:
+    type: object
+    additionalProperties: false
+
+    properties: 
+      port@0:
+        type: object
+        description: connection point for sensor at port 0
+        additionalProperties: false
+
+        properties:
+          reg:
+            const: 0
+
+        patternProperties:
+          endpoint:
+            type: object
+            additionalProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+              remote-endpoint: true
+
+      port@1:
+        type: object
+        description: connection point for sensor at port 1
+        additionalProperties: false
+
+        properties:
+          reg:
+            const: 1
+
+        patternProperties:
+          endpoint:
+            type: object
+            additionalProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+              remote-endpoint: true
+
+      port@4:
+        type: object
+        description: connection point for camsys
+        additionalProperties: false
+
+        properties:
+          reg:
+            const: 4
+
+        patternProperties:
+          endpoint:
+            type: object
+            additionalProperties: false
+
+            properties:
+              remote-endpoint: true
+
+    required:
+      - port@0
+      - port@1
+      - port@4
+
+required:
+  - compatible
+  - interrupts
+  - clocks
+  - clock-names
+  - power-domains
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/clock/mt8183-clk.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8183-power.h>
+
+    parent0: parent@0 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        seninf: seninf@1a040000 {
+            compatible = "mediatek,mt8183-seninf";
+            reg = <0 0x1a040000 0 0x8000>,
+                  <0 0x11c80000 0 0x6000>;
+            reg-names = "base", "rx";
+            interrupts = <GIC_SPI 251 IRQ_TYPE_LEVEL_LOW>;
+            power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
+            clocks = <&camsys CLK_CAM_SENINF>,
+                <&topckgen CLK_TOP_MUX_SENINF>;
+            clock-names = "clk_cam_seninf", "clk_top_mux_seninf";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    mipi_in_bcam: endpoint {
+                        data-lanes = <0 1 3 4>;
+                        remote-endpoint = <&bcam_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    mipi_in_fcam: endpoint {
+                        data-lanes = <1>;
+                        remote-endpoint = <&fcam_out>;
+                    };
+                };
+
+                port@4 {
+                    reg = <4>;
+
+                    seninf_camisp_endpoint: endpoint {
+                        remote-endpoint = <&camisp_endpoint>;
+                    };
+                };
+            };
+        };
+
+        i2c2: i2c@11009000 {
+            clock-frequency = <400000>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            wcam: camera@36 {
+                compatible = "ovti,ov5695";
+                reg = <0x36>;
+
+                port {
+                    bcam_out: endpoint {
+                        remote-endpoint = <&mipi_in_bcam>;
+                        data-lanes = <0 1 3 4>;
+                    };
+                };
+            };
+        };
+
+        i2c4: i2c@11008000 {
+            clock-frequency = <400000>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            
+            ucam: camera@3c {
+                compatible = "ovti,ov2685";
+                reg = <0x3c>;
+
+                port {
+                    fcam_out: endpoint {
+                        remote-endpoint = <&mipi_in_fcam>;
+                        data-lanes = <1>;
+                    };
+                };
+            };
+        };
+    };
\ No newline at end of file
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
