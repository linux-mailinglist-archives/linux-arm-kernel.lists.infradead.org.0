Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCA420069A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YRDiq5UIgUupRpUKGxaXe/w6uDMR3uQ5bi5q5PLUxYY=; b=T5jDo4/TNQODY8sMF6ThDjeGW2
	2n20vObbCXAO9oSriij8HZwIoYDAwxaEGAggtK/bYeYKPZZX3U+qTBWKrrSfsTaPW/sBJjFTR6XDT
	yhbPHYUwx0x4/VxYZesRjqpmFKi+TjHe7l9ZSOScpW9hc/WTRpTP9d1n5TapGJp4tYliYZtDR0LaH
	4jQp533riGcD68ExblH3z6hMAUpNJssk95BgcdHKwmgwgsEkzuum0No1nUKdzXGgqDFI8ebsCG3Ki
	E8lWapvbNG53zXYxXXtT8I2IzsPGPErg3xKSbTSY538+XTssS7UWQ2euXWZe8vwqaQXr+fvPEqLT+
	bleB438g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEOk-00056y-RB; Fri, 19 Jun 2020 10:37:26 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOG-00055R-Vx
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:36:58 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103655euoutp021c403c04319c40c2850d3f919167a3d6~Z65-0PIGT2242222422euoutp02G
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103655euoutp021c403c04319c40c2850d3f919167a3d6~Z65-0PIGT2242222422euoutp02G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563015;
 bh=SiDbyfz+DT2A87073zIKJOnOPoiLke52kDecHXuerdc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KKhvj8+Uw2FO7t+Aqfqf7wHlTcC7m81tgQTYGa7LTSLWDxn95j4uFpUdvJSRgZA0m
 2cIVsGWzauYHhU7RUjDoLWDJS/wmbP9A43CnliDFk2EJDitgld2JJT9lZ7CrhomQnr
 HjWBjnwPUmVWdjSfEqkxm3K961MLzDG5dKgjO7AU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103655eucas1p203c16efdd1ae8d5c522e56b6528b4c06~Z65-X3x462889328893eucas1p2j;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 6C.8D.05997.6459CEE5; Fri, 19
 Jun 2020 11:36:54 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210~Z65_vv1sk2893928939eucas1p2R;
 Fri, 19 Jun 2020 10:36:54 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103654eusmtrp1fa456b45408242fead0128e61b85a43d~Z65_vC34y0959609596eusmtrp1r;
 Fri, 19 Jun 2020 10:36:54 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-ce-5eec9546e73e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 89.DA.06314.6459CEE5; Fri, 19
 Jun 2020 11:36:54 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103653eusmtip2fb6ea7e1b71335bb29b3d3fa436b9e9a~Z65_Fdj8S2581725817eusmtip2i;
 Fri, 19 Jun 2020 10:36:53 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 02/36] drm: prime: use sgtable iterators in
 drm_prime_sg_to_page_addr_arrays()
Date: Fri, 19 Jun 2020 12:36:02 +0200
Message-Id: <20200619103636.11974-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSyUcRzf7557nnvcPHo6ym+0bNeyanNImydKpRfP/KWprVXo8DjyuntQ
 0ualEudlXtaYiat5yXvdSaJWbnRhKMzuipNoCFNzNGbKedB/n+/n+/n8Pt999sMRUQdqg4dF
 xTLyKGmEGBPymz+s9DtceDTn71Sc60pl93XxqBdFjSj1tzkPoYaWFjCquraTRynfuVPGoXEe
 pZoYRqnB1hKMqu8YFVBPfr/kU2kZlSjV/msSpZrm8tDTFnRdaR2g3y4r+bSqJgOjXy1/Q+nS
 rov0WKaWR6vLk+iv6xMIXaCrAnSbPhmjc5pqAK3uSaQXVft9iKvCE8FMRFg8I3f0uCEMNWSk
 CmIGLG93ry+hycCwSwHMcEgeg5PGdEwBhLiIfAbgQq9CwA1GAPWVs4AbFgH8ka9Gti3FU7MI
 t6gCMG1wnLdjaRnS80wqjHSGinkFZsJW5AMAP2abm0QIqUTgymIaMC0sySCYkTqxEYjjfPIg
 LNP4mmiCPAl1+jaUS7ODtc/fbyabkR5w9n47anoHksMC2NC9JuBE52D5WOkWtoQ/tU1beB/s
 Kcjic4Z7AI731Qu4IQvAwdQiwKnc4UjfKma6AiEPw8ZWR44+A7NeT2zSkLSAuvndJhrZgPnN
 hQhHEzA9TcSp7WGxtmEntv3TwFZbNDR0ft8qOG+jrYpcNBfYFf8PUwJQA6yZODZSxrBHo5hb
 ElYaycZFySRB0ZEqsPG3eta1xhbQuhaoASQOxObE9KVZfxEqjWcTIjUA4ojYivDs7fEXEcHS
 hDuMPDpAHhfBsBpgi/PF1oTL0xk/ESmTxjLhDBPDyLe3PNzMJhl4IbIZ15GHRmLUqzagtcn2
 j5t1J/4FHvJzmV5OL9wji9HelcxjJauhkjBLnTQnxSZ6MKXXLNrzTb8sZIx1KicTdVMhhLdD
 RdXx6kndgfRA9WX7tVN7Yx/rVdfirxSWLITLpqF9lu/nCp+bbvLrZ9uL+r3yz/NcDN7qzOCy
 wCQxnw2VOh9B5Kz0H0PGf9BXAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xe7puU9/EGbxsF7ToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4Uft7JYtHUuY7U4
 +OEJq8WWNxNZHfg81sxbw+ix99sCFo9NqzrZPLZ/e8DqMe9koMf97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1Zxeix+XS1x+dNcgG8UXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG
 5rFWRqZK+nY2Kak5mWWpRfp2CXoZ9zqb2AsuCVec+veVtYHxHn8XIyeHhICJxKznr5m7GLk4
 hASWMkpMO9HJCpGQkTg5rQHKFpb4c62LDaLoE6PEof5eNpAEm4ChRNdbiISIQCdQd/dHdhCH
 WWAFs8SrfXNZQKqEBRIlGnetB0pwcLAIqErMPxQMEuYVsJW4cXM31AZ5idUbDjCD2JwCdhKv
 Ww6CxYWAapYveM88gZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMAo2nbs5+YdjJc2
 Bh9iFOBgVOLhfRHyOk6INbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxhNgW6a
 yCwlmpwPjPC8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Mc5lX
 /b5i2C++cNmEpsWJIeEBZjUXQkyviPzIbf379fiZ2JzLugXL3jPXfoi/06glJLKK5btPgUSy
 6X/zTlZ283y1AwJrDh9UszktVDyrhnND7qqfZgLbT5/qtdvl6MTw7l+Ux3mp8L0BWuYy788v
 XBO4+V+eitiFuszl1/JmvFGNf7xp4qMjSizFGYmGWsxFxYkAqyN577gCAAA=
X-CMS-MailID: 20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210
X-Msg-Generator: CA
X-RootMTR: 20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033657_338272_921F7D1E 
X-CRM114-Status: GOOD (  16.62  )
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the current hand-crafted code for extracting pages and DMA
addresses from the given scatterlist by the much more robust
code based on the generic scatterlist iterators and recently
introduced sg_table-based wrappers. The resulting code is simple and
easy to understand, so the comment describing the old code is no
longer needed.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/drm_prime.c | 49 ++++++++++++-------------------------
 1 file changed, 15 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 226cd6ad3985..b717e52e909e 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -990,45 +990,26 @@ EXPORT_SYMBOL(drm_gem_prime_import);
 int drm_prime_sg_to_page_addr_arrays(struct sg_table *sgt, struct page **pages,
 				     dma_addr_t *addrs, int max_entries)
 {
-	unsigned count;
-	struct scatterlist *sg;
-	struct page *page;
-	u32 page_len, page_index;
-	dma_addr_t addr;
-	u32 dma_len, dma_index;
-
-	/*
-	 * Scatterlist elements contains both pages and DMA addresses, but
-	 * one shoud not assume 1:1 relation between them. The sg->length is
-	 * the size of the physical memory chunk described by the sg->page,
-	 * while sg_dma_len(sg) is the size of the DMA (IO virtual) chunk
-	 * described by the sg_dma_address(sg).
-	 */
-	page_index = 0;
-	dma_index = 0;
-	for_each_sg(sgt->sgl, sg, sgt->nents, count) {
-		page_len = sg->length;
-		page = sg_page(sg);
-		dma_len = sg_dma_len(sg);
-		addr = sg_dma_address(sg);
-
-		while (pages && page_len > 0) {
-			if (WARN_ON(page_index >= max_entries))
+	struct sg_dma_page_iter dma_iter;
+	struct sg_page_iter page_iter;
+	struct page **p = pages;
+	dma_addr_t *a = addrs;
+
+	if (pages) {
+		for_each_sgtable_page(sgt, &page_iter, 0) {
+			if (p - pages >= max_entries)
 				return -1;
-			pages[page_index] = page;
-			page++;
-			page_len -= PAGE_SIZE;
-			page_index++;
+			*p++ = sg_page_iter_page(&page_iter);
 		}
-		while (addrs && dma_len > 0) {
-			if (WARN_ON(dma_index >= max_entries))
+	}
+	if (addrs) {
+		for_each_sgtable_dma_page(sgt, &dma_iter, 0) {
+			if (a - addrs >= max_entries)
 				return -1;
-			addrs[dma_index] = addr;
-			addr += PAGE_SIZE;
-			dma_len -= PAGE_SIZE;
-			dma_index++;
+			*a++ = sg_page_iter_dma_address(&dma_iter);
 		}
 	}
+
 	return 0;
 }
 EXPORT_SYMBOL(drm_prime_sg_to_page_addr_arrays);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
