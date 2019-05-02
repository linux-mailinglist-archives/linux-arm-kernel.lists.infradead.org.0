Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182A8119F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XOE0XNEkHnnQD6cYJ6/qlLnXElIj/RhsTkT5ubiq+ac=; b=OTR
	fkW2oVfCKHj3pbw+nVeiY2y6imfvyemM2VNZyT2PHp0IQOuvr5o9duecrp5rXhdAlBHzCDxeNnwnJ
	xrw/+lwjv69WcLnqxKTw5+qAJbBpuhZQy9gpVBUwXbqTP8spuPisgPZ5P4+TgTI1J8RH1loTQeIWG
	EYUovgr9JK08676ghgoLl3U3knmbGg7/eq/uYPl3aXaCT0bqnuAQc5edehWOwtpGOloCrPpbL80Bq
	BYsp7bfDZCu6/2R95bcJZMEcTGe25MEoHW9H9IiyJy92fvNRSyTHwIq/DU9KQMGq82XTsNfX+Yd/+
	5d+bDUp0FVZ2lPoKqgloJDi+UgUe4KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBcH-0004UX-Ap; Thu, 02 May 2019 13:19:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBc8-0004TX-Rl
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:19:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B9F9374;
 Thu,  2 May 2019 06:19:00 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 47B2C3F719;
 Thu,  2 May 2019 06:18:48 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: akpm@linux-foundation.org,
	linux-mm@kvack.org
Subject: [PATCH] mm/pgtable: Drop pgtable_t variable from pte_fn_t functions
Date: Thu,  2 May 2019 18:48:46 +0530
Message-Id: <1556803126-26596-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_061904_909875_86EDC512 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: x86@kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Michal Hocko <mhocko@suse.com>, dri-devel@lists.freedesktop.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-efi@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, intel-gfx@lists.freedesktop.org,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, linux-kernel@vger.kernel.org,
 jglisse@redhat.com, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>, Logan Gunthorpe <logang@deltatee.com>,
 Dan Williams <dan.j.williams@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the pgtable_t variable from all implementation for pte_fn_t as none of
them use it. apply_to_pte_range() should stop computing it as well. Should
help us save some cycles.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Logan Gunthorpe <logang@deltatee.com>
Cc: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: <jglisse@redhat.com>
Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc: x86@kernel.org
Cc: linux-efi@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: xen-devel@lists.xenproject.org
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-mm@kvack.org
---
- Boot tested on arm64 and x86 platforms.
- Build tested on multiple platforms with their defconfig

 arch/arm/kernel/efi.c          | 3 +--
 arch/arm/mm/dma-mapping.c      | 3 +--
 arch/arm/mm/pageattr.c         | 3 +--
 arch/arm64/kernel/efi.c        | 3 +--
 arch/arm64/mm/pageattr.c       | 3 +--
 arch/x86/xen/mmu_pv.c          | 3 +--
 drivers/gpu/drm/i915/i915_mm.c | 3 +--
 drivers/xen/gntdev.c           | 6 ++----
 drivers/xen/privcmd.c          | 6 ++----
 drivers/xen/xlate_mmu.c        | 3 +--
 include/linux/mm.h             | 3 +--
 mm/memory.c                    | 5 +----
 mm/vmalloc.c                   | 2 +-
 13 files changed, 15 insertions(+), 31 deletions(-)

diff --git a/arch/arm/kernel/efi.c b/arch/arm/kernel/efi.c
index 9f43ba012d10..b1f142a01f2f 100644
--- a/arch/arm/kernel/efi.c
+++ b/arch/arm/kernel/efi.c
@@ -11,8 +11,7 @@
 #include <asm/mach/map.h>
 #include <asm/mmu_context.h>
 
-static int __init set_permissions(pte_t *ptep, pgtable_t token,
-				  unsigned long addr, void *data)
+static int __init set_permissions(pte_t *ptep, unsigned long addr, void *data)
 {
 	efi_memory_desc_t *md = data;
 	pte_t pte = *ptep;
diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 43f46aa7ef33..739286511a18 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -496,8 +496,7 @@ void __init dma_contiguous_remap(void)
 	}
 }
 
-static int __dma_update_pte(pte_t *pte, pgtable_t token, unsigned long addr,
-			    void *data)
+static int __dma_update_pte(pte_t *pte, unsigned long addr, void *data)
 {
 	struct page *page = virt_to_page(addr);
 	pgprot_t prot = *(pgprot_t *)data;
diff --git a/arch/arm/mm/pageattr.c b/arch/arm/mm/pageattr.c
index 1403cb4a0c3d..c8b500940e1f 100644
--- a/arch/arm/mm/pageattr.c
+++ b/arch/arm/mm/pageattr.c
@@ -22,8 +22,7 @@ struct page_change_data {
 	pgprot_t clear_mask;
 };
 
-static int change_page_range(pte_t *ptep, pgtable_t token, unsigned long addr,
-			void *data)
+static int change_page_range(pte_t *ptep, unsigned long addr, void *data)
 {
 	struct page_change_data *cdata = data;
 	pte_t pte = *ptep;
diff --git a/arch/arm64/kernel/efi.c b/arch/arm64/kernel/efi.c
index 4f9acb5fbe97..230cff073a08 100644
--- a/arch/arm64/kernel/efi.c
+++ b/arch/arm64/kernel/efi.c
@@ -86,8 +86,7 @@ int __init efi_create_mapping(struct mm_struct *mm, efi_memory_desc_t *md)
 	return 0;
 }
 
-static int __init set_permissions(pte_t *ptep, pgtable_t token,
-				  unsigned long addr, void *data)
+static int __init set_permissions(pte_t *ptep, unsigned long addr, void *data)
 {
 	efi_memory_desc_t *md = data;
 	pte_t pte = READ_ONCE(*ptep);
diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
index 6cd645edcf35..0be077628b21 100644
--- a/arch/arm64/mm/pageattr.c
+++ b/arch/arm64/mm/pageattr.c
@@ -27,8 +27,7 @@ struct page_change_data {
 
 bool rodata_full __ro_after_init = IS_ENABLED(CONFIG_RODATA_FULL_DEFAULT_ENABLED);
 
-static int change_page_range(pte_t *ptep, pgtable_t token, unsigned long addr,
-			void *data)
+static int change_page_range(pte_t *ptep, unsigned long addr, void *data)
 {
 	struct page_change_data *cdata = data;
 	pte_t pte = READ_ONCE(*ptep);
diff --git a/arch/x86/xen/mmu_pv.c b/arch/x86/xen/mmu_pv.c
index a21e1734fc1f..308a6195fd26 100644
--- a/arch/x86/xen/mmu_pv.c
+++ b/arch/x86/xen/mmu_pv.c
@@ -2702,8 +2702,7 @@ struct remap_data {
 	struct mmu_update *mmu_update;
 };
 
-static int remap_area_pfn_pte_fn(pte_t *ptep, pgtable_t token,
-				 unsigned long addr, void *data)
+static int remap_area_pfn_pte_fn(pte_t *ptep, unsigned long addr, void *data)
 {
 	struct remap_data *rmd = data;
 	pte_t pte = pte_mkspecial(mfn_pte(*rmd->pfn, rmd->prot));
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index e4935dd1fd37..c23bb29e6d3e 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -35,8 +35,7 @@ struct remap_pfn {
 	pgprot_t prot;
 };
 
-static int remap_pfn(pte_t *pte, pgtable_t token,
-		     unsigned long addr, void *data)
+static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
 {
 	struct remap_pfn *r = data;
 
diff --git a/drivers/xen/gntdev.c b/drivers/xen/gntdev.c
index 7cf9c51318aa..f0df481e2697 100644
--- a/drivers/xen/gntdev.c
+++ b/drivers/xen/gntdev.c
@@ -264,8 +264,7 @@ void gntdev_put_map(struct gntdev_priv *priv, struct gntdev_grant_map *map)
 
 /* ------------------------------------------------------------------ */
 
-static int find_grant_ptes(pte_t *pte, pgtable_t token,
-		unsigned long addr, void *data)
+static int find_grant_ptes(pte_t *pte, unsigned long addr, void *data)
 {
 	struct gntdev_grant_map *map = data;
 	unsigned int pgnr = (addr - map->vma->vm_start) >> PAGE_SHIFT;
@@ -292,8 +291,7 @@ static int find_grant_ptes(pte_t *pte, pgtable_t token,
 }
 
 #ifdef CONFIG_X86
-static int set_grant_ptes_as_special(pte_t *pte, pgtable_t token,
-				     unsigned long addr, void *data)
+static int set_grant_ptes_as_special(pte_t *pte, unsigned long addr, void *data)
 {
 	set_pte_at(current->mm, addr, pte, pte_mkspecial(*pte));
 	return 0;
diff --git a/drivers/xen/privcmd.c b/drivers/xen/privcmd.c
index b24ddac1604b..4c7268869e2c 100644
--- a/drivers/xen/privcmd.c
+++ b/drivers/xen/privcmd.c
@@ -730,8 +730,7 @@ struct remap_pfn {
 	unsigned long i;
 };
 
-static int remap_pfn_fn(pte_t *ptep, pgtable_t token, unsigned long addr,
-			void *data)
+static int remap_pfn_fn(pte_t *ptep, unsigned long addr, void *data)
 {
 	struct remap_pfn *r = data;
 	struct page *page = r->pages[r->i];
@@ -965,8 +964,7 @@ static int privcmd_mmap(struct file *file, struct vm_area_struct *vma)
  * on a per pfn/pte basis. Mapping calls that fail with ENOENT
  * can be then retried until success.
  */
-static int is_mapped_fn(pte_t *pte, struct page *pmd_page,
-	                unsigned long addr, void *data)
+static int is_mapped_fn(pte_t *pte, unsigned long addr, void *data)
 {
 	return pte_none(*pte) ? 0 : -EBUSY;
 }
diff --git a/drivers/xen/xlate_mmu.c b/drivers/xen/xlate_mmu.c
index e7df65d32c91..ba883a80b3c0 100644
--- a/drivers/xen/xlate_mmu.c
+++ b/drivers/xen/xlate_mmu.c
@@ -93,8 +93,7 @@ static void setup_hparams(unsigned long gfn, void *data)
 	info->fgfn++;
 }
 
-static int remap_pte_fn(pte_t *ptep, pgtable_t token, unsigned long addr,
-			void *data)
+static int remap_pte_fn(pte_t *ptep, unsigned long addr, void *data)
 {
 	struct remap_data *info = data;
 	struct page *page = info->pages[info->index++];
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 6b10c21630f5..f9509d57edc6 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2595,8 +2595,7 @@ static inline int vm_fault_to_errno(vm_fault_t vm_fault, int foll_flags)
 	return 0;
 }
 
-typedef int (*pte_fn_t)(pte_t *pte, pgtable_t token, unsigned long addr,
-			void *data);
+typedef int (*pte_fn_t)(pte_t *pte, unsigned long addr, void *data);
 extern int apply_to_page_range(struct mm_struct *mm, unsigned long address,
 			       unsigned long size, pte_fn_t fn, void *data);
 
diff --git a/mm/memory.c b/mm/memory.c
index ab650c21bccd..dd0e64c94ddc 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -1952,7 +1952,6 @@ static int apply_to_pte_range(struct mm_struct *mm, pmd_t *pmd,
 {
 	pte_t *pte;
 	int err;
-	pgtable_t token;
 	spinlock_t *uninitialized_var(ptl);
 
 	pte = (mm == &init_mm) ?
@@ -1965,10 +1964,8 @@ static int apply_to_pte_range(struct mm_struct *mm, pmd_t *pmd,
 
 	arch_enter_lazy_mmu_mode();
 
-	token = pmd_pgtable(*pmd);
-
 	do {
-		err = fn(pte++, token, addr, data);
+		err = fn(pte++, addr, data);
 		if (err)
 			break;
 	} while (addr += PAGE_SIZE, addr != end);
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index e86ba6e74b50..94533beb6b68 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -2332,7 +2332,7 @@ void __weak vmalloc_sync_all(void)
 }
 
 
-static int f(pte_t *pte, pgtable_t table, unsigned long addr, void *data)
+static int f(pte_t *pte, unsigned long addr, void *data)
 {
 	pte_t ***p = data;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
