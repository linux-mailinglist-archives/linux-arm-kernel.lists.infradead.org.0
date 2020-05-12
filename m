Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0CE1CF108
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c5RyhdHErRyUEOU0Hjk9f2HluhsAKDSDvPdgZFYtgZw=; b=szd5XLTRbz+P7k9QOomgCYUYZk
	8bKrTCwmBwfsfhUXAlnvFAVf0iKBwDEzOwoRZjfGH3SEdJ/5903JYSCVtgGFqgdHFD4EfXcxhk0sW
	k2qsHRVBdnb8HxWsZqgT3eqd6Zbaxq8U0VKy2CpjhVGqUrwAmU+DzlPrdFmti8+cxkmzRNZ0MYCS7
	2ZIEfbmEL7Yd29USdnr+VfL4F342Vm3+c2xi7mS97/NjstA4ovCwRyI3sgv3jcBt92iJRubqd5KTo
	ZJ2qQkpPPXhu1W5/U6JDgt+kTB5cBEUn5MJdq14lxax58TzroX5xpup8+sE3C63PrV+dhmyFWJF0L
	L60a0QqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQsN-0007w4-O9; Tue, 12 May 2020 09:06:59 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQmt-0002EU-J5
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:25 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117euoutp01b93ecf4557db7a745476509581da3fde~OPFp-9tsz2635826358euoutp01G
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090117euoutp01b93ecf4557db7a745476509581da3fde~OPFp-9tsz2635826358euoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274077;
 bh=14VzeENnjcV2TT/ICHRzDhrJSJrLEx2NP2xTv7h5SRI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=exLZ8P2W+lxckU5xjGhldkdPzVtt95ccj3JemTcZPv8edJXbToP39ZjWagkjU4w8j
 f8uQud2kvj/Q1fpPqQ60NK/yzFbSz7DsbPl9g9cumiW2Fg2EcclyTWkdZAA74A3iVM
 CXel+IQYEXevbAjDvWZGVK+3k236hIRLztqEcTJU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117eucas1p1b54df08a47fba074693ed451d2e38367~OPFpsf5fF2840028400eucas1p1s;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C8.22.60679.DD56ABE5; Tue, 12
 May 2020 10:01:17 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454~OPFpVWDZz1612616126eucas1p1d;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090117eusmtrp2474be8291d69938040754fdef0566948~OPFpUjSNO0472704727eusmtrp2F;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-a1-5eba65dd0b9e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 70.45.08375.DD56ABE5; Tue, 12
 May 2020 10:01:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090116eusmtip14759e747705a1004eda1f60d54138496~OPFo1m7oq1352813528eusmtip1I;
 Tue, 12 May 2020 09:01:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 17/38] drm: omapdrm: use common helper for extracting
 pages array
Date: Tue, 12 May 2020 11:00:37 +0200
Message-Id: <20200512090058.14910-17-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAKsWRmVeSWpSXmKPExsWy7djPc7p3U3fFGby4KGPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBHcdmkpOZklqUW6dslcGV8/HCPveAKT8X/fw/ZGhhXc3UxcnJICJhIXNl4mrmLkYtD
 SGAFo8T2O7+ZIJwvjBKXH+5mA6kSEvjMKHH3qA1Mx7G7jxkh4ssZJZ5uUIBreD7xBFiCTcBQ
 outtF1iziEAro8SJXh6QImaBQ0wSW1qvsoAkhAXCJF62rGUFsVkEVCV2TWgAs3kF7CTunj/H
 BLFNXmL1hgPMIDYnUPz+/D8sIIMkBPaxSzxfuYsZoshF4uuyh2wQtrDEq+Nb2CFsGYn/O+cz
 QTQ0M0o8PLeWHcLpAXquaQYjRJW1xJ1zv4C6OYDu05RYv0sfIuwo0f5gHTtIWEKAT+LGW0GQ
 MDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwCeo0D4nHt94wQULrKKPEywkhExjlZyHsWsDI
 uIpRPLW0ODc9tdgoL7Vcrzgxt7g0L10vOT93EyMwHZ3+d/zLDsZdf5IOMQpwMCrx8BoY7IwT
 Yk0sK67MPcQowcGsJMLbkgkU4k1JrKxKLcqPLyrNSS0+xCjNwaIkzmu86GWskEB6Yklqdmpq
 QWoRTJaJg1OqgVEp+eneuM23Vm3t3HAlKWDPjiMlKQe6Mz9MOBrQkqhuN9Wg4M3OurDXZxY4
 vv73Tlgh/O5+xV9ZsgFn2ftr1QPuf2fnqArrONDKGX14R+LO8EV8S4Wni6+ND5KVWDkv+rBm
 t4eqV/vqDeGTLf3jJH9UXrd88/546feYaWXmpjcSe1z1a+r21SmxFGckGmoxFxUnAgD003EC
 QwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7p3U3fFGby6yGnRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GV8/HCPveAKT8X/fw/ZGhhXc3UxcnJICJhIHLv7mLGLkYtDSGApo8SJTbvYIBIyEienNbBC
 2MISf651sUEUfWKU+Hj9J1gRm4ChRNdbiISIQCejxLTuj+wgDrPACSaJe3vnM4JUCQuESBye
 3wXWwSKgKrFrAsRYXgE7ibvnzzFBrJCXWL3hADOIzQkUvz//DwuILSRQKPHo6luWCYx8CxgZ
 VjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgTGyLZjPzfvYLy0MfgQowAHoxIPb4fRzjgh1sSy
 4srcQ4wSHMxKIrwtmUAh3pTEyqrUovz4otKc1OJDjKZAR01klhJNzgfGb15JvKGpobmFpaG5
 sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsbk26+SIpxMFWdFTJbfUXwnRbGu2C7E
 8uevg/y3b/GkebJ05c11f/a33qk70jjhiMv7C2yF8+YzKfGZPnMp33rv/5s35WviH/y+Oq0n
 I2MihxnbPgfvXUECeixSvzY+ttBd3hc3a80tectrOzIWr+g+/Pmt2sanebN7It2a1FjvvZkg
 uGG6Q40SS3FGoqEWc1FxIgDa6lWypwIAAA==
X-CMS-MailID: 20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454
X-Msg-Generator: CA
X-RootMTR: 20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020120_099183_47151915 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use common helper for converting a sg_table object into struct
page pointer array.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/omapdrm/omap_gem.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/omap_gem.c b/drivers/gpu/drm/omapdrm/omap_gem.c
index d08ae95..c259411 100644
--- a/drivers/gpu/drm/omapdrm/omap_gem.c
+++ b/drivers/gpu/drm/omapdrm/omap_gem.c
@@ -1297,10 +1297,9 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 		omap_obj->dma_addr = sg_dma_address(sgt->sgl);
 	} else {
 		/* Create pages list from sgt */
-		struct sg_page_iter iter;
 		struct page **pages;
 		unsigned int npages;
-		unsigned int i = 0;
+		unsigned int ret;
 
 		npages = DIV_ROUND_UP(size, PAGE_SIZE);
 		pages = kcalloc(npages, sizeof(*pages), GFP_KERNEL);
@@ -1311,14 +1310,9 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 		}
 
 		omap_obj->pages = pages;
-
-		for_each_sg_page(sgt->sgl, &iter, sgt->orig_nents, 0) {
-			pages[i++] = sg_page_iter_page(&iter);
-			if (i > npages)
-				break;
-		}
-
-		if (WARN_ON(i != npages)) {
+		ret = drm_prime_sg_to_page_addr_arrays(sgt, pages, NULL,
+						       npages);
+		if (WARN_ON(ret)) {
 			omap_gem_free_object(obj);
 			obj = ERR_PTR(-ENOMEM);
 			goto done;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
