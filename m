Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1FC1CF13C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jTX25NmNT1AlZRO8AM1tAYu2PXQf65pw681/N5hE+tg=; b=J4g8hHetMT1eOH+F5UTO/BXR3u
	anHtnc4GqUwm3v26TC82Ze31obxtW0o00VeE6w8kLHwKK0HBqZKa7LP1foLXhFz8KDkSDBUBgP8Wh
	cxqtZlw9s3SNdybpQUz+zgULBYH9073t/wX27sf2MRxu/CzvqpMNSZXf+jnOuFVTXI9cNPUFg126e
	L6M0FOzH7cBky7gICh8H+QcNmeItK36ws2rONNR8P5zX/FCLxfFI3Vevq1M9fDIHZjUbCjljq36HS
	lqqxZkBuWP8TDm5HQfHWaBBvPGptY0l4uyGO/S1Ojw9RqPvcgd8n+BH3URLToLciyTwzH93/lhuwA
	FvpfDDOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQy9-0006w1-3t; Tue, 12 May 2020 09:12:57 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn5-0002Qm-LZ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090123euoutp02addfb3840c24c4f8905616b034be1ed4~OPFvm4LJH0455404554euoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090123euoutp02addfb3840c24c4f8905616b034be1ed4~OPFvm4LJH0455404554euoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274083;
 bh=FXPMiPZ7c5SpQvubIUWbXGofE01C1Z/1aYgGs4t5Rxs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ih0USp23t26wxsRvarcPV4Pov2q1PNB2p5j5mxnWrcxXlRpq/89DJ5zahIm/FEFg9
 RYr+EVva+8g0OTCmzOcHTauiswkJE/Qyrq7rOfSywzuapDDsewQ1Y4CYw/xypQIQZh
 4ZO+U1V8RA8w+sZjW73lDvXsyZ7OrRrZfMpXU7yg=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090123eucas1p27aea9b6c10466074bd204422df08d17e~OPFvPqjYq3098030980eucas1p2J;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 75.7B.60698.3E56ABE5; Tue, 12
 May 2020 10:01:23 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090123eucas1p268736ef6e202c23e8be77c56873f415f~OPFu8MRmS2180321803eucas1p27;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090123eusmtrp120653e9289ee4b94bb938846d5e1609a~OPFu7bCGL0188101881eusmtrp1V;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-44-5eba65e3ce95
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F2.03.07950.3E56ABE5; Tue, 12
 May 2020 10:01:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090122eusmtip1628d2b6fc16039b5ec284bb2840665fe~OPFuTMsTB1181011810eusmtip1r;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 27/38] xen: gntdev: fix common struct sg_table related
 issues
Date: Tue, 12 May 2020 11:00:47 +0200
Message-Id: <20200512090058.14910-27-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHOffe7V7FyW0qHlQUFoUFaT6iG4oUJt1/DCukh2gtvejQTdt8
 ZEWJZsic5pKlmJaF4PuRrWmKmo+5mWW+H7NQU6MM0fJRmlmbV+2/7+/z+37P93A4BMrv5NgR
 IkksI5UIowRcc0zTufb+0DTTEHL4z6w9ldHThVDPc6s5VF9OKkb91ShRanBlgUuVlmsRqrDF
 i8ofc6eWB6cQqnZ6mEMNNORzqcqOjzjVujjDoX6qs5HjlnTF4wpAN60WYnTd6iSHnkjXIfSL
 ojv0+OY0SmePFgO6fXEQoxvHkrj091kDRmeqywBdrR7C6KVaxwDeJXPvMCZKFM9IXX2umEcU
 pGXiMb221wum2tEkUGolB2YEJD3hbK8alwNzgk+WADiykc9lh2UA83/83t4sAdi6qeXsRJSG
 coRdFAM4qsjCdiODdXrE5OKSblA+L+eatDWZCqA+w8JkQsl0FKoqy7aOsiLPwrwNA27SGLkP
 6r89Rk2aR/pAg3YcYeucYHnN6y1uZuQTTza22iBpwGFR8wiXNZ2Ey/cHtrUVnNOpcVY7wO5s
 xXYgBcCpnkqcHRQADiTnAtblBT/0rBvThPF+B2B1gyuLT8C+ftUWhqQlHJ3fY8KoUT7Q5KAs
 5sG0e3zWvR/m6ap2a1t7+1FW07CmxLD9jloAteUKkAWc8v6XFQJQBmyZOJk4nJF5SJgEF5lQ
 LIuThLuERotrgfF3dW/qVupB88bVNkASQGDBS3N/FcLnCONlieI2AAlUYM27KzIiXpgw8QYj
 jb4sjYtiZG3AnsAEtjyPZ1+D+WS4MJaJZJgYRrqzRQgzuyTgj6/bOJA9KhuNdsKuacw3chLB
 pwu7Yo76LZx/6dWo7BAOOQc2DdUnWLgGOaw8xfUd8kSVyDtQsVcZ/CvimP8R0ZxjYoBkOPmT
 9Vho7WlnlWfn27V3vjpR3rVHb4Jawvwu5AyMnPG/7btOz4hTnM/Jb1alx3x+eCtWeTFQnHLq
 iwCTRQjdDqJSmfAfUBbuYVkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7qPU3fFGTz/xmbRe+4kk8XGGetZ
 LS5Ob2Wx+L9tIrPFla/v2SxWrj7KZLFgv7XFnJtGFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWi+9bJjM58HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNHj8IcrLB67
 bzaweXx8eovFo2/LKkaP9Vuusnh83iQXwBulZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqln
 aGwea2VkqqRvZ5OSmpNZllqkb5eglzG3o4+94IJ4xdyHh5kbGFcKdzFyckgImEhMvLWaqYuR
 i0NIYCmjxL3rM9kgEjISJ6c1sELYwhJ/rnWxQRR9YpQ42/yABSTBJmAo0fUWIiEi0MkoMa37
 IzuIwywwmVni2errQHM5OIQFAiSmvuYDaWARUJU48XoeM4jNK2AncevobSaIDfISqzccAItz
 AsXvz/8DtkBIoFDi0dW3LBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjKNtx35u
 2cHY9S74EKMAB6MSD2+H0c44IdbEsuLK3EOMEhzMSiK8LZlAId6UxMqq1KL8+KLSnNTiQ4ym
 QEdNZJYSTc4HxnheSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZG
 Ba+Ub1VHxD9sT/5RO83mwGInkclS+/W8P06vU82Qf/K1czKPkJ/95kkfdYOm8pj7fvRhke3b
 51ih+Ct1XVX+limzVJ5+E+hLtquTeP37shD7jeNvDHSLP2lzzxb4fSbUUNksdvM2Q86pUr1f
 y6OetU8sKHasnPnadw87xwq7hAjhv1N1PAKUWIozEg21mIuKEwEHRpQquQIAAA==
X-CMS-MailID: 20200512090123eucas1p268736ef6e202c23e8be77c56873f415f
X-Msg-Generator: CA
X-RootMTR: 20200512090123eucas1p268736ef6e202c23e8be77c56873f415f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090123eucas1p268736ef6e202c23e8be77c56873f415f
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090123eucas1p268736ef6e202c23e8be77c56873f415f@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020132_242716_55BA9C6B 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
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
Cc: Juergen Gross <jgross@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
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
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/xen/gntdev-dmabuf.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/xen/gntdev-dmabuf.c b/drivers/xen/gntdev-dmabuf.c
index 75d3bb9..ba6cad8 100644
--- a/drivers/xen/gntdev-dmabuf.c
+++ b/drivers/xen/gntdev-dmabuf.c
@@ -247,10 +247,9 @@ static void dmabuf_exp_ops_detach(struct dma_buf *dma_buf,
 
 		if (sgt) {
 			if (gntdev_dmabuf_attach->dir != DMA_NONE)
-				dma_unmap_sg_attrs(attach->dev, sgt->sgl,
-						   sgt->nents,
-						   gntdev_dmabuf_attach->dir,
-						   DMA_ATTR_SKIP_CPU_SYNC);
+				dma_unmap_sgtable(attach->dev, sgt,
+						  gntdev_dmabuf_attach->dir,
+						  DMA_ATTR_SKIP_CPU_SYNC);
 			sg_free_table(sgt);
 		}
 
@@ -288,8 +287,8 @@ static void dmabuf_exp_ops_detach(struct dma_buf *dma_buf,
 	sgt = dmabuf_pages_to_sgt(gntdev_dmabuf->pages,
 				  gntdev_dmabuf->nr_pages);
 	if (!IS_ERR(sgt)) {
-		if (!dma_map_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
-				      DMA_ATTR_SKIP_CPU_SYNC)) {
+		if (dma_map_sgtable(attach->dev, sgt, dir,
+				    DMA_ATTR_SKIP_CPU_SYNC)) {
 			sg_free_table(sgt);
 			kfree(sgt);
 			sgt = ERR_PTR(-ENOMEM);
@@ -625,7 +624,7 @@ static struct gntdev_dmabuf *dmabuf_imp_alloc_storage(int count)
 
 	/* Now convert sgt to array of pages and check for page validity. */
 	i = 0;
-	for_each_sg_page(sgt->sgl, &sg_iter, sgt->nents, 0) {
+	for_each_sgtable_page(sgt, &sg_iter, 0) {
 		struct page *page = sg_page_iter_page(&sg_iter);
 		/*
 		 * Check if page is valid: this can happen if we are given
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
