Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A3D26219
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CsRtgU8bp2dv4jdCuNwuK5gyVWhf3VugyTDakCsoFpU=; b=EQu2ZAKomTo1di2jvUyAL4XbMw
	Io7digdeMqz8OJ84Wyy71WjpWeTHeAUH+Kg5A+Go/0aPP0TlaYKfItQPJov22wxV+8y5tcSd9BjMq
	/oxitzTe0h1Px72pA45KRd9ITiie2IMJzSHIeXIJG9fc42q7Vjo2yQOg5JliiR1+nTNTcsV3GetBB
	ATMS3VLaPWWlfQkLieVViRKcXmKccklRPGNfZEOW9aLj6pbRQbjYl/co+yfjFkkzkNlRRAEY5c6fD
	8fouXTrh2ry2HjTF2NNjva2LdU1/hEPoVfkesDgkvL1VJs6dvy+RCm1S6MKKcvhSE+nZRo0/ZVOZM
	ORZTrf8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOfp-0003WT-VH; Wed, 22 May 2019 10:40:42 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOap-0004tV-Ah
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:35:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20DB515AB;
 Wed, 22 May 2019 03:35:31 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 1167B3F575; Wed, 22 May 2019 03:35:29 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 10/30] coresight: Rename of_coresight to coresight-platform
Date: Wed, 22 May 2019 11:34:43 +0100
Message-Id: <1558521304-27469-11-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033531_516039_84820D9D 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename the firmware handling file to a more generic
name, in preparation for adding ACPI support. Right now
we only support DT and we have all the platform handling
code in of_coresight.c. Let us rename the file to
coresight-platform.c in order to keep the platform handling
in a single place for DT and the upcoming ACPI support.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/Makefile             |   3 +-
 drivers/hwtracing/coresight/coresight-platform.c | 298 +++++++++++++++++++++++
 drivers/hwtracing/coresight/of_coresight.c       | 297 ----------------------
 3 files changed, 299 insertions(+), 299 deletions(-)
 create mode 100644 drivers/hwtracing/coresight/coresight-platform.c
 delete mode 100644 drivers/hwtracing/coresight/of_coresight.c

diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
index 3b435aa..3c0ac42 100644
--- a/drivers/hwtracing/coresight/Makefile
+++ b/drivers/hwtracing/coresight/Makefile
@@ -2,8 +2,7 @@
 #
 # Makefile for CoreSight drivers.
 #
-obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o
-obj-$(CONFIG_OF) += of_coresight.o
+obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o coresight-platform.o
 obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc.o \
 					     coresight-tmc-etf.o \
 					     coresight-tmc-etr.o
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
new file mode 100644
index 0000000..514cc2b
--- /dev/null
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -0,0 +1,298 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2012, The Linux Foundation. All rights reserved.
+ */
+
+#include <linux/types.h>
+#include <linux/err.h>
+#include <linux/slab.h>
+#include <linux/clk.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_graph.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/amba/bus.h>
+#include <linux/coresight.h>
+#include <linux/cpumask.h>
+#include <asm/smp_plat.h>
+
+#ifdef CONFIG_OF
+static int of_dev_node_match(struct device *dev, void *data)
+{
+	return dev->of_node == data;
+}
+
+static struct device *
+of_coresight_get_endpoint_device(struct device_node *endpoint)
+{
+	struct device *dev = NULL;
+
+	/*
+	 * If we have a non-configurable replicator, it will be found on the
+	 * platform bus.
+	 */
+	dev = bus_find_device(&platform_bus_type, NULL,
+			      endpoint, of_dev_node_match);
+	if (dev)
+		return dev;
+
+	/*
+	 * We have a configurable component - circle through the AMBA bus
+	 * looking for the device that matches the endpoint node.
+	 */
+	return bus_find_device(&amba_bustype, NULL,
+			       endpoint, of_dev_node_match);
+}
+
+static inline bool of_coresight_legacy_ep_is_input(struct device_node *ep)
+{
+	return of_property_read_bool(ep, "slave-mode");
+}
+
+static void of_coresight_get_ports_legacy(const struct device_node *node,
+					  int *nr_inport, int *nr_outport)
+{
+	struct device_node *ep = NULL;
+	int in = 0, out = 0;
+
+	do {
+		ep = of_graph_get_next_endpoint(node, ep);
+		if (!ep)
+			break;
+
+		if (of_coresight_legacy_ep_is_input(ep))
+			in++;
+		else
+			out++;
+
+	} while (ep);
+
+	*nr_inport = in;
+	*nr_outport = out;
+}
+
+static struct device_node *of_coresight_get_port_parent(struct device_node *ep)
+{
+	struct device_node *parent = of_graph_get_port_parent(ep);
+
+	/*
+	 * Skip one-level up to the real device node, if we
+	 * are using the new bindings.
+	 */
+	if (of_node_name_eq(parent, "in-ports") ||
+	    of_node_name_eq(parent, "out-ports"))
+		parent = of_get_next_parent(parent);
+
+	return parent;
+}
+
+static inline struct device_node *
+of_coresight_get_input_ports_node(const struct device_node *node)
+{
+	return of_get_child_by_name(node, "in-ports");
+}
+
+static inline struct device_node *
+of_coresight_get_output_ports_node(const struct device_node *node)
+{
+	return of_get_child_by_name(node, "out-ports");
+}
+
+static inline int
+of_coresight_count_ports(struct device_node *port_parent)
+{
+	int i = 0;
+	struct device_node *ep = NULL;
+
+	while ((ep = of_graph_get_next_endpoint(port_parent, ep)))
+		i++;
+	return i;
+}
+
+static void of_coresight_get_ports(const struct device_node *node,
+				   int *nr_inport, int *nr_outport)
+{
+	struct device_node *input_ports = NULL, *output_ports = NULL;
+
+	input_ports = of_coresight_get_input_ports_node(node);
+	output_ports = of_coresight_get_output_ports_node(node);
+
+	if (input_ports || output_ports) {
+		if (input_ports) {
+			*nr_inport = of_coresight_count_ports(input_ports);
+			of_node_put(input_ports);
+		}
+		if (output_ports) {
+			*nr_outport = of_coresight_count_ports(output_ports);
+			of_node_put(output_ports);
+		}
+	} else {
+		/* Fall back to legacy DT bindings parsing */
+		of_coresight_get_ports_legacy(node, nr_inport, nr_outport);
+	}
+}
+
+static int of_coresight_alloc_memory(struct device *dev,
+			struct coresight_platform_data *pdata)
+{
+	if (pdata->nr_outport) {
+		pdata->conns = devm_kzalloc(dev, pdata->nr_outport *
+					    sizeof(*pdata->conns),
+					    GFP_KERNEL);
+		if (!pdata->conns)
+			return -ENOMEM;
+	}
+
+	return 0;
+}
+
+int of_coresight_get_cpu(const struct device_node *node)
+{
+	int cpu;
+	struct device_node *dn;
+
+	dn = of_parse_phandle(node, "cpu", 0);
+	/* Affinity defaults to CPU0 */
+	if (!dn)
+		return 0;
+	cpu = of_cpu_node_to_id(dn);
+	of_node_put(dn);
+
+	/* Affinity to CPU0 if no cpu nodes are found */
+	return (cpu < 0) ? 0 : cpu;
+}
+EXPORT_SYMBOL_GPL(of_coresight_get_cpu);
+
+/*
+ * of_coresight_parse_endpoint : Parse the given output endpoint @ep
+ * and fill the connection information in @conn
+ *
+ * Parses the local port, remote device name and the remote port.
+ *
+ * Returns :
+ *	 1	- If the parsing is successful and a connection record
+ *		  was created for an output connection.
+ *	 0	- If the parsing completed without any fatal errors.
+ *	-Errno	- Fatal error, abort the scanning.
+ */
+static int of_coresight_parse_endpoint(struct device *dev,
+				       struct device_node *ep,
+				       struct coresight_connection *conn)
+{
+	int ret = 0;
+	struct of_endpoint endpoint, rendpoint;
+	struct device_node *rparent = NULL;
+	struct device_node *rep = NULL;
+	struct device *rdev = NULL;
+
+	do {
+		/* Parse the local port details */
+		if (of_graph_parse_endpoint(ep, &endpoint))
+			break;
+		/*
+		 * Get a handle on the remote endpoint and the device it is
+		 * attached to.
+		 */
+		rep = of_graph_get_remote_endpoint(ep);
+		if (!rep)
+			break;
+		rparent = of_coresight_get_port_parent(rep);
+		if (!rparent)
+			break;
+		if (of_graph_parse_endpoint(rep, &rendpoint))
+			break;
+
+		/* If the remote device is not available, defer probing */
+		rdev = of_coresight_get_endpoint_device(rparent);
+		if (!rdev) {
+			ret = -EPROBE_DEFER;
+			break;
+		}
+
+		conn->outport = endpoint.port;
+		conn->child_name = devm_kstrdup(dev,
+						dev_name(rdev),
+						GFP_KERNEL);
+		conn->child_port = rendpoint.port;
+		/* Connection record updated */
+		ret = 1;
+	} while (0);
+
+	of_node_put(rparent);
+	of_node_put(rep);
+	put_device(rdev);
+
+	return ret;
+}
+
+struct coresight_platform_data *
+of_get_coresight_platform_data(struct device *dev,
+			       const struct device_node *node)
+{
+	int ret = 0;
+	struct coresight_platform_data *pdata;
+	struct coresight_connection *conn;
+	struct device_node *ep = NULL;
+	const struct device_node *parent = NULL;
+	bool legacy_binding = false;
+
+	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
+	if (!pdata)
+		return ERR_PTR(-ENOMEM);
+
+	/* Use device name as sysfs handle */
+	pdata->name = dev_name(dev);
+	pdata->cpu = of_coresight_get_cpu(node);
+
+	/* Get the number of input and output port for this component */
+	of_coresight_get_ports(node, &pdata->nr_inport, &pdata->nr_outport);
+
+	/* If there are no output connections, we are done */
+	if (!pdata->nr_outport)
+		return pdata;
+
+	ret = of_coresight_alloc_memory(dev, pdata);
+	if (ret)
+		return ERR_PTR(ret);
+
+	parent = of_coresight_get_output_ports_node(node);
+	/*
+	 * If the DT uses obsoleted bindings, the ports are listed
+	 * under the device and we need to filter out the input
+	 * ports.
+	 */
+	if (!parent) {
+		legacy_binding = true;
+		parent = node;
+		dev_warn_once(dev, "Uses obsolete Coresight DT bindings\n");
+	}
+
+	conn = pdata->conns;
+
+	/* Iterate through each output port to discover topology */
+	while ((ep = of_graph_get_next_endpoint(parent, ep))) {
+		/*
+		 * Legacy binding mixes input/output ports under the
+		 * same parent. So, skip the input ports if we are dealing
+		 * with legacy binding, as they processed with their
+		 * connected output ports.
+		 */
+		if (legacy_binding && of_coresight_legacy_ep_is_input(ep))
+			continue;
+
+		ret = of_coresight_parse_endpoint(dev, ep, conn);
+		switch (ret) {
+		case 1:
+			conn++;		/* Fall through */
+		case 0:
+			break;
+		default:
+			return ERR_PTR(ret);
+		}
+	}
+
+	return pdata;
+}
+EXPORT_SYMBOL_GPL(of_get_coresight_platform_data);
+#endif
diff --git a/drivers/hwtracing/coresight/of_coresight.c b/drivers/hwtracing/coresight/of_coresight.c
deleted file mode 100644
index 7045930..0000000
--- a/drivers/hwtracing/coresight/of_coresight.c
+++ /dev/null
@@ -1,297 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Copyright (c) 2012, The Linux Foundation. All rights reserved.
- */
-
-#include <linux/types.h>
-#include <linux/err.h>
-#include <linux/slab.h>
-#include <linux/clk.h>
-#include <linux/of.h>
-#include <linux/of_address.h>
-#include <linux/of_graph.h>
-#include <linux/of_platform.h>
-#include <linux/platform_device.h>
-#include <linux/amba/bus.h>
-#include <linux/coresight.h>
-#include <linux/cpumask.h>
-#include <asm/smp_plat.h>
-
-
-static int of_dev_node_match(struct device *dev, void *data)
-{
-	return dev->of_node == data;
-}
-
-static struct device *
-of_coresight_get_endpoint_device(struct device_node *endpoint)
-{
-	struct device *dev = NULL;
-
-	/*
-	 * If we have a non-configurable replicator, it will be found on the
-	 * platform bus.
-	 */
-	dev = bus_find_device(&platform_bus_type, NULL,
-			      endpoint, of_dev_node_match);
-	if (dev)
-		return dev;
-
-	/*
-	 * We have a configurable component - circle through the AMBA bus
-	 * looking for the device that matches the endpoint node.
-	 */
-	return bus_find_device(&amba_bustype, NULL,
-			       endpoint, of_dev_node_match);
-}
-
-static inline bool of_coresight_legacy_ep_is_input(struct device_node *ep)
-{
-	return of_property_read_bool(ep, "slave-mode");
-}
-
-static void of_coresight_get_ports_legacy(const struct device_node *node,
-					  int *nr_inport, int *nr_outport)
-{
-	struct device_node *ep = NULL;
-	int in = 0, out = 0;
-
-	do {
-		ep = of_graph_get_next_endpoint(node, ep);
-		if (!ep)
-			break;
-
-		if (of_coresight_legacy_ep_is_input(ep))
-			in++;
-		else
-			out++;
-
-	} while (ep);
-
-	*nr_inport = in;
-	*nr_outport = out;
-}
-
-static struct device_node *of_coresight_get_port_parent(struct device_node *ep)
-{
-	struct device_node *parent = of_graph_get_port_parent(ep);
-
-	/*
-	 * Skip one-level up to the real device node, if we
-	 * are using the new bindings.
-	 */
-	if (of_node_name_eq(parent, "in-ports") ||
-	    of_node_name_eq(parent, "out-ports"))
-		parent = of_get_next_parent(parent);
-
-	return parent;
-}
-
-static inline struct device_node *
-of_coresight_get_input_ports_node(const struct device_node *node)
-{
-	return of_get_child_by_name(node, "in-ports");
-}
-
-static inline struct device_node *
-of_coresight_get_output_ports_node(const struct device_node *node)
-{
-	return of_get_child_by_name(node, "out-ports");
-}
-
-static inline int
-of_coresight_count_ports(struct device_node *port_parent)
-{
-	int i = 0;
-	struct device_node *ep = NULL;
-
-	while ((ep = of_graph_get_next_endpoint(port_parent, ep)))
-		i++;
-	return i;
-}
-
-static void of_coresight_get_ports(const struct device_node *node,
-				   int *nr_inport, int *nr_outport)
-{
-	struct device_node *input_ports = NULL, *output_ports = NULL;
-
-	input_ports = of_coresight_get_input_ports_node(node);
-	output_ports = of_coresight_get_output_ports_node(node);
-
-	if (input_ports || output_ports) {
-		if (input_ports) {
-			*nr_inport = of_coresight_count_ports(input_ports);
-			of_node_put(input_ports);
-		}
-		if (output_ports) {
-			*nr_outport = of_coresight_count_ports(output_ports);
-			of_node_put(output_ports);
-		}
-	} else {
-		/* Fall back to legacy DT bindings parsing */
-		of_coresight_get_ports_legacy(node, nr_inport, nr_outport);
-	}
-}
-
-static int of_coresight_alloc_memory(struct device *dev,
-			struct coresight_platform_data *pdata)
-{
-	if (pdata->nr_outport) {
-		pdata->conns = devm_kzalloc(dev, pdata->nr_outport *
-					    sizeof(*pdata->conns),
-					    GFP_KERNEL);
-		if (!pdata->conns)
-			return -ENOMEM;
-	}
-
-	return 0;
-}
-
-int of_coresight_get_cpu(const struct device_node *node)
-{
-	int cpu;
-	struct device_node *dn;
-
-	dn = of_parse_phandle(node, "cpu", 0);
-	/* Affinity defaults to CPU0 */
-	if (!dn)
-		return 0;
-	cpu = of_cpu_node_to_id(dn);
-	of_node_put(dn);
-
-	/* Affinity to CPU0 if no cpu nodes are found */
-	return (cpu < 0) ? 0 : cpu;
-}
-EXPORT_SYMBOL_GPL(of_coresight_get_cpu);
-
-/*
- * of_coresight_parse_endpoint : Parse the given output endpoint @ep
- * and fill the connection information in @conn
- *
- * Parses the local port, remote device name and the remote port.
- *
- * Returns :
- *	 1	- If the parsing is successful and a connection record
- *		  was created for an output connection.
- *	 0	- If the parsing completed without any fatal errors.
- *	-Errno	- Fatal error, abort the scanning.
- */
-static int of_coresight_parse_endpoint(struct device *dev,
-				       struct device_node *ep,
-				       struct coresight_connection *conn)
-{
-	int ret = 0;
-	struct of_endpoint endpoint, rendpoint;
-	struct device_node *rparent = NULL;
-	struct device_node *rep = NULL;
-	struct device *rdev = NULL;
-
-	do {
-		/* Parse the local port details */
-		if (of_graph_parse_endpoint(ep, &endpoint))
-			break;
-		/*
-		 * Get a handle on the remote endpoint and the device it is
-		 * attached to.
-		 */
-		rep = of_graph_get_remote_endpoint(ep);
-		if (!rep)
-			break;
-		rparent = of_coresight_get_port_parent(rep);
-		if (!rparent)
-			break;
-		if (of_graph_parse_endpoint(rep, &rendpoint))
-			break;
-
-		/* If the remote device is not available, defer probing */
-		rdev = of_coresight_get_endpoint_device(rparent);
-		if (!rdev) {
-			ret = -EPROBE_DEFER;
-			break;
-		}
-
-		conn->outport = endpoint.port;
-		conn->child_name = devm_kstrdup(dev,
-						dev_name(rdev),
-						GFP_KERNEL);
-		conn->child_port = rendpoint.port;
-		/* Connection record updated */
-		ret = 1;
-	} while (0);
-
-	of_node_put(rparent);
-	of_node_put(rep);
-	put_device(rdev);
-
-	return ret;
-}
-
-struct coresight_platform_data *
-of_get_coresight_platform_data(struct device *dev,
-			       const struct device_node *node)
-{
-	int ret = 0;
-	struct coresight_platform_data *pdata;
-	struct coresight_connection *conn;
-	struct device_node *ep = NULL;
-	const struct device_node *parent = NULL;
-	bool legacy_binding = false;
-
-	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
-	if (!pdata)
-		return ERR_PTR(-ENOMEM);
-
-	/* Use device name as sysfs handle */
-	pdata->name = dev_name(dev);
-	pdata->cpu = of_coresight_get_cpu(node);
-
-	/* Get the number of input and output port for this component */
-	of_coresight_get_ports(node, &pdata->nr_inport, &pdata->nr_outport);
-
-	/* If there are no output connections, we are done */
-	if (!pdata->nr_outport)
-		return pdata;
-
-	ret = of_coresight_alloc_memory(dev, pdata);
-	if (ret)
-		return ERR_PTR(ret);
-
-	parent = of_coresight_get_output_ports_node(node);
-	/*
-	 * If the DT uses obsoleted bindings, the ports are listed
-	 * under the device and we need to filter out the input
-	 * ports.
-	 */
-	if (!parent) {
-		legacy_binding = true;
-		parent = node;
-		dev_warn_once(dev, "Uses obsolete Coresight DT bindings\n");
-	}
-
-	conn = pdata->conns;
-
-	/* Iterate through each output port to discover topology */
-	while ((ep = of_graph_get_next_endpoint(parent, ep))) {
-		/*
-		 * Legacy binding mixes input/output ports under the
-		 * same parent. So, skip the input ports if we are dealing
-		 * with legacy binding, as they processed with their
-		 * connected output ports.
-		 */
-		if (legacy_binding && of_coresight_legacy_ep_is_input(ep))
-			continue;
-
-		ret = of_coresight_parse_endpoint(dev, ep, conn);
-		switch (ret) {
-		case 1:
-			conn++;		/* Fall through */
-		case 0:
-			break;
-		default:
-			return ERR_PTR(ret);
-		}
-	}
-
-	return pdata;
-}
-EXPORT_SYMBOL_GPL(of_get_coresight_platform_data);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
