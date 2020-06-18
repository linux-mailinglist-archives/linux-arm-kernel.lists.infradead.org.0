Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B912C1FF7A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S816Uo+SCO1VeXDaSgT32MJiyeCOgxIXMlNgbSL/iRk=; b=fE+tJgf9BCsMY/+o8SlSZSZbV4
	K6EVaa9Kp+AWZ2DDmes4SsVNZO+jE/Q+U+N7rN4kYTCNrFfA8m8+IJ/ALfE8bBYJkE8uaWxZts27i
	pQazYplgJP2y09ZdlKihg5f0/zvTzRQwgfu1hQNGp6uwI5opJJZBSjyUIP0hyRedRAx3ppfEE37+o
	t9Iidn0sTda0luYCBrvBV8SZcKp5xu3pi9ZdZHdSvN4Zwc2/xO5s/NAi7Z26ZJDMwYALtGaVH4QO5
	v5dZc0y5iW7KO64BHg+/QjqxVyMY/lPEOOxsdJjhoc6aJk6dbDua5Mxi9tWXgfCws1J7QWS6vkJn4
	qdF+q6Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwix-0007ll-1b; Thu, 18 Jun 2020 15:45:07 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweQ-0004Cw-Pe
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154020euoutp02d08e20d9e2c773e964c31078e42e3247~ZrZn_IV2m1354913549euoutp02q
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154020euoutp02d08e20d9e2c773e964c31078e42e3247~ZrZn_IV2m1354913549euoutp02q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494820;
 bh=R1S3X25A6Vy5KJ2eK9141TIlg+VdgZzNSckapypyqH8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=onFWahYqyazuNqigmpgvmf5orvaOPVjkbeXnGT5HFvWxClu7fc8p4t13P9XlgUYwO
 0o+W7iXRt1u/uX5jW0az/mNqvElxmBRD25mCBohHfVW0FT7KDIMLHV6G7GJmMnv8CG
 knORyeaiLJNC/QQa6Fx3zFeoOoUdeoMY6XBzWg3U=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154019eucas1p12b686356ca3a50973be6f466a54240b6~ZrZnqkvCK1547315473eucas1p1P;
 Thu, 18 Jun 2020 15:40:19 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 50.1F.61286.3EA8BEE5; Thu, 18
 Jun 2020 16:40:19 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154019eucas1p256a859cb114401d51bd06d521619c9b3~ZrZnVVAee0608006080eucas1p2M;
 Thu, 18 Jun 2020 15:40:19 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154019eusmtrp1fba8bb98ca541146ddfd4e061e42009f~ZrZnUrP_E2169821698eusmtrp1O;
 Thu, 18 Jun 2020 15:40:19 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-c3-5eeb8ae3f3b4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F1.E9.07950.3EA8BEE5; Thu, 18
 Jun 2020 16:40:19 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154018eusmtip104ecfacdff370ad264b37fda58146a14~ZrZmoctLv0765807658eusmtip1Z;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 08/36] drm: exynos: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:29 +0200
Message-Id: <20200618153956.29558-9-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djPc7qPu17HGSyfr2PRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCuKyyYlNSezLLVI3y6BK+NG03Wmgm7hirOL37E1MDYIdDFyckgImEgcfDKX
 BcQWEljBKPH6e2gXIxeQ/YVRYsHdA8wQic+MEpsnWcA0tMy7wARRtJxRovPVRKhuoI7Tn91A
 bDYBQ4mut11sILaIQCujxIleHpAGZoEOZolrE+czgiSEBYIk9m5+xA5iswioSmzafB5sEK+A
 rUT3nE/sENvkJVZvgLiCU8BO4vTxVlaQQRICh9glbnzfCVXkIjF7x11mCFtY4tXxLVBxGYnT
 k3tYIBqaGSUenlvLDuH0MEpcbprBCFFlLXHn3C+gWzmA7tOUWL9LHyLsKHFywxImkLCEAJ/E
 jbeCIGFmIHPStunMEGFeiY42IYhqNYlZx9fBrT144RLUOR4Sh5fNZIOE1kRGiZ45U1gmMMrP
 Qli2gJFxFaN4amlxbnpqsWFearlecWJucWleul5yfu4mRmBiOv3v+KcdjF8vJR1iFOBgVOLh
 dQh/HSfEmlhWXJl7iFGCg1lJhNfp7Ok4Id6UxMqq1KL8+KLSnNTiQ4zSHCxK4rzGi17GCgmk
 J5akZqemFqQWwWSZODilGhhl9K46Ws6XeZdlfNxO/QKH5K4Fv4+Gv9j40udl4f+NJxet1mpe
 Wtg2ccFy+6eXvrNv+LPnfdq5s8ZqZ6ZsOPTw3vHoWS1h18+tOHGxMjX7XW6fru7ZjEh/7lmZ
 +m5rPq7Zuvne84rlF3b0Nr/6Wv0mIj3j9kaGw8I9V2tz1OP+feu+43fBazG/mBJLcUaioRZz
 UXEiABCtTr9IAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xu7qPu17HGVz7IGbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+NG03Wmgm7hirOL37E1MDYIdDFyckgImEi0zLvA1MXIxSEksJRR4sf63ewQCRmJ
 k9MaWCFsYYk/17rYIIo+MUrsn7WDESTBJmAo0fUWIiEi0MkoMa37IzuIwywwgVnifstqsCph
 gQCJg/NmsIDYLAKqEps2nwezeQVsJbrnfIJaJy+xesMBZhCbU8BO4vTxVrDVQkA1zz+0sU1g
 5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMFq2Hfu5Beiqd8GHGAU4GJV4eF+EvI4T
 Yk0sK67MPcQowcGsJMLrdPZ0nBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJLiSbnAyM5ryTe0NTQ
 3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDY2+Fns1ME1dd3XvlZqHu/0V+
 Xy1/ltt06OPPMK57n78XzaxdeSD1/cuP+XM0jTokD8sbPt8w9/r6CIkOZfmqmJfTBYWOiHju
 MkpcmzYhfX7P1UuBNYa71n32cD4e3LU6e+05odVf5KYwaXxQUuF49pnVhVtl0rknhw152fbx
 9Lm6/cn94BQ7UYmlOCPRUIu5qDgRAF81YqusAgAA
X-CMS-MailID: 20200618154019eucas1p256a859cb114401d51bd06d521619c9b3
X-Msg-Generator: CA
X-RootMTR: 20200618154019eucas1p256a859cb114401d51bd06d521619c9b3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154019eucas1p256a859cb114401d51bd06d521619c9b3
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154019eucas1p256a859cb114401d51bd06d521619c9b3@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084026_991706_E2CE107B 
X-CRM114-Status: GOOD (  16.04  )
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
 drivers/gpu/drm/exynos/exynos_drm_g2d.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_g2d.c b/drivers/gpu/drm/exynos/exynos_drm_g2d.c
index fcee33a43aca..7014a8cd971a 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_g2d.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_g2d.c
@@ -395,8 +395,8 @@ static void g2d_userptr_put_dma_addr(struct g2d_data *g2d,
 		return;
 
 out:
-	dma_unmap_sg(to_dma_dev(g2d->drm_dev), g2d_userptr->sgt->sgl,
-			g2d_userptr->sgt->nents, DMA_BIDIRECTIONAL);
+	dma_unmap_sgtable(to_dma_dev(g2d->drm_dev), g2d_userptr->sgt,
+			  DMA_BIDIRECTIONAL, 0);
 
 	pages = frame_vector_pages(g2d_userptr->vec);
 	if (!IS_ERR(pages)) {
@@ -511,10 +511,10 @@ static dma_addr_t *g2d_userptr_get_dma_addr(struct g2d_data *g2d,
 
 	g2d_userptr->sgt = sgt;
 
-	if (!dma_map_sg(to_dma_dev(g2d->drm_dev), sgt->sgl, sgt->nents,
-				DMA_BIDIRECTIONAL)) {
+	ret = dma_map_sgtable(to_dma_dev(g2d->drm_dev), sgt,
+			      DMA_BIDIRECTIONAL, 0);
+	if (ret) {
 		DRM_DEV_ERROR(g2d->dev, "failed to map sgt with dma region.\n");
-		ret = -ENOMEM;
 		goto err_sg_free_table;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
