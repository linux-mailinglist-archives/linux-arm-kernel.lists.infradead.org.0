Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0772319F57D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xfi2i9cSrfUAwRU/UeTuKaOn04KwdEC6IYXzpestbXw=; b=RtVTnx9obSlF+D4K4t5GgI1mmF
	l4CCqfN8BUnFZpvczwTQNB1JpyRbFjEliNl+oBTMXdBCWj1eJtyXIKfhsw5x2eOH4sbigrkFRwU/N
	kVF2pRVKOpxvGFBpZwur+zwpPIJ6vsScHkBk5CxxAFGbYOmldpAK9nBYo7/qw7sZXzlfASPfa8tjY
	EfB7lkWGjU3BQfWu33jQA8amcYbwJZAeDW8Jy+AR+d0JwrUGIr36lkX4r/bpYh2tINMkX6ko2rR9v
	gSySo4HwNXDF1aPSoAlt75dOMIyd1bTqMJw4rUC+T9eONiyS3LtJpppdoHCfg8999sxZCD+pyUxrT
	vxSh0VCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQUZ-0004N4-42; Mon, 06 Apr 2020 12:04:39 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQTN-0003Mg-Cr
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:03:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 12DA8200D2F;
 Mon,  6 Apr 2020 14:03:24 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 03CF7200D2A;
 Mon,  6 Apr 2020 14:03:24 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 479C7204E6;
 Mon,  6 Apr 2020 14:03:22 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v3 4/8] interconnect: Add imx core driver
Date: Mon,  6 Apr 2020 15:03:09 +0300
Message-Id: <35920e673df6c04cbbb7d877a7d4ba25fd91a784.1586174566.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1586174566.git.leonard.crestez@nxp.com>
References: <cover.1586174566.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1586174566.git.leonard.crestez@nxp.com>
References: <cover.1586174566.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_050325_871721_B4336E5E 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for i.MX SoC family to interconnect framework.

Platform drivers can describe the interconnect graph and several
adjustment knobs where icc node bandwidth is converted to a
DEV_PM_QOS_MIN_FREQUENCY request.

The interconnect provider is probed through the main NOC device and
other adjustable nodes on the same graph are found from a
fsl,scalable-nodes phandle array property.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Tested-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 drivers/interconnect/Kconfig      |   1 +
 drivers/interconnect/Makefile     |   1 +
 drivers/interconnect/imx/Kconfig  |   5 +
 drivers/interconnect/imx/Makefile |   3 +
 drivers/interconnect/imx/imx.c    | 284 ++++++++++++++++++++++++++++++
 drivers/interconnect/imx/imx.h    |  61 +++++++
 6 files changed, 355 insertions(+)
 create mode 100644 drivers/interconnect/imx/Kconfig
 create mode 100644 drivers/interconnect/imx/Makefile
 create mode 100644 drivers/interconnect/imx/imx.c
 create mode 100644 drivers/interconnect/imx/imx.h

diff --git a/drivers/interconnect/Kconfig b/drivers/interconnect/Kconfig
index bfa4ca3ab7a9..6fea3605f4a8 100644
--- a/drivers/interconnect/Kconfig
+++ b/drivers/interconnect/Kconfig
@@ -9,8 +9,9 @@ menuconfig INTERCONNECT
 
 	  If unsure, say no.
 
 if INTERCONNECT
 
+source "drivers/interconnect/imx/Kconfig"
 source "drivers/interconnect/qcom/Kconfig"
 
 endif
diff --git a/drivers/interconnect/Makefile b/drivers/interconnect/Makefile
index 725029ae7a2c..4825c287ca13 100644
--- a/drivers/interconnect/Makefile
+++ b/drivers/interconnect/Makefile
@@ -2,6 +2,7 @@
 
 CFLAGS_core.o				:= -I$(src)
 icc-core-objs				:= core.o
 
 obj-$(CONFIG_INTERCONNECT)		+= icc-core.o
+obj-$(CONFIG_INTERCONNECT_IMX)		+= imx/
 obj-$(CONFIG_INTERCONNECT_QCOM)		+= qcom/
diff --git a/drivers/interconnect/imx/Kconfig b/drivers/interconnect/imx/Kconfig
new file mode 100644
index 000000000000..f39336f8d603
--- /dev/null
+++ b/drivers/interconnect/imx/Kconfig
@@ -0,0 +1,5 @@
+config INTERCONNECT_IMX
+	tristate "i.MX interconnect drivers"
+	depends on ARCH_MXC || COMPILE_TEST
+	help
+	  Generic interconnect drivers for i.MX SOCs
diff --git a/drivers/interconnect/imx/Makefile b/drivers/interconnect/imx/Makefile
new file mode 100644
index 000000000000..86ae0bd28d8c
--- /dev/null
+++ b/drivers/interconnect/imx/Makefile
@@ -0,0 +1,3 @@
+imx-interconnect-objs			:= imx.o
+
+obj-$(CONFIG_INTERCONNECT_IMX)		+= imx-interconnect.o
diff --git a/drivers/interconnect/imx/imx.c b/drivers/interconnect/imx/imx.c
new file mode 100644
index 000000000000..6884212511f0
--- /dev/null
+++ b/drivers/interconnect/imx/imx.c
@@ -0,0 +1,284 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Interconnect framework driver for i.MX SoC
+ *
+ * Copyright (c) 2019, BayLibre
+ * Copyright (c) 2019-2020, NXP
+ * Author: Alexandre Bailon <abailon@baylibre.com>
+ * Author: Leonard Crestez <leonard.crestez@nxp.com>
+ */
+
+#include <linux/device.h>
+#include <linux/interconnect-provider.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/pm_qos.h>
+
+#include "imx.h"
+
+/* private icc_node data */
+struct imx_icc_node {
+	const struct imx_icc_node_desc *desc;
+	struct device *qos_dev;
+	struct dev_pm_qos_request qos_req;
+};
+
+static int imx_icc_node_set(struct icc_node *node)
+{
+	struct device *dev = node->provider->dev;
+	struct imx_icc_node *node_data = node->data;
+	u64 freq;
+
+	if (!node_data->qos_dev)
+		return 0;
+
+	freq = (node->avg_bw + node->peak_bw) * node_data->desc->adj->bw_mul;
+	do_div(freq, node_data->desc->adj->bw_div);
+	dev_dbg(dev, "node %s device %s avg_bw %ukBps peak_bw %ukBps min_freq %llukHz\n",
+		node->name, dev_name(node_data->qos_dev),
+		node->avg_bw, node->peak_bw, freq);
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
+/* imx_icc_node_destroy() - Destroy an imx icc_node, including private data */
+static void imx_icc_node_destroy(struct icc_node *node)
+{
+	struct imx_icc_node *node_data = node->data;
+	int ret;
+
+	if (dev_pm_qos_request_active(&node_data->qos_req)) {
+		ret = dev_pm_qos_remove_request(&node_data->qos_req);
+		if (ret)
+			dev_warn(node->provider->dev,
+				 "failed to remove qos request for %s\n",
+				 dev_name(node_data->qos_dev));
+	}
+
+	put_device(node_data->qos_dev);
+	icc_node_del(node);
+	icc_node_destroy(node->id);
+}
+
+static int imx_icc_node_init_qos(struct icc_provider *provider,
+				 struct icc_node *node)
+{
+	struct imx_icc_node *node_data = node->data;
+	const struct imx_icc_node_adj_desc *adj = node_data->desc->adj;
+	struct device *dev = provider->dev;
+	struct device_node *dn = NULL;
+	struct platform_device *pdev;
+
+	if (adj->main_noc) {
+		node_data->qos_dev = dev;
+		dev_dbg(dev, "icc node %s[%d] is main noc itself\n",
+			node->name, node->id);
+	} else {
+		dn = of_parse_phandle(dev->of_node, adj->phandle_name, 0);
+		if (IS_ERR(dn)) {
+			dev_warn(dev, "Failed to parse %s: %ld\n",
+				 adj->phandle_name, PTR_ERR(dn));
+			return PTR_ERR(dn);
+		}
+		/* Allow scaling to be disabled on a per-node basis */
+		if (!dn || !of_device_is_available(dn)) {
+			dev_warn(dev, "Missing property %s, skip scaling %s\n",
+				 adj->phandle_name, node->name);
+			return 0;
+		}
+
+		pdev = of_find_device_by_node(dn);
+		of_node_put(dn);
+		if (!pdev) {
+			dev_warn(dev, "node %s[%d] missing device for %pOF\n",
+				 node->name, node->id, dn);
+			return -EPROBE_DEFER;
+		}
+		node_data->qos_dev = &pdev->dev;
+		dev_dbg(dev, "node %s[%d] has device node %pOF\n",
+			node->name, node->id, dn);
+	}
+
+	return dev_pm_qos_add_request(node_data->qos_dev,
+				      &node_data->qos_req,
+				      DEV_PM_QOS_MIN_FREQUENCY, 0);
+}
+
+static struct icc_node *imx_icc_node_add(struct icc_provider *provider,
+					 const struct imx_icc_node_desc *node_desc)
+{
+	struct device *dev = provider->dev;
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
+			node_desc->name, node_desc->id);
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
+		ret = imx_icc_node_init_qos(provider, node);
+		if (ret < 0) {
+			imx_icc_node_destroy(node);
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
+	list_for_each_entry_safe(node, tmp, &provider->nodes, node_list)
+		imx_icc_node_destroy(node);
+}
+
+static int imx_icc_register_nodes(struct icc_provider *provider,
+				  const struct imx_icc_node_desc *descs,
+				  int count)
+{
+	struct icc_onecell_data *provider_data = provider->data;
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
+					node_desc->name, ret);
+			goto err;
+		}
+		provider_data->nodes[node->id] = node;
+
+		for (j = 0; j < node_desc->num_links; j++) {
+			ret = icc_link_create(node, node_desc->links[j]);
+			if (ret) {
+				dev_err(provider->dev, "failed to link node %d to %d: %d\n",
+					node->id, node_desc->links[j], ret);
+				goto err;
+			}
+		}
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
+static int get_max_node_id(struct imx_icc_node_desc *nodes, int nodes_count)
+{
+	int i, ret = 0;
+
+	for (i = 0; i < nodes_count; ++i)
+		if (nodes[i].id > ret)
+			ret = nodes[i].id;
+
+	return ret;
+}
+
+int imx_icc_register(struct platform_device *pdev,
+		     struct imx_icc_node_desc *nodes, int nodes_count)
+{
+	struct device *dev = &pdev->dev;
+	struct icc_onecell_data *data;
+	struct icc_provider *provider;
+	int max_node_id;
+	int ret;
+
+	/* icc_onecell_data is indexed by node_id, unlike nodes param */
+	max_node_id = get_max_node_id(nodes, nodes_count);
+	data = devm_kzalloc(dev, struct_size(data, nodes, max_node_id),
+			    GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+	data->num_nodes = max_node_id;
+
+	provider = devm_kzalloc(dev, sizeof(*provider), GFP_KERNEL);
+	if (!provider)
+		return -ENOMEM;
+	provider->set = imx_icc_set;
+	provider->aggregate = icc_std_aggregate;
+	provider->xlate = of_icc_xlate_onecell;
+	provider->data = data;
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
+	int ret;
+
+	imx_icc_unregister_nodes(provider);
+
+	ret = icc_provider_del(provider);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(imx_icc_unregister);
+
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/interconnect/imx/imx.h b/drivers/interconnect/imx/imx.h
new file mode 100644
index 000000000000..75da51076c68
--- /dev/null
+++ b/drivers/interconnect/imx/imx.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Interconnect framework driver for i.MX SoC
+ *
+ * Copyright (c) 2019, BayLibre
+ * Copyright (c) 2019-2020, NXP
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
+ * struct imx_icc_node_adj - Describe a dynamic adjustable node
+ */
+struct imx_icc_node_adj_desc {
+	unsigned int bw_mul, bw_div;
+	const char *phandle_name;
+	bool main_noc;
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
+	DEFINE_BUS_INTERCONNECT(_name, _id, NULL, _dest_id)
+
+#define DEFINE_BUS_SLAVE(_name, _id, _adj)				\
+	DEFINE_BUS_INTERCONNECT(_name, _id, _adj)
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
