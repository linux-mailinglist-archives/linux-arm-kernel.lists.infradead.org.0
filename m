Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAFE1C3AA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cFy8TeayID2UiXp+HcKskougfDCt1lj+79L2e/K3mJM=; b=jXd74COPN0sbA7HPB9gZanfN0Y
	pkj0NnH4xZDblH2b870KA18T1Sd+UpU4xPZry9S7CNKu0Rc1xfUnVRT2UMtcBtd3qiNF+n+U+NMo5
	wsBnAarUnhHA1+91T/6o0uXI9eFApaZt5V1vZpMFZJnpE+kwdS0RCjiHIuVZq5HZ25ThcigoWgR91
	M6ei27Z4VeblNYjmCjrleVxQQxoDoar1mbSKHpl4hMGgwdClRNpz22WZFZv1IZx8mKtGwbHcGBDHR
	d/chuZUVjwMKonembs5En3H/w0SDwjnBKYw5cMxOun/qUXvO1H1V/APFwkPMjvtAE7cAXCn8HkjeN
	JLOE821g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVag9-0000R9-CU; Mon, 04 May 2020 12:58:37 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVac0-0002cY-A8
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:22 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125418euoutp0182d5e2feb8cd969c70ef1253f8a9e206~L1G0oBpYF2860028600euoutp01u
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125418euoutp0182d5e2feb8cd969c70ef1253f8a9e206~L1G0oBpYF2860028600euoutp01u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596858;
 bh=oXKAiZsd3uylE1bkjXQANkaBzCM+Y/1iAKwOReHGbvk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gptGuzFau/RJBmBktbg/UCm3+JKBqaq5GWF4LsutRzTneuMcDa8cqM2OyJiHDbxGh
 4Ykjqh/T7AGN/Lm8Tu8me4viAA2EPYkiT35a4UCIMUYZPNHaIPaIzTVYt5j0PyJaQ4
 ywskVGGPlIj7s0+PSMwYQvh5yKUl06IcUocXQPLg=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125418eucas1p17e73f107eede867dcb8807733386f81f~L1G0XsQls1174811748eucas1p1Z;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B8.12.60698.A7010BE5; Mon,  4
 May 2020 13:54:18 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125418eucas1p2d649919f1969a85c8f7dfc8c73d58459~L1G0ACwsc2250922509eucas1p26;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125418eusmtrp19882edb11d87b702b04b993e8472678e~L1Gz-TuXK2470624706eusmtrp1l;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-54-5eb0107ac8e4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0A.06.07950.A7010BE5; Mon,  4
 May 2020 13:54:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125417eusmtip275f66edcfb0b7cf1a6159b74762416f5~L1GzUHuQe0350103501eusmtip22;
 Mon,  4 May 2020 12:54:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 12/21] drm: tegra: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:50 +0200
Message-Id: <20200504125359.5678-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSezBUYRjG59uze/bYsTqW8o0uZrahmMllpDlREmY6/aEx/aNM0eIMJrfZ
 gzCjhExt6GJCWxktjVwXyxLJ3VYaGpeQSy5NN5cuFimpPQ7673mf9/d8z8w7H4aIGnimWHBY
 JCUNk4SIUQFX3bHcvS8OL/exvdy6k0jresEhKrKVPOKv+hZC9C18RYnC4nYOkdvoRCTLFVxC
 2zfBISqn3vCI3rr7KHFNK0eJ0rZRPtH87T2PWK7L4boYkCU5JYBsWMzlkk/ko3yyZnGcR767
 ruGQqvxL5PDqFEJmDBYAsn4oASXTkuZQMr2qCJDzlbs89b0FhwKokOBoSmrjfE4Q1PDANWLa
 KqZ2dpKTANrFMqCHQXw/nKlP5MuAABPhjwFU9fXy2EELoGJ8an2YB7DsXhJvI/I2VYWwiwIA
 P42pwWbk+Y0yDkOhuB2UzcpQRhvjV3SLNH0GQvBUBDZlLukSGGaEe8JGlQcjubg5HM5zY3Ah
 fhhWqn5z2DIzWFzehDCIns6/m7aHeQXiPXz4Z/Iln2Xc4Q9lP8pqI/hFU7Xu74CdGalcNpAE
 4ERXKZ8dUgHsTcwGLOUER7p+oUwDgltCZZ0Nax+F6jv9azbEDeDgrCFjIzp5W52FsLYQXk0R
 sbQFlGvKNmubX/cgrCZhxlL+2t1EeCuAs3kON4GZ/H9XLgBFwISKokMDKdo+jLpgTUtC6aiw
 QGv/8NBKoPtUnauahVrwbMWvBeAYEOsLT80rfUQ8STQdG9oCIIaIjYW1yTpLGCCJjaOk4b7S
 qBCKbgHbMa7YRGiv+HxWhAdKIqnzFBVBSTe2HEzPNAG4zhiszFvE//zgkLUiS4ffqw8+ass+
 Y+m/V2vr1x2S5JWDGSorYl6JhzqsR3qz7MoVUB0+npIZlPzQy8i9SvOxesnBA3UZE2inNfGt
 Pd7b5hq2Nvtotww8dR7aHX784lhEQG3eSbdj/bvlfb41dM8Jx9Mzmf3WNeZHHA8MFA5JZGIu
 HSSxs0KktOQfYKycRVADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7pVAhviDGY+4LToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2aJm1iMXiy5WHTBabHl9jtbi8aw6bReeXWWwWa4/cZbc4
 +OEJq8XPXfNYHPg81sxbw+ix99sCFo+ds+6ye2z/9oDV4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dx6m9+xefRtWcXo8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayV
 kamSvp1NSmpOZllqkb5dgl7G3rlOBa+1Kna8fcTUwHhUqYuRk0NCwETiVs9m5i5GLg4hgaWM
 Es937GOFSMhInJzWAGULS/y51sUGUfSJUeLG648sIAk2AUOJrrcQCRGBTkaJad0f2UEcZoEp
 zBJT7zcwdjFycAgL+Ems/2IOYrIIqErcXuwM0ssrYCuxafNvJogF8hKrNxxgBinhBIrP7FUH
 CQsJ5EvcffqPZQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBkbPt2M8tOxi73gUf
 YhTgYFTi4d3wdX2cEGtiWXFl7iFGCQ5mJRHeHS1AId6UxMqq1KL8+KLSnNTiQ4ymQCdNZJYS
 Tc4HRnVeSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbGPVGrF0m4
 2/StOxsszlsqXcfrf6ow3/lR789LP3dtu1ZSvvH/L9WqHXkPZufNLLGpzhffq/xK5s3zA5vr
 Xy6b29T9b/3ipAluD2x/K29j3SGj/WPen3+XS2bI3PnT7PbY1r2n0+16yft9MUlLAjvitipK
 R3GfCIgxPxXAMJurddL9kknO+UcWKrEUZyQaajEXFScCAKM6r9iyAgAA
X-CMS-MailID: 20200504125418eucas1p2d649919f1969a85c8f7dfc8c73d58459
X-Msg-Generator: CA
X-RootMTR: 20200504125418eucas1p2d649919f1969a85c8f7dfc8c73d58459
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125418eucas1p2d649919f1969a85c8f7dfc8c73d58459
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125418eucas1p2d649919f1969a85c8f7dfc8c73d58459@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055420_591176_4C315EA6 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
numer of the created entries in the DMA address space. However the
subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
called with the original number of entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. Adapt the code to obey those rules.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v2 00/21] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/4/373
---
 drivers/gpu/drm/tegra/gem.c   | 25 +++++++++++++------------
 drivers/gpu/drm/tegra/plane.c | 13 +++++++------
 2 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/tegra/gem.c b/drivers/gpu/drm/tegra/gem.c
index 6237681..5710ab4 100644
--- a/drivers/gpu/drm/tegra/gem.c
+++ b/drivers/gpu/drm/tegra/gem.c
@@ -98,8 +98,8 @@ static struct sg_table *tegra_bo_pin(struct device *dev, struct host1x_bo *bo,
 		 * the SG table needs to be copied to avoid overwriting any
 		 * other potential users of the original SG table.
 		 */
-		err = sg_alloc_table_from_sg(sgt, obj->sgt->sgl, obj->sgt->nents,
-					     GFP_KERNEL);
+		err = sg_alloc_table_from_sg(sgt, obj->sgt->sgl,
+					     obj->sgt->orig_nents, GFP_KERNEL);
 		if (err < 0)
 			goto free;
 	} else {
@@ -197,7 +197,7 @@ static int tegra_bo_iommu_map(struct tegra_drm *tegra, struct tegra_bo *bo)
 	bo->iova = bo->mm->start;
 
 	bo->size = iommu_map_sg(tegra->domain, bo->iova, bo->sgt->sgl,
-				bo->sgt->nents, prot);
+				bo->sgt->orig_nents, prot);
 	if (!bo->size) {
 		dev_err(tegra->drm->dev, "failed to map buffer\n");
 		err = -ENOMEM;
@@ -264,7 +264,7 @@ static struct tegra_bo *tegra_bo_alloc_object(struct drm_device *drm,
 static void tegra_bo_free(struct drm_device *drm, struct tegra_bo *bo)
 {
 	if (bo->pages) {
-		dma_unmap_sg(drm->dev, bo->sgt->sgl, bo->sgt->nents,
+		dma_unmap_sg(drm->dev, bo->sgt->sgl, bo->sgt->orig_nents,
 			     DMA_FROM_DEVICE);
 		drm_gem_put_pages(&bo->gem, bo->pages, true, true);
 		sg_free_table(bo->sgt);
@@ -290,9 +290,9 @@ static int tegra_bo_get_pages(struct drm_device *drm, struct tegra_bo *bo)
 		goto put_pages;
 	}
 
-	err = dma_map_sg(drm->dev, bo->sgt->sgl, bo->sgt->nents,
-			 DMA_FROM_DEVICE);
-	if (err == 0) {
+	bo->sgt->nents = dma_map_sg(drm->dev, bo->sgt->sgl, bo->sgt->orig_nents,
+				DMA_FROM_DEVICE);
+	if (bo->sgt->nents == 0) {
 		err = -EFAULT;
 		goto free_sgt;
 	}
@@ -571,7 +571,8 @@ int tegra_drm_mmap(struct file *file, struct vm_area_struct *vma)
 			goto free;
 	}
 
-	if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0)
+	sgt->nents = dma_map_sg(attach->dev, sgt->sgl, sgt->orig_nents, dir);
+	if (sgt->nents == 0)
 		goto free;
 
 	return sgt;
@@ -590,7 +591,7 @@ static void tegra_gem_prime_unmap_dma_buf(struct dma_buf_attachment *attach,
 	struct tegra_bo *bo = to_tegra_bo(gem);
 
 	if (bo->pages)
-		dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents, dir);
+		dma_unmap_sg(attach->dev, sgt->sgl, sgt->orig_nents, dir);
 
 	sg_free_table(sgt);
 	kfree(sgt);
@@ -609,7 +610,7 @@ static int tegra_gem_prime_begin_cpu_access(struct dma_buf *buf,
 	struct drm_device *drm = gem->dev;
 
 	if (bo->pages)
-		dma_sync_sg_for_cpu(drm->dev, bo->sgt->sgl, bo->sgt->nents,
+		dma_sync_sg_for_cpu(drm->dev, bo->sgt->sgl, bo->sgt->orig_nents,
 				    DMA_FROM_DEVICE);
 
 	return 0;
@@ -623,8 +624,8 @@ static int tegra_gem_prime_end_cpu_access(struct dma_buf *buf,
 	struct drm_device *drm = gem->dev;
 
 	if (bo->pages)
-		dma_sync_sg_for_device(drm->dev, bo->sgt->sgl, bo->sgt->nents,
-				       DMA_TO_DEVICE);
+		dma_sync_sg_for_device(drm->dev, bo->sgt->sgl,
+				       bo->sgt->orig_nents, DMA_TO_DEVICE);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/tegra/plane.c b/drivers/gpu/drm/tegra/plane.c
index 9ccfb56..3982bf8 100644
--- a/drivers/gpu/drm/tegra/plane.c
+++ b/drivers/gpu/drm/tegra/plane.c
@@ -130,9 +130,10 @@ static int tegra_dc_pin(struct tegra_dc *dc, struct tegra_plane_state *state)
 		}
 
 		if (sgt) {
-			err = dma_map_sg(dc->dev, sgt->sgl, sgt->nents,
-					 DMA_TO_DEVICE);
-			if (err == 0) {
+			sgt->nents = dma_map_sg(dc->dev, sgt->sgl,
+						sgt->orig_nents,
+						DMA_TO_DEVICE);
+			if (sgt->nents == 0) {
 				err = -ENOMEM;
 				goto unpin;
 			}
@@ -143,7 +144,7 @@ static int tegra_dc_pin(struct tegra_dc *dc, struct tegra_plane_state *state)
 			 * map its SG table to a single contiguous chunk of
 			 * I/O virtual memory.
 			 */
-			if (err > 1) {
+			if (sgt->nents > 1) {
 				err = -EINVAL;
 				goto unpin;
 			}
@@ -165,7 +166,7 @@ static int tegra_dc_pin(struct tegra_dc *dc, struct tegra_plane_state *state)
 		struct sg_table *sgt = state->sgt[i];
 
 		if (sgt)
-			dma_unmap_sg(dc->dev, sgt->sgl, sgt->nents,
+			dma_unmap_sg(dc->dev, sgt->sgl, sgt->orig_nents,
 				     DMA_TO_DEVICE);
 
 		host1x_bo_unpin(dc->dev, &bo->base, sgt);
@@ -185,7 +186,7 @@ static void tegra_dc_unpin(struct tegra_dc *dc, struct tegra_plane_state *state)
 		struct sg_table *sgt = state->sgt[i];
 
 		if (sgt)
-			dma_unmap_sg(dc->dev, sgt->sgl, sgt->nents,
+			dma_unmap_sg(dc->dev, sgt->sgl, sgt->orig_nents,
 				     DMA_TO_DEVICE);
 
 		host1x_bo_unpin(dc->dev, &bo->base, sgt);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
