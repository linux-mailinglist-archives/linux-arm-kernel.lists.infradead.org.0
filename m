Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027DB1C3AB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nu0htKOzBUyoMOVx3q6e4d9DBlOg197m6KpD2pJ/hqg=; b=U6161A4/CHwtpU2hNWMcCdQS1g
	G0qeG3/hiX5iDI2FfNGLuG54ye6VYcnqTV5csGTXIvtTV+vp19oF7boFcpB5E5EWpVFarRFcV+gTi
	W3GA0cKXhALVGvuAYggp7z79j0STIUhdehkKBIzthRVjC3oGv1N/UBi9x/LGWqsBuChhjqko+OAth
	1wPg69K03AVxvIPgLStNvlnrcRgdQECS4pAXRZ8MMN7EkTeCxnSVurEPoZvtbyk6bgyeh0wvuYtXd
	9qREuUEevvEcGJ4n+sPdlPWBQn3vJixxmBbxa6V1iraiIII48HXHYARaj9HOMfEUwe9uxKiOVEFJ1
	EFkyhrcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaiN-0004me-FN; Mon, 04 May 2020 13:00:55 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVac5-0002iT-0l
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125423euoutp02066da1a18a6c28b4e1fc1939515e3be4~L1G42-QGh1960119601euoutp02C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125423euoutp02066da1a18a6c28b4e1fc1939515e3be4~L1G42-QGh1960119601euoutp02C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596863;
 bh=Q3uTnE0pCgvHZKaralFzdEAhk4lnCxC2sn9hvLGfyXI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=u8jdqki4WvlAP22BOY0JysA2WwnbFY7k30IQuiD8e7Pg3nRmFZlVZDJCKGR1pPVVA
 9Uf3RD0XZ0F0COg1ni+rkpZRnmEEK6Sf0mlG0k7euQhkAnQKDhGd6UQAn2w5LFM++y
 4CZ0k/kI7ucNo5f23Eho17C8lgyY42aK5XKPqbz4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125423eucas1p2ebcf5bcb67d9e5a919928ba62f968d29~L1G4f_XI52250922509eucas1p29;
 Mon,  4 May 2020 12:54:23 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 7C.12.60698.E7010BE5; Mon,  4
 May 2020 13:54:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0~L1G4HMxes1833418334eucas1p2H;
 Mon,  4 May 2020 12:54:22 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125422eusmtrp23b7055eba07f8554b4f4ee1eae479a56~L1G4GhHu82826928269eusmtrp2b;
 Mon,  4 May 2020 12:54:22 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-61-5eb0107e72b4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3F.69.08375.E7010BE5; Mon,  4
 May 2020 13:54:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125421eusmtip25b5c1e2266031611705f4c5013c31891~L1G3WvG4w0241002410eusmtip2J;
 Mon,  4 May 2020 12:54:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 18/21] xen: gntdev: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:56 +0200
Message-Id: <20200504125359.5678-18-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTYRSF/WfrUCkOhcQ/uECqYjRhExNHcE14mEQfUBPXWCw6AQIt2qFu
 D4pQFatVFAkIRBqiQQsKlLaixqUFLQpUQDRQRSGgphqiWChRtNhxXN6+e+65OTc3l0SlT/Ew
 MkOVw6pViiwZIcasj785o45Q9fJYj2UZrXc+QeiG0jqc7io5jtFT1vMo3TP+maCv1zxCaMOD
 RLqibwk91jOI0Kahlzj9/E4FQd9o6RfRti/DOF1zM4WeMBcha2YwtZdrAXPPa8AYk/EUwdzy
 DuDM29MOhGm8cpR55RtCmaLeasA0f+nBmLt9uQQz+s6FMWfNRsDUmV9gjMc0Nzlou3jFHjYr
 Yz+rjlm1S5x+rnzd3kvBB0vdVXgumJToAElCail0WLfpQAAppa4B+PG1RgfEfh4D8HTFW0wo
 PAC6Cl0I7+IHLF3FiNCoBrBTX439GzEOngC8i6DioG5ER/AcSh0HsFUfyJtQqgmFlcVuEd8I
 oTbAk/lXf5swagEct53CeZZQK2Fbf+OfuHBYU/8Q5XcN8OuX9AsF2S2CA/WEwEmw0duJChwC
 PzrMIoFnw6nblb83hVQ+gIPOGyKhOAPg87xSILgS4Wvnd4IPQKlFsO5OjCCvhdqvhbhwoyDY
 OxLMy6gfL1hLUEGWwIITUsEdCcscN//F2jq7/6zDQOtwh0i4TzOA2u4CtBCEl/0PMwBgBDNZ
 DadMY7l4FXsgmlMoOY0qLXp3ttIE/B/W5nOMN4H7P1LtgCKBLFCy1VMnl+KK/dwhpR1AEpWF
 Spq0fkmyR3HoMKvOTlFrsljODmaRmGymJL7KvVNKpSly2EyW3cuq/3YRMiAsF6x3f46iSrg5
 F5Nt9nK5ZoMvMXkeYt8RSU6LxV+stgwvj5i0G8zeUUlB6m4T1Yo86/ikqUcSOHTqYlh2HqVJ
 +Pk+KSnKlxNBOMvm9q7cqLWLpzcEbrK+KjZY5PKhCeXmVGX7mjxXrdZ1rGP+G2b9h30tmYqR
 lC33BxrG2vtDZRiXrohbjKo5xS+3tDAHXQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLIsWRmVeSWpSXmKPExsVy+t/xe7p1AhviDDa1K1r0njvJZLFxxnpW
 i4vTW1ks/m+byGxx5et7NouVq48yWSzYb20x56aRxZcrD5ksNj2+xmpxedccNou1R+6yWxz8
 8ITVYvW6eIvvWyYzOfB7rJm3htFj77cFLB6bVnWyeWz/9oDV4373cSaPzUvqPW7/e8zsMfnG
 ckaPwx+usHjsvtnA5vHx6S0Wj74tqxg91m+5yuLxeZNcAF+Unk1RfmlJqkJGfnGJrVK0oYWR
 nqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXkb/bO+CmYIVM14uYm1g/M3bxcjJISFg
 IrH14lSmLkYuDiGBpYwSK2b/ZINIyEicnNbACmELS/y51sUGUfSJUWLr0y1MIAk2AUOJrrcQ
 CRGBTkaJad0f2UESzAKHmCW2XpcEsYUF/CU+/JoG1sAioCrx9WAn2FReAVuJ03c3M0FskJdY
 veEAcxcjBwcnUHxmrzpIWEggX+Lu038sExj5FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/d
 xAiMqm3Hfm7ewXhpY/AhRgEORiUe3ojP6+OEWBPLiitzDzFKcDArifDuaAEK8aYkVlalFuXH
 F5XmpBYfYjQFumkis5Rocj4w4vNK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQW
 wfQxcXBKNTAG5aWJznJNDp2+8r+Hwtx1YuGPTJsOn7bas4vV/Q7j7W+P17545ymbtJXhlLtq
 f8XKkHsxey8IGdx+c3yVVzTPQQeR7c2rTKp7bXv5vY4a2/7Ufh4ovvvKo3mrfnr3Oomnhwtf
 Lubxj9DU4VwlVSnVzPprml+15pHvPyu+zTL7kHJ5QevZoqNKLMUZiYZazEXFiQChzi19wAIA
 AA==
X-CMS-MailID: 20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0
X-Msg-Generator: CA
X-RootMTR: 20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055425_244868_91C5A24E 
X-CRM114-Status: GOOD (  15.06  )
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
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
 drivers/xen/gntdev-dmabuf.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/xen/gntdev-dmabuf.c b/drivers/xen/gntdev-dmabuf.c
index 75d3bb9..ed749fd 100644
--- a/drivers/xen/gntdev-dmabuf.c
+++ b/drivers/xen/gntdev-dmabuf.c
@@ -248,7 +248,7 @@ static void dmabuf_exp_ops_detach(struct dma_buf *dma_buf,
 		if (sgt) {
 			if (gntdev_dmabuf_attach->dir != DMA_NONE)
 				dma_unmap_sg_attrs(attach->dev, sgt->sgl,
-						   sgt->nents,
+						   sgt->orig_nents,
 						   gntdev_dmabuf_attach->dir,
 						   DMA_ATTR_SKIP_CPU_SYNC);
 			sg_free_table(sgt);
@@ -288,8 +288,10 @@ static void dmabuf_exp_ops_detach(struct dma_buf *dma_buf,
 	sgt = dmabuf_pages_to_sgt(gntdev_dmabuf->pages,
 				  gntdev_dmabuf->nr_pages);
 	if (!IS_ERR(sgt)) {
-		if (!dma_map_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
-				      DMA_ATTR_SKIP_CPU_SYNC)) {
+		sgt->nents = dma_map_sg_attrs(attach->dev, sgt->sgl,
+					      sgt->orig_nents, dir,
+					      DMA_ATTR_SKIP_CPU_SYNC);
+		if (!sgt->nents) {
 			sg_free_table(sgt);
 			kfree(sgt);
 			sgt = ERR_PTR(-ENOMEM);
@@ -625,7 +627,7 @@ static struct gntdev_dmabuf *dmabuf_imp_alloc_storage(int count)
 
 	/* Now convert sgt to array of pages and check for page validity. */
 	i = 0;
-	for_each_sg_page(sgt->sgl, &sg_iter, sgt->nents, 0) {
+	for_each_sg_page(sgt->sgl, &sg_iter, sgt->orig_nents, 0) {
 		struct page *page = sg_page_iter_page(&sg_iter);
 		/*
 		 * Check if page is valid: this can happen if we are given
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
