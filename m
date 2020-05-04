Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B105E1C3A97
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hxw3pyrCMtoGuRuzNLmJWp76ssOUtiDEmY62ATaV7Qs=; b=P3G8LX7nZGG18X0h4Vsc1p0D2K
	7GRXHeJmCSCn2H4F8yE/aKqxI3noDKC7djCfCfa7I2p0a1zR8L/GV9EI4061wQ15nNVRB6vrZfeE7
	GjeqpSUHpSPpaPF4KWArL3uuoM0J4ZajUX6UtiHtyh4lkpGPzu8QjqrUez5f0t0xOn5sb+PCSMEvm
	SIGC8/LgX18j14+Ape85g414OT4/oTDH3JBjOYUIyH18azulsgF/k8VHW887jJnvOqm2k32I44q2Z
	tgW7yf/yay5x6Zo0ITIgqvYvPojapzG2M21oMEo2pG5k7rO5LQkB8hDvlwDvLxudbG5krRHUuNbq5
	oa8683qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVafF-0007wY-DN; Mon, 04 May 2020 12:57:41 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVabz-0002bv-Oq
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:21 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125418euoutp023d8fa2c17ee1f938eb923b8dd48e367e~L1G0F5O681779417794euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125418euoutp023d8fa2c17ee1f938eb923b8dd48e367e~L1G0F5O681779417794euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596858;
 bh=MKuNM5F/aAqf4foAqWxZ/wfkeugl/f0VOXKL2W35qzY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qjqCFs7A3fHIE6oTVa+vulccSqXAMee48C0gswuFbhMYFttmKEbG48XlR0wnh1p+5
 usOl3H7Ip+1NNjad1N0q0V9j6DYheITchMdkUuTHMs8g1Ihf4OYvNXY0UVeLdY0t2c
 wQ+6LgVRdN+zh8V4q4Az5aSmNRcsAoVMnUsE8h4U=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125417eucas1p29975f37839a21bb71daff7da2708876c~L1GzpCSgB1833418334eucas1p2C;
 Mon,  4 May 2020 12:54:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 1D.D2.60679.97010BE5; Mon,  4
 May 2020 13:54:17 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b~L1GzW3G_L1097010970eucas1p1e;
 Mon,  4 May 2020 12:54:17 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125417eusmtrp2a738da8603417531cc6899ad38350e8f~L1GzWOUco2826928269eusmtrp2R;
 Mon,  4 May 2020 12:54:17 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-a7-5eb0107905aa
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 39.69.08375.97010BE5; Mon,  4
 May 2020 13:54:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125416eusmtip2c18734bdecf75a1d1cd5f215d8a79491~L1GyqxnTi0350503505eusmtip2N;
 Mon,  4 May 2020 12:54:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/21] drm: rockchip: fix sg_table nents vs. orig_nents
 misuse
Date: Mon,  4 May 2020 14:53:49 +0200
Message-Id: <20200504125359.5678-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTYRTHe3Z3765ri9sUfTDJGGRpqE0lLplRkHA/iSC9oGTOvKjppmzT
 UrKWVsRSU/ugiZqJNHO+TplvlU7T2wpWvmZZmVmSiWVORWVqmzft2/+c8/uf/+HhwRFRO+qK
 x8tVtEIuTRRjfK6hb8XsnUY0RB42zh4ic8wmDtlYVI+SG4Z8hBxa/I2RT3S9HHLj6wxKlhZk
 kOWdgeTC0ASH1E+OoORgewlG1r74xCONc9/QE0KqpqwGUM+WyrlUy9IXlBq/y3Copsrr1Nj6
 JELdH9UCquO9GqPWiju5VG5zNaBaRsoQyqLfGyoI5x+LoRPjU2mF7/Eofpxap8eSl1yu1M0N
 8tRgxlEDHHBIBMC2hXlEA/i4iKgCsClPjbLFAoBvhrsAW1gAbMzVY1uWqs99PHagBTCbKUW2
 LY8rGcROYYQEamY1mw4n4haAL3MEdggh5jjQaMrchByJMDjWtrIJcYn9cHr5A2rXQiIIPrzR
 gLJx7lDX0GXjcdzB1n+Qc8C+BxKveLDLouWwzCmosyz+O88R/mSaeax2gxttDzmsIQvACXMt
 jy2yARzMLAIsFQg/mlcxewJCeML6dl+7hMRJqH7qzMpdcHR2tx1GbLLAUIiwbSG8c1vE7vCA
 xUzddqrx7QDCagqWTNzD2PfpAXCNeY7lAffi/1nlAFQDFzpFKYullX5y+rKPUipTpshjfS4m
 yfTA9qNerzMLraDdGt0NCByIBcJzlvpIESpNVabJugHEEbGTsPWmrSWMkaal04qkC4qURFrZ
 DfbgXLGL0L9i+ryIiJWq6ASaTqYVW1MO7uCqBoVMR3KOX5hG7Zw/FRue0COYV8mCZbzgZWvw
 jmjdNbrCxIRmXX13duVg9Y/yfSPN4gLfgHHd0YypiuE/4/2/4lWKmDMavtl/otca4S05MtbS
 pPI4HeIljGKG3Aqd0iVkZ4RpdXFVcImrd45otYaUeTrzDdpHQf0D35t3moFUzFXGSSVeiEIp
 /QtEZExuTQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsVy+t/xe7qVAhviDA5tlrToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSz+P3rNajF3Uq3Fgv3WFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObxd9Z+Fo++
 LasYPbZfm8fs8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1N
 SmpOZllqkb5dgl5Gw+pNbAXfxCvWfbjM3sD4WriLkZNDQsBEYsW9Y+xdjFwcQgJLGSWO/7vO
 DpGQkTg5rYEVwhaW+HOtiw2i6BOjxNWr01hAEmwChhJdbyESIgKdjBLTuj+CjWIW+MEk8WjF
 REaQKmGBQInbva1gHSwCqhIvf9wCG8srYCsxv3ED1Ap5idUbDjB3MXJwcALFZ/aqg4SFBPIl
 7j79xzKBkW8BI8MqRpHU0uLc9NxiQ73ixNzi0rx0veT83E2MwJjZduzn5h2MlzYGH2IU4GBU
 4uGN+Lw+Tog1say4MvcQowQHs5II744WoBBvSmJlVWpRfnxRaU5q8SFGU6CbJjJLiSbnA+M5
 ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDo9A9VtNVze+jOoNk
 b649dT824fm1G9f2iQtuTynh2Hb4iVRDVpKr/gROh4MXfeKS/VXClnC/FjtrkO+6I26vmqGL
 2+4PH3k1w8/V/OcI+XDZz7e54Peez1M1e9hepNm/eXjGi7Hz7bKjxXnzxIVnL7qmeM9Fv+fl
 px3ud4QOZa338mjyZFzqp8RSnJFoqMVcVJwIAGHOQO+vAgAA
X-CMS-MailID: 20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b
X-Msg-Generator: CA
X-RootMTR: 20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125417eucas1p1672a3ad3263e5f6b9162ecf7bef7af2b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055419_948439_748D4A41 
X-CRM114-Status: GOOD (  14.50  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
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
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 0d18846..a024c71 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -37,7 +37,7 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
 	rk_obj->dma_addr = rk_obj->mm.start;
 
 	ret = iommu_map_sg(private->domain, rk_obj->dma_addr, rk_obj->sgt->sgl,
-			   rk_obj->sgt->nents, prot);
+			   rk_obj->sgt->orig_nents, prot);
 	if (ret < rk_obj->base.size) {
 		DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
 			  ret, rk_obj->base.size);
@@ -98,11 +98,11 @@ static int rockchip_gem_get_pages(struct rockchip_gem_object *rk_obj)
 	 * TODO: Replace this by drm_clflush_sg() once it can be implemented
 	 * without relying on symbols that are not exported.
 	 */
-	for_each_sg(rk_obj->sgt->sgl, s, rk_obj->sgt->nents, i)
+	for_each_sg(rk_obj->sgt->sgl, s, rk_obj->sgt->orig_nents, i)
 		sg_dma_address(s) = sg_phys(s);
 
-	dma_sync_sg_for_device(drm->dev, rk_obj->sgt->sgl, rk_obj->sgt->nents,
-			       DMA_TO_DEVICE);
+	dma_sync_sg_for_device(drm->dev, rk_obj->sgt->sgl,
+			       rk_obj->sgt->orig_nents, DMA_TO_DEVICE);
 
 	return 0;
 
@@ -351,7 +351,8 @@ void rockchip_gem_free_object(struct drm_gem_object *obj)
 			rockchip_gem_iommu_unmap(rk_obj);
 		} else {
 			dma_unmap_sg(drm->dev, rk_obj->sgt->sgl,
-				     rk_obj->sgt->nents, DMA_BIDIRECTIONAL);
+				     rk_obj->sgt->orig_nents,
+				     DMA_BIDIRECTIONAL);
 		}
 		drm_prime_gem_destroy(obj, rk_obj->sgt);
 	} else {
@@ -493,14 +494,14 @@ static unsigned long rockchip_sg_get_contiguous_size(struct sg_table *sgt,
 			struct sg_table *sg,
 			struct rockchip_gem_object *rk_obj)
 {
-	int count = dma_map_sg(drm->dev, sg->sgl, sg->nents,
+	int count = dma_map_sg(drm->dev, sg->sgl, sg->orig_nents,
 			       DMA_BIDIRECTIONAL);
 	if (!count)
 		return -EINVAL;
 
 	if (rockchip_sg_get_contiguous_size(sg, count) < attach->dmabuf->size) {
 		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
-		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
+		dma_unmap_sg(drm->dev, sg->sgl, sg->orig_nents,
 			     DMA_BIDIRECTIONAL);
 		return -EINVAL;
 	}
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
