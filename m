Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D58A5AA1B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTVqefogjAkuKnyisaoN8t4rmYEg3gshANq5y/2jVlY=; b=ORrXLcCUocz9Yv
	aB2OGbyg2mB6yqeqtsLLvxFutOBdERt62ETeOhA3ZgXMG3c/t74bxbnOvczLphPxwSxLOpG1J7TmL
	GCsgEbhtLYCgciTFLPHxt9bm15mUjsXF+81tLejeCDfo/SDoxvcmGbqeNJvyZFyZCTbe3fukZF6cv
	AhKJm4RxTb7LJAsNQFpak4XY5+YSXdrzvHXJckXO1Ae+SzaKiBiPCEAlhJVK16/rU6sGEBCSIJ5GE
	C0ayjysYGyN6GugC3zS0vMzhtlcdkK3Q4+lGQ7lvGo+O2F7z3e4nXyp+sUtStm72LJNmZZRt5SNYB
	LUr6LWFeLybM+GAYh5HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5q91-0005Qb-8A; Thu, 05 Sep 2019 11:41:43 +0000
Received: from [2001:4bb8:18c:1755:a4b2:9562:6bf1:4bb9] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i5q8C-0004sy-Uh; Thu, 05 Sep 2019 11:40:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, gross@suse.com,
 boris.ostrovsky@oracle.com
Subject: [PATCH 04/11] xen/arm: simplify dma_cache_maint
Date: Thu,  5 Sep 2019 13:34:01 +0200
Message-Id: <20190905113408.3104-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190905113408.3104-1-hch@lst.de>
References: <20190905113408.3104-1-hch@lst.de>
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
Cc: xen-devel@lists.xenproject.org, iommu@lists.linux-foundation.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Calculate the required operation in the caller, and pass it directly
instead of recalculating it for each page, and use simple arithmetics
to get from the physical address to Xen page size aligned chunks.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
---
 arch/arm/xen/mm.c | 61 ++++++++++++++++-------------------------------
 1 file changed, 21 insertions(+), 40 deletions(-)

diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index 90574d89d0d4..2fde161733b0 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -35,64 +35,45 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
 	return __get_free_pages(flags, order);
 }
 
-enum dma_cache_op {
-       DMA_UNMAP,
-       DMA_MAP,
-};
 static bool hypercall_cflush = false;
 
-/* functions called by SWIOTLB */
-
-static void dma_cache_maint(dma_addr_t handle, unsigned long offset,
-	size_t size, enum dma_data_direction dir, enum dma_cache_op op)
+/* buffers in highmem or foreign pages cannot cross page boundaries */
+static void dma_cache_maint(dma_addr_t handle, size_t size, u32 op)
 {
 	struct gnttab_cache_flush cflush;
-	unsigned long xen_pfn;
-	size_t left = size;
 
-	xen_pfn = (handle >> XEN_PAGE_SHIFT) + offset / XEN_PAGE_SIZE;
-	offset %= XEN_PAGE_SIZE;
+	cflush.a.dev_bus_addr = handle & XEN_PAGE_MASK;
+	cflush.offset = xen_offset_in_page(handle);
+	cflush.op = op;
 
 	do {
-		size_t len = left;
-	
-		/* buffers in highmem or foreign pages cannot cross page
-		 * boundaries */
-		if (len + offset > XEN_PAGE_SIZE)
-			len = XEN_PAGE_SIZE - offset;
-
-		cflush.op = 0;
-		cflush.a.dev_bus_addr = xen_pfn << XEN_PAGE_SHIFT;
-		cflush.offset = offset;
-		cflush.length = len;
-
-		if (op == DMA_UNMAP && dir != DMA_TO_DEVICE)
-			cflush.op = GNTTAB_CACHE_INVAL;
-		if (op == DMA_MAP) {
-			if (dir == DMA_FROM_DEVICE)
-				cflush.op = GNTTAB_CACHE_INVAL;
-			else
-				cflush.op = GNTTAB_CACHE_CLEAN;
-		}
-		if (cflush.op)
-			HYPERVISOR_grant_table_op(GNTTABOP_cache_flush, &cflush, 1);
+		if (size + cflush.offset > XEN_PAGE_SIZE)
+			cflush.length = XEN_PAGE_SIZE - cflush.offset;
+		else
+			cflush.length = size;
+
+		HYPERVISOR_grant_table_op(GNTTABOP_cache_flush, &cflush, 1);
 
-		offset = 0;
-		xen_pfn++;
-		left -= len;
-	} while (left);
+		cflush.offset = 0;
+		cflush.a.dev_bus_addr += cflush.length;
+		size -= cflush.length;
+	} while (size);
 }
 
 static void __xen_dma_page_dev_to_cpu(struct device *hwdev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir)
 {
-	dma_cache_maint(handle & PAGE_MASK, handle & ~PAGE_MASK, size, dir, DMA_UNMAP);
+	if (dir != DMA_TO_DEVICE)
+		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
 }
 
 static void __xen_dma_page_cpu_to_dev(struct device *hwdev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir)
 {
-	dma_cache_maint(handle & PAGE_MASK, handle & ~PAGE_MASK, size, dir, DMA_MAP);
+	if (dir == DMA_FROM_DEVICE)
+		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
+	else
+		dma_cache_maint(handle, size, GNTTAB_CACHE_CLEAN);
 }
 
 void __xen_dma_map_page(struct device *hwdev, struct page *page,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
