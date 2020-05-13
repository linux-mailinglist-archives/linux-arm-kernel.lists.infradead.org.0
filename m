Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FE91D1617
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AmBw/MEcZCtp9XX1O4+KcMLWOL4pHzdm8rTeISCh8Ys=; b=DipccZmI3Gjah5ZbQnytm4vu1A
	JE6qSmbqeAPMYStAu8T+D6Qdn3/vH76mLkl1pnr51i2rDPB7ml5Y43J8S9hHlVHew5jIeOMMPOn11
	UxC3ojeic4ATtDhNxGbvpheLp7JT4i5kGjqahKwOg6A8Arw4MNAeVA3JKemNAnrH6Uj1tXnN6MYdn
	MIEuonWZB04IqJvPvpi7WY1LgTWSW3zRdcEkSplrczBNLh7+rCtTPYZhFxrrPUysq3Ps1iI0Mf0+u
	1YUSxRH6hf+w3HgX2trHwQ1UIs1mnq5r8VP6SZ9LPWMMexQju53kBBAlGLTP2dfp/s0Fu9PPc1OlJ
	pOjVh2AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrf8-0005vp-Qx; Wed, 13 May 2020 13:43:06 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVe-0001dY-9D
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:27 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133316euoutp01bcb64db2dc394b399eed11b763dda993~OmcakAhgW2146121461euoutp01O
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133316euoutp01bcb64db2dc394b399eed11b763dda993~OmcakAhgW2146121461euoutp01O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376796;
 bh=MxXtwPFeqegif4HlAx0ieDJD2dsgeJX9eJCBPth0NkY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y1n7fP50ehQ8gglTJgayG3zB1qVFMVJoidcy977NtHvdvvCUp2UALdAJNK0jQPEG6
 T2jXlMzkZtKT+AihyZeft/pnvECPP02R+oV0vQSI3HQc2H2SN+vz+Y6F5zdRfrBK/A
 U+2YyCqAzYHy1YHPGt8I2ttJF5d9KQXRiVoSEJ/Y=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133316eucas1p14f8338b43b0ca57538811a5d90a84071~OmcaVfN4L2633026330eucas1p1V;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 2F.D8.60698.C17FBBE5; Wed, 13
 May 2020 14:33:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef~OmcaFLccM0359403594eucas1p2m;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133316eusmtrp1137b1bc87b13093a87f9bf46333dbe6c~OmcaEjEe81050610506eusmtrp1V;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-ed-5ebbf71c62d2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 75.47.07950.C17FBBE5; Wed, 13
 May 2020 14:33:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133315eusmtip11bd7d51f6d64aee3d21ad3edfd6dd66a~OmcZYTFoT0693306933eusmtip1G;
 Wed, 13 May 2020 13:33:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 27/38] xen: gntdev: fix common struct sg_table related
 issues
Date: Wed, 13 May 2020 15:32:34 +0200
Message-Id: <20200513133245.6408-27-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+3bO2Y7i7DgNP8wUFxZG3iUPWFYgcgiMKCowMlcevM0pm5eM
 ILGM3LxUGoqI2YW8rukaGpr3a1iiOXXLiS4vmWRq3qWsHY/Wf7/3eb6H5+XlwxFBO2aHR0ri
 aalEJBZyzdGazo1eV/u1+hCPe4bDZGbvew5Zna/CyP68NJT8U/MIIbUr81yyrKKDQxY3+ZGF
 ei9yWWvkkOqJIYwcqCvkksr2UR7ZsjCJkWuaHM4pS6qyqBJQDavFKFW7Oo5RY4ouDvXm5R1q
 ZGsCoXJ0JYBqW9CiVL0+hUstTn1GqSxNOaBUmkGUWlI7nOMHmx8Po8WRibTU3T/UPCJbPsWL
 67e92VltxFJAubUcmOGQ8IGLZYMcOTDHBUQpgJv6up1hGcDswWaMHZYA1Dc2cXcjuVm/AWuU
 AKgwzgDG2I5U1QcyzCU8oXxOvh2wIdIA7M60YAIIoUDgE2U5xhjWxHmomPq4HUYJZ7ipM6AM
 84kTsONrJWDbHGFFVTPCsJlJnzU0oaw+xIOD88EsB8CC9Bc8lq3hbJdmh+1hT04GyhRD4i6A
 xl4ljx0yABxIzd9p8IOG3k3TqrhpPReoqnNn5dNw/el3wMiQsIS6OStGRkz4uCYPYWU+fHBf
 wL4+BAu6Xv+rben7hLBMwaKsdS57rDYA+z/UgofAseB/WTEA5cCWTpDFhNMybwmd5CYTxcgS
 JOFuN2Jj1MD0t3q2ulbegsZf11sBgQOhBX98uD5EgIkSZckxrQDiiNCGf1ZlkvhhouRbtDT2
 mjRBTMtawX4cFdryvZ9/uyogwkXxdDRNx9HSXZeDm9mlgINWrrj9eNrKZfWyh1E145874lIZ
 dkFBREmIV8mwBL190X5dOb53ci4p+5JYLTz68wudmhE17Ru6bzQgejpdb/HjnT+tD3w2aiE+
 aXBwskzUAkuOT1/fMfeyVc2ZCTS7cWzzQNB0qa57bdK5zGmroi8odCOgwderf1geskd5RYjK
 IkSeRxCpTPQXYGbUzFcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xu7oy33fHGZzrFLPoPXeSyWLjjPWs
 Fhent7JY/N82kdniytf3bBYrVx9lsliw39pizk0jiy9XHjJZbHp8jdXi8q45bBZrj9xltzj4
 4Qmrxfctk5kc+DzWzFvD6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuhx+MMVFo/d
 NxvYPD4+vcXi0bdlFaPH+i1XWTw+b5IL4I3SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQz
 NDaPtTIyVdK3s0lJzcksSy3St0vQy+jvespecFG84tjGh6wNjKuEuxg5OSQETCSm9P1l7GLk
 4hASWMoo8e/sNCaIhIzEyWkNrBC2sMSfa11sEEWfGCXuX7sJlmATMJToeguREBHoZJSY1v2R
 HcRhFpjMLPFs9XWwUcICARJT9p9jBrFZBFQlft24wwJi8wrYShx9voYRYoW8xOoNB8BqOIHi
 r+7sB6sREsiX2Lt4H9sERr4FjAyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAiNp27GfW3Yw
 dr0LPsQowMGoxMNrcWt3nBBrYllxZe4hRgkOZiURXr/1QCHelMTKqtSi/Pii0pzU4kOMpkBH
 TWSWEk3OB0Z5Xkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxivl
 QdUBSx+8kvJblRct/6Hu3CSZ+Kn/Vvfd3HRj+o3tP47J7LvdPtm2uzhBe5HR6XiLXSWWeTdl
 +M/PtLE/yvXAZpW0vJzPLrO5bbZ3uZamT7Pf0vMtz5Gx9dc61VeambJ6S3KT+JI+Xlt86KGh
 7OJ0Di+N9W7ik3LbHqz6t29169qLykWKbkosxRmJhlrMRcWJABDblfe6AgAA
X-CMS-MailID: 20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef
X-Msg-Generator: CA
X-RootMTR: 20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063318_502976_B817BFF8 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
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
