Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61891A01CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkjloSheocEvCgI9AZVeKDO0ksKVEPWaydZpzzgRAFQ=; b=tC7D1cufd4Gl+b
	wBBq2oOEecuQKDfI5d+/Hj+Co9Tq6ekeZFBUYOePRlkXP/XztCvsQ08deBwEBd1F08E6uQCyz+mJz
	Ry+IJWFeZUaoatuSjqgMoltGs3ycd8oMRO7xzaBT8t5HCQuT9Cms79CK7iv/1radardETE5AZIMSW
	oZ7TMcNxfQ8yZXaS4KlcyfznzLXIolvaaZw+jM++5U5833VoKHmSXEWXvnSPJaZCtoN+ow2awa51C
	J/a+nZZ2YNkXap7fL8x7gBhjYQ3G11a1fDlxrey93Jwp+iq2pcRTExJMhWP9s07stzDCqylo81vrO
	ZssaKkAex8GKpXvifd2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2x7x-0006Ke-Om; Wed, 28 Aug 2019 12:32:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2x4a-0002Ww-BS; Wed, 28 Aug 2019 12:29:15 +0000
X-UUID: 214364d47f834bd7a4f6d1378ed77e44-20190828
X-UUID: 214364d47f834bd7a4f6d1378ed77e44-20190828
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1267735763; Wed, 28 Aug 2019 04:29:14 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 05:29:13 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 20:28:59 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 20:28:59 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>, Ryan Case
 <ryandcase@chromium.org>
Subject: [PATCH V3 06/10] soc: mediatek: add MT8183 dvfsrc support
Date: Wed, 28 Aug 2019 20:28:44 +0800
Message-ID: <1566995328-15158-7-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
References: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_052912_623392_2DB65A11 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Nicolas Boichat <drinkcat@google.com>, linux-kernel@vger.kernel.org, Henry
 Chen <henryc.chen@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add dvfsrc driver for MT8183

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 drivers/soc/mediatek/Kconfig      |  15 ++
 drivers/soc/mediatek/Makefile     |   1 +
 drivers/soc/mediatek/mtk-dvfsrc.c | 374 ++++++++++++++++++++++++++++++++++++++
 include/soc/mediatek/mtk_dvfsrc.h |  22 +++
 4 files changed, 412 insertions(+)
 create mode 100644 drivers/soc/mediatek/mtk-dvfsrc.c
 create mode 100644 include/soc/mediatek/mtk_dvfsrc.h

diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
index 2114b56..384cfb5 100644
--- a/drivers/soc/mediatek/Kconfig
+++ b/drivers/soc/mediatek/Kconfig
@@ -25,6 +25,21 @@ config MTK_INFRACFG
 	  INFRACFG controller contains various infrastructure registers not
 	  directly associated to any device.
 
+config MTK_DVFSRC
+	bool "MediaTek DVFSRC Support"
+	depends on ARCH_MEDIATEK
+	default ARCH_MEDIATEK
+	select MTK_INFRACFG
+	select PM_GENERIC_DOMAINS if PM
+	depends on MTK_SCPSYS
+	help
+	  Say yes here to add support for the MediaTek DVFSRC (dynamic voltage
+	  and frequency scaling resource collector) found
+	  on different MediaTek SoCs. The DVFSRC is a proprietary
+	  hardware which is used to collect all the requests from
+	  system and turn into the decision of minimum Vcore voltage
+	  and minimum DRAM frequency to fulfill those requests.
+
 config MTK_PMIC_WRAP
 	tristate "MediaTek PMIC Wrapper Support"
 	depends on RESET_CONTROLLER
diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
index b442be9..f0b09ad 100644
--- a/drivers/soc/mediatek/Makefile
+++ b/drivers/soc/mediatek/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
+obj-$(CONFIG_MTK_DVFSRC) += mtk-dvfsrc.o
 obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o mtk-scpsys-ext.o
 obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
 obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
diff --git a/drivers/soc/mediatek/mtk-dvfsrc.c b/drivers/soc/mediatek/mtk-dvfsrc.c
new file mode 100644
index 0000000..ee2bb12
--- /dev/null
+++ b/drivers/soc/mediatek/mtk-dvfsrc.c
@@ -0,0 +1,374 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018 MediaTek Inc.
+ */
+#include <linux/arm-smccc.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/notifier.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <soc/mediatek/mtk_dvfsrc.h>
+#include <soc/mediatek/mtk_sip.h>
+#include <dt-bindings/power/mt8183-power.h>
+#include <dt-bindings/soc/mtk,dvfsrc.h>
+#include "mtk-scpsys.h"
+
+#define DVFSRC_IDLE		0x00
+#define DVFSRC_GET_TARGET_LEVEL(x)	(((x) >> 0) & 0x0000ffff)
+#define DVFSRC_GET_CURRENT_LEVEL(x)	(((x) >> 16) & 0x0000ffff)
+#define kbps_to_mbps(x)	(x / 1000)
+
+#define MT8183_DVFSRC_OPP_LP4	0
+#define MT8183_DVFSRC_OPP_LP4X	1
+#define MT8183_DVFSRC_OPP_LP3	2
+
+#define POLL_TIMEOUT		1000
+#define STARTUP_TIME		1
+
+struct dvfsrc_opp {
+	u32 vcore_opp;
+	u32 dram_opp;
+};
+
+struct dvfsrc_domain {
+	u32 id;
+	u32 state;
+};
+
+struct mtk_dvfsrc;
+struct dvfsrc_soc_data {
+	const int *regs;
+	u32 num_opp;
+	u32 num_domains;
+	const struct dvfsrc_opp **opps;
+	struct dvfsrc_domain *domains;
+	int (*get_target_level)(struct mtk_dvfsrc *dvfsrc);
+	int (*get_current_level)(struct mtk_dvfsrc *dvfsrc);
+	void (*set_dram_bw)(struct mtk_dvfsrc *dvfsrc, u64 bw);
+	void (*set_opp_level)(struct mtk_dvfsrc *dvfsrc, u32 level);
+	int (*wait_for_opp_level)(struct mtk_dvfsrc *dvfsrc, u32 level);
+};
+
+struct mtk_dvfsrc {
+	struct device *dev;
+	struct clk *clk_dvfsrc;
+	const struct dvfsrc_soc_data *dvd;
+	int dram_type;
+	void __iomem *regs;
+	struct mutex lock;
+	struct notifier_block scpsys_notifier;
+};
+
+static u32 dvfsrc_read(struct mtk_dvfsrc *dvfs, u32 offset)
+{
+	return readl(dvfs->regs + dvfs->dvd->regs[offset]);
+}
+
+static void dvfsrc_write(struct mtk_dvfsrc *dvfs, u32 offset, u32 val)
+{
+	writel(val, dvfs->regs + dvfs->dvd->regs[offset]);
+}
+
+enum dvfsrc_regs {
+	DVFSRC_SW_REQ,
+	DVFSRC_LEVEL,
+	DVFSRC_SW_BW,
+	DVFSRC_LAST,
+};
+
+static const int mt8183_regs[] = {
+	[DVFSRC_SW_REQ] =	0x4,
+	[DVFSRC_LEVEL] =	0xDC,
+	[DVFSRC_SW_BW] =	0x160,
+	[DVFSRC_LAST] =		0x308,
+};
+
+static const struct dvfsrc_opp *get_current_opp(struct mtk_dvfsrc *dvfsrc)
+{
+	int level;
+
+	level = dvfsrc->dvd->get_current_level(dvfsrc);
+	return &dvfsrc->dvd->opps[dvfsrc->dram_type][level];
+}
+
+static int dvfsrc_is_idle(struct mtk_dvfsrc *dvfsrc)
+{
+	if (!dvfsrc->dvd->get_target_level)
+		return true;
+
+	return dvfsrc->dvd->get_target_level(dvfsrc);
+}
+
+static int mt8183_wait_for_opp_level(struct mtk_dvfsrc *dvfsrc, u32 level)
+{
+	const struct dvfsrc_opp *target, *curr;
+	int ret;
+
+	target = &dvfsrc->dvd->opps[dvfsrc->dram_type][level];
+	ret = readx_poll_timeout(get_current_opp, dvfsrc, curr,
+				 curr->dram_opp >= target->dram_opp &&
+				 curr->vcore_opp >= target->vcore_opp,
+				 STARTUP_TIME, POLL_TIMEOUT);
+	if (ret < 0) {
+		dev_warn(dvfsrc->dev,
+			"timeout, target: %u, dram: %d, vcore: %d\n",
+			level, curr->dram_opp, curr->vcore_opp);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int mt8183_get_target_level(struct mtk_dvfsrc *dvfsrc)
+{
+	return DVFSRC_GET_TARGET_LEVEL(dvfsrc_read(dvfsrc, DVFSRC_LEVEL));
+}
+
+static int mt8183_get_current_level(struct mtk_dvfsrc *dvfsrc)
+{
+	return ffs(DVFSRC_GET_CURRENT_LEVEL(dvfsrc_read(dvfsrc, DVFSRC_LEVEL)));
+}
+
+static void mt8183_set_dram_bw(struct mtk_dvfsrc *dvfsrc, u64 bw)
+{
+	dvfsrc_write(dvfsrc, DVFSRC_SW_BW, kbps_to_mbps(bw) / 100);
+}
+
+static void mt8183_set_opp_level(struct mtk_dvfsrc *dvfsrc, u32 level)
+{
+	int vcore_opp, dram_opp;
+	const struct dvfsrc_opp *opp;
+
+	/* translate pstate to dvfsrc level, and set it to DVFSRC HW */
+	opp = &dvfsrc->dvd->opps[dvfsrc->dram_type][level];
+	vcore_opp = opp->vcore_opp;
+	dram_opp = opp->dram_opp;
+
+	dev_dbg(dvfsrc->dev, "vcore_opp: %d, dram_opp: %d\n",
+		vcore_opp, dram_opp);
+	dvfsrc_write(dvfsrc, DVFSRC_SW_REQ, dram_opp | vcore_opp << 2);
+}
+
+void mtk_dvfsrc_send_request(const struct device *dev, u32 cmd, u64 data)
+{
+	int ret, state;
+	struct mtk_dvfsrc *dvfsrc = dev_get_drvdata(dev);
+
+	dev_dbg(dvfsrc->dev, "cmd: %d, data: %llu\n", cmd, data);
+
+	mutex_lock(&dvfsrc->lock);
+
+	switch (cmd) {
+	case MTK_DVFSRC_CMD_BW_REQUEST:
+		dvfsrc->dvd->set_dram_bw(dvfsrc, data);
+		goto out;
+	case MTK_DVFSRC_CMD_OPP_REQUEST:
+		dvfsrc->dvd->set_opp_level(dvfsrc, data);
+		break;
+	default:
+		dev_err(dvfsrc->dev, "unknown command: %d\n", cmd);
+		break;
+	}
+
+	/* DVFSRC need to wait at least 2T(~196ns) to handle request
+	 * after recieving command
+	 */
+	udelay(STARTUP_TIME);
+
+	ret = readx_poll_timeout(dvfsrc_is_idle, dvfsrc,
+				 state, state == DVFSRC_IDLE,
+				 STARTUP_TIME, POLL_TIMEOUT);
+
+	if (ret < 0) {
+		dev_warn(dvfsrc->dev,
+			"%d: idle timeout, data: %llu, last: %d -> %d\n",
+			cmd, data,
+			dvfsrc->dvd->get_current_level(dvfsrc),
+			dvfsrc->dvd->get_target_level(dvfsrc));
+		goto out;
+	}
+
+	dvfsrc->dvd->wait_for_opp_level(dvfsrc, data);
+
+out:
+	mutex_unlock(&dvfsrc->lock);
+}
+EXPORT_SYMBOL(mtk_dvfsrc_send_request);
+
+static int dvfsrc_set_performance(struct notifier_block *b,
+				  unsigned long pstate, void *v)
+{
+	bool match = false;
+	int i;
+	struct mtk_dvfsrc *dvfsrc;
+	struct scp_event_data *sc = v;
+	struct dvfsrc_domain *d;
+	u32 highest;
+
+	if (sc->event_type != MTK_SCPSYS_PSTATE)
+		return 0;
+
+	dvfsrc = container_of(b, struct mtk_dvfsrc, scpsys_notifier);
+
+	d = dvfsrc->dvd->domains;
+
+	if (pstate > dvfsrc->dvd->num_opp) {
+		dev_err(dvfsrc->dev, "pstate out of range = %ld\n", pstate);
+		return 0;
+	}
+
+	for (i = 0, highest = 0; i < dvfsrc->dvd->num_domains; i++, d++) {
+		if (sc->domain_id == d->id) {
+			d->state = pstate;
+			match = true;
+		}
+		highest = max(highest, d->state);
+	}
+
+	if (!match)
+		return 0;
+
+	/* pstat start from level 1, array index start from 0 */
+	mtk_dvfsrc_send_request(dvfsrc->dev, MTK_DVFSRC_CMD_OPP_REQUEST,
+				highest - 1);
+
+	return 0;
+}
+
+static void pstate_notifier_register(struct mtk_dvfsrc *dvfsrc)
+{
+	dvfsrc->scpsys_notifier.notifier_call = dvfsrc_set_performance;
+	register_scpsys_notifier(&dvfsrc->scpsys_notifier);
+}
+
+static int mtk_dvfsrc_probe(struct platform_device *pdev)
+{
+	struct arm_smccc_res ares;
+	struct resource *res;
+	struct mtk_dvfsrc *dvfsrc;
+	int ret;
+
+	dvfsrc = devm_kzalloc(&pdev->dev, sizeof(*dvfsrc), GFP_KERNEL);
+	if (!dvfsrc)
+		return -ENOMEM;
+
+	dvfsrc->dvd = of_device_get_match_data(&pdev->dev);
+	dvfsrc->dev = &pdev->dev;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	dvfsrc->regs = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(dvfsrc->regs))
+		return PTR_ERR(dvfsrc->regs);
+
+	dvfsrc->clk_dvfsrc = devm_clk_get(dvfsrc->dev, "dvfsrc");
+	if (IS_ERR(dvfsrc->clk_dvfsrc)) {
+		dev_err(dvfsrc->dev, "failed to get clock: %ld\n",
+			PTR_ERR(dvfsrc->clk_dvfsrc));
+		return PTR_ERR(dvfsrc->clk_dvfsrc);
+	}
+
+	ret = clk_prepare_enable(dvfsrc->clk_dvfsrc);
+	if (ret)
+		return ret;
+
+	mutex_init(&dvfsrc->lock);
+
+	arm_smccc_smc(MTK_SIP_SPM, MTK_SIP_SPM_DVFSRC_INIT, 0, 0, 0, 0, 0, 0,
+		      &ares);
+
+	if (!ares.a0) {
+		dvfsrc->dram_type = ares.a1;
+		dev_info(dvfsrc->dev, "dram_type: %d\n", dvfsrc->dram_type);
+	} else {
+		dev_err(dvfsrc->dev, "init fails: %lu\n", ares.a0);
+		clk_disable_unprepare(dvfsrc->clk_dvfsrc);
+		return ares.a0;
+	}
+
+	platform_set_drvdata(pdev, dvfsrc);
+	pstate_notifier_register(dvfsrc);
+
+	return devm_of_platform_populate(&pdev->dev);
+}
+
+static const struct dvfsrc_opp dvfsrc_opp_mt8183_lp4[] = {
+	{0, 0}, {0, 1}, {0, 2}, {1, 2},
+};
+
+static const struct dvfsrc_opp dvfsrc_opp_mt8183_lp3[] = {
+	{0, 0}, {0, 1}, {1, 1}, {1, 2},
+};
+
+static const struct dvfsrc_opp *dvfsrc_opp_mt8183[] = {
+	[MT8183_DVFSRC_OPP_LP4] = dvfsrc_opp_mt8183_lp4,
+	[MT8183_DVFSRC_OPP_LP4X] = dvfsrc_opp_mt8183_lp3,
+	[MT8183_DVFSRC_OPP_LP3] = dvfsrc_opp_mt8183_lp3,
+};
+
+static struct dvfsrc_domain dvfsrc_domains_mt8183[] = {
+	{ MT8183_POWER_DOMAIN_MFG_ASYNC, 0 },
+	{ MT8183_POWER_DOMAIN_MFG, 0 },
+	{ MT8183_POWER_DOMAIN_CAM, 0 },
+	{ MT8183_POWER_DOMAIN_DISP, 0 },
+	{ MT8183_POWER_DOMAIN_ISP, 0 },
+	{ MT8183_POWER_DOMAIN_VDEC, 0 },
+	{ MT8183_POWER_DOMAIN_VENC, 0 },
+};
+
+static const struct dvfsrc_soc_data mt8183_data = {
+	.opps = dvfsrc_opp_mt8183,
+	.num_opp = ARRAY_SIZE(dvfsrc_opp_mt8183_lp4),
+	.regs = mt8183_regs,
+	.domains = dvfsrc_domains_mt8183,
+	.num_domains = ARRAY_SIZE(dvfsrc_domains_mt8183),
+	.get_target_level = mt8183_get_target_level,
+	.get_current_level = mt8183_get_current_level,
+	.set_dram_bw = mt8183_set_dram_bw,
+	.set_opp_level = mt8183_set_opp_level,
+	.wait_for_opp_level = mt8183_wait_for_opp_level,
+};
+
+static int mtk_dvfsrc_remove(struct platform_device *pdev)
+{
+	struct mtk_dvfsrc *dvfsrc = platform_get_drvdata(pdev);
+
+	clk_disable_unprepare(dvfsrc->clk_dvfsrc);
+
+	return 0;
+}
+
+static const struct of_device_id mtk_dvfsrc_of_match[] = {
+	{
+		.compatible = "mediatek,mt8183-dvfsrc",
+		.data = &mt8183_data,
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct platform_driver mtk_dvfsrc_driver = {
+	.probe	= mtk_dvfsrc_probe,
+	.remove	= mtk_dvfsrc_remove,
+	.driver = {
+		.name = "mtk-dvfsrc",
+		.of_match_table = of_match_ptr(mtk_dvfsrc_of_match),
+	},
+};
+
+static int __init mtk_dvfsrc_init(void)
+{
+	return platform_driver_register(&mtk_dvfsrc_driver);
+}
+subsys_initcall(mtk_dvfsrc_init);
+
+static void __exit mtk_dvfsrc_exit(void)
+{
+	platform_driver_unregister(&mtk_dvfsrc_driver);
+}
+module_exit(mtk_dvfsrc_exit);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MTK DVFSRC driver");
diff --git a/include/soc/mediatek/mtk_dvfsrc.h b/include/soc/mediatek/mtk_dvfsrc.h
new file mode 100644
index 0000000..e759a65
--- /dev/null
+++ b/include/soc/mediatek/mtk_dvfsrc.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (c) 2018 MediaTek Inc.
+ */
+#ifndef __SOC_MTK_DVFSRC_H
+#define __SOC_MTK_DVFSRC_H
+
+#define MTK_DVFSRC_CMD_BW_REQUEST	0
+#define MTK_DVFSRC_CMD_OPP_REQUEST	1
+
+#if IS_ENABLED(CONFIG_MTK_DVFSRC)
+void mtk_dvfsrc_send_request(const struct device *dev, u32 cmd, u64 data);
+
+#else
+
+static inline void mtk_dvfsrc_send_request(const struct device *dev, u32 cmd,
+					   u64 data)
+{ return -ENODEV; }
+
+#endif /* CONFIG_MTK_DVFSRC */
+
+#endif
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
