Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BEB1C50FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8niH6dV1r3Hih3rJuIfR2T/+7PWk4EYwg4lL8a2NLcw=; b=rFIuzIKfWFy5R7WFyWkKsl+F/N
	v3isKB0rXUCUD+y4kzmIow34cgJNdrcNCGWpw3PWcyxBGJGDiLXp64r5xkLJJqxAOava9lwFDSjZB
	6itce5+C174zd3Qz8pr1P5I9Unohk4EeIGZbDd8K0pt1PWY2uAGekN0Ih5ya3EQTJOLh8tcfeQxba
	8CFFsRqNWz1z0X81Jsg5D2wB9HM0V+lYqI7RgqN5Fs1uZn67/Miwz3O1jZEDBqEWNe/71qyFk+L11
	cj0HUrv87Ajljpk9pdmzp4CuenmDdDxp2oULFDUrRSYZunLCnORdhhGhUz9GCn8lqHh08Hj8SMMOR
	WCiCqyOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtEa-00018C-DB; Tue, 05 May 2020 08:47:24 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDf-0000Qk-TT
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084626euoutp029035f9fcecf45b0c43a660a83cd90a2c~MFXrnUV0b2638126381euoutp02B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084626euoutp029035f9fcecf45b0c43a660a83cd90a2c~MFXrnUV0b2638126381euoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668386;
 bh=b2pg8Rv0a1USjl2s1bLAigSIqJD0SkZM8IxmmbNL0x8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rBaNXm5PVX6o9AvlTtruDJIM+3u+zhRjQpcIvQq+1Fl7+9hzfpJAsMtLYNvXhyTLM
 BEIBgPVvFWIslxTBsLW/wWOVy+CIs0P9ymfuJXVM12LxXIONrPMRbo1d43UduDKNVq
 lXrfbUJkuXaMqCvshKXcJORpsVbRemosf8KBlGVY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084625eucas1p1a8113069f3d213d0b48a64bc1f1e3c3a~MFXrT_kcc2424624246eucas1p1z;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 77.32.60679.1E721BE5; Tue,  5
 May 2020 09:46:25 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00~MFXrB5SI71348713487eucas1p2R;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200505084625eusmtrp2b3e6346435845a0bbc1711ba1e415204~MFXrBLYGm0573005730eusmtrp2E;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-2c-5eb127e1cc63
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B2.21.07950.1E721BE5; Tue,  5
 May 2020 09:46:25 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084624eusmtip10730825044d8cb0f9ddd84924e6f66d1~MFXqYDOGP0695906959eusmtip1B;
 Tue,  5 May 2020 08:46:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 03/25] drm: amdgpu: fix common struct sg_table related
 issues
Date: Tue,  5 May 2020 10:45:52 +0200
Message-Id: <20200505084614.30424-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEKsWRmVeSWpSXmKPExsWy7djP87oP1TfGGay5bmjRe+4kk8W0O7tZ
 LZaub2S32DhjPavF2/tA7v9tE5ktlnw5z2px5et7NouVq48yWSzYb23x5cpDJotNj6+xWlze
 NYfNYu2Ru+wWBz88YXXg92i99JfNY828NYwee78tYPHY/u0Bq8f97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1ZxejxeZNcAHcUl01Kak5mWWqRvl0CV8ah7X+YC05KVtyZ9JyxgXGvaBcj
 J4eEgIlE26RtzF2MXBxCAisYJbYvW8QE4XxhlNhz/DxU5jOjxOeff1hhWs7PWwBVtZxR4ubj
 jexwLau3XmIDqWITMJToetsFZosItDJKnOjlASliFjjBLPG++zZYQlggSGLGzO3MIDaLgKrE
 v7bF7CA2r4CtxLtlp5gh1slLrN5wAMzmFLCTeHzpDhvIIAmBS+wS63Z0sEMUuUj0TjkMZQtL
 vDq+BcqWkfi/cz4TREMzo8TDc2vZIZweRonLTTMYIaqsJe6c+wU0lgPoPk2J9bv0IcKOEju2
 r2UCCUsI8EnceCsIEmYGMidtm84MEeaV6GgTgqhWk5h1fB3c2oMXLkHd7yFxePInFkgIHWWU
 2NX+lXECo/wshGULGBlXMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525iBKas0/+Of9nBuOtP
 0iFGAQ5GJR7eiM/r44RYE8uKK3MPMUpwMCuJ8C77sSFOiDclsbIqtSg/vqg0J7X4EKM0B4uS
 OK/xopexQgLpiSWp2ampBalFMFkmDk6pBka5s/rptx7lH958Jc1s9h/77GMhvb6LXrx59nKf
 Eo+0W8yEaWub5eeZGk82O/TUnetut9jC13emn19kqjg5eMZMtzkaYRLhp6ySznHXdSrszPvk
 9zVUXpSH1SP15BpNhpq2+ztE5H9N3ME/MffrFe6rW8s3+/fzqjWsVso5f3nu+j6TXFnHiC4l
 luKMREMt5qLiRADC4lkjVQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xu7oP1TfGGRz8L2PRe+4kk8W0O7tZ
 LZaub2S32DhjPavF2/tA7v9tE5ktlnw5z2px5et7NouVq48yWSzYb23x5cpDJotNj6+xWlze
 NYfNYu2Ru+wWBz88YXXg92i99JfNY828NYwee78tYPHY/u0Bq8f97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1ZxejxeZNcAHeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWR
 qZK+nU1Kak5mWWqRvl2CXsah7X+YC05KVtyZ9JyxgXGvaBcjJ4eEgInE+XkLmLoYuTiEBJYy
 Six59YgNIiEjcXJaAyuELSzx51oXG0TRJ0aJaYd/MoEk2AQMJbreQiREBDqBEt0f2UEcZoEL
 zBJ/Pu1nBqkSFgiQOHTnBTuIzSKgKvGvbTGYzStgK/Fu2SlmiBXyEqs3HACzOQXsJB5fugN2
 hpBAocSH899ZJzDyLWBkWMUoklpanJueW2ykV5yYW1yal66XnJ+7iREYQduO/dyyg7HrXfAh
 RgEORiUe3g1f18cJsSaWFVfmHmKU4GBWEuFd9mNDnBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJL
 iSbnA6M7ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDY2T3588v
 LoRsvnioWkXmwM9uKck+SVtRtY8dP3v+Sk8WbZW4/iCszSl70Wdf4SOZMZUzglLDRSNu6Jns
 /b6ofI5vFQ9L+P/SLXacn2vVpSVOmi5fnx+bprLec0dgzIozcYdZVj6+6vDp9e/nzsXWwq9n
 bX/rm7X+ueSNOk3f5aymu1/b7XsvqcRSnJFoqMVcVJwIAJs5Bli2AgAA
X-CMS-MailID: 20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00
X-Msg-Generator: CA
X-RootMTR: 20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014628_227052_24C23642 
X-CRM114-Status: GOOD (  15.61  )
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
 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c | 6 +++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c     | 9 +++------
 2 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
index 43d8ed7..eca5628 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
@@ -307,8 +307,8 @@ static struct sg_table *amdgpu_dma_buf_map(struct dma_buf_attachment *attach,
 		if (IS_ERR(sgt))
 			return sgt;
 
-		if (!dma_map_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
-				      DMA_ATTR_SKIP_CPU_SYNC))
+		if (dma_map_sgtable_attrs(attach->dev, sgt, dir,
+					  DMA_ATTR_SKIP_CPU_SYNC))
 			goto error_free;
 		break;
 
@@ -349,7 +349,7 @@ static void amdgpu_dma_buf_unmap(struct dma_buf_attachment *attach,
 	struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 
 	if (sgt->sgl->page_link) {
-		dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents, dir);
+		dma_unmap_sgtable(attach->dev, sgt, dir);
 		sg_free_table(sgt);
 		kfree(sgt);
 	} else {
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index eff1f73..f71f97f 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -1043,7 +1043,6 @@ static int amdgpu_ttm_tt_pin_userptr(struct ttm_tt *ttm)
 {
 	struct amdgpu_device *adev = amdgpu_ttm_adev(ttm->bdev);
 	struct amdgpu_ttm_tt *gtt = (void *)ttm;
-	unsigned nents;
 	int r;
 
 	int write = !(gtt->userflags & AMDGPU_GEM_USERPTR_READONLY);
@@ -1058,9 +1057,8 @@ static int amdgpu_ttm_tt_pin_userptr(struct ttm_tt *ttm)
 		goto release_sg;
 
 	/* Map SG to device */
-	r = -ENOMEM;
-	nents = dma_map_sg(adev->dev, ttm->sg->sgl, ttm->sg->nents, direction);
-	if (nents == 0)
+	r = dma_map_sgtable(adev->dev, ttm->sg, direction);
+	if (r)
 		goto release_sg;
 
 	/* convert SG to linear array of pages and dma addresses */
@@ -1091,8 +1089,7 @@ static void amdgpu_ttm_tt_unpin_userptr(struct ttm_tt *ttm)
 		return;
 
 	/* unmap the pages mapped to the device */
-	dma_unmap_sg(adev->dev, ttm->sg->sgl, ttm->sg->nents, direction);
-
+	dma_unmap_sgtable(adev->dev, ttm->sg, direction);
 	sg_free_table(ttm->sg);
 
 #if IS_ENABLED(CONFIG_DRM_AMDGPU_USERPTR)
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
