Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A781BBF36
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yDgvnnRQ02MvbzWGAyfiOWNelHKls+1/0CCyE/pQuAU=; b=Nw/J235f4o1tq16+A/Wv/skWE1
	AHbkwd82dyMkURkfUEYEVMd3Z55/PtuGvkJKT+Ag5TTp+TNfRn92UYcJMBxiO7U8SAyPXtZ/x96eG
	+892ddI1Jv0H4SApVds9jXOcWC65/xBv95EQTCOMq15naBV1rKYJFPT8AMXxSrQu4xQlon9fnCb8y
	jW7dJPACxpzqJY55ZlhmeMeNcEL6uCdggtUwaE5V/6RxR2V0eFPedct6Nm6YReloI2kg4RjIzz6n5
	SMnL1e3k1fUQk2xMR3BoiX8R9mwD1dBGNje1gcL2NawycJuVrc4CJvlYFAAPelAmfHq3sQ48qHeJE
	kvcFnphQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQDQ-0006zC-2S; Tue, 28 Apr 2020 13:24:00 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQA0-0004bP-NF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:20:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132027euoutp016b384169edeb7b937f3bd639f4334be0~J-l7uUx272026420264euoutp01L
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132027euoutp016b384169edeb7b937f3bd639f4334be0~J-l7uUx272026420264euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588080027;
 bh=S123DYYqnTTc0mK1QGc+SsWbu6yYl+uUFjzgUYva8zE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jTRemBu0LwKXrvVUkZTK+F7qrR2E5dq8wGIv9oE8956BWlgjn9xuN1/cvATqSVPV6
 PzXTDfxn1EePs9WuG60+MN7S6E9tBXP+z0iVqs5oAVixh6Y0HiiI467iIx4isIFE2s
 yy5uwRDzgEmekDqqy69kGCkfTEJh+DWRa9OoPAHk=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132026eucas1p2f2f45bfb1303f110538b6b66f77c57b3~J-l7V_wFI2655426554eucas1p2R;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 73.26.60698.A9D28AE5; Tue, 28
 Apr 2020 14:20:26 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d~J-l63durv2653926539eucas1p2J;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132026eusmtrp2f4c5602e7f1c5ef72b67566b37079a60~J-l62gzCT2140321403eusmtrp2H;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-81-5ea82d9a64cf
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AD.D3.07950.A9D28AE5; Tue, 28
 Apr 2020 14:20:26 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132025eusmtip2ab342adf9621cf32c585fd4975e1a181~J-l6Rqy4I1062310623eusmtip2n;
 Tue, 28 Apr 2020 13:20:25 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [RFC 07/17] drm: lima: fix sg_table nents vs. orig_nents misuse
Date: Tue, 28 Apr 2020 15:19:55 +0200
Message-Id: <20200428132005.21424-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfyyUcRzH932ee5577jiejvhOLds1rV/IyB4jKW09W6s1+qPVwuEZys87
 p4iIaU0UactkUgvnDqfzq6TihkcyXchYlJ9/sIk4tzHRnUf67/X+ft/vz/uz774EKm7HHIio
 2ERGFiuNluBCXlPX6hfnYmdl0LER1o3K6/uEUOWau3zqdZEGozJ1PTi12VSAUoMrCzhVpe5E
 qGf59QhV9tGbMgxOIJR2agijBlpKcKqmY4xPtS9OY1TP2DLfz5quLq0G9HtjGY8eHWrF6Wbj
 OEb/fMAidP2rdPr7xhRKFw5XAvrdSAZOP2xQAXpZu++ixRWhTzgTHZXEyFx9Q4SRyp41JD7b
 4la9thHNAKWCHCAgIOkBK8c1SA4QEmJSCaCyZJXHCQOA2m9KjBPLJtH9C/0XqVht23ZVAtj4
 qBfsRKZZNd/swkk3mDOfg5vZlswGsDvP0mxCySYUTld2bJlsSBq26lVbzCOd4GKPeisgIk9A
 1Z8f23WOUF3XtsUC0heWT87g5kGQHOLDZi0XgOQZWLTWj3FsA+fYBj7He+Hm2+cIF8gCcKKv
 hs+JXAAHMosA5/KGo31rpkmEab9DUNPiakZInoKtoxYcWsHh+V1mM2rCx01PUe5YBO/fE3Mz
 DsBitnantV3fv70+DdX5jdvPWABgyZwByweOxf+7ygBQAXtGIY+JYOTuscxNF7k0Rq6IjXAJ
 i4vRAtPH+rzBrrwBH9ZDdYAkgMRSVGepDBJj0iR5cowOQAKV2IomIyuCxKJwaXIKI4sLlimi
 GbkO7CF4EnuR+8vZa2IyQprI3GCYeEb27xYhBA4ZwCrZGhsSXh3fPbO/93dAiFfvkdsGo/40
 r9RdKRt/oVv6Kg0NWBjxXMrtQjrZkxp/f/Tc+dS5tdqCQL1T8B2fsn6XQMw2bCLNwzn9kp9A
 k2JXuDSScHDsuHfIE0u22kKyLggV1KapjJm9nlFqtkpw4bIo/uxRRdb11NmEOi8HOwlPHil1
 O4zK5NK/Om+dzVQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7qzdFfEGfRNFbHoPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZK079Yipo5a7YvGkrcwPjPM4uRk4OCQETiWU/D7B0MXJxCAks
 ZZTYdvg6K0RCRuLktAYoW1jiz7UuNoiiT4wSa298YQNJsAkYSnS9hUiICHQySkzr/sgO4jAL
 HGCW6D5/kgmkSljAQ2LPhVXsIDaLgKrEh1Orwbp5BWwlVv29xwyxQl5i9YYDYDangJ3E0kdP
 gWo4gNbZSlxuyZ3AyLeAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYPxsO/Zzyw7GrnfB
 hxgFOBiVeHg38KyIE2JNLCuuzD3EKMHBrCTC+yhjWZwQb0piZVVqUX58UWlOavEhRlOgmyYy
 S4km5wNjO68k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA2N5uLan
 /L8psZZyXM/ljMzVr6h6lCX0xF//Z5UQf0R+kp7ulj2rPdd8mJtTUv+ALcg68nbXgaLo7Rui
 YgUtLNw+66xJ/n3tx76fYt5LD/Muf36Lx2ybwsG/Lu+vOc96WHY/SyL2hWjoM52+pzKeP/l+
 S8Z9m8Zx0TNZ68zaJU62v7+8CGu43KDEUpyRaKjFXFScCABYxucKtQIAAA==
X-CMS-MailID: 20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d
X-Msg-Generator: CA
X-RootMTR: 20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062028_916725_8B83430B 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
 drivers/gpu/drm/lima/lima_gem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/lima/lima_gem.c b/drivers/gpu/drm/lima/lima_gem.c
index 5404e0d..3edd2ff 100644
--- a/drivers/gpu/drm/lima/lima_gem.c
+++ b/drivers/gpu/drm/lima/lima_gem.c
@@ -70,7 +70,7 @@ int lima_heap_alloc(struct lima_bo *bo, struct lima_vm *vm)
 
 	if (bo->base.sgt) {
 		dma_unmap_sg(dev, bo->base.sgt->sgl,
-			     bo->base.sgt->nents, DMA_BIDIRECTIONAL);
+			     bo->base.sgt->orig_nents, DMA_BIDIRECTIONAL);
 		sg_free_table(bo->base.sgt);
 	} else {
 		bo->base.sgt = kmalloc(sizeof(*bo->base.sgt), GFP_KERNEL);
@@ -80,7 +80,7 @@ int lima_heap_alloc(struct lima_bo *bo, struct lima_vm *vm)
 		}
 	}
 
-	dma_map_sg(dev, sgt.sgl, sgt.nents, DMA_BIDIRECTIONAL);
+	sgt.nents = dma_map_sg(dev, sgt.sgl, sgt.orig_nents, DMA_BIDIRECTIONAL);
 
 	*bo->base.sgt = sgt;
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
