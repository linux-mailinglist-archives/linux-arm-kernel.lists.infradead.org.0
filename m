Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265691C3AA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3uaOtX38jR7bT/RgIw5DWepey5V6xtdUSUn7TzwV3X0=; b=qokWmO2wNzmRXKGSaybSTajBRY
	LFz7Hhpz1Z+iNzqk6I6pjWjspnXTZe5EJOpk2iliJfJ5YHInHsy+o0teQI0bBbEjwXqsQTjVZu+Ig
	8Op5f5WkE0wh/jQptkXSSoEhN1w9C4AWA8lV/749ZJnpdYzGVY4unLyeIHXKqoJxKpKRC4lfRw566
	u9LQ7imcnX42GHGQsMmv7uRCNh0D3QBQtqA8A/NEv0YQhZPbbc5JWX+mTE0iTrC8b5Dxj/3AgFGXo
	xt3dWB3uRxhQzz8nTR1VT1fdc8h/HZ7FNFCTu7rbkDpvDiVTTwrEFasy0G9FlvbEAIsvI087SPRGZ
	rScXaApA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVagf-0000xY-Ep; Mon, 04 May 2020 12:59:09 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVac2-0002fW-LR
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:24 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125420euoutp02845f18edbe8344b2ca4e6cb968e1daa2~L1G2lhvov1839718397euoutp02y
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125420euoutp02845f18edbe8344b2ca4e6cb968e1daa2~L1G2lhvov1839718397euoutp02y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596861;
 bh=Ttmk3z/wgaMlZxwZtUmC4+W+gIbK2TZtfskAp6FVn7g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M+d1o5ZVhUVN1ZfQPrZfcMnshXvBbdGH9uQSDnzkA1rkF5Fa0TTbDqJeIa2JLYN5a
 ri+j49X6WhbENiIDYSQRM4Zu38uH++zQsA9puDZohEvHoy3o0dQGSx5gGmkOqaAl5V
 jX6UUXADZApBPRcOQoC87q7cSHMnDNZekKucTcDA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125420eucas1p2a81c07be105dda54ab34624f355a272f~L1G2WAnsK2246922469eucas1p2m;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 20.E2.60679.C7010BE5; Mon,  4
 May 2020 13:54:20 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562~L1G194XiM2235822358eucas1p2q;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125420eusmtrp2717a6a2fb13d54ea48e921ea03000013~L1G19MkLc2826928269eusmtrp2X;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-af-5eb0107c4555
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4C.69.08375.C7010BE5; Mon,  4
 May 2020 13:54:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125419eusmtip21a00d04f6d566f3a535fb519094872c2~L1G1UE7360241302413eusmtip2Z;
 Mon,  4 May 2020 12:54:19 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 15/21] drm: xen: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:53 +0200
Message-Id: <20200504125359.5678-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJKsWRmVeSWpSXmKPExsWy7djP87o1AhviDBruaVj0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xYfV71ktDn54wmrx
 fctkJgdejzXz1jB63Fm6k9Fj77cFLB7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzR4/CHKywe
 u282sHn0bVnF6PF5k1wATxSXTUpqTmZZapG+XQJXxvlZL9kK1nNWPN7Uw97A+IW9i5GDQ0LA
 ROLfQeYuRi4OIYEVjBJvW98AxTmBnC+MErcemkEkPjNK7G14ANdw/qg3RHw5o8S69l8sEA5Q
 Q+/3k2DdbAKGEl1vu9hAbBGBVkaJE708IEXMAj+YJM4tOwFWJCzgIzHz8TYmEJtFQFVi6/8e
 sAZeAVuJQ60nweISAvISqzccYAbZzAkUn9mrDjJHQuAcu8S+jlXsEDUuEuvP9DJD2MISr45v
 gYrLSPzfOZ8JoqGZUeLhubXsEE4Po8TlphmMEFXWEnfO/WID2cAsoCmxfpc+RNhRYs3uFcwQ
 L/NJ3HgrCBJmBjInbZsOFeaV6GgTgqhWk5h1fB3c2oMXLkGd4yHROW87KySADjNKfN9yiHkC
 o/wshGULGBlXMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525iBCao0/+Of9nBuOtP0iFGAQ5G
 JR7eiM/r44RYE8uKK3MPMUpwMCuJ8O5oAQrxpiRWVqUW5ccXleakFh9ilOZgURLnNV70MlZI
 ID2xJDU7NbUgtQgmy8TBKdXAqPxMeH9caFgt04/DWtmWj/x0q89+28o8YYqCp8lV+9ADG/ey
 HGZQv38jqWBe9yyDINbMG0zbeidKq9dzNs6rVbFQ1FgyPe+VmIHgMv+qZ6dyQmvz703783jt
 lZY7AdMcJiuc5mtNTj7+bNkWETFzr3ut1ztiHLdOW/n/4UGBaqV1woHdN/bPUGIpzkg01GIu
 Kk4EAL6Bl7lMAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsVy+t/xe7o1AhviDLat5rfoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12iw+r37NaHPzwhNXi
 +5bJTA68HmvmrWH0uLN0J6PH3m8LWDy2f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+EPV1g8
 dt9sYPPo27KK0ePzJrkAnig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07
 m5TUnMyy1CJ9uwS9jPOzXrIVrOeseLyph72B8Qt7FyMHh4SAicT5o95djFwcQgJLGSW+dfWw
 dTFyAsVlJE5Oa2CFsIUl/lzrYoMo+sQocez/OrAiNgFDia63EAkRgU5GiWndH9lBHGaBf0wS
 J/ZuZwKpEhbwkZj5eBuYzSKgKrH1P8QKXgFbiUOtJ5kgVshLrN5wgBnkJE6g+MxedZCwkEC+
 xN2n/1gmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERgz24793LyD8dLG4EOMAhyM
 Sjy8EZ/XxwmxJpYVV+YeYpTgYFYS4d3RAhTiTUmsrEotyo8vKs1JLT7EaAp000RmKdHkfGA8
 55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYDRl2smZdaTtsAHT
 T4sU8eo3p25X3D342e7br9fmfP+e7LjlGn36SPmHNtmeQ8VLFCaKr9U9sK8i+Cr72feKndd+
 N+zxMNy5z83t4wFLKTvH45pJd79N+fNWkVNEa1eZgI+P3MYGC4s0j4fnfq7WmJG/xLwkLq7m
 cL9IXfVq/U9ujQ4T11X2eyixFGckGmoxFxUnAgAhUwpyrwIAAA==
X-CMS-MailID: 20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562
X-Msg-Generator: CA
X-RootMTR: 20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125420eucas1p2387a795af11e62779e8aa7f7673a8562@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055422_834260_456AE0DA 
X-CRM114-Status: GOOD (  14.31  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Daniel Vetter <daniel@ffwll.ch>, xen-devel@lists.xenproject.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
numer of the created entries in the DMA address space. However the
subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
called with the original number of entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. Adapt the code to obey those rules.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v2 00/21] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/4/373
---
 drivers/gpu/drm/xen/xen_drm_front_gem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xen/xen_drm_front_gem.c b/drivers/gpu/drm/xen/xen_drm_front_gem.c
index f0b85e0..ba4bdc5 100644
--- a/drivers/gpu/drm/xen/xen_drm_front_gem.c
+++ b/drivers/gpu/drm/xen/xen_drm_front_gem.c
@@ -215,7 +215,7 @@ struct drm_gem_object *
 		return ERR_PTR(ret);
 
 	DRM_DEBUG("Imported buffer of size %zu with nents %u\n",
-		  size, sgt->nents);
+		  size, sgt->orig_nents);
 
 	return &xen_obj->base;
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
