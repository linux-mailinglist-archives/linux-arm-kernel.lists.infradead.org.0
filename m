Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076DB45EEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DpOEMRXL2lEfHEIonKHC8FJD9ntVvgy4fOYJishWKA=; b=PQlrrx2bRTguFE
	TVRYQc/RW6g6uLjSJQBC16vW/tMEoZP4E268GhsB2xM7pHIBfQ/nKw4Aq5emnbzyKYL1BvUabPmVi
	aa7hU2jdmBKEFJzsZ59xUY41jEWkrmkANTnNYeMBoC0tZg68cfQhrMKtmEuVQNxy6Fjzvi5LRYgf/
	5bEvKzis+sUarCBgHS2nTJjyY7KmZqHs9yUpx4u7mgOi/G12+AS4FHZaVaGgv6O45bMAvzVWyxkfj
	5RjjvjhE8UQbjTnD/iKGl9+hg2h7O01w2v3vJ42rBt7ji612byo926vC1D/8FkqGD7THylmBXbJyu
	WwmKKkUcLnF65YU+LkmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmYp-0004tf-SA; Fri, 14 Jun 2019 13:48:07 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYJ-0004Xw-Il; Fri, 14 Jun 2019 13:47:36 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 01/16] media: videobuf-dma-contig: use dma_mmap_coherent
Date: Fri, 14 Jun 2019 15:47:11 +0200
Message-Id: <20190614134726.3827-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_alloc_coherent does not return a physical address, but a DMA
address, which might be remapped or have an offset.  Passing this
DMA address to vm_iomap_memory is completely bogus.  Use the proper
dma_mmap_coherent helper instead, and stop passing __GFP_COMP
to dma_alloc_coherent, as the memory management inside the DMA
allocator is hidden from the callers.

Fixes: a8f3c203e19b ("[media] videobuf-dma-contig: add cache support")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/media/v4l2-core/videobuf-dma-contig.c | 23 +++++++------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/media/v4l2-core/videobuf-dma-contig.c b/drivers/media/v4l2-core/videobuf-dma-contig.c
index e1bf50df4c70..a5942ea38f1f 100644
--- a/drivers/media/v4l2-core/videobuf-dma-contig.c
+++ b/drivers/media/v4l2-core/videobuf-dma-contig.c
@@ -39,11 +39,11 @@ struct videobuf_dma_contig_memory {
 
 static int __videobuf_dc_alloc(struct device *dev,
 			       struct videobuf_dma_contig_memory *mem,
-			       unsigned long size, gfp_t flags)
+			       unsigned long size)
 {
 	mem->size = size;
-	mem->vaddr = dma_alloc_coherent(dev, mem->size,
-					&mem->dma_handle, flags);
+	mem->vaddr = dma_alloc_coherent(dev, mem->size, &mem->dma_handle,
+			GFP_KERNEL);
 
 	if (!mem->vaddr) {
 		dev_err(dev, "memory alloc size %ld failed\n", mem->size);
@@ -260,8 +260,7 @@ static int __videobuf_iolock(struct videobuf_queue *q,
 			return videobuf_dma_contig_user_get(mem, vb);
 
 		/* allocate memory for the read() method */
-		if (__videobuf_dc_alloc(q->dev, mem, PAGE_ALIGN(vb->size),
-					GFP_KERNEL))
+		if (__videobuf_dc_alloc(q->dev, mem, PAGE_ALIGN(vb->size)))
 			return -ENOMEM;
 		break;
 	case V4L2_MEMORY_OVERLAY:
@@ -280,7 +279,6 @@ static int __videobuf_mmap_mapper(struct videobuf_queue *q,
 	struct videobuf_dma_contig_memory *mem;
 	struct videobuf_mapping *map;
 	int retval;
-	unsigned long size;
 
 	dev_dbg(q->dev, "%s\n", __func__);
 
@@ -298,23 +296,18 @@ static int __videobuf_mmap_mapper(struct videobuf_queue *q,
 	BUG_ON(!mem);
 	MAGIC_CHECK(mem->magic, MAGIC_DC_MEM);
 
-	if (__videobuf_dc_alloc(q->dev, mem, PAGE_ALIGN(buf->bsize),
-				GFP_KERNEL | __GFP_COMP))
+	if (__videobuf_dc_alloc(q->dev, mem, PAGE_ALIGN(buf->bsize)))
 		goto error;
 
-	/* Try to remap memory */
-	size = vma->vm_end - vma->vm_start;
-	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
-
 	/* the "vm_pgoff" is just used in v4l2 to find the
 	 * corresponding buffer data structure which is allocated
 	 * earlier and it does not mean the offset from the physical
 	 * buffer start address as usual. So set it to 0 to pass
-	 * the sanity check in vm_iomap_memory().
+	 * the sanity check in dma_mmap_coherent().
 	 */
 	vma->vm_pgoff = 0;
-
-	retval = vm_iomap_memory(vma, mem->dma_handle, size);
+	retval = dma_mmap_coherent(q->dev, vma, mem->vaddr, mem->dma_handle,
+			vma->vm_end - vma->vm_start);
 	if (retval) {
 		dev_err(q->dev, "mmap: remap failed with error %d. ",
 			retval);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
