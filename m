Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DCC1D15C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ejnMdMJfusSz3cgftCI0peRI3kJfH/muu7v5bnjNpwo=; b=p1OBbUEm0IsR5O2d8P1PflrWiS
	2aC1Bp8lBIjoc1sFjsWwFa9DgrWZVOpyqdcFv2Mr3hGMU+/1yVrUzZTdSMUGMS60Cur5ZH0wgHaEq
	a6HXDUTY2c7ucBxSQcoh0xdyV6JJR92a/Pq9TTB7oVjy60qJ68Z6B32224YzVRKGdCSgVIOZOcHpM
	EzvLP+AIq5CAWIZ/8nLxaY0S800drom4LcP6kA54gRRS+OrpggFahWmTwMRD0ivNFCwe0qS/T8SUC
	GnZh8oP8C4UxMKBWc9pcl4PstvRGChNk5+P8k8bcikrgIN6iYvo1bvFIH7qNP3g7sU7OFGl32z/D6
	byh9ymOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYraR-0007vU-C1; Wed, 13 May 2020 13:38:15 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVU-0001Sg-NB
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:15 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133307euoutp025c821c7b85803274bb18c6b41bbbec1b~OmcRlEs863216632166euoutp021
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133307euoutp025c821c7b85803274bb18c6b41bbbec1b~OmcRlEs863216632166euoutp021
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376787;
 bh=63lQGohYor0znA7PtoKsyn+5okdRMMenYZY4rphErk0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=czTVDgpmbB1fqHhgM9zf8z0cj85Tbi++HyhhGzMCzYtolUN3XSicX8UjIS7awfHxD
 JZ/R8EBf00NDWkBmaouLn/k5Hfcji1B4tgGrZBMcq5aOgxi13oaENTGHKlzCM9trhW
 sCZazNgkR/jFCTAGt4ALs/PKlpMTTNVIM5M0kio0=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133306eucas1p1b51a94bf57046cb6c3f3a4997bc97aa9~OmcRRmbjw2164721647eucas1p1u;
 Wed, 13 May 2020 13:33:06 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id D5.D8.60698.217FBBE5; Wed, 13
 May 2020 14:33:06 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997~OmcQ0RUho0874908749eucas1p1h;
 Wed, 13 May 2020 13:33:06 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133306eusmtrp17acb0e826bf8839bed666e654ab020ee~OmcQzRtpK1050610506eusmtrp1C;
 Wed, 13 May 2020 13:33:06 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-ca-5ebbf712814b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8A.37.07950.217FBBE5; Wed, 13
 May 2020 14:33:06 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133305eusmtip1eeaac7d44d1f5279193afb39c353dc35~OmcQBSTh80741507415eusmtip1i;
 Wed, 13 May 2020 13:33:05 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 14/38] drm: mediatek: use common helper for a scatterlist
 contiguity check
Date: Wed, 13 May 2020 15:32:21 +0200
Message-Id: <20200513133245.6408-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUhUURjlzlvmOTn5GiVvKhkjRQm5oNALM1KkXhYZ1K/AZdSXSm7MqKkF
 iZbZuGepDSHjZJl7TuI2lbvjgpIpLriN6A8zLXNcUkybx1P7d875zvnOx+USiKgTsyBCwqMY
 abgkVIwL0NrOzf6zog2Nj0N25Xkqvb+bR1XnV2GUKj0dpXZrsxFqaO0XTpWUdfAoZZMLtTo0
 w6PUs8MYNdj4GqcGkwYAVdE+yacSHztRk1NdKNWyPIddMqHLC8oB/XldidINikk+rS59htN1
 6zqMnk7V8uiPRY/o8Z1ZhM4ZLQa0ZiwBpzP/OtAZNaWA1quP3xTeEVwIZEJDYhip/UU/QfCy
 IjoyzyS2MFWDJYBpYzkwIiDpDMdzhzE5EBAi8j2AWX90gCOrAL5b6cM5ogewp/4tuh8pVFTz
 uUExgGPzSv5B5GVTDsa6cNIRypfkOIvNyCcAdqUbsyaE/IRAVeOWYRVBmJK+cHzlIQtR8iTs
 aXNm7ULSFVaO1PK4MmtY9qEZYbGRQV+YaELZNZCc4sPkIT3gTB6wO2V+L2AKF7Q1fA5bwd6c
 tL1AEoAz/RV8jqQBOJiYv5d2gRP9Wzh7BUKegVWN9pzsBnX6bj4rQ/IwHF06wsqIAT6vzUM4
 WQhTkkWc+xRUaCsPalu+ftuz0HDnzWXuedoA3OzcBVnAWvG/SwlAKTBnomVhQYzMKZy5byeT
 hMmiw4PsAiLC1MDwu3p3tGv14Mu2fysgCSA2FupGND4iTBIjiwtrBZBAxGbCG1UGSRgoiYtn
 pBG+0uhQRtYKLAlUbC50Un33FpFBkijmHsNEMtL9KY8wskgAvMWSnIxRZXuP2nPDW2XFq4gH
 KdqUztgr4piOoJ91s81Fi6/yT/wutTnN2NuiMx4ttwcCfNwRLeZv4zG7PbfUUvdDz5RrJG7n
 nrYf82qfHxvcKHtguXvVXXc3bifTy3M8zjj00GKuZ17A0S3XxhcW0sqihrHIvlvXlNcF8jK/
 AjEqC5Y42iJSmeQf1keEsVkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t/xu7pC33fHGcy+L2bRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpG
 JpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehkfZpUWTOevWNi9m7WB8T5PFyMnh4SAicTCWRvZ
 uxi5OIQEljJKbL58iR0iISNxcloDK4QtLPHnWhcbRNEnRoknfceYQBJsAoYSXW8hEiICnYwS
 07o/go1iFjjGLLHx8XtmkCphgViJPzd6gKo4OFgEVCVOHTYBCfMK2Eqsu76NCWKDvMTqDQfA
 yjmB4q/u7GcBsYUE8iX2Lt7HNoGRbwEjwypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzAaNp2
 7OeWHYxd74IPMQpwMCrx8Frc2h0nxJpYVlyZe4hRgoNZSYTXbz1QiDclsbIqtSg/vqg0J7X4
 EKMp0E0TmaVEk/OBkZ5XEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNT
 qoFxyUSTjBO8S79PKvCevEr5lMybdduMYlhSU49uD389+c7n8kdt0x3Nbu9wXiag/GBfosed
 Lxd5mj48/pS1/vjFZ+pr1F5mqJx+8OcLd8OWyOu/eeb08k+SWLN/hdwt++5IVQNjQ+7Ky21n
 y15KvJ1/I/9GUrm7AtOiJ1rFxvuUX33tZ875peHYq8RSnJFoqMVcVJwIAI8m24y8AgAA
X-CMS-MailID: 20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997
X-Msg-Generator: CA
X-RootMTR: 20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063308_960662_2C299DE5 
X-CRM114-Status: GOOD (  16.41  )
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

Use common helper for checking the contiguity of the imported dma-buf and
do this check before allocating resources, so the error path is simpler.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/mediatek/mtk_drm_gem.c | 25 ++++++-------------------
 1 file changed, 6 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
index b04a3c2..6c34c06 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
@@ -212,34 +212,21 @@ struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device *dev,
 			struct dma_buf_attachment *attach, struct sg_table *sg)
 {
 	struct mtk_drm_gem_obj *mtk_gem;
-	int ret;
-	struct scatterlist *s;
-	unsigned int i;
-	dma_addr_t expected;
 
-	mtk_gem = mtk_drm_gem_init(dev, attach->dmabuf->size);
+	/* check if the entries in the sg_table are contiguous */
+	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
+		DRM_ERROR("sg_table is not contiguous");
+		return ERR_PTR(-EINVAL);
+	}
 
+	mtk_gem = mtk_drm_gem_init(dev, attach->dmabuf->size);
 	if (IS_ERR(mtk_gem))
 		return ERR_CAST(mtk_gem);
 
-	expected = sg_dma_address(sg->sgl);
-	for_each_sg(sg->sgl, s, sg->nents, i) {
-		if (sg_dma_address(s) != expected) {
-			DRM_ERROR("sg_table is not contiguous");
-			ret = -EINVAL;
-			goto err_gem_free;
-		}
-		expected = sg_dma_address(s) + sg_dma_len(s);
-	}
-
 	mtk_gem->dma_addr = sg_dma_address(sg->sgl);
 	mtk_gem->sg = sg;
 
 	return &mtk_gem->base;
-
-err_gem_free:
-	kfree(mtk_gem);
-	return ERR_PTR(ret);
 }
 
 void *mtk_drm_gem_prime_vmap(struct drm_gem_object *obj)
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
