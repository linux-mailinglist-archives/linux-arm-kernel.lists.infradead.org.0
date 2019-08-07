Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB95884648
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 09:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4egW5K0ix4ggd+kfHwCr3faPW15uVt52Xp4C+awaRo=; b=pYyF/NWkOpWZnD
	U16rqcM2ULUKeNhaqTBRlfXcmifXMkwNV6zPS7YenSCV6srY5qbs5oh9r6Jb4OG0kJfV0K9ItcAG3
	VH00iBs9eBbfjzgb5aLa7QO4UxkTKNTjdjezRW9STnhTHYEjGcG9mVVJsG/Jaqb2cNcwJzAagHluN
	E3RKYggki8qYQeNKgw/rGSXRyVWfiMPBvs88EZp3Dfj6qP6+5TRkEO6NCVXUjvDiR9nUI/asZUW02
	rHFiKyUQajOMo4UvS1lY7TerUPoDKq3KyVUwjUkuW0rpdUqrvsEBuVNBA3SGOPkCVW7eWlnyQ9DPm
	p4rsjkEwnL/+ZPhfEhHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGiH-0004hO-CZ; Wed, 07 Aug 2019 07:50:25 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGhR-0003al-KS
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 07:49:35 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x777nTvs026490;
 Wed, 7 Aug 2019 02:49:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565164169;
 bh=LLlI9QgqZvxHRCe0+bEdCU1oHYk2BhHjSLG9+Km2gc0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=XXpIr4TPTjrFWaPc7P9GiHwxFpchkO/Jffdzp2+l1gRl9Ko+W8zI0Xzg5fWiFUKW6
 /gASTq81yndGNXqc5jR6+9yUa/fctDb+Ra5X5SW2EHksOwgpgGvwlRwGoV77pcvDJe
 38oGDN5m7tROdddlnu2sEvbhToOg2oyvBKxAzrCw=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x777nTfa050698
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 7 Aug 2019 02:49:29 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 7 Aug
 2019 02:49:28 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 7 Aug 2019 02:49:28 -0500
Received: from gomoku.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x777nNHe118711;
 Wed, 7 Aug 2019 02:49:27 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 2/8] soc: ti: add initial PRM driver with reset control support
Date: Wed, 7 Aug 2019 10:48:53 +0300
Message-ID: <1565164139-21886-3-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_004933_754079_D0BFC903 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add initial PRM (Power and Reset Management) driver for TI OMAP class
SoCs. Initially this driver only supports reset control, but can be
extended to support rest of the functionality, like powerdomain
control, PRCM irq support etc.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/mach-omap2/Kconfig |   1 +
 drivers/soc/ti/Makefile     |   1 +
 drivers/soc/ti/omap_prm.c   | 216 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 218 insertions(+)
 create mode 100644 drivers/soc/ti/omap_prm.c

diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
index fdb6743..42ad063 100644
--- a/arch/arm/mach-omap2/Kconfig
+++ b/arch/arm/mach-omap2/Kconfig
@@ -109,6 +109,7 @@ config ARCH_OMAP2PLUS
 	select TI_SYSC
 	select OMAP_IRQCHIP
 	select CLKSRC_TI_32K
+	select RESET_CONTROLLER
 	help
 	  Systems based on OMAP2, OMAP3, OMAP4 or OMAP5
 
diff --git a/drivers/soc/ti/Makefile b/drivers/soc/ti/Makefile
index b3868d3..788b5cd 100644
--- a/drivers/soc/ti/Makefile
+++ b/drivers/soc/ti/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_KEYSTONE_NAVIGATOR_QMSS)	+= knav_qmss.o
 knav_qmss-y := knav_qmss_queue.o knav_qmss_acc.o
 obj-$(CONFIG_KEYSTONE_NAVIGATOR_DMA)	+= knav_dma.o
 obj-$(CONFIG_AMX3_PM)			+= pm33xx.o
+obj-$(CONFIG_ARCH_OMAP2PLUS)		+= omap_prm.o
 obj-$(CONFIG_WKUP_M3_IPC)		+= wkup_m3_ipc.o
 obj-$(CONFIG_TI_SCI_PM_DOMAINS)		+= ti_sci_pm_domains.o
 obj-$(CONFIG_TI_SCI_INTA_MSI_DOMAIN)	+= ti_sci_inta_msi.o
diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
new file mode 100644
index 0000000..7c89eb8
--- /dev/null
+++ b/drivers/soc/ti/omap_prm.c
@@ -0,0 +1,216 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * OMAP2+ PRM driver
+ *
+ * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
+ *	Tero Kristo <t-kristo@ti.com>
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/reset-controller.h>
+#include <linux/delay.h>
+
+struct omap_rst_map {
+	s8 rst;
+	s8 st;
+};
+
+struct omap_prm_data {
+	u32 base;
+	const char *name;
+	u16 pwstctrl;
+	u16 pwstst;
+	u16 rstctl;
+	u16 rstst;
+	struct omap_rst_map *rstmap;
+	u8 flags;
+};
+
+struct omap_prm {
+	const struct omap_prm_data *data;
+	void __iomem *base;
+};
+
+struct omap_reset_data {
+	struct reset_controller_dev rcdev;
+	struct omap_prm *prm;
+};
+
+#define to_omap_reset_data(p) container_of((p), struct omap_reset_data, rcdev)
+
+#define OMAP_MAX_RESETS		8
+#define OMAP_RESET_MAX_WAIT	10000
+
+#define OMAP_PRM_NO_RSTST	BIT(0)
+
+static const struct of_device_id omap_prm_id_table[] = {
+	{ },
+};
+
+static int omap_reset_status(struct reset_controller_dev *rcdev,
+			     unsigned long id)
+{
+	struct omap_reset_data *reset = to_omap_reset_data(rcdev);
+	u32 v;
+
+	v = readl_relaxed(reset->prm->base + reset->prm->data->rstst);
+	v &= 1 << id;
+	v >>= id;
+
+	return v;
+}
+
+static int omap_reset_assert(struct reset_controller_dev *rcdev,
+			     unsigned long id)
+{
+	struct omap_reset_data *reset = to_omap_reset_data(rcdev);
+	u32 v;
+
+	/* assert the reset control line */
+	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctl);
+	v |= 1 << id;
+	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctl);
+
+	return 0;
+}
+
+static int omap_reset_get_st_bit(struct omap_reset_data *reset,
+				 unsigned long id)
+{
+	struct omap_rst_map *map = reset->prm->data->rstmap;
+
+	while (map && map->rst >= 0) {
+		if (map->rst == id)
+			return map->st;
+
+		map++;
+	}
+
+	return id;
+}
+
+/*
+ * Note that status will not change until clocks are on, and clocks cannot be
+ * enabled until reset is deasserted. Consumer drivers must check status
+ * separately after enabling clocks.
+ */
+static int omap_reset_deassert(struct reset_controller_dev *rcdev,
+			       unsigned long id)
+{
+	struct omap_reset_data *reset = to_omap_reset_data(rcdev);
+	u32 v;
+	int st_bit = id;
+	bool has_rstst;
+
+	/* check the current status to avoid de-asserting the line twice */
+	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctl);
+	if (!(v & BIT(id)))
+		return -EEXIST;
+
+	has_rstst = !(reset->prm->data->flags & OMAP_PRM_NO_RSTST);
+
+	if (has_rstst) {
+		st_bit = omap_reset_get_st_bit(reset, id);
+
+		/* Clear the reset status by writing 1 to the status bit */
+		v = readl_relaxed(reset->prm->base + reset->prm->data->rstst);
+		v |= 1 << st_bit;
+		writel_relaxed(v, reset->prm->base + reset->prm->data->rstst);
+	}
+
+	/* de-assert the reset control line */
+	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctl);
+	v &= ~(1 << id);
+	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctl);
+
+	return 0;
+}
+
+static const struct reset_control_ops omap_reset_ops = {
+	.assert		= omap_reset_assert,
+	.deassert	= omap_reset_deassert,
+	.status		= omap_reset_status,
+};
+
+static int omap_prm_reset_probe(struct platform_device *pdev,
+				struct omap_prm *prm)
+{
+	struct omap_reset_data *reset;
+
+	/*
+	 * Check if we have resets. If either rstctl or rstst is
+	 * non-zero, we have reset registers in place. Additionally
+	 * the flag OMAP_PRM_NO_RSTST implies that we have resets.
+	 */
+	if (!prm->data->rstctl && !prm->data->rstst &&
+	    !(prm->data->flags & OMAP_PRM_NO_RSTST))
+		return 0;
+
+	reset = devm_kzalloc(&pdev->dev, sizeof(*reset), GFP_KERNEL);
+	if (!reset)
+		return -ENOMEM;
+
+	reset->rcdev.owner = THIS_MODULE;
+	reset->rcdev.ops = &omap_reset_ops;
+	reset->rcdev.of_node = pdev->dev.of_node;
+	reset->rcdev.nr_resets = OMAP_MAX_RESETS;
+
+	reset->prm = prm;
+
+	return devm_reset_controller_register(&pdev->dev, &reset->rcdev);
+}
+
+static int omap_prm_probe(struct platform_device *pdev)
+{
+	struct resource *res;
+	const struct omap_prm_data *data;
+	struct omap_prm *prm;
+	const struct of_device_id *match;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -ENODEV;
+
+	match = of_match_device(omap_prm_id_table, &pdev->dev);
+	if (!match)
+		return -ENOTSUPP;
+
+	prm = devm_kzalloc(&pdev->dev, sizeof(*prm), GFP_KERNEL);
+	if (!prm)
+		return -ENOMEM;
+
+	data = match->data;
+
+	while (data->base != res->start) {
+		if (!data->base)
+			return -EINVAL;
+		data++;
+	}
+
+	prm->data = data;
+
+	prm->base = devm_ioremap_resource(&pdev->dev, res);
+	if (!prm->base)
+		return -ENOMEM;
+
+	return omap_prm_reset_probe(pdev, prm);
+}
+
+static struct platform_driver omap_prm_driver = {
+	.probe = omap_prm_probe,
+	.driver = {
+		.name		= KBUILD_MODNAME,
+		.of_match_table	= omap_prm_id_table,
+	},
+};
+builtin_platform_driver(omap_prm_driver);
+
+MODULE_ALIAS("platform:prm");
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("omap2+ prm driver");
-- 
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
