Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AF01FF796
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O/0rVdrGB9YU6X/Ta3D87AQV8OPfkZFa66NmzJfjWxQ=; b=AbGGNNFYMg8CwMyOBC2bl5mW/o
	heils6Ntz9mqykHw0RScLKAbksJac5nPG32zHoUIIJ2tI04RJgy1d4R17nOXoYfYjyu3iUbWFtyNg
	k1pphwbcxUkW/MLQj8nCVQdOKDa1kvgLepM++pxAYcLsEfv94Mt8hDd96axSCumkRy8ICnZ9qCcDo
	UWRRMs9UhkY5N/nxzHZ/Bhn0W/g20YOKlI5kXn+B7XlD7aCNZkZmK9LARrwrrNIhXxrj5ipi6q80I
	DNVSfslBfgEtVLmTvs1j/vH90GDdnH1HpP8AN2kHxS52Q7Y6LKqfFOmmIZ+KGgnIwJ33P+uAe1Ity
	xlyCtMPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwgl-0005xI-H8; Thu, 18 Jun 2020 15:42:51 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweO-00049Z-7D
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:26 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154019euoutp01d3ee13f4a96b43aa52e6e332e2a0f0d6~ZrZnUkWhH1844218442euoutp01y
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154019euoutp01d3ee13f4a96b43aa52e6e332e2a0f0d6~ZrZnUkWhH1844218442euoutp01y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494819;
 bh=MqT40NSX2hFbmyPasraeZB6y//Q28ZVdzAVMaxtMZLY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BM2TYRU11NKYlfv+/fdF9BvK6LPrvmrFCvBlVe0Dh37zuEuEylD67ussbhTtjo3eO
 2b2/oFtONww6nhdsHwBeq5t6VeQjVTSXmJ0aMS3X8PPMr9zC3gcgsnyPdWkvrCN6mj
 elUhL3dGrS9jnImCwRme5mLMnKtGBo4qfTjwcwvY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154019eucas1p2d67fbfd901798698c28a153faec6ea32~ZrZnAcJYb2977729777eucas1p2-;
 Thu, 18 Jun 2020 15:40:19 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C0.60.60698.3EA8BEE5; Thu, 18
 Jun 2020 16:40:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154018eucas1p259b2d1c250b2078772b091212325f93e~ZrZmrQgZ80501005010eucas1p2X;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154018eusmtrp28c05d58a5da917d59bf0bb279c56477c~ZrZmqoAKa0370403704eusmtrp2c;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-1d-5eeb8ae39f29
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B4.EE.08375.2EA8BEE5; Thu, 18
 Jun 2020 16:40:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154018eusmtip16b0cf50bb6921ca0c67990095bc31987~ZrZl93tAK0833608336eusmtip1N;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 07/36] drm: exynos: use common helper for a scatterlist
 contiguity check
Date: Thu, 18 Jun 2020 17:39:28 +0200
Message-Id: <20200618153956.29558-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGeXcuO1tOTtPwRTNpaFaUd+KQJSVFpxuU9KnUmnpQUadsaqkf
 skSRpaaOSCQvyULzmqbTFi5d6Qzzkve8YLaCplnexWXa5tH69vu/z/O8z5+Xl0CEKsyWCJfE
 MlKJOFKE81FV+1rPUb18JtBtcRSlMrvfc6javBqM2lTlINTA8i+cel7RxqFyJ7NRqviNN7U0
 MMWh6vRDGNWvfoJTeT0aDlX1boJLtc59xag8hQE/ZUlXFlYCunmlGKUbVz5j9OQDHYd+qbxL
 j23oEVoxUgro15+ScTqrvhzQi3X7rvCv80+EMJHh8YzU1ecWP2zw6R805u2uO1UGLUgGLTw5
 4BGQ9IIlxh9ADviEkCwDUHlvlWMWhOQSgM0diaywCGBn0xy+kygyzGGsUApgRkUtwg6mxKOa
 TNTswkl3KJ+VbyWsyVQAOzItzCaETEfgUE4RMAtWZABUVw9jZkZJJ9jcOIGYWUCehMr0VYSt
 c4AVL1q2mEf6wE5d6lY1JNu5MKtSyWVNZ2BBwzzGshWc1tVvn++Fm6+KOGwgBcCp7iouO2QA
 2H8/D7AubzjebTTtSpj2OwRr1K5mhORpOD3ux6IlHJndbTYjJsxVPUbYYwFMTxOydxyA+brq
 f62tvX3b69NwuOE3l32gHABVbTNINnDI/99VDEA5sGHiZFGhjMxTwtx2kYmjZHGSUJfg6Kg6
 YPpNnRu65SagWQ/SApIAIgvB92szgUJMHC9LiNICSCAia4FvV2egUBAiTkhkpNE3pXGRjEwL
 7AhUZCPwLDEECMlQcSwTwTAxjHRH5RA822TQ98E9wlgfH2Tz0WN+bVMfE1GpXzAuHu84UnB5
 vvDGnhHns55ujo5t5+yCNr41KBA94aXI7wkZW0jqUP/MeqipcWrX+GpSndWFwYX+TWUZuN/o
 4AU5/iyGzJodt9+/7qKoGluzt7/YK7jk4d/VOp2WpMS8F45d9Tqvnf+SclBSLkJlYWL3w4hU
 Jv4LlAduXUkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xu7qPul7HGcx8r2nRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+Pqwr8sBYe5K9a+PMTYwHiAs4uRk0NCwERi/ssPrF2MXBxCAksZJU5NecAOkZCR
 ODmtgRXCFpb4c62LDaLoE6NE77VGJpAEm4ChRNdbiISIQCejxLTuj+wgDrPABGaJ+y2rGUGq
 hAWiJX7c/wFmswioSuzdfpcZxOYVsJVY0vGdGWKFvMTqDQfAbE4BO4nTx1vBVgsB1Tz/0MY2
 gZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMBo2Xbs5+YdjJc2Bh9iFOBgVOLhfRHy
 Ok6INbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxhNgY6ayCwlmpwPjOS8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2M6TVWuUn+gpdKs3Zf/NU+
 S9/33bLtUxe03lCv0qs8X6x7d8bl7E3TYne6RvnVn0hp2BWtHrpo1o+Fh+sFbxsetFBadvbS
 q/3FMVLsT9eXbJGT1LwvlaDiqdsnnrB15VWx0NW1S5VzmRbZ9GV+WuFUOOmw6au98Wc330i8
 cFyJ7/6p+pkxDw//UmIpzkg01GIuKk4EAJreD6esAgAA
X-CMS-MailID: 20200618154018eucas1p259b2d1c250b2078772b091212325f93e
X-Msg-Generator: CA
X-RootMTR: 20200618154018eucas1p259b2d1c250b2078772b091212325f93e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154018eucas1p259b2d1c250b2078772b091212325f93e
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154018eucas1p259b2d1c250b2078772b091212325f93e@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084024_399425_D749FAE6 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/gpu/drm/exynos/exynos_drm_gem.c | 23 +++--------------------
 1 file changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_gem.c b/drivers/gpu/drm/exynos/exynos_drm_gem.c
index efa476858db5..1716a023bca0 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_gem.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_gem.c
@@ -431,27 +431,10 @@ exynos_drm_gem_prime_import_sg_table(struct drm_device *dev,
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
