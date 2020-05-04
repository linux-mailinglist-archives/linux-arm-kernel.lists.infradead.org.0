Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5FF1C3A7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LYjobSNMzYWCQiqt7Iml/L91eJH3VzWzlRHGDSJkNg8=; b=Uu0lnRwOi68FvRdX3rJwxmi+od
	43uVHJAReYpnWzyxu9M8McKTcRq5yIMmUUXrrU/+kexbShEKxsmlKfW94QZEu4Px5X9OHroCNz8jU
	M2C0zXIFo0ZUlaI0rKRPnGJZShXwl4pdWropHqGLhm/FK6r3sINzFvYVDf7L1lHFr1N9YfWrWVbJM
	QCvDEcpu7B7KDRYqKVGAi0O29MoiyI8lSoMiIxgIbYqIVzOIeG0JvKdiFekXorTDWsIZp5mUWZggD
	vC52wyVH+IHzKjvpXcbkKXUHoapkcozpkaFUIawwBIIh8STq/sKBbaO1pym0uBTwluW08oncjHlS7
	VR8XB0gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaeV-0007Eh-6C; Mon, 04 May 2020 12:56:55 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaby-0002Zy-J2
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:20 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125416euoutp0147ef763a93c825c6f5b2f53fb6a6a18d~L1Gy37Kvm2809728097euoutp01H
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125416euoutp0147ef763a93c825c6f5b2f53fb6a6a18d~L1Gy37Kvm2809728097euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596857;
 bh=4gYupzc/UJMgmHWpPu2pQvg0evsLFhb5hvvpEtLWtk4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TBa2bsb5mbktXySJBoleq/q280OjjLCbSxWdW6KDVoGNlN9O2MF2vqs+Sv1m99jbG
 24gENpjKKpMGXZLz8ZD0LlsLcCW4jw+5T7QGtK+lXZsVgWmElToPyeeHKKI0YOZA/x
 ad+5M/JLVaFOPnk/OWEBBY9K7gVQ01GRLSuJzKqs=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125416eucas1p2f417af8300199cd00291584432cff973~L1GyhfFMd2227522275eucas1p2m;
 Mon,  4 May 2020 12:54:16 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id EB.D2.60679.87010BE5; Mon,  4
 May 2020 13:54:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896~L1Gx8x-ai1176711767eucas1p1S;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125415eusmtrp1ab58d44cf2acebca7c2c1109419622b6~L1Gx8GCL92470624706eusmtrp1i;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-a4-5eb01078b33a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 87.06.07950.77010BE5; Mon,  4
 May 2020 13:54:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125415eusmtip2131813f4a891672552b948480ffbdf1e~L1GxNGVje0350403504eusmtip26;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 09/21] drm: panfrost: fix sg_table nents vs. orig_nents
 misuse
Date: Mon,  4 May 2020 14:53:47 +0200
Message-Id: <20200504125359.5678-9-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeyyVYRzHPee9nJc5ehzKM7lsZ4vVFpE/3o1aNavX+qeWtWpL3niH5bbz
 Oi5tSoQcjnGUJDUrzfVECCHnOC4nMZXblOT6D5tuLkkuOb3ov+/3+3y++/7+eChMqiNsqZDw
 KE4ezobKSDO8rvP3u4OxsMrvUG6HI63q7RLRvX3pBP0ir5KgN+qyMXpg8RtJl5Z3iOhCrSe9
 MDAhoqunhgi6v7GApDXto2J6o7lBTLd+nyboW+2bbKamjzy2i6l4XAGYhtEiwLxeKsSZ6rI0
 kqlfGieYsXSDiKkpusmMrE9hTM5wMWCaPiaQTGZtGWDmqx3OmF8y8wrkQkOiObnrUX+z4D+1
 lpHNu2ILmsrxBLBurgSmFIIeqEQ5CJTAjJLCEoAG5ztFglkAaC2xBxPMPEAV469E2xXDz+It
 qhggnX4O26l0TqqAkSKhG1LOKUmjtobJAL1R/RvEoA5D4x27lUBMWcFzqM3XmOJwH0rpWhUb
 tQR6oay0EUzYckTlVbpNTVGm8Ah6oHI2LiH4SYx0Hxa3GG809Khl6zYrNGuoFQvaDnXnZOBC
 IQmgiV6NWDAZAPUn5gGB8kSfe1dI4wIG96PKRlchPo5Se7QiY4ygBRqesxSut0DquvuYEEvQ
 nRSpQDuhfMPzndnW931bCIOe3XMxxlLYBlBODZ8FHPP/TxUCUAZsOAUfFsTx7uFcjAvPhvGK
 8CCXgIiwarD5r7rXDQsNoHH1qh5ACsjMJRfmK/2kBBvNx4XpAaIwmbWk4fZmJAlk465z8ogr
 ckUox+vBXgqX2UgOP5m5LIVBbBR3jeMiOfn2q4gytU0AyVnqsvjc0FGP1BF/K9Zbkeh48cRT
 3L6pcd3V12kPUZdU4LPiaeFWZTJZcuPXSG7acn5rocPosnqhFjNxidGWVHQOmbyFPia5J1UT
 +FhkKd2e4a6YnrhrP3t6zrflfL3/w5k+3Zev2oDseD0R4fxSPcR6ZZ3ysNOc1f6QFUvWZDgf
 zLodwOQ8+xeC4Ld/UwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xe7rlAhviDFatsLDoPXeSyeLcpW5W
 i40z1rNa/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxdojd9kt/u/ZwW5x
 8MMTVovGI0C1fWsvsTnwe6yZt4bRY8fdJYwee78tYPHYtKqTzWP7twesHve7jzN5bF5S73H7
 32Nmj8k3ljN67L7ZwObRt2UVo8fnTXIBPFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqG
 xuaxVkamSvp2NimpOZllqUX6dgl6Gb+3CBbs4a+Ys3s1SwPjP54uRk4OCQETieOfljN1MXJx
 CAksZZS4dP8aK0RCRuLktAYoW1jiz7UuNoiiT4wS13vusYEk2AQMJbreQiREBDoZJaZ1f2QH
 cZgFTjFL3Jh9DaxKWCBQou/VbmYQm0VAVaLt5B92EJtXwEZiQudtZogV8hKrNxwAsjk4OAVs
 JWb2qoOEhQTyJe4+/ccygZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMA42nbs55Yd
 jF3vgg8xCnAwKvHwbvi6Pk6INbGsuDL3EKMEB7OSCO+OFqAQb0piZVVqUX58UWlOavEhRlOg
 myYyS4km5wNjPK8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA+P2
 iveW57ieMcw8fWVp9oGzgWJCmbadnKztN8Rrnbzm9U4+43cvyK7scvAr+ecsnJYm15q8nee/
 tNBb4fLE/ehGT97Td/Y+13t5ojR4yylhpYt/05/n/8rfcuu5Kqfsnk0B7pMapXLOrK558Ypj
 XYfsoY3PeF8aMfYy3ZwefHKOptJeuw/rIwyUWIozEg21mIuKEwGkmqhquQIAAA==
X-CMS-MailID: 20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896
X-Msg-Generator: CA
X-RootMTR: 20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055418_781689_96363D53 
X-CRM114-Status: GOOD (  14.83  )
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
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
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
 drivers/gpu/drm/panfrost/panfrost_gem.c | 3 ++-
 drivers/gpu/drm/panfrost/panfrost_mmu.c | 4 +++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_gem.c b/drivers/gpu/drm/panfrost/panfrost_gem.c
index 17b654e..22fec7c 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gem.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gem.c
@@ -42,7 +42,8 @@ static void panfrost_gem_free_object(struct drm_gem_object *obj)
 		for (i = 0; i < n_sgt; i++) {
 			if (bo->sgts[i].sgl) {
 				dma_unmap_sg(pfdev->dev, bo->sgts[i].sgl,
-					     bo->sgts[i].nents, DMA_BIDIRECTIONAL);
+					     bo->sgts[i].orig_nents,
+					     DMA_BIDIRECTIONAL);
 				sg_free_table(&bo->sgts[i]);
 			}
 		}
diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index ed28aeb..2d9b1f9 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -517,7 +517,9 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	if (ret)
 		goto err_pages;
 
-	if (!dma_map_sg(pfdev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL)) {
+	sgt->nents = dma_map_sg(pfdev->dev, sgt->sgl, sgt->orig_nents,
+				DMA_BIDIRECTIONAL);
+	if (!sgt->nents) {
 		ret = -EINVAL;
 		goto err_map;
 	}
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
