Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007DB133184
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PS+TJ8cXOHnbiZqD4LkGx+Y2ZGrvr7H/MmNBzZIMRUw=; b=dbMvKweSYqTgLO
	RsEdt7ryaIwMV1kzryaBA16/uzDaICt+JdcgNhD8LXOyc2nVOzvsM3DRhIw9T6VL3Khx0CObpiuU+
	A1z+LnwtjEQ+4W+U+O0gdXBU6NmOYjBv/6aNfJ+XVBKL9NRCJ1BBTBgBQdm05Gl8kbiF/k9V5s3TE
	bVWQOrOeYB8KXNXa+3EYU6yoA8egCw0ioAftqRNq9YcrtGb577BGo+Y3hUU6CVhN57eWDmkKiqcaj
	I6m9gxLWv4rUoIRrI1pPUEJd7JYpW+NoXP5/XSS4bXRwps0MgOf44Gzt20jSAXjUxD9AXr1kQANBH
	WfR7/ftzYceC+N2v96NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovys-0002sY-Gq; Tue, 07 Jan 2020 21:01:38 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovxU-0001Rv-4F
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 21:00:16 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1iovxO-0007vr-Dy; Tue, 07 Jan 2020 14:00:11 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1iovxI-0001z7-I2; Tue, 07 Jan 2020 14:00:00 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>, Michal Hocko <mhocko@kernel.org>,
 David Hildenbrand <david@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Date: Tue,  7 Jan 2020 13:59:53 -0700
Message-Id: <20200107205959.7575-3-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200107205959.7575-1-logang@deltatee.com>
References: <20200107205959.7575-1-logang@deltatee.com>
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
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/8] mm/memory_hotplug: Rename mhp_restrictions to
 mhp_modifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_130012_221964_1A331220 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
a restriction anymore so rename it to be mhp_modifiers.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 arch/arm64/mm/mmu.c            |  4 ++--
 arch/ia64/mm/init.c            |  4 ++--
 arch/powerpc/mm/mem.c          |  4 ++--
 arch/s390/mm/init.c            |  6 +++---
 arch/sh/mm/init.c              |  4 ++--
 arch/x86/mm/init_32.c          |  4 ++--
 arch/x86/mm/init_64.c          |  8 ++++----
 include/linux/memory_hotplug.h | 12 ++++++------
 mm/memory_hotplug.c            |  8 ++++----
 mm/memremap.c                  |  8 ++++----
 10 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 40797cbfba2d..3320406579c3 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -1050,7 +1050,7 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
 
 #ifdef CONFIG_MEMORY_HOTPLUG
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_modifiers *modifiers)
 {
 	int flags = 0;
 
@@ -1063,7 +1063,7 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	memblock_clear_nomap(start, size);
 
 	return __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
-			   restrictions);
+			   modifiers);
 }
 void arch_remove_memory(int nid, u64 start, u64 size,
 			struct vmem_altmap *altmap)
diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
index b01d68a2d5d9..daf438e08b96 100644
--- a/arch/ia64/mm/init.c
+++ b/arch/ia64/mm/init.c
@@ -670,13 +670,13 @@ mem_init (void)
 
 #ifdef CONFIG_MEMORY_HOTPLUG
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_modifiers *modifiers)
 {
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 	int ret;
 
-	ret = __add_pages(nid, start_pfn, nr_pages, restrictions);
+	ret = __add_pages(nid, start_pfn, nr_pages, modifiers);
 	if (ret)
 		printk("%s: Problem encountered in __add_pages() as ret=%d\n",
 		       __func__,  ret);
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index f5535eae637f..9dd9c3c1be7f 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -127,7 +127,7 @@ static void flush_dcache_range_chunked(unsigned long start, unsigned long stop,
 }
 
 int __ref arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+			  struct mhp_modifiers *modifiers)
 {
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
@@ -143,7 +143,7 @@ int __ref arch_add_memory(int nid, u64 start, u64 size,
 		return -EFAULT;
 	}
 
-	return __add_pages(nid, start_pfn, nr_pages, restrictions);
+	return __add_pages(nid, start_pfn, nr_pages, modifiers);
 }
 
 void __ref arch_remove_memory(int nid, u64 start, u64 size,
diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
index ac44bd76db4b..a0c88c1c9ad0 100644
--- a/arch/s390/mm/init.c
+++ b/arch/s390/mm/init.c
@@ -268,20 +268,20 @@ device_initcall(s390_cma_mem_init);
 #endif /* CONFIG_CMA */
 
 int arch_add_memory(int nid, u64 start, u64 size,
-		struct mhp_restrictions *restrictions)
+		    struct mhp_modifiers *modifiers)
 {
 	unsigned long start_pfn = PFN_DOWN(start);
 	unsigned long size_pages = PFN_DOWN(size);
 	int rc;
 
-	if (WARN_ON_ONCE(restrictions->altmap))
+	if (WARN_ON_ONCE(modifiers->altmap))
 		return -EINVAL;
 
 	rc = vmem_add_mapping(start, size);
 	if (rc)
 		return rc;
 
-	rc = __add_pages(nid, start_pfn, size_pages, restrictions);
+	rc = __add_pages(nid, start_pfn, size_pages, modifiers);
 	if (rc)
 		vmem_remove_mapping(start, size);
 	return rc;
diff --git a/arch/sh/mm/init.c b/arch/sh/mm/init.c
index d1b1ff2be17a..7e64f42fb570 100644
--- a/arch/sh/mm/init.c
+++ b/arch/sh/mm/init.c
@@ -406,14 +406,14 @@ void __init mem_init(void)
 
 #ifdef CONFIG_MEMORY_HOTPLUG
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_modifiers *modifiers)
 {
 	unsigned long start_pfn = PFN_DOWN(start);
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 	int ret;
 
 	/* We only have ZONE_NORMAL, so this is easy.. */
-	ret = __add_pages(nid, start_pfn, nr_pages, restrictions);
+	ret = __add_pages(nid, start_pfn, nr_pages, modifiers);
 	if (unlikely(ret))
 		printk("%s: Failed, __add_pages() == %d\n", __func__, ret);
 
diff --git a/arch/x86/mm/init_32.c b/arch/x86/mm/init_32.c
index 0a74407ef92e..e6fce2d547f0 100644
--- a/arch/x86/mm/init_32.c
+++ b/arch/x86/mm/init_32.c
@@ -852,12 +852,12 @@ void __init mem_init(void)
 
 #ifdef CONFIG_MEMORY_HOTPLUG
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_modifiers *modifiers)
 {
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 
-	return __add_pages(nid, start_pfn, nr_pages, restrictions);
+	return __add_pages(nid, start_pfn, nr_pages, modifiers);
 }
 
 void arch_remove_memory(int nid, u64 start, u64 size,
diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
index bcfede46fe02..516133f555e9 100644
--- a/arch/x86/mm/init_64.c
+++ b/arch/x86/mm/init_64.c
@@ -844,11 +844,11 @@ static void update_end_of_memory_vars(u64 start, u64 size)
 }
 
 int add_pages(int nid, unsigned long start_pfn, unsigned long nr_pages,
-				struct mhp_restrictions *restrictions)
+	      struct mhp_modifiers *modifiers)
 {
 	int ret;
 
-	ret = __add_pages(nid, start_pfn, nr_pages, restrictions);
+	ret = __add_pages(nid, start_pfn, nr_pages, modifiers);
 	WARN_ON_ONCE(ret);
 
 	/* update max_pfn, max_low_pfn and high_memory */
@@ -859,14 +859,14 @@ int add_pages(int nid, unsigned long start_pfn, unsigned long nr_pages,
 }
 
 int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions)
+		    struct mhp_modifiers *modifiers)
 {
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 
 	init_memory_mapping(start, start + size);
 
-	return add_pages(nid, start_pfn, nr_pages, restrictions);
+	return add_pages(nid, start_pfn, nr_pages, modifiers);
 }
 
 #define PAGE_INUSE 0xFD
diff --git a/include/linux/memory_hotplug.h b/include/linux/memory_hotplug.h
index e47a29761088..2152efae2f4b 100644
--- a/include/linux/memory_hotplug.h
+++ b/include/linux/memory_hotplug.h
@@ -57,7 +57,7 @@ enum {
  * Restrictions for the memory hotplug:
  * altmap: alternative allocator for memmap array
  */
-struct mhp_restrictions {
+struct mhp_modifiers {
 	struct vmem_altmap *altmap;
 };
 
@@ -107,7 +107,7 @@ extern int restore_online_page_callback(online_page_callback_t callback);
 extern int try_online_node(int nid);
 
 extern int arch_add_memory(int nid, u64 start, u64 size,
-			struct mhp_restrictions *restrictions);
+			   struct mhp_modifiers *modifiers);
 extern u64 max_mem_size;
 
 extern bool memhp_auto_online;
@@ -125,17 +125,17 @@ extern void __remove_pages(unsigned long start_pfn, unsigned long nr_pages,
 
 /* reasonably generic interface to expand the physical pages */
 extern int __add_pages(int nid, unsigned long start_pfn, unsigned long nr_pages,
-		       struct mhp_restrictions *restrictions);
+		       struct mhp_modifiers *modifiers);
 
 #ifndef CONFIG_ARCH_HAS_ADD_PAGES
 static inline int add_pages(int nid, unsigned long start_pfn,
-		unsigned long nr_pages, struct mhp_restrictions *restrictions)
+		unsigned long nr_pages, struct mhp_modifiers *modifiers)
 {
-	return __add_pages(nid, start_pfn, nr_pages, restrictions);
+	return __add_pages(nid, start_pfn, nr_pages, modifiers);
 }
 #else /* ARCH_HAS_ADD_PAGES */
 int add_pages(int nid, unsigned long start_pfn, unsigned long nr_pages,
-	      struct mhp_restrictions *restrictions);
+	      struct mhp_modifiers *modifiers);
 #endif /* ARCH_HAS_ADD_PAGES */
 
 #ifdef CONFIG_NUMA
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index a91a072f2b2c..1bb3f92e087d 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -299,11 +299,11 @@ static int check_hotplug_memory_addressable(unsigned long pfn,
  * add the new pages.
  */
 int __ref __add_pages(int nid, unsigned long pfn, unsigned long nr_pages,
-		struct mhp_restrictions *restrictions)
+		      struct mhp_modifiers *modifiers)
 {
 	int err;
 	unsigned long nr, start_sec, end_sec;
-	struct vmem_altmap *altmap = restrictions->altmap;
+	struct vmem_altmap *altmap = modifiers->altmap;
 
 	err = check_hotplug_memory_addressable(pfn, nr_pages);
 	if (err)
@@ -1027,7 +1027,7 @@ static int online_memory_block(struct memory_block *mem, void *arg)
  */
 int __ref add_memory_resource(int nid, struct resource *res)
 {
-	struct mhp_restrictions restrictions = {};
+	struct mhp_modifiers modifiers = {};
 	u64 start, size;
 	bool new_node = false;
 	int ret;
@@ -1055,7 +1055,7 @@ int __ref add_memory_resource(int nid, struct resource *res)
 	new_node = ret;
 
 	/* call arch's memory hotadd */
-	ret = arch_add_memory(nid, start, size, &restrictions);
+	ret = arch_add_memory(nid, start, size, &modifiers);
 	if (ret < 0)
 		goto error;
 
diff --git a/mm/memremap.c b/mm/memremap.c
index c51c6bd2fe34..e30be8ba706b 100644
--- a/mm/memremap.c
+++ b/mm/memremap.c
@@ -158,7 +158,7 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 {
 	struct resource *res = &pgmap->res;
 	struct dev_pagemap *conflict_pgmap;
-	struct mhp_restrictions restrictions = {
+	struct mhp_modifiers modifiers = {
 		/*
 		 * We do not want any optional features only our own memmap
 		 */
@@ -272,7 +272,7 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 	 */
 	if (pgmap->type == MEMORY_DEVICE_PRIVATE) {
 		error = add_pages(nid, PHYS_PFN(res->start),
-				PHYS_PFN(resource_size(res)), &restrictions);
+				PHYS_PFN(resource_size(res)), &modifiers);
 	} else {
 		error = kasan_add_zero_shadow(__va(res->start), resource_size(res));
 		if (error) {
@@ -281,7 +281,7 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 		}
 
 		error = arch_add_memory(nid, res->start, resource_size(res),
-					&restrictions);
+					&modifiers);
 	}
 
 	if (!error) {
@@ -289,7 +289,7 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 
 		zone = &NODE_DATA(nid)->node_zones[ZONE_DEVICE];
 		move_pfn_range_to_zone(zone, PHYS_PFN(res->start),
-				PHYS_PFN(resource_size(res)), restrictions.altmap);
+				PHYS_PFN(resource_size(res)), modifiers.altmap);
 	}
 
 	mem_hotplug_done();
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
