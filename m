Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C99F61C3AB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xxzw5St9Y1YUXjm6NpH+8sm6pZ8XfaN6IgMFgM9myrE=; b=c50qEkaHeQWseU39dnZu//2xbN
	t6oWrkGHErK9eZQAyyqzwh/dm9EgjTA+Nv3gQikepH/Na0Py2+3j2vRZvOjyaQEUy4sedQrn5ifTX
	25MZGw7giEPAU5Z+DGM8KpijRfn4c5ye1CzRXzW6RM/Ow9qH9Qdc9IAuxg0wWN/jk+4gadvG/Dwno
	ATgDWfGJbTuUW54UtZa6pzABnsADcfEDYWrUwyUBBr+o7+CN2IHYr24UYD0r3xXJlAFwqBIsEMgys
	cjE1JDtXqzxzjtUwjvUcw8EsNrTk1Jumvp+3shfbjicYHuJi64nN9PWa1NfIESk9+8Tfy4CKYccGF
	sT+kHakg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaiu-0006Fh-G1; Mon, 04 May 2020 13:01:28 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVac7-0002jx-EX
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:32 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125424euoutp013040fa4324cd3792e274b2ba6f456370~L1G6CFLoJ2848128481euoutp01H
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125424euoutp013040fa4324cd3792e274b2ba6f456370~L1G6CFLoJ2848128481euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596864;
 bh=zHKjZwTbMZQRumKBMI2AAMfiZVQYV7hkyoAsi6A5YUc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Fa4K6YxE0WKI8AbXSk+jj/nQOBw9hyMeKhrzJ57J2LSfAawk4LRm/0lMKMOQGcVul
 sdB6vOA5qQwaPFi5go8O5pD7YEK4WFfaI4ZwWytk19LrGrY/LgTVPEYSUW22upxjsm
 05tVFRr3GJ03XaCYaJ7oJ7GRNgTbwpVe0T7suRBc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125424eucas1p2e4b016b14b89fc7a00c20e03f6732b26~L1G5no84j2227522275eucas1p2y;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id BE.12.60698.08010BE5; Mon,  4
 May 2020 13:54:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981~L1G42B__p0599805998eucas1p2I;
 Mon,  4 May 2020 12:54:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125423eusmtrp11a647a9bbbb95e4ac1ed778c7a476de2~L1G4wG4_32470624706eusmtrp1r;
 Mon,  4 May 2020 12:54:23 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-64-5eb01080774f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0E.06.07950.F7010BE5; Mon,  4
 May 2020 13:54:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125422eusmtip2100181fd77b643d825ae7bf11205545f~L1G4FjbSs0350103501eusmtip23;
 Mon,  4 May 2020 12:54:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 19/21] dmabuf: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:57 +0200
Message-Id: <20200504125359.5678-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeUgUURzm7Rw7mmvjavo8StjohDywPyYsSTIYwkIIyYSsTcdVctV2PFIK
 Fy2pzU1bwysr3QTvM9nEtPLIzQwrNbF0PVNREI1dlUy0Hafsv+/3He9778cjEHEd5kRERscx
 imhplAS3RHVdvz4dUZJ1IR5TkxaUurdbQNXn1WLUpu4hQg0sL+JUeeU7AVX0xpsyDUwIqIap
 QYzqby7EqepOg5BqW/qBUR8MRuFJK7rqaRWgW1eKUHpksAWnX66MY/TYfb2AflGSQg9vTCF0
 9lApoF99U+L0g8YKQBsb9gTsCLY8HsZERSYwCnefK5YR+o4NPLbf7oZu/IlQCcpsVIAgIHkU
 akuCVcCCEJNlAE7cC1cBSzM2AdinbcH4wQhgTv4zAefiAgVjmUJeKAVw9bsJ3Y4Y1KsI58JJ
 T6haUOEctiPvAPhebcWZELJdAAvLZ1FOsCXPwN+auS0TSu6DxqrhrbCIPAGzTCrA17nCyrq3
 CHdXCzOfrz7AnQPJZiHcrO/GeI8fbH2kw3lsC+f1jUIeu8Ce7AyUD6SZH9dbLeSHDAD7U/P+
 NnjDkd41nGtAyEOwttmdp33hUs60kF+SNRxasOFoxAw1ulyEp0XwbrqYd++HBfqa7dq2z30I
 j2mYVrOC8wvqAHCyqQvLAq4F/8uKAKgADkw8K5cxrFc0k+jGSuVsfLTMLTRG3gDM/6hnQ7/c
 BF6vX20HJAEkVqIgY22IGJMmsEnydgAJRGInarptpkRh0qRkRhFzWREfxbDtwJlAJQ4iL+3c
 JTEpk8Yx1xgmllH8UwWEhZMSOMdHgVSf0ZmYusngNHt9TfZ8oNbdtJo7mizTNIV3soljaY4V
 gW0X7DNtRnel+z8n4tCUtfPKvbpzM1/VnY+Lj20khCnO7tQaDqY2BgRZe4j7YvxdRsp6nKdV
 twbtPK47WnnN3vy4Lve9uDjZEKr5ojEsa36KunefCj1dWewn0EpQNkLqeRhRsNI/Td9DXUMD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIIsWRmVeSWpSXmKPExsVy+t/xe7r1AhviDFqfc1v0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcEPT1gtTt39zO7A
 47Fm3hpGj73fFrB43Lm2h81j+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehnHD/9jK7gsUrHtwVz2BsYVgl2MnBwSAiYSs+73s4PYQgJLGSVezY2BiMtInJzWwAphC0v8
 udbFBlHziVFieoMFiM0mYCjR9RYkzsUhItDJKDGt+yM7iMMscIJJ4vSMr2DdwgJeEr8nvQTr
 ZhFQlfi85jYziM0rYCsx4UsXI8QGeYnVGw4AxTk4OIHiM3vVIZblS9x9+o9lAiPfAkaGVYwi
 qaXFuem5xUZ6xYm5xaV56XrJ+bmbGIHRse3Yzy07GLveBR9iFOBgVOLh3fB1fZwQa2JZcWXu
 IUYJDmYlEd4dLUAh3pTEyqrUovz4otKc1OJDjKZAN01klhJNzgdGbl5JvKGpobmFpaG5sbmx
 mYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsbNIkfXX3qY9v72YdG68hU6OwI0fqYdSHm3
 qP2OuOXJoPV1HOm6Tu7rYyZInng2K+wDB3duzM8kW6ZVh5tipb4vcNF8I/c3ubnz/jKzxdl2
 IVO+ec9k2uyVXrJb1aPH+eXGpwdmLy7bo+N26sm7vuNv3ioViuornMyadsQp8MYMRrbbHad5
 6nqVWIozEg21mIuKEwF/RK8UpAIAAA==
X-CMS-MailID: 20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981
X-Msg-Generator: CA
X-RootMTR: 20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055427_708018_2C4D5B77 
X-CRM114-Status: GOOD (  14.52  )
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sumit Semwal <sumit.semwal@linaro.org>,
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
 drivers/dma-buf/heaps/heap-helpers.c | 7 ++++---
 drivers/dma-buf/udmabuf.c            | 5 +++--
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/dma-buf/heaps/heap-helpers.c b/drivers/dma-buf/heaps/heap-helpers.c
index 9f964ca..b923863 100644
--- a/drivers/dma-buf/heaps/heap-helpers.c
+++ b/drivers/dma-buf/heaps/heap-helpers.c
@@ -144,8 +144,9 @@ struct sg_table *dma_heap_map_dma_buf(struct dma_buf_attachment *attachment,
 
 	table = &a->table;
 
-	if (!dma_map_sg(attachment->dev, table->sgl, table->nents,
-			direction))
+	table->nents = dma_map_sg(attachment->dev, table->sgl,
+				  table->orig_nents, direction);
+	if (!table->nents)
 		table = ERR_PTR(-ENOMEM);
 	return table;
 }
@@ -154,7 +155,7 @@ static void dma_heap_unmap_dma_buf(struct dma_buf_attachment *attachment,
 				   struct sg_table *table,
 				   enum dma_data_direction direction)
 {
-	dma_unmap_sg(attachment->dev, table->sgl, table->nents, direction);
+	dma_unmap_sg(attachment->dev, table->sgl, table->orig_nents, direction);
 }
 
 static vm_fault_t dma_heap_vm_fault(struct vm_fault *vmf)
diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index acb26c6..ea0cf71 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -63,7 +63,8 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 					GFP_KERNEL);
 	if (ret < 0)
 		goto err;
-	if (!dma_map_sg(dev, sg->sgl, sg->nents, direction)) {
+	sg->nents = dma_map_sg(dev, sg->sgl, sg->orig_nents, direction);
+	if (!sg->nents) {
 		ret = -EINVAL;
 		goto err;
 	}
@@ -78,7 +79,7 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 static void put_sg_table(struct device *dev, struct sg_table *sg,
 			 enum dma_data_direction direction)
 {
-	dma_unmap_sg(dev, sg->sgl, sg->nents, direction);
+	dma_unmap_sg(dev, sg->sgl, sg->orig_nents, direction);
 	sg_free_table(sg);
 	kfree(sg);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
