Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3DCFCDB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:34:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ayLB3LJtobTU/9/C7hrSKeMDlRbqpUjZACVxMmBfQv0=; b=O4Py36GCsxrIjjFjbdwROaxzZi
	3FVNJVKb0io1hgS4QfmLWd4Vd2pPmB8Z1KDo4s5KoJ48FIL4JAgF50hcgBhM1aJEl1HRJ8Mz5atei
	pp9SPQGVUeIy6Tn9uw8K8jjEYLfrIM6W4F+w/1SVYHSooAz/SLOwNcY0zk28stl8shLPX3MoMK2xD
	lLa+01OYYAXW94PhJ9vkqkXsqhyzuZB+C44+t9giGvN3EcBDlqeFwzPnZlLPOCVqB+eY+Df5BkI9R
	iho3Gf6hJyxHxw+E6vLGme+DgXr5A4bj0RqRuKJ+MuD8RzjxatPtHrQYpXPJm+Uyf3YQ36slInuVA
	Ch8lJP2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJwy-0004Bw-9u; Thu, 14 Nov 2019 18:34:36 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJvx-0003Sv-Cd
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:33:35 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2C86B20046C;
 Thu, 14 Nov 2019 19:33:32 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1988120005A;
 Thu, 14 Nov 2019 19:33:32 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B2081205D5;
 Thu, 14 Nov 2019 19:33:30 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 3/5] dt-bindings: memory: Add bindings for imx8m ddr
 controller
Date: Thu, 14 Nov 2019 20:33:20 +0200
Message-Id: <58f3aea574bf3a38a42075e313fc2a5592c96ed2.1573756360.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573756360.git.leonard.crestez@nxp.com>
References: <cover.1573756360.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573756360.git.leonard.crestez@nxp.com>
References: <cover.1573756360.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_103333_713117_0642F614 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree bindings for the i.MX DDR Controller on imx8m series
chips. It supports dynamic frequency switching between multiple data
rates and this is exposed to Linux via the devfreq subsystem.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 .../memory-controllers/fsl/imx8m-ddrc.yaml    | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
new file mode 100644
index 000000000000..c9e6c22cb5be
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/fsl/imx8m-ddrc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: i.MX8M DDR Controller
+
+maintainers:
+  - Leonard Crestez <leonard.crestez@nxp.com>
+
+description:
+  The DDRC block is integrated in i.MX8M for interfacing with DDR based
+  memories.
+
+  It supports switching between different frequencies at runtime but during
+  this process RAM itself becomes briefly inaccessible so actual frequency
+  switching is implemented by TF-A code which runs from a SRAM area.
+
+  The Linux driver for the DDRC doesn't even map registers (they're included
+  for the sake of "describing hardware"), it mostly just exposes firmware
+  capabilities through standard Linux mechanism like devfreq and OPP tables.
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - fsl,imx8mn-ddrc
+        - fsl,imx8mm-ddrc
+        - fsl,imx8mq-ddrc
+      - const: fsl,imx8m-ddrc
+
+  reg:
+    maxItems: 1
+    description:
+      Base address and size of DDRC CTL area.
+      This is not currently mapped by the imx8m-ddrc driver.
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: core
+      - const: pll
+      - const: alt
+      - const: apb
+
+  operating-points-v2: true
+  opp-table: true
+
+required:
+  - reg
+  - compatible
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+    ddrc: memory-controller@3d400000 {
+        compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
+        reg = <0x3d400000 0x400000>;
+        clock-names = "core", "pll", "alt", "apb";
+        clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
+                 <&clk IMX8MM_DRAM_PLL>,
+                 <&clk IMX8MM_CLK_DRAM_ALT>,
+                 <&clk IMX8MM_CLK_DRAM_APB>;
+        operating-points-v2 = <&ddrc_opp_table>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
