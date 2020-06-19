Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B938200728
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4AOgmPHNH2McwezzGoH0YEllvGl8FugfCLXe1wFA9Fk=; b=TBXXWM8r5sTFFPA2KZJsi7lYAE
	77nWqOslQLppJm0Pr7Y4+5kcE5nOrD4jmALngfvDYT92SwRK9Mi+TmTofx/+4OyHvLdcZVdfdWxY+
	dxS+2TSTp9ULZguDAHL7XHfK7C8qQwOP0luj86QOrTzeQLASxEMWrYmjjyvBZQSbcM8LeBkYM3qgn
	MYGxMI2oa115B9QmWuRHf76wSO9rGs9CU80k1Hb2qRDntRboyPaSMuO+3cEOEQrH0PxXmcQFZDx+P
	JNPXnnnoGbQD5o/XygA4Anjrcc/TtJqdoQwuFY2WPQSR2bIhpX/uXCm0Wtvy22PoSFAum0kk6Xrty
	h5LsfECw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEX0-0000d8-QE; Fri, 19 Jun 2020 10:45:58 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOX-0005LJ-2J
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:14 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103711euoutp010590305e52446be837a187ec47acab38~Z66OlowAV1836618366euoutp01s
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103711euoutp010590305e52446be837a187ec47acab38~Z66OlowAV1836618366euoutp01s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563031;
 bh=OFqbUENGcwHkaTj73rLNsgPPEJEVjihPUEx1KDeP3MU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k1rWT4Llwk8EMfnaBKlWJzdRnY+7Iut10DF2c0GCK86NShzz/s8ovaYWVgfSMPROc
 x9zDPwql6+Kjeht/84ignm8R2BjhWpT2FLq26egT4QUz4Q3SNNtGjMw/56srDqnZx7
 dVN7QfTJdgIZD/xuYL9MQ1/HrsjxNm6PV67hpnWc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103710eucas1p2c5d6ac8ee1bbb11a611c1aee6ac9e97f~Z66OMrcmT2893928939eucas1p2g;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E7.9C.06318.6559CEE5; Fri, 19
 Jun 2020 11:37:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4~Z66N8BJZV1690716907eucas1p1C;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103710eusmtrp1fbd716d69772779f3bb7293132956459~Z66N7VfxW0949709497eusmtrp1i;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-7c-5eec95564774
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id CA.EA.06314.6559CEE5; Fri, 19
 Jun 2020 11:37:10 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103709eusmtip2f34fcaa33c6cca27a55afdc07ca62c44~Z66NUTWIq0302303023eusmtip2T;
 Fri, 19 Jun 2020 10:37:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 26/36] drm: host1x: fix common struct sg_table related
 issues
Date: Fri, 19 Jun 2020 12:36:26 +0200
Message-Id: <20200619103636.11974-27-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSzUcRzH+97v4X533dmvY3xHi91Wmywyar+NmR603+YfWjPrAVd+YRx2
 P4+trSOMI48ZbuUp5XKkMMIiJjJzecpDUsQWYd1wmoq686P++3zf79fncV8CkTRj1kRYZAyj
 iJRFSHEh2ty7pTvhV7gScLIn7RR1T9fPo14U12PUn+Y8hBozfMepp9o3PKq8043aGJvjUQ3z
 4xg12vYApzI21DhV1zPDp7r0Cxi11VaKeorp2tJaQL/aLEfpVvUMn27ZnMXoz5l9PLqx6g49
 vTOP0AWT1YBun1LidHZTDaDXG474HLwsdA9mIsLiGIWTR5AwdGmhF40et0n4qh7FlKDIUgUE
 BCRdYeZQDl8FhISE1ADYrunHTYaE3ABwrfcmZ6wDOLpYDPYzKuc1gIOqAUyatOcgY8I7bSbf
 ZOCkM1StqnYrWZCpAL69JzJBCPmFBzMmhhGTYU5ehBv6lV0IJY/CTl0FzxSLSQ+ondhGuW62
 UPv89S4vMOrLKV2YqRAke/mwJV/J56DzMKewfG88c/itr2lPPwwHCrJQLuEugHO6Oj73yDIu
 lLy/kBv8qPtpHIMwzmcP69ucOPkM7GmfQ00yJM3g5Oohk4wYw/zmIoSTxTA9TcLRx6C679m/
 tl1DIwgX0zBpsA5wF8oDsHi7kZcLbNX/m5UDUAOsmFhWHsKwLpFMvCMrk7OxkSGON6LkDcD4
 mwZ2+gwvQcfv692AJIBUJF68tBwgwWRxbKK8G0ACkVqIzw4OBEjEwbLEW4wiKlARG8Gw3cCG
 QKVWYpfKpWsSMkQWw4QzTDSj2Hd5hMBaCVKKfkxp2sKzvYYUQm9PkXlyLm3WUXLBYFCl20Vr
 4nNP52z/yrtCejuQBz6NGK6W6c39cMvWYe0T2YhrkH98yWj1sLwM6gsVqY0+tys6ptP9VV6+
 viW6GOz9o6GFhMWHa+r64sf+7sj6ObsPjatL47NmuqqVyvuBrN5BIAr1laJsqMz5OKJgZX8B
 +edwc0kDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xe7phU9/EGdz9r2LRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaLzyyw2i7VH7rJbHPzwhNXi
 5655LA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/HyyTGWgmvSFc9nXWZtYJwu1sXIySEhYCKx6PEKxi5GLg4hgaWMEnufr2KESMhI
 nJzWwAphC0v8udbFBlH0iVHi9cvNTCAJNgFDia63EAkRgU5GiWndH9lBHGaBV0wSH/60go0S
 FgiQmPijmR3EZhFQldh/biFYN6+AncTq639ZIFbIS6zecIAZxOYEir9uOQi2WkjAVmL5gvfM
 Exj5FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMlm3Hfm7ewXhpY/AhRgEORiUe3hch
 r+OEWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIjRFOioicxSosn5wEjOK4k3
 NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAGF0a/Dq5+On5P5G5nOsK
 ZQvdFPbpWppv+/bcb96K/rX1cRWFpWkq5Rfjan+ZMnM0GB8+0TA7MSb5w4LLq1lnq01peXtv
 e+z95U8XPK24nruyNXNK/oJclXd3z9alniyrYOIRexfFuv7A1c0BH/K7A3hyT5slWqzqvOIT
 uM7cREzcyjP6QtwrJZbijERDLeai4kQAV68oU6wCAAA=
X-CMS-MailID: 20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4
X-Msg-Generator: CA
X-RootMTR: 20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033713_255232_FCC442F7 
X-CRM114-Status: GOOD (  13.75  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
