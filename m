Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB671FF7E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4AOgmPHNH2McwezzGoH0YEllvGl8FugfCLXe1wFA9Fk=; b=TYcMm3RsOWXVC/aUM+ayxH2R4t
	fwyOP/iiM1g0axklJi1XqWcPUVVaZB44yD3qQ14eUoINEx8caSIzcmhlcZxQ4sNpZgrSEyuf7TLt9
	bGi6FJRQE9LQbBkXZGFPMnf4J4itPIWdHHECdMnZJfSBltgU4YkgRMi4h2Ip8CYwSd47E8meT7LDx
	hx+WXReFpSXA67tZrNdasiKwQBFBosfJ7k/kxdkjv2jYZtO3n82hpAIk5IAHaJBeQXNEH+rebo8Bl
	YbRasx0Qz7GxB08f48Rv+eevV75fgpL2hsGtKGwybxjO2Wd24sKkSmC4A4dazHbW7yk2/G5mdSgHE
	+41fu/Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwlo-0004Cd-IO; Thu, 18 Jun 2020 15:48:04 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweX-0004L1-Cw
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154031euoutp012ad675ae7918f163c6e2cbcafee408be~ZrZy7aj4H1845018450euoutp01E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154031euoutp012ad675ae7918f163c6e2cbcafee408be~ZrZy7aj4H1845018450euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494831;
 bh=OFqbUENGcwHkaTj73rLNsgPPEJEVjihPUEx1KDeP3MU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t6ESMzLJjAfQr8z/AOOMm2jfaJWpis+kK8tjBKwhEO9Zesdly+GPL8s9vsRfojW+K
 hS0Y4Q56O+e+uzjtvCh6/Fv5+Gwu89LofWWh/Myov/VDs2rBo8q7TsSiwAroxjVFPs
 zFrxinvjFDYb0u1EhBO2Vs57a9/Uar2jSA2K1IcE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154031eucas1p1ce6e57d0a2d0556f04a7fcd3183f9cbc~ZrZypCTKs0074000740eucas1p1H;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 17.DE.60679.FEA8BEE5; Thu, 18
 Jun 2020 16:40:31 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a~ZrZyVgc1-0074000740eucas1p1G;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154031eusmtrp2a2a62a31e0dcabc27719c44266237bf0~ZrZyU6H_i0399203992eusmtrp2i;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-46-5eeb8aefa76e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 72.FE.08375.FEA8BEE5; Thu, 18
 Jun 2020 16:40:31 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154030eusmtip10b580271ad26480dc952d65a4cb35f35~ZrZxrdwLH0833608336eusmtip1T;
 Thu, 18 Jun 2020 15:40:30 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 25/36] drm: host1x: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:46 +0200
Message-Id: <20200618153956.29558-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+c5lO14Wp2n6oZUxqKzIS0Uc0cRE6NAfKRH9IWStPEzRTd3U
 0oLM0tq8J16YVqsU817TZi4yHeYsc3m/oGbqoNYUDS9glLZ51P573t/zvDwvHx+B8ptwFyJS
 Es9IJcJoAccW03SsGo7OK8xhXvIRAZVl+IhQr4rrcWpdk4dSA8vzHKqy+gNCqd77UksDUwil
 nhnCqX5tKYeSLyk5VG37BJdqWzDi1Kr2MRbAo2se1wD63YoKo5uVE1y6aeUbTk9m6BG6oew2
 PbY2g9L5IxWAfjuawqGzG6sAvajeG2IXausXzkRHJjJST/8rthEmYwcWO+R647uyH08BRU4K
 YENA8gRsbvmFKIAtwSdfAJj/pZfDDksAFqdmouywCGCF+Q7YWsm+v4yzRgWA5ZXPwfZKSkYZ
 Yk1xSG+omFNwrNqRTAOwM8veGkLJaQTKh3tRq+FAnoe5a1rcqjFyPzRNZm9wHukPc/rbN+vc
 YPXL1g1uY+Fd+rSNakjquFDXUoixoSDYo1XjrHaAP/WNXFbvhuvNTxB24S6AU4ZaLjtkAtif
 WrxZ4QvHDb8ttxKW+w7Beq0ni09DfXYO14ohuQOOzO20YtQiH2qKUBbz4IN0Pps+AJX6uu3a
 tp6+zQgN+7q92AfKA7ClxsjNBW7K/10qAKqAM5MgE4sY2TEJc91DJhTLEiQij2sxYjWwfKeu
 Nf3SG6D9c1UHSAII7Hk/LpjD+LgwUZYk1gFIoAJHXmB3VxifFy5MSmakMZelCdGMTAdcCUzg
 zDv+zHSJT4qE8UwUw8Qy0i0XIWxcUkCB6/C9PV8HP/lV7VOGlKcFH6lrcFMbJCfb7epwebqj
 fdfszHRQWa/P4t/QTHShNCS842bSxfSBzwMZpVEHRXFnieDxMvdOh/DVsVO+sa/PqSJ63FuN
 PaU2YyWDTSFyM1Y/GZisaQgQhM46jmtGTdW3Cndl+px5tFAS5/S0KK2gQ4DJIoTeh1GpTPgP
 aCAi/0oDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7rvu17HGUz/zmPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaLzyyw2i7VH7rJbHPzwhNXi
 5655LA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/HyyTGWgmvSFc9nXWZtYJwu1sXIySEhYCLR1/6VFcQWEljKKPFsDzNEXEbi5LQG
 VghbWOLPtS62LkYuoJpPjBITu2eBFbEJGEp0vYVIiAh0MkpM6/7IDuIwC7xikvjwp5URpEpY
 IECi4/d1FhCbRUBV4uX9PrBuXgE7if7LRxghVshLrN5wACzOCRQ/fbwV6iRbiecf2tgmMPIt
 YGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERgr24793LyD8dLG4EOMAhyMSjy8L0Jexwmx
 JpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0FETmaVEk/OBcZxXEm9oamhu
 YWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFRP29tR/K+7IpHfDGrry4Rur6Z
 +9OtHKfs/Q5LZwv6+pp4LZw+8cre5vmPOR/2rF6Zw5PBz2t6oi5zQ24U79Eb936s2P1iZSh/
 /tdtp7PkxM533dlv+ubWDqOZ6xn88vkvLX5rV/cytuG/U9nbDU9z1jcv3TWpmzvm0LuXbdyr
 pDZONCn/zZzlosRSnJFoqMVcVJwIAL4j8NGrAgAA
X-CMS-MailID: 20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a
X-Msg-Generator: CA
X-RootMTR: 20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154031eucas1p15e6527663f0f925c4b8b86f051c82c0a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084033_607391_5D23687A 
X-CRM114-Status: GOOD (  13.52  )
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
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
 drivers/gpu/host1x/job.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/host1x/job.c b/drivers/gpu/host1x/job.c
index a10643aa89aa..4832b57f10c4 100644
--- a/drivers/gpu/host1x/job.c
+++ b/drivers/gpu/host1x/job.c
@@ -166,11 +166,9 @@ static unsigned int pin_job(struct host1x *host, struct host1x_job *job)
 				goto unpin;
 			}
 
-			err = dma_map_sg(dev, sgt->sgl, sgt->nents, dir);
-			if (!err) {
-				err = -ENOMEM;
+			err = dma_map_sgtable(dev, sgt, dir, 0);
+			if (err)
 				goto unpin;
-			}
 
 			job->unpins[job->num_unpins].dev = dev;
 			job->unpins[job->num_unpins].dir = dir;
@@ -217,7 +215,7 @@ static unsigned int pin_job(struct host1x *host, struct host1x_job *job)
 		}
 
 		if (!IS_ENABLED(CONFIG_TEGRA_HOST1X_FIREWALL) && host->domain) {
-			for_each_sg(sgt->sgl, sg, sgt->nents, j)
+			for_each_sgtable_sg(sgt, sg, j)
 				gather_size += sg->length;
 			gather_size = iova_align(&host->iova, gather_size);
 
@@ -229,9 +227,9 @@ static unsigned int pin_job(struct host1x *host, struct host1x_job *job)
 				goto unpin;
 			}
 
-			err = iommu_map_sg(host->domain,
+			err = iommu_map_sgtable(host->domain,
 					iova_dma_addr(&host->iova, alloc),
-					sgt->sgl, sgt->nents, IOMMU_READ);
+					sgt, IOMMU_READ);
 			if (err == 0) {
 				__free_iova(&host->iova, alloc);
 				err = -EINVAL;
@@ -241,12 +239,9 @@ static unsigned int pin_job(struct host1x *host, struct host1x_job *job)
 			job->unpins[job->num_unpins].size = gather_size;
 			phys_addr = iova_dma_addr(&host->iova, alloc);
 		} else if (sgt) {
-			err = dma_map_sg(host->dev, sgt->sgl, sgt->nents,
-					 DMA_TO_DEVICE);
-			if (!err) {
-				err = -ENOMEM;
+			err = dma_map_sgtable(host->dev, sgt, DMA_TO_DEVICE, 0);
+			if (err)
 				goto unpin;
-			}
 
 			job->unpins[job->num_unpins].dir = DMA_TO_DEVICE;
 			job->unpins[job->num_unpins].dev = host->dev;
@@ -647,8 +642,7 @@ void host1x_job_unpin(struct host1x_job *job)
 		}
 
 		if (unpin->dev && sgt)
-			dma_unmap_sg(unpin->dev, sgt->sgl, sgt->nents,
-				     unpin->dir);
+			dma_unmap_sgtable(unpin->dev, sgt, unpin->dir, 0);
 
 		host1x_bo_unpin(dev, unpin->bo, sgt);
 		host1x_bo_put(unpin->bo);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
