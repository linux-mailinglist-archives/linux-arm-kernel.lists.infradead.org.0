Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5ADFCF59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 21:12:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RSolQ94z82XdRlHBtHNIt/VCRMAruc1Qgtdb7PdMYEg=; b=RG2SDz1pJap5uU1ZCeYe3NEYRt
	1relPQ/HhxJLw53idMA5/3ZhUSJvOtaRcU1x4KikyyGt0veLuXzMVz3sE5z9L0ES05pijo3wrx98g
	DQ7EFBvTbxGPh5DY667p1JbN4cmTFNxRjjBc2+f14IB66C/ZWWHGXvICxlX0VcvxfG/yHzRarpiI2
	/25UAQaX5+JPtnyCi9VOumrBKEfV014/42jsbntXvTHtJluWtk0KMBA/qDcMmXNfa9TxlfaCBnVGJ
	IRVjUBrif2AgjKhZvHLm0s7qh/Yxqf62S2E8DIjxXXjfS9tI1olVMR1FzJasI9BHzFzVZf8jpDKzj
	N1p8BWXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVLTv-0001Ng-B2; Thu, 14 Nov 2019 20:12:43 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVLS4-0008OF-98
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 20:10:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 12E452000DE;
 Thu, 14 Nov 2019 21:10:47 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EDBA02001E7;
 Thu, 14 Nov 2019 21:10:46 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D7770205D5;
 Thu, 14 Nov 2019 21:10:45 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH RFC v6 6/9] interconnect: imx: Add platform driver for imx8mq
Date: Thu, 14 Nov 2019 22:09:53 +0200
Message-Id: <0b063e0805c869e9b394f5e59e62c807760b85df.1573761527.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573761527.git.leonard.crestez@nxp.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573761527.git.leonard.crestez@nxp.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_121048_600276_4A336C85 
X-CRM114-Status: GOOD (  13.08  )
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
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a platform driver for the i.MX8MQ SoC describing bus topology,
based on internal documentation.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/interconnect/imx/Kconfig          |   4 +
 drivers/interconnect/imx/Makefile         |   1 +
 drivers/interconnect/imx/imx8mq.c         | 103 ++++++++++++++++++++++
 include/dt-bindings/interconnect/imx8mq.h |  48 ++++++++++
 4 files changed, 156 insertions(+)
 create mode 100644 drivers/interconnect/imx/imx8mq.c
 create mode 100644 include/dt-bindings/interconnect/imx8mq.h

diff --git a/drivers/interconnect/imx/Kconfig b/drivers/interconnect/imx/Kconfig
index 15671fe7f600..e0d36355eeb8 100644
--- a/drivers/interconnect/imx/Kconfig
+++ b/drivers/interconnect/imx/Kconfig
@@ -5,5 +5,9 @@ config INTERCONNECT_IMX
 	  Generic interconnect driver for i.MX SOCs
 
 config INTERCONNECT_IMX8MM
 	def_bool y
 	depends on INTERCONNECT_IMX
+
+config INTERCONNECT_IMX8MQ
+	def_bool y
+	depends on INTERCONNECT_IMX
diff --git a/drivers/interconnect/imx/Makefile b/drivers/interconnect/imx/Makefile
index 5f658c1608a6..8c5d6f9e47f5 100644
--- a/drivers/interconnect/imx/Makefile
+++ b/drivers/interconnect/imx/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_INTERCONNECT_IMX) += imx.o
 obj-$(CONFIG_INTERCONNECT_IMX8MM) += imx8mm.o
+obj-$(CONFIG_INTERCONNECT_IMX8MQ) += imx8mq.o
diff --git a/drivers/interconnect/imx/imx8mq.c b/drivers/interconnect/imx/imx8mq.c
new file mode 100644
index 000000000000..1dccb05b6336
--- /dev/null
+++ b/drivers/interconnect/imx/imx8mq.c
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Interconnect framework driver for i.MX SoC
+ *
+ * Copyright (c) 2019, NXP
+ */
+
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+
+#include <dt-bindings/interconnect/imx8mq.h>
+
+#include "imx.h"
+
+static const struct imx_icc_node_adj_desc imx8mq_dram_adj = {
+	.bw_mul = 1,
+	.bw_div = 4,
+};
+
+static const struct imx_icc_node_adj_desc imx8mq_noc_adj = {
+	.bw_mul = 1,
+	.bw_div = 4,
+};
+
+/*
+ * Describe bus masters, slaves and connections between them
+ *
+ * This is a simplified subset of the bus diagram, there are several other
+ * PL301 nics which are skipped/merged into PL301_MAIN
+ */
+static struct imx_icc_node_desc nodes[] = {
+	DEFINE_BUS_INTERCONNECT("NOC", IMX8MQ_ICN_NOC, &imx8mq_noc_adj,
+			IMX8MQ_ICS_DRAM, IMX8MQ_ICN_MAIN),
+
+	DEFINE_BUS_SLAVE("DRAM", IMX8MQ_ICS_DRAM, &imx8mq_dram_adj),
+	DEFINE_BUS_SLAVE("OCRAM", IMX8MQ_ICS_OCRAM, NULL),
+	DEFINE_BUS_MASTER("A53", IMX8MQ_ICM_A53, IMX8MQ_ICN_NOC),
+
+	/* VPUMIX */
+	DEFINE_BUS_MASTER("VPU", IMX8MQ_ICM_VPU, IMX8MQ_ICN_VIDEO),
+	DEFINE_BUS_INTERCONNECT("PL301_VIDEO", IMX8MQ_ICN_VIDEO, NULL, IMX8MQ_ICN_NOC),
+
+	/* GPUMIX */
+	DEFINE_BUS_MASTER("GPU", IMX8MQ_ICM_GPU, IMX8MQ_ICN_GPU),
+	DEFINE_BUS_INTERCONNECT("PL301_GPU", IMX8MQ_ICN_GPU, NULL, IMX8MQ_ICN_NOC),
+
+	/* DISPMIX (only for DCSS) */
+	DEFINE_BUS_MASTER("DC", IMX8MQ_ICM_DCSS, IMX8MQ_ICN_DCSS),
+	DEFINE_BUS_INTERCONNECT("PL301_DC", IMX8MQ_ICN_DCSS, NULL, IMX8MQ_ICN_NOC),
+
+	/* USBMIX */
+	DEFINE_BUS_MASTER("USB1", IMX8MQ_ICM_USB1, IMX8MQ_ICN_USB),
+	DEFINE_BUS_MASTER("USB2", IMX8MQ_ICM_USB2, IMX8MQ_ICN_USB),
+	DEFINE_BUS_INTERCONNECT("PL301_USB", IMX8MQ_ICN_USB, NULL, IMX8MQ_ICN_NOC),
+
+	/* PL301_DISPLAY (IPs other than DCSS, inside SUPERMIX) */
+	DEFINE_BUS_MASTER("CSI1", IMX8MQ_ICM_CSI1, IMX8MQ_ICN_DISPLAY),
+	DEFINE_BUS_MASTER("CSI2", IMX8MQ_ICM_CSI2, IMX8MQ_ICN_DISPLAY),
+	DEFINE_BUS_MASTER("LCDIF", IMX8MQ_ICM_LCDIF, IMX8MQ_ICN_DISPLAY),
+	DEFINE_BUS_INTERCONNECT("PL301_DISPLAY", IMX8MQ_ICN_DISPLAY, NULL, IMX8MQ_ICN_MAIN),
+
+	/* AUDIO */
+	DEFINE_BUS_MASTER("SDMA2", IMX8MQ_ICM_SDMA2, IMX8MQ_ICN_AUDIO),
+	DEFINE_BUS_INTERCONNECT("PL301_AUDIO", IMX8MQ_ICN_AUDIO, NULL, IMX8MQ_ICN_DISPLAY),
+
+	/* ENET */
+	DEFINE_BUS_MASTER("ENET", IMX8MQ_ICM_ENET, IMX8MQ_ICN_ENET),
+	DEFINE_BUS_INTERCONNECT("PL301_ENET", IMX8MQ_ICN_ENET, NULL, IMX8MQ_ICN_MAIN),
+
+	/* OTHER */
+	DEFINE_BUS_MASTER("SDMA1", IMX8MQ_ICM_SDMA1, IMX8MQ_ICN_MAIN),
+	DEFINE_BUS_MASTER("NAND", IMX8MQ_ICM_NAND, IMX8MQ_ICN_MAIN),
+	DEFINE_BUS_MASTER("USDHC1", IMX8MQ_ICM_USDHC1, IMX8MQ_ICN_MAIN),
+	DEFINE_BUS_MASTER("USDHC2", IMX8MQ_ICM_USDHC2, IMX8MQ_ICN_MAIN),
+	DEFINE_BUS_MASTER("PCIE1", IMX8MQ_ICM_PCIE1, IMX8MQ_ICN_MAIN),
+	DEFINE_BUS_MASTER("PCIE2", IMX8MQ_ICM_PCIE2, IMX8MQ_ICN_MAIN),
+	DEFINE_BUS_INTERCONNECT("PL301_MAIN", IMX8MQ_ICN_MAIN, NULL,
+			IMX8MQ_ICN_NOC, IMX8MQ_ICS_OCRAM),
+};
+
+static int imx8mq_icc_probe(struct platform_device *pdev)
+{
+	return imx_icc_register(pdev, nodes, ARRAY_SIZE(nodes));
+}
+
+static int imx8mq_icc_remove(struct platform_device *pdev)
+{
+	return imx_icc_unregister(pdev);
+}
+
+static struct platform_driver imx8mq_icc_driver = {
+	.probe = imx8mq_icc_probe,
+	.remove = imx8mq_icc_remove,
+	.driver = {
+		.name = "imx8mq-interconnect",
+	},
+};
+
+module_platform_driver(imx8mq_icc_driver);
+MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/include/dt-bindings/interconnect/imx8mq.h b/include/dt-bindings/interconnect/imx8mq.h
new file mode 100644
index 000000000000..94701b19f35a
--- /dev/null
+++ b/include/dt-bindings/interconnect/imx8mq.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Interconnect framework driver for i.MX SoC
+ *
+ * Copyright (c) 2019, NXP
+ */
+
+#ifndef __IMX8MQ_ICM_INTERCONNECT_IDS_H
+#define __IMX8MQ_ICM_INTERCONNECT_IDS_H
+
+#define IMX8MQ_ICN_NOC		1
+#define IMX8MQ_ICS_DRAM		2
+#define IMX8MQ_ICS_OCRAM	3
+#define IMX8MQ_ICM_A53		4
+
+#define IMX8MQ_ICM_VPU		5
+#define IMX8MQ_ICN_VIDEO	6
+
+#define IMX8MQ_ICM_GPU		7
+#define IMX8MQ_ICN_GPU		8
+
+#define IMX8MQ_ICM_DCSS		9
+#define IMX8MQ_ICN_DCSS		10
+
+#define IMX8MQ_ICM_USB1		11
+#define IMX8MQ_ICM_USB2		12
+#define IMX8MQ_ICN_USB		13
+
+#define IMX8MQ_ICM_CSI1		14
+#define IMX8MQ_ICM_CSI2		15
+#define IMX8MQ_ICM_LCDIF	16
+#define IMX8MQ_ICN_DISPLAY	17
+
+#define IMX8MQ_ICM_SDMA2	18
+#define IMX8MQ_ICN_AUDIO	19
+
+#define IMX8MQ_ICN_ENET		20
+#define IMX8MQ_ICM_ENET		21
+
+#define IMX8MQ_ICM_SDMA1	22
+#define IMX8MQ_ICM_NAND		23
+#define IMX8MQ_ICM_USDHC1	24
+#define IMX8MQ_ICM_USDHC2	25
+#define IMX8MQ_ICM_PCIE1	26
+#define IMX8MQ_ICM_PCIE2	27
+#define IMX8MQ_ICN_MAIN		28
+
+#endif /* __IMX8MQ_ICM_INTERCONNECT_IDS_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
