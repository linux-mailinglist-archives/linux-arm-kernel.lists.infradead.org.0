Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7352A19ADF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 16:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V3cawhFN/sSkLbnw+SrWh1sNDnz+POMHBPFvrq119eo=; b=hHurODVKS1CqGkCqSNAq/mnEr/
	jm1Nq7t+qxcVLbRpqHfYiDG1hQ6YP7aZ7fAs7enxmzzya0W4NTj2BiLh4HqrSCw8obkdvUF1lCRY3
	HeEZxGPOMMOn1G9kVTl4yFUnzOvxoNtaemXYS9L+wu13n8fDQDFHF/9nJi00KcUyoCtsl7QVcqZn+
	EBlI/9TWjoRipPWZxGgC85W6bgJxoI9y1ge2RLgzYqE23Ble4jV536vXjNhmKqqCK7K+d2oLYv/2r
	xz7by70tiUZTbRJ8dXU6N30KJFVbZMdYI35Sxrd5rC8agiczHJKcSWtUnq7TscaKZQAsWLWBI9ZHj
	2WSWzsQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJeQn-0002fz-R7; Wed, 01 Apr 2020 14:33:25 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJeQe-0002em-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 14:33:18 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F4095200DEB;
 Wed,  1 Apr 2020 16:33:14 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E598E200DBA;
 Wed,  1 Apr 2020 16:33:14 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D688E20507;
 Wed,  1 Apr 2020 16:33:13 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v2 1/8] dt-bindings: interconnect: Add bindings for imx8m noc
Date: Wed,  1 Apr 2020 17:33:00 +0300
Message-Id: <c211881d9206d40f76163c13024d40ba305f9233.1585751281.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1585751281.git.leonard.crestez@nxp.com>
References: <cover.1585751281.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1585751281.git.leonard.crestez@nxp.com>
References: <cover.1585751281.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_073316_657223_B3B00178 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add initial dt bindings for the interconnects inside i.MX chips.
Multiple external IPs are involved but SOC integration means the
software controllable interfaces are very similar.

Main NOC node acts as interconnect provider if #interconnect-cells is
present. Currently there is a single imx interconnect provider for the
whole SOC.

Other pieces of scalable interconnects can be present, each with their
own OPP table.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 .../bindings/interconnect/fsl,imx8m-noc.yaml  | 101 ++++++++++++++++++
 1 file changed, 101 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml

diff --git a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
new file mode 100644
index 000000000000..ff09550ad959
--- /dev/null
+++ b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
@@ -0,0 +1,101 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interconnect/fsl,imx8m-noc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic i.MX bus frequency device
+
+maintainers:
+  - Leonard Crestez <leonard.crestez@nxp.com>
+
+description: |
+  The i.MX SoC family has multiple buses for which clock frequency (and
+  sometimes voltage) can be adjusted.
+
+  Some of those buses expose register areas mentioned in the memory maps as GPV
+  ("Global Programmers View") but not all. Access to this area might be denied
+  for normal (non-secure) world.
+
+  The buses are based on externally licensed IPs such as ARM NIC-301 and
+  Arteris FlexNOC but DT bindings are specific to the integration of these bus
+  interconnect IPs into imx SOCs.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - fsl,imx8mn-nic
+          - fsl,imx8mm-nic
+          - fsl,imx8mq-nic
+        - const: fsl,imx8m-nic
+      - items:
+        - enum:
+          - fsl,imx8mn-noc
+          - fsl,imx8mm-noc
+          - fsl,imx8mq-noc
+        - const: fsl,imx8m-noc
+      - const: fsl,imx8m-nic
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  operating-points-v2: true
+  opp-table: true
+
+  fsl,ddrc:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description:
+      Phandle to DDR Controller.
+
+  '#interconnect-cells':
+    description:
+      If specified then also act as an interconnect provider. Should only be
+      set once per soc on the main noc.
+    const: 1
+
+required:
+  - compatible
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+    #include <dt-bindings/interconnect/imx8mm.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    noc: interconnect@32700000 {
+        compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
+        reg = <0x32700000 0x100000>;
+        clocks = <&clk IMX8MM_CLK_NOC>;
+        #interconnect-cells = <1>;
+        fsl,ddrc = <&ddrc>;
+
+        operating-points-v2 = <&noc_opp_table>;
+        noc_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-133M {
+                opp-hz = /bits/ 64 <133333333>;
+            };
+            opp-800M {
+                opp-hz = /bits/ 64 <800000000>;
+            };
+        };
+    };
+
+    ddrc: memory-controller@3d400000 {
+        compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
+        reg = <0x3d400000 0x400000>;
+        clock-names = "core", "pll", "alt", "apb";
+        clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
+                 <&clk IMX8MM_DRAM_PLL>,
+                 <&clk IMX8MM_CLK_DRAM_ALT>,
+                 <&clk IMX8MM_CLK_DRAM_APB>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
