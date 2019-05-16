Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E8220243
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ph+WtuqGvo4MPrVzTDAZwo0w1xyDGtWc9YazD8aWWlc=; b=VXH5qoxiMw1cxi
	yITMcQxD2XJ8RvJXGeSRXVFwpEy3Y9poLFBw8DHwkyG2GEDxQNJHkykj1OgzV0CA4xq9fQREUUmyC
	penbGZuP6Zo3tZOoBz8/KbM9L38t0+nrpEwQPSGT6AOARZu9f7dwENQ5QmAGXF74PJLQOUKQQ4i1b
	roQuo0Tv/Xtu2JywuiRnRX5y3Zpe9ZYE78DLqKSAu49f07rvUer9RYAanhSXD3hWIZglb7AZGsgIy
	ZcHgxVYdCIHJqLsvzhTx66FN3apd3djomAUkZxkusl4k6V7DMN7BOcoL8IZLOrUiNnSnMFqNsxGYF
	RUwDoBVLG4MKSneXw3Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCOt-0001tO-9B; Thu, 16 May 2019 09:10:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCO1-0000xD-3E; Thu, 16 May 2019 09:09:26 +0000
X-UUID: 230a1cc2fcd94d7e9dd63a697e255d68-20190516
X-UUID: 230a1cc2fcd94d7e9dd63a697e255d68-20190516
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1855848502; Thu, 16 May 2019 01:09:01 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 02:09:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 17:08:51 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 17:08:51 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [PATCH 5/8] devfreq: add mediatek cci devfreq
Date: Thu, 16 May 2019 17:08:42 +0800
Message-ID: <1557997725-12178-6-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E9902185452695BACCA4D4D68D1EFBD67C3393E7917808A8569C0D5776023BF92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_020913_819922_3DE63B8D 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, fan.chen@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>

This adds a devfreq driver for the Cache Coherent Interconnect (CCI)
of the Mediatek MT8183.

On the MT8183 the CCI is supplied by the same regulator as the LITTLE
cores. The driver is notified when the regulator voltage changes
(driven by cpufreq) and adjusts the CCI frequency to the maximum
possible value.

Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
 drivers/devfreq/Kconfig              |  10 ++
 drivers/devfreq/Makefile             |   1 +
 drivers/devfreq/mt8183-cci-devfreq.c | 247 +++++++++++++++++++++++++++++++++++
 3 files changed, 258 insertions(+)
 create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c

diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
index 6a172d338f6d..da2f8ec18369 100644
--- a/drivers/devfreq/Kconfig
+++ b/drivers/devfreq/Kconfig
@@ -91,6 +91,16 @@ config ARM_EXYNOS_BUS_DEVFREQ
 	  and adjusts the operating frequencies and voltages with OPP support.
 	  This does not yet operate with optimal voltages.
 
+config ARM_MT8183_CCI_DEVFREQ
+	tristate "MT8183 CCI DEVFREQ Driver"
+	depends on ARM_MEDIATEK_CPUFREQ
+	help
+		This adds a devfreq driver for Cache Coherent Interconnect
+		of Mediatek MT8183, which is shared the same regulator
+		with cpu cluster.
+		It can track buck voltage and update a proper cci frequency.
+		Use notification to get regulator status.
+
 config ARM_TEGRA_DEVFREQ
 	tristate "Tegra DEVFREQ Driver"
 	depends on ARCH_TEGRA_124_SOC
diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
index 32b8d4d3f12c..817dde779f16 100644
--- a/drivers/devfreq/Makefile
+++ b/drivers/devfreq/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
 
 # DEVFREQ Drivers
 obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
+obj-$(CONFIG_ARM_MT8183_CCI_DEVFREQ)    += mt8183-cci-devfreq.o
 obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
 obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra-devfreq.o
 
diff --git a/drivers/devfreq/mt8183-cci-devfreq.c b/drivers/devfreq/mt8183-cci-devfreq.c
new file mode 100644
index 000000000000..818a167c442f
--- /dev/null
+++ b/drivers/devfreq/mt8183-cci-devfreq.c
@@ -0,0 +1,247 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+
+ * Author: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/devfreq.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/consumer.h>
+
+#include "governor.h"
+
+struct cci_devfreq {
+	struct devfreq *devfreq;
+	struct regulator *proc_reg;
+	unsigned long proc_reg_uV;
+	struct clk *cci_clk;
+	struct notifier_block nb;
+};
+
+static int cci_devfreq_regulator_notifier(struct notifier_block *nb,
+					  unsigned long val, void *data)
+{
+	int ret;
+	struct cci_devfreq *cci_df =
+		container_of(nb, struct cci_devfreq, nb);
+
+	/* deal with reduce frequency */
+	if (val & REGULATOR_EVENT_PRE_VOLTAGE_CHANGE) {
+		struct pre_voltage_change_data *pvc_data = data;
+
+		if (pvc_data->min_uV < pvc_data->old_uV) {
+			cci_df->proc_reg_uV =
+				(unsigned long)(pvc_data->min_uV);
+			mutex_lock(&cci_df->devfreq->lock);
+			ret = update_devfreq(cci_df->devfreq);
+			if (ret)
+				pr_err("Fail to reduce cci frequency: %d\n",
+				       ret);
+			mutex_unlock(&cci_df->devfreq->lock);
+		}
+	} else if ((val & REGULATOR_EVENT_ABORT_VOLTAGE_CHANGE) &&
+	    ((unsigned long)data > cci_df->proc_reg_uV)) {
+		cci_df->proc_reg_uV = (unsigned long)data;
+		mutex_lock(&cci_df->devfreq->lock);
+		ret = update_devfreq(cci_df->devfreq);
+		if (ret)
+			pr_err("Fail to raise cci frequency back: %d\n", ret);
+		mutex_unlock(&cci_df->devfreq->lock);
+	} else if ((val & REGULATOR_EVENT_VOLTAGE_CHANGE) &&
+	    (cci_df->proc_reg_uV < (unsigned long)data)) {
+		/* deal with increase frequency */
+		cci_df->proc_reg_uV = (unsigned long)data;
+		mutex_lock(&cci_df->devfreq->lock);
+		ret = update_devfreq(cci_df->devfreq);
+		if (ret)
+			pr_err("Fail to raise cci frequency: %d\n", ret);
+		mutex_unlock(&cci_df->devfreq->lock);
+	}
+
+	return 0;
+}
+
+static int mtk_cci_governor_get_target(struct devfreq *devfreq,
+				       unsigned long *freq)
+{
+	struct cci_devfreq *cci_df;
+	struct dev_pm_opp *opp;
+
+	cci_df = dev_get_drvdata(devfreq->dev.parent);
+
+	/* find available frequency */
+	opp = dev_pm_opp_find_freq_ceil_by_volt(devfreq->dev.parent,
+						cci_df->proc_reg_uV);
+	*freq = dev_pm_opp_get_freq(opp);
+
+	return 0;
+}
+
+static int mtk_cci_governor_event_handler(struct devfreq *devfreq,
+					  unsigned int event, void *data)
+{
+	int ret;
+	struct cci_devfreq *cci_df;
+	struct notifier_block *nb;
+
+	cci_df = dev_get_drvdata(devfreq->dev.parent);
+	nb = &cci_df->nb;
+
+	switch (event) {
+	case DEVFREQ_GOV_START:
+	case DEVFREQ_GOV_RESUME:
+		nb->notifier_call = cci_devfreq_regulator_notifier;
+		ret = regulator_register_notifier(cci_df->proc_reg,
+						  nb);
+		if (ret)
+			pr_err("%s: failed to add governor: %d\n", __func__,
+			       ret);
+		break;
+
+	case DEVFREQ_GOV_STOP:
+	case DEVFREQ_GOV_SUSPEND:
+		ret = regulator_unregister_notifier(cci_df->proc_reg,
+						    nb);
+		if (ret)
+			pr_err("%s: failed to add governor: %d\n", __func__,
+			       ret);
+		break;
+
+	default:
+		break;
+	}
+
+	return 0;
+}
+
+static struct devfreq_governor mtk_cci_devfreq_governor = {
+	.name = "mtk_cci_vmon",
+	.get_target_freq = mtk_cci_governor_get_target,
+	.event_handler = mtk_cci_governor_event_handler,
+	.immutable = true
+};
+
+static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
+				  u32 flags)
+{
+	int ret;
+	struct cci_devfreq *cci_df = dev_get_drvdata(dev);
+
+	if (!cci_df)
+		return -EINVAL;
+
+	ret = clk_set_rate(cci_df->cci_clk, *freq);
+	if (ret) {
+		pr_err("%s: failed cci to set rate: %d\n", __func__,
+		       ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static struct devfreq_dev_profile cci_devfreq_profile = {
+	.target = mtk_cci_devfreq_target,
+};
+
+static int mtk_cci_devfreq_probe(struct platform_device *pdev)
+{
+	struct device *cci_dev = &pdev->dev;
+	struct cci_devfreq *cci_df;
+	int ret;
+
+	cci_df = devm_kzalloc(cci_dev, sizeof(*cci_df), GFP_KERNEL);
+	if (!cci_df)
+		return -ENOMEM;
+
+	cci_df->cci_clk = devm_clk_get(cci_dev, "cci_clock");
+	ret = PTR_ERR_OR_ZERO(cci_df->cci_clk);
+	if (ret) {
+		if (ret != -EPROBE_DEFER)
+			dev_err(cci_dev, "failed to get clock for CCI: %d\n",
+				ret);
+		return ret;
+	}
+	cci_df->proc_reg = devm_regulator_get_optional(cci_dev, "proc");
+	ret = PTR_ERR_OR_ZERO(cci_df->proc_reg);
+	if (ret) {
+		if (ret != -EPROBE_DEFER)
+			dev_err(cci_dev, "failed to get regulator for CCI: %d\n",
+				ret);
+		return ret;
+	}
+
+	ret = dev_pm_opp_of_add_table(cci_dev);
+	if (ret) {
+		dev_err(cci_dev, "Fail to init CCI OPP table: %d\n", ret);
+		return ret;
+	}
+
+	platform_set_drvdata(pdev, cci_df);
+
+	cci_df->devfreq = devm_devfreq_add_device(cci_dev,
+						  &cci_devfreq_profile,
+						  "mtk_cci_vmon",
+						  NULL);
+	if (IS_ERR(cci_df->devfreq)) {
+		ret = PTR_ERR(cci_df->devfreq);
+		dev_err(cci_dev, "cannot create cci devfreq device:%d\n", ret);
+		dev_pm_opp_of_remove_table(cci_dev);
+		return ret;
+	}
+
+	return 0;
+}
+
+static const __maybe_unused struct of_device_id
+	mediatek_cci_devfreq_of_match[] = {
+	{ .compatible = "mediatek,mt8183-cci" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, mediatek_cci_devfreq_of_match);
+
+static struct platform_driver cci_devfreq_driver = {
+	.probe	= mtk_cci_devfreq_probe,
+	.driver = {
+		.name = "mediatek-cci-devfreq",
+		.of_match_table = of_match_ptr(mediatek_cci_devfreq_of_match),
+	},
+};
+
+static int __init mtk_cci_devfreq_init(void)
+{
+	int ret;
+
+	ret = devfreq_add_governor(&mtk_cci_devfreq_governor);
+	if (ret) {
+		pr_err("%s: failed to add governor: %d\n", __func__, ret);
+		return ret;
+	}
+
+	ret = platform_driver_register(&cci_devfreq_driver);
+	if (ret)
+		devfreq_remove_governor(&mtk_cci_devfreq_governor);
+
+	return ret;
+}
+module_init(mtk_cci_devfreq_init)
+
+static void __exit mtk_cci_devfreq_exit(void)
+{
+	int ret;
+
+	ret = devfreq_remove_governor(&mtk_cci_devfreq_governor);
+	if (ret)
+		pr_err("%s: failed to remove governor: %d\n", __func__, ret);
+
+	platform_driver_unregister(&cci_devfreq_driver);
+}
+module_exit(mtk_cci_devfreq_exit)
+
+MODULE_DESCRIPTION("Mediatek CCI devfreq driver");
+MODULE_AUTHOR("Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.12.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
