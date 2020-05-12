Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1A41CF143
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u7O2AEqomlPHBdCm3oGIoaTIqtk63vwnIZIM9sWu5ls=; b=Ow0P/cEVFTqEgnMlL2qjrmrK1y
	W2gWS6f2LCaeKKP7ftsV4TjOry0LfyYGftZGOcFZhCAO6RFRu4icB79qH1qroFqriFsDD/ExhjueZ
	51PD3usO4kYMjk0dl5nW44bFLpOZgXSjmXkPF7wdXirlC52vBbV34Se9nVHip2VeWp2Hhzca+Sgju
	wa4MsAfxZMuMtJjnT24XvOLezw33V9M19VZuax7TKt7mrJ5Ce45U+87orZUvgr7cUqivXR204HtT2
	IHstIorQft1A3BGkMSZWZqOz2DIUhcnhPgJt7KbL9B4kIkhf+Q0Z+aZGSGiZMGLRGwrYrr+8JxDWH
	ilw/Rc8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQyv-0007cV-W8; Tue, 12 May 2020 09:13:46 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn7-0002Sm-No
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:49 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090131euoutp0205e3589f90210bda7147ea6c99500a56~OPF2VYpJE0455404554euoutp02d
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090131euoutp0205e3589f90210bda7147ea6c99500a56~OPF2VYpJE0455404554euoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274091;
 bh=Jz1W/risYbn1iFgHPeMXJwzaCTYtEEnKwijifrjcmnI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gxo2qgfDGGpStT9/RdPd3UgxzeDtp90Zp24tBU5rh7oH7McswISGca7iXYhGGWdlK
 jEcmU253xa8CUi4ZiYxuY98bzbDN2wFOmrodA99h4tnbpzJrhxFlTkASmyLJAEf+9K
 O3oHIAXrTD/YGyiF3ic3hhURL8FbTyAR8IRTWt3o=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090130eucas1p2b81adfa94a097e03f320141842c3f1b4~OPF2G42Za2399923999eucas1p2r;
 Tue, 12 May 2020 09:01:30 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 4F.7B.60698.AE56ABE5; Tue, 12
 May 2020 10:01:30 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090130eucas1p2eb86c5d34be56bbc81032bc0b6927d1e~OPF10kf9w2662726627eucas1p2f;
 Tue, 12 May 2020 09:01:30 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090130eusmtrp2dd079707b04541b50c83029cd93549aa~OPF1z322C0472504725eusmtrp2g;
 Tue, 12 May 2020 09:01:30 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-67-5eba65ea4e36
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 84.55.08375.AE56ABE5; Tue, 12
 May 2020 10:01:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090129eusmtip1a34e21c012665469a855771a71f3e9e7~OPF1Ju9Qd0919809198eusmtip18;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 38/38] videobuf2: use sgtable-based scatterlist wrappers
Date: Tue, 12 May 2020 11:00:58 +0200
Message-Id: <20200512090058.14910-38-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUiTYRzHed5rr8PZ6yb5YKEwKCjIIw1esMTA6kWprCAq8pj5oqZO2zyy
 Itdh6dQuDU0jTbydTZdHLkud2jxomYqYZmZGpmBmU8G7zbfjv8/ve/B7noeHRIWduB0ZJo1h
 ZVJJhJjgY3VvFt/tmmK1/s4TCjc63dCJ0NXZapxer7uP0v3zMwRdVtGO0O8fjWB0fpM7Pdc/
 htCa8QGc7tM+Jui0qlqcrmwb4dHFmhWEzpxe5NEtP7/inpsY1RMVYF4t5GOMpjyFYOoXPuPM
 aKoeYZ4XJjLDa+MokzFYApiXHxQEM740STB3asoBY9TYM13zRp6v4Ax/bzAbERbHypw8Avmh
 s+3rWPTQ8YuZtRcUYNhLCSxISLnBpZS3PCXgk0KqFMChAgMwG0JqDsDVDCvOMAKY3T+B/G2U
 9lzDOKMEwKKcu4AbTA1tzzRuThGUC1ROKwkz21BJAHakW5oZpdQoLFBRZhZRPrA3PQM1M0Zt
 g99HFjdYQHnA223pf7Y5wIqq5g3dwqSP5q1sbIbUJx4s7s7FuJAXTJqaJDgWwSl9DY/jrXC9
 IQ/hCjcAHDNU8rghDcC+69mAS7nDj4YlU5s0HW8HVGudOHk/7Jt7CMwypKzg4LQ1dwEr+KAu
 C+VkAUy+JeTS22GO/tm/tS09vSjHDPxW0YpyD9QOYHVmOX4POOT8X5YPQDmwZWPlkSGs3FXK
 xjvKJZHyWGmI47moSA0wfbDuNf38C/B6JUgHKBKILQXJuxv8hbgkTp4QqQOQRMU2gpthJkkQ
 LEm4xMqiAmSxEaxcB7aQmNhW4Fow6SekQiQxbDjLRrOyvy5CWtgpQIL6sAFbdg/qTIz3FbZr
 Cx3PrwU9NXr/iju959iV6lPR2aP6L0CU63xoUOopWm3eHDGyqpvIN0pD0X2tAcoDHXzrLhfP
 FkWmVaPOVnQ0/HJjzMzVcafUsobZgbJBSqzy8ZzMdT7i7oV4nz3xY7gpK/HgyWVHXqBD93yx
 fVG9X5sYk4dKXHaiMrnkN/yokBRcAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsVy+t/xu7qvUnfFGcxdJ2fRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllcnHmXxWLBfmuLL1ceMllsenyN1eLyrjlsFj0btrJarD1yl91i
 2aY/TBZT3v5ktzj44QmrA7/HmnlrGD32flvA4rFpVSebx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzePxr5dsHn1bVjF6fN4k53Hq62f2AN4oPZui/NKSVIWM/OISW6VoQwsjPUNL
 Cz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYyPR/+zFNwKqpiytbCB8bZLFyMnh4SAicSK
 C40sXYxcHEICSxklXt85xwSRkJE4Oa2BFcIWlvhzrYsNougTo0T7sauMIAk2AUOJrrcQCRGB
 TkaJad0f2UEcZoGdzBL7bz8FqxIW8Ja41DuZGcRmEVCVeHH3J5jNK2An0X6kF2qdvMTqDQfA
 4pxA8fvz/7CA2EIChRKPrr5lmcDIt4CRYRWjSGppcW56brGhXnFibnFpXrpecn7uJkZgTG07
 9nPzDsZLG4MPMQpwMCrx8HYY7YwTYk0sK67MPcQowcGsJMLbkgkU4k1JrKxKLcqPLyrNSS0+
 xGgKdNREZinR5HxgvOeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCU
 amB0vpzLouz9jb9k2sflk3oPsdle0jGN5V3u5LPMP713YjNXwncNwaYzNzfNXSv69VLObxuV
 q2dmWgrMnCez3nr/oj3FSx5t0G7b4CHXlCwk1X/0aLiqp1TtQiPJBafcNn0uOGp/4jHPDAEO
 JUPvQxsCcxeclQucbJLVm1z8aeKyFR/5Q98a+NxUYinOSDTUYi4qTgQAHzs3fr8CAAA=
X-CMS-MailID: 20200512090130eucas1p2eb86c5d34be56bbc81032bc0b6927d1e
X-Msg-Generator: CA
X-RootMTR: 20200512090130eucas1p2eb86c5d34be56bbc81032bc0b6927d1e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090130eucas1p2eb86c5d34be56bbc81032bc0b6927d1e
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090130eucas1p2eb86c5d34be56bbc81032bc0b6927d1e@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020134_580442_C7EF7C8D 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Pawel Osciak <pawel@osciak.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use recently introduced common wrappers operating directly on the struct
sg_table objects and scatterlist page iterators to make the code a bit
more compact, robust, easier to follow and copy/paste safe.

No functional change, because the code already properly did all the
scaterlist related calls.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 .../media/common/videobuf2/videobuf2-dma-contig.c  | 41 ++++++++++------------
 drivers/media/common/videobuf2/videobuf2-dma-sg.c  | 32 +++++++----------
 drivers/media/common/videobuf2/videobuf2-vmalloc.c | 12 +++----
 3 files changed, 34 insertions(+), 51 deletions(-)

diff --git a/drivers/media/common/videobuf2/videobuf2-dma-contig.c b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
index d3a3ee5..bf31a9d 100644
--- a/drivers/media/common/videobuf2/videobuf2-dma-contig.c
+++ b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
@@ -48,16 +48,15 @@ struct vb2_dc_buf {
 
 static unsigned long vb2_dc_get_contiguous_size(struct sg_table *sgt)
 {
-	struct scatterlist *s;
 	dma_addr_t expected = sg_dma_address(sgt->sgl);
-	unsigned int i;
+	struct sg_dma_page_iter dma_iter;
 	unsigned long size = 0;
 
-	for_each_sg(sgt->sgl, s, sgt->nents, i) {
-		if (sg_dma_address(s) != expected)
+	for_each_sgtable_dma_page(sgt, &dma_iter, 0) {
+		if (sg_page_iter_dma_address(&dma_iter) != expected)
 			break;
-		expected = sg_dma_address(s) + sg_dma_len(s);
-		size += sg_dma_len(s);
+		expected += PAGE_SIZE;
+		size += PAGE_SIZE;
 	}
 	return size;
 }
@@ -99,8 +98,7 @@ static void vb2_dc_prepare(void *buf_priv)
 	if (!sgt || buf->db_attach)
 		return;
 
-	dma_sync_sg_for_device(buf->dev, sgt->sgl, sgt->orig_nents,
-			       buf->dma_dir);
+	dma_sync_sgtable_for_device(buf->dev, sgt, buf->dma_dir);
 }
 
 static void vb2_dc_finish(void *buf_priv)
@@ -112,7 +110,7 @@ static void vb2_dc_finish(void *buf_priv)
 	if (!sgt || buf->db_attach)
 		return;
 
-	dma_sync_sg_for_cpu(buf->dev, sgt->sgl, sgt->orig_nents, buf->dma_dir);
+	dma_sync_sgtable_for_cpu(buf->dev, sgt, buf->dma_dir);
 }
 
 /*********************************************/
@@ -273,8 +271,8 @@ static void vb2_dc_dmabuf_ops_detach(struct dma_buf *dbuf,
 		 * memory locations do not require any explicit cache
 		 * maintenance prior or after being used by the device.
 		 */
-		dma_unmap_sg_attrs(db_attach->dev, sgt->sgl, sgt->orig_nents,
-				   attach->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
+		dma_unmap_sgtable(db_attach->dev, sgt, attach->dma_dir,
+				  DMA_ATTR_SKIP_CPU_SYNC);
 	sg_free_table(sgt);
 	kfree(attach);
 	db_attach->priv = NULL;
@@ -299,8 +297,8 @@ static struct sg_table *vb2_dc_dmabuf_ops_map(
 
 	/* release any previous cache */
 	if (attach->dma_dir != DMA_NONE) {
-		dma_unmap_sg_attrs(db_attach->dev, sgt->sgl, sgt->orig_nents,
-				   attach->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
+		dma_unmap_sgtable(db_attach->dev, sgt, attach->dma_dir,
+				  DMA_ATTR_SKIP_CPU_SYNC);
 		attach->dma_dir = DMA_NONE;
 	}
 
@@ -308,9 +306,8 @@ static struct sg_table *vb2_dc_dmabuf_ops_map(
 	 * mapping to the client with new direction, no cache sync
 	 * required see comment in vb2_dc_dmabuf_ops_detach()
 	 */
-	sgt->nents = dma_map_sg_attrs(db_attach->dev, sgt->sgl, sgt->orig_nents,
-				      dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
-	if (!sgt->nents) {
+	if (dma_map_sgtable(db_attach->dev, sgt, dma_dir,
+			    DMA_ATTR_SKIP_CPU_SYNC)) {
 		pr_err("failed to map scatterlist\n");
 		mutex_unlock(lock);
 		return ERR_PTR(-EIO);
@@ -423,8 +420,8 @@ static void vb2_dc_put_userptr(void *buf_priv)
 		 * No need to sync to CPU, it's already synced to the CPU
 		 * since the finish() memop will have been called before this.
 		 */
-		dma_unmap_sg_attrs(buf->dev, sgt->sgl, sgt->orig_nents,
-				   buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
+		dma_unmap_sgtable(buf->dev, sgt, buf->dma_dir,
+				  DMA_ATTR_SKIP_CPU_SYNC);
 		pages = frame_vector_pages(buf->vec);
 		/* sgt should exist only if vector contains pages... */
 		BUG_ON(IS_ERR(pages));
@@ -521,9 +518,8 @@ static void *vb2_dc_get_userptr(struct device *dev, unsigned long vaddr,
 	 * No need to sync to the device, this will happen later when the
 	 * prepare() memop is called.
 	 */
-	sgt->nents = dma_map_sg_attrs(buf->dev, sgt->sgl, sgt->orig_nents,
-				      buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
-	if (sgt->nents <= 0) {
+	if (dma_map_sgtable(buf->dev, sgt, buf->dma_dir,
+			    DMA_ATTR_SKIP_CPU_SYNC)) {
 		pr_err("failed to map scatterlist\n");
 		ret = -EIO;
 		goto fail_sgt_init;
@@ -545,8 +541,7 @@ static void *vb2_dc_get_userptr(struct device *dev, unsigned long vaddr,
 	return buf;
 
 fail_map_sg:
-	dma_unmap_sg_attrs(buf->dev, sgt->sgl, sgt->orig_nents,
-			   buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
+	dma_unmap_sgtable(buf->dev, sgt, buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
 
 fail_sgt_init:
 	sg_free_table(sgt);
diff --git a/drivers/media/common/videobuf2/videobuf2-dma-sg.c b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
index 92072a0..6ddf953 100644
--- a/drivers/media/common/videobuf2/videobuf2-dma-sg.c
+++ b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
@@ -142,9 +142,8 @@ static void *vb2_dma_sg_alloc(struct device *dev, unsigned long dma_attrs,
 	 * No need to sync to the device, this will happen later when the
 	 * prepare() memop is called.
 	 */
-	sgt->nents = dma_map_sg_attrs(buf->dev, sgt->sgl, sgt->orig_nents,
-				      buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
-	if (!sgt->nents)
+	if (dma_map_sgtable(buf->dev, sgt, buf->dma_dir,
+			    DMA_ATTR_SKIP_CPU_SYNC)) {
 		goto fail_map;
 
 	buf->handler.refcount = &buf->refcount;
@@ -180,8 +179,8 @@ static void vb2_dma_sg_put(void *buf_priv)
 	if (refcount_dec_and_test(&buf->refcount)) {
 		dprintk(1, "%s: Freeing buffer of %d pages\n", __func__,
 			buf->num_pages);
-		dma_unmap_sg_attrs(buf->dev, sgt->sgl, sgt->orig_nents,
-				   buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
+		dma_unmap_sgtable(buf->dev, sgt, buf->dma_dir,
+				  DMA_ATTR_SKIP_CPU_SYNC);
 		if (buf->vaddr)
 			vm_unmap_ram(buf->vaddr, buf->num_pages);
 		sg_free_table(buf->dma_sgt);
@@ -202,8 +201,7 @@ static void vb2_dma_sg_prepare(void *buf_priv)
 	if (buf->db_attach)
 		return;
 
-	dma_sync_sg_for_device(buf->dev, sgt->sgl, sgt->orig_nents,
-			       buf->dma_dir);
+	dma_sync_sgtable_for_device(buf->dev, sgt, buf->dma_dir);
 }
 
 static void vb2_dma_sg_finish(void *buf_priv)
@@ -215,7 +213,7 @@ static void vb2_dma_sg_finish(void *buf_priv)
 	if (buf->db_attach)
 		return;
 
-	dma_sync_sg_for_cpu(buf->dev, sgt->sgl, sgt->orig_nents, buf->dma_dir);
+	dma_sync_sgtable_for_cpu(buf->dev, sgt, buf->dma_dir);
 }
 
 static void *vb2_dma_sg_get_userptr(struct device *dev, unsigned long vaddr,
@@ -258,9 +256,8 @@ static void *vb2_dma_sg_get_userptr(struct device *dev, unsigned long vaddr,
 	 * No need to sync to the device, this will happen later when the
 	 * prepare() memop is called.
 	 */
-	sgt->nents = dma_map_sg_attrs(buf->dev, sgt->sgl, sgt->orig_nents,
-				      buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
-	if (!sgt->nents)
+	if (dma_map_sgtable(buf->dev, sgt, buf->dma_dir,
+			    DMA_ATTR_SKIP_CPU_SYNC)) {
 		goto userptr_fail_map;
 
 	return buf;
@@ -286,8 +283,7 @@ static void vb2_dma_sg_put_userptr(void *buf_priv)
 
 	dprintk(1, "%s: Releasing userspace buffer of %d pages\n",
 	       __func__, buf->num_pages);
-	dma_unmap_sg_attrs(buf->dev, sgt->sgl, sgt->orig_nents, buf->dma_dir,
-			   DMA_ATTR_SKIP_CPU_SYNC);
+	dma_unmap_sgtable(buf->dev, sgt, buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
 	if (buf->vaddr)
 		vm_unmap_ram(buf->vaddr, buf->num_pages);
 	sg_free_table(buf->dma_sgt);
@@ -410,8 +406,7 @@ static void vb2_dma_sg_dmabuf_ops_detach(struct dma_buf *dbuf,
 
 	/* release the scatterlist cache */
 	if (attach->dma_dir != DMA_NONE)
-		dma_unmap_sg(db_attach->dev, sgt->sgl, sgt->orig_nents,
-			attach->dma_dir);
+		dma_unmap_sgtable(db_attach->dev, sgt, attach->dma_dir);
 	sg_free_table(sgt);
 	kfree(attach);
 	db_attach->priv = NULL;
@@ -436,15 +431,12 @@ static struct sg_table *vb2_dma_sg_dmabuf_ops_map(
 
 	/* release any previous cache */
 	if (attach->dma_dir != DMA_NONE) {
-		dma_unmap_sg(db_attach->dev, sgt->sgl, sgt->orig_nents,
-			attach->dma_dir);
+		dma_unmap_sgtable(db_attach->dev, sgt, attach->dma_dir);
 		attach->dma_dir = DMA_NONE;
 	}
 
 	/* mapping to the client with new direction */
-	sgt->nents = dma_map_sg(db_attach->dev, sgt->sgl, sgt->orig_nents,
-				dma_dir);
-	if (!sgt->nents) {
+	if (dma_map_sgtable(db_attach->dev, sgt, dma_dir, 0)) {
 		pr_err("failed to map scatterlist\n");
 		mutex_unlock(lock);
 		return ERR_PTR(-EIO);
diff --git a/drivers/media/common/videobuf2/videobuf2-vmalloc.c b/drivers/media/common/videobuf2/videobuf2-vmalloc.c
index c66fda4..bf5ac63 100644
--- a/drivers/media/common/videobuf2/videobuf2-vmalloc.c
+++ b/drivers/media/common/videobuf2/videobuf2-vmalloc.c
@@ -229,7 +229,7 @@ static int vb2_vmalloc_dmabuf_ops_attach(struct dma_buf *dbuf,
 		kfree(attach);
 		return ret;
 	}
-	for_each_sg(sgt->sgl, sg, sgt->nents, i) {
+	for_each_sgtable_sg(sgt, sg, i) {
 		struct page *page = vmalloc_to_page(vaddr);
 
 		if (!page) {
@@ -259,8 +259,7 @@ static void vb2_vmalloc_dmabuf_ops_detach(struct dma_buf *dbuf,
 
 	/* release the scatterlist cache */
 	if (attach->dma_dir != DMA_NONE)
-		dma_unmap_sg(db_attach->dev, sgt->sgl, sgt->orig_nents,
-			attach->dma_dir);
+		dma_unmap_sgtable(db_attach->dev, sgt, attach->dma_dir, 0);
 	sg_free_table(sgt);
 	kfree(attach);
 	db_attach->priv = NULL;
@@ -285,15 +284,12 @@ static struct sg_table *vb2_vmalloc_dmabuf_ops_map(
 
 	/* release any previous cache */
 	if (attach->dma_dir != DMA_NONE) {
-		dma_unmap_sg(db_attach->dev, sgt->sgl, sgt->orig_nents,
-			attach->dma_dir);
+		dma_unmap_sgtable(db_attach->dev, sgt, attach->dma_dir, 0);
 		attach->dma_dir = DMA_NONE;
 	}
 
 	/* mapping to the client with new direction */
-	sgt->nents = dma_map_sg(db_attach->dev, sgt->sgl, sgt->orig_nents,
-				dma_dir);
-	if (!sgt->nents) {
+	if (dma_map_sgtable(db_attach->dev, sgt, dma_dir, 0)) {
 		pr_err("failed to map scatterlist\n");
 		mutex_unlock(lock);
 		return ERR_PTR(-EIO);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
