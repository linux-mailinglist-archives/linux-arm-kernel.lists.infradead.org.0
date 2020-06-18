Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6276C1FF7E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZHS8d0V12zZR34ieY1t1qNlU/wjoWpo6SxnUDvOd81U=; b=Puba4X72GqIqbmB0RlvhoMdLqH
	df2+1AbRx76yhmpc/H2YtPYR25QnUUYblwnE5j75rAacNS3XcLjUM5pBdPkvIs0fWPudbFMLo8bNI
	TAMq3nm+SLrs87+Pf2eoU49pN6sQcjvvqnFAplmbRkxJe0hBw2o1elfjmifEYg2znXdlZO8SB7WZM
	zTucmCp4eTDn6V8e/qVERSFzTzdcbTz5+HeL5Fgl/S+o7XYdpIUUOkiLdmtLPmBtzy0vX1l2CUfDA
	VvAj0fF42AbdVoVU8qHX4adef/gbckaMgW3IxzIOdplFYrVru4NmWxDY/NcWsO+x2ZU/uBBpT3VY5
	UPmiOGDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwlA-0003jg-Dx; Thu, 18 Jun 2020 15:47:24 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweU-0004HM-TU
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:34 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154024euoutp015d2feb8c863edfe9753396d4bd97aa61~ZrZsXDJN11844818448euoutp016
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154024euoutp015d2feb8c863edfe9753396d4bd97aa61~ZrZsXDJN11844818448euoutp016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494824;
 bh=O2c3Dg/Bmu5P4+TijqQ9XUF6ALcxyDRv7MgKZ032jSw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s2crpX7u1ONxwR9uUm87tNqpDtI2QoNvSRUECMed6MnblY7ZFoQa5MWphf6DmquFb
 CsvxSQaTsH0FOt3+/8gb7SvTsekIn+QadraylTz3pUu3nKpwUixfvvHbdDPKRr3Llj
 jvNPTENCq1+SOvc0iJrvi+sKRlAlTFAvqhrIS4qA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154024eucas1p1f33e944e515a02431b4b75fd40324de1~ZrZsIYXz21545515455eucas1p1X;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id F1.DE.60679.8EA8BEE5; Thu, 18
 Jun 2020 16:40:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154024eucas1p103fa1a3752801874ae883d366639f233~ZrZr0HH3c1543415434eucas1p1V;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154024eusmtrp25249819e8665fc100847ad755d879c13~ZrZrzgH6s0399203992eusmtrp2b;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-35-5eeb8ae888af
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 9C.EE.08375.8EA8BEE5; Thu, 18
 Jun 2020 16:40:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154023eusmtip1ea5fd9024a12670cb8e53473be74f031~ZrZrMuxB90864308643eusmtip1J;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 15/36] drm: omapdrm: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:36 +0200
Message-Id: <20200618153956.29558-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRmVeSWpSXmKPExsWy7djP87ovul7HGdy/rmLRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBHcdmkpOZklqUW6dslcGWsftbMXvBZuGLijNoGxkUCXYycHBICJhJ35u9lA7GFBFYw
 Ssz8ldLFyAVkf2GU2L14LTuE85lRYvPdCawwHdeuTmGC6FjOKLFlji5cx5cnb8GK2AQMJbre
 doGNFRFoZZQ40csDUsQscIhJYkvrVRaQhLBAsMSKJS1gk1gEVCU2resHa+AVsJOYP3EVI8Q2
 eYnVGw4wg9icQPHTx1uhrtjHLrH3YS2E7SLxd3IPE4QtLPHq+BZ2CFtG4v/O+UwgiyUEmhkl
 Hp6D+EdCoIdR4nLTDKgN1hJ3zv0C2swBdJ6mxPpd+hBhR4lJrz6ygIQlBPgkbrwVBAkzA5mT
 tk1nhgjzSnS0CUFUq0nMOr4Obu3BC5egSjwk7s52hoTPREaJtlez2Ccwys9C2LWAkXEVo3hq
 aXFuemqxUV5quV5xYm5xaV66XnJ+7iZGYCo6/e/4lx2Mu/4kHWIU4GBU4uF9EfI6Tog1say4
 MvcQowQHs5IIr9PZ03FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeY0XvYwVEkhPLEnNTk0tSC2C
 yTJxcEo1MCrzvV1Trl2yOdLLIfAl+7zZRxednic0593+lMcyisemsbZz7mUP2F7is97xwM64
 ulc+C/yMj7HLBzv8N9y7tK9lX+d+83W+kxYckLklY/rE+RrnsyUHwzk0P+7V9+VJuqA/wT95
 Tn3iFo5PF23X27daR+UWnQ7p+87n4Pg7Pv/m558bE7b4fVdiKc5INNRiLipOBAAJdHuuQQMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEIsWRmVeSWpSXmKPExsVy+t/xu7ovul7HGfzYwWPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GWsftbMXvBZuGLijNoGxkUCXYycHBICJhLXrk5hArGFBJYySnw4xQ0Rl5E4Oa2BFcIWlvhz
 rYuti5ELqOYTo8TpTTvAEmwChhJdbyESIgKdjBLTuj+ygzjMAieYJO7tnc8IUiUsECjRM+sB
 M4jNIqAqsWldPxuIzStgJzF/4ipGiBXyEqs3HACr4QSKnz7eygpxkq3E8w9tbBMY+RYwMqxi
 FEktLc5Nzy021CtOzC0uzUvXS87P3cQIjI9tx35u3sF4aWPwIUYBDkYlHt4XIa/jhFgTy4or
 cw8xSnAwK4nwOp09HSfEm5JYWZValB9fVJqTWnyI0RToqInMUqLJ+cDYzSuJNzQ1NLewNDQ3
 Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwDhB+WhKx9yW9pA9YXsPCDwp89545fKF
 Ganvkivnsh+e847tV1zkYafq6iW/rhpmXU+J2X/CZ3oj791zHs9zGP9L+q7SFmxz7l6zZe6n
 /mOWrfpfJc6Ksa7f7hyt7/t1rvGPOYwXZMUit2+62NS9c+sK0Z225rmzGPSLun1XXwx4MNMm
 leNRiKASS3FGoqEWc1FxIgD84oXCpQIAAA==
X-CMS-MailID: 20200618154024eucas1p103fa1a3752801874ae883d366639f233
X-Msg-Generator: CA
X-RootMTR: 20200618154024eucas1p103fa1a3752801874ae883d366639f233
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154024eucas1p103fa1a3752801874ae883d366639f233
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154024eucas1p103fa1a3752801874ae883d366639f233@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084031_250285_17A52C0A 
X-CRM114-Status: GOOD (  16.65  )
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
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
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

Fix the code to refer to proper nents or orig_nents entries. This driver
checks for a buffer contiguity in DMA address space, so it should test
sg_table->nents entry.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/omapdrm/omap_gem.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/omap_gem.c b/drivers/gpu/drm/omapdrm/omap_gem.c
index ff0c4b0c3fd0..a7a9a0afe2b6 100644
--- a/drivers/gpu/drm/omapdrm/omap_gem.c
+++ b/drivers/gpu/drm/omapdrm/omap_gem.c
@@ -48,7 +48,7 @@ struct omap_gem_object {
 	 *   OMAP_BO_MEM_DMA_API flag set)
 	 *
 	 * - buffers imported from dmabuf (with the OMAP_BO_MEM_DMABUF flag set)
-	 *   if they are physically contiguous (when sgt->orig_nents == 1)
+	 *   if they are physically contiguous (when sgt->nents == 1)
 	 *
 	 * - buffers mapped through the TILER when dma_addr_cnt is not zero, in
 	 *   which case the DMA address points to the TILER aperture
@@ -1279,7 +1279,7 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 	union omap_gem_size gsize;
 
 	/* Without a DMM only physically contiguous buffers can be supported. */
-	if (sgt->orig_nents != 1 && !priv->has_dmm)
+	if (sgt->nents != 1 && !priv->has_dmm)
 		return ERR_PTR(-EINVAL);
 
 	gsize.bytes = PAGE_ALIGN(size);
@@ -1293,7 +1293,7 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 
 	omap_obj->sgt = sgt;
 
-	if (sgt->orig_nents == 1) {
+	if (sgt->nents == 1) {
 		omap_obj->dma_addr = sg_dma_address(sgt->sgl);
 	} else {
 		/* Create pages list from sgt */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
