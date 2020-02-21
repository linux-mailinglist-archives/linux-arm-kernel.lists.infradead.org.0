Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA79168699
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 19:26:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zW2wT7pQB8yN08/KYM2/XnN74XLIPWDUUGLm6HN6zU=; b=pmoROM4O4uBBDA
	CokM9pCAVW10CRCqQmBOzG1VxVvGs06i3TijocZyoEP37OT9Pnqa3xNxNGTH8sMWvZDppK/81ES+x
	QuS64TPuUUmBPth1eL8D7A9KYILkna9Oo1+w9W6sxYCUz4/MoxjplqZ8XK+ASOuE5vZWvPrQIiGkj
	X4LBDe3s67mllDN7CpGGyqaZuTNeC/8MzNCQwJ1UX1qb9oWR6dml+BsKT62E2dlzE89pqNy3UCg0B
	Kv5PDHhLxgYyLaZD8s5aGrbkGt11PfM+QKhV8Ff8Py7SvtXmlC4AAba3jG7ZMznq1ZUWgr15b9cmk
	e+SahwtUHWKdd40q32IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5D00-0003Gu-Cw; Fri, 21 Feb 2020 18:26:04 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CzE-0002m5-BP
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 18:25:18 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1j5CzA-00057m-6s; Fri, 21 Feb 2020 11:25:15 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1j5Cz3-0007Ne-6R; Fri, 21 Feb 2020 11:25:05 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>, Michal Hocko <mhocko@kernel.org>,
 David Hildenbrand <david@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Date: Fri, 21 Feb 2020 11:24:58 -0700
Message-Id: <20200221182503.28317-3-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200221182503.28317-1-logang@deltatee.com>
References: <20200221182503.28317-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-sh@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, dan.j.williams@intel.com, akpm@linux-foundation.org,
 hch@lst.de, catalin.marinas@arm.com, benh@kernel.crashing.org,
 tglx@linutronix.de, david@redhat.com, mingo@redhat.com, bp@alien8.de,
 dave.hansen@linux.intel.com, mhocko@kernel.org, will@kernel.org,
 luto@kernel.org, peterz@infradead.org, ebadger@gigaio.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT,SURBL_BLOCKED,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/7] mm/memory_hotplug: Rename mhp_restrictions to
 mhp_params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_102516_438686_BD0B3019 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Eric Badger <ebadger@gigaio.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Logan Gunthorpe <logang@deltatee.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mhp_restrictions struct really doesn't specify anything resembling
a restriction anymore so rename it to be mhp_params as it is a list
of extended parameters.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 arch/arm64/mm/mmu.c            |  4 ++--
 arch/ia64/mm/init.c            |  4 ++--
 arch/powerpc/mm/mem.c          |  4 ++--
 arch/s390/mm/init.c            |  6 +++---
 arch/sh/mm/init.c              |  4 ++--
 arch/x86/mm/init_32.c          |  4 ++--
 arch/x86/mm/init_64.c          |  8 ++++----
 include/linux/memory_hotplug.h | 16 ++++++++--------
 mm/memory_hotplug.c            |  8 ++++----
 mm/memremap.c                  |  8 ++++----
 10 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 128f70852bf3..ee37bca8aba8 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -1050,7 +1050,7 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
 
 #ifdef CONFIG_MEMORY_HOTPLUG
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_params *params)
 {
 	int flags = 0;
 
@@ -1063,7 +1063,7 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	memblock_clear_nomap(start, size);
 
 	return __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
-			   restrictions);
+			   params);
 }
 void arch_remove_memory(int nid, u64 start, u64 size,
 			struct vmem_altmap *altmap)
diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
index b01d68a2d5d9..97bbc23ea1e3 100644
--- a/arch/ia64/mm/init.c
+++ b/arch/ia64/mm/init.c
@@ -670,13 +670,13 @@ mem_init (void)
 
 #ifdef CONFIG_MEMORY_HOTPLUG
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_params *params)
 {
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 	int ret;
 
-	ret = __add_pages(nid, start_pfn, nr_pages, restrictions);
+	ret = __add_pages(nid, start_pfn, nr_pages, params);
 	if (ret)
 		printk("%s: Problem encountered in __add_pages() as ret=%d\n",
 		       __func__,  ret);
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index ef7b1119b2e2..b4bece53bec0 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -128,7 +128,7 @@ static void flush_dcache_range_chunked(unsigned long start, unsigned long stop,
 }
 
 int __ref arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+			  struct mhp_params *params)
 {
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
@@ -144,7 +144,7 @@ int __ref arch_add_memory(int nid, u64 start, u64 size,
 		return -EFAULT;
 	}
 
-	return __add_pages(nid, start_pfn, nr_pages, restrictions);
+	return __add_pages(nid, start_pfn, nr_pages, params);
 }
 
 void __ref arch_remove_memory(int nid, u64 start, u64 size,
diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
index ac44bd76db4b..e9e4a7abd0cc 100644
--- a/arch/s390/mm/init.c
+++ b/arch/s390/mm/init.c
@@ -268,20 +268,20 @@ device_initcall(s390_cma_mem_init);
 #endif /* CONFIG_CMA */
 
 int arch_add_memory(int nid, u64 start, u64 size,
-		struct mhp_restrictions *restrictions)
+		    struct mhp_params *params)
 {
 	unsigned long start_pfn = PFN_DOWN(start);
 	unsigned long size_pages = PFN_DOWN(size);
 	int rc;
 
-	if (WARN_ON_ONCE(restrictions->altmap))
+	if (WARN_ON_ONCE(params->altmap))
 		return -EINVAL;
 
 	rc = vmem_add_mapping(start, size);
 	if (rc)
 		return rc;
 
-	rc = __add_pages(nid, start_pfn, size_pages, restrictions);
+	rc = __add_pages(nid, start_pfn, size_pages, params);
 	if (rc)
 		vmem_remove_mapping(start, size);
 	return rc;
diff --git a/arch/sh/mm/init.c b/arch/sh/mm/init.c
index d1b1ff2be17a..e5114c053364 100644
--- a/arch/sh/mm/init.c
+++ b/arch/sh/mm/init.c
@@ -406,14 +406,14 @@ void __init mem_init(void)
 
 #ifdef CONFIG_MEMORY_HOTPLUG
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_params *params)
 {
 	unsigned long start_pfn = PFN_DOWN(start);
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 	int ret;
 
 	/* We only have ZONE_NORMAL, so this is easy.. */
-	ret = __add_pages(nid, start_pfn, nr_pages, restrictions);
+	ret = __add_pages(nid, start_pfn, nr_pages, params);
 	if (unlikely(ret))
 		printk("%s: Failed, __add_pages() == %d\n", __func__, ret);
 
diff --git a/arch/x86/mm/init_32.c b/arch/x86/mm/init_32.c
index 23df4885bbed..3ec3dac7c268 100644
--- a/arch/x86/mm/init_32.c
+++ b/arch/x86/mm/init_32.c
@@ -853,12 +853,12 @@ void __init mem_init(void)
 
 #ifdef CONFIG_MEMORY_HOTPLUG
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_params *params)
 {
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 
-	return __add_pages(nid, start_pfn, nr_pages, restrictions);
+	return __add_pages(nid, start_pfn, nr_pages, params);
 }
 
 void arch_remove_memory(int nid, u64 start, u64 size,
diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
index abbdecb75fad..87977a8bfbbf 100644
--- a/arch/x86/mm/init_64.c
+++ b/arch/x86/mm/init_64.c
@@ -844,11 +844,11 @@ static void update_end_of_memory_vars(u64 start, u64 size)
 }
 
 int add_pages(int nid, unsigned long start_pfn, unsigned long nr_pages,
-				struct mhp_restrictions *restrictions)
+	      struct mhp_params *params)
 {
 	int ret;
 
-	ret = __add_pages(nid, start_pfn, nr_pages, restrictions);
+	ret = __add_pages(nid, start_pfn, nr_pages, params);
 	WARN_ON_ONCE(ret);
 
 	/* update max_pfn, max_low_pfn and high_memory */
@@ -859,14 +859,14 @@ int add_pages(int nid, unsigned long start_pfn, unsigned long nr_pages,
 }
 
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_params *params)
 {
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 
 	init_memory_mapping(start, start + size);
 
-	return add_pages(nid, start_pfn, nr_pages, restrictions);
+	return add_pages(nid, start_pfn, nr_pages, params);
 }
 
 #define PAGE_INUSE 0xFD
diff --git a/include/linux/memory_hotplug.h b/include/linux/memory_hotplug.h
index 69ff3037528d..c5df1b3dada0 100644
--- a/include/linux/memory_hotplug.h
+++ b/include/linux/memory_hotplug.h
@@ -54,10 +54,10 @@ enum {
 };
 
 /*
- * Restrictions for the memory hotplug:
- * altmap: alternative allocator for memmap array
+ * Extended parameters for memory hotplug:
+ * altmap: alternative allocator for memmap array (optional)
  */
-struct mhp_restrictions {
+struct mhp_params {
 	struct vmem_altmap *altmap;
 };
 
@@ -108,7 +108,7 @@ extern int restore_online_page_callback(online_page_callback_t callback);
 extern int try_online_node(int nid);
 
 extern int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions);
+			   struct mhp_params *params);
 extern u64 max_mem_size;
 
 extern bool memhp_auto_online;
@@ -126,17 +126,17 @@ extern void __remove_pages(unsigned long start_pfn, unsigned long nr_pages,
 
 /* reasonably generic interface to expand the physical pages */
 extern int __add_pages(int nid, unsigned long start_pfn, unsigned long nr_pages,
-		       struct mhp_restrictions *restrictions);
+		       struct mhp_params *params);
 
 #ifndef CONFIG_ARCH_HAS_ADD_PAGES
 static inline int add_pages(int nid, unsigned long start_pfn,
-		unsigned long nr_pages, struct mhp_restrictions *restrictions)
+		unsigned long nr_pages, struct mhp_params *params)
 {
-	return __add_pages(nid, start_pfn, nr_pages, restrictions);
+	return __add_pages(nid, start_pfn, nr_pages, params);
 }
 #else /* ARCH_HAS_ADD_PAGES */
 int add_pages(int nid, unsigned long start_pfn, unsigned long nr_pages,
-	      struct mhp_restrictions *restrictions);
+	      struct mhp_params *params);
 #endif /* ARCH_HAS_ADD_PAGES */
 
 #ifdef CONFIG_NUMA
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 0a54ffac8c68..c69469e1b40e 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -299,11 +299,11 @@ static int check_hotplug_memory_addressable(unsigned long pfn,
  * add the new pages.
  */
 int __ref __add_pages(int nid, unsigned long pfn, unsigned long nr_pages,
-		struct mhp_restrictions *restrictions)
+		      struct mhp_params *params)
 {
 	int err;
 	unsigned long nr, start_sec, end_sec;
-	struct vmem_altmap *altmap = restrictions->altmap;
+	struct vmem_altmap *altmap = params->altmap;
 
 	err = check_hotplug_memory_addressable(pfn, nr_pages);
 	if (err)
@@ -993,7 +993,7 @@ static int online_memory_block(struct memory_block *mem, void *arg)
  */
 int __ref add_memory_resource(int nid, struct resource *res)
 {
-	struct mhp_restrictions restrictions = {};
+	struct mhp_params params = {};
 	u64 start, size;
 	bool new_node = false;
 	int ret;
@@ -1021,7 +1021,7 @@ int __ref add_memory_resource(int nid, struct resource *res)
 	new_node = ret;
 
 	/* call arch's memory hotadd */
-	ret = arch_add_memory(nid, start, size, &restrictions);
+	ret = arch_add_memory(nid, start, size, &params);
 	if (ret < 0)
 		goto error;
 
diff --git a/mm/memremap.c b/mm/memremap.c
index 09b5b7adc773..6891a503a078 100644
--- a/mm/memremap.c
+++ b/mm/memremap.c
@@ -161,7 +161,7 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 {
 	struct resource *res = &pgmap->res;
 	struct dev_pagemap *conflict_pgmap;
-	struct mhp_restrictions restrictions = {
+	struct mhp_params params = {
 		/*
 		 * We do not want any optional features only our own memmap
 		 */
@@ -275,7 +275,7 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 	 */
 	if (pgmap->type == MEMORY_DEVICE_PRIVATE) {
 		error = add_pages(nid, PHYS_PFN(res->start),
-				PHYS_PFN(resource_size(res)), &restrictions);
+				PHYS_PFN(resource_size(res)), &params);
 	} else {
 		error = kasan_add_zero_shadow(__va(res->start), resource_size(res));
 		if (error) {
@@ -284,7 +284,7 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 		}
 
 		error = arch_add_memory(nid, res->start, resource_size(res),
-					&restrictions);
+					&params);
 	}
 
 	if (!error) {
@@ -292,7 +292,7 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 
 		zone = &NODE_DATA(nid)->node_zones[ZONE_DEVICE];
 		move_pfn_range_to_zone(zone, PHYS_PFN(res->start),
-				PHYS_PFN(resource_size(res)), restrictions.altmap);
+				PHYS_PFN(resource_size(res)), params.altmap);
 	}
 
 	mem_hotplug_done();
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
