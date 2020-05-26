Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F4A1A7BBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2R+8/2nnRCDccbXzFJMxbS/0Xs4tMTLBJ0bBSd5sd2Q=; b=S7IG+TPtIlAjSU
	ZJGTUugZQNMlETlS0FgAgSooNotXAPHRw274tHtXyO6pPyIKMtAB4Ist35oFC7s0SYaVpud9mqXjJ
	1ZW5Ul+m8ZRp6WWGOBiy3ZixDkd4XXzmpK0hjnJgcy1WYmsk/pGNbAOv0cU8/YLF3tkyW4IbsejVa
	lbHfxf+BUMyaIPTM8ckm8zVdsHyol8Q6swq+YcDSNjhoxjFPsPrG64Tcd9PqqykFXAhOQ8hmDbH4E
	M/EedylUEIi81HnsGFgeOODEsl5FgHYUlPfVZTTfoGfu2PsRiNdfTJSpB3gcW56csnBZW1+FAhpE8
	LC7cpxvqx1iU2N7x8WkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLG0-0000ap-Tb; Tue, 14 Apr 2020 13:05:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLFX-0000Pc-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:05:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 151DD30E;
 Tue, 14 Apr 2020 06:05:11 -0700 (PDT)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id ED77B3F73D;
 Tue, 14 Apr 2020 06:05:09 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] coresight: Fix support for sparsely populated ports
Date: Tue, 14 Apr 2020 14:05:05 +0100
Message-Id: <20200414130505.574101-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_060511_889332_3508F692 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: saiprakash.ranjan@codeaurora.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, swboyd@chromium.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On some systems the firmware may not describe all the ports
connected to a component (e.g, for security reasons). This
could be especially problematic for "funnels" where we could
end up in modifying memory beyond the allocated space for
refcounts.

e.g, for a funnel with input ports listed 0, 3, 5, nr_inport = 3.
However the we could access refcnts[5] while checking for
references, like :

 [  526.110401] ==================================================================
 [  526.117988] BUG: KASAN: slab-out-of-bounds in funnel_enable+0x54/0x1b0
 [  526.124706] Read of size 4 at addr ffffff8135f9549c by task bash/1114
 [  526.131324]
 [  526.132886] CPU: 3 PID: 1114 Comm: bash Tainted: G S                5.4.25 #232
 [  526.140397] Hardware name: Qualcomm Technologies, Inc. SC7180 IDP (DT)
 [  526.147113] Call trace:
 [  526.149653]  dump_backtrace+0x0/0x188
 [  526.153431]  show_stack+0x20/0x2c
 [  526.156852]  dump_stack+0xdc/0x144
 [  526.160370]  print_address_description+0x3c/0x494
 [  526.165211]  __kasan_report+0x144/0x168
 [  526.169170]  kasan_report+0x10/0x18
 [  526.172769]  check_memory_region+0x1a4/0x1b4
 [  526.177164]  __kasan_check_read+0x18/0x24
 [  526.181292]  funnel_enable+0x54/0x1b0
 [  526.185072]  coresight_enable_path+0x104/0x198
 [  526.189649]  coresight_enable+0x118/0x26c

  ...

 [  526.237782] Allocated by task 280:
 [  526.241298]  __kasan_kmalloc+0xf0/0x1ac
 [  526.245249]  kasan_kmalloc+0xc/0x14
 [  526.248849]  __kmalloc+0x28c/0x3b4
 [  526.252361]  coresight_register+0x88/0x250
 [  526.256587]  funnel_probe+0x15c/0x228
 [  526.260365]  dynamic_funnel_probe+0x20/0x2c
 [  526.264679]  amba_probe+0xbc/0x158
 [  526.268193]  really_probe+0x144/0x408
 [  526.271970]  driver_probe_device+0x70/0x140

 ...

 [  526.316810]
 [  526.318364] Freed by task 0:
 [  526.321344] (stack is not available)
 [  526.325024]
 [  526.326580] The buggy address belongs to the object at ffffff8135f95480
 [  526.326580]  which belongs to the cache kmalloc-128 of size 128
 [  526.339439] The buggy address is located 28 bytes inside of
 [  526.339439]  128-byte region [ffffff8135f95480, ffffff8135f95500)
 [  526.351399] The buggy address belongs to the page:
 [  526.356342] page:ffffffff04b7e500 refcount:1 mapcount:0 mapping:ffffff814b00c380 index:0x0 compound_mapcount: 0
 [  526.366711] flags: 0x4000000000010200(slab|head)
 [  526.371475] raw: 4000000000010200 ffffffff05034008 ffffffff0501eb08 ffffff814b00c380
 [  526.379435] raw: 0000000000000000 0000000000190019 00000001ffffffff 0000000000000000
 [  526.387393] page dumped because: kasan: bad access detected
 [  526.393128]
 [  526.394681] Memory state around the buggy address:
 [  526.399619]  ffffff8135f95380: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 [  526.407046]  ffffff8135f95400: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 [  526.414473] >ffffff8135f95480: 04 fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 [  526.421900]                             ^
 [  526.426029]  ffffff8135f95500: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 [  526.433456]  ffffff8135f95580: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 [  526.440883] ==================================================================

To keep the code simple, we now track the maximum number of
possible input/output connections to/from this component
@ nr_inport and nr_outport in platform_data, respectively.
Thus the output connections could be sparse and code is
adjusted to skip the unspecified connections.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Mike Leach <mike.leach@linaro.org>
Reported-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Tested-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Tested-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
Changes since v1:
 - Rebased onto Mathieu's coresight/next tree.
 - Added comments to explain the input port tracking
---
 .../hwtracing/coresight/coresight-platform.c  | 85 +++++++++++++------
 drivers/hwtracing/coresight/coresight.c       |  7 +-
 include/linux/coresight.h                     | 10 ++-
 3 files changed, 72 insertions(+), 30 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 4b78e1ac5285..d58dcd0ab514 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -87,6 +87,7 @@ static void of_coresight_get_ports_legacy(const struct device_node *node,
 					  int *nr_inport, int *nr_outport)
 {
 	struct device_node *ep = NULL;
+	struct of_endpoint endpoint;
 	int in = 0, out = 0;
 
 	do {
@@ -94,10 +95,16 @@ static void of_coresight_get_ports_legacy(const struct device_node *node,
 		if (!ep)
 			break;
 
-		if (of_coresight_legacy_ep_is_input(ep))
-			in++;
-		else
-			out++;
+		if (of_graph_parse_endpoint(ep, &endpoint))
+			continue;
+
+		if (of_coresight_legacy_ep_is_input(ep)) {
+			in = (endpoint.port + 1 > in) ?
+				endpoint.port + 1 : in;
+		} else {
+			out = (endpoint.port + 1) > out ?
+				endpoint.port + 1 : out;
+		}
 
 	} while (ep);
 
@@ -137,9 +144,16 @@ of_coresight_count_ports(struct device_node *port_parent)
 {
 	int i = 0;
 	struct device_node *ep = NULL;
+	struct of_endpoint endpoint;
+
+	while ((ep = of_graph_get_next_endpoint(port_parent, ep))) {
+		/* Defer error handling to parsing */
+		if (of_graph_parse_endpoint(ep, &endpoint))
+			continue;
+		if (endpoint.port + 1 > i)
+			i = endpoint.port + 1;
+	}
 
-	while ((ep = of_graph_get_next_endpoint(port_parent, ep)))
-		i++;
 	return i;
 }
 
@@ -191,14 +205,12 @@ static int of_coresight_get_cpu(struct device *dev)
  * Parses the local port, remote device name and the remote port.
  *
  * Returns :
- *	 1	- If the parsing is successful and a connection record
- *		  was created for an output connection.
  *	 0	- If the parsing completed without any fatal errors.
  *	-Errno	- Fatal error, abort the scanning.
  */
 static int of_coresight_parse_endpoint(struct device *dev,
 				       struct device_node *ep,
-				       struct coresight_connection *conn)
+				       struct coresight_platform_data *pdata)
 {
 	int ret = 0;
 	struct of_endpoint endpoint, rendpoint;
@@ -206,6 +218,7 @@ static int of_coresight_parse_endpoint(struct device *dev,
 	struct device_node *rep = NULL;
 	struct device *rdev = NULL;
 	struct fwnode_handle *rdev_fwnode;
+	struct coresight_connection *conn;
 
 	do {
 		/* Parse the local port details */
@@ -232,6 +245,13 @@ static int of_coresight_parse_endpoint(struct device *dev,
 			break;
 		}
 
+		conn = &pdata->conns[endpoint.port];
+		if (conn->child_fwnode) {
+			dev_warn(dev, "Duplicate output port %d\n",
+				 endpoint.port);
+			ret = -EINVAL;
+			break;
+		}
 		conn->outport = endpoint.port;
 		/*
 		 * Hold the refcount to the target device. This could be
@@ -244,7 +264,6 @@ static int of_coresight_parse_endpoint(struct device *dev,
 		conn->child_fwnode = fwnode_handle_get(rdev_fwnode);
 		conn->child_port = rendpoint.port;
 		/* Connection record updated */
-		ret = 1;
 	} while (0);
 
 	of_node_put(rparent);
@@ -258,7 +277,6 @@ static int of_get_coresight_platform_data(struct device *dev,
 					  struct coresight_platform_data *pdata)
 {
 	int ret = 0;
-	struct coresight_connection *conn;
 	struct device_node *ep = NULL;
 	const struct device_node *parent = NULL;
 	bool legacy_binding = false;
@@ -287,8 +305,6 @@ static int of_get_coresight_platform_data(struct device *dev,
 		dev_warn_once(dev, "Uses obsolete Coresight DT bindings\n");
 	}
 
-	conn = pdata->conns;
-
 	/* Iterate through each output port to discover topology */
 	while ((ep = of_graph_get_next_endpoint(parent, ep))) {
 		/*
@@ -300,15 +316,9 @@ static int of_get_coresight_platform_data(struct device *dev,
 		if (legacy_binding && of_coresight_legacy_ep_is_input(ep))
 			continue;
 
-		ret = of_coresight_parse_endpoint(dev, ep, conn);
-		switch (ret) {
-		case 1:
-			conn++;		/* Fall through */
-		case 0:
-			break;
-		default:
+		ret = of_coresight_parse_endpoint(dev, ep, pdata);
+		if (ret)
 			return ret;
-		}
 	}
 
 	return 0;
@@ -647,6 +657,16 @@ static int acpi_coresight_parse_link(struct acpi_device *adev,
 		 *    coresight_remove_match().
 		 */
 		conn->child_fwnode = fwnode_handle_get(&r_adev->fwnode);
+	} else if (dir == ACPI_CORESIGHT_LINK_SLAVE) {
+		/*
+		 * We are only interested in the port number
+		 * for the input ports at this component.
+		 * Store the port number in child_port.
+		 */
+		conn->child_port = fields[0].integer.value;
+	} else {
+		/* Invalid direction */
+		return -EINVAL;
 	}
 
 	return dir;
@@ -692,10 +712,20 @@ static int acpi_coresight_parse_graph(struct acpi_device *adev,
 			return dir;
 
 		if (dir == ACPI_CORESIGHT_LINK_MASTER) {
-			pdata->nr_outport++;
+			if (ptr->outport > pdata->nr_outport)
+				pdata->nr_outport = ptr->outport;
 			ptr++;
 		} else {
-			pdata->nr_inport++;
+			WARN_ON(pdata->nr_inport == ptr->child_port);
+			/*
+			 * We do not track input port connections for a device.
+			 * However we need the highest port number described,
+			 * which can be recorded now and reuse this connection
+			 * record for an output connection. Hence, do not move
+			 * the ptr for input connections
+			 */
+			if (ptr->child_port > pdata->nr_inport)
+				pdata->nr_inport = ptr->child_port;
 		}
 	}
 
@@ -704,8 +734,13 @@ static int acpi_coresight_parse_graph(struct acpi_device *adev,
 		return rc;
 
 	/* Copy the connection information to the final location */
-	for (i = 0; i < pdata->nr_outport; i++)
-		pdata->conns[i] = conns[i];
+	for (i = 0; conns + i < ptr; i++) {
+		int port = conns[i].outport;
+
+		/* Duplicate output port */
+		WARN_ON(pdata->conns[port].child_fwnode);
+		pdata->conns[port] = conns[i];
+	}
 
 	devm_kfree(&adev->dev, conns);
 	return 0;
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 4f10cfa9dc18..f3efbb3b2b4d 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1053,6 +1053,9 @@ static int coresight_orphan_match(struct device *dev, void *data)
 	for (i = 0; i < i_csdev->pdata->nr_outport; i++) {
 		conn = &i_csdev->pdata->conns[i];
 
+		/* Skip the port if FW doesn't describe it */
+		if (!conn->child_fwnode)
+			continue;
 		/* We have found at least one orphan connection */
 		if (conn->child_dev == NULL) {
 			/* Does it match this newly added device? */
@@ -1091,6 +1094,8 @@ static int coresight_fixup_device_conns(struct coresight_device *csdev)
 	for (i = 0; i < csdev->pdata->nr_outport; i++) {
 		struct coresight_connection *conn = &csdev->pdata->conns[i];
 
+		if (!conn->child_fwnode)
+			continue;
 		conn->child_dev =
 			coresight_find_csdev_by_fwnode(conn->child_fwnode);
 		if (conn->child_dev) {
@@ -1126,7 +1131,7 @@ static int coresight_remove_match(struct device *dev, void *data)
 	for (i = 0; i < iterator->pdata->nr_outport; i++) {
 		conn = &iterator->pdata->conns[i];
 
-		if (conn->child_dev == NULL)
+		if (conn->child_dev == NULL || conn->child_fwnode == NULL)
 			continue;
 
 		if (csdev->dev.fwnode == conn->child_fwnode) {
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index ccd17304d7bd..e3e9f0e3a878 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -100,10 +100,12 @@ union coresight_dev_subtype {
 };
 
 /**
- * struct coresight_platform_data - data harvested from the DT specification
- * @nr_inport:	number of input ports for this component.
- * @nr_outport:	number of output ports for this component.
- * @conns:	Array of nr_outport connections from this component
+ * struct coresight_platform_data - data harvested from the firmware
+ * specification.
+ *
+ * @nr_inport:	Number of elements for the input connections.
+ * @nr_outport:	Number of elements for the output connections.
+ * @conns:	Sparse array of nr_outport connections from this component.
  */
 struct coresight_platform_data {
 	int nr_inport;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
