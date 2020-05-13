Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1591D1651
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fTsMkAuSzMrKK2miXu4XCML6zJsf/GssEbBbSQHZe4c=; b=EUwavkQ2NmZDo67iBqA0u5274h
	+CbEFwHLrKVvSPccSCnae8NMTqzfzaIvw0Z+j6mJU54WKtqc2klHonkZlvwDL9KHba5URdJSt/I2U
	wN/fZv2ES+7M8EgrQfhiH3fONlaovYInSRd0VYDYzshUpmvF2jzdJD9qmCIwOXZVbpUBQtU7Jhw3+
	+WGofl0XaVARBcj3a8YbxwbL2vqDGdLIw09BALE2kfCf1/NCK2YbxLH2agHsdcrKlkO1THQegnRX8
	rzSucMuPjHRq0vVeogmO5UbWofaKt9iIFJFd92+LtrHnL0c3JMlctIFwsT1S0c5VjNoY43cLPm7B6
	KCJcLEvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYri8-0002eF-Kj; Wed, 13 May 2020 13:46:12 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVn-0001ng-UM
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:34 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133326euoutp0286d5005826ea357704730bd01de95c3b~OmcjL80Re0033500335euoutp02t
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133326euoutp0286d5005826ea357704730bd01de95c3b~OmcjL80Re0033500335euoutp02t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376806;
 bh=Utl3zZDmykdZNyu6dAm8fTuaeGY3h535BeMF/H0qJaQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BnwkevTTq6gNd8KZ67iTQwImTtX4ZKeHcn9m1Ps+TW+tE9hdsSw9JWsErSdLWvXfp
 PHbwSDMCISHBPTm8r4HnwHsrFPDIp+wOxf+QlZjUaEIyqKG4nsAuKvpKpKE7zWe3Kh
 GX+mTz/MTQc8prse8TGyjmCIaSinUePhsPhv8/IM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133325eucas1p16a0d8a2b6db49bfbbcb8114295e3fc17~OmcizHp0R0608106081eucas1p1Q;
 Wed, 13 May 2020 13:33:25 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 2B.11.60679.527FBBE5; Wed, 13
 May 2020 14:33:25 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133325eucas1p1c8faf557b23b5d171b7c328eca5f6482~Omciakj5y0784607846eucas1p1I;
 Wed, 13 May 2020 13:33:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133325eusmtrp1e4f940dd4a4d1413d24c15726e0540f7~OmciZnsBq1050710507eusmtrp1e;
 Wed, 13 May 2020 13:33:25 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-7e-5ebbf72576ce
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 41.57.07950.527FBBE5; Wed, 13
 May 2020 14:33:25 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133324eusmtip1b7de34a68017f5899adbdae6b9962816~OmchmXAM00741507415eusmtip1s;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 38/38] videobuf2: use sgtable-based scatterlist wrappers
Date: Wed, 13 May 2020 15:32:45 +0200
Message-Id: <20200513133245.6408-38-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0gUURTHuzOzM6O4Na5CN42iBYOCNFPimha9GSpCgvoQaW05rZK7yo5a
 1ocWRXPXLewBiYWZRJqv1fWRaWrqppWP8pFmru8s1toerFppWDvOVt9+53/+/3MOl0vjshaJ
 Fx2ljuM0akW0nHQlqlp+dm7w+V4bvrGrbj263PkcQ2WZRgn6XXUVR70zX0j0oPAphnIaglFH
 0icKTfeOYcg00SdBPTW3SWQorZSgYvMQhe6bfmHohu0nhRq/vpNsX8YWZRcBtm42h2BNBTqS
 fTg7KmFH0lsxtvzeRXZwYQJnr7/JA2ztgJZkJ+asJHulogCwdtOqULejriERXHRUAqfx23bC
 NfLu8DwVO3jo3KVbVokWWHbrgQsNmUDY/XiY0gNXWsbkA5j90UyKxTSAXdkdzo4dQHvVZ/xv
 ZHxiyOnKA3AktxIIjcXIiyxMYJLxh3qbnhTYk0kB8NllNyGAM2U4bBkxLk7yYPbD7PmvhMAE
 4wO7S4oogaXMVtjzJdm5bTUsLH2yyC4OfcrSQAiDINNHwUFbKiGadsO2hVxKZA841Vrh5JWw
 7brBGUgGcKyzmBILA4A9SZlAdAVDS+ec41bacd86aKzxE+UdsL/dTAgyZJbCNzZ3QcYdeK3q
 Ji7KUpiWKhPda2FWa8m/tY2vup33s/BH3jwmvlYzgMU940QGWJ31f1kOAAVgORfPq5Qcv0nN
 nfXlFSo+Xq30PRWjMgHH72pbaJ2uBjW/TjYBhgZyNyl6WxsukygS+ERVE4A0LveUHjQ6JGmE
 IvE8p4k5romP5vgm4E0T8uXSgFxrmIxRKuK4MxwXy2n+djHaxUsL9BdMRn+0q31Nsy6fSZ+D
 327ltYeVB/s0z/jvsYY1TnJdcan90vrkl/t0o7rJY9TrvvA7Ge8fKUNnT38IsiyBZcNH+C1B
 KScOXKk1bBvbl5gxEJm2eQWWZnGvzwzJz79UYg6oTn9YEOh9OHQ8San16N9ZTlu8bS72I4Fn
 gpi9qXKCj1T4r8c1vOIPe7I8r1kDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBIsWRmVeSWpSXmKPExsVy+t/xu7qq33fHGdw9x2/Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9tcbbpDbvFlysPmSw2Pb7GanF51xw2i54NW1kt1h65y26x
 bNMfJospb3+yWxz88ITVgd9jzbw1jB57vy1g8di0qpPNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5vH410s2j74tqxg9Pm+SC+CJ0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHU
 MzQ2j7UyMlXSt7NJSc3JLEst0rdL0MtYeO83e8HtoIr22S9ZGxjvuHQxcnJICJhIPHp8l62L
 kYtDSGApo8Tkw8+ZIRIyEienNbBC2MISf651QRV9YpR43/qcCSTBJmAo0fUWIiEi0MkoMa37
 IzuIwyywm1li3eE9YO3CAt4S835/YAGxWQRUJS6tW8MOYvMK2Epcft8MtU5eYvWGA2A2J1D8
 1Z39YPVCAvkSexfvY5vAyLeAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYCxtO/Zzyw7G
 rnfBhxgFOBiVeHgtbu2OE2JNLCuuzD3EKMHBrCTC67ceKMSbklhZlVqUH19UmpNafIjRFOio
 icxSosn5wDjPK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAWCS0
 /46FmXfv4VmNrY7FKzI2a+yU4OCJue4yr2PzRa1L2k5Svvb75D59LH1lMu/a89iXF75vezrj
 Uvzq2t4J+RusFezDOaK52G6YliR8Lr7f8cjN1qZTb/OsKtswu4oJcVtzbqRwXr69rpx1jXS8
 XTZfSEOhhudM1VTZg32r+Z7NmCg56XauEktxRqKhFnNRcSIA5BMrEbsCAAA=
X-CMS-MailID: 20200513133325eucas1p1c8faf557b23b5d171b7c328eca5f6482
X-Msg-Generator: CA
X-RootMTR: 20200513133325eucas1p1c8faf557b23b5d171b7c328eca5f6482
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133325eucas1p1c8faf557b23b5d171b7c328eca5f6482
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133325eucas1p1c8faf557b23b5d171b7c328eca5f6482@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063328_580324_A56F8BF8 
X-CRM114-Status: GOOD (  20.30  )
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
Cc: Pawel Osciak <pawel@osciak.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
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
