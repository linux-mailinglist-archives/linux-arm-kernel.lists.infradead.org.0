Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843C11CF0FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FME+nCVhPphyj3oe6ruZKqquyC0stKrwztX12dHTPjA=; b=SGtoHCDahJnBe/tMPrKTGNooyP
	sXRAn+F6rA831Qzg4I2Fxg4aadcn7hxXJ10teRhmEVwI9iswqS0R4LRpL+SQqbBe6hksUThX2wvBH
	JfBhJOWYzYrlN4F4u2zX7Nt4vjoxqEy4NL2peZwP1dsfq+auUYPigiFMCMph8Nlmbv8NZu7TZ9315
	NAeR1Y0Eebnkgn27ZXoIgFZNelHsM1T4cF52TLBGgQ5Zu1Pf6lpiYvZIh1KTUe2rXAbMNZl9hHd/L
	NyF87ccTh3bvapHxL6sDDdRE+EAhT6FmJmjV8LyPS4K1WIJhlTMUmjJfMBe3ZHGUQ3cIFKC2Rt3E7
	Lx9UPDTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQrL-0006ZL-0E; Tue, 12 May 2020 09:05:55 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQmp-0002B5-Vu
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:18 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090108euoutp0155c44cf8021faf3a80812072a4211d50~OPFhcGUS22545625456euoutp01s
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090108euoutp0155c44cf8021faf3a80812072a4211d50~OPFhcGUS22545625456euoutp01s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274068;
 bh=Z6P+QyDlXCHqDEMKrAq13YO9c/kru1Pi28JBmijNO7w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uQtiMyu1iOrQSFLshBGWz10wdrAgDB1X5pvCCalc5Fs182L/YJ01wBLzI0HEUTFP6
 iCFTnO8b/5cnGOi6FwDRiG9zSRqS/lq586T8s8cHMJDK1MJGCjDFZqB/Tv7yrGrq6x
 eTq9o/UdQMV+8vkWuPZjln8Ffv7YRgXOnRoAePBU=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090108eucas1p2e59bec601029893e01b93641ca8007bb~OPFhQY7NZ2669826698eucas1p2H;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C4.57.61286.4D56ABE5; Tue, 12
 May 2020 10:01:08 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090108eucas1p10a3571be3f60265daea3b3f1469b5e82~OPFhAA7yl2800428004eucas1p1J;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090108eusmtrp2e9ffdadb133b9e1426c7d4b2949eeb09~OPFg_xhoW0472504725eusmtrp24;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-46-5eba65d43728
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 33.35.08375.4D56ABE5; Tue, 12
 May 2020 10:01:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090107eusmtip105c442f763a5d568d5db4b742eb954ff~OPFgfmRv-1257212572eusmtip1j;
 Tue, 12 May 2020 09:01:07 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 02/38] scatterlist: add generic wrappers for iterating
 over sgtable objects
Date: Tue, 12 May 2020 11:00:22 +0200
Message-Id: <20200512090058.14910-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGKsWRmVeSWpSXmKPExsWy7djPc7pXUnfFGWz+Jm3Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGF14PZYM28N
 o8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB59W1YxenzeJBfAFcVlk5Ka
 k1mWWqRvl8CV0bWyhbVgtmrFpA9bmBsY/8p2MXJySAiYSCx+8Ii5i5GLQ0hgBaPEk8cdLBDO
 F0aJN9seM4JUCQl8ZpTYP4sDpuP25WlQ8eWMEtN3VMA1/Lt1lAUkwSZgKNH1tosNxBYRaGWU
 ONHLA2IzC8xgkjj6uhTEFhZIkNj3/DQ7iM0ioCox4Ww32FBeAVuJUz0r2SGWyUus3nCAGcTm
 FLCTuD//D9h1EgKb2CXWNj5kgShykZj08D6ULSzx6vgWqGYZif875zNBNDQzSjw8t5Ydwulh
 lLjcNIMRospa4s65X0CncgCdpymxfpc+RNhR4tra3ywgYQkBPokbbwUhHuCTmLRtOjNEmFei
 o00IolpNYtbxdXBrD164xAxhe0hsWHGHERJARxkl5q5dyz6BUX4WwrIFjIyrGMVTS4tz01OL
 DfNSy/WKE3OLS/PS9ZLzczcxAlPP6X/HP+1g/Hop6RCjAAejEg9vh9HOOCHWxLLiytxDjBIc
 zEoivC2ZQCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8xotexgoJpCeWpGanphakFsFkmTg4pRoY
 Rd32BCybwxCjmZz4/G7nQ+7wyQo3XSrWXb9+7daSRV+E3xyZIfjE5Ziv0YLGXyWKFu/XPgvp
 57Jk/PXaud1Nfj9ntNnxCXemK5d8vsmzuHdGbMMfjcdNnN4Ttl2JebPMT+umVFIDh55B68qi
 7GlSfS9dyuQzLgQ4VBuU/Rdq9X/loJ0oOllNiaU4I9FQi7moOBEA5lD+3jkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupikeLIzCtJLcpLzFFi42I5/e/4Xd0rqbviDLa1cFn0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcEPT1gduD3WzFvD
 6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuix+2YDm0ffllWMHp83yQVwRenZFOWX
 lqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehldK1sYS2YrVox
 6cMW5gbGv7JdjJwcEgImErcvT2PsYuTiEBJYyiix499aRoiEjMTJaQ2sELawxJ9rXWwQRZ8Y
 JVasesMEkmATMJToeguREBHoZJSY1v2RHcRhFpjHJLHo4SF2kCphgTiJfbdPsoDYLAKqEhPO
 doOt4BWwlTjVs5IdYoW8xOoNB5hBbE4BO4n78/+A1QsJFEo8uvqWZQIj3wJGhlWMIqmlxbnp
 ucWGesWJucWleel6yfm5mxiB8bDt2M/NOxgvbQw+xCjAwajEw9thtDNOiDWxrLgy9xCjBAez
 kghvSyZQiDclsbIqtSg/vqg0J7X4EKMp0FETmaVEk/OBsZpXEm9oamhuYWlobmxubGahJM7b
 IXAwRkggPbEkNTs1tSC1CKaPiYNTqoExKVyJq2+iTq/X3opdUxnSD5S+mPa0uFd41iFWe/az
 wjfX5lxh7lz8Sfz4u+cBmXctz9q1RJz6eL63MHLF4TmLeUwd1JyeXLHek8awwqZm81H3m99a
 3E9uW3Hp9Y3gnpU1XC056lf9Nr5oVtz3jfPWW2mtP7t6v3dUs3gniiRVHV4q3WA177KnEktx
 RqKhFnNRcSIAh/KeoJ0CAAA=
X-CMS-MailID: 20200512090108eucas1p10a3571be3f60265daea3b3f1469b5e82
X-Msg-Generator: CA
X-RootMTR: 20200512090108eucas1p10a3571be3f60265daea3b3f1469b5e82
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090108eucas1p10a3571be3f60265daea3b3f1469b5e82
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090108eucas1p10a3571be3f60265daea3b3f1469b5e82@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020116_191032_90A0D7EE 
X-CRM114-Status: GOOD (  13.82  )
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
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

struct sg_table is a common structure used for describing a memory
buffer. It consists of a scatterlist with memory pages and DMA addresses
(sgl entry), as well as the number of scatterlist entries: CPU pages
(orig_nents entry) and DMA mapped pages (nents entry).

It turned out that it was a common mistake to misuse nents and orig_nents
entries, calling the scatterlist iterating functions with a wrong number
of the entries.

To avoid such issues, lets introduce a common wrappers operating directly
on the struct sg_table objects, which take care of the proper use of
the nents and orig_nents entries.

While touching this, lets clarify some ambiguities in the comments for
the existing for_each helpers.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 include/linux/scatterlist.h | 50 ++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 47 insertions(+), 3 deletions(-)

diff --git a/include/linux/scatterlist.h b/include/linux/scatterlist.h
index 6eec50f..4f922af 100644
--- a/include/linux/scatterlist.h
+++ b/include/linux/scatterlist.h
@@ -151,6 +151,20 @@ static inline void sg_set_buf(struct scatterlist *sg, const void *buf,
 #define for_each_sg(sglist, sg, nr, __i)	\
 	for (__i = 0, sg = (sglist); __i < (nr); __i++, sg = sg_next(sg))
 
+/*
+ * Loop over each sg element in the given sg_table object.
+ */
+#define for_each_sgtable_sg(sgt, sg, i)		\
+	for_each_sg(sgt->sgl, sg, sgt->orig_nents, i)
+
+/*
+ * Loop over each sg element in the given *DMA mapped* sg_table object.
+ * Please use sg_dma_address(sg) and sg_dma_len(sg) to extract DMA addresses
+ * of the each element.
+ */
+#define for_each_sgtable_dma_sg(sgt, sg, i)	\
+	for_each_sg(sgt->sgl, sg, sgt->nents, i)
+
 /**
  * sg_chain - Chain two sglists together
  * @prv:	First scatterlist
@@ -401,9 +415,10 @@ static inline struct page *sg_page_iter_page(struct sg_page_iter *piter)
  * @sglist:	sglist to iterate over
  * @piter:	page iterator to hold current page, sg, sg_pgoffset
  * @nents:	maximum number of sg entries to iterate over
- * @pgoffset:	starting page offset
+ * @pgoffset:	starting page offset (in pages)
  *
  * Callers may use sg_page_iter_page() to get each page pointer.
+ * In each loop it operates on PAGE_SIZE unit.
  */
 #define for_each_sg_page(sglist, piter, nents, pgoffset)		   \
 	for (__sg_page_iter_start((piter), (sglist), (nents), (pgoffset)); \
@@ -412,18 +427,47 @@ static inline struct page *sg_page_iter_page(struct sg_page_iter *piter)
 /**
  * for_each_sg_dma_page - iterate over the pages of the given sg list
  * @sglist:	sglist to iterate over
- * @dma_iter:	page iterator to hold current page
+ * @dma_iter:	DMA page iterator to hold current page
  * @dma_nents:	maximum number of sg entries to iterate over, this is the value
  *              returned from dma_map_sg
- * @pgoffset:	starting page offset
+ * @pgoffset:	starting page offset (in pages)
  *
  * Callers may use sg_page_iter_dma_address() to get each page's DMA address.
+ * In each loop it operates on PAGE_SIZE unit.
  */
 #define for_each_sg_dma_page(sglist, dma_iter, dma_nents, pgoffset)            \
 	for (__sg_page_iter_start(&(dma_iter)->base, sglist, dma_nents,        \
 				  pgoffset);                                   \
 	     __sg_page_iter_dma_next(dma_iter);)
 
+/**
+ * for_each_sgtable_page - iterate over all pages in the sg_table object
+ * @sgt:	sg_table object to iterate over
+ * @piter:	page iterator to hold current page
+ * @pgoffset:	starting page offset (in pages)
+ *
+ * Iterates over the all memory pages in the buffer described by
+ * a scatterlist stored in the given sg_table object.
+ * See also for_each_sg_page(). In each loop it operates on PAGE_SIZE unit.
+ */
+#define for_each_sgtable_page(sgt, piter, pgoffset)	\
+	for_each_sg_page(sgt->sgl, piter, sgt->orig_nents, pgoffset)
+
+/**
+ * for_each_sgtable_dma_page - iterate over the DMA mapped sg_table object
+ * @sgt:	sg_table object to iterate over
+ * @dma_iter:	DMA page iterator to hold current page
+ * @pgoffset:	starting page offset (in pages)
+ *
+ * Iterates over the all DMA mapped pages in the buffer described by
+ * a scatterlist stored in the given sg_table object.
+ * See also for_each_sg_dma_page(). In each loop it operates on PAGE_SIZE
+ * unit.
+ */
+#define for_each_sgtable_dma_page(sgt, dma_iter, pgoffset)	\
+	for_each_sg_dma_page(sgt->sgl, dma_iter, sgt->nents, pgoffset)
+
+
 /*
  * Mapping sg iterator
  *
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
