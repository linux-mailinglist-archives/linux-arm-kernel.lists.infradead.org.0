Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A941D163E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fox/proRIP4QseuteKhH2jF/bwvb3k2omsc+vH8U2xw=; b=Nkm27o+JHY7U8u1LVlL24JLcWO
	C7Smeix2JaOB/AQTIpkHEgAflX2udfemSKOPzlmFE3kQwFax08rUN7CQcKYqjNGwVNiWbZd96pClT
	P7ApR5+e7r2Zv1a1M5WlfoXk4HqGdJQuE597kTknUQFFAk/4MxI3ERF1/ztZxLKoeXhP4l78s/UJ5
	e+X8oUU8jrTSPXpGZ/kLhBLj9B58RdwYc94B2JDKVijfysWeYzwMJv9MthKjpm0coFzkPfnFAW0b3
	wf49g8p+PfHUuhyezCYKEE7rPrduViQDB9/eKTUWOyBa/Lyq3CviG5GgCrLLqj7RGDx5hs9gjyQJw
	CcRC+wDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrhS-00022q-Db; Wed, 13 May 2020 13:45:30 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVi-0001j3-V8
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:31 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133321euoutp021dfd63ded177711dd12a4e00e38f4027~OmcevtRoG3223232232euoutp02G
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133321euoutp021dfd63ded177711dd12a4e00e38f4027~OmcevtRoG3223232232euoutp02G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376801;
 bh=5gvA37Um7eZTvXdEIIxj5lllD41xa/e5Ji2KNYEZVj4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZJ14h0REWC/SSRnjefzdBoL8/7zFkdNrsMPGgtjFfDmtqL41dr9pQx8Y8PC5bQ5V+
 ENF7CZi2vMj5x6m6KJRL9Fpjfo9Xju+NuDqEtgdAL4wIBgEpW1si/3vzyitbeHMu08
 IGYvIQSEkfTJDBc/dc0wLd/UTh300/q7+CI57QFM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133321eucas1p288bebda15e8903cc9fde088a5da4f5a2~Omceawne81009510095eucas1p2O;
 Wed, 13 May 2020 13:33:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 06.11.60679.027FBBE5; Wed, 13
 May 2020 14:33:21 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133320eucas1p14cc8a7155b3d9ac2e0e30db2128c1477~OmceGhGbI0787107871eucas1p1B;
 Wed, 13 May 2020 13:33:20 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133320eusmtrp11dceed2375e1552e53483d87bb9b361f~OmceE-wfV1011910119eusmtrp1f;
 Wed, 13 May 2020 13:33:20 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-71-5ebbf720a5b4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1B.47.07950.027FBBE5; Wed, 13
 May 2020 14:33:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133319eusmtip1f65fb5a6a842b13f2f5c87bc51f6f118~OmcdGqAWK0693406934eusmtip1b;
 Wed, 13 May 2020 13:33:19 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 32/38] staging: ion: fix common struct sg_table related
 issues
Date: Wed, 13 May 2020 15:32:39 +0200
Message-Id: <20200513133245.6408-32-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURT1dZYOSM1QMbxUE2IVEYksoslLXOJC4osmxuiHiYnIiBNUVlsK
 4o8F1xRQhA8IiinKTrFVSTUslkWprBqWClpAosZgBNQCViLVjoP483Luuefcc3PzGEI+SSmY
 0wnJvCqBi1PSnqS57efLjat/1EeG2tolKLvH/UzNj9LoQYGRQumTa9Bv800CNXTNSVH/zBSN
 Lt4z0qiy+rkE6S1bUZnWH1U2OCVoun9Mgh6+t1Gor+42jWqeDUuR2aClUPPXDxTqGHZIkd42
 J93pg831Zgob7hgAni/6RuCRp60kbpzVk7j4+wyF7bYGGj+efUdhS5FBikczrRL8qOQCfut6
 T+C8wXKA64e0NJ56OkDj67VV4KD3Uc9tJ/m40ym8KmRHlOepHpORTLq741xmTrpECx6E6wDD
 QHYznJmP0AFPRs5WAPiu+wYhFtMA9uZZKR3wcBcOANNdvgIWDB0VE6TIl7tFo2cXDRkOGxAa
 NBsGdRM6WsA+7GUAX2R7CSKCzaLguMlEC9HL2cPw9VUvAZKsP5ywrxDkMnY7tFROkWKWH6w2
 NREC9nDzn+0WUhgD2WIGOie/EKIoArbXDAIRL4efrbVSEa+CnXlZC4aLAI711EjFIgvAvoyC
 BcdWaO+Z+7sQwQZCY12ISO+C2cZMQjzRMjg44S3QhBvmmvMXaBm8dkUuqtfBQuv9xdjmV70L
 q2HYYW+ixfu0um9VWS7NAX6F/8P0AFQBX16jjo/h1ZsS+NRgNRev1iTEBEcnxj8E7l/Y6bJO
 PwF1v060AJYBSi8ZelMfKae4FHVafAuADKH0kR0wuinZSS7tPK9KPK7SxPHqFrCSIZW+svC7
 48fkbAyXzMfyfBKv+teVMB4KLVC4NndlBzLEbEZQ0BJdumV92xlNY75PS2Rv6dovR4ohd65w
 rlOCA/xLhzphFPFpb/tL01VHUJuiSl895DR0DaheRfjzhljEXU7c99Euqytbm7RnTW5AeKqD
 dFm2lI+xWxQHMlpzu+0arTN85NbzQ4b9WaGTMc6SS7uXBpHRSlJ9igvbQKjU3B/M3bGEgQMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsVy+t/xu7oK33fHGbR8U7HoPXeSyeL93/ts
 FhtnrGe1aHynbPF/20Rmiz1nfrFbXPn6ns2iefF6NouVq48yWSzYb22xrEHVYuWeH0wWX648
 ZLLY9Pgaq8XlXXPYLNYeuctusW1NA6vFwQ9PWC1O3f3MbrHg2i92BxGPbbu3sXqsmbeG0ePv
 3I/MHvf2HWbx2PttAYvHwk9fWT3uXNvD5rH92wNWj/1z17B73O8+zuSxeUm9x+1/j5k9Jt9Y
 zuix+2YDm8f7fVfZPPq2rGIMEIzSsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIy
 VdK3s0lJzcksSy3St0vQyzi3YT1LwSK7iu4JjUwNjBuNuxg5OSQETCROrXjL0sXIxSEksJRR
 4lXHOyaIhIzEyWkNrBC2sMSfa11sEEWfGCW+7Z7FBpJgEzCU6HoLkRAR6GSUmNb9kR3EYRaY
 wSqx7sA9dpAqYYFAiXdn3wCN4uBgEVCVeHtHFCTMK2ArsX/lexaIDfISqzccYAaxOYHir+7s
 B4sLCeRL7F28j20CI98CRoZVjCKppcW56bnFRnrFibnFpXnpesn5uZsYgRG67djPLTsYu94F
 H2IU4GBU4uG1uLU7Tog1say4MvcQowQHs5IIr996oBBvSmJlVWpRfnxRaU5q8SFGU6CbJjJL
 iSbnA5NHXkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGRmGrsIxJ
 afrHT2WvcpVd3LN0Ukvom3eP7d5eYfiwxpZn896Xdsf0njjHZBjn9v3fsHeC5ywm9zMxixPb
 9/77cNFZePqV5dNunvpkrhabKvPWbOOzqRwznZu332hN141m5DBJNy46kKjeeVoyYcP9TytO
 nznCu+4a6zeh+tenp+5Y/mOPopvgLnYlluKMREMt5qLiRABeVCSX5gIAAA==
X-CMS-MailID: 20200513133320eucas1p14cc8a7155b3d9ac2e0e30db2128c1477
X-Msg-Generator: CA
X-RootMTR: 20200513133320eucas1p14cc8a7155b3d9ac2e0e30db2128c1477
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133320eucas1p14cc8a7155b3d9ac2e0e30db2128c1477
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133320eucas1p14cc8a7155b3d9ac2e0e30db2128c1477@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063323_283056_8D9ACEC5 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 Daniel Vetter <daniel@ffwll.ch>, Joel Fernandes <joel@joelfernandes.org>,
 Laura Abbott <labbott@redhat.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Documentation/DMA-API-HOWTO.txt states that the dma_map_sg() function
returns the number of the created entries in the DMA address space.
However the subsequent calls to the dma_sync_sg_for_{device,cpu}() and
dma_unmap_sg must be called with the original number of the entries
passed to the dma_map_sg().

struct sg_table is a common structure used for describing a non-contiguous
memory buffer, used commonly in the DRM and graphics subsystems. It
consists of a scatterlist with memory pages and DMA addresses (sgl entry),
as well as the number of scatterlist entries: CPU pages (orig_nents entry)
and DMA mapped pages (nents entry).

It turned out that it was a common mistake to misuse nents and orig_nents
entries, calling DMA-mapping functions with a wrong number of entries or
ignoring the number of mapped entries returned by the dma_map_sg()
function.

To avoid such issues, lets use a common dma-mapping wrappers operating
directly on the struct sg_table objects and use scatterlist page
iterators where possible. This, almost always, hides references to the
nents and orig_nents entries, making the code robust, easier to follow
and copy/paste safe.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/staging/android/ion/ion.c             | 25 +++++++--------
 drivers/staging/android/ion/ion_heap.c        | 44 ++++++++-------------------
 drivers/staging/android/ion/ion_system_heap.c |  2 +-
 3 files changed, 25 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index 38b51ea..3c9f095 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -147,14 +147,14 @@ static struct sg_table *dup_sg_table(struct sg_table *table)
 	if (!new_table)
 		return ERR_PTR(-ENOMEM);
 
-	ret = sg_alloc_table(new_table, table->nents, GFP_KERNEL);
+	ret = sg_alloc_table(new_table, table->orig_nents, GFP_KERNEL);
 	if (ret) {
 		kfree(new_table);
 		return ERR_PTR(-ENOMEM);
 	}
 
 	new_sg = new_table->sgl;
-	for_each_sg(table->sgl, sg, table->nents, i) {
+	for_each_sgtable_sg(table, sg, i) {
 		memcpy(new_sg, sg, sizeof(*sg));
 		new_sg->dma_address = 0;
 		new_sg = sg_next(new_sg);
@@ -224,12 +224,13 @@ static struct sg_table *ion_map_dma_buf(struct dma_buf_attachment *attachment,
 {
 	struct ion_dma_buf_attachment *a = attachment->priv;
 	struct sg_table *table;
+	int ret;
 
 	table = a->table;
 
-	if (!dma_map_sg(attachment->dev, table->sgl, table->nents,
-			direction))
-		return ERR_PTR(-ENOMEM);
+	ret = dma_map_sgtable(attachment->dev, table, direction, 0);
+	if (ret)
+		return ERR_PTR(ret);
 
 	return table;
 }
@@ -238,7 +239,7 @@ static void ion_unmap_dma_buf(struct dma_buf_attachment *attachment,
 			      struct sg_table *table,
 			      enum dma_data_direction direction)
 {
-	dma_unmap_sg(attachment->dev, table->sgl, table->nents, direction);
+	dma_unmap_sgtable(attachment->dev, table, direction, 0);
 }
 
 static int ion_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
@@ -296,10 +297,8 @@ static int ion_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
 	}
 
 	mutex_lock(&buffer->lock);
-	list_for_each_entry(a, &buffer->attachments, list) {
-		dma_sync_sg_for_cpu(a->dev, a->table->sgl, a->table->nents,
-				    direction);
-	}
+	list_for_each_entry(a, &buffer->attachments, list)
+		dma_sync_sgtable_for_cpu(a->dev, a->table, direction);
 
 unlock:
 	mutex_unlock(&buffer->lock);
@@ -319,10 +318,8 @@ static int ion_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
 	}
 
 	mutex_lock(&buffer->lock);
-	list_for_each_entry(a, &buffer->attachments, list) {
-		dma_sync_sg_for_device(a->dev, a->table->sgl, a->table->nents,
-				       direction);
-	}
+	list_for_each_entry(a, &buffer->attachments, list)
+		dma_sync_sgtable_for_device(a->dev, a->table, direction);
 	mutex_unlock(&buffer->lock);
 
 	return 0;
diff --git a/drivers/staging/android/ion/ion_heap.c b/drivers/staging/android/ion/ion_heap.c
index 9c23b23..79f2794 100644
--- a/drivers/staging/android/ion/ion_heap.c
+++ b/drivers/staging/android/ion/ion_heap.c
@@ -20,8 +20,7 @@
 void *ion_heap_map_kernel(struct ion_heap *heap,
 			  struct ion_buffer *buffer)
 {
-	struct scatterlist *sg;
-	int i, j;
+	struct sg_page_iter piter;
 	void *vaddr;
 	pgprot_t pgprot;
 	struct sg_table *table = buffer->sg_table;
@@ -38,14 +37,11 @@ void *ion_heap_map_kernel(struct ion_heap *heap,
 	else
 		pgprot = pgprot_writecombine(PAGE_KERNEL);
 
-	for_each_sg(table->sgl, sg, table->nents, i) {
-		int npages_this_entry = PAGE_ALIGN(sg->length) / PAGE_SIZE;
-		struct page *page = sg_page(sg);
-
-		BUG_ON(i >= npages);
-		for (j = 0; j < npages_this_entry; j++)
-			*(tmp++) = page++;
+	for_each_sgtable_page(table, &piter, 0) {
+		BUG_ON(tmp - pages >= npages);
+		*tmp++ = sg_page_iter_page(&piter);
 	}
+
 	vaddr = vmap(pages, npages, VM_MAP, pgprot);
 	vfree(pages);
 
@@ -64,32 +60,19 @@ void ion_heap_unmap_kernel(struct ion_heap *heap,
 int ion_heap_map_user(struct ion_heap *heap, struct ion_buffer *buffer,
 		      struct vm_area_struct *vma)
 {
+	struct sg_page_iter piter;
 	struct sg_table *table = buffer->sg_table;
 	unsigned long addr = vma->vm_start;
-	unsigned long offset = vma->vm_pgoff * PAGE_SIZE;
-	struct scatterlist *sg;
-	int i;
 	int ret;
 
-	for_each_sg(table->sgl, sg, table->nents, i) {
-		struct page *page = sg_page(sg);
-		unsigned long remainder = vma->vm_end - addr;
-		unsigned long len = sg->length;
+	for_each_sgtable_page(table, &piter, vma->vm_pgoff) {
+		struct page *page = sg_page_iter_page(&piter);
 
-		if (offset >= sg->length) {
-			offset -= sg->length;
-			continue;
-		} else if (offset) {
-			page += offset / PAGE_SIZE;
-			len = sg->length - offset;
-			offset = 0;
-		}
-		len = min(len, remainder);
-		ret = remap_pfn_range(vma, addr, page_to_pfn(page), len,
+		ret = remap_pfn_range(vma, addr, page_to_pfn(page), PAGE_SIZE,
 				      vma->vm_page_prot);
 		if (ret)
 			return ret;
-		addr += len;
+		addr += PAGE_SIZE;
 		if (addr >= vma->vm_end)
 			return 0;
 	}
@@ -109,15 +92,14 @@ static int ion_heap_clear_pages(struct page **pages, int num, pgprot_t pgprot)
 	return 0;
 }
 
-static int ion_heap_sglist_zero(struct scatterlist *sgl, unsigned int nents,
-				pgprot_t pgprot)
+static int ion_heap_sglist_zero(struct sg_table *sgt, pgprot_t pgprot)
 {
 	int p = 0;
 	int ret = 0;
 	struct sg_page_iter piter;
 	struct page *pages[32];
 
-	for_each_sg_page(sgl, &piter, nents, 0) {
+	for_each_sgtable_page(sgt, &piter, 0) {
 		pages[p++] = sg_page_iter_page(&piter);
 		if (p == ARRAY_SIZE(pages)) {
 			ret = ion_heap_clear_pages(pages, p, pgprot);
@@ -142,7 +124,7 @@ int ion_heap_buffer_zero(struct ion_buffer *buffer)
 	else
 		pgprot = pgprot_writecombine(PAGE_KERNEL);
 
-	return ion_heap_sglist_zero(table->sgl, table->nents, pgprot);
+	return ion_heap_sglist_zero(table, pgprot);
 }
 
 void ion_heap_freelist_add(struct ion_heap *heap, struct ion_buffer *buffer)
diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
index b83a1d1..eac0632 100644
--- a/drivers/staging/android/ion/ion_system_heap.c
+++ b/drivers/staging/android/ion/ion_system_heap.c
@@ -162,7 +162,7 @@ static void ion_system_heap_free(struct ion_buffer *buffer)
 	if (!(buffer->private_flags & ION_PRIV_FLAG_SHRINKER_FREE))
 		ion_heap_buffer_zero(buffer);
 
-	for_each_sg(table->sgl, sg, table->nents, i)
+	for_each_sgtable_sg(table, sg, i)
 		free_buffer_page(sys_heap, buffer, sg_page(sg));
 	sg_free_table(table);
 	kfree(table);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
