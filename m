Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1DE1C3A4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AbVfCSfH10oO8GeFRko/FPtpf0usm9sgS/vh7w83g7k=; b=bhsplg1sD+fF896i1iw26dJ0QR
	QB1KfhCoFOka5hw3bXbGNdb+Vx5lHWvuu0bQJzJuhey7C0rguP0t6HkzKiR3l0SPM2Ylf2NkROuID
	HiyxRsJe7nopqcmAwAjIyX64v7tj5abARLiWZvUxvSgWO+f7Fp7P9BExwyJTQt82kSQ3tkjagYldh
	gFn6iYPIyZpiirfcYF8JrzzOakThtLGbNYGyz96qG5g9+e5zWsd4QEmYrlCvp23dBZ7Eih9H+0p1i
	9450O9LkZZrDdCfoVII66fcgQ6mto1x83pyElNZE+vp5OXBpA7uSgu7jU6EsSjmItveFJ9iEAXF86
	GXWgvndw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVadG-0005zb-M2; Mon, 04 May 2020 12:55:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVabu-0002W0-DY
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:16 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125413euoutp023e0551caf7b938e6df35c4877692b5bc~L1GvQVJcS1779417794euoutp02I
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125413euoutp023e0551caf7b938e6df35c4877692b5bc~L1GvQVJcS1779417794euoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596853;
 bh=3AsDN+Ip+DfttKjzscLc7jI+YsnIB2JKbA1xgPMfI2w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Otjz/aruMzbJosj+k+Bs7pVQbG7s+jioZpb+8mHQjI1vq6ZOBkoLpie3dsszj3qNL
 VRELBHAD+35iW0dTJVQgVT8S05to5AEzVxCGSFbbRQe5wR1cPF+aPfFIjj+HdI1U+P
 KImVFQ/6ZsleD5AH9R0qqh1S8wPGUupFb2vnsRGA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125412eucas1p14c9a533433ce915e288a960b880d3fd7~L1GuxxnZU0159401594eucas1p1x;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 53.12.60698.47010BE5; Mon,  4
 May 2020 13:54:12 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0~L1GuaZfff2246922469eucas1p2c;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125412eusmtrp1b440a81df43aafbd62abc5eb12095fc8~L1GuZc1Ua2497724977eusmtrp1U;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-44-5eb010743d0d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B3.06.07950.47010BE5; Mon,  4
 May 2020 13:54:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125411eusmtip2951048608315bac83b0939c8772239f8~L1Gtnq0EO0350103501eusmtip20;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/21] drm: etnaviv: fix sg_table nents vs. orig_nents
 misuse
Date: Mon,  4 May 2020 14:53:42 +0200
Message-Id: <20200504125359.5678-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUgUURzvzezsjuLmtAo+PBIXOsU7ZEjTRD9MhNGBIIHmlpOK947rFZRr
 Xq26mhYepZhEmkfrlZmWx5raolieaGlqlqUgJR5lm5bTqH37ne8Hfx6OiroxYzwoLIqWhklC
 xHxdXmP3+hurKKLG17Z13YLM7NcgZG2+CiNzXowj5J/G2yg5vPqNTzbnTwjIx5VdCFnS5kRO
 F22ZK8MzCPkzrxgh62ZHMXKo+T6frH41KSA7vn/CTupTVcVVgBoaHUCpl2slPOp54aSAerY2
 jVFT6T0IVf/wBvV+cxalcsfKANUynsCnsjZsKWVDBaCW6/afFV7UdfanQ4KiaamNi59u4K3c
 4IgHhrFTIxosAaTvUwAdHBLHYLe8CFEAXVxElAM4vyQHHFkB8HNbO48jywCObI4hO5XyibsY
 i0VEGYCpcmy30Zc2y2MNPmEHFYsKPosNiWQAX2fqsSGUUKOwtqUcsIYBcR6WpdwRKACO84gD
 UKGyZ2Uh4Qy/KDWAGzOHlTXtKBvRIU7AgsxD7DOQ+CiAj7KX+VzGAw7UtmznDeBCT4OAw6aw
 NzeDxxVuAjjTXy3gSAaAQ4n52w0nONH/i88uoMQRqGq24WQ3+LS/FbAyJPbCscV/90K3YE5j
 HsrJQpiWIuLSB2Fhz5Pd2Y63g9sRCo4pvbjzdAKoTd0QZAPzwv9bJQBUACNaxoQG0IxDGB1j
 zUhCGVlYgPWV8NA6sPW7ejd7VptA6+/LakDgQKwn9F5W+YowSTQTF6oGEEfFhsKmpC1J6C+J
 i6el4ZekshCaUQMTnCc2EjqUzvuIiABJFB1M0xG0dMdFcB3jBHAKqAKNnFxWve3PmVpSenMX
 OgcSPwRV99VrGc/YMx2N0PWwzKQ5wvF0gTLZc0K7Z3WxXi4ueNeNyGYRH/X6nLV+qUSL6t2L
 cb9qZvn1mrzUUf96qcZNW+Y6GD8Z7mEWuWTi5a8J6kpJyVLaukda2VpE+1f4JR1f+JE8qqMp
 XBPzmECJ3VFUykj+AmX0RJ5ZAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t/xe7olAhviDLZ2sVn0njvJZLFxxnpW
 i0l7bjJZ/N82kdniytf3bBa7Ztxht1i5+iiTxYL91hYP5gIlv1x5yGTxY/o8JotNj6+xWlze
 NYfNYu2Ru+wWBz88YXXg91gzbw2jx+VrF5k99n5bwOKxc9Zddo/t3x6wetzvPs7ksXlJvcft
 f4+ZPSbfWM7osftmA5tH/18Dj74tqxg9Pm+SC+CN0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAz
 MrHUMzQ2j7UyMlXSt7NJSc3JLEst0rdL0MvonJxdsFCk4v7Vk6wNjN2CXYycHBICJhIr7kxl
 7WLk4hASWMooceD5RHaIhIzEyWkNrBC2sMSfa11sEEWfGCX2/G5kAkmwCRhKdL2FSIgIdDJK
 TOv+yA7iMAucYpbYsHs+WJWwQIDE0XMHmbsYOThYBFQlutYbgYR5BWwknvedZITYIC+xesMB
 sBJOAVuJmb3qIGEhgXyJu0//sUxg5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMJq2
 Hfu5ZQdj17vgQ4wCHIxKPLwbvq6PE2JNLCuuzD3EKMHBrCTCu6MFKMSbklhZlVqUH19UmpNa
 fIjRFOikicxSosn5wEjPK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TB
 KdXAyKd+Oj3TMXn5vKiXRxL/39b56VbempD5eh3P7f7AtKTvd77d1H85Z5rYprWr7n9+dUTZ
 Zeey8G3v9uVuvhSqdePzxjVVjAYG57cKz7fk0NzK17bK8ryRygmf8DULFqb9P3i+qrHus8Hc
 Z1W71vyS409oa+9btXHq/S2N8YtdXE1/7ZSa8yHaaZUSS3FGoqEWc1FxIgBZbF/WvAIAAA==
X-CMS-MailID: 20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0
X-Msg-Generator: CA
X-RootMTR: 20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055414_592253_341582A3 
X-CRM114-Status: GOOD (  14.05  )
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
 David Airlie <airlied@linux.ie>, etnaviv@lists.freedesktop.org,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Russell King <linux+etnaviv@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>, Robin Murphy <robin.murphy@arm.com>,
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
 drivers/gpu/drm/etnaviv/etnaviv_gem.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.c b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
index dc9ef30..a224a97 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
@@ -27,7 +27,8 @@ static void etnaviv_gem_scatter_map(struct etnaviv_gem_object *etnaviv_obj)
 	 * because display controller, GPU, etc. are not coherent.
 	 */
 	if (etnaviv_obj->flags & ETNA_BO_CACHE_MASK)
-		dma_map_sg(dev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL);
+		sgt->nents = dma_map_sg(dev->dev, sgt->sgl, sgt->orig_nents,
+					DMA_BIDIRECTIONAL);
 }
 
 static void etnaviv_gem_scatterlist_unmap(struct etnaviv_gem_object *etnaviv_obj)
@@ -51,7 +52,8 @@ static void etnaviv_gem_scatterlist_unmap(struct etnaviv_gem_object *etnaviv_obj
 	 * discard those writes.
 	 */
 	if (etnaviv_obj->flags & ETNA_BO_CACHE_MASK)
-		dma_unmap_sg(dev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL);
+		dma_unmap_sg(dev->dev, sgt->sgl, sgt->orig_nents,
+			     DMA_BIDIRECTIONAL);
 }
 
 /* called with etnaviv_obj->lock held */
@@ -405,7 +407,7 @@ int etnaviv_gem_cpu_prep(struct drm_gem_object *obj, u32 op,
 
 	if (etnaviv_obj->flags & ETNA_BO_CACHED) {
 		dma_sync_sg_for_cpu(dev->dev, etnaviv_obj->sgt->sgl,
-				    etnaviv_obj->sgt->nents,
+				    etnaviv_obj->sgt->orig_nents,
 				    etnaviv_op_to_dma_dir(op));
 		etnaviv_obj->last_cpu_prep_op = op;
 	}
@@ -422,7 +424,7 @@ int etnaviv_gem_cpu_fini(struct drm_gem_object *obj)
 		/* fini without a prep is almost certainly a userspace error */
 		WARN_ON(etnaviv_obj->last_cpu_prep_op == 0);
 		dma_sync_sg_for_device(dev->dev, etnaviv_obj->sgt->sgl,
-			etnaviv_obj->sgt->nents,
+			etnaviv_obj->sgt->orig_nents,
 			etnaviv_op_to_dma_dir(etnaviv_obj->last_cpu_prep_op));
 		etnaviv_obj->last_cpu_prep_op = 0;
 	}
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
