Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3971C3A59
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nEgtWVR4Gc983XuudaI2ppvxCdta8E+QNCFAtI9WkPs=; b=uKVf16YuhpCh58uY1K4dzC61Rs
	vXM6AlJkFVb9oY1POx7/ImddYYgqD1DVjfw4/CjbTYRoGBIlZ6NxZUDZJMmLB1IwRv9Z1NZ7fU3Dw
	gkfDD070mx4DmdQH6W2yTRKLB8aaPnIdKp6Lr68RAPiFbn/uBH8aEoBmIXPcLVGIJ/HpaqVSH1EEC
	NlTK9oOWFKEcw5eXyhvRJo6ijWlsf0suevMWLjRsyOPWya44vonL23ZYbUBUH6InSBTOs9Nj414Ha
	0/qfS7rRrJe5SSoV2J/Phhc+CD0MzyN7YVb7d6oYCPCJU4PpbApzQXuGCBRLbw2eEJ1EWUc/MJpNH
	ordidyVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVado-0006a7-8N; Mon, 04 May 2020 12:56:12 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVabw-0002Xa-Cm
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:18 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125415euoutp01f626b55bdb3dfa0fbcb75bb96bdd9505~L1GxIzK7F2848128481euoutp012
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125415euoutp01f626b55bdb3dfa0fbcb75bb96bdd9505~L1GxIzK7F2848128481euoutp012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596855;
 bh=CgrtVSLjUYP2yj+WYZS8YtjVR3okLNG4iQ8uCybjyW8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d7jxQDzNYUHUtrKaRgyByMMc19VSsvRmRCV3d9QQI2OAsVaON2hfIBYhX0GG2Y2/K
 aa2I6wwhZ07xUt3PdQfNLBnC851Wmu5h+Bg/uyKczuMoeUnw1scPkKXU+nGqh4hX/B
 ZvPakp4h7HXRI845oJhTab4gmFbqtU1fnSAYYwTA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125414eucas1p2c3aae4ea1c2103b5760ec95eea53f9ea~L1GwyALRk2430824308eucas1p2b;
 Mon,  4 May 2020 12:54:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 3C.61.61286.67010BE5; Mon,  4
 May 2020 13:54:14 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b~L1Gwh8X-Z0159401594eucas1p1z;
 Mon,  4 May 2020 12:54:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125414eusmtrp20b6692c293467c88086dd55a1390bf8d~L1GwhTF9k2826928269eusmtrp2O;
 Mon,  4 May 2020 12:54:14 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-fb-5eb010767dad
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 18.69.08375.67010BE5; Mon,  4
 May 2020 13:54:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125413eusmtip2609c8cbb739a553efe3a313818bcfbd5~L1Gv1V8bS0350503505eusmtip2M;
 Mon,  4 May 2020 12:54:13 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/21] drm: lima: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:45 +0200
Message-Id: <20200504125359.5678-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djPc7plAhviDD4d1rboPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+DxvE5vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNXi
 w9qvTA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB3FZZOSmpNZllqkb5fAlXGz6xhzwUyeijdbCxsY53J1MXJySAiYSJxb8IkF
 xBYSWMEo8XxmZhcjF5D9hVHi9fyfLBDOZ0aJSUsfsnUxcoB1LJueAhFfzijRuncOC1zH19sf
 2UFGsQkYSnS97WIDsUUEWhklTvTygBQxC1xmkph/tAlsn7CAv0TriadgDSwCqhINu66BxXkF
 bCQWNbezQ9wnL7F6wwFmkM2cArYSM3vVQeZICBxjlzh4YScLRI2LxLTP86DqhSVeHd8CZctI
 /N85nwmioZlR4uG5tewQTg+jxOWmGYwQVdYSd879AvuNWUBTYv0ufYiwo8TxjsMsEC/zSdx4
 KwgSZgYyJ22bzgwR5pXoaBOCqFaTmHV8HdzagxcuMUPYHhLXOpqhAXSYUeJ+UyPLBEb5WQjL
 FjAyrmIUTy0tzk1PLTbMSy3XK07MLS7NS9dLzs/dxAhMS6f/Hf+0g/HrpaRDjAIcjEo8vBGf
 18cJsSaWFVfmHmKU4GBWEuHd0QIU4k1JrKxKLcqPLyrNSS0+xCjNwaIkzmu86GWskEB6Yklq
 dmpqQWoRTJaJg1OqgXHWq78JkyIFc9Rbn8+fuu+M+R2Xad+rVPf3am7m/7f5jNu28w+8Ta2Z
 w5e7Wp52W/1oygtzsVnPyh+1/7vhtCf0SXH2zknHD7xbKS1/8caOO7sZFQ2W3V/sfWujv53d
 1ZzupRJrGfXU1h6NdQiMVpBnE3zL/O9G4crFHiECf+JZf9ftfHGevfOFEktxRqKhFnNRcSIA
 Dm1b60cDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsVy+t/xe7plAhviDB52iFv0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfJ63ic3iy5WHTBabHl9jtbi8aw6bxdojd9ktDn54wmrx
 Ye1XJgdejzXz1jB67P22gMVj56y77B7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP
 vi2rGD0+b5IL4I7SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcks
 Sy3St0vQy7jZdYy5YCZPxZuthQ2Mc7m6GDk4JARMJJZNT+li5OIQEljKKLGq9zxrFyMnUFxG
 4uS0BihbWOLPtS42EFtI4BOjRNfzMhCbTcBQoustSJyLQ0Sgk1FiWvdHdhCHWeA2k8SZuROY
 QaqEBXwlzj34DmazCKhKNOy6xgJi8wrYSCxqbmeH2CAvsXrDAWaQizgFbCVm9qpDLMuXuPv0
 H8sERr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAqNk27Gfm3cwXtoYfIhRgINRiYc3
 4vP6OCHWxLLiytxDjBIczEoivDtagEK8KYmVValF+fFFpTmpxYcYTYFumsgsJZqcD4zgvJJ4
 Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjCx5xuZ/Qm56Z8n+ie+r
 MKnMrvNf79J5a5lEQWbizanRYYs+POhVZkv5fOv3xE9xudvD4tZXLlzlnbto4rLKH9eZWhh2
 vD/vtkPr359dOW5TjXc+nNzCX3rjTOHfAptDFUE/xQ5wLrpq0KB4W29uq6XxpX/ia/3nzeFa
 4OCUXCHGml8aMn3rFSWW4oxEQy3mouJEAKiP7iioAgAA
X-CMS-MailID: 20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b
X-Msg-Generator: CA
X-RootMTR: 20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055416_658425_E8D71318 
X-CRM114-Status: GOOD (  13.21  )
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
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
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
