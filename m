Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5501C3A46
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OLPo4PkK0U8RT+0EkQVGQLDuZX8LkL1VSkI+qD/KgY0=; b=V9OyzCjuZThLCRKDstX/sekPTY
	6twCa0W97M9xpbS0gESSiMfsz8vKD7BNI6sEiAiZFP64NKsZYv0f3uDDQ/MMFPt2paaO8vt19qIf1
	j2HBb2CCeCtG2CJjrQVzLPX0cvlziAKERMa/HdzSaQayEKegh86bSBPHtm9jTC6Os1bRN99tznC/n
	RVqNs9IKvaSAgElaigZL1Qrt3I4NGPo4QlprWT4lgcjmdzc1LlYEEXSCUX9CmrALG0Fq1TWF173/V
	ax6tm4jrgBowOCXydrrisp9oBUy7D15BxEHNASmNDuJXSHhl9x+6FZmh6Sa9zo0PJamlOqlSoj02x
	yuZXp+Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVad1-0003IQ-ND; Mon, 04 May 2020 12:55:23 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVabt-0002Vy-Um
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:15 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125412euoutp029001122e46221765ebe98e9c10eca3eb~L1Guueyy_1833318333euoutp02t
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125412euoutp029001122e46221765ebe98e9c10eca3eb~L1Guueyy_1833318333euoutp02t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596852;
 bh=7HGSt2R/zExJEcnP64x1LN4W0tfsgffJO1RfzuEm2Cg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XV44t1ax8fNg17FmsDQHxrILVSza7FD4D2qV2sTA/OitmKm5Xav8gniAnZAZB6IHQ
 NNczJjwlLgKVTdJH6DznM3/War1IxN+MB4vzRKYbXS4wCNu7ZAPdqqfbeD9UsugBiQ
 DzOPWJQrVJdmPMR7HKuq1HVqLCIlsOlYFh19b1/M=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125411eucas1p187c163f9e8fd81407167766963dbbde4~L1GuN24ZS1058810588eucas1p1c;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 22.12.60698.37010BE5; Mon,  4
 May 2020 13:54:11 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125411eucas1p1d516115c221176c0903d77336b563c26~L1Gts1o7x1172711727eucas1p1R;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125411eusmtrp280a77196c4cf0378539a7fe7a12ba0f5~L1GtsFZUI2826928269eusmtrp2E;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-40-5eb010739798
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 34.69.08375.37010BE5; Mon,  4
 May 2020 13:54:11 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125410eusmtip29d451bb482b7eb7481d4ed9f45c35f45~L1GtBHIfN0350503505eusmtip2L;
 Mon,  4 May 2020 12:54:10 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/21] drm: armada: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:41 +0200
Message-Id: <20200504125359.5678-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAKsWRmVeSWpSXmKPExsWy7djP87rFAhviDM78MrHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZnFo6l5Gi7VH7rJbHPzwhNWB
 x2PNvDWMHpevXWT22PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArijuGxSUnMyy1KL9O0SuDLed01lKbglWLGhp4e1gfEcXxcjJ4eEgInE0gmv2UFsIYEV
 jBLHP2l1MXIB2V8YJWau/s4O4XxmlLj5ehcTTMf6h+tYIRLLGSWut+1hgmtZunkWM0gVm4Ch
 RNfbLjYQW0SglVHiRC8PSBGzwAEmibZ3r8FGCQsESlxtagQrYhFQlbgzdSLYIbwCNhKbvp9g
 hVgnL7F6wwGgoRwcnAK2EjN71UHmSAgcYpfY/uov1EkuEtP2bmCGsIUlXh3fwg5hy0j83zmf
 CaKhmVHi4bm17BBOD6PE5aYZjBBV1hJ3zv1iA9nALKApsX6XPkTYUeL3vmesIGEJAT6JG28F
 QcLMQOakbdOZIcK8Eh1tQhDVahKzjq+DW3vwwiWoEg+J6dvcIOFzGOiC998YJzDKz0LYtYCR
 cRWjeGppcW56arFxXmq5XnFibnFpXrpecn7uJkZgOjr97/jXHYz7/iQdYhTgYFTi4Y34vD5O
 iDWxrLgy9xCjBAezkgjvjhagEG9KYmVValF+fFFpTmrxIUZpDhYlcV7jRS9jhQTSE0tSs1NT
 C1KLYLJMHJxSDYzpHm32pxJ2Xm/Y/3DWyt6JXxiDDQ6XaRhn5qr8vb34mv5uM8YE7Xdt7zqm
 pTtf/lX9rTpnxpnbk+vO8Eb84pgVyNwUeTTy+vsFwbdXnDzNb/lj2vvKzi9czrcfnj9anuYY
 oiCenCO8+lC2L9v/uf6Oj1l/3lOb+3/LwpyCT3aq9hHaVbE//GcosRRnJBpqMRcVJwIA8H0c
 GEMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEIsWRmVeSWpSXmKPExsVy+t/xe7rFAhviDBqfiln0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hszg0dS+jxdojd9ktDn54wurA
 47Fm3hpGj8vXLjJ77P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehnvu6ayFNwSrNjQ08PawHiOr4uRk0NCwERi/cN1rF2MXBxCAksZJVZO2coOkZCRODmtgRXC
 Fpb4c62LDcQWEvjEKLFtOzOIzSZgKNH1FiTOxSEi0MkoMa37IzuIwyxwjEli4a+PLCBVwgL+
 Ev2t/8C6WQRUJe5MnQi2gVfARmLT9xNQG+QlVm84ADSVg4NTwFZiZq86xLJ8ibtP/7FMYORb
 wMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzA+th37uXkH46WNwYcYBTgYlXh4Iz6vjxNi
 TSwrrsw9xCjBwawkwrujBSjEm5JYWZValB9fVJqTWnyI0RToponMUqLJ+cDYzSuJNzQ1NLew
 NDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwNjwtWjqmlN9Dza7RPX92fDkxjPJ
 gm+R8sotSirvz7bx8kRVbdo56Z3/3yu2bzabGCuV79+8+FxPdOpbrT52ntVxb+tuR31ucuqZ
 t/uf8se7y6u0Y+UPCOVeTPGSvGW+8obpihnN3l5FP7K337mR/lEnKJz7yfLS/6/+zPjS8z6g
 +XjQBJvgOjklluKMREMt5qLiRACDSulppQIAAA==
X-CMS-MailID: 20200504125411eucas1p1d516115c221176c0903d77336b563c26
X-Msg-Generator: CA
X-RootMTR: 20200504125411eucas1p1d516115c221176c0903d77336b563c26
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125411eucas1p1d516115c221176c0903d77336b563c26
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125411eucas1p1d516115c221176c0903d77336b563c26@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055414_269312_B423877D 
X-CRM114-Status: GOOD (  14.83  )
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
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
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
 drivers/gpu/drm/armada/armada_gem.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
index 976685f..749647f 100644
--- a/drivers/gpu/drm/armada/armada_gem.c
+++ b/drivers/gpu/drm/armada/armada_gem.c
@@ -407,8 +407,10 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 			sg_set_page(sg, page, PAGE_SIZE, 0);
 		}
 
-		if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0) {
-			num = sgt->nents;
+		sgt->nents = dma_map_sg(attach->dev, sgt->sgl, sgt->orig_nents,
+					dir);
+		if (sgt->nents == 0) {
+			num = sgt->orig_nents;
 			goto release;
 		}
 	} else if (dobj->page) {
@@ -418,7 +420,9 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 
 		sg_set_page(sgt->sgl, dobj->page, dobj->obj.size, 0);
 
-		if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0)
+		sgt->nents = dma_map_sg(attach->dev, sgt->sgl, sgt->orig_nents,
+					dir);
+		if (sgt->nents == 0)
 			goto free_table;
 	} else if (dobj->linear) {
 		/* Single contiguous physical region - no struct page */
@@ -449,11 +453,11 @@ static void armada_gem_prime_unmap_dma_buf(struct dma_buf_attachment *attach,
 	int i;
 
 	if (!dobj->linear)
-		dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents, dir);
+		dma_unmap_sg(attach->dev, sgt->sgl, sgt->orig_nents, dir);
 
 	if (dobj->obj.filp) {
 		struct scatterlist *sg;
-		for_each_sg(sgt->sgl, sg, sgt->nents, i)
+		for_each_sg(sgt->sgl, sg, sgt->orig_nents, i)
 			put_page(sg_page(sg));
 	}
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
