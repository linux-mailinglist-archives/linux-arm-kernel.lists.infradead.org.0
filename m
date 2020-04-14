Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAF81A7C6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9SA1Bk08b5roHWzfZz+PK8CGEjhQOPyciBsR3LXH9o=; b=fjMnyXz1iprcZU
	bc6LSMsapDWFhJfbO98jogxx+nl9j7Za4TuJxdzLjRZ+aWc0mLCobA19R/j9VjvGZqbvzntVb4Gr9
	PrbC970Rye1PwGr+tTCrKH6oY/H5XajxCOyFdWyo9qmYO59voon4er166rwcvQ+JBaFgrxZF8H5OG
	dt+cwP5TcJiV96XXRXVBSV9VCgA7fKB8w26jA7UlkAbdkznZvrZS0Hxjs0TmM2vFvxK9HgFgVPS9O
	ovRjvy0RkgAtGSgPiaGYvmwkuJCTWhRm+ak3RfMqCuIkYJMgNL1g8SsLbkKmFmyWHScjO1m4lTk/+
	liNJaH/1Yh3tyXp9yH3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLQ9-00027r-18; Tue, 14 Apr 2020 13:16:09 +0000
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLO9-0006Mm-NN; Tue, 14 Apr 2020 13:14:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Subject: [PATCH 04/29] staging: media: ipu3: use vmap instead of
 reimplementing it
Date: Tue, 14 Apr 2020 15:13:23 +0200
Message-Id: <20200414131348.444715-5-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414131348.444715-1-hch@lst.de>
References: <20200414131348.444715-1-hch@lst.de>
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just use vmap instead of messing with vmalloc internals.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 drivers/staging/media/ipu3/ipu3-css-pool.h |  4 +--
 drivers/staging/media/ipu3/ipu3-dmamap.c   | 30 ++++++----------------
 2 files changed, 9 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css-pool.h b/drivers/staging/media/ipu3/ipu3-css-pool.h
index f4a60b41401b..a8ccd4f70320 100644
--- a/drivers/staging/media/ipu3/ipu3-css-pool.h
+++ b/drivers/staging/media/ipu3/ipu3-css-pool.h
@@ -15,14 +15,12 @@ struct imgu_device;
  * @size:		size of the buffer in bytes.
  * @vaddr:		kernel virtual address.
  * @daddr:		iova dma address to access IPU3.
- * @vma:		private, a pointer to &struct vm_struct,
- *			used for imgu_dmamap_free.
  */
 struct imgu_css_map {
 	size_t size;
 	void *vaddr;
 	dma_addr_t daddr;
-	struct vm_struct *vma;
+	struct page **pages;
 };
 
 /**
diff --git a/drivers/staging/media/ipu3/ipu3-dmamap.c b/drivers/staging/media/ipu3/ipu3-dmamap.c
index 7431322379f6..8a19b0024152 100644
--- a/drivers/staging/media/ipu3/ipu3-dmamap.c
+++ b/drivers/staging/media/ipu3/ipu3-dmamap.c
@@ -96,6 +96,7 @@ void *imgu_dmamap_alloc(struct imgu_device *imgu, struct imgu_css_map *map,
 	unsigned long shift = iova_shift(&imgu->iova_domain);
 	struct device *dev = &imgu->pci_dev->dev;
 	size_t size = PAGE_ALIGN(len);
+	int count = size >> PAGE_SHIFT;
 	struct page **pages;
 	dma_addr_t iovaddr;
 	struct iova *iova;
@@ -114,7 +115,7 @@ void *imgu_dmamap_alloc(struct imgu_device *imgu, struct imgu_css_map *map,
 
 	/* Call IOMMU driver to setup pgt */
 	iovaddr = iova_dma_addr(&imgu->iova_domain, iova);
-	for (i = 0; i < size / PAGE_SIZE; ++i) {
+	for (i = 0; i < count; ++i) {
 		rval = imgu_mmu_map(imgu->mmu, iovaddr,
 				    page_to_phys(pages[i]), PAGE_SIZE);
 		if (rval)
@@ -123,33 +124,23 @@ void *imgu_dmamap_alloc(struct imgu_device *imgu, struct imgu_css_map *map,
 		iovaddr += PAGE_SIZE;
 	}
 
-	/* Now grab a virtual region */
-	map->vma = __get_vm_area(size, VM_USERMAP, VMALLOC_START, VMALLOC_END);
-	if (!map->vma)
+	map->vaddr = vmap(pages, count, VM_USERMAP, PAGE_KERNEL);
+	if (!map->vaddr)
 		goto out_unmap;
 
-	map->vma->pages = pages;
-	/* And map it in KVA */
-	if (map_vm_area(map->vma, PAGE_KERNEL, pages))
-		goto out_vunmap;
-
+	map->pages = pages;
 	map->size = size;
 	map->daddr = iova_dma_addr(&imgu->iova_domain, iova);
-	map->vaddr = map->vma->addr;
 
 	dev_dbg(dev, "%s: allocated %zu @ IOVA %pad @ VA %p\n", __func__,
-		size, &map->daddr, map->vma->addr);
-
-	return map->vma->addr;
+		size, &map->daddr, map->vaddr);
 
-out_vunmap:
-	vunmap(map->vma->addr);
+	return map->vaddr;
 
 out_unmap:
 	imgu_dmamap_free_buffer(pages, size);
 	imgu_mmu_unmap(imgu->mmu, iova_dma_addr(&imgu->iova_domain, iova),
 		       i * PAGE_SIZE);
-	map->vma = NULL;
 
 out_free_iova:
 	__free_iova(&imgu->iova_domain, iova);
@@ -177,8 +168,6 @@ void imgu_dmamap_unmap(struct imgu_device *imgu, struct imgu_css_map *map)
  */
 void imgu_dmamap_free(struct imgu_device *imgu, struct imgu_css_map *map)
 {
-	struct vm_struct *area = map->vma;
-
 	dev_dbg(&imgu->pci_dev->dev, "%s: freeing %zu @ IOVA %pad @ VA %p\n",
 		__func__, map->size, &map->daddr, map->vaddr);
 
@@ -187,11 +176,8 @@ void imgu_dmamap_free(struct imgu_device *imgu, struct imgu_css_map *map)
 
 	imgu_dmamap_unmap(imgu, map);
 
-	if (WARN_ON(!area) || WARN_ON(!area->pages))
-		return;
-
-	imgu_dmamap_free_buffer(area->pages, map->size);
 	vunmap(map->vaddr);
+	imgu_dmamap_free_buffer(map->pages, map->size);
 	map->vaddr = NULL;
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
