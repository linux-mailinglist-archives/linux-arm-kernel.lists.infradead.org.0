Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5DD16277
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LdKS1bwZRnnilauC2fwJMoFCoWzKWPEGYQFr7tQ1a48=; b=MXF5Q7Oong+SMdDaWt4eXmhZQt
	ZA/dQEpuS6SCK+w9CV8NyyWscXnCzN1LvgflPk0YISksNl7Wn3UmtBVO59uEMZ5JDMVC7C+Q1P8Br
	mEcdxA6fN/QQve9C53u+T8sqW4TeUY5n8LXlBOxobw5b3Jjva0ya/5psSRgSKENj9Ssj9Yad5GKqa
	uxfbHQarmz//Z8tRGkQuVVsoLXXVU0E2bYIQ/vntfd/Vy1/P2pmizP1zebIQJ2eb+M4hKrOdfDRW3
	vcW9TqZF+5mJfmqF8Bm7+hiUyCzL44TTAGBkUP7VaMgwgrxh7TvIvY8i83ddoo5bE3UZbs6N3MXki
	PV4RlgzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxo3-0003uL-82; Tue, 07 May 2019 10:58:43 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjw-0005t1-07
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 10:54:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=udBUJiMQR5lBHKhhvK+SBg+L+zFeEWUU3nGixuUMHKI=; b=r+t+sY6vhcV9mZ2gPFoAWS6PN
 44eRStURp7q0slhZrSwBbq/C26rWn5fF/BieF8mSTZcbpyAyNJyDJgjFjWDoQUqTDr/zZ01c1EbfS
 NqxZTsn6+BEtiRKaDUnWV0Guz9AqFWga4Jj8L/D4tJooHs1FrrdZjBKy5OwdFzi9KvBzcH2RS6K2Y
 vZRhqjf4LSQ/7wP0/pmskOr7RaJVsxrDrIUwTw2G2cImKm0YoX9w4LkXBknp8WwD9TzvdbtxEeG1H
 D40dkNeCTdiCaWsylzNYRBGnRqPwDLzg/t9ZjnEAPEWJGgO7Mx4rAV11lz3cx5dVlEaiUtSroMzQE
 TMXu18kfg==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjq-0005wZ-3N
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF038374;
 Tue,  7 May 2019 03:54:21 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 BBCFD3F5AF; Tue,  7 May 2019 03:54:20 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 28/30] coresight: Support for ACPI bindings
Date: Tue,  7 May 2019 11:52:55 +0100
Message-Id: <1557226378-10131-29-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065422_297179_8B1D66D0 
X-CRM114-Status: GOOD (  29.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for parsing the ACPI platform description
for CoreSight. The connections are encoded in a DSD graph
property with CoreSight specific variation of the property.

The ETMs are listed as the children device of the respective
CPU.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-platform.c | 464 +++++++++++++++++++++++
 1 file changed, 464 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 49112a5..6fef873 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2012, The Linux Foundation. All rights reserved.
  */
 
+#include <linux/acpi.h>
 #include <linux/types.h>
 #include <linux/err.h>
 #include <linux/slab.h>
@@ -308,10 +309,471 @@ of_get_coresight_platform_data(struct device *dev,
 }
 #endif
 
+#ifdef CONFIG_ACPI
+
+#include <acpi/actypes.h>
+#include <acpi/processor.h>
+
+/* ACPI Graph _DSD UUID : "ab02a46b-74c7-45a2-bd68-f7d344ef2153" */
+static const guid_t acpi_graph_uuid = GUID_INIT(0xab02a46b, 0x74c7, 0x45a2,
+						0xbd, 0x68, 0xf7, 0xd3,
+						0x44, 0xef, 0x21, 0x53);
+/* Coresight ACPI Graph UUID : "3ecbc8b6-1d0e-4fb3-8107-e627f805c6cd" */
+static const guid_t coresight_graph_uuid = GUID_INIT(0x3ecbc8b6, 0x1d0e, 0x4fb3,
+						     0x81, 0x07, 0xe6, 0x27,
+						     0xf8, 0x05, 0xc6, 0xcd);
+#define ACPI_CORESIGHT_LINK_SLAVE	0
+#define ACPI_CORESIGHT_LINK_MASTER	1
+
+static inline bool is_acpi_guid(const union acpi_object *obj)
+{
+	return (obj->type == ACPI_TYPE_BUFFER) && (obj->buffer.length == 16);
+}
+
+/*
+ * acpi_guid_matches	- Checks if the given object is a GUID object and
+ * that it matches the supplied the GUID.
+ */
+static inline bool acpi_guid_matches(const union acpi_object *obj,
+				   const guid_t *guid)
+{
+	return is_acpi_guid(obj) &&
+	       guid_equal((guid_t *)obj->buffer.pointer, guid);
+}
+
+static inline bool is_acpi_dsd_graph_guid(const union acpi_object *obj)
+{
+	return acpi_guid_matches(obj, &acpi_graph_uuid);
+}
+
+static inline bool is_acpi_coresight_graph_guid(const union acpi_object *obj)
+{
+	return acpi_guid_matches(obj, &coresight_graph_uuid);
+}
+
+static inline bool is_acpi_coresight_graph(const union acpi_object *obj)
+{
+	const union acpi_object *graphid, *guid, *links;
+
+	if (obj->type != ACPI_TYPE_PACKAGE ||
+	    obj->package.count < 3)
+		return false;
+
+	graphid = &obj->package.elements[0];
+	guid = &obj->package.elements[1];
+	links = &obj->package.elements[2];
+
+	if (graphid->type != ACPI_TYPE_INTEGER ||
+	    links->type != ACPI_TYPE_INTEGER)
+		return false;
+
+	return is_acpi_coresight_graph_guid(guid);
+}
+
+/*
+ * acpi_validate_dsd_graph	- Make sure the given _DSD graph conforms
+ * to the ACPI _DSD Graph specification.
+ *
+ * ACPI Devices Graph property has the following format:
+ *  {
+ *	Revision	- Integer, must be 0
+ *	NumberOfGraphs	- Integer, N indicating the following list.
+ *	Graph[1],
+ *	 ...
+ *	Graph[N]
+ *  }
+ *
+ * And each Graph entry has the following format:
+ *  {
+ *	GraphID		- Integer, identifying a graph the device belongs to.
+ *	UUID		- UUID identifying the specification that governs
+ *			  this graph. (e.g, see is_acpi_coresight_graph())
+ *	NumberOfLinks	- Number "N" of connections on this node of the graph.
+ *	Links[1]
+ *	...
+ *	Links[N]
+ *  }
+ *
+ * Where each "Links" entry has the following format:
+ *
+ * {
+ *	SourcePortAddress	- Integer
+ *	DestinationPortAddress	- Integer
+ *	DestinationDeviceName	- Reference to another device
+ *	( --- CoreSight specific extensions below ---)
+ *	DirectionOfFlow		- Integer 1 for output(master)
+ *				  0 for input(slave)
+ * }
+ *
+ * e.g:
+ * For a Funnel device
+ *
+ * Device(MFUN) {
+ *   ...
+ *
+ *   Name (_DSD, Package() {
+ *	// DSD Package contains tuples of {  Proeprty_Type_UUID, Package() }
+ *	ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"), //Std. Property UUID
+ *	Package() {
+ *		Package(2) { "property-name", <property-value> }
+ *	},
+ *
+ *	ToUUID("ab02a46b-74c7-45a2-bd68-f7d344ef2153"), // ACPI Graph UUID
+ *	Package() {
+ *	  0,		// Revision
+ *	  1,		// NumberOfGraphs.
+ *	  Package() {	// Graph[0] Package
+ *	     1,		// GraphID
+ *	     // Coresight Graph UUID
+ *	     ToUUID("3ecbc8b6-1d0e-4fb3-8107-e627f805c6cd"),
+ *	     3,		// NumberOfLinks aka ports
+ *	     // Link[0]: Output_0 -> Replicator:Input_0
+ *	     Package () { 0, 0, \_SB_.RPL0, 1 },
+ *	     // Link[1]: Input_0 <- Cluster0_Funnel0:Output_0
+ *	     Package () { 0, 0, \_SB_.CLU0.FUN0, 0 },
+ *	     // Link[2]: Input_1 <- Cluster1_Funnel0:Output_0
+ *	      Package () { 1, 0, \_SB_.CLU1.FUN0, 0 },
+ *	  }	// End of Graph[0] Package
+ *
+ *	}, // End of ACPI Graph Property
+ *  })
+ */
+static inline bool acpi_validate_dsd_graph(const union acpi_object *graph)
+{
+	int i, n;
+	const union acpi_object *rev, *nr_graphs;
+
+	/* The graph must contain at least the Revision and Number of Graphs */
+	if (graph->package.count < 2)
+		return false;
+
+	rev = &graph->package.elements[0];
+	nr_graphs = &graph->package.elements[1];
+
+	if (rev->type != ACPI_TYPE_INTEGER ||
+	    nr_graphs->type != ACPI_TYPE_INTEGER)
+		return false;
+
+	/* We only support revision 0 */
+	if (rev->integer.value != 0)
+		return false;
+
+	n = nr_graphs->integer.value;
+	/* CoreSight devices are only part of a single Graph */
+	if (n != 1)
+		return false;
+
+	/* Make sure the ACPI graph package has right number of elements */
+	if (graph->package.count != (n + 2))
+		return false;
+
+	/*
+	 * Each entry must be a graph package with at least 3 members :
+	 * { GraphID, UUID, NumberOfLinks(n), Links[.],... }
+	 */
+	for (i = 2; i < n + 2; i++) {
+		const union acpi_object *obj = &graph->package.elements[i];
+
+		if (obj->type != ACPI_TYPE_PACKAGE ||
+		    obj->package.count < 3)
+			return false;
+	}
+
+	return true;
+}
+
+/* acpi_get_dsd_graph	- Find the _DSD Graph property for the given device. */
+const union acpi_object *
+acpi_get_dsd_graph(struct acpi_device *adev)
+{
+	int i;
+	struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER };
+	acpi_status status;
+	const union acpi_object *dsd;
+
+	status = acpi_evaluate_object_typed(adev->handle, "_DSD", NULL,
+					    &buf, ACPI_TYPE_PACKAGE);
+	if (ACPI_FAILURE(status))
+		return NULL;
+
+	dsd = buf.pointer;
+
+	/*
+	 * _DSD property consists tuples { Prop_UUID, Package() }
+	 * Iterate through all the packages and find the Graph.
+	 */
+	for (i = 0; i + 1 < dsd->package.count; i += 2) {
+		const union acpi_object *guid, *package;
+
+		guid = &dsd->package.elements[i];
+		package = &dsd->package.elements[i + 1];
+
+		/* All _DSD elements must have a UUID and a Package */
+		if (!is_acpi_guid(guid) || package->type != ACPI_TYPE_PACKAGE)
+			break;
+		/* Skip the non-Graph _DSD packages */
+		if (!is_acpi_dsd_graph_guid(guid))
+			continue;
+		if (acpi_validate_dsd_graph(package))
+			return package;
+		/* Invalid graph format, continue */
+		dev_warn(&adev->dev, "Invalid Graph _DSD property\n");
+	}
+
+	return NULL;
+}
+
+static inline bool
+acpi_validate_coresight_graph(const union acpi_object *cs_graph)
+{
+	int nlinks;
+
+	nlinks = cs_graph->package.elements[2].integer.value;
+	/*
+	 * Graph must have the following fields :
+	 * { GraphID, GraphUUID, NumberOfLinks, Links... }
+	 */
+	if (cs_graph->package.count != (nlinks + 3))
+		return false;
+	/* The links are validated in acpi_coresight_parse_link() */
+	return true;
+}
+
+/*
+ * acpi_get_coresight_graph	- Parse the device _DSD tables and find
+ * the Graph property matching the CoreSight Graphs.
+ *
+ * Returns the pointer to the CoreSight Graph Package when found. Otherwise
+ * returns NULL.
+ */
+const union acpi_object *
+acpi_get_coresight_graph(struct acpi_device *adev)
+{
+	const union acpi_object *graph_list, *graph;
+	int i, nr_graphs;
+
+	graph_list = acpi_get_dsd_graph(adev);
+	if (!graph_list)
+		return graph_list;
+
+	nr_graphs = graph_list->package.elements[1].integer.value;
+
+	for (i = 2; i < nr_graphs + 2; i++) {
+		graph = &graph_list->package.elements[i];
+		if (!is_acpi_coresight_graph(graph))
+			continue;
+		if (acpi_validate_coresight_graph(graph))
+			return graph;
+		/* Invalid graph format */
+		break;
+	}
+
+	return NULL;
+}
+
+/*
+ * acpi_coresight_parse_link	- Parse the given Graph connection
+ * of the device and populate the coresight_connection for an output
+ * connection.
+ *
+ * CoreSight Graph specification mandates that the direction of the data
+ * flow must be specified in the link. i.e,
+ *
+ *	SourcePortAddress,	// Integer
+ *	DestinationPortAddress,	// Integer
+ *	DestinationDeviceName,	// Reference to another device
+ *	DirectionOfFlow,	// 1 for output(master), 0 for input(slave)
+ *
+ * Returns the direction of the data flow [ Input(slave) or Output(master) ]
+ * upon success.
+ * Returns an negative error number otherwise.
+ */
+static int acpi_coresight_parse_link(struct acpi_device *adev,
+				     const union acpi_object *link,
+				     struct coresight_connection *conn)
+{
+	int rc, dir;
+	const union acpi_object *fields;
+	struct acpi_device *r_adev;
+	struct device *rdev;
+
+	if (link->type != ACPI_TYPE_PACKAGE ||
+	    link->package.count != 4)
+		return -EINVAL;
+
+	fields = link->package.elements;
+
+	if (fields[0].type != ACPI_TYPE_INTEGER ||
+	    fields[1].type != ACPI_TYPE_INTEGER ||
+	    fields[2].type != ACPI_TYPE_LOCAL_REFERENCE ||
+	    fields[3].type != ACPI_TYPE_INTEGER)
+		return -EINVAL;
+
+	rc = acpi_bus_get_device(fields[2].reference.handle, &r_adev);
+	if (rc)
+		return rc;
+
+	dir = fields[3].integer.value;
+	if (dir == ACPI_CORESIGHT_LINK_MASTER) {
+		conn->outport = fields[0].integer.value;
+		conn->child_port = fields[1].integer.value;
+		rdev = coresight_find_device_by_fwnode(&r_adev->fwnode);
+		if (!rdev)
+			return -EPROBE_DEFER;
+		/*
+		 * Hold the refcount to the target device. This could be
+		 * released via:
+		 * 1) coresight_release_platform_data() if the probe fails or
+		 *    this device is unregistered.
+		 * 2) While removing the target device via
+		 *    coresight_remove_match().
+		 */
+		conn->child_fwnode = fwnode_handle_get(&r_adev->fwnode);
+	}
+
+	return dir;
+}
+
+/*
+ * acpi_coresight_parse_graph	- Parse the _DSD CoreSight graph
+ * connection information and populate the supplied coresight_platform_data
+ * instance.
+ */
+static int acpi_coresight_parse_graph(struct acpi_device *adev,
+				      struct coresight_platform_data *pdata)
+{
+	int rc, i, nlinks;
+	const union acpi_object *graph;
+	struct coresight_connection *conns, *ptr;
+
+	pdata->nr_inport = pdata->nr_outport = 0;
+	graph = acpi_get_coresight_graph(adev);
+	if (!graph)
+		return -ENOENT;
+
+	nlinks = graph->package.elements[2].integer.value;
+	if (!nlinks)
+		return 0;
+
+	/*
+	 * To avoid scanning the table twice (once for finding the number of
+	 * output links and then later for parsing the output links),
+	 * cache the links information in one go and then later copy
+	 * it to the pdata.
+	 */
+	conns = devm_kcalloc(&adev->dev, nlinks, sizeof(*conns), GFP_KERNEL);
+	if (!conns)
+		return -ENOMEM;
+	ptr = conns;
+	for (i = 0; i < nlinks; i++) {
+		const union acpi_object *link = &graph->package.elements[3 + i];
+		int dir;
+
+		dir = acpi_coresight_parse_link(adev, link, ptr);
+		if (dir < 0)
+			return dir;
+
+		if (dir == ACPI_CORESIGHT_LINK_MASTER) {
+			pdata->nr_outport++;
+			ptr++;
+		} else {
+			pdata->nr_inport++;
+		}
+	}
+
+	rc = coresight_alloc_conns(&adev->dev, pdata);
+	if (rc)
+		return rc;
+
+	/* Copy the connection information to the final location */
+	for (i = 0; i < pdata->nr_outport; i++)
+		pdata->conns[i] = conns[i];
+
+	devm_kfree(&adev->dev, conns);
+	return 0;
+}
+
+/*
+ * acpi_handle_to_logical_cpuid - Map a given acpi_handle to the
+ * logical CPU id of the corresponding CPU device.
+ *
+ * Returns the logical CPU id when found. Otherwise returns >= nr_cpus_id.
+ */
+static int
+acpi_handle_to_logical_cpuid(acpi_handle handle)
+{
+	int i;
+	struct acpi_processor *pr;
+
+	for_each_possible_cpu(i) {
+		pr = per_cpu(processors, i);
+		if (pr && pr->handle == handle)
+			break;
+	}
+
+	return i;
+}
+
+/*
+ * acpi_coresigh_get_cpu - Find the logical CPU id of the CPU associated
+ * with this coresight device. With ACPI bindings, the CoreSight components
+ * are listed as child device of the associated CPU.
+ *
+ * Returns the logical CPU id when found. Otherwise returns 0.
+ */
+static int acpi_coresight_get_cpu(struct device *dev)
+{
+	int cpu;
+	acpi_handle cpu_handle;
+	acpi_status status;
+	struct acpi_device *adev = ACPI_COMPANION(dev);
+
+	if (!adev)
+		return 0;
+	status = acpi_get_parent(adev->handle, &cpu_handle);
+	if (ACPI_FAILURE(status))
+		return 0;
+
+	cpu = acpi_handle_to_logical_cpuid(cpu_handle);
+	if (cpu >= nr_cpu_ids)
+		return 0;
+	return cpu;
+}
+
+static int
+acpi_get_coresight_platform_data(struct device *dev,
+				 struct coresight_platform_data *pdata)
+{
+	struct acpi_device *adev;
+
+	adev = ACPI_COMPANION(dev);
+	if (!adev)
+		return -EINVAL;
+
+	return acpi_coresight_parse_graph(adev, pdata);
+}
+
+#else
+
+static inline int
+acpi_get_coresight_platform_data(struct device *dev,
+				 struct coresight_platform_data *pdata)
+{
+	return -ENOENT;
+}
+
+static inline int acpi_coresight_get_cpu(struct device *dev)
+{
+	return 0;
+}
+#endif
+
 int coresight_get_cpu(struct device *dev)
 {
 	if (is_of_node(dev->fwnode))
 		return of_coresight_get_cpu(dev);
+	else if (is_acpi_device_node(dev->fwnode))
+		return acpi_coresight_get_cpu(dev);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(coresight_get_cpu);
@@ -334,6 +796,8 @@ coresight_get_platform_data(struct device *dev)
 
 	if (is_of_node(fwnode))
 		ret = of_get_coresight_platform_data(dev, pdata);
+	else if (is_acpi_device_node(fwnode))
+		ret = acpi_get_coresight_platform_data(dev, pdata);
 
 	if (!ret)
 		return pdata;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
