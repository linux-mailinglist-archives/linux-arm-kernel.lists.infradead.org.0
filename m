Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857831C5155
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zMQXenuwg1IfpZNlznpS5bVJwRLP1aHc1+xSbT9BP/U=; b=hYOBdXh/yZx0EPCgqRXMLj01y2
	F5ffmqt5o3h2nRKjv6ubWGUUsuNQT/lYPK8Na2JKp9FadPdX7GdGIv9ObAM5cxoDJBTmqp0/6wsUc
	b01Q4ttWcrn95tQoWGQjcgNLQR+uaLwfd3mgytK5TZPeX/u2rvL9hcAQp7v8N+75fIlrOaiGRvGzy
	FLjp1BaqN7Z1ufwTRHx213Xryh/BGJyu55ENdCFn2Jg7SKZSLacRH3vaMUPBkTyPvfd62H+C88lMW
	cqitochiZzx+JabhY4urY3I5AEslxRYWDJeXMvJ7OUZ1dn6QUUpWuAKuOyJx04vmaLg2ZxA3LrIHb
	NK7hI68g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtJl-0008Ki-DZ; Tue, 05 May 2020 08:52:45 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDp-0000aX-9o
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:39 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084635euoutp01590a42b1a2dcdba774cdf499f1d92a2b~MFX0n3oQk0378903789euoutp01O
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084635euoutp01590a42b1a2dcdba774cdf499f1d92a2b~MFX0n3oQk0378903789euoutp01O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668395;
 bh=X1nfXo9cKl5fZa4V0fEIOhdnztemn3SkVlBP/IKvYMM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DHxZnZZhzB87q0MaRgzOaDvTUBuffCayHv1TcoTZkEm1Lf0g0hxWUPlI/JqMSsqym
 bwUdbVfPEAydzc28NygvW48tOXMv5mzWEqUU9Asajzixk2wauUbDt4/DPuL41AEJYv
 lOS0Hd67xbhFaAkuSpvy+b1WRZVGEv691iQcuHdk=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084635eucas1p1430db2477f49d3cf561d94133968dfdf~MFX0O-FJj0601906019eucas1p1Q;
 Tue,  5 May 2020 08:46:35 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 49.CF.61286.BE721BE5; Tue,  5
 May 2020 09:46:35 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084634eucas1p105456f28d9a7935190478546e566975f~MFXzzjxXz2431924319eucas1p17;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084634eusmtrp11ef8f84e63f6a30b0427888ceadddb01~MFXzy2UGA0942509425eusmtrp1R;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-b4-5eb127ebc36b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5E.21.07950.AE721BE5; Tue,  5
 May 2020 09:46:34 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084634eusmtip1ccdc14d70b1dfb490ab87a4d3135453d~MFXzP2Bdu0580805808eusmtip1-;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 19/25] dmabuf: fix common struct sg_table related issues
Date: Tue,  5 May 2020 10:46:08 +0200
Message-Id: <20200505084614.30424-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHeXcuOxMnp03xzSJhpmaQF1I4oEhhwQG/9CHKxKyVBy/plB1n
 GYVWamFqpuW1TLTyfptmoqXOnEtHanOJlcvLSspLSl7SAm3zqH37P7/n/zz/h5eXQEQqzI4I
 l8Uycpk0UoJboM09a/2HZpwbgt0n9CIqvb+XRzXk1WHURvN9hNIvz+NURZWaRxV3eFNTn3oR
 akk/waOUxmGMGmp9hFNp9S8wqqbbwKdUC18xqs+wyD9iRVcXVQP69UoxSo8Ov8LplyvjGD12
 V8OjG58m0J/XjQidPVIG6LaPiTg93/4BpzOaKgG9qNx3wjLQwieEiQyPY+RuvuctwmaTxDFT
 tlc6241YIhgTpwIBAUlPaMjsxlKBBSEiywFsXV3jc8USgIlLGYArFgEsVKt52yOTpatbjTIA
 H/fqeTsjbZNZqNmFkx4wdS4VN2trMhnAt+mWZhNCJiGwsuPGZkNM+sOGomlg1ijpCDOSBza5
 kPSFP4sbcS7OHlbVdyJmLTBxo24UNy+CpI4PBzeMfM50DFbPKzFOi+G0pmmL74Xa7DSUG7gF
 4ER/DZ8r0gAcupkHOJc3HO3/Y1pLmO5zgXWtbhw+Cstul/LMGJJWcGRulxkjJpnVnItwWAjv
 pIg4txMs0NTuxKoGdQinaajtNaDcC6kBrDWo0UxgX/A/rBiASmDLKNioUIb1kDGXXVlpFKuQ
 hbpejI5SAtPH0q5rfrWAZd2FLkASQGIpDFisCxZh0jg2PqoLQAKRWAufr9YHi4Qh0virjDz6
 nFwRybBdYA+BSmyFh0t+nBWRodJY5hLDxDDy7S6PENglAqff7iMxXoEH/EbGU46PlVBvIhqC
 r/W17H6WnZ9TMSM7qUNUQd/D7522cRuvcegKCvVRyPTi8I4SpV/A8nBlgJfAbSYDTn5TnXnX
 4rPg6Ekm/HWN6LEpNOSwX8b9HuySS/Y7NU1fd47P9xe8Rx5qHATlWhfFqUnVrNZxINcQ+USC
 smFSj4OInJX+A6wn6sBUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7qv1DfGGfS/tbDoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2eHbrJLPFlysPmSw2Pb7GanF51xw2i54NW1kt1h65y25x
 8MMTVotTdz+zO/B5rJm3htFj77cFLB53ru1h89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHm833eVzaNvyypGj8+b5AJ4ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQy3rQIFzwTrziw7zFrA+N94S5GTg4JAROJR4t/MHYxcnEICSxl
 lGh78oEFIiEjcXJaAyuELSzx51oXG0TRJ0aJf7evs4Ek2AQMJbreQiREBDoZJaZ1f2QHcZgF
 epglLi38wghSJSzgLbFx3iswm0VAVaKv9TxYN6+AncS7BZvZIFbIS6zecIAZxOYEij++dAcs
 LiRQKPHh/HfWCYx8CxgZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgTGz7ZjP7fsYOx6F3yI
 UYCDUYmHd8PX9XFCrIllxZW5hxglOJiVRHiX/dgQJ8SbklhZlVqUH19UmpNafIjRFOioicxS
 osn5wNjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAmLejnseS
 uX6K+KLSZiHJL0LPmgvezGpc+XlXWsS8ZQdyppm0qL7KC5qye+Li052MU94cdmOQZXJpNg2V
 Y20UnvAoQpGr1ZXvW7zVhn/S95XdCmbqhgRp8Hru/Jxt/rd6x5tZgmWHOc9sMDnuPz+Gt+OP
 pFDzi/jynS6nGVJkPx/ayMJq4BOjxFKckWioxVxUnAgA/Ej4drUCAAA=
X-CMS-MailID: 20200505084634eucas1p105456f28d9a7935190478546e566975f
X-Msg-Generator: CA
X-RootMTR: 20200505084634eucas1p105456f28d9a7935190478546e566975f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084634eucas1p105456f28d9a7935190478546e566975f
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084634eucas1p105456f28d9a7935190478546e566975f@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014638_110487_BFBDF9E8 
X-CRM114-Status: GOOD (  15.01  )
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
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
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
 drivers/dma-buf/heaps/heap-helpers.c | 13 ++++++-------
 drivers/dma-buf/udmabuf.c            |  7 +++----
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/dma-buf/heaps/heap-helpers.c b/drivers/dma-buf/heaps/heap-helpers.c
index 9f964ca..be9523a 100644
--- a/drivers/dma-buf/heaps/heap-helpers.c
+++ b/drivers/dma-buf/heaps/heap-helpers.c
@@ -140,13 +140,12 @@ struct sg_table *dma_heap_map_dma_buf(struct dma_buf_attachment *attachment,
 				      enum dma_data_direction direction)
 {
 	struct dma_heaps_attachment *a = attachment->priv;
-	struct sg_table *table;
-
-	table = &a->table;
+	struct sg_table *table = &a->table;
+	int ret;
 
-	if (!dma_map_sg(attachment->dev, table->sgl, table->nents,
-			direction))
-		table = ERR_PTR(-ENOMEM);
+	ret = dma_map_sgtable(attachment->dev, table, direction);
+	if (ret)
+		table = ERR_PTR(ret);
 	return table;
 }
 
@@ -154,7 +153,7 @@ static void dma_heap_unmap_dma_buf(struct dma_buf_attachment *attachment,
 				   struct sg_table *table,
 				   enum dma_data_direction direction)
 {
-	dma_unmap_sg(attachment->dev, table->sgl, table->nents, direction);
+	dma_unmap_sgtable(attachment->dev, table, direction);
 }
 
 static vm_fault_t dma_heap_vm_fault(struct vm_fault *vmf)
diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index acb26c6..5bcbf7a 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -63,10 +63,9 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 					GFP_KERNEL);
 	if (ret < 0)
 		goto err;
-	if (!dma_map_sg(dev, sg->sgl, sg->nents, direction)) {
-		ret = -EINVAL;
+	ret = dma_map_sgtable(dev, sg, direction);
+	if (ret < 0)
 		goto err;
-	}
 	return sg;
 
 err:
@@ -78,7 +77,7 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 static void put_sg_table(struct device *dev, struct sg_table *sg,
 			 enum dma_data_direction direction)
 {
-	dma_unmap_sg(dev, sg->sgl, sg->nents, direction);
+	dma_unmap_sgtable(dev, sg, direction);
 	sg_free_table(sg);
 	kfree(sg);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
