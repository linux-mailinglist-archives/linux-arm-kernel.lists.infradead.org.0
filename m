Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFAD1D1602
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UuMVXb7pAJ5rr41KE3v6ZN/nfUv3xWwKPnF6Qz6YRDw=; b=lYkJO6ZRc4Rt9GE9FXhJbR3p6C
	l40s1d/UypfQDsQtL4a5M1PATbrSKdS/hzgtnv11TM3q+pbtWm908muz5eIP/sPOzE2VFIRQYJGJK
	8ketXZSRrgbAjs2Ya/Gj8ptf08VfnMsXYvHynO/6DD8WKV1k1DMgNDZ2+LubKYO2+G5kRV4koAGVD
	a0f8DBamsoSb8+cyCBlVeWhOvpjkme+iZViObT1Y65PtXK7F1x/Mfz1GxMD7ag83g6Xr117iCh7Tj
	hAZjCX2WmnXS8n20IzU1mMryt6qSIgsNmS+SfrktJ2B4p1yksuwWaB30KT6wyacmL+/c0m89LhbZD
	rP1uz6GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrdp-0004vn-Sk; Wed, 13 May 2020 13:41:46 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVc-0001cM-Pe
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:27 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133314euoutp026d2998880cb7082529f1a9a5c404a4b6~OmcYmiBcM0033500335euoutp02W
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133314euoutp026d2998880cb7082529f1a9a5c404a4b6~OmcYmiBcM0033500335euoutp02W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376794;
 bh=ftlkBS8VBSgkdSrodZQPgIE+CocBJx3UwNrqNvsfVeA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZhtUQdGz8EC8yB+wWZLEe8a6/JFE0ziDuGqEMlmzKQ+sOrL1GTJ94Qdo2fu38lz7M
 e4ntmy1NhdHA/ooSp5rTsz40nL8lbEu6g16/Lz3H9BruFDewDkWd+sIQfCEn8JdhMq
 h//BXmHTlVdPlTpXO+kyNl9JnjGPwVaUGJb62HCk=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133314eucas1p12b362cce72951b2e10d5b146ddad21b8~OmcYU4Aiq0384603846eucas1p1W;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 31.D5.61286.A17FBBE5; Wed, 13
 May 2020 14:33:14 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6~OmcYDZxCx2633026330eucas1p1N;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133314eusmtrp126725da789068de919a73c6c40156f9a~OmcYCxzPl1049110491eusmtrp1X;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-65-5ebbf71ad87a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6C.1A.08375.A17FBBE5; Wed, 13
 May 2020 14:33:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133313eusmtip13987a33839912ac1a5a620fabb4c42ad~OmcXcH7xo2932629326eusmtip1h;
 Wed, 13 May 2020 13:33:13 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 24/38] drm: v3d: fix common struct sg_table related issues
Date: Wed, 13 May 2020 15:32:31 +0200
Message-Id: <20200513133245.6408-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRmVeSWpSXmKPExsWy7djP87pS33fHGZyfJWfRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLA42XGS1Wrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x6Pp/TE2jzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRXDYpqTmZZalF+nYJXBmTd1xgK7gvWtH74zRLA+MMoS5GTg4JAROJ7e+PMHUxcnEI
 CaxglJj6+TkbSEJI4AujxKQXqhCJz4wSs54vYe9i5ADrmLlSHSK+nFHi0ZkrbBAOUMPBz22M
 IN1sAoYSXW+7wCaJCLQySpzo5QEpYhbYySSxqHMPWJGwgL/E+v3NzCA2i4CqxMm9x8HivAK2
 Ei/+TmKGuE9eYvWGA2A2J1D81Z39LCCDJAQOsUvs3POIBaLIReLMkcmsELawxKvjW9ghbBmJ
 05N7oBqaGSUenlvLDuH0MEpcbprBCFFlLXHn3C82kOeYBTQl1u/Shwg7Suxdt5UJ4mc+iRtv
 BUHCzEDmpG3TmSHCvBIdbdBwVJOYdXwd3NqDFy5B3e8h8XbbAnZICB1mlOicOp19AqP8LIRl
 CxgZVzGKp5YW56anFhvmpZbrFSfmFpfmpesl5+duYgQmpNP/jn/awfj1UtIhRgEORiUeXotb
 u+OEWBPLiitzDzFKcDArifD6rQcK8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJWSCA9sSQ1
 OzW1ILUIJsvEwSnVwCh4Us5NY7+2a1zExZvaIndnz87jPGL80j+t2MaloN9jYWnpZBnnffPn
 GUfu5JG25YqJM7jEtN435VDOhnceLhcuP555zWT3xejdt3lnveqrW7L9jIrmn8DQT/Xn2/l2
 MM+p6UvmcTfq3xJq6OwkULoimmFNbcjfrTuepT540jT79SrewKXmK5VYijMSDbWYi4oTAerz
 /PZEAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7pS33fHGbydyGvRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLA42XGS1Wrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x6Pp/TE2jzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehmTd1xgK7gvWtH74zRLA+MMoS5GDg4JAROJmSvVuxi5OIQEljJKbJkxn72LkRMoLiNxcloD
 K4QtLPHnWhcbRNEnRom5P/tYQBJsAoYSXW8hEiICnYwS07o/soM4zAL7mSQuHzkFNkpYwFfi
 0NTlTCA2i4CqxMm9xxlBbF4BW4kXfycxQ6yQl1i94QCYzQkUf3VnP9gGIYF8ib2L97FNYORb
 wMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzBCth37uXkH46WNwYcYBTgYlXh4LW7tjhNi
 TSwrrsw9xCjBwawkwuu3HijEm5JYWZValB9fVJqTWnyI0RToqInMUqLJ+cDozSuJNzQ1NLew
 NDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwJg0LWLhGbmDu+OOvL8vvqioaf3t
 BZyKqi7NHzeFL4i884V1+bat2e8WKtXZ/L56hWePYuahYtf9us+jHuQVealX/Pw8b+H1Fc++
 Zrr7+PvnzD9nYzBpRtKxpVPs/279FhX3f2veyoUPU74uXXx1r2b5XzZLd+OqC+687LvaxaZ5
 SLbv7M0PStutxFKckWioxVxUnAgAchFgG6YCAAA=
X-CMS-MailID: 20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6
X-Msg-Generator: CA
X-RootMTR: 20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063316_978360_66190338 
X-CRM114-Status: GOOD (  15.29  )
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>,
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/v3d/v3d_mmu.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_mmu.c b/drivers/gpu/drm/v3d/v3d_mmu.c
index 3b81ea2..175c257 100644
--- a/drivers/gpu/drm/v3d/v3d_mmu.c
+++ b/drivers/gpu/drm/v3d/v3d_mmu.c
@@ -90,19 +90,16 @@ void v3d_mmu_insert_ptes(struct v3d_bo *bo)
 	struct v3d_dev *v3d = to_v3d_dev(shmem_obj->base.dev);
 	u32 page = bo->node.start;
 	u32 page_prot = V3D_PTE_WRITEABLE | V3D_PTE_VALID;
-	unsigned int count;
-	struct scatterlist *sgl;
+	struct sg_dma_page_iter dma_iter;
 
-	for_each_sg(shmem_obj->sgt->sgl, sgl, shmem_obj->sgt->nents, count) {
-		u32 page_address = sg_dma_address(sgl) >> V3D_MMU_PAGE_SHIFT;
+	for_each_sgtable_dma_page(shmem_obj->sgt, &dma_iter, 0) {
+		dma_addr_t dma_addr = sg_page_iter_dma_address(&dma_iter);
+		u32 page_address = dma_addr >> V3D_MMU_PAGE_SHIFT;
 		u32 pte = page_prot | page_address;
-		u32 i;
 
-		BUG_ON(page_address + (sg_dma_len(sgl) >> V3D_MMU_PAGE_SHIFT) >=
-		       BIT(24));
-
-		for (i = 0; i < sg_dma_len(sgl) >> V3D_MMU_PAGE_SHIFT; i++)
-			v3d->pt[page++] = pte + i;
+		BUILD_BUG_ON(V3D_MMU_PAGE_SHIFT != PAGE_SIZE);
+		BUG_ON(page_address + 1 >= BIT(24));
+		v3d->pt[page++] = pte;
 	}
 
 	WARN_ON_ONCE(page - bo->node.start !=
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
