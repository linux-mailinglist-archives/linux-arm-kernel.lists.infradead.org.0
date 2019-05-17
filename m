Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDF221241
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 04:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4i+9qdV+zkUdsaGbQfzA5JJHWfdLwIAJOYh7Cc61kQI=; b=SscLsnJy7DWygOOSHHBxH7Xs1G
	FCRJaZ0P4o6he+Uy7n3TdI/n3jwy0/KWqr6DP9vnxP0xjWrRqZAqb/ZR+SoTC3lfxts0ulPX9+mO9
	tzaPc4CesTnivgrzVmok2jNNcGGre+uguIvWVpcjtP/DqkbhQJBl8LXlYlXv1JGjPF4cxb3xark8v
	mphBxas6U8ZnPOdEH7AFoH02SrDZrY/sEgv//KKXZlZc0YRWPn8z5/rLqhVf6nuH2ZitTnX2lootL
	NyPtlTFCXc/MXb7ZFNHQd0VIxYMa0y5qJMw8LtYzLGwJJwFNvhFAchEjwSQrzdliPUqwMZfRzjBtL
	xqB4Xuiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRStl-0005Wv-9Z; Fri, 17 May 2019 02:47:05 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRStG-00052Q-5Y
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 02:46:35 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A996200268;
 Fri, 17 May 2019 04:46:31 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6B82C200037;
 Fri, 17 May 2019 04:46:25 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9147A4030D;
 Fri, 17 May 2019 10:46:18 +0800 (SGT)
From: Ran Wang <ran.wang_1@nxp.com>
To: Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/3] soc: fsl: add RCPM driver
Date: Fri, 17 May 2019 10:47:48 +0800
Message-Id: <20190517024748.15534-3-ran.wang_1@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517024748.15534-1-ran.wang_1@nxp.com>
References: <20190517024748.15534-1-ran.wang_1@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_194634_487164_A3C42E62 
X-CRM114-Status: GOOD (  16.24  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Len Brown <len.brown@intel.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Pavel Machek <pavel@ucw.cz>, Ran Wang <ran.wang_1@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The NXP's QorIQ Processors based on ARM Core have RCPM module
(Run Control and Power Management), which performs all device-level
tasks associated with power management such as wakeup source control.

This driver depends on PM wakeup source framework which help to
collect wake information.

Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
---
 drivers/soc/fsl/Kconfig  |    8 +++
 drivers/soc/fsl/Makefile |    1 +
 drivers/soc/fsl/rcpm.c   |  124 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 133 insertions(+), 0 deletions(-)
 create mode 100644 drivers/soc/fsl/rcpm.c

diff --git a/drivers/soc/fsl/Kconfig b/drivers/soc/fsl/Kconfig
index 3b85e18..a25e05b 100644
--- a/drivers/soc/fsl/Kconfig
+++ b/drivers/soc/fsl/Kconfig
@@ -50,4 +50,12 @@ config FSL_SLEEP_FSM
 if ARM || ARM64
 source "drivers/soc/fsl/Kconfig.arm"
 endif
+
+config FSL_RCPM
+	bool "Freescale RCPM support"
+	depends on PM_SLEEP
+	help
+	  The NXP's QorIQ Processors based on ARM Core have RCPM module
+	  (Run Control and Power Management), which performs all device-level
+	  tasks associated with power management, such as wakeup source control.
 endmenu
diff --git a/drivers/soc/fsl/Makefile b/drivers/soc/fsl/Makefile
index db7b09b..aab9f9b 100644
--- a/drivers/soc/fsl/Makefile
+++ b/drivers/soc/fsl/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_FSL_MC_DPIO) 		+= dpio/
 obj-$(CONFIG_FSL_LS2_CONSOLE)		+= ls2-console/
 obj-$(CONFIG_LS_SOC_DRIVERS)		+= layerscape/
 obj-$(CONFIG_FSL_SLEEP_FSM)	+= sleep_fsm.o
+obj-$(CONFIG_FSL_RCPM)		+= rcpm.o
diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c
new file mode 100644
index 0000000..b817319
--- /dev/null
+++ b/drivers/soc/fsl/rcpm.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// rcpm.c - Freescale QorIQ RCPM driver
+//
+// Copyright 2019 NXP
+//
+// Author: Ran Wang <ran.wang_1@nxp.com>,
+
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/of_address.h>
+#include <linux/slab.h>
+#include <linux/suspend.h>
+#include <linux/kernel.h>
+
+#define RCPM_WAKEUP_CELL_MAX_SIZE	7
+
+struct rcpm {
+	unsigned int wakeup_cells;
+	void __iomem *ippdexpcr_base;
+	bool	little_endian;
+};
+
+static int rcpm_pm_prepare(struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct wakeup_source *ws;
+	struct rcpm *rcpm;
+	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
+	int i, ret;
+
+	rcpm = dev_get_drvdata(dev);
+	if (!rcpm)
+		return -EINVAL;
+
+	/* Begin with first registered wakeup source */
+	ws = wakeup_source_get_next(NULL);
+	while (ws) {
+		ret = device_property_read_u32_array(ws->attached_dev,
+				"fsl,rcpm-wakeup", value, rcpm->wakeup_cells + 1);
+
+		/*  Wakeup source should refer to current rcpm device */
+		if (ret || (np->phandle != value[0])) {
+			dev_info(dev, "%s doesn't refer to this rcpm\n",
+					ws->name);
+			ws = wakeup_source_get_next(ws);
+			continue;
+		}
+
+		for (i = 0; i < rcpm->wakeup_cells; i++) {
+			/* We can only OR related bits */
+			if (value[i + 1]) {
+				if (rcpm->little_endian) {
+					tmp = ioread32(rcpm->ippdexpcr_base + i * 4);
+					tmp |= value[i + 1];
+					iowrite32(tmp, rcpm->ippdexpcr_base + i * 4);
+				} else {
+					tmp = ioread32be(rcpm->ippdexpcr_base + i * 4);
+					tmp |= value[i + 1];
+					iowrite32be(tmp, rcpm->ippdexpcr_base + i * 4);
+				}
+			}
+		}
+		ws = wakeup_source_get_next(ws);
+	}
+
+	return 0;
+}
+
+static const struct dev_pm_ops rcpm_pm_ops = {
+	.prepare =  rcpm_pm_prepare,
+};
+
+static int rcpm_probe(struct platform_device *pdev)
+{
+	struct device	*dev = &pdev->dev;
+	struct resource *r;
+	struct rcpm		*rcpm;
+	int ret;
+
+	rcpm = devm_kzalloc(dev, sizeof(*rcpm), GFP_KERNEL);
+	if (!rcpm)
+		return -ENOMEM;
+
+	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!r)
+		return -ENODEV;
+
+	rcpm->ippdexpcr_base = devm_ioremap_resource(&pdev->dev, r);
+	if (IS_ERR(rcpm->ippdexpcr_base)) {
+		ret =  PTR_ERR(rcpm->ippdexpcr_base);
+		return ret;
+	}
+
+	rcpm->little_endian = device_property_read_bool(
+			&pdev->dev, "little-endian");
+
+	ret = device_property_read_u32(&pdev->dev,
+			"fsl,#rcpm-wakeup-cells", &rcpm->wakeup_cells);
+	if (ret)
+		return ret;
+
+	dev_set_drvdata(&pdev->dev, rcpm);
+
+	return 0;
+}
+
+static const struct of_device_id rcpm_of_match[] = {
+	{ .compatible = "fsl,qoriq-rcpm-2.1+", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, rcpm_of_match);
+
+static struct platform_driver rcpm_driver = {
+	.driver = {
+		.name = "rcpm",
+		.of_match_table = rcpm_of_match,
+		.pm	= &rcpm_pm_ops,
+	},
+	.probe = rcpm_probe,
+};
+
+module_platform_driver(rcpm_driver);
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
