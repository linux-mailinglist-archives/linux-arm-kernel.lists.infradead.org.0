Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D463A1BBF1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t7AHnCq1whVNmxNLtm0BeINuXRgUpC1V2TXMv58/rvI=; b=lfUIXK89gD10aLEq6pu5Ly2ItZ
	bDSBQLPjNnb/rI+yJqZK3ex+2B51mR0fp6RYnC/D2rSejFuEwpNHLte9wXzuDugAUFXTQOo+cKVuF
	34/nT3yY6cZL4wm2v+jkCUWB412lqD5K2TGtQB2V5fzyOacwwq9hxJjZLVl3iDdzt/EZt/PwN5AMW
	hPsTfJR68Flahxx10WuAiNsF1f+dutMI9UhkQFSm/3MXF2FzSdN5xgpFmyN3mmkF+ix4YYZ4HgF4/
	qPMU1d2rIlUWZYD2a+5zUOmYpnPNZ05s3zfolk110zpGVuQ27dAQFfmnVcOXwjAfsDTcaATWlQNBQ
	Ja57jkdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQBD-0005Dc-Kq; Tue, 28 Apr 2020 13:21:43 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQ9y-0004Zk-2C
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:20:28 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132024euoutp024080bbee6cb99cb6b3791f01435f56a3~J-l5P3jzw2982129821euoutp02X
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200428132024euoutp024080bbee6cb99cb6b3791f01435f56a3~J-l5P3jzw2982129821euoutp02X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588080024;
 bh=4V5EWHU51lrmO9OpsszXaCoiSrCUGE+t44s1P6BJsQU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e4B3FkCfhSezAmTW33v5ddQ+Hq2jX8tQRvP7VoDw4P2HHETMt6rlN1vMMfmYpOROg
 EodiQNAsWAkejTzVNJizaZvU7dDlhE7ZGMRUeCRwAZgQn5ekar8EmM71SLuhXyB2yp
 N15hkbLux5VNoBjw1KzF2gGs6zIIYclJdqW5+bVE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132024eucas1p15062f4f48b3c3f63ba9f9384f7f36ae5~J-l46X3sQ3055730557eucas1p1U;
 Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 41.C1.60679.89D28AE5; Tue, 28
 Apr 2020 14:20:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1~J-l4oC-4L3064530645eucas1p1J;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132023eusmtrp22df37bbd0b0862da59bf0f32ef70decb~J-l4nVy1g2140221402eusmtrp2E;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-8b-5ea82d98a24e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6A.D3.07950.79D28AE5; Tue, 28
 Apr 2020 14:20:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132023eusmtip25f9c33cb573d33ee412417a1847bd9a2~J-l3-P9IZ1062310623eusmtip2j;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [RFC 03/17] drm: armada: fix sg_table nents vs. orig_nents misuse
Date: Tue, 28 Apr 2020 15:19:51 +0200
Message-Id: <20200428132005.21424-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeyyVYRzH95z3vBdy9HYoz1C207LUELK9jUwqe1f+KJva2sjBG+a686Lw
 R9LVcZnLzEnlUuSeO+WyjtNB2GguxyXKddJGmpOWjLxe9N/n930+v32fPXsIRKxEjYnA0AhG
 FioNlmC6woaOP32WCstir1PaTX0qubdLQBVW3sOpakUlSsWrujFqsyENoQZ//cCokrJ2AfUs
 tVZA5b13oLSDUwKqZkaDUgNNzzGqQj2BU23LsyjVPbGCO++ny3PKAd26miekxzUtGN24OonS
 XxM7BXRtwV3688YMQmeMFAG6eTQOo1PqSgG9UnPkyr4buo5+THBgFCOzdvLWDVBoqvHwDvKO
 IncUjwN9IjnQISB5GvaN9yFyoEuIyWIAu0rzUX7QAjiq7hFylphcAbC0x3t3I2+wH/BSEYCp
 8QXY3kZPfgbgLIy0gfJFOcaxIfkQwI/JepyEkA0InC1S43JAEAbkJVj/4RrnCMljsLWxdrtN
 RJ6FJQlDKN9mBsuqlAjHOqQTLJye2y6DpAaHWcMDO9IFOPt0Y4cN4PfOOpxnU7j5LlfAL9wH
 cKq3AueHJAAH4hWAtxzgeO8axt0IIS1gZZM1H5+DU9NKARdDUh+OLB7gYmQL0xuyED4WwSeP
 xLxtDrM73+zVtn3qR3im4cKLbCH/QGkADvcmYqnALPt/WR4ApcCIiWRD/BnWNpS5bcVKQ9jI
 UH8r37CQGrD1r3o2OrVvQdO6jwqQBJDoiar0ir3EqDSKjQ5RAUggEkPRdMBrL7HITxodw8jC
 bsoigxlWBUwIocRIZPdywVNM+ksjmCCGCWdku6cCQsc4DlS0z5c5xpmWszEWWlm676HglBzn
 pUzXuTXzseT6GbeSk4vuCjQh44t9/VKNabKLm+v5Zu+Ckgc+6ZWPTSwvz2vdf1pPZoZ9E71S
 mXgOBKT0XzSyfGrbkuS4/LdJbT5xy3tsSfO71u5w1+pVVfGZ9OMuQbEeR68PHVwXVyg9Yu3D
 1RIhGyC1OYHIWOk/+8puuVMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7rTdVfEGVyYaGrRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyZlzbyF5wTKBixvyb7A2M53m7GDk5JARMJBZcucTYxcjFISSw
 lFFi6tmtbBAJGYmT0xpYIWxhiT/Xutggij4xSrQfbAUrYhMwlOh6C5EQEehklJjW/ZEdxGEW
 OMAs0X3+JFMXIweHsICXxNbDYSANLAKqEnu3b2YBsXkFbCVWdl6F2iAvsXrDAWYQm1PATmLp
 o6dsIK1CQDWXW3InMPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERg924793LKDsetd
 8CFGAQ5GJR7eDTwr4oRYE8uKK3MPMUpwMCuJ8D7KWBYnxJuSWFmVWpQfX1Sak1p8iNEU6KaJ
 zFKiyfnAyM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cAY8rPw
 /4FVz0/nKckpOrm73znoVymZWXtxo9u+B4LbmfmZ7Xm7XXc5f0h8Hh+X9P6LhWGvgifjic4j
 vsmR3XpiJmlbAjtfKIbujZ/8ok7f5ePerCe+h/7kPzEq/SsbWCJ5MO+rq3KR16/dV2Vib3MX
 zqpszdW55KZ0cPui1qeT+LW5UxkOFCixFGckGmoxFxUnAgB/3dKrtAIAAA==
X-CMS-MailID: 20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1
X-Msg-Generator: CA
X-RootMTR: 20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062026_265497_E903A7F3 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
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
