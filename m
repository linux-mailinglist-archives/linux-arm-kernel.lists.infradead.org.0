Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05321D15FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AtZCui6o5Hun6c5qgrlyMjE9zSEA7yQLI08V/mI2n6s=; b=K8/dUInAViFlfnOsbp1muviDSt
	1wIDWfNoxUk2pJulSYrFytWljTr0G1iTIPDYxgLiXD3UhKm0T0Aae3KShcBFWSd69A7LhWRPeWwEF
	vQwuJSkCTWWFYcDQMtnHVl+tEhaUcH8RvDHQCBbfJpa4e1wth2NXSV56sXo908Vpm5JTpDnKLoxy2
	bwdwL3/9f++Eoy3pN75f43yjBv3K2+q+R8k2ZFGlhcti+YCq3G/vcAijW23z7DzeFX8hOFPyC9a10
	53yfe/bDp5cwTJ7L/OBpm9VIfX7QogEfHupS1f/Ta38iDT5z6oHU2VGe6SCTOQZv3jzg4uutPfkMt
	WOiWG+Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrdC-0004RQ-29; Wed, 13 May 2020 13:41:06 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVa-0001a9-Pm
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:24 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133313euoutp01a21f4e10c91b7a346776edbc96d35e92~OmcXWLqJt2140621406euoutp01T
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133313euoutp01a21f4e10c91b7a346776edbc96d35e92~OmcXWLqJt2140621406euoutp01T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376793;
 bh=iJsOj7yiyEFeyetX/zCHD13aCbDDq1L8pigjwt4kk7A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M7tywKAGKgP3waAOZ1nVNG8hgqJz/IkFpsml/rWyrzZDF8Ll75Wbt7L27PuVGZTUD
 gjY4Zc5rZKhkZDg/MggjbN/iKrnc81dx0Z6EnlSkAwGk28X8ucDrsU2uINn4gfWNTd
 L9IdEX2TOSp+QqRC4a+ts0+KwmCrEtB5Z8DfiyDs=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133313eucas1p14755da98e4c430f99840ffbf4b524ebf~OmcXHUczV2164721647eucas1p17;
 Wed, 13 May 2020 13:33:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EF.C5.61286.917FBBE5; Wed, 13
 May 2020 14:33:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52~OmcWwDzS91832718327eucas1p2b;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133312eusmtrp1bfa286fa54fc03c086370de9c5f8d92e~OmcWvQqNV1050610506eusmtrp1Q;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-60-5ebbf71926ff
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3B.1A.08375.817FBBE5; Wed, 13
 May 2020 14:33:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133312eusmtip12e592ada7c238820e4b042f9c6a599c2~OmcWEljUR0693406934eusmtip1W;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 22/38] drm: rockchip: fix common struct sg_table related
 issues
Date: Wed, 13 May 2020 15:32:29 +0200
Message-Id: <20200513133245.6408-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTURzGPbt3d9fhxm0zPJppDCws0tQ+3FKjoJf7SaKMwtDc9KKSb2y+
 QySuTJbapmgiZVKmOd9q6hSXLG02TTFT0/mGmvYhxXw3LNK83Znfnv/vPA/P/xwOjohauU54
 VGwCLY+VRkswPqr/sPnpuONPQ8iJRQ1O5vR2ccg3RXVccluvQcjB9UWMrKzq4JDbX+e55NO8
 O2Sp0ZdcG5zmkLqZIS450PIEI1emthGyxjTBI9uWZrlnhVR1STWgWjdKUappY4pLTT40c6j6
 srvU2NYMQuVbKgBlGEnHqD/FRpTKbdACqmmoBKFWdS6X7YL4fuF0dFQSLfc8E8qPzOxTceLn
 XVJe5M+BdDDsqAK2OCROwo5FA0cF+LiIeAVgo3aaxw5rABYZhjHGJSJWARxQeu8mdEMPENZU
 AWBG89peQvOxHGVcGOEFVQuqf2l74j6AnTl2jEaIQgRq1y+qAI6LiUD4uyCAwSjhBh9NjnEY
 LSD8oUb5ErBlrrDq9TuE0bY7fG7ciDJdkOjnwfllDY81nYcTz+ZQVovhnLnByp1hd362NaAE
 cLq3hscO2TvXySiyVvjC8d5fGLMRQrjDuhZPFp+DK6YNHoMhIYSWhX3s/kKYp3+MsFgAszJF
 rPswLDbX/q9t6+u3WihY8C2FfZ73ACrzKoAauBbvdZUCoAUOdKIiJoJWeMXSyR4KaYwiMTbC
 IywuRgd2PlX3lnmlGaz3y9oBgQOJnYAcNYSIuNIkRWpMO4A4IrEXBNTtIEG4NDWNlsfdkidG
 04p2cABHJQ4Cn+ffg0VEhDSBvk3T8bR895SD2zqlA1hu6CnI+9x4Xb3s7bZpCRXeaxze3+Xi
 9qU4IDfeOOtzRe1/DdKXVIJKpDPrRkmCz+klmT5Yxjcd8gRmi196d8VIzdsgYZisetX5YKdI
 7V5uY6yu90/mJY6KsZu14U2nUn/YUDVp8YViU3JgT6s++WoqNXThyLNj3mXaBSUmQRWRUq+j
 iFwh/QsZ/Y7HUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7oS33fHGby8YGjRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GW0XehiKngtV7F48ivGBsbrkl2MnBwSAiYSm661M3cxcnEICSxl
 lPgw9zQTREJG4uS0BlYIW1jiz7UuNhBbSOATo0T33SoQm03AUKLrLUici0NEoJNRYlr3R3YQ
 h1lgHrPE8lWHwSYJCwRJTJm1iB3EZhFQlei/fxsszitgKzGxeSkjxAZ5idUbDjCD2JxA8Vd3
 9rNAbMuX2Lt4H9sERr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAqNn27Gfm3cwXtoY
 fIhRgINRiYfX4tbuOCHWxLLiytxDjBIczEoivH7rgUK8KYmVValF+fFFpTmpxYcYTYGOmsgs
 JZqcD4zsvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjCIrr1u/
 +6//X++dqIbX03TRc6/T2lP/HRBYve2vT4+12vQb03cGybs7WvcmfN15IC+UNT8/SrRyzo+Z
 t/ZXz5piE2zfOV03Sfqzv51Un2Hx4++KNmqRy3zUH/NNaw9T+LB2hrOoltv+JbIhkQdCHjqE
 L8z+W726dDFDQt3rliUS21hPvD16T4mlOCPRUIu5qDgRAEdPIEG0AgAA
X-CMS-MailID: 20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52
X-Msg-Generator: CA
X-RootMTR: 20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063315_014317_5F82EF64 
X-CRM114-Status: GOOD (  15.77  )
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 21f8cb2..566557b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -36,8 +36,8 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
 
 	rk_obj->dma_addr = rk_obj->mm.start;
 
-	ret = iommu_map_sg(private->domain, rk_obj->dma_addr, rk_obj->sgt->sgl,
-			   rk_obj->sgt->nents, prot);
+	ret = iommu_map_sgtable(private->domain, rk_obj->dma_addr, rk_obj->sgt,
+				prot);
 	if (ret < rk_obj->base.size) {
 		DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
 			  ret, rk_obj->base.size);
@@ -98,11 +98,10 @@ static int rockchip_gem_get_pages(struct rockchip_gem_object *rk_obj)
 	 * TODO: Replace this by drm_clflush_sg() once it can be implemented
 	 * without relying on symbols that are not exported.
 	 */
-	for_each_sg(rk_obj->sgt->sgl, s, rk_obj->sgt->nents, i)
+	for_each_sgtable_sg(rk_obj->sgt, s, i)
 		sg_dma_address(s) = sg_phys(s);
 
-	dma_sync_sg_for_device(drm->dev, rk_obj->sgt->sgl, rk_obj->sgt->nents,
-			       DMA_TO_DEVICE);
+	dma_sync_sgtable_for_device(drm->dev, rk_obj->sgt, DMA_TO_DEVICE);
 
 	return 0;
 
@@ -350,8 +349,8 @@ void rockchip_gem_free_object(struct drm_gem_object *obj)
 		if (private->domain) {
 			rockchip_gem_iommu_unmap(rk_obj);
 		} else {
-			dma_unmap_sg(drm->dev, rk_obj->sgt->sgl,
-				     rk_obj->sgt->nents, DMA_BIDIRECTIONAL);
+			dma_unmap_sgtable(drm->dev, rk_obj->sgt,
+					  DMA_BIDIRECTIONAL, 0);
 		}
 		drm_prime_gem_destroy(obj, rk_obj->sgt);
 	} else {
@@ -476,15 +475,13 @@ struct sg_table *rockchip_gem_prime_get_sg_table(struct drm_gem_object *obj)
 			struct sg_table *sg,
 			struct rockchip_gem_object *rk_obj)
 {
-	int count = dma_map_sg(drm->dev, sg->sgl, sg->nents,
-			       DMA_BIDIRECTIONAL);
-	if (!count)
-		return -EINVAL;
+	int err = dma_map_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
+	if (err)
+		return err;
 
 	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
 		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
-		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
-			     DMA_BIDIRECTIONAL);
+		dma_unmap_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
 		return -EINVAL;
 	}
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
