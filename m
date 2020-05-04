Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97011C3A3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6ehhfsZ5tKiZh77AMqYfnECQioqFfGAgI8O1InxSsE0=; b=mr32VpD1Sl0mCCmYfXNvdvoaNY
	Hj7HZr9gXwt3Esfbo/z87TApnHhstj7+WbDTI/JWYilJcrh5KqMt8n0A4ex+/OV8iExPVccJAW5Ui
	w8HDB00gK1tfHgq/Y0aRK87wL4M7TFIQmY11/gLggOjrbtdaP2WTFyzeAAUrnO4zvFb+xnbNWQBq3
	UtEHWK8jsBPes0qQsIObbi6HRdWnC1LfDjQUhBm6tGK0yT1wkKy+fbIjwf9KIxiLSjDeWQ3oiMsoS
	WEVE/24xVlX5stmoGV/6exkvmj2IeIZZuInjxJM8u9LT9vywx1hquKg2eBZkthTGbeEOd6XdQgHrt
	2w4hDI5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaca-00032L-KW; Mon, 04 May 2020 12:54:56 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVabt-0002VH-Px
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:15 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125410euoutp02cb62e5b98fbaf61c4eed67d1f69062e9~L1GtIhUIC1778917789euoutp02N
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125410euoutp02cb62e5b98fbaf61c4eed67d1f69062e9~L1GtIhUIC1778917789euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596850;
 bh=axunh1IQkLSrq+yQ6b8oQPSu9vjhL9vwC+tOp/2Weyw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=S5Uh9j5Y/WQ3mclJD4TtMC0uJWCTTOq5P9af9Ye7snQAx3McIEf20/N4t0W2cXXK2
 bV56idYXlJKZwV+hwDuzHCbgV7iCUrXO/dC59+qBJ3kwzLb2mSV1PLSvgVzCjJrUiS
 mj1W4NlgCDH2Nm53fuh1n3lqZpRtXEwOYY1cCt2Y=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125410eucas1p1424d1bddb2fdbd37118a13a49f218101~L1Gs9u_Tb0159301593eucas1p16;
 Mon,  4 May 2020 12:54:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 69.61.61286.27010BE5; Mon,  4
 May 2020 13:54:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3~L1GsXPcpC2226922269eucas1p2n;
 Mon,  4 May 2020 12:54:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125409eusmtrp1ffd21b736e32b3480030799b3c707e4d~L1GsWQGG_2497724977eusmtrp1R;
 Mon,  4 May 2020 12:54:09 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-ee-5eb01072b78f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 32.06.07950.17010BE5; Mon,  4
 May 2020 13:54:09 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125409eusmtip2d4ce3360799e751dcef40defd5ef9c3d~L1Grt2Ja_0241002410eusmtip2F;
 Mon,  4 May 2020 12:54:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/21] drm: core: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:39 +0200
Message-Id: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125017.5494-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0gUURTm7szOjptr02p51NDYSNDIRxpNapJhMBBR0B+ztKYcVstV2VHT
 CLJ8UNsa5gaJlS0pvtM0MzPKfG4lii9SKVNzEx+Jlq6mlOU6Wv++8z3udzhcEpPnie3JiKhY
 Th3FRioIKV7dsti+S009CfWYattBp7e/E9EVWeVi+k/1bYzuMU0TdFFJs4jW1/nScz3DIrpy
 5IOY7q69T9CPmwYkdP2MUXxgA1OaU4qYV/N6nHk+PyRmBm8aRMzTvCvMx+URjNH1FSDmZX8S
 wdyqKkbMbKXjMWmw1C+Mi4yI59Tu/mek4ekDQTFpjgmlmf3iJKSx0yALEihveJ/fTGiQlJRT
 hQhKTDOEWZBTcwjK2oIFYRbB5EMjtp4wNqaIBKEAQX2LDhOGlcTvpk6x2UVQnqCZ0qw+ZUOl
 InibbmnGGJUlgubJOA0iSWvqKNTO8mYap3bA2PcvEjOWUX6QttCIhDInKHnyBjPbLaj9UHfj
 uLkKqDIJ3HthJARPICTnTuICtoYJQ5VEwFuhVafFhUAyguH2xxJh0CLovpa11uALn9qXCHMD
 RrlAea27QAfA2MOxVRooK+ib2iSsbwWZ1XcxgZbB9TS54HaGbEPZv9r6jq61WzHQmD+OC+fJ
 QJAyWoxnIKfs/2V6hIqRLRfHq5Qc7xnFXXTjWRUfF6V0OxetqkQrf6d12fCjBpm6zjYgikQK
 S1nQbHmoXMzG84mqBgQkprCR1aSsULIwNvESp44+rY6L5PgG5EDiCluZ16PxEDmlZGO5CxwX
 w6nXVRFpYZ+EfJ4Zi4YOusQHjp6S9C0mzG2z3+l43uHwA9e9zoO6y1q7MI/aLSGOhpzx6V+F
 vZVBXspCNnZgaeDrnlRXntX6qPadCNb7n8zVvD6EPLVFrlcH9fLhz8sQg/wnvTsWqifuxOhC
 g/CKzUexHO323Z0h0aamky0LAVNHvo1s/Dlm26vA+XDW0xVT8+xfU1n6hTcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4Pd1CgQ1xBjf3m1r0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcEPT1gduD3WzFvD
 6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuix+2YDm0ffllWMHp83yQVwRenZFOWX
 lqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehl9N6NKGiTq1gz
 6SZrA2OXZBcjJ4eEgInEk8MtTF2MXBxCAksZJT4+2cQMkZCRODmtgRXCFpb4c62LDaLoE6PE
 qmU/wBJsAoYSXW8hEiICnYwS07o/soM4zALzmCQWPTzEDlIlLOAr8WrRdUYQm0VAVeLFx0dg
 cV4BG4m274cZIVbIS6zecABoNQcHp4CtxP7OYJCwEFDJxwVLmCcw8i1gZFjFKJJaWpybnlts
 pFecmFtcmpeul5yfu4kRGAvbjv3csoOx613wIUYBDkYlHt4NX9fHCbEmlhVX5h5ilOBgVhLh
 3dECFOJNSaysSi3Kjy8qzUktPsRoCnTTRGYp0eR8YJzmlcQbmhqaW1gamhubG5tZKInzdggc
 jBESSE8sSc1OTS1ILYLpY+LglGpg7O89c0vEvPfWl+2eq9rTj93kLJY6KDJ7VxTHsafvmItD
 XjRUZ7LzOn/ZMVfq+vmS+PbCW4dW3/y8zue36O5o/yVFfipur976z2E4YD23yXmChukjTrNr
 amKv20XmqupfZqvhfZO18nHa8pWBilZPHEwar+0T+lqZFVAQtD9uwT8h6VyF96zlSizFGYmG
 WsxFxYkAEpMMU5sCAAA=
X-CMS-MailID: 20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3
X-Msg-Generator: CA
X-RootMTR: 20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <CGME20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055413_972696_389DF87D 
X-CRM114-Status: GOOD (  15.77  )
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
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
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
 drivers/gpu/drm/drm_cache.c            | 2 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c | 7 ++++---
 drivers/gpu/drm/drm_prime.c            | 9 +++++----
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_cache.c b/drivers/gpu/drm/drm_cache.c
index 03e01b0..63bd497 100644
--- a/drivers/gpu/drm/drm_cache.c
+++ b/drivers/gpu/drm/drm_cache.c
@@ -127,7 +127,7 @@ static void drm_cache_flush_clflush(struct page *pages[],
 		struct sg_page_iter sg_iter;
 
 		mb(); /*CLFLUSH is ordered only by using memory barriers*/
-		for_each_sg_page(st->sgl, &sg_iter, st->nents, 0)
+		for_each_sg_page(st->sgl, &sg_iter, st->orig_nents, 0)
 			drm_clflush_page(sg_page_iter_page(&sg_iter));
 		mb(); /*Make sure that all cache line entry is flushed*/
 
diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index df31e57..f47caa7 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -118,7 +118,7 @@ void drm_gem_shmem_free_object(struct drm_gem_object *obj)
 	} else {
 		if (shmem->sgt) {
 			dma_unmap_sg(obj->dev->dev, shmem->sgt->sgl,
-				     shmem->sgt->nents, DMA_BIDIRECTIONAL);
+				     shmem->sgt->orig_nents, DMA_BIDIRECTIONAL);
 			sg_free_table(shmem->sgt);
 			kfree(shmem->sgt);
 		}
@@ -396,7 +396,7 @@ void drm_gem_shmem_purge_locked(struct drm_gem_object *obj)
 	WARN_ON(!drm_gem_shmem_is_purgeable(shmem));
 
 	dma_unmap_sg(obj->dev->dev, shmem->sgt->sgl,
-		     shmem->sgt->nents, DMA_BIDIRECTIONAL);
+		     shmem->sgt->orig_nents, DMA_BIDIRECTIONAL);
 	sg_free_table(shmem->sgt);
 	kfree(shmem->sgt);
 	shmem->sgt = NULL;
@@ -623,7 +623,8 @@ struct sg_table *drm_gem_shmem_get_pages_sgt(struct drm_gem_object *obj)
 		goto err_put_pages;
 	}
 	/* Map the pages for use by the h/w. */
-	dma_map_sg(obj->dev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL);
+	sgt->nents = dma_map_sg(obj->dev->dev, sgt->sgl, sgt->orig_nents,
+				DMA_BIDIRECTIONAL);
 
 	shmem->sgt = sgt;
 
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 282774e..f3e2d2a 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -626,8 +626,9 @@ struct sg_table *drm_gem_map_dma_buf(struct dma_buf_attachment *attach,
 	else
 		sgt = obj->dev->driver->gem_prime_get_sg_table(obj);
 
-	if (!dma_map_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
-			      DMA_ATTR_SKIP_CPU_SYNC)) {
+	sgt->nents = dma_map_sg_attrs(attach->dev, sgt->sgl, sgt->orig_nents,
+				      dir, DMA_ATTR_SKIP_CPU_SYNC);
+	if (!sgt->nents) {
 		sg_free_table(sgt);
 		kfree(sgt);
 		sgt = ERR_PTR(-ENOMEM);
@@ -652,7 +653,7 @@ void drm_gem_unmap_dma_buf(struct dma_buf_attachment *attach,
 	if (!sgt)
 		return;
 
-	dma_unmap_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
+	dma_unmap_sg_attrs(attach->dev, sgt->sgl, sgt->orig_nents, dir,
 			   DMA_ATTR_SKIP_CPU_SYNC);
 	sg_free_table(sgt);
 	kfree(sgt);
@@ -975,7 +976,7 @@ int drm_prime_sg_to_page_addr_arrays(struct sg_table *sgt, struct page **pages,
 	 */
 	page_index = 0;
 	dma_index = 0;
-	for_each_sg(sgt->sgl, sg, sgt->nents, count) {
+	for_each_sg(sgt->sgl, sg, sgt->orig_nents, count) {
 		page_len = sg->length;
 		page = sg_page(sg);
 		dma_len = sg_dma_len(sg);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
