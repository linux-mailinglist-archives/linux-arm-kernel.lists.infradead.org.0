Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7411D15FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oCvAdORzCm1ksOTCaSPrtB/I67NEYIcxSnDLASl5t6s=; b=UuYkiby/JZYGOpbKXVxYkVHnov
	OcGk6Ssne6T1QH5imjzq8J7zEXqVe1sA5YkKHqezOH/Cww5M2RGx7XccCUWK042MciXHSzKJQAlaK
	Iwlv8qiIhyMTqzqNEorLerBi5d3wyA+6APuASSINfrQxvcKM2E8QH23lKAL18P0wU7rSmYuIwli/Y
	ipKj96Ak9sQvr0I84de6NWzpEDwvq4kIF8kzB5BTojbvNHAbHv2XiC9+4danpUPjob2RzbGw6oKQZ
	snYObKT/Zh9WGBz8O+c2w95+b8tavTkGG7pANGKdBL41aEWBbNl8zQ+z2WiUCNu5oSTTE6cE5ViCf
	LSCDZ3oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrdX-0004h8-EY; Wed, 13 May 2020 13:41:27 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVc-0001cH-Rv
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:26 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133312euoutp02b020b1e8d4b9a2fed06005c317fd3a45~OmcWrht930033500335euoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133312euoutp02b020b1e8d4b9a2fed06005c317fd3a45~OmcWrht930033500335euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376792;
 bh=ajKNWEur/j3kJDi0IDcqqrpxOyKZtcQE79V0/ItRN54=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XSk79eSBjGEf2sl4moZbV/T1FelXSd3C3yvaz8Q6R71/RyzgIVLC+H9BS1t9M195n
 7E9taSGOzV1MVwdJs4s7uWzTVELDgra0U4XhhJO5owXJTzqYFkB3QP3ILif8+3uB8S
 hLUD+LvZ2s0T5TpJiJzvvfI1Jc04IUJbVHO6/aUA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133312eucas1p16340b6ab9117a7a566eae1f10d7cd477~OmcWdqnBl2351423514eucas1p1P;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FE.C5.61286.817FBBE5; Wed, 13
 May 2020 14:33:12 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375~OmcWEGqe42350623506eucas1p1P;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133312eusmtrp17dc4ab0646eab5d47fd06026993facb4~OmcWDYKbj1050610506eusmtrp1P;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-5f-5ebbf7185db5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F9.1A.08375.817FBBE5; Wed, 13
 May 2020 14:33:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133311eusmtip13c56d5e5984716aad8f7f67e38b9ce08~OmcVQ2X460693306933eusmtip1D;
 Wed, 13 May 2020 13:33:11 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 21/38] drm: rockchip: use common helper for a scatterlist
 contiguity check
Date: Wed, 13 May 2020 15:32:28 +0200
Message-Id: <20200513133245.6408-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHO7v3bnfT2XUKnizSBiUK+aAHt2xhIXUpiv6TitSlFzWdyq5a
 RtJS0pqPTPGB1ZiPNB/TZbaFEurUNAwzFfGZb9KZFeosg1yb1+y/z/d7vj++v3M4OCJqwZzx
 iOg4Wh4tjRJzBaju3frHg/BnU6B3m9KFzOx5zyFfFtZhpFn3GCEHTN+5ZGV1B4c0Ty9i5LOc
 JFLd7EuuDkxxyPqZQYzsb3zKJZcnzQipaR/nka0/ZjE/O6pGVQOot2tqlNKvTWLURHonh3pV
 dpca3ZhBqNyhCkA1DSu41J+iZpTKaqgClH5QhVAr9Xsv2V4RnAiloyISaLnXyWBBeEltF4hN
 sbulz9NyFOCLjRLwcUgchrW6DqAEAlxEvADQOPEEZcUqgGXJaoQVKwA+N4xy/o1omka2UhUA
 rmmGedsjLaPVmDXFJXygcknJtbIjcR/ArkxbKyNEPgKrTGes7EAEwWyTfjOPEvuhNkvFs7KQ
 kMBPqhYu2+YCq7UtiJX5Ft841rzZDIlBHizIL8DYkD/s16i32AEaOxt4LO+B3bkZWwMpAE71
 aHisyACwP7kQsClfONbz21KHW9Zzh3WNXqx9ChZv9G3akLCDQ0v27AXsYI6uAGFtIXyQKmLT
 B2BRZ+12bWtvH8IyBRVp5Vuv1QbgUr6Rkw1civ6XqQGoAk50PCMLoxmfaPqmJyOVMfHRYZ4h
 MbJ6YPlX3Rudy2+Aqe+6ARA4ENsKyZGmQBEmTWASZQYAcUTsKLxYZ7GEodLE27Q8JkgeH0Uz
 BrAbR8VOwkMlC9dERJg0jo6k6Vha/u+Ug/OdFUCrEHY3J+coj1z+/DDd3iU1ScDsGpzsOztf
 eWwuNXN8X3HkOTDrGhuUXZ7agfqtBH1zdZfMu5n1xy/ssMn4IOGPrS+Xulb635MUl3mnhXSE
 3+GnHF3wiH9t1urCpxeDbUodvAR5JjfUcFoYINkZ0K6auzFlP/Er9irXaDz/9VGvGGXCpT4e
 iJyR/gVAyx62UwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7oS33fHGTR8YrHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSz+P3rNajF3Uq3Fgv3WFl+uPGSy2PT4GqvF5V1z2Cw+PfjPbLH2
 yF12i4MfnrA68HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNFj980GNo+/
 s/azePRtWcXosf3aPGaPz5vkAnii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62M
 TJX07WxSUnMyy1KL9O0S9DIWrTvBWNDMV7F96gamBsbn3F2MnBwSAiYSa3ffYuli5OIQEljK
 KPGxvY0VIiEjcXJaA5QtLPHnWhcbRNEnRolZB76zgyTYBAwlut5CJEQEOhklpnV/ZAdxmAXm
 MUssX3WYqYuRg0NYIFbizO8akAYWAVWJDX3zwJp5BWwlLs47wAaxQV5i9YYDzCA2J1D81Z39
 LCC2kEC+xN7F+9gmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERg924793LyD8dLG
 4EOMAhyMSjy8Frd2xwmxJpYVV+YeYpTgYFYS4fVbDxTiTUmsrEotyo8vKs1JLT7EaAp01ERm
 KdHkfGBk55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYNTdupiv
 +rL9JGG5aYknGtXvrFb8EXz50qy3YR/j9IJnGK/qeMm9c+tnxzlh4r1rN+5643zj/dPkHdKe
 01sfNoq01xzgm1TQVJOf9XxDoM4Dp+NV8myLmKy1E6/yTfs7W2P6VdfF/msvlfnezfm6407d
 797Eo9XP/N/sFY+6FunFxRLaeV7CQlKJpTgj0VCLuag4EQDTlMswtAIAAA==
X-CMS-MailID: 20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375
X-Msg-Generator: CA
X-RootMTR: 20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063317_041349_A41068C4 
X-CRM114-Status: GOOD (  14.76  )
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 0d18846..21f8cb2 100644
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
@@ -498,7 +481,7 @@ static unsigned long rockchip_sg_get_contiguous_size(struct sg_table *sgt,
 	if (!count)
 		return -EINVAL;
 
-	if (rockchip_sg_get_contiguous_size(sg, count) < attach->dmabuf->size) {
+	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
 		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
 		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
 			     DMA_BIDIRECTIONAL);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
