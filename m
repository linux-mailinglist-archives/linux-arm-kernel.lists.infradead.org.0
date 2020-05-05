Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F230C1C512F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dj7+0JVhn6PsjiMblzYQDkDLdEQaRQknrfAgvXuaplg=; b=RlCAvWczWnysag+F3oOg+3ciZM
	4pUjpRXL+mrHILV77GEF45RtzKrOjeZh0Slk7HLpNqEna+1Kz7N1q4iCRb75HySf70KvHVSl/skBb
	k4S4Bbo2CgQeRpG51S/GKbY1ZLD0bLZGcvQxNDgNp3jpSRs2Uurd0Gk+/xruzQaTN/B0YVxQbtnJr
	UVz+oH1pUciNpCLZtWvWL4j3Ilnf9FUz+2r1XEToiIoBDwRfX7covqm9oKOBdIROJ8+9AxexBkrjd
	7AZa0UF8AtwWtH7/W4NQKNP6IA9APb21xcIqTMcUR67Gtw/KgWiPzOPzXMmKDflLXY59io/PwX8Uj
	SRzAynhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtFi-0002Ft-UM; Tue, 05 May 2020 08:48:35 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDg-0000RH-5z
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084626euoutp022dcb5f7de51f255c906b13fa117dcc35~MFXsO5qFd2636626366euoutp02I
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084626euoutp022dcb5f7de51f255c906b13fa117dcc35~MFXsO5qFd2636626366euoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668386;
 bh=vQq9T4bTE7tH357A+pikqq6dXm/wFYLJv6oWt24FC3U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cLrRnK7SPIex65u5aWDIqxUgCh6LL9/7XYbMu/JTi2bZu+cEyjUNiPex36nBT/q08
 99tL+z8Gs8H9KWzArbEPVqfM/vR7PgjShTKjVIt1pczizUXAyKDwTNAVmmya5AkHBj
 g8AChaHXgrTez5Cdd5n5E3KeDq8L/WfoLOfymBpQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084626eucas1p1325eb9a146d93c42f9c6bbe0718d6c57~MFXr2WheI2432424324eucas1p1y;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id CF.BF.61286.2E721BE5; Tue,  5
 May 2020 09:46:26 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084626eucas1p20753456727333c09718253ca5c32d98c~MFXresudS1348713487eucas1p2S;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084626eusmtrp1e1643544281fa3d0966324c1a3e1600a~MFXrd60qK0942509425eusmtrp13;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-94-5eb127e28dd9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C1.14.08375.1E721BE5; Tue,  5
 May 2020 09:46:25 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084625eusmtip183ea40c2ecca9ab414f2ba869cca3540~MFXq_Tir40580805808eusmtip15;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/25] drm: armada: fix common struct sg_table related
 issues
Date: Tue,  5 May 2020 10:45:53 +0200
Message-Id: <20200505084614.30424-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPKsWRmVeSWpSXmKPExsWy7djP87qP1DfGGWw7LmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLQ1L2MFmuP3GW3OPjhCasD
 j8eaeWsYPS5fu8jssffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJBXBHcdmkpOZklqUW6dslcGX8XbiateC0UMX0d8eYGxg38XcxcnBICJhI3NqS1MXIxSEk
 sIJR4uGy7YxdjJxAzhdGiedzxSASnxklJpxoBkuANMzpX8oMkVjOKPHl4QYWCAeo43jnTVaQ
 KjYBQ4mut11sILaIQCujxIleHpAiZoEDTBJt714zgSSEBYIk3hy5xAJiswioSixf8JoN5CZe
 AVuJX2tFIbbJS6zecIAZxOYUsJN4fOkOG8gcCYFD7BJTbqxjhyhykfh+cz4rhC0s8er4Fqi4
 jMTpyT0sEA3NQM+dW8sO4fQwSlxumgH1kLXEnXO/wDYzC2hKrN+lDwkYR4n3UzUgTD6JG28F
 QYqZgcxJ26YzQ4R5JTrahCBmqEnMOr4ObuvBC5eYIWwPicOzd7FDwucoo8S33kvMExjlZyHs
 WsDIuIpRPLW0ODc9tdgwL7Vcrzgxt7g0L10vOT93EyMwGZ3+d/zTDsavl5IOMQpwMCrx8EZ8
 Xh8nxJpYVlyZe4hRgoNZSYR32Y8NcUK8KYmVValF+fFFpTmpxYcYpTlYlMR5jRe9jBUSSE8s
 Sc1OTS1ILYLJMnFwSjUwOmw9EHnPOrfkyq1VaX/CImP/XZ3yYNO8qX6XV5d+vXBra8JLUaND
 k5yytloZfJgk9eBBXvqS771Zmi11p4rLDp4N7NvJuflupGyN6/E5MismuHA3vp/a3pqlG3LZ
 8x3QqmXP9eMudG3eOc/8zdNP9nrrCpS8sji26pR6xEssaNh97+geoVuHlViKMxINtZiLihMB
 FNKWGUIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEIsWRmVeSWpSXmKPExsVy+t/xu7oP1TfGGexpsLHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZnFo6l5Gi7VH7rJbHPzwhNWB
 x2PNvDWMHpevXWT22PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DL+LlzNWnBaqGL6u2PMDYyb+LsYOTkkBEwk5vQvZQaxhQSWMkocumUOEZeRODmtgRXCFpb4
 c62LrYuRC6jmE6PEwQfHwBJsAoYSXW8hEiICnYwS07o/soM4zALHmCQW/vrIAlIlLBAg8Xzm
 RyYQm0VAVWL5gtdAHRwcvAK2Er/WikJskJdYveEA2BWcAnYSjy/dYYO4qFDiw/nvrBMY+RYw
 MqxiFEktLc5Nzy021CtOzC0uzUvXS87P3cQIjI9tx35u3sF4aWPwIUYBDkYlHt6Iz+vjhFgT
 y4orcw8xSnAwK4nwLvuxIU6INyWxsiq1KD++qDQntfgQoynQTROZpUST84Gxm1cSb2hqaG5h
 aWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgVEjfW/Q9Y9ZTm3s+/I/aQXsXcjM
 4Vc+0fbgsXfbjJYWJYSd/smfopr4oTTS/LPi9RO2d1Uq/u1mvLfIZLPIugNVi1pfM504O/Xh
 8vsVDPLKCyNfq7tpL3zGeJqzK6RUgd1lz/8dL0884LqxTj436+hrhUuBjDuTl9U8/X35eILP
 qvkuJxZ0T01XYinOSDTUYi4qTgQAs9th7aUCAAA=
X-CMS-MailID: 20200505084626eucas1p20753456727333c09718253ca5c32d98c
X-Msg-Generator: CA
X-RootMTR: 20200505084626eucas1p20753456727333c09718253ca5c32d98c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084626eucas1p20753456727333c09718253ca5c32d98c
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084626eucas1p20753456727333c09718253ca5c32d98c@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014628_353603_B119560C 
X-CRM114-Status: GOOD (  15.65  )
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
called with the original number of the entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. A common mistake was to ignore a result
of the dma_map_sg function and don't use the sg_table->orig_nents at all.

To avoid such issues, lets use common dma-mapping wrappers operating
directly on the struct sg_table objects and adjust references to the
nents and orig_nents respectively.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v3 00/25] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/5/187
---
 drivers/gpu/drm/armada/armada_gem.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
index 976685f..5b4f48c 100644
--- a/drivers/gpu/drm/armada/armada_gem.c
+++ b/drivers/gpu/drm/armada/armada_gem.c
@@ -407,8 +407,8 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 			sg_set_page(sg, page, PAGE_SIZE, 0);
 		}
 
-		if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0) {
-			num = sgt->nents;
+		if (dma_map_sgtable(attach->dev, sgt, dir)) {
+			num = count;
 			goto release;
 		}
 	} else if (dobj->page) {
@@ -418,7 +418,7 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 
 		sg_set_page(sgt->sgl, dobj->page, dobj->obj.size, 0);
 
-		if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0)
+		if (dma_map_sgtable(attach->dev, sgt, dir))
 			goto free_table;
 	} else if (dobj->linear) {
 		/* Single contiguous physical region - no struct page */
@@ -449,11 +449,11 @@ static void armada_gem_prime_unmap_dma_buf(struct dma_buf_attachment *attach,
 	int i;
 
 	if (!dobj->linear)
-		dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents, dir);
+		dma_unmap_sgtable(attach->dev, sgt, dir);
 
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
