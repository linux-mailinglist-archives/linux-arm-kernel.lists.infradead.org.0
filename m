Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CCD2006C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CmMtvaoTAX8tkL/XTgSEYeY7jmjuTAFUB93V+g+y0mU=; b=U+MR+1J9uzQudACfBHLRvZQwn/
	S94wXeGOyIudFk0b4dQRheaeLj98Wnudw6GE19PinzwHyPii/Q5bPWkz2rSzKGI6kVPUOuklAKx0i
	3pQpTP2kI67CIN+xRhz7qe/7mf3yNCxEN1OM5M1BBuHImqkUPY5mQ1pr9xzVyo8gspZD8UmrC2m3B
	+Odtct+fYILqbWmQH+WVNndu93Mt+A0g2t+S99risZfXoHv/5LYwvNcL00kIIZS01cfhhJrCS2HVL
	cvILoTGBApsGfGQzd8tUx0D35FH0+BCpRUGNu4T7GJ2EdueAsPHID7A4gQzdvp8OIynomPttYzXRA
	Ez8CkCug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEQ6-0006dd-FA; Fri, 19 Jun 2020 10:38:50 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOI-00056M-Od
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:01 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103657euoutp01bdc79142aabddecf832ce0d7600a7edb~Z66BZop2C1849718497euoutp01J
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:36:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103657euoutp01bdc79142aabddecf832ce0d7600a7edb~Z66BZop2C1849718497euoutp01J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563017;
 bh=xw3K0/aFzn0fQ2snK5+3dg6k1O9SvppyMhipy/j8VoM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y2trfsbU2cVcYM4L5cCYIMKy1WxeP5CoEwzASLk0w0VN5zq3s3dFVOZFN0fCP+mV7
 SRWHGosGd2YC2mLQnM2pf8NSIzd06TYa697tyt66i6gPdiI7w/so3A7R0OYYd0dzYw
 oqMf7dYeHO5DafgJAbvhV/5aMkZ2Ud3drJzgNkaQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103656eucas1p1f2ae232d1d3faa8f34f5499aa5d2823c~Z66BJN0__0708707087eucas1p16;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4E.8D.05997.8459CEE5; Fri, 19
 Jun 2020 11:36:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103656eucas1p262a08b701244745a547a0c38f26f83af~Z66Aq9YR93081430814eucas1p2i;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103656eusmtrp164e0beefe9f35499595aa7223767f121~Z66AqWbCW0949709497eusmtrp18;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-d2-5eec954863ee
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 70.0B.06017.8459CEE5; Fri, 19
 Jun 2020 11:36:56 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103655eusmtip28c45258d4d4a090cb99ea354579f1e6b~Z66ADrshs0302303023eusmtip2K;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 05/36] drm: armada: fix common struct sg_table related
 issues
Date: Fri, 19 Jun 2020 12:36:05 +0200
Message-Id: <20200619103636.11974-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRmVeSWpSXmKPExsWy7djPc7oeU9/EGWw4YGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLQ1L2MFmuP3GW3OPjhCasD
 j8eaeWsYPS5fu8jssffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJBXBHcdmkpOZklqUW6dslcGV8nzSBveC8eMWdmfOYGxj3CHcxcnJICJhIvJ0ylbmLkYtD
 SGAFo0R3yx0mCOcLo8Sm541Qmc+MEgvXTWWEabn76CkbiC0ksJxRYvGTRLiOnx0XWUESbAKG
 El1vu8CKRARaGSVO9PKAFDELHGCSaHv3GmgHB4ewQJDE7HZtkBoWAVWJxq7VYL28ArYSfz9u
 g1omL7F6wwFmEJtTwE7idctBVpA5EgL72CXu3f3ABlHkIjH77QIWCFtY4tXxLewQtozE6ck9
 LBANzYwSD8+tZYdwehglLjfNgFphLXHn3C82kIuYBTQl1u/Shwg7SvxvfsEMEpYQ4JO48VYQ
 JMwMZE7aNh0qzCvR0SYEUa0mMev4Ori1By9cYoawPSRO7NnACAmgiYwSyzsusE5glJ+FsGwB
 I+MqRvHU0uLc9NRio7zUcr3ixNzi0rx0veT83E2MwIR0+t/xLzsYd/1JOsQowMGoxMP7IuR1
 nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMUpzsCiJ8xovehkrJJCeWJKa
 nZpakFoEk2Xi4JRqYFz29vWuDUtXcPf9a3p8ymvOC7V3WS9eZbF7GhZdN3ij3irmwRSb7nhY
 8HR6/c7Ckm8rcyqt9LdOqPHdNfWv7aWfD9M5nyezBsfvFVmaGsB1fbILw9olBQIuDeL3CoNU
 vgZM+3c7nDmv/6H90jkT5/ZPXBAVN6Xa+wTvLsc/zBX/Xu+N6WrIllFiKc5INNRiLipOBABb
 TQk4RAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEIsWRmVeSWpSXmKPExsVy+t/xe7oeU9/EGXx4LmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLQ1L2MFmuP3GW3OPjhCasD
 j8eaeWsYPS5fu8jssffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GV8nzSBveC8eMWdmfOYGxj3CHcxcnJICJhI3H30lA3EFhJYyiix+Jg2RFxG4uS0BlYIW1ji
 z7UuoBouoJpPjBIz2x+DJdgEDCW63kIkRAQ6GSWmdX9kB3GYBY4xSSz89ZGli5GDQ1ggQGLq
 bx2QBhYBVYnGrtVgzbwCthJ/P25jhNggL7F6wwFmEJtTwE7idctBVoiLbCWWL3jPPIGRbwEj
 wypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzA+Nh27OeWHYxd74IPMQpwMCrx8L4IeR0nxJpY
 VlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU4kOMpkBHTWSWEk3OB8ZuXkm8oamhuYWl
 obmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxsPJvcyZ4q6Tq3Ytt3znVCF0KUq3
 96Dh59rtfadfNeV0FN/KtfwqtyRueozXrNr0n2afnjCb8ecEc2RFfI/0eBWjuq94/q8ExmCL
 zskc+yLmSrDziyqfWX6kqTev8HFe3banhc9/SRuF/XfavO9ep0O/1bsN3I8m/jl1OuVbQZx5
 X/T/lrQ8JZbijERDLeai4kQARp17FKUCAAA=
X-CMS-MailID: 20200619103656eucas1p262a08b701244745a547a0c38f26f83af
X-Msg-Generator: CA
X-RootMTR: 20200619103656eucas1p262a08b701244745a547a0c38f26f83af
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103656eucas1p262a08b701244745a547a0c38f26f83af
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103656eucas1p262a08b701244745a547a0c38f26f83af@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033658_939171_28E7CFD3 
X-CRM114-Status: GOOD (  13.49  )
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
