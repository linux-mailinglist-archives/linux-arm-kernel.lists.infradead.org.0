Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E69A1A2143
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKudo+/dOR0YHWjziy/9mu9fMwzppyR1untxGnCZyMY=; b=kSix6QFXeWGofm
	AApgUN4KIfXE9/xLPGqVPcMQk3qzoPmRSAMGVVVssHycO/eh7THFq8opoZ70asDiQ8R/wbGoz2Zsk
	ZM9uW6xn9agejltufKBjxJawkfbxKoYXKttXDs942zs0bzz913/oPoqlNfRrHWBc3z2W6VxmqcOqC
	3iVqzMLXspfs8QT+WyynWBGmkDAQfiPDYFeZjwtXU/RQwvFzjIotDU++qQpOqsOJs0vXTQyNat5YY
	+5+mmzeMR2zulYZ5SQ23gy8fAFBfKAtqiIro9zyC7UAy/wrIhdJkUwTVgoboYwNMaAuIYBIA9bfAe
	pc+gKBUcXgYmEScAuyHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9RS-0000jU-Qx; Wed, 08 Apr 2020 12:04:26 +0000
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Ng-0005Da-9c; Wed, 08 Apr 2020 12:00:32 +0000
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
Subject: [PATCH 17/28] mm: remove the prot argument from vm_map_ram
Date: Wed,  8 Apr 2020 13:59:15 +0200
Message-Id: <20200408115926.1467567-18-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
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

This is always GFP_KERNEL - for long term mappings with other properties
vmap should be used.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c   | 2 +-
 drivers/media/common/videobuf2/videobuf2-dma-sg.c  | 3 +--
 drivers/media/common/videobuf2/videobuf2-vmalloc.c | 3 +--
 fs/erofs/decompressor.c                            | 2 +-
 fs/xfs/xfs_buf.c                                   | 2 +-
 include/linux/vmalloc.h                            | 3 +--
 mm/nommu.c                                         | 2 +-
 mm/vmalloc.c                                       | 4 ++--
 8 files changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
index 9272bef57092..debaf7b18ab5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
@@ -66,7 +66,7 @@ static void *mock_dmabuf_vmap(struct dma_buf *dma_buf)
 {
 	struct mock_dmabuf *mock = to_mock(dma_buf);
 
-	return vm_map_ram(mock->pages, mock->npages, 0, PAGE_KERNEL);
+	return vm_map_ram(mock->pages, mock->npages, 0);
 }
 
 static void mock_dmabuf_vunmap(struct dma_buf *dma_buf, void *vaddr)
diff --git a/drivers/media/common/videobuf2/videobuf2-dma-sg.c b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
index 6db60e9d5183..92072a08af25 100644
--- a/drivers/media/common/videobuf2/videobuf2-dma-sg.c
+++ b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
@@ -309,8 +309,7 @@ static void *vb2_dma_sg_vaddr(void *buf_priv)
 		if (buf->db_attach)
 			buf->vaddr = dma_buf_vmap(buf->db_attach->dmabuf);
 		else
-			buf->vaddr = vm_map_ram(buf->pages,
-					buf->num_pages, -1, PAGE_KERNEL);
+			buf->vaddr = vm_map_ram(buf->pages, buf->num_pages, -1);
 	}
 
 	/* add offset in case userptr is not page-aligned */
diff --git a/drivers/media/common/videobuf2/videobuf2-vmalloc.c b/drivers/media/common/videobuf2/videobuf2-vmalloc.c
index 1a4f0ca87c7c..c66fda4a65e4 100644
--- a/drivers/media/common/videobuf2/videobuf2-vmalloc.c
+++ b/drivers/media/common/videobuf2/videobuf2-vmalloc.c
@@ -107,8 +107,7 @@ static void *vb2_vmalloc_get_userptr(struct device *dev, unsigned long vaddr,
 		buf->vaddr = (__force void *)
 			ioremap(__pfn_to_phys(nums[0]), size + offset);
 	} else {
-		buf->vaddr = vm_map_ram(frame_vector_pages(vec), n_pages, -1,
-					PAGE_KERNEL);
+		buf->vaddr = vm_map_ram(frame_vector_pages(vec), n_pages, -1);
 	}
 
 	if (!buf->vaddr)
diff --git a/fs/erofs/decompressor.c b/fs/erofs/decompressor.c
index 5d2d81940679..7628816f2453 100644
--- a/fs/erofs/decompressor.c
+++ b/fs/erofs/decompressor.c
@@ -274,7 +274,7 @@ static int z_erofs_decompress_generic(struct z_erofs_decompress_req *rq,
 
 	i = 0;
 	while (1) {
-		dst = vm_map_ram(rq->out, nrpages_out, -1, PAGE_KERNEL);
+		dst = vm_map_ram(rq->out, nrpages_out, -1);
 
 		/* retry two more times (totally 3 times) */
 		if (dst || ++i >= 3)
diff --git a/fs/xfs/xfs_buf.c b/fs/xfs/xfs_buf.c
index f880141a2268..940af9da6db1 100644
--- a/fs/xfs/xfs_buf.c
+++ b/fs/xfs/xfs_buf.c
@@ -474,7 +474,7 @@ _xfs_buf_map_pages(
 		nofs_flag = memalloc_nofs_save();
 		do {
 			bp->b_addr = vm_map_ram(bp->b_pages, bp->b_page_count,
-						-1, PAGE_KERNEL);
+						-1);
 			if (bp->b_addr)
 				break;
 			vm_unmap_aliases();
diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 15ffbd8e8e65..9273b1a91ca5 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -88,8 +88,7 @@ struct vmap_area {
  *	Highlevel APIs for driver use
  */
 extern void vm_unmap_ram(const void *mem, unsigned int count);
-extern void *vm_map_ram(struct page **pages, unsigned int count,
-				int node, pgprot_t prot);
+extern void *vm_map_ram(struct page **pages, unsigned int count, int node);
 extern void vm_unmap_aliases(void);
 
 #ifdef CONFIG_MMU
diff --git a/mm/nommu.c b/mm/nommu.c
index 318df4e236c9..4f07b7ef0297 100644
--- a/mm/nommu.c
+++ b/mm/nommu.c
@@ -351,7 +351,7 @@ void vunmap(const void *addr)
 }
 EXPORT_SYMBOL(vunmap);
 
-void *vm_map_ram(struct page **pages, unsigned int count, int node, pgprot_t prot)
+void *vm_map_ram(struct page **pages, unsigned int count, int node)
 {
 	BUG();
 	return NULL;
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 258220b203f1..7356b3f07bd8 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -1834,7 +1834,7 @@ EXPORT_SYMBOL(vm_unmap_ram);
  *
  * Returns: a pointer to the address that has been mapped, or %NULL on failure
  */
-void *vm_map_ram(struct page **pages, unsigned int count, int node, pgprot_t prot)
+void *vm_map_ram(struct page **pages, unsigned int count, int node)
 {
 	unsigned long size = (unsigned long)count << PAGE_SHIFT;
 	unsigned long addr;
@@ -1858,7 +1858,7 @@ void *vm_map_ram(struct page **pages, unsigned int count, int node, pgprot_t pro
 
 	kasan_unpoison_vmalloc(mem, size);
 
-	if (map_kernel_range(addr, size, prot, pages) < 0) {
+	if (map_kernel_range(addr, size, PAGE_KERNEL, pages) < 0) {
 		vm_unmap_ram(mem, count);
 		return NULL;
 	}
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
