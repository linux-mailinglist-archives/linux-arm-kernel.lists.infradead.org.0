Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146121D15A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mDpL7NSUQDWQsQjd6wdUppa47jJD448kwxj7xJ7jeao=; b=FBREZYhT9eB3zKAYissaxiSahG
	a2V9/QKoeQ3r5Ifyv++LTwLlqHwNfj+wn8iX5LTrUHcDTZ5ZR3SZy2l/Nm3IK0nx0IACmt1MiNOAb
	A1PvZ0cztgucfDtDZjBJ1HC0yK2Nq5mOqyg46wZF5kPo14Li2RgVlb0xkBfoSqjfx32WLU0vYLn/O
	OQJUk83Y2nqVppcM43gQbeKBNUvN7jkjDwVD+pXmXNKNKI47xLMfBO94bLzhR6aub9Rk7D4gOBuSc
	O7mq87FtqpHbSMC25craiLxUr4lIILTT6t5V8DDUbbN5T4aakgaOmOkze8BlqG4w76T1ANck1hVEW
	XW8yKHaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrYr-0006Su-5C; Wed, 13 May 2020 13:36:37 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVR-0001PQ-Bb
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:08 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133304euoutp012a05fd19e71f2f3508ccd77cceeae73c~OmcOkxWAn2140621406euoutp01G
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133304euoutp012a05fd19e71f2f3508ccd77cceeae73c~OmcOkxWAn2140621406euoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376784;
 bh=u43bSmXm1rHUf8SYhMFLxk81xdh7y6631lLl0ikPwaY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AxktBt90t20JqgheS+NxwSIsrojE+1nBfoglFBPvNWSRwBTVa2/Q2c7KAou08pxwj
 bFdSbT84EX2//UmUGi8iXrnpnl2nI97C9fdHUMNpa2Ktw0gyI2UgTKq6tCl7RpEFIL
 lswhGMPlKn3WQ9AM7mObfKpPZrS3mXfLASywus2g=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133303eucas1p1b8a3a0a9825af31ba19b0341f328aa56~OmcOQJc492350723507eucas1p1q;
 Wed, 13 May 2020 13:33:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 65.01.60679.F07FBBE5; Wed, 13
 May 2020 14:33:03 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019~OmcN8Gns52350623506eucas1p15;
 Wed, 13 May 2020 13:33:03 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133303eusmtrp1d098a14ab77d5bb25a786d9565f5798c~OmcN7ZvPR1011910119eusmtrp17;
 Wed, 13 May 2020 13:33:03 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-2f-5ebbf70f6d6b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 10.1A.08375.F07FBBE5; Wed, 13
 May 2020 14:33:03 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133302eusmtip19bb2d9f6ce9d2ea12ae27f03f3db0dee~OmcNQj13R0693406934eusmtip1P;
 Wed, 13 May 2020 13:33:02 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 10/38] drm: exynos: use common helper for a scatterlist
 contiguity check
Date: Wed, 13 May 2020 15:32:17 +0200
Message-Id: <20200513133245.6408-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djP87r833fHGUy5rm7Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCuKyyYlNSezLLVI3y6BK2PHz39MBbd5Ko7dOsHcwHiIq4uRk0NCwERi3Y9j
 TF2MXBxCAisYJY6fvMAO4XxhlPg/dxo7SJWQwGdGiaUvarsYOcA6fq8ogahZziixoPEiC1zD
 xwfHWEEa2AQMJbredrGB2CICrYwSJ3p5QIqYBTqYJa5NnM8IkhAWiJW43/yZGcRmEVCVWHy6
 B6yBV8BWYvrBj6wQ98lLrN5wAKyGEyj+6s5+sG0SAsfYJY7t6GeGOMlFYsVBBYh6YYlXx7ew
 Q9gyEqcn90DVNzNKPDy3lh3C6WGUuNw0gxGiylrizrlfbCCDmAU0Jdbv0ocIO0pc3feDEWI+
 n8SNt4IgYWYgc9K26VBreSU62oQgqtUkZh1fB7f24IVLzBC2h0TP9Q5WSAAdZpS4s7ubcQKj
 /CyEZQsYGVcxiqeWFuempxYb5aWW6xUn5haX5qXrJefnbmIEJqbT/45/2cG460/SIUYBDkYl
 Hl6LW7vjhFgTy4orcw8xSnAwK4nw+q0HCvGmJFZWpRblxxeV5qQWH2KU5mBREuc1XvQyVkgg
 PbEkNTs1tSC1CCbLxMEp1cDYfjZ075W/Ys5+Hk+9eHb9FZ6xR/srn9jkaVOX7eT74GomeqrU
 8p31wa0d2ZpsWesdT12Kfxqcr+LylXvn49Jao8gLS3p4/I0mNMXaTuRcc4lpinTjh+fntx+4
 eO/L80TJOYwvRN8IK0zRWXmD+QvPT2u3+5l7Ol+uqzT5XO6XsnvVBi/zqRzdSizFGYmGWsxF
 xYkAHrQEOEgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7r833fHGUxZIGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL2PHz39MBbd5Ko7dOsHcwHiIq4uRg0NCwETi94qSLkYuDiGBpYwS7SeXsHYxcgLF
 ZSROTmuAsoUl/lzrYoMo+sQocfHrarAEm4ChRNdbiISIQCejxLTuj+wgDrPABGaJ+y2rGUGq
 hAWiJQ6sOg3WwSKgKrH4dA8biM0rYCsx/eBHqBXyEqs3HGAGsTmB4q/u7GcBsYUE8iX2Lt7H
 NoGRbwEjwypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAWNl27OfmHYyXNgYfYhTgYFTi4bW4
 tTtOiDWxrLgy9xCjBAezkgiv33qgEG9KYmVValF+fFFpTmrxIUZToKMmMkuJJucD4zivJN7Q
 1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOjN5eoR8x/Q9WP9zUnuin/
 nlWzszzq4NwLW3fuiirZYV+SVze7+WfchitFXM1ypR7ai9s7CxRf7rxYWqvQnfhmn8fHi/qL
 YhzLBWXXXZy8zHwm/6k800/C7a/XH/h2z+zduwPvbkekLLz77cWTV7tNnj7VOPV/ZkawjhQD
 65k81rmHL/yUrlc6qcRSnJFoqMVcVJwIAGK75XWrAgAA
X-CMS-MailID: 20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019
X-Msg-Generator: CA
X-RootMTR: 20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063305_539978_33F66CC5 
X-CRM114-Status: GOOD (  15.47  )
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use common helper for checking the contiguity of the imported dma-buf.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/exynos/exynos_drm_gem.c | 23 +++--------------------
 1 file changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_gem.c b/drivers/gpu/drm/exynos/exynos_drm_gem.c
index 0df57ee..a49a8ea 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_gem.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_gem.c
@@ -431,27 +431,10 @@ struct drm_gem_object *
 {
 	struct exynos_drm_gem *exynos_gem;
 
-	if (sgt->nents < 1)
+	/* check if the entries in the sg_table are contiguous */
+	if (drm_prime_get_contiguous_size(sgt) < attach->dmabuf->size) {
+		DRM_ERROR("buffer chunks must be mapped contiguously");
 		return ERR_PTR(-EINVAL);
-
-	/*
-	 * Check if the provided buffer has been mapped as contiguous
-	 * into DMA address space.
-	 */
-	if (sgt->nents > 1) {
-		dma_addr_t next_addr = sg_dma_address(sgt->sgl);
-		struct scatterlist *s;
-		unsigned int i;
-
-		for_each_sg(sgt->sgl, s, sgt->nents, i) {
-			if (!sg_dma_len(s))
-				break;
-			if (sg_dma_address(s) != next_addr) {
-				DRM_ERROR("buffer chunks must be mapped contiguously");
-				return ERR_PTR(-EINVAL);
-			}
-			next_addr = sg_dma_address(s) + sg_dma_len(s);
-		}
 	}
 
 	exynos_gem = exynos_drm_gem_init(dev, attach->dmabuf->size);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
