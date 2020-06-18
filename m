Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704671FF79E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D5cUu9EGvXp5QnQlnBoX0tuSvM6r4sI9CdnwuGXw1/o=; b=J5j2/E5To4qywsN19xMbV8hVPY
	vk3ZkNZCiR2ouH8Pk8/GSHuJkZa3zSQ3ZT8B3K/amblX286KJ4pqZHvackTeooCI2EgTgMTZKkvHZ
	GEoVH+YwxdXBg8wmtqbeEZbUY8+o7YAygQ1g0Z3DpB5b+K9kWSg2ue75LWQTVMc7e17GdBmsCoJ3o
	5dtthVh44b+HE1wwAB9epiVkBf2h/VGMQOLnO1iBSUnpyLw4kcQurc1z9J4cOvhfvhPrDYmQTDsLf
	FZBj79sefH7kyKnOl6HE9x6jsmF07oPJoLFqpB29bWFbG0ehtLM4vWmO9LWxceg2A5QLRI2Hs99mX
	TQAoKNOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwhl-0006kY-2G; Thu, 18 Jun 2020 15:43:53 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweO-00049Q-7D
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:28 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154016euoutp01409c03bab65dafdecc54223fab4b1cdd~ZrZkTgyBp1844818448euoutp01p
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154016euoutp01409c03bab65dafdecc54223fab4b1cdd~ZrZkTgyBp1844818448euoutp01p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494816;
 bh=KtcJ7mUCfO5coq+hG5Q2lEPwFhhsRvjofjL64dIr2yg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HJvgMEe++9OJvfsrFv3W8YHyUI+jUl2+VZRebnad+k+g/lL7meUVjXewvjx4kaRtd
 iugSwhZ415Na0Q3UCD/AEEjt5V+vLAk4fR1x5xZPvFXfwmG2Zwmv2hoeqAxXLO4m52
 Zom0ZMko7Lg+8S54c29UeG2i7tl2xE8HrbJ4Pmcg=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154015eucas1p2086f7bc0fc19e4b43be669a34c4aec8e~ZrZjyd5Jv2945829458eucas1p2h;
 Thu, 18 Jun 2020 15:40:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 3B.CE.60679.FDA8BEE5; Thu, 18
 Jun 2020 16:40:15 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1~ZrZjgd-gf2924929249eucas1p2-;
 Thu, 18 Jun 2020 15:40:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154015eusmtrp2bed1856be0855e9d4de0e8f555bc97c1~ZrZjfyct80399203992eusmtrp2Q;
 Thu, 18 Jun 2020 15:40:15 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-1a-5eeb8adfa1d1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A0.EE.08375.FDA8BEE5; Thu, 18
 Jun 2020 16:40:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154014eusmtip1a58607d1e016a1160c461a136f152a0f~ZrZi3UCgB0709107091eusmtip1o;
 Thu, 18 Jun 2020 15:40:14 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 02/36] drm: prime: use sgtable iterators in
 drm_prime_sg_to_page_addr_arrays()
Date: Thu, 18 Jun 2020 17:39:23 +0200
Message-Id: <20200618153956.29558-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURiFczsLA9IyFCIXFIhNJAqRxSUZREEMD/OgUYIvkIhWGJYIhbTs
 JopiCRRQkAeJabAQEC1LoaxSUEqqlTRS2QwCggQXEKUQlgQUlHYQ377zn/Pn3Py5BMLXYS5E
 vCiFEYuECQLcBm17vW48MiWbj/Q1FnhQRf19HKqpTIVRf9pKEGp41YRTz2pfcSjFywBqZXia
 Q6ln3mPUUKccp+p1H62oiqVWlMrNf4JR2sXPGNXyowQ7w6PryusA3b2mQGm1Mh+n29c+YXR5
 Xyg9VaDn0M1Vt+jxrRmELh2tAbTmQzZO32tRArrZcINeVrtd5EbYnIpmEuLTGLFP4FWbuJau
 bk6y0SFDPqvDssGEnQwQBCSPw44lngzYEHzyKYB5k3McVqwAaLz/HmXFMoAmpVlYWzZUOTkY
 a9QA2FE5iO6uSKXrlhRO+kHZTxluZkdSCuCbIltzCCEVCFxfzgVmw4GMgvIZk4VR8iAs/GW0
 MJc8Daun+xG2zh3WNvZY2JoMhAa91FINyTErONYq3wmFwEZDKc6yA/yub7FieT/88/wxh13I
 AXC6v96KFYUADt0pA2wqAE70b+DmeyDkYajq9GHHwVCq0iHsmXhw9Ke9eYxs44O2hztjLszL
 5bNpD/hI37Bbq303uPM0GjaoqnbOVQLgSIUCFAP3R//LFAAogROTKkmMZSRHRUy6t0SYKEkV
 xXpHJSWqwfbfMmzpVzpA5+9rvYAkgMCWO3tpPpKPCdMkmYm9ABKIwJF79q0hks+NFmZmMeKk
 K+LUBEbSC/YRqMCJe6xy7jKfjBWmMNcZJpkR/3M5hLVLNlDfxU76e2Xdc3YNCjRqwiNOCMLs
 Dt2vFjkmO4Uf0DYrN3jiAvqb9DSpdeEVt+8xed78shysGRietL09kBdo0mx15XvZp4849+S6
 yZtCFhY2+85d4PvqQpuH9m6uxmhinF9sOfmFfXUbdj2XUbfYm4/E+QT1cMej4vzLzwud0VYB
 KokT+nkiYonwL/2M9b1XAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7r3u17HGWzfLWLRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQytuzZy1RwXrhizosjrA2Md/i7GDk5JARMJNY3N7N2MXJx
 CAksZZRY/GcBE0RCRuLktAZWCFtY4s+1LjaIok+MEr1fG8ESbAKGEl1vIRIiAp2MEtO6P7KD
 OMwCK5glXu2bywJSJSyQKHHy1nZ2EJtFQFWi5/d5RhCbV8BWYunDc8wQK+QlVm84AGZzCthJ
 nD7eCrZBCKjm+Yc2tgmMfAsYGVYxiqSWFuem5xYb6hUn5haX5qXrJefnbmIExtG2Yz8372C8
 tDH4EKMAB6MSD++LkNdxQqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7EaAp0
 1ERmKdHkfGCM55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYLSf
 /sS7/UZJ29WKbBGTr27r/9ycyLD+E3v99CtNsy5eFNH/3lFqdFKiYLrsvtZFrHu3XuPR9XDb
 bXGqT/WKtPT2tS6K+67cXWm56XRwtmC85PNP4da9fv3s0xz2nug6LK65sLFcSZzr1Zwy9mKt
 448emoXPFd97vPCZb3vNLvM3f37dWzaBK0eJpTgj0VCLuag4EQBAyFVduQIAAA==
X-CMS-MailID: 20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1
X-Msg-Generator: CA
X-RootMTR: 20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084024_417554_62075032 
X-CRM114-Status: GOOD (  16.06  )
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
 drivers/gpu/drm/drm_prime.c | 47 +++++++++++--------------------------
 1 file changed, 14 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 0784969894c1..22953ee1e2ba 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -985,45 +985,26 @@ EXPORT_SYMBOL(drm_gem_prime_import);
 int drm_prime_sg_to_page_addr_arrays(struct sg_table *sgt, struct page **pages,
 				     dma_addr_t *addrs, int max_entries)
 {
-	unsigned count;
-	struct scatterlist *sg;
-	struct page *page;
-	u32 page_len, page_index;
-	dma_addr_t addr;
-	u32 dma_len, dma_index;
+	struct sg_dma_page_iter dma_iter;
+	struct sg_page_iter page_iter;
+	struct page **p = pages;
+	dma_addr_t *a = addrs;
 
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
