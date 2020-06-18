Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A241FF79A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CmMtvaoTAX8tkL/XTgSEYeY7jmjuTAFUB93V+g+y0mU=; b=HhjpFEGbnL4uAqN1tyIOs58S0l
	Qn2MmIf0wIxUfB+nVCYwvsh65qPQ4JoAdedptruryv/fSR2GBnOwvvnD+hPRu9JjIeD15i7P7wtDJ
	kPxQYHslN/NOlnMlItnQp283pEoYG4uWfc7FJ2XnMlqeE+Ir4fV6PEvESTWlJSsNQmRE6EfE4d0Jm
	zzI/Za0pL54xAqW+y0cjgW3PSdN8q1qHvPjupe2MmEn53Q8qL7YCg95BtZvB4ZJP2tq3+xA2nR8CR
	MnUucVlCA389YOeXCRHGuUZi8Eat3rBk/Fx5ZwVhEYpOxzsKBgbBqlNv7HBJvHmfcj2DnKUN/D2VT
	GZiWtuqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwhR-0006Sg-P6; Thu, 18 Jun 2020 15:43:33 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweO-00049T-7D
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:28 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154018euoutp01eb98d0c0f03520ada7c386e16abd4bde~ZrZmCT_dV1844818448euoutp01t
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154018euoutp01eb98d0c0f03520ada7c386e16abd4bde~ZrZmCT_dV1844818448euoutp01t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494818;
 bh=xw3K0/aFzn0fQ2snK5+3dg6k1O9SvppyMhipy/j8VoM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OmQTYrvRVEswxSooRXkHVFhnIg8QIHlZj11hL4/gve3M9Is6r2xOu0m0H4E2jONdY
 LTWEbE3eSw4valGrrINwU0bRgUymLZZAZ3uO/m6MRBF4xd+2/9sYLht90PDjXH3oLm
 GrOWgWhQvdznqQ1n1Y+tAboO4VRYnLJMB66ZY8rU=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154017eucas1p2d0dee3fb39ced9e7e6331cb55d1c6dc4~ZrZl3x_4M2977729777eucas1p28;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 0E.0F.61286.1EA8BEE5; Thu, 18
 Jun 2020 16:40:17 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48~ZrZlXrvqK0501005010eucas1p2U;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154017eusmtrp2ec7be9572e641136a73192cbea718618~ZrZlXF-FH0399203992eusmtrp2S;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-bc-5eeb8ae1d246
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D2.EE.08375.1EA8BEE5; Thu, 18
 Jun 2020 16:40:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154016eusmtip187a63c1b6f07d44000b73a84c8b6b462~ZrZky0MRI0765807658eusmtip1Y;
 Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 05/36] drm: armada: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:26 +0200
Message-Id: <20200618153956.29558-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTUQDm3Lu7XXWL62Z5UkkaVCTlgwxuaKJRcIkgsx9SkTr1opabsqll
 f1yaZvOBTioT8ZGCpTNrmqnNfGROsWZOUUOtlpbU8v1KC23Xq/XvO9/jfB+Hg6NCLeaAR8ni
 aLlMEi3mWnPqO1cNh00qc5D7HeNRMsvQjZDP8mswcqM+FyUHlma45OOqNwhZ0uJFLg6YEFI7
 PoiR/U2FXLL9bjMgqzvGeGTb7ATmy6c0RRpA9Q/2oVTzcgmHerH8GaM+ZegRqrY8iRpZH0ep
 vOEKQL38oORS2XWVgFrQ7vG3uWjtHU5HRyXQcjefEOvIFXUOL7bX/vrogyJUCXQiFbDCIeEJ
 17qMXBWwxoXEIwCH57oxRhASiwCmzIexwgKAHYPPuduJLI0JYYUKAE3qVZQ9WBL96maEcXEJ
 D6iaUm0m7IhUALuy+IwJJVoRmDZt3jSJiADYWDazaeIQ++CsLpPHYAFxHJYvTAG2zhlWPW1F
 GWxF+MAefSrGXASJVzw4dG+Bx5pOwjGldmufCP7Q123xTnCjsRhhAymWrYZqHnvItGxNzt+q
 8IKjhjVLGrfsOwhrmtxY2g/+utmPMDQkdsDhKVuGRi1QXX8fZWkBTE8Tsu79sED/5F9t23sj
 ymIKFg9PbD1wLoCqmgE0BzgX/C8rAaAS2NPxCmkErfCQ0ddcFRKpIl4W4RoWI9UCy0/qWdfP
 N4AlY2g7IHAg5gt8A81BQkySoEiUtgOIo2I7wYl3PUFCQbgk8QYtjwmWx0fTinbgiHPE9oIj
 D79fFhIRkjj6Kk3H0vJtFcGtHJQgxMlf7uhs7qstzD8QYnOspcxzMtxpVwsidpj8cuuMi3xn
 XtafQ9KWkUuh6T/zbX4Htiq/lZtVa5q5RFQ9fyXpbXp2o+3KBb+61qaMjq/q0r1DIv9gfw1p
 7Dnvfc403Xw6MjTOLiHgbMNKp42Er3mtu70oGnfvndxdeupjbLIuDhFzFJESDxdUrpD8BfW/
 n0dFAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7oPu17HGSz4JmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLQ1L2MFmuP3GW3OPjhCasD
 j8eaeWsYPS5fu8jssffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GV8nzSBveC8eMWdmfOYGxj3CHcxcnJICJhI9K55yNTFyMUhJLCUUWLJtf8sEAkZiZPTGlgh
 bGGJP9e62CCKPjFKzOnZxASSYBMwlOh6C5EQEehklJjW/ZEdxGEWOMYksfDXR7BRwgIBEqdW
 H2QGsVkEVCU+7OlhB7F5BWwllnx+ywixQl5i9YYDYDWcAnYSp4+3gq0WAqp5/qGNbQIj3wJG
 hlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBMbLt2M/NOxgvbQw+xCjAwajEw/si5HWcEGti
 WXFl7iFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5Hxi/eSXxhqaG5haW
 hubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGDtlZrVsPrJfO6HD7F3xuce7Zj2f
 a6DZ0fTvqfhr+T+/59k7lB4/sy232vJMnMCcpO2ZGkUnJ9/clnRZS0z6m1HoUoN6H1cGjxXL
 Oi9xNHvUqSklvpLUd1i3eE5msf/ScE3NwN7/e9Q6DmW8EWR0n5N5U6fWtMvYP0Yn3Ipbyalw
 deN2gScLlFiKMxINtZiLihMBBm6796cCAAA=
X-CMS-MailID: 20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48
X-Msg-Generator: CA
X-RootMTR: 20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084024_424872_4108771D 
X-CRM114-Status: GOOD (  13.47  )
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
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
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

To avoid such issues, lets use a common dma-mapping wrappers operating
directly on the struct sg_table objects and use scatterlist page
iterators where possible. This, almost always, hides references to the
nents and orig_nents entries, making the code robust, easier to follow
and copy/paste safe.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/armada/armada_gem.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
index 8005614d2e6b..bedd8937d8a1 100644
--- a/drivers/gpu/drm/armada/armada_gem.c
+++ b/drivers/gpu/drm/armada/armada_gem.c
@@ -395,7 +395,7 @@ armada_gem_prime_map_dma_buf(struct dma_buf_attachment *attach,
 
 		mapping = dobj->obj.filp->f_mapping;
 
-		for_each_sg(sgt->sgl, sg, count, i) {
+		for_each_sgtable_sg(sgt, sg, i) {
 			struct page *page;
 
 			page = shmem_read_mapping_page(mapping, i);
@@ -407,8 +407,8 @@ armada_gem_prime_map_dma_buf(struct dma_buf_attachment *attach,
 			sg_set_page(sg, page, PAGE_SIZE, 0);
 		}
 
-		if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0) {
-			num = sgt->nents;
+		if (dma_map_sgtable(attach->dev, sgt, dir, 0)) {
+			num = count;
 			goto release;
 		}
 	} else if (dobj->page) {
@@ -418,7 +418,7 @@ armada_gem_prime_map_dma_buf(struct dma_buf_attachment *attach,
 
 		sg_set_page(sgt->sgl, dobj->page, dobj->obj.size, 0);
 
-		if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0)
+		if (dma_map_sgtable(attach->dev, sgt, dir, 0))
 			goto free_table;
 	} else if (dobj->linear) {
 		/* Single contiguous physical region - no struct page */
@@ -449,11 +449,11 @@ static void armada_gem_prime_unmap_dma_buf(struct dma_buf_attachment *attach,
 	int i;
 
 	if (!dobj->linear)
-		dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents, dir);
+		dma_unmap_sgtable(attach->dev, sgt, dir, 0);
 
 	if (dobj->obj.filp) {
 		struct scatterlist *sg;
-		for_each_sg(sgt->sgl, sg, sgt->nents, i)
+		for_each_sgtable_sg(sgt, sg, i)
 			put_page(sg_page(sg));
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
