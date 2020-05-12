Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529221CF156
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yHomWA5TwjEZkLj4WJqrScenCh1INzWiyaJydX+cLeM=; b=e1vqmbqtHD+lczl6bgqrp8tZ2p
	KTjAetDhAfVG3sQjlaSfQfAhopcmpqaTgZu96dEIWlYYTf9lv7CAYBODuqS6Cb0mKXV8UHE+/kakZ
	x7FG6jaQ83ROFui3XTh6+zonXR94p6illmVTYpQqW1uacPiqcz3Y6Dch9o2plrZJO4d2nok7EIGA9
	RDDXF8zlfSPf4xRH1+48fOx9IiEEuN1LqVABWMXSTgGUFQEX+nVDd7FyWgMPKorbM9kth853iJ3W1
	EmZ0wuX7AjWtyxSfaJTmPnZ6d6zNphl1xn42XiVK08nrcDiYfQc6gQpX0bkDw1fxbdBVxCQg3KYxf
	/yDP4zXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYR2m-0004MN-BE; Tue, 12 May 2020 09:17:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYR2Q-0004CD-BM
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 09:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5NGMaE4Pq4Gr2vd+9hsaDXuy+T7oe1nlC85nQzi6s74=; b=QdMQOrlbLkErj5seDgtOXmEVLR
 MRv49iHWgdmRdnt+O0FIqwcyR2zTIKAwZTRAIpuO885CkkcCL/Ou6/acd6Ti2AFrWjtKS/OK06qjv
 z2/lRrPTfwq07AiBbSTxZV5BtCCBeBNjToQcmrus+VqXtmFV7ez89m+sA6CAj1TBsJdZH30Mgtbby
 TyzcmxY2XreGhhkckq0E7KCHOheY5WyGOTu81VO0qdUtZ53aH9bAcegGI/JMgYtgavUKpt69XZKC2
 tvKFOipVCJErnXsH7d/ybgQ0dktGxOd19Cr7FqsvAXGJYrSUXp2zZTxDPYBLCswhzorxpFlCoDg3d
 uVd3+H+Q==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQnC-0006HO-Vw
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090128euoutp0219618ca123835439b1c7802afecf33d2~OPFzjBKX40523105231euoutp02g
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090128euoutp0219618ca123835439b1c7802afecf33d2~OPFzjBKX40523105231euoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274088;
 bh=5NGMaE4Pq4Gr2vd+9hsaDXuy+T7oe1nlC85nQzi6s74=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IvcD8/ZcabHxbl72bWaWdsYAopPN1EQoGJ60nBaZkzpOyRmcznVfeopawWGtV34e0
 VyOfaIfaWxhobpdbLpsWj3Nug3kIoLsYEnJIwjZ4LW/vPpYm3HcW9VSSAZvYfrtXuT
 rpY8AiCkbP3dJSNPelkrRdBth6Cft82hfJ2p+JZA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090127eucas1p29cf72b429b59cdb7355ad7d1473bda4b~OPFzRZ7iF2661826618eucas1p2j;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 3D.67.61286.7E56ABE5; Tue, 12
 May 2020 10:01:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3~OPFy9MUqQ2838128381eucas1p1P;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090127eusmtrp1a3807a059ca1740ced7a4d55072ad119~OPFy8bt4b0183401834eusmtrp11;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-ae-5eba65e70eaf
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E6.03.07950.7E56ABE5; Tue, 12
 May 2020 10:01:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090126eusmtip178d4ef6401588445a17a097376736bca~OPFyE8_nj1257212572eusmtip1x;
 Tue, 12 May 2020 09:01:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 33/38] staging: tegra-vde: fix common struct sg_table
 related issues
Date: Tue, 12 May 2020 11:00:53 +0200
Message-Id: <20200512090058.14910-33-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0iTURjGO/uuk2afU/BgYTAyS8hbQaeMKCo6CUH1R2EXbeWXl9yUfWkp
 UZoWNjUyqdbKKRpa3rbmWjUt71pq66KEkTrLQrSraTexy9bX5b/f+5z3OQ/P4bCEfITyYePU
 B3iNWpmgoN1Ia/s3+6IR3hYZ/O51CMqz35OgazojhX5a8wlU3z3FoMrxYYB6P72nUWapkUZX
 K9skqLghDGXpS0g02ftcgszDTyjUY7tEo1zTdQqdnNTTqLp1gEFl5mkJavrwkkLfbAZylSeu
 MlQBPHinhcS3PxeT+JZ+gMHmipM0vvF5iMINhVUMduR0SHDt5aP42Y9hAhf0lQNc9zSdxnmZ
 72h8ylIB8ITZd9Os7W4rovmEuBReE7Ryt1us5dQrMmmcO1Sb42DSgc5dC1gWckvg/aYoLXBj
 5dwVAL/XZwNxmASwp+gCJQ4TAE4Yssm/joKzy0S9HEBb8xvmn6PTMeZ0SFmaC4Hat1raxV7c
 cQDv5s10McF1k7D762IXe3IRMDdvnHQxyfnBp52Nv/dl3EpoOjP4+x7IzYWVpkbCxVKn7iia
 Jl1hkMtnYd/XSSAurYUv2jJIkT3hWIeFEXkO7CrI/WPIBPC5vZoRh1xnuWO6P+4w2G+fol3d
 CG4hNNqCRHk1nDYW0WJld9j31kMs4A7PWM8ToiyD2Sfk4vZ8qO+o+Rfb9PAxITKGFx6YaPGB
 2gC0GtqZ02Cu/n9YMQAVwJtPFlQxvBCi5g8GCkqVkKyOCdybqDID5/fr+tHx8Sb49HhPM+BY
 oJgpyw69FSmnlClCqqoZQJZQeMmy4pySLFqZmsZrEqM0yQm80Axms6TCW7a4ZHSXnItRHuD3
 83wSr/l7KmGlPunA58sMYV6l31LVfZ0uOGOn9/J+8tJ06Pes9ROvh8Jlm63YgOfFn4u46HGo
 q+5lzZGhmK37Wi3sGr+oHFn+F6lxja1c3TIatO3RyIbQ1rMO++EFYE5ZeOEW35KNfgFVvqrw
 tPh1Pe7+z5hef2pEWrfjZqPinDajZMZU6VikKbPaAhSkEKsMCSA0gvIX/dPjWHoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFIsWRmVeSWpSXmKPExsVy+t/xu7rPU3fFGew/JW3Re+4kk8XGGetZ
 Lf5vm8hssefML3aL1R8fM1pc+fqezaJ58Xo2i5WrjzJZLNhvbdEyaxGLxZcrD5ksNj2+xmpx
 edccNoueDVtZLTq/zGKzWHvkLrvFsk1/mCwOfnjCavFz1zwWB2GPNfPWMHrc23eYxWPvtwUs
 Hjtn3WX32LSqk81j+7cHrB77565h97jffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP3uZ3bB59
 W1YxenzeJBfAH6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mW
 WqRvl6CXsaXvKUvBR4GKzd332RsYZ/B1MXJwSAiYSEyeatnFyMUhJLCUUeLB43bGLkZOoLiM
 xMlpDawQtrDEn2tdbBBFnxglZnf/ZAJJsAkYSnS9hUiICHQySkzr/sgO4jAL3GCRmLvlAztI
 lbBAuMTZF5+YQWwWAVWJm6cOsIHYvAJ2Ehsm3YNaIS+xesMBsBpOoPj9+X9YQGwhgUKJR1ff
 skxg5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMB63Hfu5ZQdj17vgQ4wCHIxKPLwd
 RjvjhFgTy4orcw8xSnAwK4nwtmQChXhTEiurUovy44tKc1KLDzGaAh01kVlKNDkfmCrySuIN
 TQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwiq5apvhvq99i+812f2y9
 i9+/fLOft7Pv2DomAQH+f+wTryZvXtdWEbXVSXHSRsZFYW4su2cyBZw9NfvwSqOkhp0xy2Yy
 CwldF7iw5HmzhMiFuRczAvr2mj1z+NV5OPX6g1zBjP5EFpWpGkf21KxVOLxdIfpv0oJFHVd2
 Gc5cXRj99cu56XlfI5VYijMSDbWYi4oTAfqsapLdAgAA
X-CMS-MailID: 20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3
X-Msg-Generator: CA
X-RootMTR: 20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_100139_692611_0AF108A7 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
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
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/staging/media/tegra-vde/iommu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/iommu.c b/drivers/staging/media/tegra-vde/iommu.c
index 6af863d..adf8dc7 100644
--- a/drivers/staging/media/tegra-vde/iommu.c
+++ b/drivers/staging/media/tegra-vde/iommu.c
@@ -36,8 +36,8 @@ int tegra_vde_iommu_map(struct tegra_vde *vde,
 
 	addr = iova_dma_addr(&vde->iova, iova);
 
-	size = iommu_map_sg(vde->domain, addr, sgt->sgl, sgt->nents,
-			    IOMMU_READ | IOMMU_WRITE);
+	size = iommu_map_sgtable(vde->domain, addr, sgt,
+				 IOMMU_READ | IOMMU_WRITE);
 	if (!size) {
 		__free_iova(&vde->iova, iova);
 		return -ENXIO;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
