Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280A51CF137
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2cFozArp/+xfwpTTkRAYqdvFRnRXqnXF8sF0V51nIq4=; b=jECpSLb2EMcvQefMgCBgk7Ktmt
	/BD0wiNrZu9j1yDA7dkSmrkpzICxfO7PajcevVSEfJcU3EpvknhEDonBUuUCZOFvpRf2H8feoSe2s
	3Ubw/XA7NHpO7nKzYt+aNWIKb1phFU57qSfzIGM3vTzYE9c7GE2Nt2rqfx41gWY24YVs57H7B3qNS
	LFjIQIY7TtMPJa0quEO4n32iWMGq8bBrlMDqkwGKwq8k/K+aZMdWG1MlG//xznCxUkXFByHUaFJn2
	EHwjui0+ujOdT0fec/CSXj9/qvkECgmA1PKIbfmS8SNIOYVR/EbymB54+hM9Y/QBVXEGlGrJLyCb5
	EuVlKpqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQx5-0003r0-Ds; Tue, 12 May 2020 09:11:51 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn0-0002Jx-GT
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:35 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090113euoutp01e365263130f6be60c4eda574bb960834~OPFl2bC6D2628826288euoutp01M
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090113euoutp01e365263130f6be60c4eda574bb960834~OPFl2bC6D2628826288euoutp01M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274073;
 bh=NhVbnJ+jqa6Cm7UcCSShQXuCIUUkP8fYD45Nu0/gv44=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kjN0kVdlQY1j5bVaOTTBeKY7yRJWLWeRK8vtjLFmeXN+9Bx8kD2SQc1/cDOAfwwdY
 qELap4716r3WtBMV2ij01C/WCf7iIkgfm3Pj0GyfSWK8hfb/LRTqTGkAIYTk4Z2b/c
 xZq6lDNQhYFYlrHDTJdY48DysW2xpJXWhXurckb8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090113eucas1p1ef8c5da040086e7cd941a733488a5719~OPFloZoPF3053130531eucas1p1c;
 Tue, 12 May 2020 09:01:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A5.6B.60698.9D56ABE5; Tue, 12
 May 2020 10:01:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090112eucas1p280707473d14730b8d3054fe9b0781a05~OPFlYNMQO2661426614eucas1p2U;
 Tue, 12 May 2020 09:01:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090112eusmtrp15f7e3d008cd5e61e09ab2b1e8f14459b~OPFlXhG0_0188101881eusmtrp1B;
 Tue, 12 May 2020 09:01:12 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-0b-5eba65d9f4ae
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D2.F2.07950.8D56ABE5; Tue, 12
 May 2020 10:01:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090112eusmtip1e6afa75d409d6f8bde05c4af7510a21e~OPFk0YbqY1148011480eusmtip1T;
 Tue, 12 May 2020 09:01:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 10/38] drm: exynos: use common helper for a scatterlist
 contiguity check
Date: Tue, 12 May 2020 11:00:30 +0200
Message-Id: <20200512090058.14910-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djP87o3U3fFGWx9yGXRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCuKyyYlNSezLLVI3y6BK+PB9i2sBbd4Kl43TWJtYDzI1cXIySEhYCLx8N5c
 ZhBbSGAFo8T/1ypdjFxA9hdGienT2hghnM+MEudvLmOC6Xj56w07RGI5o0TXs7XMcC1/eueD
 zWITMJToetvFBmKLCLQySpzo5QEpYhboYJa4NnE+0FwODmGBWImlffUgJouAqsS04yIg5bwC
 dhJb1rczQiyTl1i94QDYSE6g+P35f1hAxkgIHGOXeLHpLxtEkYvE+lOboWxhiVfHt7BD2DIS
 pyf3QDU0M0o8PLeWHcLpYZS43DQDaoW1xJ1zv9hArmAW0JRYv0sfIuwosW/bUnaQsIQAn8SN
 t4IgYWYgc9K26cwQYV6JjjYhiGo1iVnH18GtPXjhElSJh8SmOSmQ4DnKKLF84wOmCYzysxB2
 LWBkXMUonlpanJueWmycl1quV5yYW1yal66XnJ+7iRGYlk7/O/51B+O+P0mHGAU4GJV4eDuM
 dsYJsSaWFVfmHmKU4GBWEuFtyQQK8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJWSCA9sSQ1
 OzW1ILUIJsvEwSnVwMjSycz0RC/dt0w9rmzSlvfxDFYexQ4Vb+tDNKfPvT2HMaXh3q5P8/xq
 /1nbRs6dk+lyO7CuaCv/ZqE97x4fnbYj5sf1x/0eIYobfPJuNczkDDtTs1Jrq52N8r37n99f
 c5GMM99Z9eD7dXOJ/w7b1cKPz/h912S36Mp/6R/EA18d58pdwy/zc6MSS3FGoqEWc1FxIgCa
 4y+URwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xu7o3UnfFGTyebW7Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+PB9i2sBbd4Kl43TWJtYDzI1cXIySEhYCLx8tcbdhBbSGApo8SH18IQcRmJk9Ma
 WCFsYYk/17rYuhi5gGo+MUrs7l3OBJJgEzCU6HoLkRAR6GSUmNb9kR3EYRaYwCxxv2U1Yxcj
 B4ewQLTE4521ICaLgKrEtOMiIL28AnYSW9a3M0IskJdYveEAM4jNCRS/P/8PC8RBhRKPrr5l
 mcDIt4CRYRWjSGppcW56brGRXnFibnFpXrpecn7uJkZgnGw79nPLDsaud8GHGAU4GJV4eDuM
 dsYJsSaWFVfmHmKU4GBWEuFtyQQK8aYkVlalFuXHF5XmpBYfYjQFumkis5Rocj4whvNK4g1N
 Dc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTCumcBn9k/UZ9c6Duk1Zedm
 ha14rH/czPF1gMqN4xfaP+saP574S7v/1ZMNLyvXXxStP7pIfynvltmxk8S9mP/mXtu3yHqr
 +YkT8yd+mbNwvV9ijRHjlAlCr8/Us/9c+b7+7Pd7B7ZPak1o9vlc8frRBuduAbbdzM+ME/Y6
 fcwTPbnIctNXadl1rEosxRmJhlrMRcWJABokKdCpAgAA
X-CMS-MailID: 20200512090112eucas1p280707473d14730b8d3054fe9b0781a05
X-Msg-Generator: CA
X-RootMTR: 20200512090112eucas1p280707473d14730b8d3054fe9b0781a05
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090112eucas1p280707473d14730b8d3054fe9b0781a05
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090112eucas1p280707473d14730b8d3054fe9b0781a05@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020127_220537_8C2C6855 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
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
