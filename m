Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 876981C5140
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RC9wRqi/pemZ85RWXGwfP6GDva9N7yDRWYZ9b6JiMaE=; b=ZJVSRNJEL3CAP1eRAx6I47CBn4
	JCH252K0PZbbCsWlOYqwEIZ0fK3QCs4jp4WpLYIgpJKTHYQb4WIjA3aal7UwYPTMvDkmboOotpnH1
	0k1QQqNRSoiRKLbSpVY3LDQDUrDLMfOarfWxH9ifSyHb79Zv/TKkViNOOuDybe2dhfFOTpf7Ec9SS
	9lABhnchK3JZB7esSP6qCfrtfzPZuMxuw1mDpriXM+kpS4jPHblLhRJKUaXlLNtNLfk9VpXE4ugW3
	cbH2gwlMyeCp3LYeQZQoiZrBm5tyj4K/gxX4hwpvrn6cdrkZIaaR5DmSYAE/oTqxxMOAyeamQ+IrL
	UfIcYK7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtHi-0006Nh-3B; Tue, 05 May 2020 08:50:38 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDm-0000WU-76
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084632euoutp015385e91b50366906bf0cd78113d6d59c~MFXxxu6GP0374903749euoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084632euoutp015385e91b50366906bf0cd78113d6d59c~MFXxxu6GP0374903749euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668392;
 bh=Kml8TBseFNr+qrCjarKRP1Eef0kkqBPxh56EfL26mGQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XGyLZsyVh8wBGkJOC50XrNiIp4qYEYl8ijpbWni4n/uwTYSbwWxHjyGpmdlo8f78V
 5lhmsixeAYJvMKhigUHQ98NAkv7kk2uxs63R6panSAemJBuZ00wYgLp8jJzqjv6OQp
 E45uMDNFdzuPW0L5iCjhSn1OzhzJWZX0zDoqNtno=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084632eucas1p2d45e2c46abed0e4d841221f23e54430a~MFXxgVDd71349613496eucas1p2t;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9E.32.60679.8E721BE5; Tue,  5
 May 2020 09:46:32 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2~MFXxGm1jv1349613496eucas1p2s;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084632eusmtrp161c3ad3c98b21e209a3f22510eaaa5f0~MFXxF0_BD0942309423eusmtrp1d;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-44-5eb127e876ca
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1B.21.07950.7E721BE5; Tue,  5
 May 2020 09:46:31 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084631eusmtip1f8d52dc1beb59c58a573a19e21f1a522~MFXwhMSaa0522005220eusmtip1z;
 Tue,  5 May 2020 08:46:31 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 14/25] drm: virtio: fix common struct sg_table related
 issues
Date: Tue,  5 May 2020 10:46:03 +0200
Message-Id: <20200505084614.30424-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOKsWRmVeSWpSXmKPExsWy7djPc7ov1DfGGbx6JmXRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8ezWSWaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 8rPz2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObx/t9V9k8
 +rasYvT4vEkugDuKyyYlNSezLLVI3y6BK+Ptxg2MBd+kK5a0nGBpYJwk3sXIySEhYCLxc04b
 YxcjF4eQwApGiT+/5zNDOF8YJc6efgqV+cwoceL3XTaYlqtrJkElljNKzPr2kRWupWvdOVaQ
 KjYBQ4mut11gHSICrUDtvTwgRcwCL5gk2v5uBmrn4BAWCJLYuYkJpIZFQFXi1fJ2dhCbV8BO
 ouXPP6ht8hKrNxxgBrE5geKPL91hA5kjIXCMXWLPy22MEEUuEqff3WGGsIUlXh3fwg5hy0ic
 ntzDAtHQzCjx8Nxadginh1HictMMqG5riTvnfrGBXMQsoCmxfpc+RNhRouN7KxNIWEKAT+LG
 W0GQMDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwCeocD4k9m6ezQwLoKKPE3689rBMY5Wch
 LFvAyLiKUTy1tDg3PbXYKC+1XK84Mbe4NC9dLzk/dxMjMDmd/nf8yw7GXX+SDjEKcDAq8fBG
 fF4fJ8SaWFZcmXuIUYKDWUmEd9mPDXFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeY0XvYwVEkhP
 LEnNTk0tSC2CyTJxcEo1MIZOqOvuidnHe1/zZUPF409PXqzzdZIvf+PGMUeRoct9z5zb1zbU
 nGM4q5UiaGiXYX/n9IaSWa/VzJYUHpC1bnZsvPn6xzd7209vT5UlvXon2d3xK7pc01VCKml9
 2gezHYeMpyZ5H1Auak9IXri1bqVTnttlj0cqPa9MFl782x0++XfbujVla5VYijMSDbWYi4oT
 ARvVeRdKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7rP1TfGGfR9srLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2eHbrJLPFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNVi
 +dl5bA68HmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HN4/2+q2we
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/F24wbGgm/SFUtaTrA0ME4S72Lk5JAQMJG4umYSYxcjF4eQwFJGiV0PvjJBJGQk
 Tk5rYIWwhSX+XOtiA7GFBD4xSpz6qA9iswkYSnS9BYlzcYgIdDJKTOv+yA7iMAt8YJL49/cf
 WIewQIDE84V3mEFsFgFViVfL29lBbF4BO4mWPxA1EgLyEqs3HACr4QSKP750B2pbocSH899Z
 JzDyLWBkWMUoklpanJueW2ykV5yYW1yal66XnJ+7iREYK9uO/dyyg7HrXfAhRgEORiUe3g1f
 18cJsSaWFVfmHmKU4GBWEuFd9mNDnBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJLiSbnA+M4ryTe
 0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QD4+77kuoWQo/cLtYr7BAu
 Wunyui2C79iV/QZbexZZSkQJWodH/z/6SUt8cqDlzM9eSQL2iTr21qv2xNTt59pVEPv0VESl
 Sc/cygzvU4/trX/OZvsqMTP530Qf1SADNYFbYssXZbYnPAj7dT7VrdX8UM079UOZT9/Mmsiy
 95rTRdtrwvPC/x6RVGIpzkg01GIuKk4EAB9rENmrAgAA
X-CMS-MailID: 20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2
X-Msg-Generator: CA
X-RootMTR: 20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014634_421954_07B87937 
X-CRM114-Status: GOOD (  13.86  )
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

The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
numer of the created entries in the DMA address space. However the
subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
called with the original number of the entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. A common mistake was to ignore a result
of the dma_map_sg function and don't use the sg_table->orig_nents at all.

To avoid such issues, lets use common dma-mapping wrappers operating
directly on the struct sg_table objects and adjust references to the
nents and orig_nents respectively.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v3 00/25] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/5/187
---
 drivers/gpu/drm/virtio/virtgpu_object.c | 17 ++++++++---------
 drivers/gpu/drm/virtio/virtgpu_vq.c     | 10 ++++------
 2 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_object.c b/drivers/gpu/drm/virtio/virtgpu_object.c
index 6ccbd01..5fe153c 100644
--- a/drivers/gpu/drm/virtio/virtgpu_object.c
+++ b/drivers/gpu/drm/virtio/virtgpu_object.c
@@ -72,9 +72,8 @@ void virtio_gpu_cleanup_object(struct virtio_gpu_object *bo)
 
 		if (shmem->pages) {
 			if (shmem->mapped) {
-				dma_unmap_sg(vgdev->vdev->dev.parent,
-					     shmem->pages->sgl, shmem->mapped,
-					     DMA_TO_DEVICE);
+				dma_unmap_sgtable(vgdev->vdev->dev.parent,
+					     shmem->pages, DMA_TO_DEVICE);
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
+				      shmem->pages, DMA_TO_DEVICE);
+		if (ret)
+			return ret;
+		*nents = shmem->mapped = shmem->pages->nents;
 	} else {
-		*nents = shmem->pages->nents;
+		*nents = shmem->pages->orig_nents;
 	}
 
 	*ents = kmalloc_array(*nents, sizeof(struct virtio_gpu_mem_entry),
diff --git a/drivers/gpu/drm/virtio/virtgpu_vq.c b/drivers/gpu/drm/virtio/virtgpu_vq.c
index 9e663a5..c329147 100644
--- a/drivers/gpu/drm/virtio/virtgpu_vq.c
+++ b/drivers/gpu/drm/virtio/virtgpu_vq.c
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
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
