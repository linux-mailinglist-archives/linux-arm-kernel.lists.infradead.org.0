Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014144616D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhZfVyKtIZcTRihZPJJ/z34w4JHldEYZrJ8nX/FXWcE=; b=rfM/TX5vdJQcKr
	7O7TS7baIPuQr9N6Eoy2wcNuMZC8/ZjJC2hWtkMhl4Kx2I0t+kEthmMWCXIrykH2TLN75YRH9RHm1
	+j8xOiMBqgfRHa630DZ0eOlC9e+2b12qFFDDRRHX157h6AJ7kknNUCAnbpy/92zOJFijiMT981ONB
	bMST6TVTiF7xjPDuhqlO3vvN+7L51vy0DZEetP7C+fNxId+C1ZSnJtQpjPqbE6qqb2ZsTwRw1MExw
	sabxmW/6C00XIO0NEgdEAB9AlmLsyzpn2lfDQ0HjCVABLyvZwEjTlrp+GJYcV14mhSn1vgypu8xKb
	9gQ1hKOdI+hRl1CHQxog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnU1-0000ru-DX; Fri, 14 Jun 2019 14:47:13 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnRp-00064n-IM; Fri, 14 Jun 2019 14:44:58 +0000
From: Christoph Hellwig <hch@lst.de>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH 6/7] dma-direct: handle DMA_ATTR_NO_KERNEL_MAPPING in common
 code
Date: Fri, 14 Jun 2019 16:44:30 +0200
Message-Id: <20190614144431.21760-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614144431.21760-1-hch@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 Helge Deller <deller@gmx.de>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DMA_ATTR_NO_KERNEL_MAPPING is generally implemented by allocating
normal cacheable pages or CMA memory, and then returning the page
pointer as the opaque handle.  Lift that code from the xtensa and
generic dma remapping implementations into the generic dma-direct
code so that we don't even call arch_dma_alloc for these allocations.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/xtensa/kernel/pci-dma.c    |  8 +-------
 include/linux/dma-noncoherent.h |  2 ++
 kernel/dma/direct.c             | 14 ++++++++++++++
 kernel/dma/remap.c              | 13 ++-----------
 4 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/arch/xtensa/kernel/pci-dma.c b/arch/xtensa/kernel/pci-dma.c
index 9171bff76fc4..206771277dff 100644
--- a/arch/xtensa/kernel/pci-dma.c
+++ b/arch/xtensa/kernel/pci-dma.c
@@ -167,10 +167,6 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
 
 	*handle = phys_to_dma(dev, page_to_phys(page));
 
-	if (attrs & DMA_ATTR_NO_KERNEL_MAPPING) {
-		return page;
-	}
-
 #ifdef CONFIG_MMU
 	if (PageHighMem(page)) {
 		void *p;
@@ -196,9 +192,7 @@ void arch_dma_free(struct device *dev, size_t size, void *vaddr,
 	unsigned long count = PAGE_ALIGN(size) >> PAGE_SHIFT;
 	struct page *page;
 
-	if (attrs & DMA_ATTR_NO_KERNEL_MAPPING) {
-		page = vaddr;
-	} else if (platform_vaddr_uncached(vaddr)) {
+	if (platform_vaddr_uncached(vaddr)) {
 		page = virt_to_page(platform_vaddr_to_cached(vaddr));
 	} else {
 #ifdef CONFIG_MMU
diff --git a/include/linux/dma-noncoherent.h b/include/linux/dma-noncoherent.h
index 732919ac5c11..53ee36ecdf37 100644
--- a/include/linux/dma-noncoherent.h
+++ b/include/linux/dma-noncoherent.h
@@ -28,6 +28,8 @@ static inline bool dma_alloc_need_uncached(struct device *dev,
 {
 	if (dev_is_dma_coherent(dev))
 		return false;
+	if (attrs & DMA_ATTR_NO_KERNEL_MAPPING)
+		return false;
 	if (IS_ENABLED(CONFIG_DMA_NONCOHERENT_CACHE_SYNC) &&
 	    (attrs & DMA_ATTR_NON_CONSISTENT))
 		return false;
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index fc354f4f490b..b90e1aede743 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -138,6 +138,14 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
 	if (!page)
 		return NULL;
 
+	if (attrs & DMA_ATTR_NO_KERNEL_MAPPING) {
+		/* remove any dirty cache lines on the kernel alias */
+		if (!PageHighMem(page))
+			arch_dma_prep_coherent(page, size);
+		/* return the page pointer as the opaque cookie */
+		return page;
+	}
+
 	if (PageHighMem(page)) {
 		/*
 		 * Depending on the cma= arguments and per-arch setup
@@ -178,6 +186,12 @@ void dma_direct_free_pages(struct device *dev, size_t size, void *cpu_addr,
 {
 	unsigned int page_order = get_order(size);
 
+	if (attrs & DMA_ATTR_NO_KERNEL_MAPPING) {
+		/* cpu_addr is a struct page cookie, not a kernel address */
+		__dma_direct_free_pages(dev, size, cpu_addr);
+		return;
+	}
+
 	if (force_dma_unencrypted())
 		set_memory_encrypted((unsigned long)cpu_addr, 1 << page_order);
 
diff --git a/kernel/dma/remap.c b/kernel/dma/remap.c
index 0207e3764d52..a594aec07882 100644
--- a/kernel/dma/remap.c
+++ b/kernel/dma/remap.c
@@ -202,8 +202,7 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 
 	size = PAGE_ALIGN(size);
 
-	if (!gfpflags_allow_blocking(flags) &&
-	    !(attrs & DMA_ATTR_NO_KERNEL_MAPPING)) {
+	if (!gfpflags_allow_blocking(flags)) {
 		ret = dma_alloc_from_pool(size, &page, flags);
 		if (!ret)
 			return NULL;
@@ -217,11 +216,6 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 	/* remove any dirty cache lines on the kernel alias */
 	arch_dma_prep_coherent(page, size);
 
-	if (attrs & DMA_ATTR_NO_KERNEL_MAPPING) {
-		ret = page; /* opaque cookie */
-		goto done;
-	}
-
 	/* create a coherent mapping */
 	ret = dma_common_contiguous_remap(page, size, VM_USERMAP,
 			arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs),
@@ -240,10 +234,7 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 void arch_dma_free(struct device *dev, size_t size, void *vaddr,
 		dma_addr_t dma_handle, unsigned long attrs)
 {
-	if (attrs & DMA_ATTR_NO_KERNEL_MAPPING) {
-		/* vaddr is a struct page cookie, not a kernel address */
-		__dma_direct_free_pages(dev, size, vaddr);
-	} else if (!dma_free_from_pool(vaddr, PAGE_ALIGN(size))) {
+	if (!dma_free_from_pool(vaddr, PAGE_ALIGN(size))) {
 		phys_addr_t phys = dma_to_phys(dev, dma_handle);
 		struct page *page = pfn_to_page(__phys_to_pfn(phys));
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
