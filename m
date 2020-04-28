Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93831BBF4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7NqZARlqseSfiuuVEqZGJ6YZCOqDXdp6n6YddNRUk3k=; b=nl5tqR8EVu0AgsUgHDnScJZk5c
	vYM61Rplg5/pycmutWeszbfhoYDmu1e0rSmxkHZ0TAWx/9PzD4xoDGP/Mq7cVJqufDRGoVZE1Hq0r
	x3mAuKGUNytsTYLDXsbwvUGgJp5KhsiY5AZSysoHJBqVTErJcHpDq85tkKy3FioB53lR2WaaVnBGw
	/lV4dkFLdR6Sk+K/plXBUrqw4PB5IxY7sXZ5DMylWqUiysyJHHmYwR7eVJiuV0hjGJsPkw4OQhq3y
	ts9PvwQvr42SXBygq53T0uvB44v78RDgs2+kqUcy9wAxTIg8MZ4+H4cQ/za7MP+Cj5oHug+3DO2gW
	GsmoTm5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQFF-0002Ux-PT; Tue, 28 Apr 2020 13:25:53 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQA6-0004hl-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:20:36 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132033euoutp0184ef2d6059f08e70ab9f5717e0c093e0~J-mBR_k6E2044220442euoutp01G
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:20:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132033euoutp0184ef2d6059f08e70ab9f5717e0c093e0~J-mBR_k6E2044220442euoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588080033;
 bh=W1cooQvBlT6u8ezdjLvm+dB0V90PbzJlXZ1A87QbWGY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B1o9LdgvkDl+bDAQ1Zo3mJbGWjVT0tYh4GM+CZD2JHRmJBxDNNEszg2LFTkraaWQ9
 7va8eiqBhfaUfZu8KiXs12f7fuMJkDg8HFRleGQoLyPQZC06WgEM7ne0NWZqYwaTjg
 L/DZpwq+ENhDM7AszBmFtVyHapNiuUo/r7OdfGRE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132032eucas1p2488259606ff3e4dad28e7de81cfe4baa~J-mA2SEnw2653326533eucas1p2S;
 Tue, 28 Apr 2020 13:20:32 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AE.26.60698.0AD28AE5; Tue, 28
 Apr 2020 14:20:32 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c~J-mAm0ZZa1368113681eucas1p1R;
 Tue, 28 Apr 2020 13:20:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132032eusmtrp2a527f876c3f2d680c57d874708de8d31~J-mAmDBus2140221402eusmtrp2b;
 Tue, 28 Apr 2020 13:20:32 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-9d-5ea82da01ffa
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A7.E3.07950.0AD28AE5; Tue, 28
 Apr 2020 14:20:32 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132031eusmtip2b5690c9c67116c2ec0e00c4bc3216f63~J-mACdxOH1116911169eusmtip2b;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [RFC 17/17] dmabuf: fix sg_table nents vs. orig_nents misuse
Date: Tue, 28 Apr 2020 15:20:05 +0200
Message-Id: <20200428132005.21424-18-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrAKsWRmVeSWpSXmKPExsWy7djPc7oLdFfEGVzr0rPoPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUVw2Kak5mWWpRfp2CVwZJ88sYirYL1yxaGYjYwPjSoEu
 Rk4OCQETiTMn3jB2MXJxCAmsYJR40ToVyvnCKDH35wVmCOczo8Sdr2uZYFquPLzHApFYziix
 Zdt3JriWhm9LwKrYBAwlut52sYHYIgKtjBInenlAipgFtjFLPFl+hB0kISzgKrFjywJWEJtF
 QFVi8+atzCA2r4CdxNKGh2wQ6+QlVm84ABbnBIk/egoVv8Qu8aMlDMJ2kbhzcA/UecISr45v
 YYewZST+75wPdp2EQDOjxMNza9khnB5GictNMxghqqwl7pz7BTSVA+g8TYn1u/RBTAkBR4kr
 h1ghTD6JG28FQYqZgcxJ26YzQ4R5JTrahCBmqEnMOr4ObuvBC5eYIWwPiTe3prBDwmcio8TR
 LW9YJzDKz0LYtYCRcRWjeGppcW56arFxXmq5XnFibnFpXrpecn7uJkZgujr97/jXHYz7/iQd
 YhTgYFTi4d3AsyJOiDWxrLgy9xCjBAezkgjvo4xlcUK8KYmVValF+fFFpTmpxYcYpTlYlMR5
 jRe9jBUSSE8sSc1OTS1ILYLJMnFwSjUw8tTcmldqUOKySi/5gHlzgK3j39s87tPS4/uCNEyE
 Vt249jf58qqXa/yee/kYcbz1rX5jcKqLaZPW9pUX/aYxBvks7k7RfvIuYUP1Bv3nxn2Xy3UW
 z/my1i8wOfvR2YAPMw9tqbMzX1g5R8hDZJHGqbkyN533TW1++smWu3xiTLmB23vW6L7zSizF
 GYmGWsxFxYkAKWHGIVMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7oLdFfEGUzZJ2/Re+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyTp5ZxFSwX7hi0cxGxgbGlQJdjJwcEgImElce3mPpYuTiEBJY
 yihx79VJZoiEjMTJaQ2sELawxJ9rXWwQRZ8YJZ5sfsMIkmATMJToeguREBHoZJSY1v2RHcRh
 FjjALNF9/iQTSJWwgKvEji0LwEaxCKhKbN68FWwFr4CdxNKGh2wQK+QlVm84ABbnBIk/egoU
 5wBaZytxuSV3AiPfAkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIHxs+3Yzy07GLveBR9i
 FOBgVOLh3cCzIk6INbGsuDL3EKMEB7OSCO+jjGVxQrwpiZVVqUX58UWlOanFhxhNgW6ayCwl
 mpwPjO28knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MfTW39hzO
 mxy01EE76EWz3dGUqnuftJNOBSv8ebYjt4dt2cwXa/9s+f2j8pVC7MWVX4RU76qtNNMp/r+1
 t8thX422iuiukxu6pBMLDq2J/vJtxYcbTwvv9TPk3N3+5QyDzb8tjhN3eWy4Xf+n8qRsV6mF
 qf3XUvX82csYS+3/FtWUXZp/ZtriO0osxRmJhlrMRcWJAGKr1d21AgAA
X-CMS-MailID: 20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c
X-Msg-Generator: CA
X-RootMTR: 20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062034_987431_8C098032 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
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
