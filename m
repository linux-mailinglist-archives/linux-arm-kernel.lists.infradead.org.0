Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CEF1D15F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bzpBcxlc2RH6WKbgdlI9ZTtSWqfT/q5TK7J8LajKduI=; b=StdcerwBhK++Oj/cbyEgi2PtqY
	Zks6d6JItc1xQ29aWZZzJ56q8rU8G4+IyKouC0Vn0BzN4gT+q+LYZ8h4IAnf+7I/1wGQD7labWpFn
	eUHEJ8FKJFXp+qi5FjeHzTMGol5z/DilVBDTKumGsDoOhLhsUbhFz1oR4XmjGXorCmXAB/ZFATByV
	m5T8Ti6S3W2k6q1C2WtK0h+Oks+E1U63yu0hWUnM6sgrgqfGSKo5xV1TrrHvS2SguJf7rqj/j9MBu
	n2DEZmte3Op9zKGQXke2rya1TN3XDsMFXO04MXJSvEf2djhRtTcKdldV/4P9rL1NTaSDGqEGf0Xs5
	UAVGN6Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrc7-0001AV-6H; Wed, 13 May 2020 13:39:59 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVY-0001Xg-Fq
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:24 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133311euoutp0245d02ac65697c2c58147734d7b7f32f5~OmcVMA68T3223232232euoutp020
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133311euoutp0245d02ac65697c2c58147734d7b7f32f5~OmcVMA68T3223232232euoutp020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376791;
 bh=LffS5bYPgRETT3M74qJNeZGYgl9TTyynFbb9Sq2/aPc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d9W5/oE4v35es0vbX9PyJqF62ctJz1u//VCwOVQYUklEOjiB8kehjbtXlIsi05xbo
 k28M3XdO40oJ3B5MANvDepDN79ClQvUt6UhCIl5vZ2pJE9xmeb2Gmi30p85ZPg9wPf
 lnApq5UvXm4GFbqGYTW4KnvyzZni6ZqTZjgGYd2o=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133310eucas1p2dfa423c1dd02d4f7422afd99a66a28ce~OmcUz6wXt0616406164eucas1p2b;
 Wed, 13 May 2020 13:33:10 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B8.D8.60698.617FBBE5; Wed, 13
 May 2020 14:33:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133310eucas1p176c920345e7f05f670e26e330b358d7f~OmcUk6gAF2350623506eucas1p1H;
 Wed, 13 May 2020 13:33:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133310eusmtrp14a5310d8ec8a7383f0dfee53efa99761~OmcUkSOjS1011910119eusmtrp1R;
 Wed, 13 May 2020 13:33:10 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-d8-5ebbf716ae7e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 68.1A.08375.617FBBE5; Wed, 13
 May 2020 14:33:10 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133309eusmtip176b7b06def49b2e95bc3716c90d655f2~OmcTsxDLb0131701317eusmtip1F;
 Wed, 13 May 2020 13:33:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 19/38] drm: panfrost: fix common struct sg_table related
 issues
Date: Wed, 13 May 2020 15:32:26 +0200
Message-Id: <20200513133245.6408-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSazBUYRjHe89tD9k6FnlTw7QzmTQh6cOZcRlNjc5MpjR8UqmVkzVY2nXt
 SzspacOoLUSjrczIdVlGcrcqyViFwqAYjEtJxl0N7TpL3/7P7/k/7/9533lJVFCP25ChkmhW
 KhGFCwlTrOr9aqfjnuXawKMjG0foVF0bQpdnqXF6o+oBSvcszhJ0QdE7hFY1utELPSMIrRn9
 itPdNU8JuuTtEI/eqKvm0c2/x3A6raSL8OIzxbnFgKkeygNM/ZIKYzSF9wjm9dIwzny/34ow
 FXk3mYH1UZRR9uUDprZfTjBplYWAmdfY+poFmLoHs+GhsazU2fOKqXh9vomI6t4bfzvzLioH
 DVYKYEJC6jgcHFcTCmBKCqhXAHYrE43FAoDpq10oV8wD+HPpG7o1slLfw+Ma+QDK+3Vge2Qq
 IwUzuAjKBSpmFIRBW1J3APyQamYwodQYAvtWSnBDw4Lyh0vP+4BBY9RBWNf5cpPzKQ84uS43
 xtnBorKmTW2i59ODjZjhIEh95MGO1UqMM52Cy3MjOKct4HRrJY/T+2G7MsU4kAjgiK6ExxUp
 +rveygKcyw0O6tb0u5L6/RygusaZwyfgo2fJiAFDahfsmzE3YFQvH1Zlohzmw+QkAee2h9mt
 pduxzZ+6jPszUJvbYXyhFgAX635h6cAu+3+YCoBCYM3GyCJCWJmrhI1zkokiZDGSEKerkREa
 oP9U7euti9Wg4W+QFlAkEJrxh3trAwW4KFaWEKEFkESFlvyzaj3iB4sSbrDSyMvSmHBWpgX7
 SExozXd9MXVJQIWIotkwlo1ipVtdhDSxkQPxac9D5y9o5a4DpMNktTgOFXjviF+r8XvskeRz
 0XsCz0pEclQFvZbic+a0omw244ztzhzfxFmXCueTLe6Vygl7m91F155EH6hIN5eER1oVUKUL
 /uYDDmGONT90PnOfg0L8vN6UX7dTj3f88WoLLuhdaWrW9CodghHlF/eAgdhjQkwmFrkcRqUy
 0T+nmzdrUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7pi33fHGSzaIGvRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFv/37GC3OPjhCatF
 39pLbA68HmvmrWH02HF3CaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexr/PB9gKLktWtExvZ25g3CfaxcjJISFgIvFj7xX2LkYuDiGBpYwSV37v
 Z4FIyEicnNbACmELS/y51sUGUfSJUeLDvR1gCTYBQ4mutxAJEYFORolp3R/ZQRLMAm+YJC5d
 jQCxhQWCJNbM/MQGYrMIqErsOb8YrJlXwFbixb8GZogN8hKrNxwAszmB4q/uQFwhJJAvsXfx
 PrYJjHwLGBlWMYqklhbnpucWG+oVJ+YWl+al6yXn525iBEbNtmM/N+9gvLQx+BCjAAejEg+v
 xa3dcUKsiWXFlbmHGCU4mJVEeP3WA4V4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5HxjReSXx
 hqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGE0Tpn20Uw9jXND/61We
 9zb5gNOLIyyLbO+/vrKBr3DSoavsV4vFwva5Xt9fuKZ/Xfj8H1PSXh+xWDcjdcdvkclWrT+i
 WfYZ3vM1kXM6IP5kNjvXj3DWWcZC3y88WOiw8qhoQtXOFGWxq4kNk0LTfj/4dj63RnzNmmSp
 YKX+s0+82O+8/5/w4a8SS3FGoqEWc1FxIgDc3DkUsAIAAA==
X-CMS-MailID: 20200513133310eucas1p176c920345e7f05f670e26e330b358d7f
X-Msg-Generator: CA
X-RootMTR: 20200513133310eucas1p176c920345e7f05f670e26e330b358d7f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133310eucas1p176c920345e7f05f670e26e330b358d7f
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133310eucas1p176c920345e7f05f670e26e330b358d7f@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063312_690902_01325F31 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
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
Reviewed-by: Steven Price <steven.price@arm.com>
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/panfrost/panfrost_gem.c | 4 ++--
 drivers/gpu/drm/panfrost/panfrost_mmu.c | 7 +++----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_gem.c b/drivers/gpu/drm/panfrost/panfrost_gem.c
index 17b654e..6696304 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gem.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gem.c
@@ -41,8 +41,8 @@ static void panfrost_gem_free_object(struct drm_gem_object *obj)
 
 		for (i = 0; i < n_sgt; i++) {
 			if (bo->sgts[i].sgl) {
-				dma_unmap_sg(pfdev->dev, bo->sgts[i].sgl,
-					     bo->sgts[i].nents, DMA_BIDIRECTIONAL);
+				dma_unmap_sgtable(pfdev->dev, &bo->sgts[i],
+						  DMA_BIDIRECTIONAL, 0);
 				sg_free_table(&bo->sgts[i]);
 			}
 		}
diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index ed28aeb..eb2550e 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -253,7 +253,7 @@ static int mmu_map_sg(struct panfrost_device *pfdev, struct panfrost_mmu *mmu,
 	struct io_pgtable_ops *ops = mmu->pgtbl_ops;
 	u64 start_iova = iova;
 
-	for_each_sg(sgt->sgl, sgl, sgt->nents, count) {
+	for_each_sgtable_dma_sg(sgt, sgl, count) {
 		unsigned long paddr = sg_dma_address(sgl);
 		size_t len = sg_dma_len(sgl);
 
@@ -517,10 +517,9 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	if (ret)
 		goto err_pages;
 
-	if (!dma_map_sg(pfdev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL)) {
-		ret = -EINVAL;
+	ret = dma_map_sgtable(pfdev->dev, sgt, DMA_BIDIRECTIONAL, 0);
+	if (ret)
 		goto err_map;
-	}
 
 	mmu_map_sg(pfdev, bomapping->mmu, addr,
 		   IOMMU_WRITE | IOMMU_READ | IOMMU_NOEXEC, sgt);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
