Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1E32768A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZKpYueokxcyksmHHmfwvLH+vyD1Ggoir/Qlv4Ml0rI=; b=T2mAzfS2gSmy5E
	xCdHyvuZHhdfcgK6f4zW5h99SKTlGzQOkd1DvuqaHmVRDqZDlmyf7+cZN8xzy0+kW0NrFiH1YpJsJ
	/RIEF+6vFYvzcMbA3Zd8nOyPI+vs9YYy5IMu6fimIHIAwFi1nIzwIcCbMZ+Tv2FDxRbyJpe4iABKh
	iU9tlC3TmI9jTAMbKxiRSJ9is6R30MmfGcPpD0hf0mB1VX8cv6UbK3bwxWYIbaPOrCkW9nYgY2IMy
	q5B2QvnghwL2B2Qa8thDKLNPBdiUL0Ar9s7EbdpWrZkcdgNnL7s7bfbSj0iMIEwatP1WUT4EjMTsm
	CSL3bXTZo5YyOWtw1NPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThjh-0006Q1-KW; Thu, 23 May 2019 07:01:57 +0000
Received: from 213-225-10-46.nat.highway.a1.net ([213.225.10.46]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThia-0004x9-HI; Thu, 23 May 2019 07:00:49 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 06/23] iommu/dma: Move domain lookup into __iommu_dma_{map,
 unmap}
Date: Thu, 23 May 2019 09:00:11 +0200
Message-Id: <20190523070028.7435-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523070028.7435-1-hch@lst.de>
References: <20190523070028.7435-1-hch@lst.de>
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
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

Most of the callers don't care, and the couple that do already have the
domain to hand for other reasons are in slow paths where the (trivial)
overhead of a repeated lookup will be utterly immaterial.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 34 ++++++++++++++++------------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index c406abe3be01..c04450a4adec 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -448,9 +448,10 @@ static void iommu_dma_free_iova(struct iommu_dma_cookie *cookie,
 				size >> iova_shift(iovad));
 }
 
-static void __iommu_dma_unmap(struct iommu_domain *domain, dma_addr_t dma_addr,
+static void __iommu_dma_unmap(struct device *dev, dma_addr_t dma_addr,
 		size_t size)
 {
+	struct iommu_domain *domain = iommu_get_dma_domain(dev);
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
 	struct iova_domain *iovad = &cookie->iovad;
 	size_t iova_off = iova_offset(iovad, dma_addr);
@@ -465,8 +466,9 @@ static void __iommu_dma_unmap(struct iommu_domain *domain, dma_addr_t dma_addr,
 }
 
 static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
-		size_t size, int prot, struct iommu_domain *domain)
+		size_t size, int prot)
 {
+	struct iommu_domain *domain = iommu_get_dma_domain(dev);
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
 	size_t iova_off = 0;
 	dma_addr_t iova;
@@ -565,7 +567,7 @@ static struct page **__iommu_dma_alloc_pages(struct device *dev,
 static void __iommu_dma_free(struct device *dev, struct page **pages,
 		size_t size, dma_addr_t *handle)
 {
-	__iommu_dma_unmap(iommu_get_dma_domain(dev), *handle, size);
+	__iommu_dma_unmap(dev, *handle, size);
 	__iommu_dma_free_pages(pages, PAGE_ALIGN(size) >> PAGE_SHIFT);
 	*handle = DMA_MAPPING_ERROR;
 }
@@ -718,14 +720,13 @@ static void iommu_dma_sync_sg_for_device(struct device *dev,
 static dma_addr_t __iommu_dma_map_page(struct device *dev, struct page *page,
 		unsigned long offset, size_t size, int prot)
 {
-	return __iommu_dma_map(dev, page_to_phys(page) + offset, size, prot,
-			iommu_get_dma_domain(dev));
+	return __iommu_dma_map(dev, page_to_phys(page) + offset, size, prot);
 }
 
 static void __iommu_dma_unmap_page(struct device *dev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
-	__iommu_dma_unmap(iommu_get_dma_domain(dev), handle, size);
+	__iommu_dma_unmap(dev, handle, size);
 }
 
 static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
@@ -734,11 +735,10 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 {
 	phys_addr_t phys = page_to_phys(page) + offset;
 	bool coherent = dev_is_dma_coherent(dev);
+	int prot = dma_info_to_prot(dir, coherent, attrs);
 	dma_addr_t dma_handle;
 
-	dma_handle =__iommu_dma_map(dev, phys, size,
-			dma_info_to_prot(dir, coherent, attrs),
-			iommu_get_dma_domain(dev));
+	dma_handle =__iommu_dma_map(dev, phys, size, prot);
 	if (!coherent && !(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
 	    dma_handle != DMA_MAPPING_ERROR)
 		arch_sync_dma_for_device(dev, phys, size, dir);
@@ -750,7 +750,7 @@ static void iommu_dma_unmap_page(struct device *dev, dma_addr_t dma_handle,
 {
 	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
 		iommu_dma_sync_single_for_cpu(dev, dma_handle, size, dir);
-	__iommu_dma_unmap(iommu_get_dma_domain(dev), dma_handle, size);
+	__iommu_dma_unmap(dev, dma_handle, size);
 }
 
 /*
@@ -931,21 +931,20 @@ static void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg,
 		sg = tmp;
 	}
 	end = sg_dma_address(sg) + sg_dma_len(sg);
-	__iommu_dma_unmap(iommu_get_dma_domain(dev), start, end - start);
+	__iommu_dma_unmap(dev, start, end - start);
 }
 
 static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
 	return __iommu_dma_map(dev, phys, size,
-			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
-			iommu_get_dma_domain(dev));
+			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO);
 }
 
 static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
-	__iommu_dma_unmap(iommu_get_dma_domain(dev), handle, size);
+	__iommu_dma_unmap(dev, handle, size);
 }
 
 static void *iommu_dma_alloc(struct device *dev, size_t size,
@@ -1205,9 +1204,8 @@ void iommu_setup_dma_ops(struct device *dev, u64 dma_base, u64 size)
 }
 
 static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
-		phys_addr_t msi_addr, struct iommu_domain *domain)
+		phys_addr_t msi_addr, struct iommu_dma_cookie *cookie)
 {
-	struct iommu_dma_cookie *cookie = domain->iova_cookie;
 	struct iommu_dma_msi_page *msi_page;
 	dma_addr_t iova;
 	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
@@ -1222,7 +1220,7 @@ static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
 	if (!msi_page)
 		return NULL;
 
-	iova = __iommu_dma_map(dev, msi_addr, size, prot, domain);
+	iova = __iommu_dma_map(dev, msi_addr, size, prot);
 	if (iova == DMA_MAPPING_ERROR)
 		goto out_free_page;
 
@@ -1258,7 +1256,7 @@ int iommu_dma_prepare_msi(struct msi_desc *desc, phys_addr_t msi_addr)
 	 * of an MSI from within an IPI handler.
 	 */
 	spin_lock_irqsave(&cookie->msi_lock, flags);
-	msi_page = iommu_dma_get_msi_page(dev, msi_addr, domain);
+	msi_page = iommu_dma_get_msi_page(dev, msi_addr, cookie);
 	spin_unlock_irqrestore(&cookie->msi_lock, flags);
 
 	msi_desc_set_iommu_cookie(desc, msi_page);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
