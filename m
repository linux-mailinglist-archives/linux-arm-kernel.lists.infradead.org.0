Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A365BC8A87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VL9E5yckZdAHKvdN4jJq5jnzfMkNpwdVHzVsn1CiDkw=; b=O1Dw5DU/ORbefSrVFwh33s1zsY
	47i+Pd9ObjIYjSZ6iL3UYKvYbhuIPOmbpZcPqmXne+AKqLMulK8WoCSn9Nc1txt1/OZGOmuuztvLt
	oucUI0Cln3Ei34Wff7V5kCGjt7oGyDEnZxdBBsqlp7Ayvwsm+EO4hJTcvXiUs4CP2Snxr9NAy3syT
	mALc7VuVUscniEYAThMG2fkf9O/srg7dmQyBMd4NkV5vPfq0tENc2G8VE9dLFEX5TD5Pycs8nUX8z
	OQMaucajQKJ7kHpwAbGcm3hQiZ/vd+hBUQ/QrDItmJlhDGH14v/15YZcGxxHCocfBzL8vE+PoCUW9
	Sd/c9pMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfGl-0006EO-Th; Wed, 02 Oct 2019 14:06:19 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfGG-0005eP-NA
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:05:51 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 71E701A0AD9;
 Wed,  2 Oct 2019 16:05:47 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 657BE1A02D1;
 Wed,  2 Oct 2019 16:05:47 +0200 (CEST)
Received: from fsr-ub1664-121.ea.freescale.net
 (fsr-ub1664-121.ea.freescale.net [10.171.82.171])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D13B62060C;
 Wed,  2 Oct 2019 16:05:46 +0200 (CEST)
From: Laurentiu Palcu <laurentiu.palcu@nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 4/5] dt-bindings: display: imx: add bindings for DCSS
Date: Wed,  2 Oct 2019 17:04:56 +0300
Message-Id: <1570025100-5634-5-git-send-email-laurentiu.palcu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
References: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_070549_070098_A1F94FC8 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, agx@sigxcpu.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for iMX8MQ Display Controller Subsystem.

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@nxp.com>
---
 .../bindings/display/imx/nxp,imx8mq-dcss.yaml      | 86 ++++++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml b/Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml
new file mode 100644
index 00000000..efd2494
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 NXP
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/display/imx/nxp,imx8mq-dcss.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: iMX8MQ Display Controller Subsystem (DCSS)
+
+maintainers:
+  - Laurentiu Palcu <laurentiu.palcu@nxp.com>
+
+description:
+
+  The DCSS (display controller sub system) is used to source up to three
+  display buffers, compose them, and drive a display using HDMI 2.0a(with HDCP
+  2.2) or MIPI-DSI. The DCSS is intended to support up to 4kp60 displays. HDR10
+  image processing capabilities are included to provide a solution capable of
+  driving next generation high dynamic range displays.
+
+properties:
+  compatible:
+    const: nxp,imx8mq-dcss
+
+  reg:
+    maxItems: 2
+
+  interrupts:
+    maxItems: 3
+    items:
+      - description: Context loader completion and error interrupt
+      - description: DTG interrupt used to signal context loader trigger time
+      - description: DTG interrupt for Vblank
+
+  interrupt-names:
+    maxItems: 3
+    items:
+      - const: ctx_ld
+      - const: ctxld_kick
+      - const: vblank
+
+  clocks:
+    maxItems: 5
+    items:
+      - description: Display APB clock for all peripheral PIO access interfaces
+      - description: Display AXI clock needed by DPR, Scaler, RTRAM_CTRL
+      - description: RTRAM clock
+      - description: Pixel clock, can be driver either by HDMI phy clock or MIPI
+      - description: DTRC clock, needed by video decompressor
+
+  clock-names:
+    items:
+      - const: apb
+      - const: axi
+      - const: rtrm
+      - const: pix
+      - const: dtrc
+
+  port@0:
+    type: object
+    description: A port node pointing to a hdmi_in or mipi_in port node.
+
+examples:
+  - |
+    dcss: display-controller@32e00000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "nxp,imx8mq-dcss";
+        reg = <0x32e00000 0x2d000>, <0x32e2f000 0x1000>;
+        interrupts = <6>, <8>, <9>;
+        interrupt-names = "ctx_ld", "ctxld_kick", "vblank";
+        interrupt-parent = <&irqsteer>;
+        clocks = <&clk 248>, <&clk 247>, <&clk 249>,
+                 <&clk 254>,<&clk 122>;
+        clock-names = "apb", "axi", "rtrm", "pix", "dtrc";
+        assigned-clocks = <&clk 107>, <&clk 109>, <&clk 266>;
+        assigned-clock-parents = <&clk 78>, <&clk 78>, <&clk 3>;
+        assigned-clock-rates = <800000000>,
+                               <400000000>;
+        port@0 {
+            dcss_out: endpoint {
+                remote-endpoint = <&hdmi_in>;
+            };
+        };
+    };
+
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
