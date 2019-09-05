Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48C8AA1DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCOgnB7sMN+okHw/SCzu7k8gI8GoJEadLNJx9cxnNBo=; b=Bfbh4dg/IA8Akd
	jmTQ8lNpXvXPDgYH00VKyPpHo8XLDLuuCR35EPh8wscKimdfwbPxQvOnHP8BA7YgkenStH9UFIUQi
	22XsunFV4Z+dspagCdLkp0VohNJevLNUbHtvUB6rFgxOKjSWodi6dMRhBVGEQkMrvd8+UW7ZfQRJl
	p6pJtmE8Wc70/y2TvPfNx4qVwXrn/um516maCXSJess6/Rfse7nxKtPrFHXmPTvMfow0vd6Bgm9Xm
	DOKw6CkJ4pXfj7tc4l6PnDqOkcQGzg8U8D8sJZi+9NSrXQsfg1J+FwpEXECs73xGKT+f0ANJRHz0K
	94dR1i6Fn7BWLzw3Sksg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qAX-0006jR-94; Thu, 05 Sep 2019 11:43:17 +0000
Received: from [2001:4bb8:18c:1755:a4b2:9562:6bf1:4bb9] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i5q8P-00054e-6G; Thu, 05 Sep 2019 11:41:05 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, gross@suse.com,
 boris.ostrovsky@oracle.com
Subject: [PATCH 08/11] swiotlb-xen: use the same foreign page check everywhere
Date: Thu,  5 Sep 2019 13:34:05 +0200
Message-Id: <20190905113408.3104-9-hch@lst.de>
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

xen_dma_map_page uses a different and more complicated check for foreign
pages than the other three cache maintainance helpers.  Switch it to the
simpler pfn_valid method a well, and document the scheme with a single
improved comment in xen_dma_map_page.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
---
 include/xen/arm/page-coherent.h | 31 +++++++++----------------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/include/xen/arm/page-coherent.h b/include/xen/arm/page-coherent.h
index a840d6949a87..a8d9c0678c27 100644
--- a/include/xen/arm/page-coherent.h
+++ b/include/xen/arm/page-coherent.h
@@ -53,23 +53,17 @@ static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
 	     dma_addr_t dev_addr, unsigned long offset, size_t size,
 	     enum dma_data_direction dir, unsigned long attrs)
 {
-	unsigned long page_pfn = page_to_xen_pfn(page);
-	unsigned long dev_pfn = XEN_PFN_DOWN(dev_addr);
-	unsigned long compound_pages =
-		(1<<compound_order(page)) * XEN_PFN_PER_PAGE;
-	bool local = (page_pfn <= dev_pfn) &&
-		(dev_pfn - page_pfn < compound_pages);
+	unsigned long pfn = PFN_DOWN(dev_addr);
 
 	/*
-	 * Dom0 is mapped 1:1, while the Linux page can span across
-	 * multiple Xen pages, it's not possible for it to contain a
-	 * mix of local and foreign Xen pages. So if the first xen_pfn
-	 * == mfn the page is local otherwise it's a foreign page
-	 * grant-mapped in dom0. If the page is local we can safely
-	 * call the native dma_ops function, otherwise we call the xen
-	 * specific function.
+	 * Dom0 is mapped 1:1, and while the Linux page can span across multiple
+	 * Xen pages, it is not possible for it to contain a mix of local and
+	 * foreign Xen pages.  Calling pfn_valid on a foreign mfn will always
+	 * return false, so if pfn_valid returns true the pages is local and we
+	 * can use the native dma-direct functions, otherwise we call the Xen
+	 * specific version.
 	 */
-	if (local)
+	if (pfn_valid(pfn))
 		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
 	else
 		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
@@ -79,14 +73,7 @@ static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
 	unsigned long pfn = PFN_DOWN(handle);
-	/*
-	 * Dom0 is mapped 1:1, while the Linux page can be spanned accross
-	 * multiple Xen page, it's not possible to have a mix of local and
-	 * foreign Xen page. Dom0 is mapped 1:1, so calling pfn_valid on a
-	 * foreign mfn will always return false. If the page is local we can
-	 * safely call the native dma_ops function, otherwise we call the xen
-	 * specific function.
-	 */
+
 	if (pfn_valid(pfn))
 		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
 	else
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
