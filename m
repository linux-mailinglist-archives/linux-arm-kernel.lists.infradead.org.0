Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4091C3A9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7/jVAb2kMU4Mmmdijv0/bLgr6Ge9R/qYvoAz5Ul4wic=; b=SGhP0iRabIDNtg0yZ+SPiZx0qp
	ce6nubV5k3iqU1gRkVGHYgE9ZP9AbjIrguhAjJb4sBnuyvNn7ghvSezigvimutzGn/nsltC7jphrN
	OtVj/hpbFZBiiIPVEv0vFzrp8SBoaZlTrNS0cv4n/BJDOyHz98Jt1l6AaZhbrVJkZPmKKxNrDsNmX
	I9+q5fqUv19Hvdz4gWS4V0OyTjmwulY9Wh86jXTmQlbTPmf+OcZGIxNR4qjKqIWsUE3l1Ye8sl4na
	O8YVeqvhKlU1dvma4nzd4c7ZrUTTS50SY0esMFQ6mSCCtA0ltQ+yUQBcJ0FzRQl7fjB5M8znmzXeq
	hZFVG2qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVafo-0000Ci-JP; Mon, 04 May 2020 12:58:16 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVac1-0002dS-2H
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:23 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125419euoutp02e432301f98c358341ceff3d72ff47f8b~L1G1SbjFz1778917789euoutp02e
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125419euoutp02e432301f98c358341ceff3d72ff47f8b~L1G1SbjFz1778917789euoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596859;
 bh=EVazr+cXLNtZz54aJWiekXBsP8o9spxnq0Q4oG69wq4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ecd4bNb8EjmNpv0P3N36eH+6DjXF+KHpVWMzRqCfua3pyNZgRjv2xusws536qidMQ
 1MtXaySAb22/7+pPGUbBvKGkkal0MSjkuoofZa2khwSyFiqFD6uLVkcwcDYATCeLB1
 UkKUaeUGsBGUoi/pn9jEbSlbt0uIxla/hDD3zJho=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125419eucas1p13f96494d03af14a472a7468fc3e170cf~L1G075V3x1058810588eucas1p1i;
 Mon,  4 May 2020 12:54:19 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CE.D2.60679.B7010BE5; Mon,  4
 May 2020 13:54:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96~L1G0om3GJ1174211742eucas1p1c;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125418eusmtrp21cec5b9ca8d0de30aeeacfc622a49999~L1G0n1nws2826928269eusmtrp2U;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-ab-5eb0107bf1dc
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6A.69.08375.A7010BE5; Mon,  4
 May 2020 13:54:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125418eusmtip225eeda603c17f6f2568f2a347c8f0b38~L1Gz-sE3x0241302413eusmtip2Y;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 13/21] drm: virtio: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:51 +0200
Message-Id: <20200504125359.5678-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSezBUUQDG59x79+61WV3LjDM0qW3SE6nM3BmPamjm1h+V/rFD1JbrMezS
 LvKYhgplo9LLq8GUQR5LXnlMRFibbPKIUoMoZUIzWEOiXZf67zu/7/vON3PmEKigimNOBEhD
 GZlUHCTEeVh124LGOpos8943MsijkjVqhHqWVsqhVqpTUKp3bhqnnha1IlROowP17aMapWZ7
 RxCqfPQ9h+qpe4RTJS2fuVTTrzEOld+ZhR/m08VZxYB+oc3B6OfaYQ49dFOF0BW5MfTg8ihK
 3xvIB3T9h1icnm7ow+lblYWAninffGqDB8/RhwkKCGdkts7neP593cNYyAMYoZpPA7FgyEQB
 DAhIHoQPO4sRBeARArIAwNmJK0BvCMhZAJXtl1ljBsDWiQ7OemP8TQpgjXwAp3LLOOxB18jr
 T1pN4aQdVEwqcL02JeMBbE821IdQ8jsCE/5UrG6YkG4wMbUe02uM3A4rqm+vcj7pBGszBjB2
 zhIWlb1EFYAgDHQ8PXmH/h5IvubCwfYiwGZcYfxgGs5qEzihquSyehNcqc1G2MI1AEc0JVz2
 kARgz9W0tbYD/KRZxPULKLkLltbZsvgIvJ83h+kxJI3gwKSxHqM6ebc6FWUxH95IELBpK5ih
 Uv6bberqXovQcDLOnn2fVwAWaH8jd4Blxv+tHAAKgRkTJpf4MfL9UuaSjVwskYdJ/WwuBEvK
 ge4zdSyrZmtA3dL5ZkASQGjIF82Uegs44nB5pKQZQAIVmvJr4nSI7yOOjGJkwWdlYUGMvBlY
 EJjQjH/g8Q8vAeknDmUCGSaEka27CGFgHgu2nmgjxMePbVF6Oj8xcteOS0ezbHydAuNb3Pum
 Fr+mZqbE1HvtrS2JmPGwCDiZmGls9e6nlfDiSkOEo8hlz5lGEddKVLX01jA/aGffRt9Qt0Uf
 pb1rp3N/Vvr8mPWCRuIxue26unTULVx9Wnm0QhuFbzxU1eWizl7BMkU541+iPYWY3F9stxuV
 ycV/AbKNHBlIAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xe7pVAhviDOYuNbboPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2eHbrJLPFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNVi
 +dl5bA68HmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HN4/2+q2we
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl3H10gOWgqkSFce/z2BsYLwv3MXIySEhYCLx/MxExi5GLg4hgaWMEt0HmxghEjIS
 J6c1sELYwhJ/rnWxQRR9YpS4+GkdWIJNwFCi6y1EQkSgk1FiWvdHdhCHWeADk8S/v//YQKqE
 BfwlZq/cCDaWRUBVYvO2fjCbV8BWYuesGywQK+QlVm84wNzFyMHBCRSf2asOEhYSyJe4+/Qf
 ywRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECY2XbsZ+bdzBe2hh8iFGAg1GJhzfi
 8/o4IdbEsuLK3EOMEhzMSiK8O1qAQrwpiZVVqUX58UWlOanFhxhNgW6ayCwlmpwPjOO8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MIekHj505vuwz6x4F8QOb
 dM8erzvxK5azf57GuabPUhVpmxVuZ7p6TV2TwWS4746f8Y4Cl1X3Vvz90vzQWv+BhNS7Cd9/
 GL/7cvJtR6Xormu7Xhm/spLOPMOXwsC0ewrbM6/UlXn5vwNV/ij8/3JqtvO3p7+Wfd9xL+Xi
 GsMNOro5DqmvbMRfcSmxFGckGmoxFxUnAgAuUHJ8qwIAAA==
X-CMS-MailID: 20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96
X-Msg-Generator: CA
X-RootMTR: 20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055421_242617_69DDCB75 
X-CRM114-Status: GOOD (  14.40  )
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
called with the original number of entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. Adapt the code to obey those rules.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v2 00/21] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/4/373
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
