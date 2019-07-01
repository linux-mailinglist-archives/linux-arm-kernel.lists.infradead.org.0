Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C6959541
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 09:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9jcm6XdLVjogYxRZtMLKaMoXURg1mDVV5I2q8eoX9T4=; b=BxsKGUxQh1GQaSgf3iZv34PaY2
	LiujEYzgZeJZfuBPmFhT2mZag9BaGCn69l9O/viZL0uw0ixPwsUNQyEyn09pKNW8jqlcHy8pyqHe/
	Mbt/C1O9WuLvUB4zU0tDD/HInYDck3J11uHmLUmZuNgr5VVQw3gHM+yJJLUQhGTn4aEW83WWa55MF
	5vew/nFqJPEDqikc4/EMvE0W9xsKsMzoH4FioxUp7YDb5hmA7OQqpYNk7qpOoPKwP+BmNfcQWvW9f
	81tpfDG16maPpjD7ESnh4JHU33oBCTBGh1Uiv0geWFObBprXZYibFPqUknYrS+lA0Dv63CrixduOe
	5YupcoAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglXk-0001Tz-0i; Fri, 28 Jun 2019 07:43:36 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglUN-0007G2-2s
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 07:40:12 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CDF111A033E;
 Fri, 28 Jun 2019 09:40:05 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B3EE31A0345;
 Fri, 28 Jun 2019 09:40:05 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C833F205D5;
 Fri, 28 Jun 2019 09:40:04 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [RFCv2 5/8] interconnect: imx: Add platform driver for imx8mm
Date: Fri, 28 Jun 2019 10:39:53 +0300
Message-Id: <be086a133a8877b799b474956a6667b65c8658b5.1561707104.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561707104.git.leonard.crestez@nxp.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1561707104.git.leonard.crestez@nxp.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_004007_477595_2610F9C7 
X-CRM114-Status: GOOD (  14.71  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Bailon <abailon@baylibre.com>

This adds a platform driver for the i.MX8MM SoC.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---

Changes by Leonard:
* Single DRAM clk
* Change compat string to imx8mm-interconnect
---
 drivers/interconnect/imx/Kconfig          |   4 +
 drivers/interconnect/imx/Makefile         |   1 +
 drivers/interconnect/imx/busfreq-imx8mm.c | 151 ++++++++++++++++++++++
 include/dt-bindings/interconnect/imx8mm.h |  49 +++++++
 4 files changed, 205 insertions(+)
 create mode 100644 drivers/interconnect/imx/busfreq-imx8mm.c
 create mode 100644 include/dt-bindings/interconnect/imx8mm.h

diff --git a/drivers/interconnect/imx/Kconfig b/drivers/interconnect/imx/Kconfig
index afd7b71bbd82..b569d40e5ca0 100644
--- a/drivers/interconnect/imx/Kconfig
+++ b/drivers/interconnect/imx/Kconfig
@@ -9,5 +9,9 @@ config BUSFREQ
 	depends on INTERCONNECT_IMX
 	help
 	  A generic interconnect driver that could be used for any i.MX.
 	  This provides a way to register master and slave and some opp
 	  to use when one or more master are in use.
+
+config BUSFREQ_IMX8MM
+	bool "i.MX8MM busfreq driver"
+	depends on BUSFREQ
diff --git a/drivers/interconnect/imx/Makefile b/drivers/interconnect/imx/Makefile
index fea647183815..a92fea6e042d 100644
--- a/drivers/interconnect/imx/Makefile
+++ b/drivers/interconnect/imx/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_BUSFREQ) += busfreq.o
+obj-$(CONFIG_BUSFREQ_IMX8MM) += busfreq-imx8mm.o
diff --git a/drivers/interconnect/imx/busfreq-imx8mm.c b/drivers/interconnect/imx/busfreq-imx8mm.c
new file mode 100644
index 000000000000..49ffe230637d
--- /dev/null
+++ b/drivers/interconnect/imx/busfreq-imx8mm.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Interconnect framework driver for i.MX SoC
+ *
+ * Copyright (c) 2019, BayLibre
+ * Author: Alexandre Bailon <abailon@baylibre.com>
+ */
+
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+
+#include <dt-bindings/interconnect/imx8mm.h>
+
+#include "busfreq.h"
+
+/*
+ * Describe bus masters, slaves and connections between them
+ *
+ * This is a simplified subset of the bus diagram, there are several other
+ * PL301 nics which are skipped/merged into PL301_MAIN
+ */
+static struct busfreq_icc_node imx8mm_icc_nodes[] = {
+	DEFINE_BUS_INTERCONNECT("NOC", IMX8MM_ICN_NOC, 2,
+			IMX8MM_ICS_DRAM,
+			IMX8MM_ICN_MAIN),
+
+	DEFINE_BUS_SLAVE("DRAM", IMX8MM_ICS_DRAM),
+	DEFINE_BUS_SLAVE("OCRAM", IMX8MM_ICS_OCRAM),
+	DEFINE_BUS_MASTER("A53", IMX8MM_ICM_A53, IMX8MM_ICN_NOC),
+
+	/* VPUMIX */
+	DEFINE_BUS_MASTER("VPU H1", IMX8MM_ICM_VPU_H1, IMX8MM_ICN_VIDEO),
+	DEFINE_BUS_MASTER("VPU G1", IMX8MM_ICM_VPU_G1, IMX8MM_ICN_VIDEO),
+	DEFINE_BUS_MASTER("VPU G2", IMX8MM_ICM_VPU_G2, IMX8MM_ICN_VIDEO),
+	DEFINE_BUS_INTERCONNECT("PL301_VIDEO", IMX8MM_ICN_VIDEO, 1, IMX8MM_ICN_NOC),
+
+	/* GPUMIX */
+	DEFINE_BUS_MASTER("GPU 2D", IMX8MM_ICM_GPU2D, IMX8MM_ICN_GPU),
+	DEFINE_BUS_MASTER("GPU 3D", IMX8MM_ICM_GPU3D, IMX8MM_ICN_GPU),
+	DEFINE_BUS_INTERCONNECT("PL301_GPU", IMX8MM_ICN_GPU, 1, IMX8MM_ICN_NOC),
+
+	/* DISPLAYMIX */
+	DEFINE_BUS_MASTER("CSI", IMX8MM_ICM_CSI, IMX8MM_ICN_MIPI),
+	DEFINE_BUS_MASTER("LCDIF", IMX8MM_ICM_LCDIF, IMX8MM_ICN_MIPI),
+	DEFINE_BUS_INTERCONNECT("PL301_MIPI", IMX8MM_ICN_MIPI, 1, IMX8MM_ICN_NOC),
+
+	/* HSIO */
+	DEFINE_BUS_MASTER("USB1", IMX8MM_ICM_USB1, IMX8MM_ICN_HSIO),
+	DEFINE_BUS_MASTER("USB2", IMX8MM_ICM_USB2, IMX8MM_ICN_HSIO),
+	DEFINE_BUS_MASTER("PCIE", IMX8MM_ICM_PCIE, IMX8MM_ICN_HSIO),
+	DEFINE_BUS_INTERCONNECT("PL301_HSIO", IMX8MM_ICN_HSIO, 1, IMX8MM_ICN_NOC),
+
+	/* Audio */
+	DEFINE_BUS_MASTER("SDMA2", IMX8MM_ICM_SDMA2, IMX8MM_ICN_AUDIO),
+	DEFINE_BUS_MASTER("SDMA3", IMX8MM_ICM_SDMA3, IMX8MM_ICN_AUDIO),
+	DEFINE_BUS_INTERCONNECT("PL301_AUDIO", IMX8MM_ICN_AUDIO, 1, IMX8MM_ICN_MAIN),
+
+	/* Ethernet */
+	DEFINE_BUS_MASTER("ENET", IMX8MM_ICM_ENET, IMX8MM_ICN_ENET),
+	DEFINE_BUS_INTERCONNECT("PL301_ENET", IMX8MM_ICN_ENET, 1, IMX8MM_ICN_MAIN),
+
+	/* Other */
+	DEFINE_BUS_MASTER("SDMA1", IMX8MM_ICM_SDMA1, IMX8MM_ICN_MAIN),
+	DEFINE_BUS_MASTER("NAND", IMX8MM_ICM_NAND, IMX8MM_ICN_MAIN),
+	DEFINE_BUS_MASTER("USDHC1", IMX8MM_ICM_USDHC1, IMX8MM_ICN_MAIN),
+	DEFINE_BUS_MASTER("USDHC2", IMX8MM_ICM_USDHC2, IMX8MM_ICN_MAIN),
+	DEFINE_BUS_MASTER("USDHC3", IMX8MM_ICM_USDHC3, IMX8MM_ICN_MAIN),
+	DEFINE_BUS_INTERCONNECT("PL301_MAIN", IMX8MM_ICN_MAIN, 2,
+			IMX8MM_ICN_NOC,
+			IMX8MM_ICS_OCRAM),
+};
+
+static struct busfreq_opp_clk imx8mm_low_freq_clks[] = {
+	DEFINE_OPP_CLOCK("dram", 25000000),
+	DEFINE_OPP_CLOCK("noc", 150000000),
+	DEFINE_OPP_CLOCK("ahb", 22222222),
+	DEFINE_OPP_CLOCK("axi", 24000000),
+};
+
+static struct busfreq_opp_clk imx8mm_audio_freq_clks[] = {
+	DEFINE_OPP_CLOCK("dram", 100000000),
+	DEFINE_OPP_CLOCK("noc", 150000000),
+	DEFINE_OPP_CLOCK("ahb", 22222222),
+	DEFINE_OPP_CLOCK("axi", 24000000),
+};
+
+static struct busfreq_opp_bw imx8mm_audio_freq_nodes[] = {
+	DEFINE_OPP_NODE(IMX8MM_ICM_SDMA2),
+	DEFINE_OPP_NODE(IMX8MM_ICM_SDMA3),
+};
+
+static struct busfreq_opp_clk imx8mm_high_freq_clks[] = {
+	DEFINE_OPP_CLOCK("dram", 750000000),
+	DEFINE_OPP_CLOCK("noc", 750000000),
+	DEFINE_OPP_CLOCK("ahb", 133333333),
+	DEFINE_OPP_CLOCK("axi", 333333333),
+};
+
+static struct busfreq_opp_bw imx8mm_high_freq_nodes[] = {
+	DEFINE_OPP_NODE(IMX8MM_ICM_SDMA2),
+	DEFINE_OPP_NODE(IMX8MM_ICM_SDMA3),
+	DEFINE_OPP_NODE(IMX8MM_ICM_VPU_H1),
+	DEFINE_OPP_NODE(IMX8MM_ICM_VPU_G1),
+	DEFINE_OPP_NODE(IMX8MM_ICM_VPU_G2),
+	DEFINE_OPP_NODE(IMX8MM_ICM_GPU2D),
+	DEFINE_OPP_NODE(IMX8MM_ICM_GPU3D),
+	DEFINE_OPP_NODE(IMX8MM_ICM_CSI),
+	DEFINE_OPP_NODE(IMX8MM_ICM_LCDIF),
+};
+
+static struct busfreq_plat_opp imx8mm_opps[] = {
+	DEFINE_OPP_NO_NODES(imx8mm_low_freq_clks, false),
+	DEFINE_OPP(imx8mm_audio_freq_clks, imx8mm_audio_freq_nodes, false),
+	DEFINE_OPP(imx8mm_high_freq_clks, imx8mm_high_freq_nodes, true),
+};
+
+static int imx8mm_busfreq_probe(struct platform_device *pdev)
+{
+	int ret;
+
+	ret = busfreq_register(pdev, imx8mm_icc_nodes,
+			       ARRAY_SIZE(imx8mm_icc_nodes),
+			       imx8mm_opps, ARRAY_SIZE(imx8mm_opps));
+	return ret;
+}
+
+static int imx8mm_busfreq_remove(struct platform_device *pdev)
+{
+	return busfreq_unregister(pdev);
+}
+
+static const struct of_device_id busfreq_of_match[] = {
+	{ .compatible = "fsl,imx8mm-interconnect" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, busfreq_of_match);
+
+static struct platform_driver imx8mm_busfreq_driver = {
+	.probe = imx8mm_busfreq_probe,
+	.remove = imx8mm_busfreq_remove,
+	.driver = {
+		.name = "imx8mm-interconnect",
+		.of_match_table = busfreq_of_match,
+	},
+};
+
+builtin_platform_driver(imx8mm_busfreq_driver);
+MODULE_AUTHOR("Alexandre Bailon <abailon@baylibre.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/include/dt-bindings/interconnect/imx8mm.h b/include/dt-bindings/interconnect/imx8mm.h
new file mode 100644
index 000000000000..293a99cbc1af
--- /dev/null
+++ b/include/dt-bindings/interconnect/imx8mm.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Interconnect framework driver for i.MX SoC
+ *
+ * Copyright (c) 2019, BayLibre
+ * Author: Alexandre Bailon <abailon@baylibre.com>
+ */
+
+#ifndef __IMX8MM_ICM_INTERCONNECT_IDS_H
+#define __IMX8MM_ICM_INTERCONNECT_IDS_H
+
+#define IMX8MM_ICN_NOC		1
+#define IMX8MM_ICS_DRAM		2
+#define IMX8MM_ICS_OCRAM	3
+#define IMX8MM_ICM_A53		4
+
+#define IMX8MM_ICM_VPU_H1	5
+#define IMX8MM_ICM_VPU_G1	6
+#define IMX8MM_ICM_VPU_G2	7
+#define IMX8MM_ICN_VIDEO	8
+
+#define IMX8MM_ICM_GPU2D	9
+#define IMX8MM_ICM_GPU3D	10
+#define IMX8MM_ICN_GPU		11
+
+#define IMX8MM_ICM_CSI		12
+#define IMX8MM_ICM_LCDIF	13
+#define IMX8MM_ICN_MIPI		14
+
+#define IMX8MM_ICM_USB1		11
+#define IMX8MM_ICM_USB2		12
+#define IMX8MM_ICM_PCIE		13
+#define IMX8MM_ICN_HSIO		14
+
+#define IMX8MM_ICM_SDMA2	15
+#define IMX8MM_ICM_SDMA3	16
+#define IMX8MM_ICN_AUDIO	17
+
+#define IMX8MM_ICM_ENET		18
+#define IMX8MM_ICN_ENET		19
+
+#define IMX8MM_ICN_MAIN		20
+#define IMX8MM_ICM_NAND		21
+#define IMX8MM_ICM_SDMA1	22
+#define IMX8MM_ICM_USDHC1	23
+#define IMX8MM_ICM_USDHC2	24
+#define IMX8MM_ICM_USDHC3	25
+
+#endif /* __IMX8MM_ICM_INTERCONNECT_IDS_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
