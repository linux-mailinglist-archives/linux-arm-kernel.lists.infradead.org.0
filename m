Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB331F5B22
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 23:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qd43LVmnz+ClvS6HrrrWihOPDxTKnlr22poqiWOdeT0=; b=P6bXji6AsQAb62mJNMfTnvVBPY
	3c4/rrMI6H6hlpvx1VSK9t9ZXWTnyO63rLH8B3GVFAYZCXgxD7Sx/bhN4wM5fKxf8BTG0WUefc4ND
	WIkkBjxZDyGTASzHO310Lc1jeKsA6B68focRs43GKMZap8Qt0hTv01uUOSw6szZOQoAZYJ1FEvZf7
	KQ6XwhkndHLGkuDiQAxr6WecuLX1sKjW2aflCHs1eNCH8g+0wsgCc6gVz7NX7Gl1pH6X3YGvWWIuh
	HNW/oA96t6iSx9xDpyjqQzsdELgYJxsgJeo5fKMhQECt9Mv0GsNf4MGFSMhrSOxpC5K8ldbNgbZsq
	QaYV8PVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTCwL-00014B-DV; Fri, 08 Nov 2019 22:41:13 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTCvQ-0000Oc-Ac
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 22:40:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 130F01A03DF;
 Fri,  8 Nov 2019 23:40:15 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EE0741A01C0;
 Fri,  8 Nov 2019 23:40:14 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D98CA205CD;
 Fri,  8 Nov 2019 23:40:13 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 5/6] PM / devfreq: imx8m-ddrc: Measure bandwidth with perf
Date: Sat,  9 Nov 2019 00:39:55 +0200
Message-Id: <a25094eac4c0f740e0e33c04af699b39a4226a08.1573252696.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573252696.git.leonard.crestez@nxp.com>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573252696.git.leonard.crestez@nxp.com>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_144016_664364_21DBBBB0 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx8m ddrc has a performance monitoring block attached which can
be used to measure bandwidth usage and automatically adjust frequency.

There is already a perf driver for that block so instead of implementing
a devfreq events driver use the in-kernel perf API to implement
get_dev_status directly.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/imx8m-ddrc.c | 153 +++++++++++++++++++++++++++++++++++
 1 file changed, 153 insertions(+)

diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
index 51903fee21a7..6372191f72d7 100644
--- a/drivers/devfreq/imx8m-ddrc.c
+++ b/drivers/devfreq/imx8m-ddrc.c
@@ -11,10 +11,13 @@
 #include <linux/pm_opp.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/arm-smccc.h>
 
+#include <asm/perf_event.h>
+#include <linux/perf_event.h>
+
 #define IMX_SIP_DDR_DVFS			0xc2000004
 
 /* Values starting from 0 switch to specific frequency */
 #define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
 
@@ -78,10 +81,22 @@ struct imx8m_ddrc {
 	struct clk *dram_alt;
 	struct clk *dram_apb;
 
 	int freq_count;
 	struct imx8m_ddrc_freq freq_table[IMX8M_DDRC_MAX_FREQ_COUNT];
+
+	/* For measuring load with perf events: */
+	struct platform_device *pmu_pdev;
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
 
 static struct imx8m_ddrc_freq *imx8m_ddrc_find_freq(struct imx8m_ddrc *priv,
 						    unsigned long rate)
 {
@@ -245,10 +260,131 @@ static int imx8m_ddrc_get_cur_freq(struct device *dev, unsigned long *freq)
 	*freq = clk_get_rate(priv->dram_core);
 
 	return 0;
 }
 
+static int imx8m_ddrc_get_dev_status(struct device *dev,
+				     struct devfreq_dev_status *stat)
+{
+	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
+
+	stat->current_frequency = clk_get_rate(priv->dram_core);
+
+	if (priv->rd_event && priv->wr_event) {
+		u64 rd_delta, rd_val, rd_ena, rd_run;
+		u64 wr_delta, wr_val, wr_ena, wr_run;
+
+		rd_val = perf_event_read_value(priv->rd_event,
+					       &rd_ena, &rd_run);
+		wr_val = perf_event_read_value(priv->wr_event,
+					       &wr_ena, &wr_run);
+
+		rd_delta = (rd_val - priv->last_rd_val) *
+			   (rd_ena - priv->last_rd_ena);
+		do_div(rd_delta, rd_run - priv->last_rd_run);
+		priv->last_rd_val = rd_val;
+		priv->last_rd_ena = rd_ena;
+		priv->last_rd_run = rd_run;
+
+		wr_delta = (wr_val - priv->last_wr_val) *
+			   (wr_ena - priv->last_wr_ena);
+		do_div(wr_delta, wr_run - priv->last_wr_run);
+		priv->last_wr_val = wr_val;
+		priv->last_wr_ena = wr_ena;
+		priv->last_wr_run = wr_run;
+
+		/* magic numbers, possibly wrong */
+		stat->busy_time = 4 * (rd_delta + wr_delta);
+		stat->total_time = stat->current_frequency;
+	} else {
+		stat->busy_time = 0;
+		stat->total_time = 0;
+	}
+
+	return 0;
+}
+
+static int imx8m_ddrc_perf_disable(struct imx8m_ddrc *priv)
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
+static int imx8m_ddrc_perf_enable(struct imx8m_ddrc *priv)
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
+	return 0;
+
+err:
+	imx8m_ddrc_perf_disable(priv);
+	return ret;
+}
+
+static int imx8m_ddrc_init_events(struct device *dev,
+				  struct device_node *events_node)
+{
+	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
+	struct device_driver *driver;
+
+	/*
+	 * We need pmu->type for perf_event_attr but there is no API for
+	 * mapping device_node to pmu. Fetch private data for imx-ddr-pmu and
+	 * cast that to a struct pmu instead.
+	 */
+	priv->pmu_pdev = of_find_device_by_node(events_node);
+	if (!priv->pmu_pdev)
+		return -EPROBE_DEFER;
+	driver = priv->pmu_pdev->dev.driver;
+	if (!driver)
+		return -EPROBE_DEFER;
+	if (strcmp(driver->name, "imx-ddr-pmu")) {
+		dev_warn(dev, "devfreq-events node %pOF has unexpected driver %s\n",
+				events_node, driver->name);
+		return -ENODEV;
+	}
+
+	priv->pmu = platform_get_drvdata(priv->pmu_pdev);
+	if (!priv->pmu) {
+		dev_err(dev, "devfreq-events device missing private data\n");
+		return -EINVAL;
+	}
+
+	dev_dbg(dev, "events from pmu %s\n", priv->pmu->name);
+
+	return imx8m_ddrc_perf_enable(priv);
+}
+
 static int imx8m_ddrc_init_freq_info(struct device *dev)
 {
 	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
 	struct arm_smccc_res res;
 	int index;
@@ -328,17 +464,23 @@ static int imx8m_ddrc_check_opps(struct device *dev)
 	return 0;
 }
 
 static void imx8m_ddrc_exit(struct device *dev)
 {
+	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
+
+	imx8m_ddrc_perf_disable(priv);
+	platform_device_put(priv->pmu_pdev);
+
 	dev_pm_opp_of_remove_table(dev);
 }
 
 static int imx8m_ddrc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct imx8m_ddrc *priv;
+	struct device_node *events_node;
 	const char *gov = DEVFREQ_GOV_USERSPACE;
 	int ret;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -350,10 +492,19 @@ static int imx8m_ddrc_probe(struct platform_device *pdev)
 	if (ret) {
 		dev_err(dev, "failed to init firmware freq info: %d\n", ret);
 		return ret;
 	}
 
+	events_node = of_parse_phandle(dev->of_node, "devfreq-events", 0);
+	if (events_node) {
+		ret = imx8m_ddrc_init_events(dev, events_node);
+		of_node_put(events_node);
+		if (ret)
+			goto err;
+		gov = DEVFREQ_GOV_SIMPLE_ONDEMAND;
+	}
+
 	priv->dram_core = devm_clk_get(dev, "core");
 	priv->dram_pll = devm_clk_get(dev, "pll");
 	priv->dram_alt = devm_clk_get(dev, "alt");
 	priv->dram_apb = devm_clk_get(dev, "apb");
 	if (IS_ERR(priv->dram_core) ||
@@ -390,10 +541,12 @@ static int imx8m_ddrc_probe(struct platform_device *pdev)
 	}
 
 	return 0;
 
 err:
+	imx8m_ddrc_perf_disable(priv);
+	platform_device_put(priv->pmu_pdev);
 	dev_pm_opp_of_remove_table(dev);
 	return ret;
 }
 
 static const struct of_device_id imx8m_ddrc_of_match[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
