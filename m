Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A6A1C5134
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5cLRwa2vtofxHxdMjAr2I9uL0oO2Xz+DUarqia/Faa4=; b=J1XyeeAZRme9EWAo1/zoLHwdCu
	Kf9rwWDcjc6VcmTrM0ZHNUVPhm6zixNZWH7b3hl0SPQzNbi2RU5j4KrUBg8eNADmlHw3JLlitQoah
	ww+8/HL5gulVRaksIb8xLhVHjWxVwiSrVqDkaKyCmaaZaXuhxIyv852ooBiY3selNp1jS+L6zGd7a
	rmP0sH/ZxsQAOQL5Ikm7kdmPGlop0rvVno/LWGxEWJ0qH4he4yyKw9KMC1J8UOABAnWsCqEQi5GAo
	Q0CkayUzR7UpguGjT3zxXk48ISIZvwZyuCFrIs19LIDbb/WKnlOuWlk5MoZt9SUVPt6BOMVAoh81s
	kQ4ImM6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtGb-00034q-PA; Tue, 05 May 2020 08:49:29 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDk-0000UW-G0
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:34 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084631euoutp01c7ad8701d80450e115d231fe4fa237bd~MFXwNA3cu0374903749euoutp01N
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084631euoutp01c7ad8701d80450e115d231fe4fa237bd~MFXwNA3cu0374903749euoutp01N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668391;
 bh=DcbTTpMYNdDMiG2ZexVlXLhvYsFnG/5yFWRERxG8I7U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uMlgOr0Is0KZ75SpPFGxPJ2fOFJe022Bs6AzWapLuyDBuuq8fDysOEnRHZoAi+APl
 KXWzSiWwFlgWNC79btCmw/GK8GD6FBQzvUu5HIhBTBRfCbsUn4F0KzTfj3mCf11kSK
 MEYH5l42TBlrTLxS022CrfMagSIRD9IKH/Alp04Y=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084630eucas1p134838c57e397207e33c78befc62bd2c5~MFXv68E4c2431324313eucas1p19;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 6D.32.60679.6E721BE5; Tue,  5
 May 2020 09:46:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577~MFXvfSh-z2423024230eucas1p19;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084630eusmtrp1fc951c59a5daa795417930504b517572~MFXvehUzt0942309423eusmtrp1a;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-40-5eb127e65a39
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B8.14.08375.6E721BE5; Tue,  5
 May 2020 09:46:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084629eusmtip1760cc1a58ba7ef8bd5730cf657401aee~MFXu0oKrJ0309403094eusmtip1R;
 Tue,  5 May 2020 08:46:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 11/25] drm: radeon: fix common struct sg_table related
 issues
Date: Tue,  5 May 2020 10:46:00 +0200
Message-Id: <20200505084614.30424-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+XYuO1vOTrPLx5LEQYVFmhVxyJAMoSMERXQVslYedORmbE2r
 P3JWy5gXSjFNxaympnNtzmU1rZW3GZrWtGGpmGg3a2RtDhPTnKfsv+d93t/D8/LxEYjQhokI
 qfwMo5BLksQ4H61v+9W94ePa2riNBeXrqeyuFxzqxkADRpUb07lUbaERo1xDc+Ns/XWE0nm6
 Map34jtOVelbOVSZLYLy9A5zKPOIE6N6rCU4ZWgZ5FLPx0exHYtpjeM3TteU1gD6ibcMpR96
 32P0UKadQ9fp0uj+mRGEzuurBHTDWzVO51iqAe02r9q7KJa/PZ5JkqYwirDI4/zEnJ4McDo/
 4GztWwuqBrmkFvAISG6BVU4d0AI+ISTvAThxswJnBw+AnlI98FFC0g1gZeuefwmTYQphoUoA
 x0xe7kLCqH2E+iicDIdalxb36aWkBsD2bD8fhJDtCPye2T+/CCD3QVtn/nwAJVfD/ukGTAsI
 QkBGQs2rGLYtCOpNzxCf5s3ZI46B+fMg6eRCq7obYaFoaGv/hLE6AI7ZLVxWB8KOvCyUDVwC
 cLjLwGWHLAB7LhYCloqAA11TuK8ZIUOg0RrG2lGwYNQ7b0PSH/a5lvhsZE7m1hcgrC2AV68I
 WXoNLLLfX6h9/srx9zQa1mV/wNlXbAWw+HLsNRBU9L+rDIBqsIJRKWUJjHKTnEkNVUpkSpU8
 IfRksswM5r5Vx4zd8whYp080AZIAYj/BYbcxTohJUpTnZE0AEoh4qaBi0hQnFMRLzp1nFMnH
 FKokRtkEVhKoeIVg850vR4VkguQMc4phTjOKf1sOwROpwXKdyTHYubVzMjD1gssgmEkOOcTz
 PxVTrG5udH2xp9mmDi7+0fK6RTSa8TlatlP1lPmUkrtN59VHVb7TFOn33/2m2hXtntzNvHY0
 FjDSmlW8dLMzeJlAa3xza0oTfOTB46yHogN16xXNdzZLgy19H1+WxI+jbat/fn2TORu5SXJb
 jCoTJeHrEIVS8gdZRgIeUgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7rP1DfGGey6yWPRe+4kk8W0O7tZ
 LZaub2S32DhjPavF2/tA7v9tE5ktlnw5z2px5et7NouVq48yWSzYb23x5cpDJotNj6+xWlze
 NYfNYu2Ru+wWBz88YXXg92i99JfNY828NYwee78tYPHY/u0Bq8f97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1ZxejxeZNcAHeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWR
 qZK+nU1Kak5mWWqRvl2CXkbf5XbGgqnCFRtvbmFpYJwk0MXIySEhYCKxYe0v5i5GLg4hgaWM
 Eid2TGaBSMhInJzWwAphC0v8udbFBlH0iVFietNfdpAEm4ChRNdbiISIQCejxLTuj+wgDrPA
 BWaJP5/2M4NUCQsESHz+swRsLIuAqsTtP7uBxnJw8ArYSbRe8ITYIC+xesMBsHJOoPDjS3fY
 QGwhgUKJD+e/s05g5FvAyLCKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMjMH62Hfu5eQfjpY3B
 hxgFOBiVeHgjPq+PE2JNLCuuzD3EKMHBrCTCu+zHhjgh3pTEyqrUovz4otKc1OJDjKZAN01k
 lhJNzgfGdl5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsbA8303
 Juv88v++quYm8yel6AeB68vEm4UtTsnWOQieXOV9Ibje4vdMm2p5wf8bFBgb1GsttY87fDtg
 vmLRaRZ+/cd3a3b0r2eW7FJbr9r1tvJx/xtt1d07Hjbyf13qX6wvvqCu8i8z56ZTc1fdyFCq
 Pqkfm6z+QPhb0uLTXU82PFHY7B0mfV2JpTgj0VCLuag4EQCEtQT6tQIAAA==
X-CMS-MailID: 20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577
X-Msg-Generator: CA
X-RootMTR: 20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014632_875946_C7D841CF 
X-CRM114-Status: GOOD (  14.33  )
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
Cc: David Zhou <David1.Zhou@amd.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
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
 drivers/gpu/drm/radeon/radeon_ttm.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon/radeon_ttm.c
index 5d50c9e..166f84e 100644
--- a/drivers/gpu/drm/radeon/radeon_ttm.c
+++ b/drivers/gpu/drm/radeon/radeon_ttm.c
@@ -481,7 +481,7 @@ static int radeon_ttm_tt_pin_userptr(struct ttm_tt *ttm)
 {
 	struct radeon_device *rdev = radeon_get_rdev(ttm->bdev);
 	struct radeon_ttm_tt *gtt = (void *)ttm;
-	unsigned pinned = 0, nents;
+	unsigned pinned = 0;
 	int r;
 
 	int write = !(gtt->userflags & RADEON_GEM_USERPTR_READONLY);
@@ -521,9 +521,8 @@ static int radeon_ttm_tt_pin_userptr(struct ttm_tt *ttm)
 	if (r)
 		goto release_sg;
 
-	r = -ENOMEM;
-	nents = dma_map_sg(rdev->dev, ttm->sg->sgl, ttm->sg->nents, direction);
-	if (nents == 0)
+	r = dma_map_sgtable(rdev->dev, ttm->sg, direction);
+	if (r)
 		goto release_sg;
 
 	drm_prime_sg_to_page_addr_arrays(ttm->sg, ttm->pages,
@@ -554,9 +553,9 @@ static void radeon_ttm_tt_unpin_userptr(struct ttm_tt *ttm)
 		return;
 
 	/* free the sg table and pages again */
-	dma_unmap_sg(rdev->dev, ttm->sg->sgl, ttm->sg->nents, direction);
+	dma_unmap_sgtable(rdev->dev, ttm->sg, direction);
 
-	for_each_sg_page(ttm->sg->sgl, &sg_iter, ttm->sg->nents, 0) {
+	for_each_sg_page(ttm->sg->sgl, &sg_iter, ttm->sg->orig_nents, 0) {
 		struct page *page = sg_page_iter_page(&sg_iter);
 		if (!(gtt->userflags & RADEON_GEM_USERPTR_READONLY))
 			set_page_dirty(page);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
