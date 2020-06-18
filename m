Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9651FF816
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pPALWsmtYU95kS29JW/FwXea59Jr/YKeGgNhQO2IYSQ=; b=OcX4vGoic/x0om06T3G6ivpTB5
	ous1Jq1yBXk1Yyb3s0oftn78T1BCmru5nOrGqjp90Eg3Vm+Skyk0gXhL3J+zl68KrQjSoWmO71mQp
	Y3W0+eq4n6qSPAHyZDBUOu+r8JXdwTbIIjuK2kBf3TKpDV8Ih3bw02Tl6maX0medu6kERZwq7axxv
	oRHVzSI04HY4W6AG31HiKXHDoF8x5QG3FmAZvQpdnk3zd2FBzaRmt7a08Cruw2R21iffD0B4lB/Lb
	TIg8rexpXwBOR0QnSyA9mV9s5ylucbALFFBN8RZ9i2pxVkhJ/992QmbBVFW+VtrX6zmDbWQGVpkFc
	71wRsIDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwq7-0001ke-Py; Thu, 18 Jun 2020 15:52:31 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwec-0004QO-KW
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:40 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154037euoutp01fb224ee03dc0ecf550e1bb420b02f88c~ZrZ3xvzPf1845318453euoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154037euoutp01fb224ee03dc0ecf550e1bb420b02f88c~ZrZ3xvzPf1845318453euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494837;
 bh=uHaHrVj9uEjHIe4StK4tJYVPskphxegmYKiq5klM8TA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hD7WacUMzhbtAo/IxhsXRxve2LOqp/6uM+0oZP8iFNhlydYW8/Y5oY8M9Ad4o6DUl
 iQhTDeKQ/8jv7ZwJxTSH7QmzQHH44d2bndi1rALEj/auBQke45jIZ3YvkbXNOedOya
 6qmr5ORz2UOBEBOz/ETRUbOqcChnSD7bB+NFcFoo=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154036eucas1p12b1b5bb16a87b93f8c608072f0299566~ZrZ3iWPVL1755717557eucas1p1X;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FA.1F.61286.4FA8BEE5; Thu, 18
 Jun 2020 16:40:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f~ZrZ25Z76N2945829458eucas1p20;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154036eusmtrp1db46a96eb0cf1f0c63cf7e0222937e54~ZrZ24q8NZ2230622306eusmtrp1M;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-ef-5eeb8af45f00
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 61.F9.07950.4FA8BEE5; Thu, 18
 Jun 2020 16:40:36 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154035eusmtip14307191b27018d21a029dcd22091c1ee~ZrZ2NS2vX0742307423eusmtip1X;
 Thu, 18 Jun 2020 15:40:35 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 31/36] misc: fastrpc: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:52 +0200
Message-Id: <20200618153956.29558-32-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTcRTut7u7zeHqNgV/qGQMKkp8ocIlY5kU3T8CjcIoSJt5UUmnbL7/
 yNlUbL4nodk0S0vT+Wj5fmvqEnHkozJKTFymTtFyPnJpbbtq/33nO993vsPhsBBuO2rLChNG
 kyKhIJzHYNObBn9rnPQyXYCratMZz9IM0fAd+SATf11Yh+J/m/IQfGJ9hYFLy+oY+KvqARpe
 2u2F6ydmaLhq9iOKj7cpGHhN/xQT713Vot4cQlmiBIRhWw6Izo1SOtG88Q0luouVTGI6Q00j
 3pQnEV92ZxEif7ICEO2fJQwiu6EKEGuqY36Wt9jngsnwsFhS5MK/ww5NG5lGoyaw+E+bU3QJ
 WOXIgAULYh5Q+V1KM2EuVgmgznBZBthGrAfw3VI7ShVrADbXPkX2HWvKMiblqACwI+3IgSMj
 XUk3NRiYG5QtyxgmbI2lGkdlWZpECLZIgyWKh6ipYYVdhymNWWYRHTsBtf1S81QOxoejrRso
 leYAq+t7zMkWRn5YnWpeCWIaJtzp+LMnugiTX8r3sBVcVDcwKWwPh/Mz6ZRBCuCMpoZJFZkA
 jj8oBJTKC37VbBvXYBn3Ow3r2lwo+gJ89lYJTDTEDsPJ5aMmGjFCeVMBQtEcmJ7GpdQnYZG6
 9iC29/3Y3rUI2Dk/D6gL5QEoaV9CcoFD0f+wUgCqgA0ZI44IIcVuQjLOWSyIEMcIQ5zvRkao
 gPGlhnfVv1rA+lhQH8BYgGfJ8b6hC+CiglhxQkQfgCyEZ83xGRkO4HKCBQmJpCgyUBQTTor7
 gB2LzrPhuD9fuM3FQgTR5D2SjCJF+10ay8JWAvCzPvbhfj8eY8T9ueRcbbnkkgIcnwxy9awT
 yt0HPHJ19T8N+pSem1cVC/5aML7FH2I7kfN8/ayj59buSu/OWteLU9dWmnPinxRoD533dpy8
 0uhn51sTNPMoaXw0x8r3Q3O20MuQF2DHKEycq5Sw/Z0CV5LjCoptDF1prS3OuTy6OFTgdgYR
 iQX/APrcvXROAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7pful7HGSy6x2zRe+4kk8XfScfY
 LTbOWM9q8X/bRGaLK1/fs1k0L17PZrFy9VEmiwX7rS2+XHnIZLHp8TVWi8u75rBZrD1yl93i
 4IcnrA68HmvmrWH0+P1rEqPH3m8LWDy2f3vA6rF/7hp2j/vdx5k8Ni+p97j97zGzx+Qbyxk9
 dt9sYPPo27KK0ePzJrkAnig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07
 m5TUnMyy1CJ9uwS9jLaz91kLrghUXP9+l6WB8QNvFyMnh4SAicTnNYvZuxi5OIQEljJKzN16
 iAUiISNxcloDK4QtLPHnWhcbRNEnRonzCycxgSTYBAwlut5CJEQEOhklpnV/BBvFLPCJSeLI
 tdNsIFXCAkESa3vXMYLYLAKqEk+ONLOD2LwCdhIXd36DWiEvsXrDAWYQmxMofvp4K1hcSMBW
 4vmHNrYJjHwLGBlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbNtmM/t+xg7HoXfIhRgINR
 iYf3RcjrOCHWxLLiytxDjBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYfYjQFOmois5Rocj4w
 pvNK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTDufPqN/YNwekJH
 v/a9D02M4ZNydLbNmXxMW1v02vUI8dJpXxwFbXllmTtct34/v3/vmfPXb8uVaa/zuuZueWnK
 yfmfvlbzsM65yrf0Kq/EHFnTH/f3HlTl+LWx+0rcf81bf601VTM3V03p2HZ5RdUDoYe2FTL3
 siftNfj/+Kj+y3URXy/e4+ksVGIpzkg01GIuKk4EAEZmncmxAgAA
X-CMS-MailID: 20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f
X-Msg-Generator: CA
X-RootMTR: 20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084038_817649_D3C9E198 
X-CRM114-Status: GOOD (  13.62  )
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
 drivers/misc/fastrpc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 7939c55daceb..9d6867749316 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -518,7 +518,7 @@ fastrpc_map_dma_buf(struct dma_buf_attachment *attachment,
 
 	table = &a->sgt;
 
-	if (!dma_map_sg(attachment->dev, table->sgl, table->nents, dir))
+	if (!dma_map_sgtable(attachment->dev, table, dir, 0))
 		return ERR_PTR(-ENOMEM);
 
 	return table;
@@ -528,7 +528,7 @@ static void fastrpc_unmap_dma_buf(struct dma_buf_attachment *attach,
 				  struct sg_table *table,
 				  enum dma_data_direction dir)
 {
-	dma_unmap_sg(attach->dev, table->sgl, table->nents, dir);
+	dma_unmap_sgtable(attach->dev, table, dir, 0);
 }
 
 static void fastrpc_release(struct dma_buf *dmabuf)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
