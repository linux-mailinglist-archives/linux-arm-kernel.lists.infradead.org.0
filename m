Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B6D1FF76E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XIv9u0qfT9wgb8e/wZpSSmPZzn2L8eqU4vCwIa/quBk=; b=jUqhyTLO7DOsJDq5sIAx8WOLj0
	pmpMURkBeUfMbe+qbBgyZy2Iktk4QqPWZ8Ah9iGGEXq8iTD1uATL5OwC1Z8yfwtCx42MVG/zsxcYI
	/Se9mBX6lnMbbC180pKrlrnTd/7aPbtQfb7jXXrnzxwOzzupRCbCYYjANzaSrFaws9C84zoCQ0JoI
	62JjK3Btbcgz1i38nOOzRTHGJSujbhjADVNqZ28qfiZR0c1ySMeKyEbD1dZGbZc4RYiH7MCf2ogeq
	akz1EXbXjrw6aRQmS8JhQL2z3XNbl4w3zPrAKqyS1G4VHtNJuTEqLCmlPoQbVTRI5pBLOaUw5uRXJ
	yy8XUPrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwfc-00050N-LP; Thu, 18 Jun 2020 15:41:40 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweO-0004Ab-7D
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:26 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154022euoutp01f4dea55c73debe795d5c90bfc307975b~ZrZpw6TOv1844218442euoutp012
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154022euoutp01f4dea55c73debe795d5c90bfc307975b~ZrZpw6TOv1844218442euoutp012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494822;
 bh=bm4jyzGdoL7eueSepHu8xbaOpsUiBlIaWdzcyPajcJ4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d/ltOZAIyu8FKMf+nhzoZygg4teRsj7RqeLEYXTVTTYa9hEmkge06e9Y0HneOavKP
 T6UveSMyHLIH9UYYY0ZSHEgfJhvfraWppzXTOq8Sgw6zqClTPF/gZH2L60JyJBj1ot
 NTREn8F5TWqILwRzyLhzAKI2EgkOcrrRBl+20PMQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154021eucas1p2e6f324f655f607ca203555acfb3e35bc~ZrZphhik92502725027eucas1p27;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id FE.CE.60679.5EA8BEE5; Thu, 18
 Jun 2020 16:40:21 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154021eucas1p181a432ec3a813134f677263ed45f9729~ZrZpSisF52603726037eucas1p1P;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154021eusmtrp1b40ba7b881fbe611fee7da44e2a5eaf0~ZrZpR4sj92169821698eusmtrp1T;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-2a-5eeb8ae5b95d
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A3.E9.07950.5EA8BEE5; Thu, 18
 Jun 2020 16:40:21 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154020eusmtip1fd5ad65dd01bfc14781d171dbc566f67~ZrZojwzTQ0709107091eusmtip1s;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 11/36] drm: mediatek: use common helper for a scatterlist
 contiguity check
Date: Thu, 18 Jun 2020 17:39:32 +0200
Message-Id: <20200618153956.29558-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJKsWRmVeSWpSXmKPExsWy7djPc7pPu17HGRz9p2/Re+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRXDYpqTmZZalF+nYJXBnHev6wFzTxVSyc
 PJm5gfEKdxcjJ4eEgInEl4U/WLoYuTiEBFYwSpx68Z4NwvnCKLGsfRYrhPOZUeLz7TZGmJZH
 bacYIRLLGSUOb5jGCpIAazn6ohbEZhMwlOh628UGYosItDJKnOjlAWlgFtjDLLFo1y8WkISw
 QLzEhDP7wIpYBFQlLs58DjaIV8BO4vzql2wQ2+QlVm84wAxicwLFTx9vBTtJQuAeu8SUX7vY
 IYpcJA6c+AjVICzx6vgWqLiMxOnJPSwQDc2MEg/PrWWHcHoYJS43zYB6yFrizrlfQN0cQPdp
 SqzfpQ8RdpS4uv8jK0hYQoBP4sZbQZAwM5A5adt0Zogwr0RHmxBEtZrErOPr4NYevHCJGcL2
 kNhxZz80tCYySny9959lAqP8LIRlCxgZVzGKp5YW56anFhvlpZbrFSfmFpfmpesl5+duYgQm
 sNP/jn/ZwbjrT9IhRgEORiUe3hchr+OEWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19U
 mpNafIhRmoNFSZzXeNHLWCGB9MSS1OzU1ILUIpgsEwenVANj7fc9fj+25pr6yawu2/dVpHLy
 sac7nL+/dDlSdbdDXFHpTLmNasDHSeoVmnsuJuW9qvlc0nidV7Bk0Yu9P88/3PH8zuGIjQEL
 upyivoW7i7lk7ZgibTdJ+wrbf+5SqYb9neEz/25abN5Wv3mdzGEFhbrW06XcGhs4vi4J0s+W
 4D2x+IWM0dMYJZbijERDLeai4kQA7EnreVwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNIsWRmVeSWpSXmKPExsVy+t/xu7pPu17HGVw+IWfRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpG
 JpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehnHev6wFzTxVSycPJm5gfEKdxcjJ4eEgInEo7ZT
 jF2MXBxCAksZJY6t/MsOkZCRODmtgRXCFpb4c62LDaLoE6PE+daNjCAJNgFDia63EAkRgU5G
 iWndH9lBHGaBY8wSGx+/ZwapEhaIldjePQXMZhFQlbg48znYWF4BO4nzq1+yQayQl1i94QBY
 DSdQ/PTxVrAaIQFbiecf2tgmMPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERhR2479
 3LKDsetd8CFGAQ5GJR7eFyGv44RYE8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8
 iNEU6KiJzFKiyfnAaM8riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp
 1cBoaHb4/4PSMi/+VVPO+wXlf1kX867uvBWTbIL49kj1u5qa/sYaG4o+dVeWxkzqFpB+Nu9u
 YWH35lMbY+9HfhA0v1rIrTvXtTOw8+ITQadVN1cmzdzOdT1HRVusPIHzDl/jtv3rdubWbPkT
 Ura8rcvpE5PW0k0CX48YX+g5Ol1AK8vxfMusPYFKLMUZiYZazEXFiQAz4CamvgIAAA==
X-CMS-MailID: 20200618154021eucas1p181a432ec3a813134f677263ed45f9729
X-Msg-Generator: CA
X-RootMTR: 20200618154021eucas1p181a432ec3a813134f677263ed45f9729
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154021eucas1p181a432ec3a813134f677263ed45f9729
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154021eucas1p181a432ec3a813134f677263ed45f9729@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084024_421039_9326DFA8 
X-CRM114-Status: GOOD (  15.08  )
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
 drivers/gpu/drm/mediatek/mtk_drm_gem.c | 28 ++++++--------------------
 1 file changed, 6 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
index 6190cc3b7b0d..3654ec732029 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
@@ -212,37 +212,21 @@ struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device *dev,
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
-		if (!sg_dma_len(s))
-			break;
-
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
