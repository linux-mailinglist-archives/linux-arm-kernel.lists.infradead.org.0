Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A021D1618
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ydcXo93Qjtxn1YoNZgKc8gKJcBPGVXYCLA2UxpfDXTY=; b=YQ2YZ8ZDqMWzHRF0G+8bNpYLg9
	CrOGgbXc+hpW0HzI4M4d6Kob0ea3f7vCgH3CaJo8sYn3sO09yg2K+GRk/6TGaNFNLibmMVjT6NAg2
	Qo4XmFWJVFqtNNhs18IMJJDPtAClQWlIWqYXTfdnMMXuXg04m6kaPnROlh5KYpJ7bdZViYVTi96Od
	+lUdWmcngHEkEMvDY95jS7U8wZSu5kPaTMeN+XGqs+qtVEG8Si/4aHCpFnu5R7rDv6iBKcfwpOk+b
	Q7QOXW2kI2Ky7AWGEL9qakAHrH5i3HAuhwIvtxir0umf2aHo+1PE8OP7LMTfj4oVmKsM2VOK7qM48
	3MllZmlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrfP-0006A7-Av; Wed, 13 May 2020 13:43:23 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVf-0001eo-JA
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:28 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133317euoutp0279b5ad614e9d5f1efccaea3342ea0072~OmcbaPzMG0034400344euoutp02a
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133317euoutp0279b5ad614e9d5f1efccaea3342ea0072~OmcbaPzMG0034400344euoutp02a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376797;
 bh=adSSZKLr39gCVoXMgTMjAinQz5jOSN5KlCsuomFB/vE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gMxPrmbwRamlwsM8ptaZYV+q9W5JuCFbb4TLe01pBu4dfSKpF6ZoDDOev0otx7xsF
 41o3VKoNwEHJtkpNgvip/w6OHQwkIiscE97nRZ37Ddc92REoWfiOWwaPZCzb9QnpbM
 aaZvhHiUcjjpxhLQyG6oCHNVK48bbBXW+z5OXMDA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133317eucas1p299a49b47f71bac78fea6cdfaf3c9b17e~OmcbEBCfm2972029720eucas1p2_;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C2.11.60679.D17FBBE5; Wed, 13
 May 2020 14:33:17 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133317eucas1p25446bcdce5220030c16477e1992385ff~Omcat18eK0616406164eucas1p2l;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133317eusmtrp1ae806ab66313837a29a5ee77f4e6ff9e~OmcatETTT1050610506eusmtrp1W;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-62-5ebbf71d9cb9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 76.47.07950.D17FBBE5; Wed, 13
 May 2020 14:33:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133316eusmtip16e4d1fb0d597e3e3f2e4c9d92de5b030~OmcaD90ae3222032220eusmtip1C;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 28/38] drm: host1x: fix common struct sg_table related
 issues
Date: Wed, 13 May 2020 15:32:35 +0200
Message-Id: <20200513133245.6408-28-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGe89tx9XiOC1fXCWMClLyUn44YGVR0CEzIj9VpC07qaUrdtS0
 IKdDyUtSrcxmrBF287KpmZeJ2aa1YrUsV1p5W8YiQ0qcphna5ln17fn/nud/4eUlUXETHkim
 yNNZhVyWKiWEWNPTGdv6lT/b4sMr1BL6gu05QteXG3B6vukSStsnvxP0/eonCK3riKJddgdC
 N4y8w+ke4w2CLnRpCLq2a0BAm358xukZoxbbKmJqtDWAaZ/SYUyrZkDANE8N48xQsQVhHlTm
 MB/nRlBG3XcXMG3vlQRT2lgFmImGVXsXHxBuOsqmpmSyirAth4XJ+u+dxCn1yiy7VkUowaOA
 IuBDQioSmoq7iCIgJMXUPQArK8YFHkNMuQDUXV3CGxMA3uh7hf3t6HdoUN64C+CdWSvCF+6O
 7krtQoqgImDRWBHh0f5UPoDPLiyMQqlPCCzsfY16DD9qHxw0fME9GqPWwKdDjgUuojbD69Z6
 lF8XBKvrHi9oHzcf7e/APIMgZRbAm1PzAj60A+ZalN4GPzhqafTyFdCqLvE2qAB02GoFfFEC
 YE9eOeBTUbDf9st9K+m+bx00GMN4vA3aG4sRD4bUUtg35uvBqFtebrqG8lgEzxeI+fRaqLHo
 /601db/xRhjY2hvDP1AngCp9J3ERBGn+79IBUAUC2AwuLYnlNsjZ06GcLI3LkCeFJp5MawDu
 32Sds7hagPH3ETOgSCBdIqI/tMWLcVkml51mBpBEpf6iPQY3Eh2VZZ9hFScTFBmpLGcGEhKT
 Bog23vp6SEwlydLZEyx7ilX8dRHSJ1AJDoSzccbgl85B36GK6OlxZH+Mc3D7lpTc2kLLDnIW
 LcGrd942Tap2NZvmzvkVSEo3J+Y8OdsrqTvxor39/Zv8Zd9e2Mp2RlzBuodjp8PiQlbrd6uj
 yxIe5D3K2jA7Y+LCtW/xg+8ehsQujVx+TEX6ZzqfdQ2Wv43StRwvLXSOLWqVYlyyLCIYVXCy
 Pz+4h6tJAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7qy33fHGfz4wGzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaLzyyw2i7VH7rJbHPzwhNXi
 5655LA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl7Hu/WG2gsmyFVfmNbM1MO4T72Lk5JAQMJG483AWM4gtJLCUUeLbaleIuIzEyWkN
 rBC2sMSfa11sXYxcQDWfGCXmnzzPBpJgEzCU6HoLkRAR6GSUmNb9kR3EYRZ4xSTx4U8rI0iV
 sECAxKmni9hBbBYBVYlj9x+CreMVsJWYeXojM8QKeYnVGw6A2ZxA8Vd39rNAnJQvsXfxPrYJ
 jHwLGBlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbKtmM/t+xg7HoXfIhRgINRiYfX4tbu
 OCHWxLLiytxDjBIczEoivH7rgUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqcD4zjvJJ4Q1ND
 cwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjH0BfWWLqy9ld8vI7JfIepIU
 8utUXkTrNs30i5uT5y9Ie/Nk1o6Iaft5BHwjM6TcgjYdF7r40dRwW/fGRjc2lVz+rrZ3R39p
 JW2tvG9WF1jX96X9kVBaRrrYLC1G1TDXEq946xUCjPH83qVxX7w7n1om3A5V2sy0+aame7S6
 iPu1Z0WLV1gpsRRnJBpqMRcVJwIAGOX5WasCAAA=
X-CMS-MailID: 20200513133317eucas1p25446bcdce5220030c16477e1992385ff
X-Msg-Generator: CA
X-RootMTR: 20200513133317eucas1p25446bcdce5220030c16477e1992385ff
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133317eucas1p25446bcdce5220030c16477e1992385ff
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133317eucas1p25446bcdce5220030c16477e1992385ff@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063319_900267_6A91A7F5 
X-CRM114-Status: GOOD (  14.83  )
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/host1x/job.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/host1x/job.c b/drivers/gpu/host1x/job.c
index a10643a..4832b57 100644
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
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
