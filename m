Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8531DA8CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFe7v2NMojuo8NnbcmA9xNVK9ZpJPCZiWfXW6912RWA=; b=D8U7QGNFduIxSc
	81olL9TesGvReJKOTO1S9KnR0FqTT9wj8Oznx11CJ7Aw6qH6X2MLY0OXMHa5OBuPLAd2RUB4ZUJsz
	Ks0dpDFdiLTcBP5d61zZPkxMQgHvbAO1fMQFrpQUqX4uKkH95OZMwN+K58KbIrHeNbxag/v3FdltG
	Vi5M21hvUyMWLMviAHjl80cXrI67PzGdiBb/Efd2wx7CZW2TrQNSuTMR/vbApUeAfajQELEvWp+OE
	fVbj7doucfjijgxcxAu0DRkDRGQ+4EVqxRmXSvL6jQ+qFsT9P9JtZkfzkSlTeCyuOuUsPYALCXrvW
	FG93zcERqI4QFmwmAoXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFnJ-0008Eb-HG; Wed, 20 May 2020 03:53:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFlx-0007BO-Nl; Wed, 20 May 2020 03:52:04 +0000
X-UUID: 7dcf28c5264a4babbac459f9b9540486-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=esfPhSHC5UdJHY1T8bD6Rfp6Cvwjr8gHJ4NAxEOB/cw=; 
 b=MIp1m6nQIG9xZFkUQ2T4mMv71my+xfNOiH3GavwRQlzKt5COrwavEGLp/3NgdOskLGtQbdG3xGU3tknTLnanLutX5qOJkQdWASbnF6nKYrrdo4ONKqGew1A/8qJWj9sZSSI4NN5Adr6Pn5FIV22pstkQQHU9ftL6rFvobnqCvXg=;
X-UUID: 7dcf28c5264a4babbac459f9b9540486-20200519
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 401648977; Tue, 19 May 2020 19:51:55 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 20:43:34 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 11:43:33 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 11:43:33 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH 09/12] devfreq: add mediatek cci devfreq
Date: Wed, 20 May 2020 11:43:04 +0800
Message-ID: <20200520034307.20435-10-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 2.12.5
In-Reply-To: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_205201_783862_D1E111DD 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
 drivers/devfreq/mt8183-cci-devfreq.c | 206 +++++++++++++++++++++++++++++++++++
 3 files changed, 217 insertions(+)
 create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c

diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
index d9067950af6a..4ed7116271ee 100644
--- a/drivers/devfreq/Kconfig
+++ b/drivers/devfreq/Kconfig
@@ -103,6 +103,16 @@ config ARM_IMX8M_DDRC_DEVFREQ
 	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allows
 	  adjusting DRAM frequency.
 
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
 	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
 	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
index 3eb4d5e6635c..5b1b670c954d 100644
--- a/drivers/devfreq/Makefile
+++ b/drivers/devfreq/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
 # DEVFREQ Drivers
 obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
 obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
+obj-$(CONFIG_ARM_MT8183_CCI_DEVFREQ)	+= mt8183-cci-devfreq.o
 obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
 obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
 obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
diff --git a/drivers/devfreq/mt8183-cci-devfreq.c b/drivers/devfreq/mt8183-cci-devfreq.c
new file mode 100644
index 000000000000..cd7929a83bf8
--- /dev/null
+++ b/drivers/devfreq/mt8183-cci-devfreq.c
@@ -0,0 +1,206 @@
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
+#include <linux/time.h>
+
+#include "governor.h"
+
+#define MAX_VOLT_LIMIT		(1150000)
+
+struct cci_devfreq {
+	struct devfreq *devfreq;
+	struct regulator *proc_reg;
+	struct clk *cci_clk;
+	int old_vproc;
+	unsigned long old_freq;
+};
+
+static int mtk_cci_set_voltage(struct cci_devfreq *cci_df, int vproc)
+{
+	int ret;
+
+	ret = regulator_set_voltage(cci_df->proc_reg, vproc,
+				    MAX_VOLT_LIMIT);
+	if (!ret)
+		cci_df->old_vproc = vproc;
+	return ret;
+}
+
+static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
+				  u32 flags)
+{
+	int ret;
+	struct cci_devfreq *cci_df = dev_get_drvdata(dev);
+	struct dev_pm_opp *opp;
+	unsigned long opp_rate, opp_voltage, old_voltage;
+
+	if (!cci_df)
+		return -EINVAL;
+
+	if (cci_df->old_freq == *freq)
+		return 0;
+
+	opp_rate = *freq;
+	opp = dev_pm_opp_find_freq_floor(dev, &opp_rate);
+	opp_voltage = dev_pm_opp_get_voltage(opp);
+	dev_pm_opp_put(opp);
+
+	old_voltage = cci_df->old_vproc;
+	if (old_voltage == 0)
+		old_voltage = regulator_get_voltage(cci_df->proc_reg);
+
+	// scale up: set voltage first then freq
+	if (opp_voltage > old_voltage) {
+		ret = mtk_cci_set_voltage(cci_df, opp_voltage);
+		if (ret) {
+			pr_err("cci: failed to scale up voltage\n");
+			return ret;
+		}
+	}
+
+	ret = clk_set_rate(cci_df->cci_clk, *freq);
+	if (ret) {
+		pr_err("%s: failed cci to set rate: %d\n", __func__,
+		       ret);
+		mtk_cci_set_voltage(cci_df, old_voltage);
+		return ret;
+	}
+
+	// scale down: set freq first then voltage
+	if (opp_voltage < old_voltage) {
+		ret = mtk_cci_set_voltage(cci_df, opp_voltage);
+		if (ret) {
+			pr_err("cci: failed to scale down voltage\n");
+			clk_set_rate(cci_df->cci_clk, cci_df->old_freq);
+			return ret;
+		}
+	}
+
+	cci_df->old_freq = *freq;
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
+	struct devfreq_passive_data *passive_data;
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
+	ret = regulator_enable(cci_df->proc_reg);
+	if (ret) {
+		pr_warn("enable buck for cci fail\n");
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
+	passive_data = devm_kzalloc(cci_dev, sizeof(*passive_data), GFP_KERNEL);
+	if (!passive_data)
+		return -ENOMEM;
+
+	passive_data->parent_type = CPUFREQ_PARENT_DEV;
+
+	cci_df->devfreq = devm_devfreq_add_device(cci_dev,
+						  &cci_devfreq_profile,
+						  DEVFREQ_GOV_PASSIVE,
+						  passive_data);
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
+static int mtk_cci_devfreq_remove(struct platform_device *pdev)
+{
+	struct device *cci_dev = &pdev->dev;
+	struct cci_devfreq *cci_df;
+	struct notifier_block *opp_nb;
+
+	cci_df = platform_get_drvdata(pdev);
+	opp_nb = &cci_df->opp_nb;
+
+	dev_pm_opp_unregister_notifier(cci_dev, opp_nb);
+	devm_devfreq_remove_device(cci_dev, cci_df->devfreq);
+	dev_pm_opp_of_remove_table(cci_dev);
+	regulator_disable(cci_df->proc_reg);
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
+	.remove	= mtk_cci_devfreq_remove,
+	.driver = {
+		.name = "mediatek-cci-devfreq",
+		.of_match_table = of_match_ptr(mediatek_cci_devfreq_of_match),
+	},
+};
+
+static int __init mtk_cci_devfreq_init(void)
+{
+	return platform_driver_register(&cci_devfreq_driver);
+}
+module_init(mtk_cci_devfreq_init)
+
+static void __exit mtk_cci_devfreq_exit(void)
+{
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
