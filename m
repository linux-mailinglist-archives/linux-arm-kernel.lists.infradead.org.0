Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D537A1BBF40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bbUAxRI81gaXmooKC8XBXPMJAmHqcEqiym22TAxgJxs=; b=ZuMSiXBureeSEUCsJO4a+Ey73W
	7gE14ZMjNcKGs6Grl5TUcxUWJ4lr7LL2Ydxpc7R8emLHia89S5jVqS185d0e/UGMRnIhIUXDD0pb7
	ZL5WtFTAW/oG4La/qT/6vYpJvqAOoBDYofJdxyYmA1UAvzxMwLJgtY5qav8tlHgddLW0wqkXj7mLS
	jhrvR2i0Ti6wTrYcTU7/3OmU+HHcbFHYGrnlBazrgVHZfiNjfY/DvBOwcVEdTVpVni49j7+K9ywlu
	JjeSBhXZGSxyJuR5TqLxhQpdaZvZPRwKtnqVPvl4fIcFhlwRn49qsViyOYgN4+Z/ti/h/7jk6RwVO
	hjZ0HeMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQEW-00081n-9Z; Tue, 28 Apr 2020 13:25:08 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQA4-0004fQ-Ud
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:20:35 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132031euoutp01fddfd84a94745dd9831dd3a4893b791a~J-l-ZxjGU2044120441euoutp01C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132031euoutp01fddfd84a94745dd9831dd3a4893b791a~J-l-ZxjGU2044120441euoutp01C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588080031;
 bh=HdMRCBcsGaqxq3uk4+2fOzEqZqXX3cc/hFqJvQsZDYM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=H4+RIztJzBvbVJDDO2sqqanGcNNqJbYKuCvhYhcAULIWqNo14bnOh1jjmNyLq0b1a
 zy610ceqCDEJJrYb2rZZkwI0yyNWmYby7xliW2OVuL5hvqk+nM+rGYczU9OJdhBkZW
 ZGi78pOCRRykZvzwIeOVW+jGw8YeeFiFkjf5g3/c=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132030eucas1p224fbdd3caade0988350c87d1ca016518~J-l_y9juD1083610836eucas1p2U;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 8A.26.60698.E9D28AE5; Tue, 28
 Apr 2020 14:20:30 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6~J-l_fHV1H1366113661eucas1p1L;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132030eusmtrp288d07fd1170f0aba8e10710f7aa54e1c~J-l_ZIANV2140221402eusmtrp2T;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-92-5ea82d9e3419
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D3.E3.07950.E9D28AE5; Tue, 28
 Apr 2020 14:20:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132029eusmtip2104442e6c8a9533969366a3fd8245803~J-l9vnYr-1180811808eusmtip2D;
 Tue, 28 Apr 2020 13:20:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [RFC 13/17] drm: virtio: fix sg_table nents vs. orig_nents misuse
Date: Tue, 28 Apr 2020 15:20:01 +0200
Message-Id: <20200428132005.21424-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSxVcRje75x7zzlurk6H5Te15G61pZBpOaZZVquTP6T5w2ZLXTnDfO5e
 H2k2H4m6aGjFboaJyPdXV0i5NyWqO0XyGa5boiztonUT3dNB/z3v8z7P+7x79xIo1Sm0IUIj
 Y1hZpDRcgokEqhe/tA5FDpUBh9WTEjpb24vQ5fUpON1YUC+kUzV9GL2uykXpweXvGP2g+jlC
 381pRuiSp+700uA0QjfNDAnpgfZCjK7tnsBp9aJeSPdNGPDj25maohrAdK6UCJjxoccY07oy
 JWQmM3sQprksiRlbm0GZW8MVgOkYScaYmy1VgDE07fHZ5i86FsSGh8axMiePi6KQtGIdGp1i
 fTn99TyeDKYoBTAjIHkEVuUOChSAICiyEsB7rgogMsElADWrOpQvDADOjSrxTUOn9jPCNypM
 hjo1vmWZStYBToWRzlCxoMA4bEVeA/BltjknQkkVCvUV3f9GWZJecNSYjXDZAnIfTH+byNFi
 0gPqh9YwPs0WVjd0oRw2M/Hluk8YNweSQzisM/xGeNFJuFa2hPLYEs73tGysuhuutxUjvOEq
 gNPaWpwvsgAcSC0AvModjmuNGLcFSh6A9e1OPO0JMzP4w0DSAg4v7OBo1ATzVPkoT4vh9fSN
 M+6Hyp66rVh1/7sNCQONBe4cTZG5AE72+uUAW+X/qBIAqoA1GyuPCGblLpFsvKNcGiGPjQx2
 vBQV0QRMT/VqrWf5EXiyGqgBJAEk5uIG88oASiiNkydEaAAkUImVWBdyP4ASB0kTrrCyqAuy
 2HBWrgG7CIHEWuxSOneeIoOlMWwYy0azss0uQpjZJAO3ubDSNLG/Icm15lSZRUdYceOsp33n
 3hD3s6JWpd85MDb9zc72x1EbKuB26of+LuWzNL30jObEnXqPfq8/ix0TvsLErINvzG58jd/5
 5bQx18HHTZxfY2FXNPIz/ZBv/owSEeJevQ9756ks6/7CvPfe3mMZ3WO1bXjqSOBH1exguUQg
 D5E626MyufQvDzl0TlADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7rzdFfEGdzdzWzRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyWuY/Yi5oFK9oO/OKvYHxgVAXIyeHhICJxN5zz5i6GLk4hASW
 MkpsubSSDSIhI3FyWgMrhC0s8edaFxtE0SdGicnfrrCDJNgEDCW63kIkRAQ6GSWmdX9kB3GY
 BQ4wS3SfP8kEUiUs4CVx61cvkM3BwSKgKtF2sQYkzCtgJ/Hk2j+obfISqzccYAaxOYHiSx89
 ZQMpFxKwlbjckjuBkW8BI8MqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwOjZduznlh2MXe+C
 DzEKcDAq8fBu4FkRJ8SaWFZcmXuIUYKDWUmE91HGsjgh3pTEyqrUovz4otKc1OJDjKZAJ01k
 lhJNzgdGdl5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBkaO6ZlH
 inco9p2OnCP14rLRyXk/lO5P2rlTxcH/RD+3T8r9k+tDl9jI9xaINEX8C6xgOCjKcmYb67k/
 1j88fynEm6XzG3goGto/u/N0Q8yZx57v0r+3c1s8lU6RzH3ucVTA3U6Cd8KG/yLZ6e8f6ale
 8j0143hIR+z5zB27vhyYuvL7/c09EhVKLMUZiYZazEXFiQCShgIJtAIAAA==
X-CMS-MailID: 20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6
X-Msg-Generator: CA
X-RootMTR: 20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062033_236282_222E1601 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
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
 drivers/gpu/drm/virtio/virtgpu_object.c | 11 ++++++-----
 drivers/gpu/drm/virtio/virtgpu_vq.c     |  8 ++++----
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_object.c b/drivers/gpu/drm/virtio/virtgpu_object.c
index 6ccbd01..12f6bee 100644
--- a/drivers/gpu/drm/virtio/virtgpu_object.c
+++ b/drivers/gpu/drm/virtio/virtgpu_object.c
@@ -73,7 +73,8 @@ void virtio_gpu_cleanup_object(struct virtio_gpu_object *bo)
 		if (shmem->pages) {
 			if (shmem->mapped) {
 				dma_unmap_sg(vgdev->vdev->dev.parent,
-					     shmem->pages->sgl, shmem->mapped,
+					     shmem->pages->sgl,
+					     shmem->pages->orig_nents,
 					     DMA_TO_DEVICE);
 				shmem->mapped = 0;
 			}
@@ -157,13 +158,13 @@ static int virtio_gpu_object_shmem_init(struct virtio_gpu_device *vgdev,
 	}
 
 	if (use_dma_api) {
-		shmem->mapped = dma_map_sg(vgdev->vdev->dev.parent,
+		shmem->pages->nents = dma_map_sg(vgdev->vdev->dev.parent,
 					   shmem->pages->sgl,
-					   shmem->pages->nents,
+					   shmem->pages->orig_nents,
 					   DMA_TO_DEVICE);
-		*nents = shmem->mapped;
+		*nents = shmem->mapped = shmem->pages->nents;
 	} else {
-		*nents = shmem->pages->nents;
+		*nents = shmem->pages->orig_nents;
 	}
 
 	*ents = kmalloc_array(*nents, sizeof(struct virtio_gpu_mem_entry),
diff --git a/drivers/gpu/drm/virtio/virtgpu_vq.c b/drivers/gpu/drm/virtio/virtgpu_vq.c
index 9e663a5..661325b 100644
--- a/drivers/gpu/drm/virtio/virtgpu_vq.c
+++ b/drivers/gpu/drm/virtio/virtgpu_vq.c
@@ -604,8 +604,8 @@ void virtio_gpu_cmd_transfer_to_host_2d(struct virtio_gpu_device *vgdev,
 
 	if (use_dma_api)
 		dma_sync_sg_for_device(vgdev->vdev->dev.parent,
-				       shmem->pages->sgl, shmem->pages->nents,
-				       DMA_TO_DEVICE);
+				       shmem->pages->sgl,
+				       shmem->pages->orig_nents, DMA_TO_DEVICE);
 
 	cmd_p = virtio_gpu_alloc_cmd(vgdev, &vbuf, sizeof(*cmd_p));
 	memset(cmd_p, 0, sizeof(*cmd_p));
@@ -1020,8 +1020,8 @@ void virtio_gpu_cmd_transfer_to_host_3d(struct virtio_gpu_device *vgdev,
 
 	if (use_dma_api)
 		dma_sync_sg_for_device(vgdev->vdev->dev.parent,
-				       shmem->pages->sgl, shmem->pages->nents,
-				       DMA_TO_DEVICE);
+				       shmem->pages->sgl,
+				       shmem->pages->orig_nents, DMA_TO_DEVICE);
 
 	cmd_p = virtio_gpu_alloc_cmd(vgdev, &vbuf, sizeof(*cmd_p));
 	memset(cmd_p, 0, sizeof(*cmd_p));
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
