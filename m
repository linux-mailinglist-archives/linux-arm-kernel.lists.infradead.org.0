Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC2F1FF7CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ceZDGFqXXpNQXBYiLX6K2u/zB3lVumClGhOmDTJt2wY=; b=Zc9j0S2KuzEYsy4kX9TYRg5drU
	CwRDgBP1oM4cQ1wS+T7gcREvTxHdW3LyuE6f8ZlJsNztW7mf+eZUTo/XNL1mINg7MZd+geApgkFkI
	o4b8kzB/M1V3gbiQndvO5mOcRYLCtDQi3V8TdGaR+QFfs8SkCVvrR9mFetKeaBcpQ/pPyIUhIJUgK
	vaIanU4nQcgbA/jUZhN5Gy19ftBWdiQqO0mIdGk67JIyTBkznew4t7Rq3eUr3+eaAT7s9G8BeFApf
	n3zNRCXlTyTAXSpsw+mGiffguRJbpRgqW2P8mKzy89oRGxv60fUIZ3LTicV04WPX0zL3de0xU+jvN
	79E8ZXGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwjq-0002Sg-Az; Thu, 18 Jun 2020 15:46:02 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweU-0004HV-Sq
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:34 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154027euoutp012f36aea1983117d2f4ab6b23912e96d6~ZrZuppDlA1844818448euoutp019
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154027euoutp012f36aea1983117d2f4ab6b23912e96d6~ZrZuppDlA1844818448euoutp019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494827;
 bh=Xz5Z61X+A6u/FrMD8ciD40ug8xujs/WBHWVc8ZYxDIk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tC6UEjuKXNLSomqGjoEMK8w3W1gK8t6jjjsDBvf2C5Mn3pjdvL5lm3mQeS+RI6OWH
 VEeQXGRiy3b/S8UlEfqJul/del29S9PvIA6uPutMqBDr2THZVqs0GvrHSy9cxVtECV
 o9DWG+Is3oCxtrUBDHKPPpc1ZwnjPsA+Qy+tf1W4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154027eucas1p146034164d01a03da01714b7775571575~ZrZucqgf01949419494eucas1p1C;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 85.1F.61286.AEA8BEE5; Thu, 18
 Jun 2020 16:40:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4~ZrZttEmh70501005010eucas1p2h;
 Thu, 18 Jun 2020 15:40:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154026eusmtrp1b90595c5c8a06a0bc99d6c76c8ffe717~ZrZtsY_KS2169821698eusmtrp1f;
 Thu, 18 Jun 2020 15:40:26 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-d7-5eeb8aeae3d1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 98.E9.07950.AEA8BEE5; Thu, 18
 Jun 2020 16:40:26 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154025eusmtip1c83939d4801dd13c007ecd453f01f5fd~ZrZtDwou00742307423eusmtip1T;
 Thu, 18 Jun 2020 15:40:25 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 18/36] drm: rockchip: use common helper for a scatterlist
 contiguity check
Date: Thu, 18 Jun 2020 17:39:39 +0200
Message-Id: <20200618153956.29558-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfUhTURjGO7v3bnNsdtskjxYqg75RkzQuKaZScQ2E/jKxnK28TGubsqlp
 EA1DiaWmrqaIzg8kbWqayRTLTMuWrabNMawMvwrR+RF+hUWuzav13+99zvuc530Ph43wuzFv
 doo8nVLIxVIhk4Ma3qyb/e1qu+iophQQBeYBBvGkrAUjHIZihLCuLjKJR439DMIxaceIypKb
 RHVPKLFinWAQbVM2jBjuqmASS+MOhGh+/ZVF9P74hkW4k026JkB2r1WjZMfaOEaO3TUyyKd1
 t8gvG1MIqRmpB+SzTyom+ae8ByUL2/WA7LDpEHK5zeccN54TlkRJUzIpRWD4JU7yTGUtSGvk
 Zs3WlWAq0MBRAzc2xIPhtK2N4WI+3gDg6ACqBhwnrwDYXTq5VSwDuPB5DGw7LO86UdpRD6Bt
 6CrNTkeN2tfFTDwIqufVTBd74LkAvi3guhjBtQjUr55xsQBPhB0LIywXo/g+6Ghv2mQeHg4/
 vtKidJYvbGx9ibjYzambjLmYayCIW1gwp8vOpJtOwVrd2pZBAGeN7Sya90KTJh+lDbcBnDA3
 s+giH8DhnLKtdULhqPmX8ya2c7xDsKUrkJYjYc2Dnk0Z4u5wZH4XvYA7LDGUIrTMg3fy+HT3
 flhufPwvtnfIgtBMQov6N0I/YjGAppEmpAj4lv8PqwZADzypDKVMQimD5NT1AKVYpsyQSwKu
 pMragPNTmTaMS51g1XK5D+BsIOTyIs7bRXxMnKnMlvUByEaEHryoDyYRn5ckzr5BKVITFRlS
 StkH9rBRoSfvWO1MAh+XiNOpaxSVRim2TxlsN28VCO13+N2rTT0eWxgyZ7Nqyk6zFiVLVeui
 YGnB/QlZ2AkvlmHgp/lgkXbQ/0DHkaiLqti42CysVVtSevaCVlCVVxmjy4z2CtGp3/tFn5z3
 NFjHNUtJkfFR6XEvvovXzdU++ueru1uiHwoMaNXcTsdsoVQ/KEqI2SGdDpsfCq7IF6LKZHHQ
 YUShFP8FLcLImlADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7qvul7HGWz6LmDRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GW8nLuIsWA1T8WrJZNYGxhXcHUxcnJICJhIXDq1g6WLkYtDSGAp
 o8SyezvYIRIyEienNbBC2MISf651sUEUfWKU+Nu0khkkwSZgKNH1FiIhItDJKDGt+yM7iMMs
 MI9ZYvmqw0wgVcICsRIbnq4As1kEVCX+b1kDtoJXwE7i4uFpLBAr5CVWbzgANpUTKH76eCvY
 aiEBW4nnH9rYJjDyLWBkWMUoklpanJueW2ykV5yYW1yal66XnJ+7iREYP9uO/dyyg7HrXfAh
 RgEORiUe3hchr+OEWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIjRFOioicxS
 osn5wNjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXA2LH0943k
 JS7xDQ5O3EveuBoUBu1t+zv7yJ8DaV8f7d1l9Etu/XWttd4bA+/Yu8y2VsgQylQ5WsaeWqrH
 oRLYxd8drHmCz+K4Ts/DlfPSPk7VEyzQthOcN+W+4ez6pH3/G+M/mj//Fv9gqUHr/RczZ99J
 3+u2PuVa8IPqKRWLpP4ee7E1JLbcU4mlOCPRUIu5qDgRAI6ky061AgAA
X-CMS-MailID: 20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4
X-Msg-Generator: CA
X-RootMTR: 20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154026eucas1p27589d4e89563b89eb27459cf9743c7b4@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084031_180831_B2D4D985 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
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
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index b9275ba7c5a5..2970e534e2bb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -460,23 +460,6 @@ struct sg_table *rockchip_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	return sgt;
 }
 
-static unsigned long rockchip_sg_get_contiguous_size(struct sg_table *sgt,
-						     int count)
-{
-	struct scatterlist *s;
-	dma_addr_t expected = sg_dma_address(sgt->sgl);
-	unsigned int i;
-	unsigned long size = 0;
-
-	for_each_sg(sgt->sgl, s, count, i) {
-		if (sg_dma_address(s) != expected)
-			break;
-		expected = sg_dma_address(s) + sg_dma_len(s);
-		size += sg_dma_len(s);
-	}
-	return size;
-}
-
 static int
 rockchip_gem_iommu_map_sg(struct drm_device *drm,
 			  struct dma_buf_attachment *attach,
@@ -498,7 +481,7 @@ rockchip_gem_dma_map_sg(struct drm_device *drm,
 	if (!count)
 		return -EINVAL;
 
-	if (rockchip_sg_get_contiguous_size(sg, count) < attach->dmabuf->size) {
+	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
 		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
 		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
 			     DMA_BIDIRECTIONAL);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
