Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDEB2006BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1mooTXUq2h3f4BH3Zv529fwrNkztrR3AXwrh0T0bB8g=; b=hNx4LXUnNAbKcuAPWod6LFSNQ1
	yDJ4tv0MXOREtwKhxynTFKMR/z1SabY0mx0SDxDBWnSBl+Qro4F3+hFrVmXqcH4jPuHjfdCE60z89
	ETPgG4PATXIgXpApY9CuCaT/vg29EpgxeW0zVtmPzcCw+nkwT7xHi77U4tyy+oq0YqbSc/g9Zvksm
	dkreizvRT8jipOprBX7xJ7e7gqKmRTx+hrimTf23dY9tQ+svKhXy1vMJ2k3jnuJWO5eS1wGEU01xp
	ckrboeTnVygjm2KbqXLZ7i+y9bY/XneqHzsd9uoZ8QapM4goKE+atW1elLB2gXbRAzx+gdHb7cPp1
	NB0FUcyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEPQ-0005xu-0W; Fri, 19 Jun 2020 10:38:08 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOG-00055E-Vx
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:00 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103654euoutp022a0b47f527d0074916c5fa234305fd88~Z65-V1Xmx2179221792euoutp02k
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:36:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103654euoutp022a0b47f527d0074916c5fa234305fd88~Z65-V1Xmx2179221792euoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563015;
 bh=qccxWTjzkr/n5lJ6lPqV8N/GUB3LeW6ERdX+ZlPAsZQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ddhTb3tKY+FXmlQIUOn8Z+r933G5vIx9AR0253o+GFjltSgin6nKIbsS5jXMmSThk
 2MMNpcQGwVqhobaxogkgc1O81cRQE1i7ztzHJU9gVOdGmri0MuwjzkhJX8Jdhz474/
 MgyHRlfuWXCx1PywKweuHPm1gmX71h+ZyUlEaXQw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103654eucas1p2b1e82aeed90dc505b8674182cf4e6b2c~Z65_iKbzW3081430814eucas1p2e;
 Fri, 19 Jun 2020 10:36:54 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 7B.8D.05997.5459CEE5; Fri, 19
 Jun 2020 11:36:54 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa~Z65_KR6Ud3082330823eucas1p2U;
 Fri, 19 Jun 2020 10:36:53 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103653eusmtrp1e102b21ed115fafca9de4e940308d7f2~Z65_JbSAS0959609596eusmtrp1p;
 Fri, 19 Jun 2020 10:36:53 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-cc-5eec954560c6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1E.FA.06017.5459CEE5; Fri, 19
 Jun 2020 11:36:53 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103652eusmtip2208c0c7093c1b30d8d3abf29423a32dd~Z659cWTey0246802468eusmtip2d;
 Fri, 19 Jun 2020 10:36:52 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 01/36] drm: prime: add common helper to check scatterlist
 contiguity
Date: Fri, 19 Jun 2020 12:36:01 +0200
Message-Id: <20200619103636.11974-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeUhTYQDve9eew8nzKe3LonBQkaF2GDwx7aDkkRWJURRorXxp5JbuqWUH
 WpumS6PltaJ0RWTN1DxaolhtlMtGo1JSy+hYh6Z2zQ4rNV8v67/f+f0+Pj4SpW/hfuROdSqn
 USuTFIQUs7QOOwMjiwfi5pVoAVPgbEOYWmMNzoxZDCjT8eUDwVyqvI0wphthzFDHC4Spcz3C
 mfam0wRTdeuphDn76SrG5ORdwBnrx1c40zBgwJd6sZfLLgO25asJY+vMeQR77etznC1ri2af
 HbUjbP35TPbJqAtlC7sqANvcnUWwxxrMgK137GfdddPXyTZLF8dzSTvTOU1wxFZp4rOiJiS5
 cepeR+kHJAvcnqwHHiSkQqBudATogZSkqYsAPno7IhHJEIDdT7owkbgBdHTeRCYqr78dR0Wj
 AsCS3uvEv8qLs7m4kCKo+VA/qCcE7EtlA3inwFMIoZQJhcPuHCAYPtQmqK9x/Slg1Ex4pi1r
 fJwkZVQ4rLorF9dmwMorN1EBe1ARsF9nxYVzIPVYAnM+t0rE0ApoHPtOiNgHvrM3/NWnQUdh
 PiYWtOO3c1ZJRJIPYPthIxBTYbDH+YMQllFqDqxpChblZfCB7R4uyJDygl2D3oKMjsMTllJU
 lGUwN4cW07PgKXv1v1nr/YeoiFlYWGzExQcyADh4xEAcBzNO/R8zAWAGci6NVyVw/AI1tyeI
 V6r4NHVC0Pbdqjow/rcco/ahRtD0a5sNUCRQeMp61/fH0bgync9Q2QAkUYWvbPk9Rxwti1dm
 7OM0u7do0pI43gamkphCLlt4ri+WphKUqdwujkvmNBMuQnr4ZYHkTp9YT0YXsdKdjdcHVIOi
 PELuX5v6M9DqquTo8pUeXcXoarVEao1hQumF/t3NG74/jJ7S0v7qvC7fsgTjqLmrzJne8p7M
 KOOi8sUxKdr0l2b3sUlglmHdoU06kz1KtfEk7FuTopE6D6xtJ4tCG2lt+JvZIe/XHizbEdkT
 osD4ROX8AFTDK38DH1qgtlcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xe7quU9/EGRx+p2zRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQy7k/ZxVSwQ7ri9PT3TA2MR8W6GDk5JARMJJ5+n8DcxcjF
 ISSwlFFi7ew1rBAJGYmT0xqgbGGJP9e62CCKPjFK7JxynQkkwSZgKNH1FiIhItDJKDGt+yM7
 iMMssIJZ4tW+uSwgVcIC4RJ98xsZQWwWAVWJuScbgIo4OHgFbCXWnhKH2CAvsXrDAWYQm1PA
 TuJ1y0GwzUJAJcsXvGeewMi3gJFhFaNIamlxbnpusZFecWJucWleul5yfu4mRmAUbTv2c8sO
 xq53wYcYBTgYlXh4X4S8jhNiTSwrrsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZT
 oJsmMkuJJucDIzyvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOj
 lEG7RnH0r5br5meqU2ee+yl7Ovz24beN+46sc11zfe5aRs8Q3WfPyjPP6lzNVlFhfjbxdyyr
 5zbTmkcTnyye7uMy077Qo9JE974Ke/CyH2xz8zxLN22aq7+o5b7EAne+j+uM9u9/2nq/5OIv
 3hfFTjXxhQXqPLIaugpuu+6sc7hWrrTvbF2NEktxRqKhFnNRcSIAzwAV7rgCAAA=
X-CMS-MailID: 20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa
X-Msg-Generator: CA
X-RootMTR: 20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033657_339188_4751D354 
X-CRM114-Status: GOOD (  19.10  )
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

It is a common operation done by DRM drivers to check the contiguity
of the DMA-mapped buffer described by a scatterlist in the
sg_table object. Let's add a common helper for this operation.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/drm_gem_cma_helper.c | 23 +++------------------
 drivers/gpu/drm/drm_prime.c          | 31 ++++++++++++++++++++++++++++
 include/drm/drm_prime.h              |  2 ++
 3 files changed, 36 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/drm_gem_cma_helper.c
index 06a5b9ee1fe0..41566a15dabd 100644
--- a/drivers/gpu/drm/drm_gem_cma_helper.c
+++ b/drivers/gpu/drm/drm_gem_cma_helper.c
@@ -471,26 +471,9 @@ drm_gem_cma_prime_import_sg_table(struct drm_device *dev,
 {
 	struct drm_gem_cma_object *cma_obj;
 
-	if (sgt->nents != 1) {
-		/* check if the entries in the sg_table are contiguous */
-		dma_addr_t next_addr = sg_dma_address(sgt->sgl);
-		struct scatterlist *s;
-		unsigned int i;
-
-		for_each_sg(sgt->sgl, s, sgt->nents, i) {
-			/*
-			 * sg_dma_address(s) is only valid for entries
-			 * that have sg_dma_len(s) != 0
-			 */
-			if (!sg_dma_len(s))
-				continue;
-
-			if (sg_dma_address(s) != next_addr)
-				return ERR_PTR(-EINVAL);
-
-			next_addr = sg_dma_address(s) + sg_dma_len(s);
-		}
-	}
+	/* check if the entries in the sg_table are contiguous */
+	if (drm_prime_get_contiguous_size(sgt) < attach->dmabuf->size)
+		return ERR_PTR(-EINVAL);
 
 	/* Create a CMA GEM buffer. */
 	cma_obj = __drm_gem_cma_create(dev, attach->dmabuf->size);
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index bbfc713bfdc3..226cd6ad3985 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -825,6 +825,37 @@ struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_page
 }
 EXPORT_SYMBOL(drm_prime_pages_to_sg);
 
+/**
+ * drm_prime_get_contiguous_size - returns the contiguous size of the buffer
+ * @sgt: sg_table describing the buffer to check
+ *
+ * This helper calculates the contiguous size in the DMA address space
+ * of the the buffer described by the provided sg_table.
+ *
+ * This is useful for implementing
+ * &drm_gem_object_funcs.gem_prime_import_sg_table.
+ */
+unsigned long drm_prime_get_contiguous_size(struct sg_table *sgt)
+{
+	dma_addr_t expected = sg_dma_address(sgt->sgl);
+	struct scatterlist *sg;
+	unsigned long size = 0;
+	int i;
+
+	for_each_sgtable_dma_sg(sgt, sg, i) {
+		unsigned int len = sg_dma_len(sg);
+
+		if (!len)
+			break;
+		if (sg_dma_address(sg) != expected)
+			break;
+		expected += len;
+		size += len;
+	}
+	return size;
+}
+EXPORT_SYMBOL(drm_prime_get_contiguous_size);
+
 /**
  * drm_gem_prime_export - helper library implementation of the export callback
  * @obj: GEM object to export
diff --git a/include/drm/drm_prime.h b/include/drm/drm_prime.h
index 9af7422b44cf..47ef11614627 100644
--- a/include/drm/drm_prime.h
+++ b/include/drm/drm_prime.h
@@ -92,6 +92,8 @@ struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_page
 struct dma_buf *drm_gem_prime_export(struct drm_gem_object *obj,
 				     int flags);
 
+unsigned long drm_prime_get_contiguous_size(struct sg_table *sgt);
+
 /* helper functions for importing */
 struct drm_gem_object *drm_gem_prime_import_dev(struct drm_device *dev,
 						struct dma_buf *dma_buf,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
