Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50112006D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c+aFp4LdQJP7dEn0eTw8V7yQFFKd9RnHPjFd9hWEYNk=; b=Iutox3WPptS/0HCv3iqClZZ+II
	MJDGWAW4f0uwZEWXy2SiXxOOU4+GKplPStb0NWVBmtNCk2OvsThwUlSj50o7wrAeEE24u8J+YqvlP
	AR1yy7OCLrJ7qT+cuzgxnE3EsvkgJsfHy6sVZleECqr3Q5QwGXPP26CEq0KFqIevKniK+XuH6ucf0
	wzaZacToU5y0IugTDx7OFV/lyMVHcApOY/l1wcQDX4zztaBDT/Uei5eYblmyDHSPOc/I1JwKaw8zJ
	lSKxrgMoX1fBD6rvOR+lGyTkrVY8IjBKS3g3lkCgfsUgIIjfKRG0stgztN/FiJcRTb/PhF5BIGIsv
	S7paw23A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmESV-0002On-AM; Fri, 19 Jun 2020 10:41:19 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOM-00059f-Bm
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:05 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103700euoutp01719cb3086f37396fc5e97f7baf1219ce~Z66EjQN8N1836618366euoutp01Y
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103700euoutp01719cb3086f37396fc5e97f7baf1219ce~Z66EjQN8N1836618366euoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563020;
 bh=3Uytyvwzt4UX7mjIW5nSX3tNMM/3bhp/av3KF6qTx7w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pN2LIMKgQ2C9Mr1LCcp1YtdQpWBpE2ZRylR1TTz98Ft4oFsyWbEYlH3I5pInSZyaB
 WiwgCTUKZFGx++brsBebUlHkj5o3nU6sUag53JJkB1RefikE1jUdTX4oXDiWvvFUhC
 cGZ14lfqahzylgzlOSA3ffJOc3y795UzEsDCTkUU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103700eucas1p1d0eaf478d3169376d5c1ae4142fe0012~Z66EMseGC0706007060eucas1p1n;
 Fri, 19 Jun 2020 10:37:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id ED.8C.06318.C459CEE5; Fri, 19
 Jun 2020 11:37:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6~Z66D1x1_M0550605506eucas1p1n;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103659eusmtrp1cc184c2cf49a2fe9b3ebee1f26d43797~Z66D1GWMR0949709497eusmtrp1F;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-5a-5eec954c959f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D5.0B.06017.B459CEE5; Fri, 19
 Jun 2020 11:36:59 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103659eusmtip2ee4aded76d4a08a25256a4a1d9badba6~Z66DN1fjk0247402474eusmtip2Z;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 10/36] drm: lima: fix common struct sg_table related issues
Date: Fri, 19 Jun 2020 12:36:10 +0200
Message-Id: <20200619103636.11974-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djPc7o+U9/EGeybwGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDuKyyYlNSezLLVI3y6BK+PA8/+MBfekKt4fCmlgnCfWxcjJISFgIvHx02Xm
 LkYuDiGBFYwSp5qvMUI4XxglTnc3skM4nxklrr7ayArTcvXwajaIxHJGie6ONia4lnuT/jOD
 VLEJGEp0ve1iA7FFBFoZJU708oAUMQtcZpKYf7SJBSQhLBAg8anpGSOIzSKgKrHw5D+wFbwC
 dhL75l5kg1gnL7F6wwGwoZxA8dctB6HOOMYu0fg8FMJ2kTjX+5URwhaWeHV8CzuELSNxenIP
 C8hiCYFmRomH59ayQzg9jBKXm2ZAdVhL3Dn3C2gbB9B5mhLrd+lDhB0lPt09DxaWEOCTuPFW
 ECTMDGRO2jadGSLMK9HRJgRRrSYx6/g6uLUHL1xihrA9JPp/zQZ7RUhgIqPEvhcBExjlZyHs
 WsDIuIpRPLW0ODc9tdg4L7Vcrzgxt7g0L10vOT93EyMwMZ3+d/zrDsZ9f5IOMQpwMCrx8L4I
 eR0nxJpYVlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8xotexgoJpCeW
 pGanphakFsFkmTg4pRoYu9Z5uW8xvzzp/NFmxglWKfmzww8lFTZ5xLEVcBVc3u96gZ9faqlT
 w4IFs/pvxlxKDXDYeIFp3WIhS93SpEXJpccXLE0IVLm9YuvHmc2P67gC/FWlVFYc0vAXnn1i
 s9WVdOH/Ue4On08syL/8eOqnwyFZUy0DqoO+Lnhkn/Db9GXhP6/C7Td4lViKMxINtZiLihMB
 KRwfp0gDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xe7reU9/EGSw4omfRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+PA8/+MBfekKt4fCmlgnCfWxcjJISFgInH18Gq2LkYuDiGBpYwSJ49sYodIyEic
 nNbACmELS/y51gVV9IlRoufPPxaQBJuAoUTXW4iEiEAno8S07o/sIA6zwG0miTNzJzB3MXJw
 CAv4ScztNgBpYBFQlVh48h/YVF4BO4l9cy+yQWyQl1i94QAziM0JFH/dchCsRkjAVmL5gvfM
 Exj5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiMlG3Hfm7Zwdj1LvgQowAHoxIP74uQ
 13FCrIllxZW5hxglOJiVRHidzp6OE+JNSaysSi3Kjy8qzUktPsRoCnTURGYp0eR8YBTnlcQb
 mhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgnL6TPWxPnGP8ss+ROVOe
 J5mV7Pnc/HpFjE9lAPehy+eXT3Pad9Rae9YxkRZj7kXMCysOs9/lP2+ZGvxTwGqxlqfrAsn7
 7zbOap78a+a+xbxKa6OPT/pQlBg9N6op4XDzVNlZSRsDw9P0WJWU/j7VtFj11azewejaGRsx
 qbPap1OLUj/+DmviU2Ipzkg01GIuKk4EAI22K9KqAgAA
X-CMS-MailID: 20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6
X-Msg-Generator: CA
X-RootMTR: 20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033702_585323_38CF0326 
X-CRM114-Status: GOOD (  13.90  )
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
