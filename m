Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5286472F0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kJ/bykAuXUlJbI3bdJjR1eD7IwARC8on1+mGN2wMTpc=; b=kOPUbXUQaC0bBrEwRL5z8QfdMw
	CN3zPdCyyp8YDZgUvIFZ1CM9uAjasxZRpsB1DqruaqUipJASVUmRQzkJ0MF3VaWsvx/uoUayv9RUE
	Wnneggxc8ZTID57XUsmPwRsA+ZKCPl4sbbNAU3aioa3HfDNduFpDQoABty9cbDUv4DrnRmy4lBwvD
	EkGPRSRGbnZ6LWvzSypDKbHwVPZrVtFM5V9SaoDX+doVR5qEDRifh0TDwZzmkQF+eY+DvEdVhLRa1
	7nbLXstJGQs8PGlGNDB6reEQQ5Og1gFxlxDLoenRe9o+Wkebg5TlBouuV1V7XdwjejdCCNQky9n1F
	gIZNW0YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGYE-0002bJ-Jw; Wed, 24 Jul 2019 12:39:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGXn-0002Pw-Ua
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:38:57 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C01931A030E;
 Wed, 24 Jul 2019 14:38:54 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B22D81A02F9;
 Wed, 24 Jul 2019 14:38:54 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id AFBA8205D8;
 Wed, 24 Jul 2019 14:38:53 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Will Deacon <will@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [RFCv3 3/3] PM / devfreq: Add imx perf event support
Date: Wed, 24 Jul 2019 15:38:46 +0300
Message-Id: <72c89cd93817faf450ecd2d6e1d9c273198ff9ab.1563971855.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563971855.git.leonard.crestez@nxp.com>
References: <cover.1563971855.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1563971855.git.leonard.crestez@nxp.com>
References: <cover.1563971855.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_053856_259577_520EC096 
X-CRM114-Status: GOOD (  16.16  )
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

The imx8m ddrc has a performance monitoring block attached which can be
used to measure bandwidth usage automatically adjust frequency.

There is already a perf driver for that block so instead of implementing
a devfreq events driver use the in-kernel perf API to fetch read/write
bandwidth values and sum them.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/imx-devfreq.c | 135 ++++++++++++++++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/drivers/devfreq/imx-devfreq.c b/drivers/devfreq/imx-devfreq.c
index 3ee2d37883c6..fd4c8ffb8b4a 100644
--- a/drivers/devfreq/imx-devfreq.c
+++ b/drivers/devfreq/imx-devfreq.c
@@ -11,14 +11,28 @@
 #include <linux/of_device.h>
 #include <linux/pm_opp.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 
+#include <asm/perf_event.h>
+#include <linux/perf_event.h>
+
 struct imx_devfreq {
 	struct devfreq_dev_profile profile;
 	struct devfreq *devfreq;
 	struct clk *clk;
+
+	struct platform_device* pmu_pdev;
+	struct pmu *pmu;
+
+	struct perf_event_attr rd_event_attr;
+	struct perf_event_attr wr_event_attr;
+	struct perf_event *rd_event;
+	struct perf_event *wr_event;
+
+	u64 last_rd_val, last_rd_ena, last_rd_run;
+	u64 last_wr_val, last_wr_ena, last_wr_run;
 };
 
 static int imx_devfreq_target(struct device *dev, unsigned long *freq, u32 flags)
 {
 	struct imx_devfreq *priv = dev_get_drvdata(dev);
@@ -64,22 +78,131 @@ static int imx_devfreq_get_dev_status(struct device *dev,
 
 	stat->busy_time = 0;
 	stat->total_time = 0;
 	stat->current_frequency = clk_get_rate(priv->clk);
 
+	if (priv->rd_event && priv->wr_event) {
+		u64 rd_delta, rd_val, rd_ena, rd_run;
+		u64 wr_delta, wr_val, wr_ena, wr_run;
+
+		rd_val = perf_event_read_value(priv->rd_event, &rd_ena, &rd_run);
+		wr_val = perf_event_read_value(priv->wr_event, &wr_ena, &wr_run);
+
+		rd_delta = (rd_val - priv->last_rd_val) * (rd_ena - priv->last_rd_ena) / (rd_run - priv->last_rd_run);
+		priv->last_rd_val = rd_val;
+		priv->last_rd_ena = rd_ena;
+		priv->last_rd_run = rd_run;
+		wr_delta = (wr_val - priv->last_wr_val) * (wr_ena - priv->last_wr_ena) / (wr_run - priv->last_wr_run);
+		priv->last_wr_val = wr_val;
+		priv->last_wr_ena = wr_ena;
+		priv->last_wr_run = wr_run;
+
+		/* magic numbers, possibly wrong */
+		stat->busy_time = 4 * (rd_delta + wr_delta);
+		stat->total_time = stat->current_frequency;
+
+		dev_dbg(dev, "perf load %02lu%% read=%lu write=%lu freq=%lu\n",
+			100 * stat->busy_time / stat->total_time,
+			rd_delta, wr_delta, stat->current_frequency);
+	}
+
+	return 0;
+}
+
+static int imx_devfreq_perf_disable(struct imx_devfreq *priv)
+{
+	/* release and set to NULL */
+	if (!IS_ERR_OR_NULL(priv->rd_event))
+		perf_event_release_kernel(priv->rd_event);
+	if (!IS_ERR_OR_NULL(priv->wr_event))
+		perf_event_release_kernel(priv->wr_event);
+	priv->rd_event = NULL;
+	priv->wr_event = NULL;
+
+	return 0;
+}
+
+static int imx_devfreq_perf_enable(struct imx_devfreq *priv)
+{
+	int ret;
+
+	priv->rd_event_attr.size = sizeof(priv->rd_event_attr);
+	priv->rd_event_attr.type = priv->pmu->type;
+	priv->rd_event_attr.config = 0x2a;
+
+	priv->rd_event = perf_event_create_kernel_counter(
+			&priv->rd_event_attr, 0, NULL, NULL, NULL);
+	if (IS_ERR(priv->rd_event)) {
+		ret = PTR_ERR(priv->rd_event);
+		goto err;
+	}
+
+	priv->wr_event_attr.size = sizeof(priv->wr_event_attr);
+	priv->wr_event_attr.type = priv->pmu->type;
+	priv->wr_event_attr.config = 0x2b;
+
+	priv->wr_event = perf_event_create_kernel_counter(
+			&priv->wr_event_attr, 0, NULL, NULL, NULL);
+	if (IS_ERR(priv->wr_event)) {
+		ret = PTR_ERR(priv->wr_event);
+		goto err;
+	}
+
 	return 0;
+
+err:
+	imx_devfreq_perf_disable(priv);
+	return ret;
+}
+
+static int imx_devfreq_init_events(struct device *dev,
+				   struct device_node* events_node)
+{
+	struct imx_devfreq *priv = dev_get_drvdata(dev);
+	struct device_driver *driver;
+
+	/*
+	 * We need pmu->type for perf_event_attr but there is no API for
+	 * mapping device_node to pmu. Fetch private data for imx-ddr-pmu and
+	 * cast that to a struct pmu instead.
+	 */
+	priv->pmu_pdev = of_find_device_by_node(events_node);
+	if (!priv->pmu_pdev)
+		return -ENOENT;
+	driver = priv->pmu_pdev->dev.driver;
+	if (!driver)
+		return -ENOENT;
+	if (strcmp(driver->name, "imx-ddr-pmu")) {
+		dev_warn(dev, "devfreq-events node %pOF has unexpected driver %s\n",
+				events_node, driver->name);
+		return -ENODEV;
+	}
+
+	priv->pmu = platform_get_drvdata(priv->pmu_pdev);
+	if (!priv->pmu)
+		return -EPROBE_DEFER;
+
+	dev_info(dev, "events from pmu %s\n", priv->pmu->name);
+
+	return imx_devfreq_perf_enable(priv);
 }
 
 static void imx_devfreq_exit(struct device *dev)
 {
+	struct imx_devfreq *priv = dev_get_drvdata(dev);
+
+	imx_devfreq_perf_disable(priv);
+	platform_device_put(priv->pmu_pdev);
+
 	return dev_pm_opp_of_remove_table(dev);
 }
 
 static int imx_devfreq_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct imx_devfreq *priv;
+	struct device_node *events_node;
 	const char *gov = DEVFREQ_GOV_USERSPACE;
 	int ret;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -104,10 +227,20 @@ static int imx_devfreq_probe(struct platform_device *pdev)
 	priv->profile.get_dev_status = imx_devfreq_get_dev_status;
 	priv->profile.exit = imx_devfreq_exit;
 	priv->profile.get_cur_freq = imx_devfreq_get_cur_freq;
 	priv->profile.initial_freq = clk_get_rate(priv->clk);
 
+	/* Handle devfreq-events */
+	events_node = of_parse_phandle(dev->of_node, "devfreq-events", 0);
+	if (events_node) {
+		ret = imx_devfreq_init_events(dev, events_node);
+		of_node_put(events_node);
+		if (ret)
+			goto err;
+		gov = DEVFREQ_GOV_SIMPLE_ONDEMAND;
+	}
+
 	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
 						gov, NULL);
 	if (IS_ERR(priv->devfreq)) {
 		ret = PTR_ERR(priv->devfreq);
 		dev_err(dev, "failed to add devfreq device: %d\n", ret);
@@ -115,10 +248,12 @@ static int imx_devfreq_probe(struct platform_device *pdev)
 	}
 
 	return 0;
 
 err:
+	imx_devfreq_perf_disable(priv);
+	platform_device_put(priv->pmu_pdev);
 	dev_pm_opp_of_remove_table(dev);
 	return ret;
 }
 
 static const struct of_device_id imx_devfreq_of_match[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
