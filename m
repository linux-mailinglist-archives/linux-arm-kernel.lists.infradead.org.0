Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD01EB961
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:51:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kv2Mac+7Yfa3dL7w6AnTZIZZAzw/Sp3fbTdhOs6W6g8=; b=DfaWIumSUcZnLgQgm54GmztWAm
	aSE1O3ib034GfEl8v3iUFA+1Ho6PAHNinSCtKEcxBP2unJaRMrr778WTBAdIXPN8W2fNpsflGdyPs
	1ISE90nYTznoyzODv7o6hGJ+SvIEmV8ukMK8FlaE+nAdmR83HDcG/9WmRbbDvwBrjPZdJUHXCjQ1R
	D4yAmrea8NTeOIhQ9kJjq8u4SryuhW+VJWdHscdiBBt4IP4ZJUDfOy1oVBcFdMyYKk1I79J2o7KMu
	cac7d0Ngg0zo70f79E+uU+ER83bfKzwQX1yxpjdnO/wLXV45YZVnOCzBaAcO08YwvEBSNwBV+B5Io
	VexIKHdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQIMF-0005yD-Do; Thu, 31 Oct 2019 21:51:55 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQIKy-0005Gc-RM
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:50:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7D82A200578;
 Thu, 31 Oct 2019 22:50:35 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 620362001E6;
 Thu, 31 Oct 2019 22:50:35 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 53A00205E9;
 Thu, 31 Oct 2019 22:50:34 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 3/6] dt-bindings: devfreq: Add bindings for imx ddr
 controller
Date: Thu, 31 Oct 2019 23:50:24 +0200
Message-Id: <b9a87c69eb603622303add4f0c02dd4c1262462a.1572558427.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572558427.git.leonard.crestez@nxp.com>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1572558427.git.leonard.crestez@nxp.com>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_145037_186316_839720F0 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, kernel@pengutronix.de,
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
 .../devicetree/bindings/devfreq/imx-ddrc.yaml | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml

diff --git a/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
new file mode 100644
index 000000000000..31db204e6845
--- /dev/null
+++ b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/devfreq/imx-devfreq.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: i.MX DDR Controller
+
+maintainers:
+  - Leonard Crestez <leonard.crestez@nxp.com>
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
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: dram_core
+      - const: dram_pll
+      - const: dram_alt
+      - const: dram_apb
+
+  operating-points-v2: true
+
+  devfreq-events:
+    description: Phandle of PMU node
+    $ref: "/schemas/types.yaml#/definitions/phandle"
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
+    ddrc: dram-controller@3d400000 {
+        compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
+        reg = <0x3d400000 0x400000>;
+        clock-names = "dram_core", "dram_pll", "dram_alt", "dram_apb";
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
