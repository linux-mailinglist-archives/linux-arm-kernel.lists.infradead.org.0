Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8D716869C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 19:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COtAF8O+dtI5EDNfbJyE1m0BtJJmNYn9xMXhQVeRehg=; b=BZLF/QePADece+
	nQK21ELfLLnp5FyJrOEa2GWip8XoNQvGF6i8XLLutIgU86nedsNtvc0IYHp/NKBseEDASNSta1YVl
	yKog2V6CWp7Voh2PD34/AkWQVuSHvMN7HyiX4IJbRlYhOcGfYVnWUGa9qD/chy7Xo6JbcRHUGqpYl
	tnUPWb7bFjJigxbX2CEkmfEaqGkAQyA25Kc+ivjk8qhyQ3WfDfU41ouScuuN1oixqAXkFKsA6oOms
	07SvyQiJ80KR3gVGbHRP6rs7t0jUosW7y46h1geweZxsKH6gzneHqwGuSqDqRgLj6T9KbpZOs9R4M
	Db0N2i3/8xgQhPG8RWUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5D0V-0003ln-AH; Fri, 21 Feb 2020 18:26:35 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CzN-0002w1-7B
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 18:25:30 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1j5CzA-00057q-Gt; Fri, 21 Feb 2020 11:25:23 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1j5Cz3-0007Nq-Jy; Fri, 21 Feb 2020 11:25:05 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>, Michal Hocko <mhocko@kernel.org>,
 David Hildenbrand <david@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Date: Fri, 21 Feb 2020 11:25:02 -0700
Message-Id: <20200221182503.28317-7-logang@deltatee.com>
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
 luto@kernel.org, peterz@infradead.org, ebadger@gigaio.com, logang@deltatee.com,
 mhocko@suse.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_NO_TEXT,SURBL_BLOCKED,URIBL_BLOCKED autolearn=no
 autolearn_force=no version=3.4.2
Subject: [PATCH v3 6/7] mm/memory_hotplug: Add pgprot_t to mhp_params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_102525_689835_DEF020D9 
X-CRM114-Status: GOOD (  17.54  )
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
 Dave Hansen <dave.hansen@linux.intel.com>, Michal Hocko <mhocko@suse.com>,
 Logan Gunthorpe <logang@deltatee.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_memremap_pages() is currently used by the PCI P2PDMA code to create
struct page mappings for IO memory. At present, these mappings are created
with PAGE_KERNEL which implies setting the PAT bits to be WB. However, on
x86, an mtrr register will typically override this and force the cache
type to be UC-. In the case firmware doesn't set this register it is
effectively WB and will typically result in a machine check exception
when it's accessed.

Other arches are not currently likely to function correctly seeing they
don't have any MTRR registers to fall back on.

To solve this, provide a way to specify the pgprot value explicitly to
arch_add_memory().

Of the arches that support MEMORY_HOTPLUG: x86_64, and arm64 need a simple
change to pass the pgprot_t down to their respective functions which set
up the page tables. For x86_32, set the page tables explicitly using
_set_memory_prot() (seeing they are already mapped). For ia64, s390 and
sh, reject anything but PAGE_KERNEL settings -- this should be fine,
for now, seeing these architectures don't support ZONE_DEVICE.

A check in __add_pages() is also added to ensure the pgprot parameter was
set for all arches.

Cc: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: David Hildenbrand <david@redhat.com>
Acked-by: Michal Hocko <mhocko@suse.com>
---
 arch/arm64/mm/mmu.c            | 3 ++-
 arch/ia64/mm/init.c            | 3 +++
 arch/powerpc/mm/mem.c          | 3 ++-
 arch/s390/mm/init.c            | 3 +++
 arch/sh/mm/init.c              | 3 +++
 arch/x86/mm/init_32.c          | 5 +++++
 arch/x86/mm/init_64.c          | 2 +-
 include/linux/memory_hotplug.h | 2 ++
 mm/memory_hotplug.c            | 5 ++++-
 mm/memremap.c                  | 6 +++---
 10 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index ee37bca8aba8..ea3fa844a8a2 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -1058,7 +1058,8 @@ int arch_add_memory(int nid, u64 start, u64 size,
 		flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
 
 	__create_pgd_mapping(swapper_pg_dir, start, __phys_to_virt(start),
-			     size, PAGE_KERNEL, __pgd_pgtable_alloc, flags);
+			     size, params->pgprot, __pgd_pgtable_alloc,
+			     flags);
 
 	memblock_clear_nomap(start, size);
 
diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
index 97bbc23ea1e3..d637b4ea3147 100644
--- a/arch/ia64/mm/init.c
+++ b/arch/ia64/mm/init.c
@@ -676,6 +676,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 	int ret;
 
+	if (WARN_ON_ONCE(params->pgprot.pgprot != PAGE_KERNEL.pgprot))
+		return -EINVAL;
+
 	ret = __add_pages(nid, start_pfn, nr_pages, params);
 	if (ret)
 		printk("%s: Problem encountered in __add_pages() as ret=%d\n",
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index 19b1da5d7eca..832412bc7fad 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -138,7 +138,8 @@ int __ref arch_add_memory(int nid, u64 start, u64 size,
 	resize_hpt_for_hotplug(memblock_phys_mem_size());
 
 	start = (unsigned long)__va(start);
-	rc = create_section_mapping(start, start + size, nid, PAGE_KERNEL);
+	rc = create_section_mapping(start, start + size, nid,
+				    params->pgprot);
 	if (rc) {
 		pr_warn("Unable to create mapping for hot added memory 0x%llx..0x%llx: %d\n",
 			start, start + size, rc);
diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
index e9e4a7abd0cc..87b2d024e75a 100644
--- a/arch/s390/mm/init.c
+++ b/arch/s390/mm/init.c
@@ -277,6 +277,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	if (WARN_ON_ONCE(params->altmap))
 		return -EINVAL;
 
+	if (WARN_ON_ONCE(params->pgprot.pgprot != PAGE_KERNEL.pgprot))
+		return -EINVAL;
+
 	rc = vmem_add_mapping(start, size);
 	if (rc)
 		return rc;
diff --git a/arch/sh/mm/init.c b/arch/sh/mm/init.c
index e5114c053364..b9de2d4fa57e 100644
--- a/arch/sh/mm/init.c
+++ b/arch/sh/mm/init.c
@@ -412,6 +412,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 	int ret;
 
+	if (WARN_ON_ONCE(params->pgprot.pgprot != PAGE_KERNEL.pgprot)
+		return -EINVAL;
+
 	/* We only have ZONE_NORMAL, so this is easy.. */
 	ret = __add_pages(nid, start_pfn, nr_pages, params);
 	if (unlikely(ret))
diff --git a/arch/x86/mm/init_32.c b/arch/x86/mm/init_32.c
index e25a4218e6ff..96d8e4fb1cc8 100644
--- a/arch/x86/mm/init_32.c
+++ b/arch/x86/mm/init_32.c
@@ -858,6 +858,11 @@ int arch_add_memory(int nid, u64 start, u64 size,
 {
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
+	int ret;
+
+	ret = _set_memory_prot(start, nr_pages, params->pgprot);
+	if (ret)
+		return ret;
 
 	return __add_pages(nid, start_pfn, nr_pages, params);
 }
diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
index 9e7692080dda..230240af38b4 100644
--- a/arch/x86/mm/init_64.c
+++ b/arch/x86/mm/init_64.c
@@ -868,7 +868,7 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long nr_pages = size >> PAGE_SHIFT;
 
-	init_memory_mapping(start, start + size, PAGE_KERNEL);
+	init_memory_mapping(start, start + size, params->pgprot);
 
 	return add_pages(nid, start_pfn, nr_pages, params);
 }
diff --git a/include/linux/memory_hotplug.h b/include/linux/memory_hotplug.h
index c5df1b3dada0..30d6c1b8847e 100644
--- a/include/linux/memory_hotplug.h
+++ b/include/linux/memory_hotplug.h
@@ -56,9 +56,11 @@ enum {
 /*
  * Extended parameters for memory hotplug:
  * altmap: alternative allocator for memmap array (optional)
+ * pgprot: page protection flags to apply to newly added page tables (required)
  */
 struct mhp_params {
 	struct vmem_altmap *altmap;
+	pgprot_t pgprot;
 };
 
 /*
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index c69469e1b40e..d7d4806ad81b 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -305,6 +305,9 @@ int __ref __add_pages(int nid, unsigned long pfn, unsigned long nr_pages,
 	unsigned long nr, start_sec, end_sec;
 	struct vmem_altmap *altmap = params->altmap;
 
+	if (WARN_ON_ONCE(!params->pgprot.pgprot))
+		return -EINVAL;
+
 	err = check_hotplug_memory_addressable(pfn, nr_pages);
 	if (err)
 		return err;
@@ -993,7 +996,7 @@ static int online_memory_block(struct memory_block *mem, void *arg)
  */
 int __ref add_memory_resource(int nid, struct resource *res)
 {
-	struct mhp_params params = {};
+	struct mhp_params params = { .pgprot = PAGE_KERNEL };
 	u64 start, size;
 	bool new_node = false;
 	int ret;
diff --git a/mm/memremap.c b/mm/memremap.c
index 6891a503a078..06742372a203 100644
--- a/mm/memremap.c
+++ b/mm/memremap.c
@@ -166,8 +166,8 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 		 * We do not want any optional features only our own memmap
 		 */
 		.altmap = pgmap_altmap(pgmap),
+		.pgprot = PAGE_KERNEL,
 	};
-	pgprot_t pgprot = PAGE_KERNEL;
 	int error, is_ram;
 	bool need_devmap_managed = true;
 
@@ -255,8 +255,8 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
 	if (nid < 0)
 		nid = numa_mem_id();
 
-	error = track_pfn_remap(NULL, &pgprot, PHYS_PFN(res->start), 0,
-			resource_size(res));
+	error = track_pfn_remap(NULL, &params.pgprot, PHYS_PFN(res->start),
+				0, resource_size(res));
 	if (error)
 		goto err_pfn_remap;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
