Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6391BA71F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 16:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1EAY3uvm09Thow26kTZZ0ofJFZ3g07fOoWFk2uQW7zk=; b=FhO
	QadamAyfDY5B6wmvB1s1EliSfozXYmm2hSUQA7c+ED1pe72p+ahmYxXgKnCVogyjpsQrXNV+GiabL
	vled2CE0gWZODvlScxDgxHh73ZUJPVAWYPwLYQsTb1IpVp2oL/IJN+Gq9V2nt4O6FKtarUu7/lgrg
	TxzKeeGYbfJgZr4raVZMEfJOPzla50yPH5RWYMKdObvWoXIn4UuDaQhdkLXyPnkKm35MDmZ37KrZh
	/V54/QQwhFfLVE9Q7KHdcDRYPlDartD72naR4kwMpE5U9v2/86UVgcXT/aGkLrlueUlAaPtsC5So3
	phLEifYEs01UKotd5FKlYN+WuqkrVbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT5E6-0003ww-U3; Mon, 27 Apr 2020 14:59:18 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT5Dx-0003vs-DV
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 14:59:11 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8845A1A11BA;
 Mon, 27 Apr 2020 16:59:05 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7AAD11A11B3;
 Mon, 27 Apr 2020 16:59:05 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 14F002030E;
 Mon, 27 Apr 2020 16:59:05 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
Subject: [PATCH] soc: imx: Add power domain driver support for i.mx8m family
Date: Mon, 27 Apr 2020 17:58:52 +0300
Message-Id: <1587999532-30006-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_075909_730713_BD472E22 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jacky Bai <ping.bai@nxp.com>

The i.MX8M family is a set of NXP product focus on delivering
the latest and greatest video and audio experience combining
state-of-the-art media-specific features with high-performance
processing while optimized for lowest power consumption.

i.MX8MQ, i.MX8MM, i.MX8MN, even the furture i.MX8MP are all
belong to this family. A GPC module is used to manage all the
PU power domain on/off. But the situation is that the number of
power domains & the power up sequence has significate difference
on those SoCs. Even on the same SoC. The power up sequence still
has big difference. It makes us hard to reuse the GPCv2 driver to
cover the whole i.MX8M family. Each time a new SoC is supported in
the mainline kernel, we need to modify the GPCv2 driver to support
it. We need to add or modify hundred lines of code in worst case.
It is a bad practice for the driver maintainability.

This driver add a more generic power domain driver that the actual
power on/off is done by TF-A code. the abstraction give us the
possibility that using one driver to cover the whole i.MX8M family
in kernel side.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/soc/imx/Kconfig            |   6 +
 drivers/soc/imx/Makefile           |   1 +
 drivers/soc/imx/imx8m_pm_domains.c | 224 +++++++++++++++++++++++++++++++++++++
 include/soc/imx/imx_sip.h          |  12 ++
 4 files changed, 243 insertions(+)
 create mode 100644 drivers/soc/imx/imx8m_pm_domains.c
 create mode 100644 include/soc/imx/imx_sip.h

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index d515d2c..7837199 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -27,4 +27,10 @@ config SOC_IMX8M
 	  support, it will provide the SoC info like SoC family,
 	  ID and revision etc.
 
+config IMX8M_PM_DOMAINS
+	bool "i.MX8M PM domains"
+	depends on ARCH_MXC || (COMPILE_TEST && OF)
+	depends on PM
+	select PM_GENERIC_DOMAINS
+
 endmenu
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index 103e2c9..a22e24b 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
 obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
+obj-$(CONFIG_IMX8M_PM_DOMAINS) += imx8m_pm_domains.o
diff --git a/drivers/soc/imx/imx8m_pm_domains.c b/drivers/soc/imx/imx8m_pm_domains.c
new file mode 100644
index 00000000..ce06a05
--- /dev/null
+++ b/drivers/soc/imx/imx8m_pm_domains.c
@@ -0,0 +1,224 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/pm_domain.h>
+#include <linux/regulator/consumer.h>
+
+#include <soc/imx/imx_sip.h>
+
+#define MAX_CLK_NUM	6
+#define to_imx8m_pm_domain(_genpd) container_of(_genpd, struct imx8m_pm_domain, pd)
+
+
+struct imx8m_pm_domain {
+	struct device *dev;
+	struct generic_pm_domain pd;
+	u32 domain_index;
+	struct clk *clk[MAX_CLK_NUM];
+	unsigned int num_clks;
+	struct regulator *reg;
+};
+
+enum imx8m_pm_domain_state {
+	PD_STATE_OFF,
+	PD_STATE_ON,
+};
+
+static DEFINE_MUTEX(gpc_pd_mutex);
+
+static int imx8m_pd_power_on(struct generic_pm_domain *genpd)
+{
+	struct imx8m_pm_domain *domain = to_imx8m_pm_domain(genpd);
+	struct arm_smccc_res res;
+	int index, ret = 0;
+
+	/* power on the external supply */
+	if (!IS_ERR(domain->reg)) {
+		ret = regulator_enable(domain->reg);
+		if (ret) {
+			dev_warn(domain->dev, "failed to power up the reg%d\n", ret);
+			return ret;
+		}
+	}
+
+	/* enable the necessary clks needed by the power domain */
+	if (domain->num_clks) {
+		for (index = 0; index < domain->num_clks; index++)
+			clk_prepare_enable(domain->clk[index]);
+	}
+
+	mutex_lock(&gpc_pd_mutex);
+	arm_smccc_smc(IMX_SIP_GPC, IMX_SIP_CONFIG_GPC_PM_DOMAIN, domain->domain_index,
+		      PD_STATE_ON, 0, 0, 0, 0, &res);
+	mutex_unlock(&gpc_pd_mutex);
+
+	return 0;
+}
+
+static int imx8m_pd_power_off(struct generic_pm_domain *genpd)
+{
+	struct imx8m_pm_domain *domain = to_imx8m_pm_domain(genpd);
+	struct arm_smccc_res res;
+	int index, ret = 0;
+
+	mutex_lock(&gpc_pd_mutex);
+	arm_smccc_smc(IMX_SIP_GPC, IMX_SIP_CONFIG_GPC_PM_DOMAIN, domain->domain_index,
+		      PD_STATE_OFF, 0, 0, 0, 0, &res);
+	mutex_unlock(&gpc_pd_mutex);
+
+	/* power off the external supply */
+	if (!IS_ERR(domain->reg)) {
+		ret = regulator_disable(domain->reg);
+		if (ret) {
+			dev_warn(domain->dev, "failed to power off the reg%d\n", ret);
+			return ret;
+		}
+	}
+
+	/* disable clks when power domain is off */
+	if (domain->num_clks) {
+		for (index = 0; index < domain->num_clks; index++)
+			clk_disable_unprepare(domain->clk[index]);
+	}
+
+	return ret;
+};
+
+static int imx8m_pd_get_clocks(struct imx8m_pm_domain *domain)
+{
+	int i, ret;
+
+	for (i = 0; ; i++) {
+		struct clk *clk = of_clk_get(domain->dev->of_node, i);
+		if (IS_ERR(clk))
+			break;
+		if (i >= MAX_CLK_NUM) {
+			dev_err(domain->dev, "more than %d clocks\n",
+				MAX_CLK_NUM);
+			ret = -EINVAL;
+			goto clk_err;
+		}
+		domain->clk[i] = clk;
+	}
+	domain->num_clks = i;
+
+	return 0;
+
+clk_err:
+	while (i--)
+		clk_put(domain->clk[i]);
+
+	return ret;
+}
+
+static void imx8m_pd_put_clocks(struct imx8m_pm_domain *domain)
+{
+	int i;
+
+	for (i = domain->num_clks - 1; i >= 0; i--)
+		clk_put(domain->clk[i]);
+}
+
+static const struct of_device_id imx8m_pm_domain_ids[] = {
+	{.compatible = "fsl,imx8m-pm-domain"},
+	{},
+};
+
+static int imx8m_pm_domain_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct imx8m_pm_domain *domain;
+	struct of_phandle_args parent, child;
+	int ret;
+
+	domain = devm_kzalloc(dev, sizeof(*domain), GFP_KERNEL);
+	if (!domain)
+		return -ENOMEM;
+
+	child.np = np;
+	domain->dev = dev;
+
+	ret = of_property_read_string(np, "domain-name", &domain->pd.name);
+	if (ret) {
+		dev_err(dev, "failed to get the domain name\n");
+		return -EINVAL;
+	}
+
+	ret = of_property_read_u32(np, "domain-index", &domain->domain_index);
+	if (ret) {
+		dev_err(dev, "failed to get the domain index\n");
+		return -EINVAL;
+	}
+
+	domain->reg = devm_regulator_get_optional(dev, "power");
+	if (IS_ERR(domain->reg)) {
+		if (PTR_ERR(domain->reg) != -ENODEV) {
+			if (PTR_ERR(domain->reg) != -EPROBE_DEFER)
+				dev_err(dev, "failed to get domain's regulator\n");
+			return PTR_ERR(domain->reg);
+		}
+	}
+
+	ret = imx8m_pd_get_clocks(domain);
+	if (ret) {
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to get domain's clocks\n");
+		return ret;
+	}
+
+	domain->pd.power_off = imx8m_pd_power_off;
+	domain->pd.power_on = imx8m_pd_power_on;
+
+	pm_genpd_init(&domain->pd, NULL, true);
+
+	ret = of_genpd_add_provider_simple(np, &domain->pd);
+	if (ret) {
+		dev_err(dev, "failed to add the domain provider\n");
+		pm_genpd_remove(&domain->pd);
+		imx8m_pd_put_clocks(domain);
+		return ret;
+	}
+
+	/* add it as subdomain if necessary */
+	if (!of_parse_phandle_with_args(np, "parent-domains",
+			"#power-domain-cells", 0, &parent)) {
+		ret = of_genpd_add_subdomain(&parent, &child);
+		of_node_put(parent.np);
+
+		if (ret < 0) {
+			dev_dbg(dev, "failed to add the subdomain: %s: %d",
+				domain->pd.name, ret);
+			of_genpd_del_provider(np);
+			pm_genpd_remove(&domain->pd);
+			imx8m_pd_put_clocks(domain);
+			return driver_deferred_probe_check_state(dev);
+		}
+	}
+
+	return 0;
+}
+
+static struct platform_driver imx8m_pm_domain_driver = {
+	.driver = {
+		.name	= "imx8m_pm_domain",
+		.owner	= THIS_MODULE,
+		.of_match_table = imx8m_pm_domain_ids,
+	},
+	.probe = imx8m_pm_domain_probe,
+};
+module_platform_driver(imx8m_pm_domain_driver);
+
+MODULE_AUTHOR("NXP");
+MODULE_DESCRIPTION("NXP i.MX8M power domain driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/soc/imx/imx_sip.h b/include/soc/imx/imx_sip.h
new file mode 100644
index 00000000..6b96b33
--- /dev/null
+++ b/include/soc/imx/imx_sip.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2019 NXP
+ */
+
+#ifndef __IMX_SIP_H__
+#define __IMX_SIP_H__
+
+#define IMX_SIP_GPC			0xC2000000
+#define IMX_SIP_CONFIG_GPC_PM_DOMAIN	0x03
+
+#endif /* __IMX_SIP_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
