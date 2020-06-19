Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8051C20073E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MLdNxT9dcCS//vOd2br4elzjx5W255m5jRW93aSMt7s=; b=eIeBqNT+paS/6VwOBGK+wS9sr8
	3LyOlFRnv/2g+ORrV7j3xmufXX3imVcmzp4qPHTVA6kE1J7x1LpYcBTB8HKHmhBmTJH+5CG+xyVQB
	WPq1VOLBrsCof/Iy8KAKPlaBdk48jUAKWG+L3hu+OfPP2G0VHSy+G6IbrgyVvMnDph7+WgM6IO7RE
	MTQ6y9dfeXhk/IkjmbOUuO33+LehwYUMtwyZ6QPnDbxUzJs5jrH3ICR7fPwugPliE5w7K7E8jUzeu
	q2zLwMznqPhi+fWAlNTiWAp9fQSXs917+3GEXTaDun44svkzOIKcjQW1UrcAp11jQgnYOR9wtD7vE
	QQIvO6uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEaF-0003Yn-4m; Fri, 19 Jun 2020 10:49:19 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOe-0005T7-9L
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:24 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103718euoutp0280c5b93070bcfcc55d1beef39b3c201e~Z66VfvTfR2372823728euoutp02s
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103718euoutp0280c5b93070bcfcc55d1beef39b3c201e~Z66VfvTfR2372823728euoutp02s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563038;
 bh=YMIG5bHxXQqN5d5M++pcw1k2ev5cU8mbz0/sM4bdCmk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QaCdmllbUxEAD5ZjaL8GWVgJwhHWyV+faaTh0iKBa++PNRYIfVUQszsLqSyRiWhVM
 O/PHlsj2z3Cu7H19XxB0/m1HHi0pCD3x+vFUW767WUI9WxhDy37yjgimVpw7unoJrq
 wybo2Uwemo7zqDCjIJOUUsb8crxGYoxdVIXS8G8w=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103718eucas1p279c5d3b6dd39f8329aaac70fbeea6c28~Z66VSCx1R1012910129eucas1p2E;
 Fri, 19 Jun 2020 10:37:18 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id FE.9C.06318.E559CEE5; Fri, 19
 Jun 2020 11:37:18 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103718eucas1p11cd577b435672197f48bfcba2d06bc18~Z66U-TWoX1886818868eucas1p1F;
 Fri, 19 Jun 2020 10:37:18 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103718eusmtrp1fda9e78f890c50ada601e7a901e0c506~Z66U_pH1r1007310073eusmtrp1P;
 Fri, 19 Jun 2020 10:37:18 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-92-5eec955e9134
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DC.1B.06017.E559CEE5; Fri, 19
 Jun 2020 11:37:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103717eusmtip22d49d87032e791d6ea43be27272dd983~Z66USePPR0229502295eusmtip2o;
 Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 36/36] videobuf2: use sgtable-based scatterlist wrappers
Date: Fri, 19 Jun 2020 12:36:36 +0200
Message-Id: <20200619103636.11974-37-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfUgTYRzuvdvdTtvymoEvFgnri4o0UejStAyto/4wqDCKzJmHSn6xS9OK
 Wn5Eze+sNKkcZs6mZq21UuljYi4bmSuJlZnpRFPTSp2pqOV5av89v+fjfX78eAlUYsKciciY
 k4w8RhYlxe0F+obxpk3B134Eb84ec6YymxoR6mFBFUb91eeiVIvtJ07dK3+FUOYbbQJK9cKb
 GmnpQCit9SNGfai5iVMZDx5jVGV9m5Aq1U4i1NWBcSFl+NWF7XCgK25XAPrZqEpAazWXcfrJ
 6DeMbk83IvSjkvN067QVpfMsakDXflLgtHWiF6ezdBpAD2tX0m9sw8J94sP228KYqMgERu7m
 G2IfYetSI3HVgYmjyV2IAoz4KYEdAUlPaJmeECqBPSEhywC8betB+GEEwLtm3ZwyDKDl9w90
 PlLZkSLgBTWAhlwzthBpr9LPunDSHSoHlDiHl5FpAL7OFHEmlKxC4djXPMAJjuReqM5uRDgs
 INdA3dTgTJggxKQvNLZ6820usPzBy9k37Wbo/lTDbBkkO4Wwq6UB403+sOdC9xx2hH1Gbm8O
 r4CmvAwBH0gBsKOpUsgPGQB+SC4AvMsbfmmawLlmlFwPq2rceNoP6pTNgKMhuQRaBpZyNDoD
 r+jzUZ4Ww0sXJbx7LSw03l+oNTS/n7sWDWvTB3H+QLkAtpqz0BzgUvi/TAWABjgx8Wx0OMN6
 xDCnXFlZNBsfE+56PDZaC2a+mGnaaHsKnk+G1gGSAFKR+PuB/mAJJktgk6LrACRQ6TLxzrem
 YIk4TJZ0mpHHHpPHRzFsHVhOCKROYo/i3qMSMlx2kjnBMHGMfF5FCDtnBfBb7LXmzJayoMaN
 FgfNxGCpR3toAk387LPblZq7W6HyDwwShezfKqyWFY29ObNHl/ZwVb9U8tlH4+m+/Vx7hXGd
 wXtYoUwqLrcm31qUL5o8mDDUeeQsW+8bkJMjUpYoChPDp7IrApBfTl5ZQz6L1P2Oq3tN1J3r
 3a1/rhUdosXvpAI2Qua+AZWzsn9deqhcXgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNIsWRmVeSWpSXmKPExsVy+t/xe7pxU9/EGTy5zWnRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllcnHmXxWLBfmuLL1ceMllsenyN1eLyrjlsFj0btrJarD1yl91i
 2aY/TBZT3v5ktzj44QmrA7/HmnlrGD32flvA4rFpVSebx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzePxr5dsHn1bVjF6fN4k53Hq62f2AN4oPZui/NKSVIWM/OISW6VoQwsjPUNL
 Cz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYyvT5YzFez0r/jW9ISpgfGLYxcjJ4eEgInE
 2ofNLCC2kMBSRolJh4Mh4jISJ6c1sELYwhJ/rnWxdTFyAdV8YpS4/mMzM0iCTcBQoustREJE
 oJNRYlr3R3YQh1lgJ7PExOstYFXCAt4Sy/tPMoHYLAKqElv+vgOKc3DwCthJHL9tDbFBXmL1
 hgNg5ZxA4dctB1khLrKVWL7gPfMERr4FjAyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAiNq
 27GfW3Ywdr0LPsQowMGoxMP7IuR1nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pz
 UosPMZoC3TSRWUo0OR8Y7Xkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqY
 ODilGhjZcqMawr3yimcrJIkvvR54VI/njE3E5skL1H79s5i7e2XxY6er9afXMtxweMTha/xl
 b67vWn+dHYcdbjWK36mqUWY6yPaG28ijr0Sf6RbTtsO/5MWbiqIbJbYvNbOcybr58J8ToXet
 2lmPt5ksFf8gPSPNTlvOwHmaQbSb6q0l0+OUw98JWCixFGckGmoxFxUnAgA336lcvgIAAA==
X-CMS-MailID: 20200619103718eucas1p11cd577b435672197f48bfcba2d06bc18
X-Msg-Generator: CA
X-RootMTR: 20200619103718eucas1p11cd577b435672197f48bfcba2d06bc18
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103718eucas1p11cd577b435672197f48bfcba2d06bc18
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103718eucas1p11cd577b435672197f48bfcba2d06bc18@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033720_614362_FD49A4FC 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 .../common/videobuf2/videobuf2-dma-contig.c   | 34 ++++++++-----------
 .../media/common/videobuf2/videobuf2-dma-sg.c | 32 +++++++----------
 .../common/videobuf2/videobuf2-vmalloc.c      | 12 +++----
 3 files changed, 31 insertions(+), 47 deletions(-)

diff --git a/drivers/media/common/videobuf2/videobuf2-dma-contig.c b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
index f4b4a7c135eb..0a16a85f0284 100644
--- a/drivers/media/common/videobuf2/videobuf2-dma-contig.c
+++ b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
@@ -53,10 +53,10 @@ static unsigned long vb2_dc_get_contiguous_size(struct sg_table *sgt)
 	unsigned int i;
 	unsigned long size = 0;
 
-	for_each_sg(sgt->sgl, s, sgt->nents, i) {
+	for_each_sgtable_dma_sg(sgt, s, i) {
 		if (sg_dma_address(s) != expected)
 			break;
-		expected = sg_dma_address(s) + sg_dma_len(s);
+		expected += sg_dma_len(s);
 		size += sg_dma_len(s);
 	}
 	return size;
@@ -99,8 +99,7 @@ static void vb2_dc_prepare(void *buf_priv)
 	if (!sgt || buf->db_attach)
 		return;
 
-	dma_sync_sg_for_device(buf->dev, sgt->sgl, sgt->orig_nents,
-			       buf->dma_dir);
+	dma_sync_sgtable_for_device(buf->dev, sgt, buf->dma_dir);
 }
 
 static void vb2_dc_finish(void *buf_priv)
@@ -112,7 +111,7 @@ static void vb2_dc_finish(void *buf_priv)
 	if (!sgt || buf->db_attach)
 		return;
 
-	dma_sync_sg_for_cpu(buf->dev, sgt->sgl, sgt->orig_nents, buf->dma_dir);
+	dma_sync_sgtable_for_cpu(buf->dev, sgt, buf->dma_dir);
 }
 
 /*********************************************/
@@ -273,8 +272,8 @@ static void vb2_dc_dmabuf_ops_detach(struct dma_buf *dbuf,
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
@@ -299,8 +298,8 @@ static struct sg_table *vb2_dc_dmabuf_ops_map(
 
 	/* release any previous cache */
 	if (attach->dma_dir != DMA_NONE) {
-		dma_unmap_sg_attrs(db_attach->dev, sgt->sgl, sgt->orig_nents,
-				   attach->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
+		dma_unmap_sgtable(db_attach->dev, sgt, attach->dma_dir,
+				  DMA_ATTR_SKIP_CPU_SYNC);
 		attach->dma_dir = DMA_NONE;
 	}
 
@@ -308,9 +307,8 @@ static struct sg_table *vb2_dc_dmabuf_ops_map(
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
@@ -423,8 +421,8 @@ static void vb2_dc_put_userptr(void *buf_priv)
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
@@ -521,9 +519,8 @@ static void *vb2_dc_get_userptr(struct device *dev, unsigned long vaddr,
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
@@ -545,8 +542,7 @@ static void *vb2_dc_get_userptr(struct device *dev, unsigned long vaddr,
 	return buf;
 
 fail_map_sg:
-	dma_unmap_sg_attrs(buf->dev, sgt->sgl, sgt->orig_nents,
-			   buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
+	dma_unmap_sgtable(buf->dev, sgt, buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
 
 fail_sgt_init:
 	sg_free_table(sgt);
diff --git a/drivers/media/common/videobuf2/videobuf2-dma-sg.c b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
index 92072a08af25..08c40311eea0 100644
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
+			    DMA_ATTR_SKIP_CPU_SYNC))
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
+			    DMA_ATTR_SKIP_CPU_SYNC))
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
+		dma_unmap_sgtable(db_attach->dev, sgt, attach->dma_dir, 0);
 	sg_free_table(sgt);
 	kfree(attach);
 	db_attach->priv = NULL;
@@ -436,15 +431,12 @@ static struct sg_table *vb2_dma_sg_dmabuf_ops_map(
 
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
diff --git a/drivers/media/common/videobuf2/videobuf2-vmalloc.c b/drivers/media/common/videobuf2/videobuf2-vmalloc.c
index c66fda4a65e4..bf5ac63a5742 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
