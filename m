Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABCE72F15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nQ3moKCGeWa+Un6mOm+ylb3hBvyAQNUGlxHlYpXbOSY=; b=ISxgkq5oEHZbGp+twUoLOUhlmA
	84XUCMkXIL25sldPaCIPv+PtfLSgqCmgNmJ9eYy0IQkYq2Qykudn/9BxMheTqJayC7IEHYEXXIWLv
	Ce7HzEy+FBhkz5Dy/lccvCFyA08eegYsjNeuj6ANGTvsBkj34rXNFeOdUtkunfG5p2tPssJFryZX4
	w+uq+OrZUPUxMv1l1+92GIeP0wBvEw/d5J0uKFQnz/V8UoxUrg7mgbEkztNDOX8Rr/jMpoIZ4kcHq
	1AJk1ZPpX0HcYs6oC0zBn9/EEzhZZhw3t6c7MzVU1z+QNQioCN3mTUa9C3V/1AwzmWNTHJSvxPb7h
	P8hBzsFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGYW-0002sC-Mo; Wed, 24 Jul 2019 12:39:40 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGXo-0002Pj-2C
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:38:58 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8FB2C20026B;
 Wed, 24 Jul 2019 14:38:52 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7FECC200265;
 Wed, 24 Jul 2019 14:38:52 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 40BB2205D8;
 Wed, 24 Jul 2019 14:38:51 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Will Deacon <will@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [RFCv3 1/3] dt-bindings: devfreq: Add initial bindings for i.MX
Date: Wed, 24 Jul 2019 15:38:44 +0300
Message-Id: <93df6e7d81a404a43af684e2f96bdb6561ed87fe.1563971855.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563971855.git.leonard.crestez@nxp.com>
References: <cover.1563971855.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1563971855.git.leonard.crestez@nxp.com>
References: <cover.1563971855.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_053856_381906_A5FCC05C 
X-CRM114-Status: GOOD (  10.09  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Frank Li <Frank.li@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Alexandre Bailon <abailon@baylibre.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add initial dt bindings for the interconnects inside i.MX chips.
Multiple external IPs are involved but SOC integration means the
software controllable interfaces are very similar.

This is initially only for imx8mm but add an "fsl,imx-bus" fallback
similar to exynos-bus.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 .../devicetree/bindings/devfreq/imx.yaml      | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/devfreq/imx.yaml

diff --git a/Documentation/devicetree/bindings/devfreq/imx.yaml b/Documentation/devicetree/bindings/devfreq/imx.yaml
new file mode 100644
index 000000000000..87f90cddfd29
--- /dev/null
+++ b/Documentation/devicetree/bindings/devfreq/imx.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/devfreq/imx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic i.MX bus frequency device
+
+maintainers:
+  - Leonard Crestez <leonard.crestez@nxp.com>
+
+description: |
+  The i.MX SoC family has multiple buses for which clock frequency (and sometimes
+  voltage) can be adjusted.
+
+  Some of those buses expose register areas mentioned in the memory maps as GPV
+  ("Global Programmers View") but not all. Access to this area might be denied for
+  normal world.
+
+  The buses are based on externally licensed IPs such as ARM NIC-301 and Arteris
+  FlexNOC but DT bindings are specific to the integration of these bus
+  interconnect IPs into imx SOCs.
+ 
+properties:
+  reg:
+    maxItems: 1
+    description: GPV area
+
+  compatible:
+    contains:
+      enum:
+       - fsl,imx8m-noc
+       - fsl,imx8m-nic
+       - fsl,imx8m-ddrc
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - clocks
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+    ddrc: dram-controller@3d400000 {
+            compatible = "fsl,imx8mm-ddrc";
+            reg = <0x3d400000 0x400000>;
+            clocks = <&clk IMX8MM_CLK_DRAM>;
+            operating-points-v2 = <&ddrc_opp_table>;
+    };
+
+  - |
+    noc: noc@32700000 {
+            compatible = "fsl,imx8mm-noc";
+            reg = <0x32700000 0x100000>;
+            clocks = <&clk IMX8MM_CLK_NOC>;
+            operating-points-v2 = <&noc_opp_table>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
