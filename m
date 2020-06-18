Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1E41FF7F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9T1h3ZIXK63/9VtNKPmdnN9Azdxu8UpSI3INX4aVAoo=; b=J/YgclneQFsCTQMhbhT5xtqgEH
	o4iSHPLDEn33oOIpkiOSIyzEch0ODuSvWtyp0TXpxCVKSQhOFT4El8eA0Dek1H2Iui08HkkpCLj1j
	I8Z7Plua1AK4/52ZgD0n1/zjgdBzWxRDikDg92d4mQlvsCJX0ZASvP221+a3coue3iWvExiCmYR+F
	WYyJJzzVlPBrrAB3lx0xsaxYdjMt36I/dGbtYwf9NskWZiC9EFbMMbqNXyL5M3W4Wfh6gXEdm2fXn
	5OC2t62vnRHgS/mrEVf4uUAJEG2cyfSJJUZPFw3vThv+IuH5h4EO5W1RSg1h3ulPUUlwfr+xFy4Ui
	WUpwoQaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwnf-0005kU-M6; Thu, 18 Jun 2020 15:49:59 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweW-0004KL-Rn
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154031euoutp02a1147160edf552f145923e16019464eb~ZrZyRJJrv1470214702euoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154031euoutp02a1147160edf552f145923e16019464eb~ZrZyRJJrv1470214702euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494831;
 bh=KttQx/p+NwMYqZeVMMA/mdxDyA5P7MIUmLy+qtaSi8Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Lnh2Yj0aezq1/W1iVdiR1C+hQ088kbAiiypTZR6RAAW0KeRr3BAZhVJk2YZOgaEfa
 PGgD9rtrZmWJhLTX7/wA95tx46FWJd/x7/U34b3/+8auNofwwc9feeZtixKVj2RL5z
 Sd4b8hWriNDNEP5X20SLpWl/eBot0F6KyQWwR8GQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154031eucas1p1b2a5f82d438657ef26f917087674bb21~ZrZyFvvYn2141221412eucas1p1B;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 06.DE.60679.EEA8BEE5; Thu, 18
 Jun 2020 16:40:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9~ZrZxrWGHz2945829458eucas1p2s;
 Thu, 18 Jun 2020 15:40:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154030eusmtrp100e1d8b9d488d275259cad6d740c1947~ZrZxqp9xw2230622306eusmtrp1D;
 Thu, 18 Jun 2020 15:40:30 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-43-5eeb8aee6e4f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 9C.E9.07950.EEA8BEE5; Thu, 18
 Jun 2020 16:40:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154029eusmtip14b193a12662698378a07245764c6f5b6~ZrZxCgcmM0742307423eusmtip1V;
 Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 24/36] xen: gntdev: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:45 +0200
Message-Id: <20200618153956.29558-25-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTcRTH++3eu13NyW2a/rBQGCUVpan746JhJkGXHhQRRKHm0osz3bTN
 Z5SKNpP5SBNRRM1e+JrPrWWKppbNR77NfKam0sPMt6GJtXnV/vuc7znfcw6HgyO8RswC95UE
 0VKJ0J/PNkQ171c7jv1STHsc/7DmSCa2N7PI8oxSjOxKl6PkX00KQvYuz7LJgqJGFpn7xonM
 GrAnl3rHWWTFRB9G9lRlscnidyMcsn5uEiN/q1NZLsaUMkcJqJqVXJR6tTKGUaPxWhaleh5J
 DW1MIFRqfx6g3s71olT1QBSbmp8aRKkkdSGgStUfUWqxwvIS97rhCW/a3zeElto6exqKytvm
 WYEtZmGz6mo0Cqh5CmCAQ0IAc3RWPfOIfADnP51RAEMdLwH4omsaZYJFADuepWPbjsUFOYdJ
 5AGo1MSxdizZ6prNXmzCDipmFGw9mxJyAJsSjfRFCBGPwLTiws1WJsRlGN8fC/SMEgdhSsrP
 TeYSzrA8qQ9lxlnBorI6RM8GOr1VK8f0jSAxyIFPhtIQpug0fPh6hs2wCfyhVXMY3g9bUxNQ
 xhAD4Hh7MYcJEgDsic4ATJUTHG5f07lx3X6HYWmVLSOfgi9nhoFehoQx7J/Zo5cRHT7SpCOM
 zIVxsVuHtIaZ2pKdsfWd3VurUbB2ugxjLpQCYMJoCZIMrDL/D8sFoBCY08EysQ8ts5fQoTYy
 oVgWLPGx8QoQVwDdc7VuaJcqQdX6zQZA4IBvxP12ZdqDhwlDZOHiBgBxhG/KdW1r9eBxvYXh
 d2hpwA1psD8tawD7cJRvznV4+t2dR/gIg2g/mg6kpdtZFm5gEQXonnXRwtTcOeerXyQe7uGP
 LxzYvRoa4TB3zy3S3lLsd79TSXiV1gyJBPIxpWPMsqV4UTqpOOvabBbR7fUn7S7+VbDqMnJN
 ELZwaKnukudF6/p5T5+uZteVW7NVvkfdKgv25kcn396VLFLVkCreyc/2ti2Z4mxVkyCjtvxB
 c/7IeT4qEwntjiBSmfAftXBXYVgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xu7rvul7HGWy/oGjRe+4kk8XGGetZ
 LS5Ob2Wx+L9tIrPFla/v2SxWrj7KZLFgv7XFnJtGFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWi+9bJjM58HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNHj8IcrLB67
 bzaweXx8eovFo2/LKkaP9Vuusnh83iQXwBulZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqln
 aGwea2VkqqRvZ5OSmpNZllqkb5egl7Hx7EemglNiFe+37GZpYNwi1MXIySEhYCLx+VMrexcj
 F4eQwFJGiTXH57JBJGQkTk5rYIWwhSX+XOtigyj6xChx8MxXsCI2AUOJrrcQCRGBTkaJad0f
 wUYxC0xmlni2+joTSJWwQIDE7devwGwWAVWJiRPfMILYvAJ2Ehv7rrFArJCXWL3hADOIzQkU
 P328FWy1kICtxPMPbWwTGPkWMDKsYhRJLS3OTc8tNtIrTswtLs1L10vOz93ECIykbcd+btnB
 2PUu+BCjAAejEg/vi5DXcUKsiWXFlbmHGCU4mJVEeJ3Ono4T4k1JrKxKLcqPLyrNSS0+xGgK
 dNREZinR5HxglOeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamCc
 KDxra4rLva77UmUNcVsEP6gwWTbl3PuU9mLf850yE7/2PTy6SMr/RfvpQ9o2h//t+umRdDja
 XCx4qk1fyAKFG0sOn8qZdTDnv9D1mLNPPySp+Gxdb7n4XNKXU1eW8Rznen3ih1f3Mq6sXWas
 LVNvzeJ3t/7AYFOgG77jUS+rokTIh6PdkRdWKrEUZyQaajEXFScCAHXemBa6AgAA
X-CMS-MailID: 20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9
X-Msg-Generator: CA
X-RootMTR: 20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084033_108394_46A60BB3 
X-CRM114-Status: GOOD (  15.20  )
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
Acked-by: Juergen Gross <jgross@suse.com> 
---
 drivers/xen/gntdev-dmabuf.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/xen/gntdev-dmabuf.c b/drivers/xen/gntdev-dmabuf.c
index 75d3bb948bf3..ba6cad871568 100644
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
 
@@ -288,8 +287,8 @@ dmabuf_exp_ops_map_dma_buf(struct dma_buf_attachment *attach,
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
@@ -625,7 +624,7 @@ dmabuf_imp_to_refs(struct gntdev_dmabuf_priv *priv, struct device *dev,
 
 	/* Now convert sgt to array of pages and check for page validity. */
 	i = 0;
-	for_each_sg_page(sgt->sgl, &sg_iter, sgt->nents, 0) {
+	for_each_sgtable_page(sgt, &sg_iter, 0) {
 		struct page *page = sg_page_iter_page(&sg_iter);
 		/*
 		 * Check if page is valid: this can happen if we are given
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
