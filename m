Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D000222D27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqLT6769xurfmxptuROB/frNNghBBkAclEKzJ35f3Gw=; b=oc/eTS3rkEDgFE
	EeiMLic9Pwmx7lRtUlxoiRBVJl2DAaMz6AVCmPAxI2IlKLAFShRhRnQvBlVqdZE7YCoiBVcLodDTM
	lNWcviH9fNfC/GFnsGS8wSfOQb4ZFRWp2ffaRyYqJlT5hhqhvPfNKWBACA4h8JboZh2OspI2dRP3k
	k/B8B/2XBwTIc0NbniseVBWsRebVPwjyT5rt64BKNIUlTNW+LAFfhiSo03yhWWqmug1EZWCdw92v6
	+UhmKSys85Mp2FRUIIvMgDLLGHKSFZ9rXUm/pAyk5pcqnTS7w/zRdVib8tjUuB552zAroeMlJa+QO
	dEao02BaxOliUUSvk4AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSco0-0007Ss-0r; Mon, 20 May 2019 07:33:56 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScli-0004vH-RC; Mon, 20 May 2019 07:31:35 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 21/24] iommu/dma: Don't depend on CONFIG_DMA_DIRECT_REMAP
Date: Mon, 20 May 2019 09:29:45 +0200
Message-Id: <20190520072948.11412-22-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520072948.11412-1-hch@lst.de>
References: <20190520072948.11412-1-hch@lst.de>
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
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For entirely dma coherent architectures there is no requirement to ever
remap dma coherent allocation.  Move all the remap and pool code under
IS_ENABLED() checks and drop the Kconfig dependency.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/Kconfig     |  1 -
 drivers/iommu/dma-iommu.c | 16 +++++++++-------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 130e94477b6d..e559e43c8ac2 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -96,7 +96,6 @@ config IOMMU_DMA
 	select IOMMU_IOVA
 	select IRQ_MSI_IOMMU
 	select NEED_SG_DMA_LENGTH
-	depends on DMA_DIRECT_REMAP
 
 config FSL_PAMU
 	bool "Freescale IOMMU support"
diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 84150ca7b572..0aff220c4aed 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -942,10 +942,11 @@ static void __iommu_dma_free(struct device *dev, size_t size, void *cpu_addr)
 	struct page *page = NULL, **pages = NULL;
 
 	/* Non-coherent atomic allocation? Easy */
-	if (dma_free_from_pool(cpu_addr, alloc_size))
+	if (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
+	    dma_free_from_pool(cpu_addr, alloc_size))
 		return;
 
-	if (is_vmalloc_addr(cpu_addr)) {
+	if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
 		/*
 		 * If it the address is remapped, then it's either non-coherent
 		 * or highmem CMA, or an iommu_dma_alloc_remap() construction.
@@ -989,7 +990,7 @@ static void *iommu_dma_alloc_pages(struct device *dev, size_t size,
 	if (!page)
 		return NULL;
 
-	if (!coherent || PageHighMem(page)) {
+	if (IS_ENABLED(CONFIG_DMA_REMAP) && (!coherent || PageHighMem(page))) {
 		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
 
 		cpu_addr = dma_common_contiguous_remap(page, alloc_size,
@@ -1022,11 +1023,12 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 
 	gfp |= __GFP_ZERO;
 
-	if (gfpflags_allow_blocking(gfp) &&
+	if (IS_ENABLED(CONFIG_DMA_REMAP) && gfpflags_allow_blocking(gfp) &&
 	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
 		return iommu_dma_alloc_remap(dev, size, handle, gfp, attrs);
 
-	if (!gfpflags_allow_blocking(gfp) && !coherent)
+	if (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
+	    !gfpflags_allow_blocking(gfp) && !coherent)
 		cpu_addr = dma_alloc_from_pool(PAGE_ALIGN(size), &page, gfp);
 	else
 		cpu_addr = iommu_dma_alloc_pages(dev, size, &page, gfp, attrs);
@@ -1058,7 +1060,7 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
 	if (off >= nr_pages || vma_pages(vma) > nr_pages - off)
 		return -ENXIO;
 
-	if (is_vmalloc_addr(cpu_addr)) {
+	if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
 		struct page **pages = __iommu_dma_get_pages(cpu_addr);
 
 		if (pages)
@@ -1080,7 +1082,7 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
 	struct page *page;
 	int ret;
 
-	if (is_vmalloc_addr(cpu_addr)) {
+	if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
 		struct page **pages = __iommu_dma_get_pages(cpu_addr);
 
 		if (pages) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
