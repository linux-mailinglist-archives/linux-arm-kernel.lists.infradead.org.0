Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 881D32B2FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypwcNpZrc7fsTxGQxbfzbBTEYL4GPDeCBMNsk/zqiho=; b=XDPSBSHtSxw2HJ
	zJ32x4WvlRux2kUOc6TO7jfo3w3Z60NEUvyMQ1YpHFNDEDAKdSSoCxVDepG9ZEC8r9L2EaDSPwAfC
	TZT2bBfSPnb4psUKAZIZGdnLyvCCBJWRcFciRpwA0fKPkEc2x+VYl3txP3+l+p2rc5CUHeFLoBDgD
	eaSiTA1EU01ju2BKRTg49GFeaFeCCGOK2QApn/5Lw1lG62isfQWPaJ6xIOfYuua9MoJt+/4dbhT01
	P0CfmCjRKRVsTXeNWyi9UqXk2c+wIzT95gxcZWDWYp2eETVBpXB3wZFNpZkVDVL0pAo1WjPIinYvK
	mtyQiMR2zWHTlOWrSaNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDa1-000169-Ak; Mon, 27 May 2019 11:14:13 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDYq-0008Q7-Td
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:13:08 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 61501C002966;
 Mon, 27 May 2019 11:13:00 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-117-89.ams2.redhat.com [10.36.117.89])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7440F19C7F;
 Mon, 27 May 2019 11:12:55 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-mm@kvack.org
Subject: [PATCH v3 09/11] mm/memory_hotplug: Remove memory block devices
 before arch_remove_memory()
Date: Mon, 27 May 2019 13:11:50 +0200
Message-Id: <20190527111152.16324-10-david@redhat.com>
In-Reply-To: <20190527111152.16324-1-david@redhat.com>
References: <20190527111152.16324-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 27 May 2019 11:13:00 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_041301_434181_D2CCC19E 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Michal Hocko <mhocko@suse.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 Arun KS <arunks@codeaurora.org>, Ingo Molnar <mingo@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-s390@vger.kernel.org,
 David Hildenbrand <david@redhat.com>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 "mike.travis@hpe.com" <mike.travis@hpe.com>, Mark Brown <broonie@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Andrew Banman <andrew.banman@hpe.com>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Alex Deucher <alexander.deucher@amd.com>, Igor Mammedov <imammedo@redhat.com>,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let's factor out removing of memory block devices, which is only
necessary for memory added via add_memory() and friends that created
memory block devices. Remove the devices before calling
arch_remove_memory().

This finishes factoring out memory block device handling from
arch_add_memory() and arch_remove_memory().

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: David Hildenbrand <david@redhat.com>
Cc: "mike.travis@hpe.com" <mike.travis@hpe.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Andrew Banman <andrew.banman@hpe.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Mark Brown <broonie@kernel.org>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Pavel Tatashin <pavel.tatashin@microsoft.com>
Cc: Arun KS <arunks@codeaurora.org>
Cc: Mathieu Malaterre <malat@debian.org>
Reviewed-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 drivers/base/memory.c  | 37 ++++++++++++++++++-------------------
 drivers/base/node.c    | 11 ++++++-----
 include/linux/memory.h |  2 +-
 include/linux/node.h   |  6 ++----
 mm/memory_hotplug.c    |  5 +++--
 5 files changed, 30 insertions(+), 31 deletions(-)

diff --git a/drivers/base/memory.c b/drivers/base/memory.c
index 5a0370f0c506..f28efb0bf5c7 100644
--- a/drivers/base/memory.c
+++ b/drivers/base/memory.c
@@ -763,32 +763,31 @@ int create_memory_block_devices(unsigned long start, unsigned long size)
 	return ret;
 }
 
-void unregister_memory_section(struct mem_section *section)
+/*
+ * Remove memory block devices for the given memory area. Start and size
+ * have to be aligned to memory block granularity. Memory block devices
+ * have to be offline.
+ */
+void remove_memory_block_devices(unsigned long start, unsigned long size)
 {
+	const int start_block_id = pfn_to_block_id(PFN_DOWN(start));
+	const int end_block_id = pfn_to_block_id(PFN_DOWN(start + size));
 	struct memory_block *mem;
+	int block_id;
 
-	if (WARN_ON_ONCE(!present_section(section)))
+	if (WARN_ON_ONCE(!IS_ALIGNED(start, memory_block_size_bytes()) ||
+			 !IS_ALIGNED(size, memory_block_size_bytes())))
 		return;
 
 	mutex_lock(&mem_sysfs_mutex);
-
-	/*
-	 * Some users of the memory hotplug do not want/need memblock to
-	 * track all sections. Skip over those.
-	 */
-	mem = find_memory_block(section);
-	if (!mem)
-		goto out_unlock;
-
-	unregister_mem_sect_under_nodes(mem, __section_nr(section));
-
-	mem->section_count--;
-	if (mem->section_count == 0)
+	for (block_id = start_block_id; block_id != end_block_id; block_id++) {
+		mem = find_memory_block_by_id(block_id, NULL);
+		if (WARN_ON_ONCE(!mem))
+			continue;
+		mem->section_count = 0;
+		unregister_memory_block_under_nodes(mem);
 		unregister_memory(mem);
-	else
-		put_device(&mem->dev);
-
-out_unlock:
+	}
 	mutex_unlock(&mem_sysfs_mutex);
 }
 
diff --git a/drivers/base/node.c b/drivers/base/node.c
index 8598fcbd2a17..04fdfa99b8bc 100644
--- a/drivers/base/node.c
+++ b/drivers/base/node.c
@@ -801,9 +801,10 @@ int register_mem_sect_under_node(struct memory_block *mem_blk, void *arg)
 	return 0;
 }
 
-/* unregister memory section under all nodes that it spans */
-int unregister_mem_sect_under_nodes(struct memory_block *mem_blk,
-				    unsigned long phys_index)
+/*
+ * Unregister memory block device under all nodes that it spans.
+ */
+int unregister_memory_block_under_nodes(struct memory_block *mem_blk)
 {
 	NODEMASK_ALLOC(nodemask_t, unlinked_nodes, GFP_KERNEL);
 	unsigned long pfn, sect_start_pfn, sect_end_pfn;
@@ -816,8 +817,8 @@ int unregister_mem_sect_under_nodes(struct memory_block *mem_blk,
 		return -ENOMEM;
 	nodes_clear(*unlinked_nodes);
 
-	sect_start_pfn = section_nr_to_pfn(phys_index);
-	sect_end_pfn = sect_start_pfn + PAGES_PER_SECTION - 1;
+	sect_start_pfn = section_nr_to_pfn(mem_blk->start_section_nr);
+	sect_end_pfn = section_nr_to_pfn(mem_blk->end_section_nr);
 	for (pfn = sect_start_pfn; pfn <= sect_end_pfn; pfn++) {
 		int nid;
 
diff --git a/include/linux/memory.h b/include/linux/memory.h
index db3e8567f900..f26a5417ec5d 100644
--- a/include/linux/memory.h
+++ b/include/linux/memory.h
@@ -112,7 +112,7 @@ extern void unregister_memory_notifier(struct notifier_block *nb);
 extern int register_memory_isolate_notifier(struct notifier_block *nb);
 extern void unregister_memory_isolate_notifier(struct notifier_block *nb);
 int create_memory_block_devices(unsigned long start, unsigned long size);
-extern void unregister_memory_section(struct mem_section *);
+void remove_memory_block_devices(unsigned long start, unsigned long size);
 extern int memory_dev_init(void);
 extern int memory_notify(unsigned long val, void *v);
 extern int memory_isolate_notify(unsigned long val, void *v);
diff --git a/include/linux/node.h b/include/linux/node.h
index 1a557c589ecb..02a29e71b175 100644
--- a/include/linux/node.h
+++ b/include/linux/node.h
@@ -139,8 +139,7 @@ extern int register_cpu_under_node(unsigned int cpu, unsigned int nid);
 extern int unregister_cpu_under_node(unsigned int cpu, unsigned int nid);
 extern int register_mem_sect_under_node(struct memory_block *mem_blk,
 						void *arg);
-extern int unregister_mem_sect_under_nodes(struct memory_block *mem_blk,
-					   unsigned long phys_index);
+extern int unregister_memory_block_under_nodes(struct memory_block *mem_blk);
 
 extern int register_memory_node_under_compute_node(unsigned int mem_nid,
 						   unsigned int cpu_nid,
@@ -176,8 +175,7 @@ static inline int register_mem_sect_under_node(struct memory_block *mem_blk,
 {
 	return 0;
 }
-static inline int unregister_mem_sect_under_nodes(struct memory_block *mem_blk,
-						  unsigned long phys_index)
+static inline int unregister_memory_block_under_nodes(struct memory_block *mem_blk)
 {
 	return 0;
 }
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 9a92549ef23b..82136c5b4c5f 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -520,8 +520,6 @@ static void __remove_section(struct zone *zone, struct mem_section *ms,
 	if (WARN_ON_ONCE(!valid_section(ms)))
 		return;
 
-	unregister_memory_section(ms);
-
 	scn_nr = __section_nr(ms);
 	start_pfn = section_nr_to_pfn((unsigned long)scn_nr);
 	__remove_zone(zone, start_pfn);
@@ -1845,6 +1843,9 @@ void __ref __remove_memory(int nid, u64 start, u64 size)
 	memblock_free(start, size);
 	memblock_remove(start, size);
 
+	/* remove memory block devices before removing memory */
+	remove_memory_block_devices(start, size);
+
 	arch_remove_memory(nid, start, size, NULL);
 	__release_memory_resource(start, size);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
