Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DBAE2D44
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 11:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=41SFw8Rh/xjaGq29ml6PbMLyFLmaQVMfqVPk+XEUjrk=; b=AF2/G928Tyf7v9geR0cSKQ8Dla
	L2mMF2DWYDhwPWJ2PDm6u3xjXqYlWYsAPo/rqys71Z7RVx6e0ziYbEtWfWpRgKHkiZLWIe6On45u+
	wMHNvbbiSBtHN7m20YVjv5g9EKVjUVB8aoFViAWRacD856WIHcUg9p2pfYd1VIBnMw2mq2mmqz/n7
	2Zuxl2W/YqE8ia/DH6Kke4c1suTQjR+0wr0Zrnosud7SkXxyXr1CxC2rMbV7qQB/CcpgXKZOQXYjs
	XDD20vpnm+e7x/Ahvy84Fe1mAOCncZkb6SAiFPzU26iIOqej3WUuqV/uOxqVF0pEaFiG119ceaXRp
	jHYo9Nlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZOn-0004te-Hk; Thu, 24 Oct 2019 09:27:17 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZOI-0004cj-DZ
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 09:26:48 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 386F5200869;
 Thu, 24 Oct 2019 11:26:45 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8BFFB20087C;
 Thu, 24 Oct 2019 11:26:38 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 45639402D3;
 Thu, 24 Oct 2019 17:26:30 +0800 (SGT)
From: Ran Wang <ran.wang_1@nxp.com>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Rob Herring <robh+dt@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Pavel Machek <pavel@ucw.cz>, Huang Anson <anson.huang@nxp.com>
Subject: [PATCH v10 3/3] soc: fsl: add RCPM driver
Date: Thu, 24 Oct 2019 17:26:44 +0800
Message-Id: <20191024092644.26583-3-ran.wang_1@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024092644.26583-1-ran.wang_1@nxp.com>
References: <20191024092644.26583-1-ran.wang_1@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_022646_736312_104BF0AA 
X-CRM114-Status: GOOD (  23.03  )
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
Cc: Li Biwen <biwen.li@nxp.com>, Len Brown <len.brown@intel.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ran Wang <ran.wang_1@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The NXP's QorIQ processors based on ARM Core have RCPM module
(Run Control and Power Management), which performs system level
tasks associated with power management such as wakeup source control.

Note that this driver will not support PowerPC based QorIQ processors,
and it depends on PM wakeup source framework which provide collect
wake information.

Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---
Change in v10:
	- Add 'Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>'
	  to commit message.
	- Supplement commit message to clarify that this RCPM driver is for
	  Arm based QorIQ processors only, will not support PowerPC based
	  QorIQ.
	- Add ARM dependency for 'config FSL_RCPM'
	- Remove 'pr_debug("%s doesn't refer to this rcpm\n", ws->name);'
	- Move IPPDEXPCRn accessing out of for_each_wakeup_source(ws) loop,
	  do it once.

Change in v9:
	- Add kerneldoc for rcpm_pm_prepare().
	- Use pr_debug() to replace dev_info(), to print message when decide
	  skip current wakeup object, this is mainly for debugging (in order
	  to detect potential improper implementation on device tree which
	  might cause this skip).
	- Refactor looping implementation in rcpm_pm_prepare(), add more
	  comments to help clarify.

Change in v8:
	- Adjust related API usage to meet wakeup.c's update in patch 1/3.
	- Add sanity checking for the case of ws->dev or ws->dev->parent
	  is null.

Change in v7:
	- Replace 'ws->dev' with 'ws->dev->parent' to get aligned with
	c8377adfa781 ("PM / wakeup: Show wakeup sources stats in sysfs")
	- Remove '+obj-y += ftm_alarm.o' since it is wrong.
	- Cosmetic work.

Change in v6:
	- Adjust related API usage to meet wakeup.c's update in patch 1/3.

Change in v5:
	- Fix v4 regression of the return value of wakeup_source_get_next()
	didn't pass to ws in while loop.
	- Rename wakeup_source member 'attached_dev' to 'dev'.
	- Rename property 'fsl,#rcpm-wakeup-cells' to '#fsl,rcpm-wakeup-cells'.
	please see https://lore.kernel.org/patchwork/patch/1101022/

Change in v4:
	- Remove extra ',' in author line of rcpm.c
	- Update usage of wakeup_source_get_next() to be less confusing to the
reader, code logic remain the same.

Change in v3:
	- Some whitespace ajdustment.

Change in v2:
	- Rebase Kconfig and Makefile update to latest mainline.

 drivers/soc/fsl/Kconfig  |  10 ++++
 drivers/soc/fsl/Makefile |   1 +
 drivers/soc/fsl/rcpm.c   | 151 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 162 insertions(+)
 create mode 100644 drivers/soc/fsl/rcpm.c

diff --git a/drivers/soc/fsl/Kconfig b/drivers/soc/fsl/Kconfig
index f9ad8ad..4df32bc 100644
--- a/drivers/soc/fsl/Kconfig
+++ b/drivers/soc/fsl/Kconfig
@@ -40,4 +40,14 @@ config DPAA2_CONSOLE
 	  /dev/dpaa2_mc_console and /dev/dpaa2_aiop_console,
 	  which can be used to dump the Management Complex and AIOP
 	  firmware logs.
+
+config FSL_RCPM
+	bool "Freescale RCPM support"
+	depends on PM_SLEEP && (ARM || ARM64)
+	help
+	  The NXP QorIQ Processors based on ARM Core have RCPM module
+	  (Run Control and Power Management), which performs all device-level
+	  tasks associated with power management, such as wakeup source control.
+	  Note that currently this driver will not support PowerPC based
+	  QorIQ processor.
 endmenu
diff --git a/drivers/soc/fsl/Makefile b/drivers/soc/fsl/Makefile
index 71dee8d..906f1cd 100644
--- a/drivers/soc/fsl/Makefile
+++ b/drivers/soc/fsl/Makefile
@@ -6,6 +6,7 @@
 obj-$(CONFIG_FSL_DPAA)                 += qbman/
 obj-$(CONFIG_QUICC_ENGINE)		+= qe/
 obj-$(CONFIG_CPM)			+= qe/
+obj-$(CONFIG_FSL_RCPM)			+= rcpm.o
 obj-$(CONFIG_FSL_GUTS)			+= guts.o
 obj-$(CONFIG_FSL_MC_DPIO) 		+= dpio/
 obj-$(CONFIG_DPAA2_CONSOLE)		+= dpaa2-console.o
diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c
new file mode 100644
index 0000000..a093dbe
--- /dev/null
+++ b/drivers/soc/fsl/rcpm.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// rcpm.c - Freescale QorIQ RCPM driver
+//
+// Copyright 2019 NXP
+//
+// Author: Ran Wang <ran.wang_1@nxp.com>
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
+	unsigned int	wakeup_cells;
+	void __iomem	*ippdexpcr_base;
+	bool		little_endian;
+};
+
+/**
+ * rcpm_pm_prepare - performs device-level tasks associated with power
+ * management, such as programming related to the wakeup source control.
+ * @dev: Device to handle.
+ *
+ */
+static int rcpm_pm_prepare(struct device *dev)
+{
+	int i, ret, idx;
+	void __iomem *base;
+	struct wakeup_source	*ws;
+	struct rcpm		*rcpm;
+	struct device_node	*np = dev->of_node;
+	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
+	u32 setting[RCPM_WAKEUP_CELL_MAX_SIZE] = {0};
+
+	rcpm = dev_get_drvdata(dev);
+	if (!rcpm)
+		return -EINVAL;
+
+	base = rcpm->ippdexpcr_base;
+	idx = wakeup_sources_read_lock();
+
+	/* Begin with first registered wakeup source */
+	for_each_wakeup_source(ws) {
+
+		/* skip object which is not attached to device */
+		if (!ws->dev || !ws->dev->parent)
+			continue;
+
+		ret = device_property_read_u32_array(ws->dev->parent,
+				"fsl,rcpm-wakeup", value,
+				rcpm->wakeup_cells + 1);
+
+		/*  Wakeup source should refer to current rcpm device */
+		if (ret || (np->phandle != value[0]))
+			continue;
+
+		/* Property "#fsl,rcpm-wakeup-cells" of rcpm node defines the
+		 * number of IPPDEXPCR register cells, and "fsl,rcpm-wakeup"
+		 * of wakeup source IP contains an integer array: <phandle to
+		 * RCPM node, IPPDEXPCR0 setting, IPPDEXPCR1 setting,
+		 * IPPDEXPCR2 setting, etc>.
+		 *
+		 * So we will go thought them to collect setting data.
+		 */
+		for (i = 0; i < rcpm->wakeup_cells; i++)
+			setting[i] |= value[i + 1];
+	}
+
+	wakeup_sources_read_unlock(idx);
+
+	/* Program all IPPDEXPCRn once */
+	for (i = 0; i < rcpm->wakeup_cells; i++) {
+		u32 tmp = setting[i];
+		void __iomem *address = base + i * 4;
+
+		if (!tmp)
+			continue;
+
+		/* We can only OR related bits */
+		if (rcpm->little_endian) {
+			tmp |= ioread32(address);
+			iowrite32(tmp, address);
+		} else {
+			tmp |= ioread32be(address);
+			iowrite32be(tmp, address);
+		}
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
+	struct rcpm	*rcpm;
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
+			"#fsl,rcpm-wakeup-cells", &rcpm->wakeup_cells);
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
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
