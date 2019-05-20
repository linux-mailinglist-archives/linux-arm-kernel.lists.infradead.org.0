Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175D822D24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIzQKe+WBy5xYz3d3Zjx17EZ53AIAyoOLS6JtOnhGoE=; b=kSkY8gFB7xidPi
	yLFZyjriXmJpS1ZoLnlwZ+vOBto4wQJVzbIkdt9nJz1s/+R7PwunQno/AkEGWX2FJyybvvDhN+wCj
	fxyr6wfTCAwpONjI5xfxCIZKOTleM5r0FAVBhW0aStXFiIoEYuxTIDE8ppffRAXAZf6L9tPJCnr2o
	+d9LajVhcS2jwXd0zOiTQbsyJ+dQ+bTjej2zBaFJJSQhwd7kGYaYnhBE+gW7st6iVDPnJcFNRb7Z4
	PrJ1FMgOFHljHn4dw+ZQNvP0tGgLDJxYjqE6Vzb8mbDtZSQZeQj1PplFHdb++1dowzS3c6CLKGF60
	T1ovrXaEXkfib1Xq6Yyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScnV-0006ns-Df; Mon, 20 May 2019 07:33:25 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSclb-0004hd-AR; Mon, 20 May 2019 07:31:27 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 18/24] iommu/dma: Refactor iommu_dma_alloc, part 2
Date: Mon, 20 May 2019 09:29:42 +0200
Message-Id: <20190520072948.11412-19-hch@lst.de>
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

All the logic in iommu_dma_alloc that deals with page allocation from
the CMA or page allocators can be split into a self-contained helper,
and we can than map the result of that or the atomic pool allocation
with the iommu later.  This also allows reusing __iommu_dma_free to
tear down the allocations and MMU mappings when the IOMMU mapping
fails.

Based on a patch from Robin Murphy.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 65 +++++++++++++++++++++------------------
 1 file changed, 35 insertions(+), 30 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 4e27a29f4458..84761adbb1d4 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -972,35 +972,14 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
 	__iommu_dma_free(dev, size, cpu_addr);
 }
 
-static void *iommu_dma_alloc(struct device *dev, size_t size,
-		dma_addr_t *handle, gfp_t gfp, unsigned long attrs)
+static void *iommu_dma_alloc_pages(struct device *dev, size_t size,
+		struct page **pagep, gfp_t gfp, unsigned long attrs)
 {
 	bool coherent = dev_is_dma_coherent(dev);
-	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
 	size_t alloc_size = PAGE_ALIGN(size);
 	struct page *page = NULL;
 	void *cpu_addr;
 
-	gfp |= __GFP_ZERO;
-
-	if (gfpflags_allow_blocking(gfp) &&
-	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
-		return iommu_dma_alloc_remap(dev, size, handle, gfp, attrs);
-
-	if (!gfpflags_allow_blocking(gfp) && !coherent) {
-		cpu_addr = dma_alloc_from_pool(alloc_size, &page, gfp);
-		if (!cpu_addr)
-			return NULL;
-
-		*handle = __iommu_dma_map(dev, page_to_phys(page), size,
-					  ioprot);
-		if (*handle == DMA_MAPPING_ERROR) {
-			dma_free_from_pool(cpu_addr, alloc_size);
-			return NULL;
-		}
-		return cpu_addr;
-	}
-
 	if (gfpflags_allow_blocking(gfp))
 		page = dma_alloc_from_contiguous(dev, alloc_size >> PAGE_SHIFT,
 						 get_order(alloc_size),
@@ -1010,33 +989,59 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 	if (!page)
 		return NULL;
 
-	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
-	if (*handle == DMA_MAPPING_ERROR)
-		goto out_free_pages;
-
 	if (!coherent || PageHighMem(page)) {
 		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
 
 		cpu_addr = dma_common_contiguous_remap(page, alloc_size,
 				VM_USERMAP, prot, __builtin_return_address(0));
 		if (!cpu_addr)
-			goto out_unmap;
+			goto out_free_pages;
 
 		if (!coherent)
 			arch_dma_prep_coherent(page, size);
 	} else {
 		cpu_addr = page_address(page);
 	}
+
+	*pagep = page;
 	memset(cpu_addr, 0, alloc_size);
 	return cpu_addr;
-out_unmap:
-	__iommu_dma_unmap(dev, *handle, size);
 out_free_pages:
 	if (!dma_release_from_contiguous(dev, page, alloc_size >> PAGE_SHIFT))
 		__free_pages(page, get_order(alloc_size));
 	return NULL;
 }
 
+static void *iommu_dma_alloc(struct device *dev, size_t size,
+		dma_addr_t *handle, gfp_t gfp, unsigned long attrs)
+{
+	bool coherent = dev_is_dma_coherent(dev);
+	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
+	struct page *page = NULL;
+	void *cpu_addr;
+
+	gfp |= __GFP_ZERO;
+
+	if (gfpflags_allow_blocking(gfp) &&
+	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
+		return iommu_dma_alloc_remap(dev, size, handle, gfp, attrs);
+
+	if (!gfpflags_allow_blocking(gfp) && !coherent)
+		cpu_addr = dma_alloc_from_pool(PAGE_ALIGN(size), &page, gfp);
+	else
+		cpu_addr = iommu_dma_alloc_pages(dev, size, &page, gfp, attrs);
+	if (!cpu_addr)
+		return NULL;
+
+	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
+	if (*handle == DMA_MAPPING_ERROR) {
+		__iommu_dma_free(dev, size, cpu_addr);
+		return NULL;
+	}
+
+	return cpu_addr;
+}
+
 static int __iommu_dma_mmap_pfn(struct vm_area_struct *vma,
 			      unsigned long pfn, size_t size)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
