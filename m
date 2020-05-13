Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DB31D15C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DtT1KXlgKNd79ZTT2GyKTftlygDo6zYLmdzl03T1hqY=; b=Nvciw25yM/UtKz35K9ZqAw9HPd
	Jtq41XcM/TCG2/6mrmDly42l2U+M4XINve+4dd6Kv/YP5LjrZ0qU+nKdX57AbpEEgAoPl0k3989d2
	KeoIYbCbgnlV4eWnYp1ZWHuTlO/yBx21J0mWGl0I7v133d3RMj59XU8AxeGa5/r60Sb3mPISydrcD
	TABiQJSzj6Zv9Rr7f1w+enlisdgKN++MqVKiRDBqOUc2aseipCxMpUx2GyU8y/P8hd/IsiqSts4Xn
	kM3y/VdPcLY6qAYVE2TOQPbugb8AMMgowxsFILFRM0xCD82XixNZpG7Y8dybxfYcYeUedjWH5Qh5I
	rAOAC6nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYram-0008Fo-8f; Wed, 13 May 2020 13:38:36 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVV-0001Tc-IF
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:18 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133308euoutp0237728e707e1116a7261b01b6460559ce~OmcSPeuTD3216632166euoutp022
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133308euoutp0237728e707e1116a7261b01b6460559ce~OmcSPeuTD3216632166euoutp022
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376788;
 bh=8EZIcd9uOIKS70E4LE4yaht4Uu6+JPLIomKkdRO0ILA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oEHGq0mft05gVvJchVPaM8BpWiQ25cl5ozj/VQfNJTtU2jACbTTUiVxzfjZB2CtC1
 kntdEbyxWLX/VhGfftgHmYUNyoloykEU2Oaejj6MW7oosdHug1Lp+JuzoRa2HFKVoK
 jn4uFTCkxSaTtjKpv05y2kadV1a5QHdy7Kma5BAY=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133307eucas1p104b4da5b5f18f98423f9c0a468132794~OmcR5XWO02350723507eucas1p12;
 Wed, 13 May 2020 13:33:07 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id D8.C5.61286.317FBBE5; Wed, 13
 May 2020 14:33:07 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133307eucas1p1da70ed30775467792f4898ccce829d02~OmcRiFtgT0876608766eucas1p12;
 Wed, 13 May 2020 13:33:07 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133307eusmtrp19f5dcafe20553ece9c41755c6d7ad7f9~OmcRhUAn11049110491eusmtrp1N;
 Wed, 13 May 2020 13:33:07 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-4b-5ebbf71310ff
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B3.1A.08375.317FBBE5; Wed, 13
 May 2020 14:33:07 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133306eusmtip108436382068676e558ded1ef25b74614~OmcQwsTUP0698906989eusmtip1q;
 Wed, 13 May 2020 13:33:06 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 15/38] drm: mediatek: use common helper for extracting
 pages array
Date: Wed, 13 May 2020 15:32:22 +0200
Message-Id: <20200513133245.6408-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTcRTut3u33ZnL2zT8YZExKkzKB1ZeMCUj6oYQ/tEQsrSlFxV1yuYj
 g8j3Y2mlUopkLh/5TlPT2sxX6czJSKf52iw1wwQtdJoJaV7vsv++853vO9/hcDBEoGbbYCGS
 KEoqEYcJOWZoc89v7QnLXyo/p97BQ0SW9gOLeJlfxyaKs7JQYrM5GyGGVn5wiMrqbhahaHcj
 jENTLKJh5hOb0CmfcAhd0gAgat8buERisgthmOxFic6fX9lnLciapzWAfLuqQMk3BQYu2VCV
 wSFbVr+wyc/31CyysfQuObExg5C5o+WAVI3Fc8gHf5zI+01VgFxuOOjNv2p2JpAKC4mhpI4e
 N8yCp4YG0cjC3beSx5eReKDiyQGGQfwkXDP6yYEZJsArAOzo3uAyhRHAkZ48wBTLAFYrVSw5
 4G07Vtqec2kswMsB7C/x2HFU9BWx6QYHd4byBTmHxlZ4CoC9Wea0CMFbEVisXEfpbEvcB6YN
 naY1KH4EtmzGbw/l4+5QMVOOMGG2sLq+Yxvztvh5fTtKz4H4JBfOligAIzoP5xNWTQZLOK9u
 4jL4ANTkZpoMSQBOaWu5TJEJoC4x3+R2g3rtOofeCMGPwTqlI0N7QuPkAMocaQ8cXdhL08gW
 zGnOQxiaD9NTBYz6KCxQv9iJ7fw4aFqHhJq0RdNJ3wE4Nm5kPwS2Bf/DFABUAWsqWhYeRMmc
 JVSsg0wcLouWBDkERIQ3gK330myol16DlcGbXQDHgNCcT4yr/ARscYwsLrwLQAwRWvEv121R
 /EBx3G1KGuEvjQ6jZF1gP4YKrfkuxd+vC/AgcRQVSlGRlPRfl4XxbOJBkcela4r0pSBK7xDw
 LHSuZrSvzEk0XNhVPy2dy/AO9G19xddMtBxGgpdih/sfiewsmy6KEtwbd5WeEz+24+lmw+x1
 x129dsUUbhRFF1Tvs3DVrGX7jvnd0U/HLGpXDZU5IeTcQuA3r0q5p6gt1T/d/YohRXtKohy5
 UMZL1vsIhagsWOxsj0hl4r+hIHpGWgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNIsWRmVeSWpSXmKPExsVy+t/xu7rC33fHGZzt5rToPXeSyWLjjPWs
 Fot6e1ks/m+byGxx5et7NouVq48yWSzYb23x5cpDJotNj6+xWlzeNYfN4nLzRUaLtUfusls0
 tRhb3L13gsXi4IcnrA78HmvmrWH02PttAYvHzll32T02repk89j+7QGrx/3u40wem5fUe9z+
 95jZY/KN5Yweu282sHn0/zXw6NuyitHj8ya5AN4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0j
 E0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYyHVy6xFMzlrmi59Zm5gXE3ZxcjJ4eEgInE133L
 2LsYuTiEBJYyShzf8Z4RIiEjcXJaAyuELSzx51oXG0TRJ0aJgzMPsIMk2AQMJbreQiREBDoZ
 JaZ1fwQbxSxwjFli4+P3zCBVwgKhEo/O/wDrYBFQldj+vwHM5hWwlVjweDkzxAp5idUbDoDZ
 nEDxV3f2s4DYQgL5EnsX72ObwMi3gJFhFaNIamlxbnpusaFecWJucWleul5yfu4mRmBEbTv2
 c/MOxksbgw8xCnAwKvHwWtzaHSfEmlhWXJl7iFGCg1lJhNdvPVCINyWxsiq1KD++qDQntfgQ
 oynQUROZpUST84HRnlcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1Oq
 gdFqk46vx6KDCntX1y14c0vXapqt5aGeGd4d6j7OLtaPprDy71NYKSFauWXq5FW/VjO5zY5Q
 mvRu57/M/Ue4jxzY2pcSwfTVIUBGWo6l8elWZdYzE7ZezuiZzrclZRbrrYlp/y/YzPjXvrjW
 8+an4Ac8P4omtleu9N3+mY1VoTZDr26B3e/dvoeUWIozEg21mIuKEwGWZXHbvgIAAA==
X-CMS-MailID: 20200513133307eucas1p1da70ed30775467792f4898ccce829d02
X-Msg-Generator: CA
X-RootMTR: 20200513133307eucas1p1da70ed30775467792f4898ccce829d02
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133307eucas1p1da70ed30775467792f4898ccce829d02
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133307eucas1p1da70ed30775467792f4898ccce829d02@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063309_750857_A321B5EB 
X-CRM114-Status: GOOD (  13.70  )
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use common helper for converting a sg_table object into struct
page pointer array.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/mediatek/mtk_drm_gem.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
index 6c34c06..14fcd48 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
@@ -233,9 +233,7 @@ void *mtk_drm_gem_prime_vmap(struct drm_gem_object *obj)
 {
 	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
 	struct sg_table *sgt;
-	struct sg_page_iter iter;
 	unsigned int npages;
-	unsigned int i = 0;
 
 	if (mtk_gem->kvaddr)
 		return mtk_gem->kvaddr;
@@ -249,11 +247,8 @@ void *mtk_drm_gem_prime_vmap(struct drm_gem_object *obj)
 	if (!mtk_gem->pages)
 		goto out;
 
-	for_each_sg_page(sgt->sgl, &iter, sgt->orig_nents, 0) {
-		mtk_gem->pages[i++] = sg_page_iter_page(&iter);
-		if (i > npages)
-			break;
-	}
+	drm_prime_sg_to_page_addr_arrays(sgt, mtk_gem->pages, NULL, npages);
+
 	mtk_gem->kvaddr = vmap(mtk_gem->pages, npages, VM_MAP,
 			       pgprot_writecombine(PAGE_KERNEL));
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
