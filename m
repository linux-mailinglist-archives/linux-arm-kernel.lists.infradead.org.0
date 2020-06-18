Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE86B1FF7FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OFDxexKIa91Sbh8WlTl5yChjym/MubiOMCdwtbGj0t8=; b=c3Me8/ARwzqJKalSYcD6e1Ls75
	nt+f8g2sPZ/jrca6hIrNLhzeiG/fe20UtJHRKTlQiS3ZXWj5+uyhzIBYeK5fSsN/IwTtyzkQS79qW
	U5VT++dy2zDTKW5L2UPjG/BJ3yk/xSq+kt+pQIFiPDVVcZ0yfqbm/L8ZV79aIOppvs3Ob8WFrTTfO
	NSSGiCBr8P8o03ulJjCl0HPCq+XWQy+SU0v6NH9uJm3TFOQkRT8Th7vzf2d2Wb7T3cdt8dWC0MdKZ
	sCWW186bd7eZEaBmKH34Et4DiiOH4C14c50tWTiFhTPwroSF3LxF6fXXg4roQl0d/sPbZArblssoq
	Y/g2IH+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwo9-000664-6d; Thu, 18 Jun 2020 15:50:29 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweb-0004LR-JS
 for linux-arm-kernel@bombadil.infradead.org; Thu, 18 Jun 2020 15:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=uyLNNIvv2MacHWbC1kIyq87V6/1Lwqz4qF9sgZlX0go=; b=x/HIAkH+ZXvLQv5/4GUWTBAje5
 I1fuA0V4NQGHB+fPGvm5MO8xKD72SRVqHWTodEpqkoZlqQ7UiU/QjJeWQWDsVu7vO0uc/29GkswgK
 vYnLR/NZ0NoGjFN98xUr1qD+LvdHnxD8nc7xIocnjdHcDg3HkFP+gFawOZdB38m2YyzDkhgPFII33
 r9jAwc8nrQSPMAyoseuELx9DGcAZFIAJe2RXDJbir6iaKtO2CIG0alTGCU+qXOTzDZFZ1Y98jxpL2
 yEFnwJjftt+MRtG8xYfusZ6B605Vs8qnSf2ulrQaNrPGH92etHrEmhdKItvNFfIeHJdLmGZRkfs8a
 1YrZqO0A==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweX-0007qe-H1
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154030euoutp013b81f2cb51138b707bef0d22b1410f2a~ZrZxTC8KD1844218442euoutp01D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154030euoutp013b81f2cb51138b707bef0d22b1410f2a~ZrZxTC8KD1844218442euoutp01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494830;
 bh=uyLNNIvv2MacHWbC1kIyq87V6/1Lwqz4qF9sgZlX0go=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MbUSiVuaY+b6DEnudKkL37uaf5cbFec1tCDdi9zMniq/D1aYAIBi//w1G6hwrvRX0
 mAu0XleHPRNelbitAtiGxKvLCAYTDE4yIf8R1Gn2dQeJOlgrI9/vGz1dtfxXd997mG
 mkmQV3a3V6nz7ua3TC7++Kj5Gte5vw2/o9+PuC/c=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154029eucas1p1df4d85ef3db4ff468eae1dcfbcf846bf~ZrZxEwJZF1949419494eucas1p1I;
 Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 39.60.60698.DEA8BEE5; Thu, 18
 Jun 2020 16:40:29 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154029eucas1p17fb1ca5aa5a7e12fbffd1ddb15632340~ZrZweWApC1248212482eucas1p1x;
 Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154029eusmtrp2e6658a4cf23e96db2e3704d427dc9f33~ZrZwdufXz0399203992eusmtrp2g;
 Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-3b-5eeb8aed183a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 01.FE.08375.DEA8BEE5; Thu, 18
 Jun 2020 16:40:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154028eusmtip19e3da39e73d31cc3970245060db901af~ZrZvzQ29e0833608336eusmtip1S;
 Thu, 18 Jun 2020 15:40:28 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 22/36] drm: virtio: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:43 +0200
Message-Id: <20200618153956.29558-23-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeUhTcRzn997e2/NYvablD4uMhV2gJqt45pFGyaO/IiIkarryoZKbsnlk
 CIoXOrVSiVTKo5SZd1M20zLvKeZBXtOMspV4LTMPUDzafGr/fb6fg8+XL18C5WswWyJIGsbI
 pOJgAW7OUXes9jkYFLOis+qU81R6bxdCvc2uwqgtdQZKDS7P49SbsnaEKvjoSk2OdaHU0uAE
 Qqn0wxg1UP8CpyravnKp5j8/MUrZk4d78ujyvHJAf1gp4NCale8Y/S1Vi9A1RTH0l009Smfp
 lIBuGI3F6fnGIZx+XFsK6EXV0esWt83d/JngoAhG5uThZx6oy0rCQydPPqws0nNjQf8xBTAj
 IHkO/s1QYQpgTvDJEgBb+8a57LAEYMNGJ2CHRQDjWtPQ3UhOctyOoARQGRuP7EUyC8s5JhdO
 OkOFQYGbsDWZCGBnuqXJhJJTCEzaqAEmwYq8Aeea6rcxh7SH1cMjiAnzSA+YMj3CZevsYFl1
 03a1mZHv1iZiLN/BhTklIhZfgQvvh3EWW8EZbe1O9gjcepe/vR0k4wGc6K3gskMagANx2YB1
 ucLx3jVjmjCudxpW1TuxtBf8narDTDQk90Gd4YCJRo0wU/0cZWkeTE7is+4TMFdbuVfb3P95
 51o0LBo17Bw4A0B94Rr3KbDL/V9WAEApsGHC5ZIARi6UMpGOcrFEHi4NcLwfIlEB4zt1b2qX
 60Dj+r0WQBJAYMmbujkr4mPiCHmUpAVAAhVY8y73dIv4PH9x1CNGFuIrCw9m5C3gMMER2PCE
 r6bv8skAcRjzgGFCGdmuihBmtrHAxdtbrNToa7g+ditNngPlx21yferTHWpu5f+aKSq29x58
 fbXuULTPMy+z5kuubcUdVRdEnwzkD4v+yDtTC0L+/lG8wvei29Am70miX/fSque6/Vj7XFeC
 LvulS6ZlTvq6sCPaPdJu4NoyonEPTGixWPYQSvB+jI5xO3WQmlBtCjjyQLHzGVQmF/8DpcnI
 qUoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7pvu17HGXw7z2PRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8ezWSWaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 8rPz2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObx/t9V9k8
 +rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+PG5Da2gmfqFeuWPGZvYLyg0MXIySEhYCIxs6OJsYuRi0NIYCmjxIcHW5kgEjIS
 J6c1sELYwhJ/rnWxQRR9YpSY3LQZrIhNwFCi6y1EQkSgk1FiWvdHdhCHWeADk8S/v/+AMhwc
 wgIBEs8aq0EaWARUJTZcuw7WzCtgJ9H58jo7xAZ5idUbDjCD2JxA8dPHW8E2CwnYSjz/0MY2
 gZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMBY2Xbs5+YdjJc2Bh9iFOBgVOLhfRHy
 Ok6INbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxhNgY6ayCwlmpwPjOO8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MdrPuWE0+suTozJAFU3RD
 /upuFf//OYYn9tLugPTWhQv5gkqZX3zP3ST1vKRkjvxN+W2rX8e6f/zHNnGa0oR3xREOP1b6
 192vu83GMTdk8467pyV/Vn1nbxJ4HlPI/PFjQOGH9bHdEnUHMnJFbY5ONG1bnzrpmZnIlxsl
 t1keTRPSvNKZdefUZCWW4oxEQy3mouJEAJn1cl2rAgAA
X-CMS-MailID: 20200618154029eucas1p17fb1ca5aa5a7e12fbffd1ddb15632340
X-Msg-Generator: CA
X-RootMTR: 20200618154029eucas1p17fb1ca5aa5a7e12fbffd1ddb15632340
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154029eucas1p17fb1ca5aa5a7e12fbffd1ddb15632340
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154029eucas1p17fb1ca5aa5a7e12fbffd1ddb15632340@eucas1p1.samsung.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, virtualization@lists.linux-foundation.org,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
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
Acked-by: Gerd Hoffmann <kraxel@redhat.com>
---
 drivers/gpu/drm/virtio/virtgpu_object.c | 36 ++++++++++++++-----------
 drivers/gpu/drm/virtio/virtgpu_vq.c     | 12 ++++-----
 2 files changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_object.c b/drivers/gpu/drm/virtio/virtgpu_object.c
index 346cef5ce251..c3b9e3cf786e 100644
--- a/drivers/gpu/drm/virtio/virtgpu_object.c
+++ b/drivers/gpu/drm/virtio/virtgpu_object.c
@@ -72,9 +72,8 @@ void virtio_gpu_cleanup_object(struct virtio_gpu_object *bo)
 
 		if (shmem->pages) {
 			if (shmem->mapped) {
-				dma_unmap_sg(vgdev->vdev->dev.parent,
-					     shmem->pages->sgl, shmem->mapped,
-					     DMA_TO_DEVICE);
+				dma_unmap_sgtable(vgdev->vdev->dev.parent,
+					     shmem->pages, DMA_TO_DEVICE, 0);
 				shmem->mapped = 0;
 			}
 
@@ -157,13 +156,13 @@ static int virtio_gpu_object_shmem_init(struct virtio_gpu_device *vgdev,
 	}
 
 	if (use_dma_api) {
-		shmem->mapped = dma_map_sg(vgdev->vdev->dev.parent,
-					   shmem->pages->sgl,
-					   shmem->pages->nents,
-					   DMA_TO_DEVICE);
-		*nents = shmem->mapped;
+		ret = dma_map_sgtable(vgdev->vdev->dev.parent,
+				      shmem->pages, DMA_TO_DEVICE, 0);
+		if (ret)
+			return ret;
+		*nents = shmem->mapped = shmem->pages->nents;
 	} else {
-		*nents = shmem->pages->nents;
+		*nents = shmem->pages->orig_nents;
 	}
 
 	*ents = kmalloc_array(*nents, sizeof(struct virtio_gpu_mem_entry),
@@ -173,13 +172,20 @@ static int virtio_gpu_object_shmem_init(struct virtio_gpu_device *vgdev,
 		return -ENOMEM;
 	}
 
-	for_each_sg(shmem->pages->sgl, sg, *nents, si) {
-		(*ents)[si].addr = cpu_to_le64(use_dma_api
-					       ? sg_dma_address(sg)
-					       : sg_phys(sg));
-		(*ents)[si].length = cpu_to_le32(sg->length);
-		(*ents)[si].padding = 0;
+	if (use_dma_api) {
+		for_each_sgtable_dma_sg(shmem->pages, sg, si) {
+			(*ents)[si].addr = cpu_to_le64(sg_dma_address(sg));
+			(*ents)[si].length = cpu_to_le32(sg_dma_len(sg));
+			(*ents)[si].padding = 0;
+		}
+	} else {
+		for_each_sgtable_sg(shmem->pages, sg, si) {
+			(*ents)[si].addr = cpu_to_le64(sg_phys(sg));
+			(*ents)[si].length = cpu_to_le32(sg->length);
+			(*ents)[si].padding = 0;
+		}
 	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/virtio/virtgpu_vq.c b/drivers/gpu/drm/virtio/virtgpu_vq.c
index 9e663a5d9952..e5765db85c20 100644
--- a/drivers/gpu/drm/virtio/virtgpu_vq.c
+++ b/drivers/gpu/drm/virtio/virtgpu_vq.c
@@ -302,7 +302,7 @@ static struct sg_table *vmalloc_to_sgt(char *data, uint32_t size, int *sg_ents)
 		return NULL;
 	}
 
-	for_each_sg(sgt->sgl, sg, *sg_ents, i) {
+	for_each_sgtable_sg(sgt, sg, i) {
 		pg = vmalloc_to_page(data);
 		if (!pg) {
 			sg_free_table(sgt);
@@ -603,9 +603,8 @@ void virtio_gpu_cmd_transfer_to_host_2d(struct virtio_gpu_device *vgdev,
 	struct virtio_gpu_object_shmem *shmem = to_virtio_gpu_shmem(bo);
 
 	if (use_dma_api)
-		dma_sync_sg_for_device(vgdev->vdev->dev.parent,
-				       shmem->pages->sgl, shmem->pages->nents,
-				       DMA_TO_DEVICE);
+		dma_sync_sgtable_for_device(vgdev->vdev->dev.parent,
+					    shmem->pages, DMA_TO_DEVICE);
 
 	cmd_p = virtio_gpu_alloc_cmd(vgdev, &vbuf, sizeof(*cmd_p));
 	memset(cmd_p, 0, sizeof(*cmd_p));
@@ -1019,9 +1018,8 @@ void virtio_gpu_cmd_transfer_to_host_3d(struct virtio_gpu_device *vgdev,
 	struct virtio_gpu_object_shmem *shmem = to_virtio_gpu_shmem(bo);
 
 	if (use_dma_api)
-		dma_sync_sg_for_device(vgdev->vdev->dev.parent,
-				       shmem->pages->sgl, shmem->pages->nents,
-				       DMA_TO_DEVICE);
+		dma_sync_sgtable_for_device(vgdev->vdev->dev.parent,
+					    shmem->pages, DMA_TO_DEVICE);
 
 	cmd_p = virtio_gpu_alloc_cmd(vgdev, &vbuf, sizeof(*cmd_p));
 	memset(cmd_p, 0, sizeof(*cmd_p));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
