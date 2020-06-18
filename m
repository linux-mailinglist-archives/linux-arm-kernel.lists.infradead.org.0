Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E846E1FF798
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c+aFp4LdQJP7dEn0eTw8V7yQFFKd9RnHPjFd9hWEYNk=; b=Pevr/1hVotJqElRanrUQx9AYMw
	9YP96K6VQ9re+5VGLGEHOvndQk9wkGSjmF7xwDV3b3vh0MpXgAmgILQlaspi52SOt1Zv9edicShpd
	fWk8XUe3fvmNaGb7tZviuFvcpa4ZuEAtO5vnY4m7CBWX0LdA/orPMNr1PazmZRLA0Wrtz1Ot47uAC
	1pzF0ST3VOSUa5n1ARIXS0wYwqFsxQbAjRpeUHFd9cFHd40K0wn3SisiCZrSZ/lwhvG6PomBl+C6d
	xYEkQL04ZsduhQBBj4i4hqovmE1E/qXD54SbOGu7QPns2wKGiyuF4TFEQXAKKtXaJD9r12izaub6m
	/fCzjauQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwh4-0006DD-UN; Thu, 18 Jun 2020 15:43:10 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweP-0004CD-Ld
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:29 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154021euoutp02ff854b24e8fb03e7559016b91ca23252~ZrZpSiOfR1250012500euoutp02g
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154021euoutp02ff854b24e8fb03e7559016b91ca23252~ZrZpSiOfR1250012500euoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494821;
 bh=3Uytyvwzt4UX7mjIW5nSX3tNMM/3bhp/av3KF6qTx7w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EL2HBQxnN2kdb+a95a3OPv2ohNo5d8J3gdWk2Gl/fF+CyzjJG7IgZlS+0AIbuwTQh
 DMA86r6imcOLEFr+6eNYjII3vZisHBZWIIq6xidOPLZsWMWgynPDk4cEiRCdaLNqk3
 50U5fWYKJW87P75aueU4Dk+7pRzXLBDt/9pZhy7o=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154021eucas1p24f39a100f171d5d25c5ee8d07d8d9418~ZrZo_MlaL2924929249eucas1p2D;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E1.1F.61286.5EA8BEE5; Thu, 18
 Jun 2020 16:40:21 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c~ZrZonBZyE2977729777eucas1p2D;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154020eusmtrp26d0f44624adb3f9ba83ef666d47b06f2~ZrZomaX4t0399203992eusmtrp2W;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-c8-5eeb8ae51fa0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B7.EE.08375.4EA8BEE5; Thu, 18
 Jun 2020 16:40:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154020eusmtip171024e854b53111fcce79a4f25a51737~ZrZn8u3lF0744107441eusmtip1y;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 10/36] drm: lima: fix common struct sg_table related issues
Date: Thu, 18 Jun 2020 17:39:31 +0200
Message-Id: <20200618153956.29558-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+c7Z2Y6XxWmafixJGiSUeE3hhCUmIuefQDIwAi8zTyrpJjtq
 GpSiGDovZJm3TEdI5mWbN2YqTl3pDHHaFDXTvBVhYlpeQgNtp6P23+97n/d5n5eXD0dF7ZgY
 j5cl0wqZNEHCt+bpBndH3b4qVyM8l5qtyELTe4RsKddi5IGuGCUnttf5ZH3jAEKqev3IzepW
 Prk1sYiQrcuTGDneVcUn1e/mBGT/xheM3FBvIwFCqqm6CVA9Oyoe1Vk5J6A6dhYwaj7fiFBt
 tRnUp/1llHo6XQeo7o+ZfKqovQFQm61nQmxuWV+OoRPiU2mFh3+UdVzftwOQ9Fmctm64kQmq
 HZTACoeED/wwlcdTAmtcRLwGsKVqFmMFEbEFoL4+nhM2AdzfKwJHjr69PQEn1AHYpq8XHDvy
 Rq+xzCe8oHJNyWfZnsgBcKjQljWgxDgCawayeKxgR4TABa0BYZlHnIPdJv2/aCHhD7M0pRiX
 5gwbm/tQlq0s9WFjDsYOgoReAItMWgHXFAQ1k+bD9ezgd2P7Yd0JHnTWIJwhG8BFk1rAPQoA
 HM8qP3T4wVnTnmVX3LLfeajt8mAREldh9poXhyfg9NpJthm14BNdGcqVhTD3kYib4QIrjZrj
 1P4xM8oxBXd+zmDcsYoBLO8rRx8D58r/WSoAGoAjncIkxtKMl4y+585IE5kUWaz7bXliK7D8
 peF94683YNscbQAEDiS2woCw1QgRJk1l0hMNAOKoxF4YODIcIRLGSNPv0wp5pCIlgWYM4DTO
 kzgKL75cCRcRsdJk+i5NJ9GKIxXBrcSZoHHqiuelukEHeVf07+mcah6tzY0vDvft3akzE+Nh
 HeDOVBm5EhksTlOJSyvzU8eY0Iie+bY/jbXGghmdPnO35Pq6MqgiMAoZan+FSm7uFp8Fg8G7
 Tipfh4KHuldyl1MVz0LVNqqMkn3Xtz6y5z+8FQ/cvJtLXUcWNUstzNwLCY+Jk3pdQBWM9C8J
 2LnwRwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7pPul7HGaw+YWDRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+PA8/+MBfekKt4fCmlgnCfWxcjJISFgInHg1y/2LkYuDiGBpYwS/+f/YYFIyEic
 nNbACmELS/y51sUGUfSJUaLtzn1mkASbgKFE11uIhIhAJ6PEtO6PYKOYBW4zSZyZOwGsSljA
 T+LyhB1gNouAqsTuc/vAxvIK2Ek0rZsGtUJeYvWGA2A1nEDx08dbweJCArYSzz+0sU1g5FvA
 yLCKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMjMFa2Hfu5eQfjpY3BhxgFOBiVeHhfhLyOE2JN
 LCuuzD3EKMHBrCTC63T2dJwQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wPjOK8k3tDU0NzC
 0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA2Ol0V+BnQV3OrQXPzj2UYtL5IYE
 zyU5w6/+vWp5ipUpUmfybNOObTcRLGc8eKOU/X+ep0vKQ6aPMWxhuxc5tBpNKZrYHvHLT/eR
 yIXj8hO/qR80LXXr9Ha59KTJTr65WERk/4FEq5L4H+/cPh2YtsW6+OPdk+Ep3YuW8LV4t19b
 kSZwg/vQGSWW4oxEQy3mouJEAHJLSFCrAgAA
X-CMS-MailID: 20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c
X-Msg-Generator: CA
X-RootMTR: 20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084025_849254_1938F067 
X-CRM114-Status: GOOD (  14.28  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
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
Reviewed-by: Qiang Yu <yuq825@gmail.com>
---
 drivers/gpu/drm/lima/lima_gem.c | 11 ++++++++---
 drivers/gpu/drm/lima/lima_vm.c  |  5 ++---
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/lima/lima_gem.c b/drivers/gpu/drm/lima/lima_gem.c
index 155f2b4b4030..11223fe348df 100644
--- a/drivers/gpu/drm/lima/lima_gem.c
+++ b/drivers/gpu/drm/lima/lima_gem.c
@@ -69,8 +69,7 @@ int lima_heap_alloc(struct lima_bo *bo, struct lima_vm *vm)
 		return ret;
 
 	if (bo->base.sgt) {
-		dma_unmap_sg(dev, bo->base.sgt->sgl,
-			     bo->base.sgt->nents, DMA_BIDIRECTIONAL);
+		dma_unmap_sgtable(dev, bo->base.sgt, DMA_BIDIRECTIONAL, 0);
 		sg_free_table(bo->base.sgt);
 	} else {
 		bo->base.sgt = kmalloc(sizeof(*bo->base.sgt), GFP_KERNEL);
@@ -80,7 +79,13 @@ int lima_heap_alloc(struct lima_bo *bo, struct lima_vm *vm)
 		}
 	}
 
-	dma_map_sg(dev, sgt.sgl, sgt.nents, DMA_BIDIRECTIONAL);
+	ret = dma_map_sgtable(dev, &sgt, DMA_BIDIRECTIONAL, 0);
+	if (ret) {
+		sg_free_table(&sgt);
+		kfree(bo->base.sgt);
+		bo->base.sgt = NULL;
+		return ret;
+	}
 
 	*bo->base.sgt = sgt;
 
diff --git a/drivers/gpu/drm/lima/lima_vm.c b/drivers/gpu/drm/lima/lima_vm.c
index 5b92fb82674a..2b2739adc7f5 100644
--- a/drivers/gpu/drm/lima/lima_vm.c
+++ b/drivers/gpu/drm/lima/lima_vm.c
@@ -124,7 +124,7 @@ int lima_vm_bo_add(struct lima_vm *vm, struct lima_bo *bo, bool create)
 	if (err)
 		goto err_out1;
 
-	for_each_sg_dma_page(bo->base.sgt->sgl, &sg_iter, bo->base.sgt->nents, 0) {
+	for_each_sgtable_dma_page(bo->base.sgt, &sg_iter, 0) {
 		err = lima_vm_map_page(vm, sg_page_iter_dma_address(&sg_iter),
 				       bo_va->node.start + offset);
 		if (err)
@@ -298,8 +298,7 @@ int lima_vm_map_bo(struct lima_vm *vm, struct lima_bo *bo, int pageoff)
 	mutex_lock(&vm->lock);
 
 	base = bo_va->node.start + (pageoff << PAGE_SHIFT);
-	for_each_sg_dma_page(bo->base.sgt->sgl, &sg_iter,
-			     bo->base.sgt->nents, pageoff) {
+	for_each_sgtable_dma_page(bo->base.sgt, &sg_iter, pageoff) {
 		err = lima_vm_map_page(vm, sg_page_iter_dma_address(&sg_iter),
 				       base + offset);
 		if (err)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
