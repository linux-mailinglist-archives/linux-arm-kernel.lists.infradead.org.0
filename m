Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54461CF109
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RVM7uaQkTz1ouD1xkgcJw1kwFAzQnLfnNjpEQJyTKQA=; b=HsqqzrQmDIWnVGnvIRLAgdprL9
	wKN9ZB/TrJaxom6mfCnvX2FCFHd6tAwFn6GI1U9Qqxrb3O4zPOuMZNLES+If2G+V3MT7pwqXg2hRD
	oPLOg52CFBbpuk8AaOIAGOTIxopswPGIma/P68VBRsRST37XUS841dlDfW8RLpHjf/TPHa6bmnNg4
	1pH0WCB3SYn+VPzIaBSwibWFwWoJgoMizibT53eRNYWf9fMTE4x3ZNK5zDcYCR1WzSQKlUP9I3HVp
	0gIazfhAQzOUEzzXKTUMlq4ObZXLq/HvCkGVeQGYgqMyIgxEJEvm8lJNwPgpKTI9mR3ZdkSXg75Cy
	CpVNa2vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQsl-0008BO-3s; Tue, 12 May 2020 09:07:23 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQms-0002Dd-RD
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:24 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090115euoutp01f7de66de42dbbfe1d4419ad98f6d7222~OPFno_Jt82633726337euoutp01H
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090115euoutp01f7de66de42dbbfe1d4419ad98f6d7222~OPFno_Jt82633726337euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274075;
 bh=MbQC/f/JuDQtkAAv9KEjPVKfPLXAiuECZLZaCc4Yr1A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PfPD1Q91VCsHr7WrVxDRHXFhgVqiysEcmIUl37AWzMsBWKOsB0qeDuFl3mXfzrbUN
 QtmfyeKHlXi0HUJGFCTkl+rWArJbOnSOhKz3ymzD22FnQDKo5Xij4GtK+b1Qhn5TBX
 /w458/o5lVT3/10K6a017FJYFbyW6hQUv30brW3o=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090115eucas1p164cd3da969ca84c552f5fb835e0c4175~OPFnax2Vm3050830508eucas1p1b;
 Tue, 12 May 2020 09:01:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id D8.6B.60698.BD56ABE5; Tue, 12
 May 2020 10:01:15 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee~OPFnGlQMJ1183411834eucas1p1v;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090114eusmtrp27a4970be5a458e2abcae4c04f7134c2d~OPFnEMGaH0472704727eusmtrp2B;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-16-5eba65db6adc
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 9D.35.08375.AD56ABE5; Tue, 12
 May 2020 10:01:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090114eusmtip135df448378e52a298bf104ba7f5c6485~OPFmhVrMg1148011480eusmtip1U;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 13/38] drm: lima: fix common struct sg_table related issues
Date: Tue, 12 May 2020 11:00:33 +0200
Message-Id: <20200512090058.14910-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUgUcRTH+c3szoybU9Nq+Esja8CgII9MGVTMwGCiPxKliERr00lFV2XX
 I/vHK8XWq7wS7zXFO3MzT/JC3Sww80rxvrtEwwMU05zG8r/P+773fe/3Hj8CldaLDQkf/yBO
 4S/zozGJqK5769PFMa7J3bx+E2USe3sQpiazWszs1T1HmcGNFYwpq+hCmIJWW2YtT4Mx64Mz
 CKOZGxYzA005GFPVOYEz7avzYma1agNxINnKvErAvtssELGNWRM4W785LWan4rUI+6YonB3b
 nUPZ1JESwDaPRmBsUm05YNc0p52O3JXYeXJ+PiGcwsz+vsRbFTOKBS4aPRrKzUYjQLqBCugQ
 kLoMm39+xlVAQkipUgBbemYxIVgH8MNSPyoEawAOLqaJVYD4a9nccxH0EgCzt+IPHeqhVMD3
 xSgLqFpWYTzrUzEAvk/U5YtQagCB+V1RIj6hRzlBdUQbwrOIMoEvSwtxnknKHs7ERiLCA41h
 xes2lGedfX0qf0fEN4JUNw7VCclAKHKEMU/7MIH14HdtLS7wKbjXmI8IhmgAZ3qrcCFIAHAg
 KvPAbQvHe7cxfjmUOg+rm8wE+SqsXZ482PkoHFk+zsvoPqbUvUAFmYRxsVKh+hzM0r76P7a9
 rx8VmIV9KfxR+At1AbhQpsGfAeOsw2EFAJQDAy5YKffilJb+XKipUiZXBvt7mXoEyDVg/zt9
 3NVuNICWnQcdgCIArUvGXWp0l4plIcoweQeABErrk0989iXSUxb2mFME3FME+3HKDmBEiGgD
 0rLwm5uU8pIFcb4cF8gp/mURQscwAki0oUkh6iKJ9dJKsY+bXuT4Wd+dYZOTabfjzsjNl3u3
 rNOnnF1/3HLZcQ5vvrNwvSb32Ilk0orWpu2SY7PtE8U3vy78xt/q60TPlk9nzLWX25CujqP2
 88F0ih3t8TCjtUF67VfOSlqFLy1ziBrutLC+sR1TPxltY9XkcYX5YlRDi5TeMosLqEIp+wMk
 Y85pSgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7q3UnfFGTx8pmXRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL6Or9SZbwTPpiqtzZzM3ME4V72Lk4JAQMJH49j+4i5GLQ0hgKaPEk1uf2LsYOYHi
 MhInpzWwQtjCEn+udbFBFH1ilNg38yRYgk3AUKLrLURCRKCTUWJa90d2EIdZ4DaTxJm5E5hB
 qoQF/CTWr/zPBmKzCKhKLF6xCGwFr4CdxMO2RiaIFfISqzccAKvnBIrfn/+HBcQWEiiUeHT1
 LcsERr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAmNl27Gfm3cwXtoYfIhRgINRiYe3
 w2hnnBBrYllxZe4hRgkOZiUR3pZMoBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJLiSbnA+M4ryTe
 0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QD41y1P2slWb5v//g5qGjX
 oq3Tq5fqhbtOUIi0fOb2c6Ouh6+sm7XgiQT3d6c82t9XPFVUkUqd+US1XGvjP6f7PzSjPtav
 mteo/NXaoPyxkoFOTz6XkM+uRw7uG7h12lWcOMzuT+/3OLqT58fDkw++63Vfc3x7UU3vWNqx
 wspv5kLbvugvn9PWo8RSnJFoqMVcVJwIAKx6WtCrAgAA
X-CMS-MailID: 20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee
X-Msg-Generator: CA
X-RootMTR: 20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090114eucas1p1bc4ab112b490205283e7d2f82a9713ee@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020119_087814_DC5343BD 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/lima/lima_gem.c | 11 ++++++++---
 drivers/gpu/drm/lima/lima_vm.c  |  5 ++---
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/lima/lima_gem.c b/drivers/gpu/drm/lima/lima_gem.c
index 5404e0d..cda43f6 100644
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
index 5b92fb8..2b2739a 100644
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
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
