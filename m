Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7048A6A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 20:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VsUhldTcKOw7fUQK3vd+8P0kNXRSVKl9xIVYqZV4Swg=; b=UiecvZE98eSWOtJVwZ/GD0cPDc
	DpqeOMMUiMTAOrimxEqRDtp/iWTdA6Nimkv8+BYMKWwgbBIA2NDHUn2+GkaXjGjO//zPJLdWAIEMQ
	SRYr4IL9L8gmoKpoxwsgw2W+aRHdEwb8FmPwIV/QU9kfeoL3LdbihOGB+yDWOTF2MowbKd63CULdV
	3+W1NSHfJgG1j/gb9bZQ6ViiLm9WxMC7xoAW+tod0N3vcf6Zi1sFykkbBYEzyhCxUZQPI0ASJ/izy
	2uEPcOpCpLe2P0yzKxDHbmqFo1oU6BuS9820gOOFm77nxh0ACwtn1CT7BcrBp81GVjEUOVYHiyUSD
	ljSZOvhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxFQM-0006fZ-ES; Mon, 12 Aug 2019 18:52:06 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxFON-000429-1S
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 18:50:05 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C269E2006A1;
 Mon, 12 Aug 2019 20:50:01 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A7DE32006AE;
 Mon, 12 Aug 2019 20:50:01 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A0E00205ED;
 Mon, 12 Aug 2019 20:50:00 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 6/7] PM / devfreq: imx-ddrc: Measure bandwidth with perf
Date: Mon, 12 Aug 2019 21:49:50 +0300
Message-Id: <6d8762453bf6020b8f1ec8c06bb5713a3d3d635e.1565633880.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1565633880.git.leonard.crestez@nxp.com>
References: <cover.1565633880.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1565633880.git.leonard.crestez@nxp.com>
References: <cover.1565633880.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_115003_380434_05555A9C 
X-CRM114-Status: GOOD (  16.95  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-pm@vger.kernel.org,
 linux-imx@nxp.com, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Will Deacon <will@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 devicetree@vger.kernel.org, Jacky Bai <ping.bai@nxp.com>
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
 drivers/devfreq/imx-ddrc.c | 136 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 134 insertions(+), 2 deletions(-)

diff --git a/drivers/devfreq/imx-ddrc.c b/drivers/devfreq/imx-ddrc.c
index e46a1e711bc6..d7f27cdce697 100644
--- a/drivers/devfreq/imx-ddrc.c
+++ b/drivers/devfreq/imx-ddrc.c
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
 
@@ -81,10 +84,22 @@ struct imx_ddrc {
 	struct clk *dram_alt;
 	struct clk *dram_apb;
 
 	int freq_count;
 	struct imx_ddrc_freq freq_table[IMX_DDRC_MAX_FREQ_COUNT];
+
+	/* For measuring load with perf events: */
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
 
 static struct imx_ddrc_freq* imx_ddrc_find_freq(struct imx_ddrc* priv,
 						unsigned long rate)
 {
@@ -233,17 +248,117 @@ static int imx_ddrc_get_cur_freq(struct device *dev, unsigned long *freq)
 static int imx_ddrc_get_dev_status(struct device *dev,
 		struct devfreq_dev_status *stat)
 {
 	struct imx_ddrc *priv = dev_get_drvdata(dev);
 
-	stat->busy_time = 0;
-	stat->total_time = 0;
 	stat->current_frequency = clk_get_rate(priv->dram_core);
 
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
+	} else {
+		stat->busy_time = 0;
+		stat->total_time = 0;
+	}
+
+	return 0;
+}
+
+static int imx_ddrc_perf_disable(struct imx_ddrc *priv)
+{
+	/* release and set to NULL */
+	if (!IS_ERR_OR_NULL(priv->rd_event))
+		perf_event_release_kernel(priv->rd_event);
+	if (!IS_ERR_OR_NULL(priv->wr_event))
+		perf_event_release_kernel(priv->wr_event);
+	priv->rd_event = NULL;
+	priv->wr_event = NULL;
+
 	return 0;
 }
 
+static int imx_ddrc_perf_enable(struct imx_ddrc *priv)
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
+	imx_ddrc_perf_disable(priv);
+	return ret;
+}
+
+static int imx_ddrc_init_events(struct device *dev,
+				   struct device_node* events_node)
+{
+	struct imx_ddrc *priv = dev_get_drvdata(dev);
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
+	if (!priv->pmu)
+		return -EINVAL;
+
+	dev_info(dev, "events from pmu %s\n", priv->pmu->name);
+
+	return imx_ddrc_perf_enable(priv);
+}
+
 static int imx_ddrc_init_freq_info(struct device *dev)
 {
 	struct imx_ddrc *priv = dev_get_drvdata(dev);
 	struct arm_smccc_res res;
 	int index;
@@ -291,10 +406,13 @@ static int imx_ddrc_init_freq_info(struct device *dev)
 
 static void imx_ddrc_exit(struct device *dev)
 {
 	struct imx_ddrc *priv = dev_get_drvdata(dev);
 
+	imx_ddrc_perf_disable(priv);
+	platform_device_put(priv->pmu_pdev);
+
 	return dev_pm_opp_of_remove_table(dev);
 }
 
 static int imx_ddrc_probe(struct platform_device *pdev)
 {
@@ -342,10 +460,22 @@ static int imx_ddrc_probe(struct platform_device *pdev)
 	priv->profile.get_dev_status = imx_ddrc_get_dev_status;
 	priv->profile.exit = imx_ddrc_exit;
 	priv->profile.get_cur_freq = imx_ddrc_get_cur_freq;
 	priv->profile.initial_freq = clk_get_rate(priv->dram_core);
 
+	/* Handle devfreq-events */
+	events_node = of_parse_phandle(dev->of_node, "devfreq-events", 0);
+	if (events_node) {
+		ret = imx_ddrc_init_events(dev, events_node);
+		of_node_put(events_node);
+		if (ret) {
+			dev_warn(dev, "failed to init perf events: %d\n", ret);
+			goto err;
+		}
+		gov = DEVFREQ_GOV_SIMPLE_ONDEMAND;
+	}
+
 	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
 						gov, NULL);
 	if (IS_ERR(priv->devfreq)) {
 		ret = PTR_ERR(priv->devfreq);
 		dev_err(dev, "failed to add devfreq device: %d\n", ret);
@@ -353,10 +483,12 @@ static int imx_ddrc_probe(struct platform_device *pdev)
 	}
 
 	return 0;
 
 err:
+	imx_ddrc_perf_disable(priv);
+	platform_device_put(priv->pmu_pdev);
 	dev_pm_opp_of_remove_table(dev);
 	return ret;
 }
 
 static const struct of_device_id imx_ddrc_of_match[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
