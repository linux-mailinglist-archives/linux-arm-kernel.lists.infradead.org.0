Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9B384462
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 08:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDLKzSMXNB9LFeLe06mIDfjiEOdWmKY0sLGulYR1No4=; b=JPlmnmk8GMVMvb
	GT31iWRIAT9vtSHxdcY+VJVtjEY75cPuPmOUa5D2TOvELskjG4i9awgForXvMQGCARA27lfJ8bjt3
	YuTQ6U7/hclRwcJsxWKG4iYz39VciI3uDEqpnrJeT7uwELCb125QcKcF1h3b1xMPo1yRN8xANxRYQ
	oE7hgcYWW3q+n5l9zZ2PlefJ1q4SIvk/uLbaZkVjSj/frvI+AVctSgl99Z6iMU7vDIg8JFZTQGp8R
	+c4/PsMVwfGeUDUzqlZFZuXRaerh3KNzZu8P06f0wSz05rezPPrthP8ETqAoxs3m6REPuFGdlG3bC
	Pze9GdADs7YIrWarrO8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvFFK-0007pn-TA; Wed, 07 Aug 2019 06:16:26 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvFF1-0007du-My; Wed, 07 Aug 2019 06:16:08 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 1/2] dma-mapping: fix page attributes for dma_mmap_*
Date: Wed,  7 Aug 2019 09:16:01 +0300
Message-Id: <20190807061602.31217-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190807061602.31217-1-hch@lst.de>
References: <20190807061602.31217-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Gavin Li <git@thegavinli.com>, Shawn Anastasio <shawn@anastas.io>,
 Will Deacon <will@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Catalin Marinas <catalin.marinas@arm.com>,
 James Hogan <jhogan@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All the way back to introducing dma_common_mmap we've defaulted to mark
the pages as uncached.  But this is wrong for DMA coherent devices.
Later on DMA_ATTR_WRITE_COMBINE also got incorrect treatment as that
flag is only treated special on the alloc side for non-coherent devices.

Introduce a new dma_pgprot helper that deals with the check for coherent
devices so that only the remapping cases ever reach arch_dma_mmap_pgprot
and we thus ensure no aliasing of page attributes happens, which makes
the powerpc version of arch_dma_mmap_pgprot obsolete and simplifies the
remaining ones.

Note that this means arch_dma_mmap_pgprot is a bit misnamed now, but
we'll phase it out soon.

Fixes: 64ccc9c033c6 ("common: dma-mapping: add support for generic dma_mmap_* calls")
Reported-by: Shawn Anastasio <shawn@anastas.io>
Reported-by: Gavin Li <git@thegavinli.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Catalin Marinas <catalin.marinas@arm.com> # arm64
---
 arch/arm/mm/dma-mapping.c        |  4 +---
 arch/arm64/mm/dma-mapping.c      |  4 +---
 arch/powerpc/Kconfig             |  1 -
 arch/powerpc/kernel/dma-common.c | 17 -----------------
 drivers/iommu/dma-iommu.c        |  6 +++---
 include/linux/dma-noncoherent.h  | 13 +++++++++----
 kernel/dma/mapping.c             | 17 ++++++++++++++++-
 kernel/dma/remap.c               |  2 +-
 8 files changed, 31 insertions(+), 33 deletions(-)
 delete mode 100644 arch/powerpc/kernel/dma-common.c

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 6774b03aa405..d42557ee69c2 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -2405,9 +2405,7 @@ long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
 pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
 		unsigned long attrs)
 {
-	if (!dev_is_dma_coherent(dev))
-		return __get_dma_pgprot(attrs, prot);
-	return prot;
+	return __get_dma_pgprot(attrs, prot);
 }
 
 void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index 1d3f0b5a9940..bd2b039f43a6 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -14,9 +14,7 @@
 pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
 		unsigned long attrs)
 {
-	if (!dev_is_dma_coherent(dev) || (attrs & DMA_ATTR_WRITE_COMBINE))
-		return pgprot_writecombine(prot);
-	return prot;
+	return pgprot_writecombine(prot);
 }
 
 void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 77f6ebf97113..d8dcd8820369 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -121,7 +121,6 @@ config PPC
 	select ARCH_32BIT_OFF_T if PPC32
 	select ARCH_HAS_DEBUG_VIRTUAL
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
-	select ARCH_HAS_DMA_MMAP_PGPROT
 	select ARCH_HAS_ELF_RANDOMIZE
 	select ARCH_HAS_FORTIFY_SOURCE
 	select ARCH_HAS_GCOV_PROFILE_ALL
diff --git a/arch/powerpc/kernel/dma-common.c b/arch/powerpc/kernel/dma-common.c
deleted file mode 100644
index dc7ef6b17b69..000000000000
--- a/arch/powerpc/kernel/dma-common.c
+++ /dev/null
@@ -1,17 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Contains common dma routines for all powerpc platforms.
- *
- * Copyright (C) 2019 Shawn Anastasio.
- */
-
-#include <linux/mm.h>
-#include <linux/dma-noncoherent.h>
-
-pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
-		unsigned long attrs)
-{
-	if (!dev_is_dma_coherent(dev))
-		return pgprot_noncached(prot);
-	return prot;
-}
diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index a7f9c3edbcb2..0015fe610b23 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -574,7 +574,7 @@ static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
 	struct iova_domain *iovad = &cookie->iovad;
 	bool coherent = dev_is_dma_coherent(dev);
 	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
-	pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
+	pgprot_t prot = dma_pgprot(dev, PAGE_KERNEL, attrs);
 	unsigned int count, min_size, alloc_sizes = domain->pgsize_bitmap;
 	struct page **pages;
 	struct sg_table sgt;
@@ -975,7 +975,7 @@ static void *iommu_dma_alloc_pages(struct device *dev, size_t size,
 		return NULL;
 
 	if (IS_ENABLED(CONFIG_DMA_REMAP) && (!coherent || PageHighMem(page))) {
-		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
+		pgprot_t prot = dma_pgprot(dev, PAGE_KERNEL, attrs);
 
 		cpu_addr = dma_common_contiguous_remap(page, alloc_size,
 				VM_USERMAP, prot, __builtin_return_address(0));
@@ -1035,7 +1035,7 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
 	unsigned long pfn, off = vma->vm_pgoff;
 	int ret;
 
-	vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
+	vma->vm_page_prot = dma_pgprot(dev, vma->vm_page_prot, attrs);
 
 	if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
 		return ret;
diff --git a/include/linux/dma-noncoherent.h b/include/linux/dma-noncoherent.h
index 3813211a9aad..0bff3d7fac92 100644
--- a/include/linux/dma-noncoherent.h
+++ b/include/linux/dma-noncoherent.h
@@ -42,13 +42,18 @@ void arch_dma_free(struct device *dev, size_t size, void *cpu_addr,
 		dma_addr_t dma_addr, unsigned long attrs);
 long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
 		dma_addr_t dma_addr);
-
-#ifdef CONFIG_ARCH_HAS_DMA_MMAP_PGPROT
 pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
 		unsigned long attrs);
+
+#ifdef CONFIG_MMU
+pgprot_t dma_pgprot(struct device *dev, pgprot_t prot, unsigned long attrs);
 #else
-# define arch_dma_mmap_pgprot(dev, prot, attrs)	pgprot_noncached(prot)
-#endif
+static inline pgprot_t dma_pgprot(struct device *dev, pgprot_t prot,
+		unsigned long attrs)
+{
+	return prot;	/* no protection bits supported without page tables */
+}
+#endif /* CONFIG_MMU */
 
 #ifdef CONFIG_DMA_NONCOHERENT_CACHE_SYNC
 void arch_dma_cache_sync(struct device *dev, void *vaddr, size_t size,
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index b945239621d8..51d9657e0a8f 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -150,6 +150,21 @@ int dma_get_sgtable_attrs(struct device *dev, struct sg_table *sgt,
 }
 EXPORT_SYMBOL(dma_get_sgtable_attrs);
 
+/*
+ * Return the page attributes used for mapping dma_alloc_* memory, either in
+ * kernel space if remapping is needed, or to userspace through dma_mmap_*.
+ */
+pgprot_t dma_pgprot(struct device *dev, pgprot_t prot, unsigned long attrs)
+{
+	if (dev_is_dma_coherent(dev) ||
+	    (IS_ENABLED(CONFIG_DMA_NONCOHERENT_CACHE_SYNC) &&
+             (attrs & DMA_ATTR_NON_CONSISTENT)))
+		return prot;
+	if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_MMAP_PGPROT))
+		return arch_dma_mmap_pgprot(dev, prot, attrs);
+	return pgprot_noncached(prot);
+}
+
 /*
  * Create userspace mapping for the DMA-coherent memory.
  */
@@ -164,7 +179,7 @@ int dma_common_mmap(struct device *dev, struct vm_area_struct *vma,
 	unsigned long pfn;
 	int ret = -ENXIO;
 
-	vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
+	vma->vm_page_prot = dma_pgprot(dev, vma->vm_page_prot, attrs);
 
 	if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
 		return ret;
diff --git a/kernel/dma/remap.c b/kernel/dma/remap.c
index a594aec07882..ffe78f0b2fe4 100644
--- a/kernel/dma/remap.c
+++ b/kernel/dma/remap.c
@@ -218,7 +218,7 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 
 	/* create a coherent mapping */
 	ret = dma_common_contiguous_remap(page, size, VM_USERMAP,
-			arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs),
+			dma_pgprot(dev, PAGE_KERNEL, attrs),
 			__builtin_return_address(0));
 	if (!ret) {
 		__dma_direct_free_pages(dev, size, page);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
