Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB4AEBA06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 23:54:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZliNnOaZ+Hy9xvBcrh4Cvxl3nmPLzQyYT4qfAY8GzFY=; b=bi7bfh9PCPaVO16XJvIxzzJMWP
	uIjDNudKWK7DsJCKI7gzd6MNAXQPo52ql9WvLINqUuMfzHgSVDGgkWT5aciQnbOKf6U3VsnAduEzR
	9d9z0moUyhnjMddjF5wSFMiF/fGGvNcqpEET6AWZOHDZsk2D+1EJYUP5n6AgfRnggcrFB28iMNBde
	a+2uDGS6wbURbkR8aX1WY8Vh4sMdTcTKnGvVjYg4c1Y0WiYRJGzFcnNcmiL1jVmapYxpTjL2bF40Z
	2xjyu6dR2lYRsjzKFo35mwvh17U6VNBaacyEB8eee5KdU1z3KL9UP+I5fHMYZS6a0ZF5VllAUopcs
	dybVuN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQJKS-0002i1-TT; Thu, 31 Oct 2019 22:54:08 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQJIm-0001Y5-UE
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 22:52:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8CA60200130;
 Thu, 31 Oct 2019 23:52:23 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6FA4C2000BB;
 Thu, 31 Oct 2019 23:52:23 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 6959D205E9;
 Thu, 31 Oct 2019 23:52:22 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH RFC v5 05/10] interconnect: Add imx core driver
Date: Fri,  1 Nov 2019 00:52:04 +0200
Message-Id: <3f8b65aa7a7eabaedeee27d5bcf8220982ac3597.1572562150.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572562150.git.leonard.crestez@nxp.com>
References: <cover.1572562150.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1572562150.git.leonard.crestez@nxp.com>
References: <cover.1572562150.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_155225_413640_3ADFA06E 
X-CRM114-Status: GOOD (  19.44  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Alexandre Bailon <abailon@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for i.MX SoC family to interconnect framework.

Platform drivers can describe the interconnect graph and several
adjustment knobs where icc node bandwidth is converted to a
DEV_PM_QOS_MIN_FREQUENCY request.

The adjustable nodes are found based on an "interconnect-node-id"
property by scanning the entire device tree.

The interconnect provider doesn't need an virtual OF node, instead those
same adjustable nodes are registered as proxies which xlate to the
platform-level provider.

The platform device for the interconnect needs to be registered from a
SOC driver (similar to cpufreq).

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/interconnect/Kconfig      |   1 +
 drivers/interconnect/Makefile     |   1 +
 drivers/interconnect/imx/Kconfig  |   5 +
 drivers/interconnect/imx/Makefile |   1 +
 drivers/interconnect/imx/imx.c    | 273 ++++++++++++++++++++++++++++++
 drivers/interconnect/imx/imx.h    |  60 +++++++
 6 files changed, 341 insertions(+)
 create mode 100644 drivers/interconnect/imx/Kconfig
 create mode 100644 drivers/interconnect/imx/Makefile
 create mode 100644 drivers/interconnect/imx/imx.c
 create mode 100644 drivers/interconnect/imx/imx.h

diff --git a/drivers/interconnect/Kconfig b/drivers/interconnect/Kconfig
index b6ea8f0a6122..f57e77b8731c 100644
--- a/drivers/interconnect/Kconfig
+++ b/drivers/interconnect/Kconfig
@@ -10,7 +10,8 @@ menuconfig INTERCONNECT
 	  If unsure, say no.
 
 if INTERCONNECT
 
 source "drivers/interconnect/qcom/Kconfig"
+source "drivers/interconnect/imx/Kconfig"
 
 endif
diff --git a/drivers/interconnect/Makefile b/drivers/interconnect/Makefile
index 28f2ab0824d5..20a13b7eb37f 100644
--- a/drivers/interconnect/Makefile
+++ b/drivers/interconnect/Makefile
@@ -2,5 +2,6 @@
 
 icc-core-objs				:= core.o
 
 obj-$(CONFIG_INTERCONNECT)		+= icc-core.o
 obj-$(CONFIG_INTERCONNECT_QCOM)		+= qcom/
+obj-$(CONFIG_INTERCONNECT_IMX)		+= imx/
diff --git a/drivers/interconnect/imx/Kconfig b/drivers/interconnect/imx/Kconfig
new file mode 100644
index 000000000000..7d81d3c83a61
--- /dev/null
+++ b/drivers/interconnect/imx/Kconfig
@@ -0,0 +1,5 @@
+config INTERCONNECT_IMX
+	bool "i.MX interconnect drivers"
+	depends on ARCH_MXC || COMPILE_TEST
+	help
+	  Generic interconnect driver for i.MX SOCs
diff --git a/drivers/interconnect/imx/Makefile b/drivers/interconnect/imx/Makefile
new file mode 100644
index 000000000000..bb92fd9fe4a5
--- /dev/null
+++ b/drivers/interconnect/imx/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_INTERCONNECT_IMX) += imx.o
diff --git a/drivers/interconnect/imx/imx.c b/drivers/interconnect/imx/imx.c
new file mode 100644
index 000000000000..7d248e01dcf0
--- /dev/null
+++ b/drivers/interconnect/imx/imx.c
@@ -0,0 +1,273 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Interconnect framework driver for i.MX SoC
+ *
+ * Copyright (c) 2019, BayLibre
+ * Copyright (c) 2019, NXP
+ * Author: Alexandre Bailon <abailon@baylibre.com>
+ * Author: Leonard Crestez <leonard.crestez@nxp.com>
+ */
+
+#include <linux/devfreq.h>
+#include <linux/device.h>
+#include <linux/interconnect-provider.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/pm_qos.h>
+
+#include "imx.h"
+
+/* private icc_provider data */
+struct imx_icc_provider {
+	struct device *dev;
+};
+
+/* private icc_node data */
+struct imx_icc_node {
+	const struct imx_icc_node_desc *desc;
+	struct devfreq *devfreq;
+	struct dev_pm_qos_request qos_req;
+};
+
+static int imx_icc_aggregate(struct icc_node *node, u32 tag,
+			     u32 avg_bw, u32 peak_bw,
+			     u32 *agg_avg, u32 *agg_peak)
+{
+	*agg_avg += avg_bw;
+	*agg_peak = max(*agg_peak, peak_bw);
+
+	return 0;
+}
+
+static struct icc_node *imx_icc_xlate(struct of_phandle_args *spec, void *data)
+{
+	struct imx_icc_provider *desc = data;
+	struct icc_provider *provider = dev_get_drvdata(desc->dev);
+	unsigned int id = spec->args[0];
+	struct icc_node *node;
+
+	list_for_each_entry(node, &provider->nodes, node_list)
+		if (node->id == id)
+			return node;
+
+	return ERR_PTR(-EINVAL);
+}
+
+static int imx_icc_node_set(struct icc_node *node)
+{
+	struct device *dev = node->provider->dev;
+	struct imx_icc_node *node_data = node->data;
+	u64 freq;
+
+	if (!node_data->devfreq)
+		return 0;
+
+	freq = (node->avg_bw + node->peak_bw) * node_data->desc->adj->bw_mul;
+	do_div(freq, node_data->desc->adj->bw_div);
+	dev_dbg(dev, "node %s device %s avg_bw %ukBps peak_bw %ukBps min_freq %llukHz\n",
+			node->name, dev_name(node_data->devfreq->dev.parent),
+			node->avg_bw, node->peak_bw, freq);
+
+	if (freq > S32_MAX) {
+		dev_err(dev, "%s can't request more than S32_MAX freq\n",
+				node->name);
+		return -ERANGE;
+	}
+
+	dev_pm_qos_update_request(&node_data->qos_req, freq);
+
+	return 0;
+}
+
+static int imx_icc_set(struct icc_node *src, struct icc_node *dst)
+{
+	return imx_icc_node_set(dst);
+}
+
+static int imx_icc_node_init_devfreq(struct device *dev,
+				     struct icc_node *node)
+{
+	struct imx_icc_node *node_data = node->data;
+	struct device_node *dn;
+	u32 node_id;
+	int ret;
+
+	/* Find nodes based on interconnect-node-id property */
+	for_each_node_with_property(dn, "interconnect-node-id") {
+		ret = of_property_read_u32(dn, "interconnect-node-id",
+					   &node_id);
+		if (ret != 0)
+			continue;
+
+		if (node_id == node->id) {
+			of_node_get(dn);
+			break;
+		}
+	}
+
+	if (!dn)
+		return 0;
+
+	dev_info(dev, "node %s[%d] has device node %pOF\n",
+			node->name, node->id, dn);
+	node_data->devfreq = devfreq_get_devfreq_by_node(dn);
+	if (IS_ERR(node_data->devfreq)) {
+		of_node_put(dn);
+		ret = PTR_ERR(node_data->devfreq);
+		dev_err(dev, "failed to fetch devfreq for %s: %d\n",
+				node->name, ret);
+		return ret;
+	}
+
+	of_node_put(dn);
+
+	return dev_pm_qos_add_request(node_data->devfreq->dev.parent,
+				      &node_data->qos_req,
+				      DEV_PM_QOS_MIN_FREQUENCY, 0);
+}
+
+static struct icc_node *imx_icc_node_add(struct icc_provider *provider,
+		const struct imx_icc_node_desc *node_desc)
+{
+	struct imx_icc_provider *provider_data = provider->data;
+	struct device *dev = provider_data->dev;
+	struct imx_icc_node *node_data;
+	struct icc_node *node;
+	int ret;
+
+	node = icc_node_create(node_desc->id);
+	if (IS_ERR(node)) {
+		dev_err(dev, "failed to create node %d\n", node_desc->id);
+		return node;
+	}
+
+	if (node->data) {
+		dev_err(dev, "already created node %s id=%d\n",
+				node_desc->name, node_desc->id);
+		return ERR_PTR(-EEXIST);
+	}
+
+	node_data = devm_kzalloc(dev, sizeof(*node_data), GFP_KERNEL);
+	if (!node_data) {
+		icc_node_destroy(node->id);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	node->name = node_desc->name;
+	node->data = node_data;
+	node_data->desc = node_desc;
+	icc_node_add(node, provider);
+
+	if (node_desc->adj) {
+		ret = imx_icc_node_init_devfreq(dev, node);
+		if (ret < 0) {
+			icc_node_del(node);
+			icc_node_destroy(node->id);
+			return ERR_PTR(ret);
+		}
+	}
+
+	return node;
+}
+
+static void imx_icc_unregister_nodes(struct icc_provider *provider)
+{
+	struct icc_node *node, *tmp;
+
+	list_for_each_entry_safe(node, tmp, &provider->nodes, node_list) {
+		struct imx_icc_node *node_data = node->data;
+
+		icc_node_del(node);
+		icc_node_destroy(node->id);
+		if (dev_pm_qos_request_active(&node_data->qos_req))
+			dev_pm_qos_remove_request(&node_data->qos_req);
+	}
+}
+
+static int imx_icc_register_nodes(struct icc_provider *provider,
+				  const struct imx_icc_node_desc *descs,
+				  int count)
+{
+	int ret;
+	int i;
+
+	for (i = 0; i < count; i++) {
+		struct icc_node *node;
+		const struct imx_icc_node_desc *node_desc = &descs[i];
+		size_t j;
+
+		node = imx_icc_node_add(provider, node_desc);
+		if (IS_ERR(node)) {
+			ret = PTR_ERR(node);
+			if (ret != -EPROBE_DEFER)
+				dev_err(provider->dev, "failed to add %s: %d\n",
+						node_desc->name, ret);
+			goto err;
+		}
+
+		for (j = 0; j < node_desc->num_links; j++)
+			icc_link_create(node, node_desc->links[j]);
+	}
+
+	return 0;
+
+err:
+	imx_icc_unregister_nodes(provider);
+
+	return ret;
+}
+
+int imx_icc_register(struct platform_device *pdev,
+		     struct imx_icc_node_desc *nodes, int nodes_count)
+{
+	struct device *dev = &pdev->dev;
+	struct imx_icc_provider *provider_data;
+	struct icc_provider *provider;
+	int ret;
+
+	provider_data = devm_kzalloc(dev, sizeof(*provider_data), GFP_KERNEL);
+	if (!provider_data)
+		return -ENOMEM;
+	provider_data->dev = dev;
+
+	provider = devm_kzalloc(dev, sizeof(*provider), GFP_KERNEL);
+	if (!provider)
+		return -ENOMEM;
+	provider->set = imx_icc_set;
+	provider->aggregate = imx_icc_aggregate;
+	provider->xlate = imx_icc_xlate;
+	provider->data = provider_data;
+	provider->dev = dev->parent;
+	platform_set_drvdata(pdev, provider);
+
+	ret = icc_provider_add(provider);
+	if (ret) {
+		dev_err(dev, "error adding interconnect provider: %d\n", ret);
+		return ret;
+	}
+
+	ret = imx_icc_register_nodes(provider, nodes, nodes_count);
+	if (ret)
+		goto provider_del;
+
+	pr_info("registered %s\n", pdev->name);
+
+	return 0;
+
+provider_del:
+	icc_provider_del(provider);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(imx_icc_register);
+
+int imx_icc_unregister(struct platform_device *pdev)
+{
+	struct icc_provider *provider = platform_get_drvdata(pdev);
+
+	icc_provider_del(provider);
+	imx_icc_unregister_nodes(provider);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(imx_icc_unregister);
diff --git a/drivers/interconnect/imx/imx.h b/drivers/interconnect/imx/imx.h
new file mode 100644
index 000000000000..9299b8d941f0
--- /dev/null
+++ b/drivers/interconnect/imx/imx.h
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Interconnect framework driver for i.MX SoC
+ *
+ * Copyright (c) 2019, BayLibre
+ * Copyright (c) 2019, NXP
+ * Author: Alexandre Bailon <abailon@baylibre.com>
+ * Author: Leonard Crestez <leonard.crestez@nxp.com>
+ */
+#ifndef __DRIVERS_INTERCONNECT_IMX_H
+#define __DRIVERS_INTERCONNECT_IMX_H
+
+#include <linux/kernel.h>
+
+#define IMX_ICC_MAX_LINKS	4
+
+/*
+ * struct imx_icc_node_adj - Describe a dynamic adjustment knob
+ */
+struct imx_icc_node_adj_desc {
+	unsigned int bw_mul, bw_div;
+};
+
+/*
+ * struct imx_icc_node - Describe an interconnect node
+ * @name: name of the node
+ * @id: an unique id to identify the node
+ * @links: an array of slaves' node id
+ * @num_links: number of id defined in links
+ */
+struct imx_icc_node_desc {
+	const char *name;
+	u16 id;
+	u16 links[IMX_ICC_MAX_LINKS];
+	u16 num_links;
+
+	const struct imx_icc_node_adj_desc *adj;
+};
+
+#define DEFINE_BUS_INTERCONNECT(_name, _id, _adj, ...)			\
+	{								\
+		.id = _id,						\
+		.name = _name,						\
+		.adj = _adj,						\
+		.num_links = ARRAY_SIZE(((int[]){ __VA_ARGS__ })),	\
+		.links = { __VA_ARGS__ },				\
+	}
+
+#define DEFINE_BUS_MASTER(_name, _id, _dest_id)				\
+	DEFINE_BUS_INTERCONNECT(_name, _id, NULL, 1, _dest_id)
+
+#define DEFINE_BUS_SLAVE(_name, _id, _adj)				\
+	DEFINE_BUS_INTERCONNECT(_name, _id, _adj, 0)
+
+int imx_icc_register(struct platform_device *pdev,
+		     struct imx_icc_node_desc *nodes,
+		     int nodes_count);
+int imx_icc_unregister(struct platform_device *pdev);
+
+#endif /* __DRIVERS_INTERCONNECT_IMX_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
