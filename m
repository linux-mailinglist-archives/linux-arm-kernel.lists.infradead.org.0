Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E882AAA1DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXBSH8AihoeuEGt97E5HkjPn21WahuYya2u72SAKxHI=; b=dg45+Qt5OT5KMQ
	SOuFeh+HUaO/jIchc5nHV868Fo/zefvW9JES803rEpKT5Bl6j/kEyUmmbGrbve9Rt75HW0l5kjrnY
	cOolyg2TjQtR84zUzUzKTWS2IAaFvyRO86kn8Wqjw1BG+AH6Lp2P3EQPK6qdRGvjNOuBVok3726YT
	ksAB1vnfEiR3sMeyAeLyQl8+gcbWvWnK0cbDn3GgImQRteF3fRgR7fxEnaDYmIPWf8NcV05S5mJH2
	yOlNcppZup3xsNnwXvzJs/6X2chBCBxu/d48IDxIvTCttjONmJMO14w5PtKgoKKYTTPK4kbRFrCjY
	wUOP1E89NohX47y2x5gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qAI-0006Uo-1N; Thu, 05 Sep 2019 11:43:02 +0000
Received: from [2001:4bb8:18c:1755:a4b2:9562:6bf1:4bb9] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i5q8L-000519-Cd; Thu, 05 Sep 2019 11:41:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, gross@suse.com,
 boris.ostrovsky@oracle.com
Subject: [PATCH 07/11] swiotlb-xen: remove xen_swiotlb_dma_mmap and
 xen_swiotlb_dma_get_sgtable
Date: Thu,  5 Sep 2019 13:34:04 +0200
Message-Id: <20190905113408.3104-8-hch@lst.de>
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

There is no need to wrap the common version, just wire them up directly.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
---
 drivers/xen/swiotlb-xen.c | 29 ++---------------------------
 1 file changed, 2 insertions(+), 27 deletions(-)

diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
index eee86cc7046b..b8808677ae1d 100644
--- a/drivers/xen/swiotlb-xen.c
+++ b/drivers/xen/swiotlb-xen.c
@@ -547,31 +547,6 @@ xen_swiotlb_dma_supported(struct device *hwdev, u64 mask)
 	return xen_virt_to_bus(xen_io_tlb_end - 1) <= mask;
 }
 
-/*
- * Create userspace mapping for the DMA-coherent memory.
- * This function should be called with the pages from the current domain only,
- * passing pages mapped from other domains would lead to memory corruption.
- */
-static int
-xen_swiotlb_dma_mmap(struct device *dev, struct vm_area_struct *vma,
-		     void *cpu_addr, dma_addr_t dma_addr, size_t size,
-		     unsigned long attrs)
-{
-	return dma_common_mmap(dev, vma, cpu_addr, dma_addr, size, attrs);
-}
-
-/*
- * This function should be called with the pages from the current domain only,
- * passing pages mapped from other domains would lead to memory corruption.
- */
-static int
-xen_swiotlb_get_sgtable(struct device *dev, struct sg_table *sgt,
-			void *cpu_addr, dma_addr_t handle, size_t size,
-			unsigned long attrs)
-{
-	return dma_common_get_sgtable(dev, sgt, cpu_addr, handle, size, attrs);
-}
-
 const struct dma_map_ops xen_swiotlb_dma_ops = {
 	.alloc = xen_swiotlb_alloc_coherent,
 	.free = xen_swiotlb_free_coherent,
@@ -584,6 +559,6 @@ const struct dma_map_ops xen_swiotlb_dma_ops = {
 	.map_page = xen_swiotlb_map_page,
 	.unmap_page = xen_swiotlb_unmap_page,
 	.dma_supported = xen_swiotlb_dma_supported,
-	.mmap = xen_swiotlb_dma_mmap,
-	.get_sgtable = xen_swiotlb_get_sgtable,
+	.mmap = dma_common_mmap,
+	.get_sgtable = dma_common_get_sgtable,
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
