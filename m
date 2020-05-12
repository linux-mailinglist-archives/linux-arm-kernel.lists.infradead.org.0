Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6225C1CF155
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RSb+RIi+rVjSAXF5+wfUuuK5ItavQSYqOOIzBDdTZFw=; b=VtW45XMVJvELsFYaQTfxntLFpN
	gKKGTYzb/Prjli3BZ4dglRZ2YMu4UhyGCzrX7aNu8Al3XB1+x9FoWPHSkFMlp9ApEazz7WF0/IAkk
	rwDL2ZzxvBTqnB9LtpNEr/iELAEJ5kojFVlgZ64LOM9WEBgwI69bkbmihmeNjRTMH6TOvMUPSclaw
	0MXaZd+ihmJ86zjQkEOwukRqBnHEs2bQ9yxFgnZQsg0/l4gNbmDI3XXN+ssGjQfxvDbaSvAnkMiwb
	dXwBfKjKVTPLS3RDQpdeTk1OZZs6NG13FOto3bKE4r2RIJfOn4Dvsb1z1mrN9UauDSSF2PVC63LvH
	2K1WYUTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYR2b-0004Cf-LO; Tue, 12 May 2020 09:17:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYR2P-0004CD-3T
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 09:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=VL4LQ1ISezq2D47CSd0K/DfpoScEMrGkXUPKP1u1YRw=; b=Hti0j7epHZYJ6LrSGRD7mK4UeA
 CLW+Yf3YkIJPA8QVLo+1wnGf36qs1k+oFxUxNxNS5pw4hz4O2pu2OJLfnPZlE/hpPEDdJ8I+oZdst
 f/KNqHZ8C6Mphd6DoBbh1eWDhcRo+bwZ3dN0VvCSZQCsNL68OHe/SnhhJQg+PJex16RapZLV4wEYj
 fvNVbbvw7NjMXH1030jUQ3OB/EeidaSMaByAoz0dIbjfoeEeJhn2e4g2ELFuIO/uvm0ZeUQbaSAkL
 Pbn0DJ35fDAflzWvzrFMRn6+jx2vC5qbj4zUv722s8V5DKyG53Db64jMwng4YGiQkyG2KhXKQHXFL
 FW5JsO4A==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn3-0006GJ-LH
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:33 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090121euoutp012323f6f222b7b52fcecc9bc78938450b~OPFt0Ewjg2641626416euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090121euoutp012323f6f222b7b52fcecc9bc78938450b~OPFt0Ewjg2641626416euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274082;
 bh=VL4LQ1ISezq2D47CSd0K/DfpoScEMrGkXUPKP1u1YRw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f48x/tnwjCUXeKnli3cEUf0zWoBRcuGgHvKI/KGdtTpPOhhIwNsJhCIgNdBQVf18V
 Mq/50QES4dVTHrl+WGScYNK5pnrUsBO6KKtBeFn3lmsn95kV/p1MDhtncd7sUHVjPk
 r/eV5yddNams+x93RdQggeFUZ0x5fMwUAGxzYHSM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090121eucas1p2e0453552b936596e63c57e2ffe651687~OPFtkCzEu2662326623eucas1p2Z;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 26.67.61286.1E56ABE5; Tue, 12
 May 2020 10:01:21 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608~OPFtOVjFD3099030990eucas1p2J;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090121eusmtrp114eb01c10205f43f3b8ec4069a88301c~OPFtNqoRl0188101881eusmtrp1S;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-91-5eba65e14e27
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FF.F2.07950.1E56ABE5; Tue, 12
 May 2020 10:01:21 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090120eusmtip125f29dafed6f117e46b6797a94f9c83a~OPFss8QdI1148011480eusmtip1Z;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 24/38] drm: v3d: fix common struct sg_table related issues
Date: Tue, 12 May 2020 11:00:44 +0200
Message-Id: <20200512090058.14910-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRju2znbzqar07T80EpYGWSpzRsHDCkQOv+M6FeRNvOgw2s7as1+
 ZJql85LOQpHIqeXUadOpSy3TabpiMUMtFLM1VoKCeZkapVmbZ+W/5/byPHx8GCLsYHtj0tQM
 SpYqSRZx+Kh+5OdogJXqjTmpGPYnSsxvWUR7lZZN/NGXI8TE2iKHGLg9DogmzTCLUPVHEKsT
 Vhahs31kE+O9jzhE6+sZLmFY+so+7U7mLo5wyJbHLYDsW1eh5PP1L2zSUmRkkR1PbpHTWzaE
 rJhUA/LFVA6HLO1sBqRdd+ic20X+qXgqWZpFyYIir/ATJ+93cdI/77vxYy4PyQGVQgXgYRAP
 hfWqDZYC8DEh3gjgTHUnypBVALW1s1yG2AHU6BXov5NaQxNgDDWAo23zOyem6RmWM8XBxVCx
 oOA4sSeeD+CbEndnCMF7WLCu8CVwGh54NKwytHOdGMX94Eb35rYuwCOhqqGBzdT5Qk3bAOLE
 PIduqdncboP4Ky60dPUgTCgKPm2d5zLYA84bO134ADRVFLsO8gC0mlu5DCkGcDy3CjCpCPjJ
 /MuxFXPsOwa1vUGMfAY+yL0HnDLEd8PJhb1OGXFApb4SYWQBLLjresmjsNr47H+t4f2YaxoJ
 J1wThPgwcJAltAz4Vu+UqQBoBl5UJp2SQNHiVOp6IC1JoTNTEwKvpqXogOMrmbaMK91gbSxu
 EOAYELkLCoJ7YoRsSRYtTxkEEENEnoI7UockiJfIsylZWqwsM5miB4EPhoq8BCF1c5eFeIIk
 g0qiqHRK9s9lYTzvHBBtPTsevTiHzm4WKYfafytt58uu+UvDSXGV33cfzYVSt357duxDnenI
 0OG44xoMF+//wLeZ0/KnDipDS4NVXuVNJxp5QTe1eWr7RIvMEyzzkpfVe4wh8XM2+0pSYmGN
 Xhl2aVeAhlZFfZPml2mDwuX1YaPvwGQL3Scvt1pEKJ0oEfsjMlryF/RPXCNGAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7oPU3fFGcx7KWzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLA42XGS1Wrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x6Pp/TE2jzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehk3+reyFdwTrfj+spm5gXG6UBcjJ4eEgInEwoMrGbsYuTiEBJYySmx538wGkZCRODmtgRXC
 Fpb4c62LDaLoE6PErQnHGUESbAKGEl1vIRIiAp2MEtO6P7KDOMwC+5kkLh85xQ5SJSzgKzHt
 UQ9YB4uAqsTvHX/AbF4BO4kFy5ZBrZCXWL3hADOIzQkUvz//DwuILSRQKPHo6luWCYx8CxgZ
 VjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgTGyLZjP7fsYOx6F3yIUYCDUYmHt8NoZ5wQa2JZ
 cWXuIUYJDmYlEd6WTKAQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wPjN68k3tDU0NzC0tDc
 2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6OZjejcJaFac5a9mLLMOeuJxv8/WxVU
 2zn5DGbKLJdMfPXLulT4F+PEHKYQZvV3f++v2n3bccLtW2H3jEv+P9f8b/fK5fC7C4L7PWzO
 nnq4z7Rfq+LqyY3iZ79q6RzrfhJVtCP4RNCu7zbuOmEp5Rb665ILpD2yFrgcO71hrkrHq4df
 q/5dqIlSYinOSDTUYi4qTgQACgdpdqcCAAA=
X-CMS-MailID: 20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608
X-Msg-Generator: CA
X-RootMTR: 20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_100130_076608_6B0DC599 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
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
