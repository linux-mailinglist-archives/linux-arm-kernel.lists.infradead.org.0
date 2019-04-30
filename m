Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4F7F4DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxxcWnjnLfHp+eSuD7T0D7NK93X3+vimxqnDt59Cwoc=; b=GHaX+x5e0uKwbd
	iA048rBJ1DUwPbyEr31VSuZgpFuXi3xbe9TmiE0GAn6rezymeMFt24Yw6Ow4S0iskcRMmjPRlQDg8
	Q3PFo6sJgTcfS1Kq/7QWurP/ri+QL1KSHtbRlTuCM/JsG2iFVmXW9orNqAUR9l5QtXh1BPR4ZgzBz
	2ad6rTJWs5ocw/wz/bWJQScpj3Rej15gfj05PvhB0SY6839iymoAhRypMLBs531KtUXFAd+vojl3i
	R5qL+m4HCkVdiGlX/HOETNpoGmHIdI9BcGLiy6dFkU8D9Wsht9M9u+1kkGYq95EfaOSMc0vDpPRim
	ooJaKmN6HvtR+xTDTLEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQRn-0005lT-8E; Tue, 30 Apr 2019 10:57:15 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQNs-0007oL-Hg; Tue, 30 Apr 2019 10:53:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 14/25] iommu/dma: Refactor iommu_dma_alloc
Date: Tue, 30 Apr 2019 06:52:03 -0400
Message-Id: <20190430105214.24628-15-hch@lst.de>
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

From: Robin Murphy <robin.murphy@arm.com>

Shuffle around the self-contained atomic and non-contiguous cases to
return early and get out of the way of the CMA case that we're about to
work on next.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
[hch: slight changes to the code flow]
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 60 +++++++++++++++++++--------------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index f5c0e8cd3387..26f2d059873b 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -954,14 +954,19 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 {
 	bool coherent = dev_is_dma_coherent(dev);
 	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
+	pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
 	size_t iosize = size;
+	struct page *page;
 	void *addr;
 
 	size = PAGE_ALIGN(size);
 	gfp |= __GFP_ZERO;
 
+	if (gfpflags_allow_blocking(gfp) &&
+	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
+		return iommu_dma_alloc_remap(dev, iosize, handle, gfp, attrs);
+
 	if (!gfpflags_allow_blocking(gfp)) {
-		struct page *page;
 		/*
 		 * In atomic context we can't remap anything, so we'll only
 		 * get the virtually contiguous buffer we need by way of a
@@ -983,39 +988,34 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 				__free_pages(page, get_order(size));
 			else
 				dma_free_from_pool(addr, size);
-			addr = NULL;
-		}
-	} else if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
-		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
-		struct page *page;
-
-		page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
-					get_order(size), gfp & __GFP_NOWARN);
-		if (!page)
 			return NULL;
-
-		*handle = __iommu_dma_map(dev, page_to_phys(page), iosize, ioprot);
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
-				arch_dma_prep_coherent(page, iosize);
-			memset(addr, 0, size);
-		} else {
-			__iommu_dma_unmap(dev, *handle, iosize);
-			dma_release_from_contiguous(dev, page,
-						    size >> PAGE_SHIFT);
 		}
-	} else {
-		addr = iommu_dma_alloc_remap(dev, iosize, handle, gfp, attrs);
+		return addr;
 	}
+
+	page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
+					 get_order(size), gfp & __GFP_NOWARN);
+	if (!page)
+		return NULL;
+
+	*handle = __iommu_dma_map(dev, page_to_phys(page), iosize, ioprot);
+	if (*handle == DMA_MAPPING_ERROR)
+		goto out_free_pages;
+
+	addr = dma_common_contiguous_remap(page, size, VM_USERMAP, prot,
+			__builtin_return_address(0));
+	if (!addr)
+		goto out_unmap;
+
+	if (!coherent)
+		arch_dma_prep_coherent(page, iosize);
+	memset(addr, 0, size);
 	return addr;
+out_unmap:
+	__iommu_dma_unmap(dev, *handle, iosize);
+out_free_pages:
+	dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
+	return NULL;
 }
 
 static int __iommu_dma_mmap_pfn(struct vm_area_struct *vma,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
