Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CA2107A28
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 22:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WpRxV212TdBwKMBCDvsxB0VMK3J9MmE5V/zsS8JHkek=; b=NRP6UGiq+1WZggBnW8sAKo1Y7X
	PisisDZddFvJOmUykeRiXWfdWDeh/N4+uTdOHoMmQLuQlxu9LhOsVkOvQBlVYEg+eElWkW8cBuYzF
	+sEZkyN1SIkAQDsPP2C3RmYs2E1DcI/SCz4L/4tW4XGUA/XsEasWNPNRdtzTc7U9rxBSSd+K2CapA
	BxNJb1lzUSyQLoACHm20WU/cGO8CTx3mKn/HFBh349c/IaogeKLIw493Xy9AbilV3xK1tPmgwdjw9
	K32V65HJPj9nmpWLOBE+rOx/MSwAIje65N+/vOjAF2Iriis/+ML1ClScR4DNpFNRM0iqtX6Ps3PfB
	wUgtxenA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYGkw-0004oZ-Qj; Fri, 22 Nov 2019 21:46:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYGk6-0004Ch-A2
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 21:45:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 16D1E1A0724;
 Fri, 22 Nov 2019 22:45:29 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 09B571A02E5;
 Fri, 22 Nov 2019 22:45:29 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E6B5820465;
 Fri, 22 Nov 2019 22:45:27 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v7 3/5] dt-bindings: memory: Add bindings for imx8m ddr
 controller
Date: Fri, 22 Nov 2019 23:45:02 +0200
Message-Id: <5b2f8980c471e1a8a9a3307903829fe015fd4b6c.1574458460.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1574458460.git.leonard.crestez@nxp.com>
References: <cover.1574458460.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1574458460.git.leonard.crestez@nxp.com>
References: <cover.1574458460.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_134530_650243_00F6F17F 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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
