Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413791D157C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VctjYqpoYf8c+E7DWShpaIS5zfftS6Au8vEpZBO8zYw=; b=hYWK4zYeS1r0+GHdXHmo4oZt3v
	avX6MRkQoyHPyYE3cOTaaLr6ura03u+HxMTqyTBfMe6hTD7JTXprLx42AoqdXKbeXZC9X/byJnpa+
	/XniUMDa9fG5L6IeCWVN/EQiXHp2ujlA8jQpmHakTiaggkdtbq9CyzCAMSzihbJ/KPgseG6D3r1/K
	NdzB9b51LmYTRU6a2Yalg0R3bOlmG5EYjzxXDyeITak+LBExf3IgsbcdqCXJSu6HV2AjptUkZ6Ayk
	09YlsEz/PfzGLysGIWWGgPyl2GlZpzyD8lfZG1KdHlVvSpOTQRKjNUCZsQ/v8lIR6w3+GdzMV/vRH
	Em+EdyEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrX4-0002gh-3O; Wed, 13 May 2020 13:34:46 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVN-0001ME-5O
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:05 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133259euoutp01d88efbf9a0c1bec21b4eaa9f3c475b0d~OmcKdIiJ_2140621406euoutp019
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:32:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133259euoutp01d88efbf9a0c1bec21b4eaa9f3c475b0d~OmcKdIiJ_2140621406euoutp019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376779;
 bh=jaNdX2aJTFsRpUX29VfIto14HjpaD6l+ox1EVZ7cX2s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Gh5UyUJZdbT4fmfJAizmyXQ5nWBC0xbfm8weh+K1+lZ3T+LfPOCgtIyTnFO8OrYxU
 IUsaurRXnxf+m7xGi7iFZxsogkRhJVOYhFFCeFyMoHVBND73L2TkP5mhioADk3OcY/
 4po8ry5w7cADjw6lsnn9oiIvVNMhyTQPEAs5S8ZE=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133259eucas1p2818fb6d2768faf81ec6dbb912e61afaf~OmcKGU44v1009510095eucas1p27;
 Wed, 13 May 2020 13:32:59 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id B2.C5.61286.B07FBBE5; Wed, 13
 May 2020 14:32:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a~OmcJxzEQx0874908749eucas1p1W;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133258eusmtrp1fd7bd53644225fb7e2283a8cb47db7b5~OmcJweEPK0994509945eusmtrp1c;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-2f-5ebbf70b24b7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DC.27.07950.A07FBBE5; Wed, 13
 May 2020 14:32:58 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133258eusmtip172311bd51bf138cd3fe3bd47bfeadb30~OmcJC-20L2932629326eusmtip1b;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 04/38] drm: prime: add common helper to check scatterlist
 contiguity
Date: Wed, 13 May 2020 15:32:11 +0200
Message-Id: <20200513133245.6408-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeyyVcRjud77L+Y4c+zosv0mx02ppi0Tr2+iitfZZ1uS/2siHb1jOYecg
 8gdLGccllykz6VDL7XByHNSRO52wUciQlHSZ2yi3Ueh8PtV/z/s8z/s+7969BCJpx2yIUHkk
 q5AzYVLcDK17tdZ7bPdqg9/x6jQLKr23S0BV52kxaqsuC6EGl+dxqqyiU0Cpm92opcEJAaWb
 HMKoAUMBTlV2fBBSRT9qUSop5SlGtS58wSj9bBZ2zoLWFGoA3biiRmldeQpO1698wujCriv0
 x1SjgK55Ek+/35xE6JzhEkA3jCTgdIa+HNA1PXH0ou6At/iamXsQGxYazSqczvibhXQPlKAR
 DbYx37+WChOA0VoFCAKSrjBjWqQCZoSELAVwrNOAqIDIVCwBuJxpwQuLABpatEJO4BryOyaF
 vFACYGfPOMIXpo7fQ/dRzoWTzlA1p8I5bEXeBfB1ujlnQkg1AtcWkwAnWJJX4UJZ/fZYlDwE
 XxZqMQ6LSXeYOlMg4OPsYMWzlu2dRORpOD3WjHKDIDkqhDMjWRhvugB1s1k7+1nCaaN+B9vC
 npy0nYZEACd6K4V8kQbgwO08wLvc4FjvOs6dAyEdoNbgxNMecO5dE+CvZAGH5/ZwNGKC2XUP
 EJ4Ww+QkCe8+DPONVf9iW9/0IzymYWJ7FcpfqB3At8WleCawy/8fpgagHFizUUpZMKt0lrM3
 HZWMTBklD3YMDJfpgOm1ejaNP5+D5f6ANkASQGoupkYb/CQYE62MlbUBSCBSK/FlrYkSBzGx
 t1hF+HVFVBirbAP7CFRqLXYpnvKVkMFMJHuDZSNYxV9VQIhsEoBP4v4WKoVxGNqKqW1M/9U1
 dqKq/fJD3yh7RrCXPFlsn9unDqgv8xevnu/zSne5py+a8z67Udnm4TPlsL45/Pig3sv9YrCl
 uavNPDaV46mraop9FB53qj52OPXzzK7M5BeSom8akYtGrjni6WI9fqkyuTs+N9Bgt7iRfWeo
 TuacIEWVIYzzUUShZP4AF1lGHVYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7pc33fHGZzZaGTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQyTl1ezlKwW6bi+dMV7A2Mx8W7GDk5JARMJGYdeczexcjF
 ISSwlFFiyvn97BAJGYmT0xpYIWxhiT/Xutggij4xStyYuIwJJMEmYCjR9RYiISLQySgxrfsj
 2ChmgRXMEq/2zWUBqRIWCJf4v2UJM4jNIqAqsWfeerCxvAI2Et2v5zBBrJCXWL3hAFgNp4Ct
 xKs7+8F6hQTyJfYu3sc2gZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMA42nbs55Yd
 jF3vgg8xCnAwKvHwWtzaHSfEmlhWXJl7iFGCg1lJhNdvPVCINyWxsiq1KD++qDQntfgQoynQ
 UROZpUST84ExnlcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgXGN
 jcHkaUdvfBT6Ejxv997jWb+WnH7DNeVkrXS6e88f70keBtMN1574aCzOfa9PmH27teX9paeL
 lUQikrZusdBheOX4/EY1k6iWzSz9Gne1F9V2e344KV5bszHh27k32zkNlHYkm0Q6pJ9J8sw6
 47TWp/V72KkpP5r0nL2VPSNaxWd7q8tyPFdiKc5INNRiLipOBAALtjL0uQIAAA==
X-CMS-MailID: 20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a
X-Msg-Generator: CA
X-RootMTR: 20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063301_358437_C72DD842 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is a common operation done by DRM drivers to check the contiguity
of the DMA-mapped buffer described by a scatterlist in the
sg_table object. Let's add a common helper for this operation.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/drm_gem_cma_helper.c | 23 +++--------------------
 drivers/gpu/drm/drm_prime.c          | 26 ++++++++++++++++++++++++++
 include/drm/drm_prime.h              |  2 ++
 3 files changed, 31 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/drm_gem_cma_helper.c
index 12e98fb..9f2d13e 100644
--- a/drivers/gpu/drm/drm_gem_cma_helper.c
+++ b/drivers/gpu/drm/drm_gem_cma_helper.c
@@ -471,26 +471,9 @@ struct drm_gem_object *
 {
 	struct drm_gem_cma_object *cma_obj;
 
-	if (sgt->nents != 1) {
-		/* check if the entries in the sg_table are contiguous */
-		dma_addr_t next_addr = sg_dma_address(sgt->sgl);
-		struct scatterlist *s;
-		unsigned int i;
-
-		for_each_sg(sgt->sgl, s, sgt->nents, i) {
-			/*
-			 * sg_dma_address(s) is only valid for entries
-			 * that have sg_dma_len(s) != 0
-			 */
-			if (!sg_dma_len(s))
-				continue;
-
-			if (sg_dma_address(s) != next_addr)
-				return ERR_PTR(-EINVAL);
-
-			next_addr = sg_dma_address(s) + sg_dma_len(s);
-		}
-	}
+	/* check if the entries in the sg_table are contiguous */
+	if (drm_prime_get_contiguous_size(sgt) < attach->dmabuf->size)
+		return ERR_PTR(-EINVAL);
 
 	/* Create a CMA GEM buffer. */
 	cma_obj = __drm_gem_cma_create(dev, attach->dmabuf->size);
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 282774e..1d2e5fe 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -826,6 +826,32 @@ struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_page
 EXPORT_SYMBOL(drm_prime_pages_to_sg);
 
 /**
+ * drm_prime_get_contiguous_size - returns the contiguous size of the buffer
+ * @sgt: sg_table describing the buffer to check
+ *
+ * This helper calculates the contiguous size in the DMA address space
+ * of the the buffer described by the provided sg_table.
+ *
+ * This is useful for implementing
+ * &drm_gem_object_funcs.gem_prime_import_sg_table.
+ */
+unsigned long drm_prime_get_contiguous_size(struct sg_table *sgt)
+{
+	dma_addr_t expected = sg_dma_address(sgt->sgl);
+	struct sg_dma_page_iter dma_iter;
+	unsigned long size = 0;
+
+	for_each_sgtable_dma_page(sgt, &dma_iter, 0) {
+		if (sg_page_iter_dma_address(&dma_iter) != expected)
+			break;
+		expected += PAGE_SIZE;
+		size += PAGE_SIZE;
+	}
+	return size;
+}
+EXPORT_SYMBOL(drm_prime_get_contiguous_size);
+
+/**
  * drm_gem_prime_export - helper library implementation of the export callback
  * @obj: GEM object to export
  * @flags: flags like DRM_CLOEXEC and DRM_RDWR
diff --git a/include/drm/drm_prime.h b/include/drm/drm_prime.h
index 9af7422..47ef116 100644
--- a/include/drm/drm_prime.h
+++ b/include/drm/drm_prime.h
@@ -92,6 +92,8 @@ void drm_gem_unmap_dma_buf(struct dma_buf_attachment *attach,
 struct dma_buf *drm_gem_prime_export(struct drm_gem_object *obj,
 				     int flags);
 
+unsigned long drm_prime_get_contiguous_size(struct sg_table *sgt);
+
 /* helper functions for importing */
 struct drm_gem_object *drm_gem_prime_import_dev(struct drm_device *dev,
 						struct dma_buf *dma_buf,
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
