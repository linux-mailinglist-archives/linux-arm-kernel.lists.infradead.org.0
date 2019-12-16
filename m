Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E211209EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:41:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eV7+/n0s0sXBtHP5iSZ+9drBEabbceXAzsfYb28t4yU=; b=D85M5T8Qw2Ti5W
	Y1GpzmoltHwtmPCDspPhzTjQ1t0M+nrW7zPvw0ExPmX0j3U+lv3YB0akiG1y6IvYUYUdh6pGEDBbJ
	LcOn6PmH/vQfQd6FWPJtU+SeAgv23IJueFS27qP/1nuaS/PCklVrwOs0FSAPdqsES9KWLBMWbwoO4
	0q68xOHGdHFgYWHHQ6cZ7AyrtA8rKPSyT+jFhAUsNORpbjXSVmE/FHpDW7ckdEI1CzxLNt7DJHECI
	XoyeUAmBBuBJD2FUVtFWe4oqmnqoiUDJWhkT9yd4s/qkpKbCU7ssPEcoNHaJH2fo/pFzdioroBAEp
	gebVCzaUaFO1HVFISdIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsUn-0006Ay-BR; Mon, 16 Dec 2019 15:41:17 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsT2-0003kg-Ef
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:39:34 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9D3173CB701614B8F7A8;
 Mon, 16 Dec 2019 23:39:23 +0800 (CST)
Received: from lhrphicprd00229.huawei.com (10.123.41.22) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Mon, 16 Dec 2019 23:39:14 +0800
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: <linux-mm@kvack.org>, <linux-acpi@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <x86@kernel.org>
Subject: [PATCH V6 6/7] node: Add access1 class to represent CPU to memory
 characteristics
Date: Mon, 16 Dec 2019 23:38:08 +0800
Message-ID: <20191216153809.105463-7-Jonathan.Cameron@huawei.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.123.41.22]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_073929_111833_970A36E8 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Brice Goglin <brice.goglin@gmail.com>, Tao Xu <tao3.xu@intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, linuxarm@huawei.com,
 Keith Busch <keith.busch@intel.com>, jglisse@redhat.com,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

New access1 class is nearly the same as access0, but always provides
characteristics for CPUs to memory.   The existing access0 class
provides characteristics to nearest or direct connnect initiator
which may be a Generic Initiator such as a GPU or network adapter.

This new class allows thread placement on CPUs to be performed
so as to give optimal access characteristics to memory, even if that
memory is for example attached to a GPU or similar and only accessible
to the CPU via an appropriate bus.

Suggested-by: Dan Willaims <dan.j.williams@intel.com>
Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---

Note that this code could have been shorter by copying the bitmap
and factoring out the generic parts of access0 and access1.
Personally I felt that reduced readability but happy to change that
if people prefer.

 drivers/acpi/numa/hmat.c | 87 +++++++++++++++++++++++++++++++---------
 1 file changed, 68 insertions(+), 19 deletions(-)

diff --git a/drivers/acpi/numa/hmat.c b/drivers/acpi/numa/hmat.c
index 07cfe50136e0..00b4cdbefb5e 100644
--- a/drivers/acpi/numa/hmat.c
+++ b/drivers/acpi/numa/hmat.c
@@ -56,7 +56,7 @@ struct memory_target {
 	unsigned int memory_pxm;
 	unsigned int processor_pxm;
 	struct resource memregions;
-	struct node_hmem_attrs hmem_attrs;
+	struct node_hmem_attrs hmem_attrs[2];
 	struct list_head caches;
 	struct node_cache_attrs cache_attrs;
 	bool registered;
@@ -65,6 +65,7 @@ struct memory_target {
 struct memory_initiator {
 	struct list_head node;
 	unsigned int processor_pxm;
+	bool has_cpu;
 };
 
 struct memory_locality {
@@ -108,6 +109,7 @@ static __init void alloc_memory_initiator(unsigned int cpu_pxm)
 		return;
 
 	initiator->processor_pxm = cpu_pxm;
+	initiator->has_cpu = node_state(pxm_to_node(cpu_pxm), N_CPU);
 	list_add_tail(&initiator->node, &initiators);
 }
 
@@ -215,28 +217,28 @@ static u32 hmat_normalize(u16 entry, u64 base, u8 type)
 }
 
 static void hmat_update_target_access(struct memory_target *target,
-					     u8 type, u32 value)
+				      u8 type, u32 value, int access)
 {
 	switch (type) {
 	case ACPI_HMAT_ACCESS_LATENCY:
-		target->hmem_attrs.read_latency = value;
-		target->hmem_attrs.write_latency = value;
+		target->hmem_attrs[access].read_latency = value;
+		target->hmem_attrs[access].write_latency = value;
 		break;
 	case ACPI_HMAT_READ_LATENCY:
-		target->hmem_attrs.read_latency = value;
+		target->hmem_attrs[access].read_latency = value;
 		break;
 	case ACPI_HMAT_WRITE_LATENCY:
-		target->hmem_attrs.write_latency = value;
+		target->hmem_attrs[access].write_latency = value;
 		break;
 	case ACPI_HMAT_ACCESS_BANDWIDTH:
-		target->hmem_attrs.read_bandwidth = value;
-		target->hmem_attrs.write_bandwidth = value;
+		target->hmem_attrs[access].read_bandwidth = value;
+		target->hmem_attrs[access].write_bandwidth = value;
 		break;
 	case ACPI_HMAT_READ_BANDWIDTH:
-		target->hmem_attrs.read_bandwidth = value;
+		target->hmem_attrs[access].read_bandwidth = value;
 		break;
 	case ACPI_HMAT_WRITE_BANDWIDTH:
-		target->hmem_attrs.write_bandwidth = value;
+		target->hmem_attrs[access].write_bandwidth = value;
 		break;
 	default:
 		break;
@@ -329,8 +331,12 @@ static __init int hmat_parse_locality(union acpi_subtable_headers *header,
 
 			if (mem_hier == ACPI_HMAT_MEMORY) {
 				target = find_mem_target(targs[targ]);
-				if (target && target->processor_pxm == inits[init])
-					hmat_update_target_access(target, type, value);
+				if (target && target->processor_pxm == inits[init]) {
+					hmat_update_target_access(target, type, value, 0);
+					/* If the node has a CPU, update access 1*/
+					if (node_state(pxm_to_node(inits[init]), N_CPU))
+						hmat_update_target_access(target, type, value, 1);
+				}
 			}
 		}
 	}
@@ -566,6 +572,7 @@ static void hmat_register_target_initiators(struct memory_target *target)
 	unsigned int mem_nid, cpu_nid;
 	struct memory_locality *loc = NULL;
 	u32 best = 0;
+	bool access0done = false;
 	int i;
 
 	mem_nid = pxm_to_node(target->memory_pxm);
@@ -577,7 +584,11 @@ static void hmat_register_target_initiators(struct memory_target *target)
 	if (target->processor_pxm != PXM_INVAL) {
 		cpu_nid = pxm_to_node(target->processor_pxm);
 		register_memory_node_under_compute_node(mem_nid, cpu_nid, 0);
-		return;
+		access0done = true;
+		if (node_state(cpu_nid, N_CPU)) {
+			register_memory_node_under_compute_node(mem_nid, cpu_nid, 1);
+			return;
+		}
 	}
 
 	if (list_empty(&localities))
@@ -591,6 +602,40 @@ static void hmat_register_target_initiators(struct memory_target *target)
 	 */
 	bitmap_zero(p_nodes, MAX_NUMNODES);
 	list_sort(p_nodes, &initiators, initiator_cmp);
+	if (!access0done) {
+		for (i = WRITE_LATENCY; i <= READ_BANDWIDTH; i++) {
+			loc = localities_types[i];
+			if (!loc)
+				continue;
+
+			best = 0;
+			list_for_each_entry(initiator, &initiators, node) {
+				u32 value;
+
+				if (!test_bit(initiator->processor_pxm, p_nodes))
+					continue;
+
+				value = hmat_initiator_perf(target, initiator,
+							    loc->hmat_loc);
+				if (hmat_update_best(loc->hmat_loc->data_type, value, &best))
+					bitmap_clear(p_nodes, 0, initiator->processor_pxm);
+				if (value != best)
+					clear_bit(initiator->processor_pxm, p_nodes);
+			}
+			if (best)
+				hmat_update_target_access(target, loc->hmat_loc->data_type, best, 0);
+		}
+
+		for_each_set_bit(i, p_nodes, MAX_NUMNODES) {
+			cpu_nid = pxm_to_node(i);
+			register_memory_node_under_compute_node(mem_nid, cpu_nid, 0);
+		}
+	}
+
+	/* Access 1 ignores Generic Initiators */
+	bitmap_zero(p_nodes, MAX_NUMNODES);
+	list_sort(p_nodes, &initiators, initiator_cmp);
+	best = 0;
 	for (i = WRITE_LATENCY; i <= READ_BANDWIDTH; i++) {
 		loc = localities_types[i];
 		if (!loc)
@@ -600,6 +645,10 @@ static void hmat_register_target_initiators(struct memory_target *target)
 		list_for_each_entry(initiator, &initiators, node) {
 			u32 value;
 
+			if (!initiator->has_cpu) {
+				clear_bit(initiator->processor_pxm, p_nodes);
+				continue;
+			}
 			if (!test_bit(initiator->processor_pxm, p_nodes))
 				continue;
 
@@ -610,12 +659,11 @@ static void hmat_register_target_initiators(struct memory_target *target)
 				clear_bit(initiator->processor_pxm, p_nodes);
 		}
 		if (best)
-			hmat_update_target_access(target, loc->hmat_loc->data_type, best);
+			hmat_update_target_access(target, loc->hmat_loc->data_type, best, 1);
 	}
-
 	for_each_set_bit(i, p_nodes, MAX_NUMNODES) {
 		cpu_nid = pxm_to_node(i);
-		register_memory_node_under_compute_node(mem_nid, cpu_nid, 0);
+		register_memory_node_under_compute_node(mem_nid, cpu_nid, 1);
 	}
 }
 
@@ -628,10 +676,10 @@ static void hmat_register_target_cache(struct memory_target *target)
 		node_add_cache(mem_nid, &tcache->cache_attrs);
 }
 
-static void hmat_register_target_perf(struct memory_target *target)
+static void hmat_register_target_perf(struct memory_target *target, int access)
 {
 	unsigned mem_nid = pxm_to_node(target->memory_pxm);
-	node_set_perf_attrs(mem_nid, &target->hmem_attrs, 0);
+	node_set_perf_attrs(mem_nid, &target->hmem_attrs[access], access);
 }
 
 static void hmat_register_target_device(struct memory_target *target,
@@ -733,7 +781,8 @@ static void hmat_register_target(struct memory_target *target)
 	if (!target->registered) {
 		hmat_register_target_initiators(target);
 		hmat_register_target_cache(target);
-		hmat_register_target_perf(target);
+		hmat_register_target_perf(target, 0);
+		hmat_register_target_perf(target, 1);
 		target->registered = true;
 	}
 	mutex_unlock(&target_lock);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
