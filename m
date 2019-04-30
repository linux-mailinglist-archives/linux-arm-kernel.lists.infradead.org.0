Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B518F4A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yF5UAoeXnh17WLC10u5/4qHR8cH8SJiqQ0csLtJhVKk=; b=DRXEfZ6Da4i8me
	UJztTNrHaWOP4QSfXieK8eK6vHlDHFg+bkk5dPR4Ab8qz9inZa2XbuNLju7Rb2ctzkWM4dDbMloAB
	ZXuwvKA7i+SkfY5KUIm2ow1z6gKLPHj0KVFW38zXm/10SRL3zpnpOXxNTCty0Sa+JvsTAyM7TR7vD
	14Dkov3bxkGVQqxc4Tm+TmsRgEMaE87U0bdSUzd9ydOCwapugatCoPBaiGDmKGVGSo8nO4Ce66aaz
	I2d5SgA8rzwmZ/Qr4HCEPxmEmxLlQKmZ8bb0t6nkZBK1RLIN/3+E7zdlPEmjRjkvjoFH5Nyapz6YU
	/YYqcWZTCkHohFohdnfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQOm-0000TH-NW; Tue, 30 Apr 2019 10:54:08 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQNg-0007WR-HY; Tue, 30 Apr 2019 10:53:01 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 06/25] iommu/dma: move the arm64 wrappers to common code
Date: Tue, 30 Apr 2019 06:51:55 -0400
Message-Id: <20190430105214.24628-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430105214.24628-1-hch@lst.de>
References: <20190430105214.24628-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is nothing really arm64 specific in the iommu_dma_ops
implementation, so move it to dma-iommu.c and keep a lot of symbols
self-contained.  Note the implementation does depend on the
DMA_DIRECT_REMAP infrastructure for now, so we'll have to make the
DMA_IOMMU support depend on it, but this will be relaxed soon.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/mm/dma-mapping.c | 394 +----------------------------------
 drivers/iommu/Kconfig       |   1 +
 drivers/iommu/dma-iommu.c   | 398 +++++++++++++++++++++++++++++++++---
 include/linux/dma-iommu.h   |  43 +---
 4 files changed, 379 insertions(+), 457 deletions(-)

diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index 10a8852c8b6a..d1661f78eb4d 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -27,6 +27,7 @@
 #include <linux/dma-direct.h>
 #include <linux/dma-noncoherent.h>
 #include <linux/dma-contiguous.h>
+#include <linux/dma-iommu.h>
 #include <linux/vmalloc.h>
 #include <linux/swiotlb.h>
 #include <linux/pci.h>
@@ -58,37 +59,6 @@ void arch_dma_prep_coherent(struct page *page, size_t size)
 	__dma_flush_area(page_address(page), size);
 }
 
-#ifdef CONFIG_IOMMU_DMA
-static int __swiotlb_get_sgtable_page(struct sg_table *sgt,
-				      struct page *page, size_t size)
-{
-	int ret = sg_alloc_table(sgt, 1, GFP_KERNEL);
-
-	if (!ret)
-		sg_set_page(sgt->sgl, page, PAGE_ALIGN(size), 0);
-
-	return ret;
-}
-
-static int __swiotlb_mmap_pfn(struct vm_area_struct *vma,
-			      unsigned long pfn, size_t size)
-{
-	int ret = -ENXIO;
-	unsigned long nr_vma_pages = vma_pages(vma);
-	unsigned long nr_pages = PAGE_ALIGN(size) >> PAGE_SHIFT;
-	unsigned long off = vma->vm_pgoff;
-
-	if (off < nr_pages && nr_vma_pages <= (nr_pages - off)) {
-		ret = remap_pfn_range(vma, vma->vm_start,
-				      pfn + off,
-				      vma->vm_end - vma->vm_start,
-				      vma->vm_page_prot);
-	}
-
-	return ret;
-}
-#endif /* CONFIG_IOMMU_DMA */
-
 static int __init arm64_dma_init(void)
 {
 	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
@@ -100,374 +70,18 @@ static int __init arm64_dma_init(void)
 arch_initcall(arm64_dma_init);
 
 #ifdef CONFIG_IOMMU_DMA
-#include <linux/dma-iommu.h>
-#include <linux/platform_device.h>
-#include <linux/amba/bus.h>
-
-static void *__iommu_alloc_attrs(struct device *dev, size_t size,
-				 dma_addr_t *handle, gfp_t gfp,
-				 unsigned long attrs)
-{
-	bool coherent = dev_is_dma_coherent(dev);
-	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
-	size_t iosize = size;
-	void *addr;
-
-	if (WARN(!dev, "cannot create IOMMU mapping for unknown device\n"))
-		return NULL;
-
-	size = PAGE_ALIGN(size);
-
-	/*
-	 * Some drivers rely on this, and we probably don't want the
-	 * possibility of stale kernel data being read by devices anyway.
-	 */
-	gfp |= __GFP_ZERO;
-
-	if (!gfpflags_allow_blocking(gfp)) {
-		struct page *page;
-		/*
-		 * In atomic context we can't remap anything, so we'll only
-		 * get the virtually contiguous buffer we need by way of a
-		 * physically contiguous allocation.
-		 */
-		if (coherent) {
-			page = alloc_pages(gfp, get_order(size));
-			addr = page ? page_address(page) : NULL;
-		} else {
-			addr = dma_alloc_from_pool(size, &page, gfp);
-		}
-		if (!addr)
-			return NULL;
-
-		*handle = iommu_dma_map_page(dev, page, 0, iosize, ioprot);
-		if (*handle == DMA_MAPPING_ERROR) {
-			if (coherent)
-				__free_pages(page, get_order(size));
-			else
-				dma_free_from_pool(addr, size);
-			addr = NULL;
-		}
-	} else if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
-		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
-		struct page *page;
-
-		page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
-					get_order(size), gfp & __GFP_NOWARN);
-		if (!page)
-			return NULL;
-
-		*handle = iommu_dma_map_page(dev, page, 0, iosize, ioprot);
-		if (*handle == DMA_MAPPING_ERROR) {
-			dma_release_from_contiguous(dev, page,
-						    size >> PAGE_SHIFT);
-			return NULL;
-		}
-		addr = dma_common_contiguous_remap(page, size, VM_USERMAP,
-						   prot,
-						   __builtin_return_address(0));
-		if (addr) {
-			if (!coherent)
-				__dma_flush_area(page_to_virt(page), iosize);
-			memset(addr, 0, size);
-		} else {
-			iommu_dma_unmap_page(dev, *handle, iosize, 0, attrs);
-			dma_release_from_contiguous(dev, page,
-						    size >> PAGE_SHIFT);
-		}
-	} else {
-		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
-		struct page **pages;
-
-		pages = iommu_dma_alloc(dev, iosize, gfp, attrs, ioprot,
-					handle);
-		if (!pages)
-			return NULL;
-
-		addr = dma_common_pages_remap(pages, size, VM_USERMAP, prot,
-					      __builtin_return_address(0));
-		if (!addr)
-			iommu_dma_free(dev, pages, iosize, handle);
-	}
-	return addr;
-}
-
-static void __iommu_free_attrs(struct device *dev, size_t size, void *cpu_addr,
-			       dma_addr_t handle, unsigned long attrs)
-{
-	size_t iosize = size;
-
-	size = PAGE_ALIGN(size);
-	/*
-	 * @cpu_addr will be one of 4 things depending on how it was allocated:
-	 * - A remapped array of pages for contiguous allocations.
-	 * - A remapped array of pages from iommu_dma_alloc(), for all
-	 *   non-atomic allocations.
-	 * - A non-cacheable alias from the atomic pool, for atomic
-	 *   allocations by non-coherent devices.
-	 * - A normal lowmem address, for atomic allocations by
-	 *   coherent devices.
-	 * Hence how dodgy the below logic looks...
-	 */
-	if (dma_in_atomic_pool(cpu_addr, size)) {
-		iommu_dma_unmap_page(dev, handle, iosize, 0, 0);
-		dma_free_from_pool(cpu_addr, size);
-	} else if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
-		struct page *page = vmalloc_to_page(cpu_addr);
-
-		iommu_dma_unmap_page(dev, handle, iosize, 0, attrs);
-		dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
-		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
-	} else if (is_vmalloc_addr(cpu_addr)){
-		struct vm_struct *area = find_vm_area(cpu_addr);
-
-		if (WARN_ON(!area || !area->pages))
-			return;
-		iommu_dma_free(dev, area->pages, iosize, &handle);
-		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
-	} else {
-		iommu_dma_unmap_page(dev, handle, iosize, 0, 0);
-		__free_pages(virt_to_page(cpu_addr), get_order(size));
-	}
-}
-
-static int __iommu_mmap_attrs(struct device *dev, struct vm_area_struct *vma,
-			      void *cpu_addr, dma_addr_t dma_addr, size_t size,
-			      unsigned long attrs)
-{
-	struct vm_struct *area;
-	int ret;
-
-	vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
-
-	if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
-		return ret;
-
-	if (!is_vmalloc_addr(cpu_addr)) {
-		unsigned long pfn = page_to_pfn(virt_to_page(cpu_addr));
-		return __swiotlb_mmap_pfn(vma, pfn, size);
-	}
-
-	if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
-		/*
-		 * DMA_ATTR_FORCE_CONTIGUOUS allocations are always remapped,
-		 * hence in the vmalloc space.
-		 */
-		unsigned long pfn = vmalloc_to_pfn(cpu_addr);
-		return __swiotlb_mmap_pfn(vma, pfn, size);
-	}
-
-	area = find_vm_area(cpu_addr);
-	if (WARN_ON(!area || !area->pages))
-		return -ENXIO;
-
-	return iommu_dma_mmap(area->pages, size, vma);
-}
-
-static int __iommu_get_sgtable(struct device *dev, struct sg_table *sgt,
-			       void *cpu_addr, dma_addr_t dma_addr,
-			       size_t size, unsigned long attrs)
-{
-	unsigned int count = PAGE_ALIGN(size) >> PAGE_SHIFT;
-	struct vm_struct *area = find_vm_area(cpu_addr);
-
-	if (!is_vmalloc_addr(cpu_addr)) {
-		struct page *page = virt_to_page(cpu_addr);
-		return __swiotlb_get_sgtable_page(sgt, page, size);
-	}
-
-	if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
-		/*
-		 * DMA_ATTR_FORCE_CONTIGUOUS allocations are always remapped,
-		 * hence in the vmalloc space.
-		 */
-		struct page *page = vmalloc_to_page(cpu_addr);
-		return __swiotlb_get_sgtable_page(sgt, page, size);
-	}
-
-	if (WARN_ON(!area || !area->pages))
-		return -ENXIO;
-
-	return sg_alloc_table_from_pages(sgt, area->pages, count, 0, size,
-					 GFP_KERNEL);
-}
-
-static void __iommu_sync_single_for_cpu(struct device *dev,
-					dma_addr_t dev_addr, size_t size,
-					enum dma_data_direction dir)
-{
-	phys_addr_t phys;
-
-	if (dev_is_dma_coherent(dev))
-		return;
-
-	phys = iommu_iova_to_phys(iommu_get_dma_domain(dev), dev_addr);
-	arch_sync_dma_for_cpu(dev, phys, size, dir);
-}
-
-static void __iommu_sync_single_for_device(struct device *dev,
-					   dma_addr_t dev_addr, size_t size,
-					   enum dma_data_direction dir)
-{
-	phys_addr_t phys;
-
-	if (dev_is_dma_coherent(dev))
-		return;
-
-	phys = iommu_iova_to_phys(iommu_get_dma_domain(dev), dev_addr);
-	arch_sync_dma_for_device(dev, phys, size, dir);
-}
-
-static dma_addr_t __iommu_map_page(struct device *dev, struct page *page,
-				   unsigned long offset, size_t size,
-				   enum dma_data_direction dir,
-				   unsigned long attrs)
-{
-	bool coherent = dev_is_dma_coherent(dev);
-	int prot = dma_info_to_prot(dir, coherent, attrs);
-	dma_addr_t dev_addr = iommu_dma_map_page(dev, page, offset, size, prot);
-
-	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
-	    dev_addr != DMA_MAPPING_ERROR)
-		__dma_map_area(page_address(page) + offset, size, dir);
-
-	return dev_addr;
-}
-
-static void __iommu_unmap_page(struct device *dev, dma_addr_t dev_addr,
-			       size_t size, enum dma_data_direction dir,
-			       unsigned long attrs)
-{
-	if ((attrs & DMA_ATTR_SKIP_CPU_SYNC) == 0)
-		__iommu_sync_single_for_cpu(dev, dev_addr, size, dir);
-
-	iommu_dma_unmap_page(dev, dev_addr, size, dir, attrs);
-}
-
-static void __iommu_sync_sg_for_cpu(struct device *dev,
-				    struct scatterlist *sgl, int nelems,
-				    enum dma_data_direction dir)
-{
-	struct scatterlist *sg;
-	int i;
-
-	if (dev_is_dma_coherent(dev))
-		return;
-
-	for_each_sg(sgl, sg, nelems, i)
-		arch_sync_dma_for_cpu(dev, sg_phys(sg), sg->length, dir);
-}
-
-static void __iommu_sync_sg_for_device(struct device *dev,
-				       struct scatterlist *sgl, int nelems,
-				       enum dma_data_direction dir)
-{
-	struct scatterlist *sg;
-	int i;
-
-	if (dev_is_dma_coherent(dev))
-		return;
-
-	for_each_sg(sgl, sg, nelems, i)
-		arch_sync_dma_for_device(dev, sg_phys(sg), sg->length, dir);
-}
-
-static int __iommu_map_sg_attrs(struct device *dev, struct scatterlist *sgl,
-				int nelems, enum dma_data_direction dir,
-				unsigned long attrs)
-{
-	bool coherent = dev_is_dma_coherent(dev);
-
-	if ((attrs & DMA_ATTR_SKIP_CPU_SYNC) == 0)
-		__iommu_sync_sg_for_device(dev, sgl, nelems, dir);
-
-	return iommu_dma_map_sg(dev, sgl, nelems,
-				dma_info_to_prot(dir, coherent, attrs));
-}
-
-static void __iommu_unmap_sg_attrs(struct device *dev,
-				   struct scatterlist *sgl, int nelems,
-				   enum dma_data_direction dir,
-				   unsigned long attrs)
-{
-	if ((attrs & DMA_ATTR_SKIP_CPU_SYNC) == 0)
-		__iommu_sync_sg_for_cpu(dev, sgl, nelems, dir);
-
-	iommu_dma_unmap_sg(dev, sgl, nelems, dir, attrs);
-}
-
-static const struct dma_map_ops iommu_dma_ops = {
-	.alloc = __iommu_alloc_attrs,
-	.free = __iommu_free_attrs,
-	.mmap = __iommu_mmap_attrs,
-	.get_sgtable = __iommu_get_sgtable,
-	.map_page = __iommu_map_page,
-	.unmap_page = __iommu_unmap_page,
-	.map_sg = __iommu_map_sg_attrs,
-	.unmap_sg = __iommu_unmap_sg_attrs,
-	.sync_single_for_cpu = __iommu_sync_single_for_cpu,
-	.sync_single_for_device = __iommu_sync_single_for_device,
-	.sync_sg_for_cpu = __iommu_sync_sg_for_cpu,
-	.sync_sg_for_device = __iommu_sync_sg_for_device,
-	.map_resource = iommu_dma_map_resource,
-	.unmap_resource = iommu_dma_unmap_resource,
-};
-
-static int __init __iommu_dma_init(void)
-{
-	return iommu_dma_init();
-}
-arch_initcall(__iommu_dma_init);
-
-static void __iommu_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
-				  const struct iommu_ops *ops)
-{
-	struct iommu_domain *domain;
-
-	if (!ops)
-		return;
-
-	/*
-	 * The IOMMU core code allocates the default DMA domain, which the
-	 * underlying IOMMU driver needs to support via the dma-iommu layer.
-	 */
-	domain = iommu_get_domain_for_dev(dev);
-
-	if (!domain)
-		goto out_err;
-
-	if (domain->type == IOMMU_DOMAIN_DMA) {
-		if (iommu_dma_init_domain(domain, dma_base, size, dev))
-			goto out_err;
-
-		dev->dma_ops = &iommu_dma_ops;
-	}
-
-	return;
-
-out_err:
-	 pr_warn("Failed to set up IOMMU for device %s; retaining platform DMA ops\n",
-		 dev_name(dev));
-}
-
 void arch_teardown_dma_ops(struct device *dev)
 {
 	dev->dma_ops = NULL;
 }
-
-#else
-
-static void __iommu_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
-				  const struct iommu_ops *iommu)
-{ }
-
-#endif  /* CONFIG_IOMMU_DMA */
+#endif
 
 void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 			const struct iommu_ops *iommu, bool coherent)
 {
 	dev->dma_coherent = coherent;
-	__iommu_setup_dma_ops(dev, dma_base, size, iommu);
+	if (iommu)
+		iommu_setup_dma_ops(dev, dma_base, size);
 
 #ifdef CONFIG_XEN
 	if (xen_initial_domain())
diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 6f07f3b21816..bdc14baf2ee5 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -95,6 +95,7 @@ config IOMMU_DMA
 	select IOMMU_API
 	select IOMMU_IOVA
 	select NEED_SG_DMA_LENGTH
+	depends on DMA_DIRECT_REMAP
 
 config FSL_PAMU
 	bool "Freescale IOMMU support"
diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index f915cb7c46e6..089a13db919c 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -21,6 +21,7 @@
 
 #include <linux/acpi_iort.h>
 #include <linux/device.h>
+#include <linux/dma-contiguous.h>
 #include <linux/dma-iommu.h>
 #include <linux/dma-noncoherent.h>
 #include <linux/gfp.h>
@@ -79,11 +80,6 @@ static struct iommu_dma_cookie *cookie_alloc(enum iommu_dma_cookie_type type)
 	return cookie;
 }
 
-int iommu_dma_init(void)
-{
-	return iova_cache_get();
-}
-
 /**
  * iommu_get_dma_cookie - Acquire DMA-API resources for a domain
  * @domain: IOMMU domain to prepare for DMA-API usage
@@ -285,7 +281,7 @@ static void iommu_dma_flush_iotlb_all(struct iova_domain *iovad)
  * to ensure it is an invalid IOVA. It is safe to reinitialise a domain, but
  * any change which could make prior IOVAs invalid will fail.
  */
-int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
+static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 		u64 size, struct device *dev)
 {
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
@@ -336,7 +332,6 @@ int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 
 	return iova_reserve_iommu_regions(dev, domain);
 }
-EXPORT_SYMBOL(iommu_dma_init_domain);
 
 /**
  * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
@@ -347,7 +342,7 @@ EXPORT_SYMBOL(iommu_dma_init_domain);
  *
  * Return: corresponding IOMMU API page protection flags
  */
-int dma_info_to_prot(enum dma_data_direction dir, bool coherent,
+static int dma_info_to_prot(enum dma_data_direction dir, bool coherent,
 		     unsigned long attrs)
 {
 	int prot = coherent ? IOMMU_CACHE : 0;
@@ -506,17 +501,17 @@ static struct page **__iommu_dma_alloc_pages(struct device *dev,
 }
 
 /**
- * iommu_dma_free - Free a buffer allocated by iommu_dma_alloc()
+ * iommu_dma_free - Free a buffer allocated by __iommu_dma_alloc()
  * @dev: Device which owns this buffer
- * @pages: Array of buffer pages as returned by iommu_dma_alloc()
+ * @pages: Array of buffer pages as returned by __iommu_dma_alloc()
  * @size: Size of buffer in bytes
  * @handle: DMA address of buffer
  *
  * Frees both the pages associated with the buffer, and the array
  * describing them
  */
-void iommu_dma_free(struct device *dev, struct page **pages, size_t size,
-		dma_addr_t *handle)
+static void __iommu_dma_free(struct device *dev, struct page **pages,
+		size_t size, dma_addr_t *handle)
 {
 	__iommu_dma_unmap(iommu_get_dma_domain(dev), *handle, size);
 	__iommu_dma_free_pages(pages, PAGE_ALIGN(size) >> PAGE_SHIFT);
@@ -524,7 +519,7 @@ void iommu_dma_free(struct device *dev, struct page **pages, size_t size,
 }
 
 /**
- * iommu_dma_alloc - Allocate and map a buffer contiguous in IOVA space
+ * __iommu_dma_alloc - Allocate and map a buffer contiguous in IOVA space
  * @dev: Device to allocate memory for. Must be a real device
  *	 attached to an iommu_dma_domain
  * @size: Size of buffer in bytes
@@ -539,8 +534,8 @@ void iommu_dma_free(struct device *dev, struct page **pages, size_t size,
  * Return: Array of struct page pointers describing the buffer,
  *	   or NULL on failure.
  */
-struct page **iommu_dma_alloc(struct device *dev, size_t size, gfp_t gfp,
-		unsigned long attrs, int prot, dma_addr_t *handle)
+static struct page **__iommu_dma_alloc(struct device *dev, size_t size,
+		gfp_t gfp, unsigned long attrs, int prot, dma_addr_t *handle)
 {
 	struct iommu_domain *domain = iommu_get_dma_domain(dev);
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
@@ -602,16 +597,16 @@ struct page **iommu_dma_alloc(struct device *dev, size_t size, gfp_t gfp,
 }
 
 /**
- * iommu_dma_mmap - Map a buffer into provided user VMA
- * @pages: Array representing buffer from iommu_dma_alloc()
+ * __iommu_dma_mmap - Map a buffer into provided user VMA
+ * @pages: Array representing buffer from __iommu_dma_alloc()
  * @size: Size of buffer in bytes
  * @vma: VMA describing requested userspace mapping
  *
  * Maps the pages of the buffer in @pages into @vma. The caller is responsible
  * for verifying the correct size and protection of @vma beforehand.
  */
-
-int iommu_dma_mmap(struct page **pages, size_t size, struct vm_area_struct *vma)
+static int __iommu_dma_mmap(struct page **pages, size_t size,
+		struct vm_area_struct *vma)
 {
 	unsigned long uaddr = vma->vm_start;
 	unsigned int i, count = PAGE_ALIGN(size) >> PAGE_SHIFT;
@@ -626,6 +621,58 @@ int iommu_dma_mmap(struct page **pages, size_t size, struct vm_area_struct *vma)
 	return ret;
 }
 
+static void iommu_dma_sync_single_for_cpu(struct device *dev,
+		dma_addr_t dma_handle, size_t size, enum dma_data_direction dir)
+{
+	phys_addr_t phys;
+
+	if (dev_is_dma_coherent(dev))
+		return;
+
+	phys = iommu_iova_to_phys(iommu_get_dma_domain(dev), dma_handle);
+	arch_sync_dma_for_cpu(dev, phys, size, dir);
+}
+
+static void iommu_dma_sync_single_for_device(struct device *dev,
+		dma_addr_t dma_handle, size_t size, enum dma_data_direction dir)
+{
+	phys_addr_t phys;
+
+	if (dev_is_dma_coherent(dev))
+		return;
+
+	phys = iommu_iova_to_phys(iommu_get_dma_domain(dev), dma_handle);
+	arch_sync_dma_for_device(dev, phys, size, dir);
+}
+
+static void iommu_dma_sync_sg_for_cpu(struct device *dev,
+		struct scatterlist *sgl, int nelems,
+		enum dma_data_direction dir)
+{
+	struct scatterlist *sg;
+	int i;
+
+	if (dev_is_dma_coherent(dev))
+		return;
+
+	for_each_sg(sgl, sg, nelems, i)
+		arch_sync_dma_for_cpu(dev, sg_phys(sg), sg->length, dir);
+}
+
+static void iommu_dma_sync_sg_for_device(struct device *dev,
+		struct scatterlist *sgl, int nelems,
+		enum dma_data_direction dir)
+{
+	struct scatterlist *sg;
+	int i;
+
+	if (dev_is_dma_coherent(dev))
+		return;
+
+	for_each_sg(sgl, sg, nelems, i)
+		arch_sync_dma_for_device(dev, sg_phys(sg), sg->length, dir);
+}
+
 static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 		size_t size, int prot, struct iommu_domain *domain)
 {
@@ -649,19 +696,44 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 	return iova + iova_off;
 }
 
-dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
+static dma_addr_t __iommu_dma_map_page(struct device *dev, struct page *page,
 		unsigned long offset, size_t size, int prot)
 {
 	return __iommu_dma_map(dev, page_to_phys(page) + offset, size, prot,
 			iommu_get_dma_domain(dev));
 }
 
-void iommu_dma_unmap_page(struct device *dev, dma_addr_t handle, size_t size,
-		enum dma_data_direction dir, unsigned long attrs)
+static void __iommu_dma_unmap_page(struct device *dev, dma_addr_t handle,
+		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
 	__iommu_dma_unmap(iommu_get_dma_domain(dev), handle, size);
 }
 
+static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
+		unsigned long offset, size_t size, enum dma_data_direction dir,
+		unsigned long attrs)
+{
+	phys_addr_t phys = page_to_phys(page) + offset;
+	bool coherent = dev_is_dma_coherent(dev);
+	dma_addr_t dma_handle;
+
+	dma_handle =__iommu_dma_map(dev, phys, size,
+			dma_info_to_prot(dir, coherent, attrs),
+			iommu_get_dma_domain(dev));
+	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
+	    dma_handle != DMA_MAPPING_ERROR)
+		arch_sync_dma_for_device(dev, phys, size, dir);
+	return dma_handle;
+}
+
+static void iommu_dma_unmap_page(struct device *dev, dma_addr_t dma_handle,
+		size_t size, enum dma_data_direction dir, unsigned long attrs)
+{
+	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
+		iommu_dma_sync_single_for_cpu(dev, dma_handle, size, dir);
+	__iommu_dma_unmap(iommu_get_dma_domain(dev), dma_handle, size);
+}
+
 /*
  * Prepare a successfully-mapped scatterlist to give back to the caller.
  *
@@ -744,18 +816,22 @@ static void __invalidate_sg(struct scatterlist *sg, int nents)
  * impedance-matching, to be able to hand off a suitably-aligned list,
  * but still preserve the original offsets and sizes for the caller.
  */
-int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
-		int nents, int prot)
+static int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
+		int nents, enum dma_data_direction dir, unsigned long attrs)
 {
 	struct iommu_domain *domain = iommu_get_dma_domain(dev);
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
 	struct iova_domain *iovad = &cookie->iovad;
 	struct scatterlist *s, *prev = NULL;
+	int prot = dma_info_to_prot(dir, dev_is_dma_coherent(dev), attrs);
 	dma_addr_t iova;
 	size_t iova_len = 0;
 	unsigned long mask = dma_get_seg_boundary(dev);
 	int i;
 
+	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
+		iommu_dma_sync_sg_for_device(dev, sg, nents, dir);
+
 	/*
 	 * Work out how much IOVA space we need, and align the segments to
 	 * IOVA granules for the IOMMU driver to handle. With some clever
@@ -815,12 +891,16 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
 	return 0;
 }
 
-void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg, int nents,
-		enum dma_data_direction dir, unsigned long attrs)
+static void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg,
+		int nents, enum dma_data_direction dir, unsigned long attrs)
 {
 	dma_addr_t start, end;
 	struct scatterlist *tmp;
 	int i;
+
+	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) == 0)
+		iommu_dma_sync_sg_for_cpu(dev, sg, nents, dir);
+
 	/*
 	 * The scatterlist segments are mapped into a single
 	 * contiguous IOVA allocation, so this is incredibly easy.
@@ -835,7 +915,7 @@ void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg, int nents,
 	__iommu_dma_unmap(iommu_get_dma_domain(dev), start, end - start);
 }
 
-dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
+static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
 	return __iommu_dma_map(dev, phys, size,
@@ -843,12 +923,268 @@ dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
 			iommu_get_dma_domain(dev));
 }
 
-void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
+static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
 	__iommu_dma_unmap(iommu_get_dma_domain(dev), handle, size);
 }
 
+static void *iommu_dma_alloc(struct device *dev, size_t size,
+		dma_addr_t *handle, gfp_t gfp, unsigned long attrs)
+{
+	bool coherent = dev_is_dma_coherent(dev);
+	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
+	size_t iosize = size;
+	void *addr;
+
+	size = PAGE_ALIGN(size);
+	gfp |= __GFP_ZERO;
+
+	if (!gfpflags_allow_blocking(gfp)) {
+		struct page *page;
+		/*
+		 * In atomic context we can't remap anything, so we'll only
+		 * get the virtually contiguous buffer we need by way of a
+		 * physically contiguous allocation.
+		 */
+		if (coherent) {
+			page = alloc_pages(gfp, get_order(size));
+			addr = page ? page_address(page) : NULL;
+		} else {
+			addr = dma_alloc_from_pool(size, &page, gfp);
+		}
+		if (!addr)
+			return NULL;
+
+		*handle = __iommu_dma_map_page(dev, page, 0, iosize, ioprot);
+		if (*handle == DMA_MAPPING_ERROR) {
+			if (coherent)
+				__free_pages(page, get_order(size));
+			else
+				dma_free_from_pool(addr, size);
+			addr = NULL;
+		}
+	} else if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
+		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
+		struct page *page;
+
+		page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
+					get_order(size), gfp & __GFP_NOWARN);
+		if (!page)
+			return NULL;
+
+		*handle = __iommu_dma_map_page(dev, page, 0, iosize, ioprot);
+		if (*handle == DMA_MAPPING_ERROR) {
+			dma_release_from_contiguous(dev, page,
+						    size >> PAGE_SHIFT);
+			return NULL;
+		}
+		addr = dma_common_contiguous_remap(page, size, VM_USERMAP,
+						   prot,
+						   __builtin_return_address(0));
+		if (addr) {
+			if (!coherent)
+				arch_dma_prep_coherent(page, iosize);
+			memset(addr, 0, size);
+		} else {
+			__iommu_dma_unmap_page(dev, *handle, iosize, 0, attrs);
+			dma_release_from_contiguous(dev, page,
+						    size >> PAGE_SHIFT);
+		}
+	} else {
+		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
+		struct page **pages;
+
+		pages = __iommu_dma_alloc(dev, iosize, gfp, attrs, ioprot,
+					handle);
+		if (!pages)
+			return NULL;
+
+		addr = dma_common_pages_remap(pages, size, VM_USERMAP, prot,
+					      __builtin_return_address(0));
+		if (!addr)
+			__iommu_dma_free(dev, pages, iosize, handle);
+	}
+	return addr;
+}
+
+static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
+		dma_addr_t handle, unsigned long attrs)
+{
+	size_t iosize = size;
+
+	size = PAGE_ALIGN(size);
+	/*
+	 * @cpu_addr will be one of 4 things depending on how it was allocated:
+	 * - A remapped array of pages for contiguous allocations.
+	 * - A remapped array of pages from __iommu_dma_alloc(), for all
+	 *   non-atomic allocations.
+	 * - A non-cacheable alias from the atomic pool, for atomic
+	 *   allocations by non-coherent devices.
+	 * - A normal lowmem address, for atomic allocations by
+	 *   coherent devices.
+	 * Hence how dodgy the below logic looks...
+	 */
+	if (dma_in_atomic_pool(cpu_addr, size)) {
+		__iommu_dma_unmap_page(dev, handle, iosize, 0, 0);
+		dma_free_from_pool(cpu_addr, size);
+	} else if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
+		struct page *page = vmalloc_to_page(cpu_addr);
+
+		__iommu_dma_unmap_page(dev, handle, iosize, 0, attrs);
+		dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
+		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
+	} else if (is_vmalloc_addr(cpu_addr)){
+		struct vm_struct *area = find_vm_area(cpu_addr);
+
+		if (WARN_ON(!area || !area->pages))
+			return;
+		__iommu_dma_free(dev, area->pages, iosize, &handle);
+		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
+	} else {
+		__iommu_dma_unmap_page(dev, handle, iosize, 0, 0);
+		__free_pages(virt_to_page(cpu_addr), get_order(size));
+	}
+}
+
+static int __iommu_dma_mmap_pfn(struct vm_area_struct *vma,
+			      unsigned long pfn, size_t size)
+{
+	int ret = -ENXIO;
+	unsigned long nr_vma_pages = vma_pages(vma);
+	unsigned long nr_pages = PAGE_ALIGN(size) >> PAGE_SHIFT;
+	unsigned long off = vma->vm_pgoff;
+
+	if (off < nr_pages && nr_vma_pages <= (nr_pages - off)) {
+		ret = remap_pfn_range(vma, vma->vm_start,
+				      pfn + off,
+				      vma->vm_end - vma->vm_start,
+				      vma->vm_page_prot);
+	}
+
+	return ret;
+}
+
+static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
+		void *cpu_addr, dma_addr_t dma_addr, size_t size,
+		unsigned long attrs)
+{
+	unsigned long nr_pages = PAGE_ALIGN(size) >> PAGE_SHIFT;
+	unsigned long off = vma->vm_pgoff;
+	struct vm_struct *area;
+	int ret;
+
+	vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
+
+	if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
+		return ret;
+
+	if (off >= nr_pages || vma_pages(vma) > nr_pages - off)
+		return -ENXIO;
+
+	if (!is_vmalloc_addr(cpu_addr)) {
+		unsigned long pfn = page_to_pfn(virt_to_page(cpu_addr));
+		return __iommu_dma_mmap_pfn(vma, pfn, size);
+	}
+
+	if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
+		/*
+		 * DMA_ATTR_FORCE_CONTIGUOUS allocations are always remapped,
+		 * hence in the vmalloc space.
+		 */
+		unsigned long pfn = vmalloc_to_pfn(cpu_addr);
+		return __iommu_dma_mmap_pfn(vma, pfn, size);
+	}
+
+	area = find_vm_area(cpu_addr);
+	if (WARN_ON(!area || !area->pages))
+		return -ENXIO;
+
+	return __iommu_dma_mmap(area->pages, size, vma);
+}
+
+static int __iommu_dma_get_sgtable_page(struct sg_table *sgt, struct page *page,
+		size_t size)
+{
+	int ret = sg_alloc_table(sgt, 1, GFP_KERNEL);
+
+	if (!ret)
+		sg_set_page(sgt->sgl, page, PAGE_ALIGN(size), 0);
+	return ret;
+}
+
+static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
+		void *cpu_addr, dma_addr_t dma_addr, size_t size,
+		unsigned long attrs)
+{
+	unsigned int count = PAGE_ALIGN(size) >> PAGE_SHIFT;
+	struct vm_struct *area = find_vm_area(cpu_addr);
+
+	if (!is_vmalloc_addr(cpu_addr)) {
+		struct page *page = virt_to_page(cpu_addr);
+		return __iommu_dma_get_sgtable_page(sgt, page, size);
+	}
+
+	if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
+		/*
+		 * DMA_ATTR_FORCE_CONTIGUOUS allocations are always remapped,
+		 * hence in the vmalloc space.
+		 */
+		struct page *page = vmalloc_to_page(cpu_addr);
+		return __iommu_dma_get_sgtable_page(sgt, page, size);
+	}
+
+	if (WARN_ON(!area || !area->pages))
+		return -ENXIO;
+
+	return sg_alloc_table_from_pages(sgt, area->pages, count, 0, size,
+					 GFP_KERNEL);
+}
+
+static const struct dma_map_ops iommu_dma_ops = {
+	.alloc			= iommu_dma_alloc,
+	.free			= iommu_dma_free,
+	.mmap			= iommu_dma_mmap,
+	.get_sgtable		= iommu_dma_get_sgtable,
+	.map_page		= iommu_dma_map_page,
+	.unmap_page		= iommu_dma_unmap_page,
+	.map_sg			= iommu_dma_map_sg,
+	.unmap_sg		= iommu_dma_unmap_sg,
+	.sync_single_for_cpu	= iommu_dma_sync_single_for_cpu,
+	.sync_single_for_device	= iommu_dma_sync_single_for_device,
+	.sync_sg_for_cpu	= iommu_dma_sync_sg_for_cpu,
+	.sync_sg_for_device	= iommu_dma_sync_sg_for_device,
+	.map_resource		= iommu_dma_map_resource,
+	.unmap_resource		= iommu_dma_unmap_resource,
+};
+
+/*
+ * The IOMMU core code allocates the default DMA domain, which the underlying
+ * IOMMU driver needs to support via the dma-iommu layer.
+ */
+void iommu_setup_dma_ops(struct device *dev, u64 dma_base, u64 size)
+{
+	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
+
+	if (!domain)
+		goto out_err;
+
+	/*
+	 * The IOMMU core code allocates the default DMA domain, which the
+	 * underlying IOMMU driver needs to support via the dma-iommu layer.
+	 */
+	if (domain->type == IOMMU_DOMAIN_DMA) {
+		if (iommu_dma_init_domain(domain, dma_base, size, dev))
+			goto out_err;
+		dev->dma_ops = &iommu_dma_ops;
+	}
+
+	return;
+out_err:
+	 pr_warn("Failed to set up IOMMU for device %s; retaining platform DMA ops\n",
+		 dev_name(dev));
+}
+
 static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
 		phys_addr_t msi_addr, struct iommu_domain *domain)
 {
@@ -921,3 +1257,9 @@ void iommu_dma_map_msi_msg(int irq, struct msi_msg *msg)
 		msg->address_lo += lower_32_bits(msi_page->iova);
 	}
 }
+
+static int iommu_dma_init(void)
+{
+	return iova_cache_get();
+}
+arch_initcall(iommu_dma_init);
diff --git a/include/linux/dma-iommu.h b/include/linux/dma-iommu.h
index 3216447178a7..dadf4383f555 100644
--- a/include/linux/dma-iommu.h
+++ b/include/linux/dma-iommu.h
@@ -24,49 +24,13 @@
 #include <linux/iommu.h>
 #include <linux/msi.h>
 
-int iommu_dma_init(void);
-
 /* Domain management interface for IOMMU drivers */
 int iommu_get_dma_cookie(struct iommu_domain *domain);
 int iommu_get_msi_cookie(struct iommu_domain *domain, dma_addr_t base);
 void iommu_put_dma_cookie(struct iommu_domain *domain);
 
 /* Setup call for arch DMA mapping code */
-int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
-		u64 size, struct device *dev);
-
-/* General helpers for DMA-API <-> IOMMU-API interaction */
-int dma_info_to_prot(enum dma_data_direction dir, bool coherent,
-		     unsigned long attrs);
-
-/*
- * These implement the bulk of the relevant DMA mapping callbacks, but require
- * the arch code to take care of attributes and cache maintenance
- */
-struct page **iommu_dma_alloc(struct device *dev, size_t size, gfp_t gfp,
-		unsigned long attrs, int prot, dma_addr_t *handle);
-void iommu_dma_free(struct device *dev, struct page **pages, size_t size,
-		dma_addr_t *handle);
-
-int iommu_dma_mmap(struct page **pages, size_t size, struct vm_area_struct *vma);
-
-dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
-		unsigned long offset, size_t size, int prot);
-int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
-		int nents, int prot);
-
-/*
- * Arch code with no special attribute handling may use these
- * directly as DMA mapping callbacks for simplicity
- */
-void iommu_dma_unmap_page(struct device *dev, dma_addr_t handle, size_t size,
-		enum dma_data_direction dir, unsigned long attrs);
-void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg, int nents,
-		enum dma_data_direction dir, unsigned long attrs);
-dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
-		size_t size, enum dma_data_direction dir, unsigned long attrs);
-void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir, unsigned long attrs);
+void iommu_setup_dma_ops(struct device *dev, u64 dma_base, u64 size);
 
 /* The DMA API isn't _quite_ the whole story, though... */
 void iommu_dma_map_msi_msg(int irq, struct msi_msg *msg);
@@ -75,12 +39,13 @@ void iommu_dma_get_resv_regions(struct device *dev, struct list_head *list);
 #else /* CONFIG_IOMMU_DMA */
 
 struct iommu_domain;
+struct iommu_ops;
 struct msi_msg;
 struct device;
 
-static inline int iommu_dma_init(void)
+static inline void iommu_setup_dma_ops(struct device *dev, u64 dma_base,
+		u64 size)
 {
-	return 0;
 }
 
 static inline int iommu_get_dma_cookie(struct iommu_domain *domain)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
