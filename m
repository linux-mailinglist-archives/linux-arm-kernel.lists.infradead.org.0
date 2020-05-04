Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CC41C3AB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FflJ4OMy+1Ga/NuswPA7TPZuHSbMIdtdmppXgOSczSk=; b=W+t6VoDueTtlnuMF2wCck4O257
	V7QuVHAjtixbHZ5bIOKM4hCaQetxXUd20+n/9Ixi4MOiHY4KSX2e6dp1r/AGo1kM3oqkoohex569u
	n35sKzUQcVrrFzi59fl+cFxKbTFKIj6/6s8YUssrzXCSGZX7UqaTJoDyMrBGReGdRD7GCKZX/uP03
	Y7EU6QIspRi6EPBC1PnGJRfPqFPgYFKyfsLFsANjJegDQ8d2mWDoZHWup9BK4qy/PsISH40sOgNek
	fytUe+3FkJkxDxtgYN6AGL0wCP9BqoLK2UBe2UX5s3eAiR2Agaa4itbh/n42tSs9EuVPgHe1edUy0
	cXR0TKIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaie-0005ok-Qt; Mon, 04 May 2020 13:01:12 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVac7-0002l6-C9
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:32 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125425euoutp01081f08e3da7e99dcd7c99f1e4918c340~L1G63hgGM2809928099euoutp01X
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125425euoutp01081f08e3da7e99dcd7c99f1e4918c340~L1G63hgGM2809928099euoutp01X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596865;
 bh=nL6s2qmhXVj8ojZqxdlRyULSFgOINvfslVF6oVYkjYo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BI3SS6WgGwHE6z6hb8H2c3rnXkhkt7VLJTt0LS0pGoNowiCWFFnG2ql+QKz4aVIG0
 HeTD9424iZz7JBQObzI4cdFbEUO2GRQqSFI65na/9OWtkwAJX4vgpVhtiq+hPkHN5J
 o3ApZuT2se/h5vL6bEMG2R1V/FFj6Z6e1KB/wh+8=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125425eucas1p18f24436a94facbca4aad0c4973fc3bb1~L1G6Z0i_m1058810588eucas1p1l;
 Mon,  4 May 2020 12:54:25 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 93.E2.60679.08010BE5; Mon,  4
 May 2020 13:54:25 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125424eucas1p2a654aa95d553e10422dcb5125f960a49~L1G6KQaoN0599205992eucas1p2E;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125424eusmtrp1f37551067796b55c518d1f9421bfaf01~L1G6JlmPT2497724977eusmtrp1i;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-bd-5eb01080de42
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 2F.06.07950.08010BE5; Mon,  4
 May 2020 13:54:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125424eusmtip27a30e28a337f5989f1eb1fc1e87c59b2~L1G5df-nc0241002410eusmtip2K;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 21/21] staging: ion: fix sg_table nents vs. orig_nents
 misuse
Date: Mon,  4 May 2020 14:53:59 +0200
Message-Id: <20200504125359.5678-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUwTYRDNt9tul6aFpZDwiURiIxI0nPpjBc8Ek03wh1GJN1plAwRaSJc7
 MSKoaAHlMIpIEJWEoyAITUXkBimXUKUQRG4kBiKHoQIlSm1ZxH9v3rw3bzIZHBW1cu3xEFkk
 LZdJwsQYn6NuM/S63iIqAjyMFQiZ1tOBkG+yy7mkUZ2BkrXdazxS92sBI4uVHxAyv8GHLK5d
 RUi9bgIhK6cGuGRfTS5GlrWO8MimxW9csnNkiXfUkirNKwXUaH0Lh6pbzudQwwO1GPV2eZxL
 jaVoEKqq4Cb1dX0KpbIGCwH1/ksCRi3U92PUA1UJoJYqd5wUXuAfDKTDQqJpufvhq/zgZ9N+
 EWrnWOP4RyQB5O5UAByHxH7YmHJCAfi4iCgCULcywGULPYDzhgIeWywBOJpeaupYbDiSNYub
 qkIAc5KVYMuirP+EmlUY4QkVcwrMjG2JOwC2pwnMIpRIQqHWmALMDRviFGzXT2+IOIQTNDxe
 2TALiUNQVTaCsHGOUFnRiJqXtTDxT9OczXMgMcSDkxnsHEj4wg7V9831bOCsRsVjsQPsykrl
 sIYkACd6ynhskQpgX2L2ptsHDvesYeYElHCB5TXuLH0M5mn7EfZKlnBwztpMoyaYqX6CsrQQ
 3rsrYtW7YY7m9VZsk/YzymIKZk9WbZ6xxXSt+WkkHTjm/A/LB6AE2NFRjDSIZrxkdIwbI5Ey
 UbIgt+vh0kpg+q2udY2+GtT8vtYMCByIBcJzS+UBIq4kmomTNgOIo2JbYfVtEyUMlMTF0/Lw
 K/KoMJppBttxjthOuO/lzGURESSJpENpOoKW/+siuIV9AmDKt+1djcc98tz+nBW86B0bcg01
 WN3Pj1s1yEfHUH9Hv4uR74yZz2P1ZxyGHef8yg60Wbmo3PWFw+fnH3rLThe/uhG46xHmHTUT
 4D1SqF5AYqyVTOLEkRSvnlin4/wfFr4l2llF2kKDi65bM4421fl3zhVXTxYlrQkv/XSwFjiJ
 OUywxHMPKmckfwFtt0aZVwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xe7oNAhviDCZN0LPoPXeSyWLjjPWs
 Fv+3TWS22HPmF7vFla/v2SxWrj7KZLFgv7XFyj0/mCy+XHnIZLHp8TVWi8u75rBZrD1yl93i
 4IcnrBan7n5md+DzWDNvDaPHvX2HWTz2flvA4nHn2h42j+3fHrB63O8+zuSxeUm9x+1/j5k9
 Jt9Yzuix+2YDm8f7fVfZPPq2rGL0+LxJLoA3Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRS
 z9DYPNbKyFRJ384mJTUnsyy1SN8uQS9j9lPvgm3qFf8fnGVqYJyj2MXIySEhYCLRfvwDaxcj
 F4eQwFJGiRPPzzFBJGQkTk5rYIWwhSX+XOtigyj6xCjR178SrIhNwFCi6y1EQkSgk1FiWvdH
 dhCHWaCbWeL6omlA7RwcwgIBEru2S4I0sAioSvyc9p0ZxOYVsJXYsvYu1DZ5idUbDjCDlHMC
 xWf2qoOEhQTyJe4+/ccygZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMAo2nbs55Yd
 jF3vgg8xCnAwKvHwbvi6Pk6INbGsuDL3EKMEB7OSCO+OFqAQb0piZVVqUX58UWlOavEhRlOg
 myYyS4km5wMjPK8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA+Ol
 zzJNPgUTDhRLFj/fem7xsZO/7iqurD0vylZdeUA/YJkCxza7V/2fc59kOprOdJa87mpb+5Vx
 ton7sopHNRN8XKbc23PAKKfLNdj26wsRnvXvwtg3u51289exT/7JWH1k0n82mdQdQVp/GBev
 2DzJ4cdC9S6mJ4VLp/2J/HKHX6Q53FNmlYsSS3FGoqEWc1FxIgAuM6M4uAIAAA==
X-CMS-MailID: 20200504125424eucas1p2a654aa95d553e10422dcb5125f960a49
X-Msg-Generator: CA
X-RootMTR: 20200504125424eucas1p2a654aa95d553e10422dcb5125f960a49
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125424eucas1p2a654aa95d553e10422dcb5125f960a49
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125424eucas1p2a654aa95d553e10422dcb5125f960a49@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055427_607649_0F92C630 
X-CRM114-Status: GOOD (  15.44  )
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
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sumit Semwal <sumit.semwal@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
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
 drivers/staging/android/ion/ion.c             | 17 +++++++++--------
 drivers/staging/android/ion/ion_heap.c        |  6 +++---
 drivers/staging/android/ion/ion_system_heap.c |  2 +-
 3 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index 38b51ea..b14170c 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -147,14 +147,14 @@ static struct sg_table *dup_sg_table(struct sg_table *table)
 	if (!new_table)
 		return ERR_PTR(-ENOMEM);
 
-	ret = sg_alloc_table(new_table, table->nents, GFP_KERNEL);
+	ret = sg_alloc_table(new_table, table->orig_nents, GFP_KERNEL);
 	if (ret) {
 		kfree(new_table);
 		return ERR_PTR(-ENOMEM);
 	}
 
 	new_sg = new_table->sgl;
-	for_each_sg(table->sgl, sg, table->nents, i) {
+	for_each_sg(table->sgl, sg, table->orig_nents, i) {
 		memcpy(new_sg, sg, sizeof(*sg));
 		new_sg->dma_address = 0;
 		new_sg = sg_next(new_sg);
@@ -227,8 +227,9 @@ static struct sg_table *ion_map_dma_buf(struct dma_buf_attachment *attachment,
 
 	table = a->table;
 
-	if (!dma_map_sg(attachment->dev, table->sgl, table->nents,
-			direction))
+	table->nents = dma_map_sg(attachment->dev, table->sgl,
+				  table->orig_nents, direction);
+	if (!table->nents)
 		return ERR_PTR(-ENOMEM);
 
 	return table;
@@ -238,7 +239,7 @@ static void ion_unmap_dma_buf(struct dma_buf_attachment *attachment,
 			      struct sg_table *table,
 			      enum dma_data_direction direction)
 {
-	dma_unmap_sg(attachment->dev, table->sgl, table->nents, direction);
+	dma_unmap_sg(attachment->dev, table->sgl, table->orig_nents, direction);
 }
 
 static int ion_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
@@ -297,7 +298,7 @@ static int ion_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
 
 	mutex_lock(&buffer->lock);
 	list_for_each_entry(a, &buffer->attachments, list) {
-		dma_sync_sg_for_cpu(a->dev, a->table->sgl, a->table->nents,
+		dma_sync_sg_for_cpu(a->dev, a->table->sgl, a->table->orig_nents,
 				    direction);
 	}
 
@@ -320,8 +321,8 @@ static int ion_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
 
 	mutex_lock(&buffer->lock);
 	list_for_each_entry(a, &buffer->attachments, list) {
-		dma_sync_sg_for_device(a->dev, a->table->sgl, a->table->nents,
-				       direction);
+		dma_sync_sg_for_device(a->dev, a->table->sgl,
+				       a->table->orig_nents, direction);
 	}
 	mutex_unlock(&buffer->lock);
 
diff --git a/drivers/staging/android/ion/ion_heap.c b/drivers/staging/android/ion/ion_heap.c
index 0755b11..f2f7ca7 100644
--- a/drivers/staging/android/ion/ion_heap.c
+++ b/drivers/staging/android/ion/ion_heap.c
@@ -38,7 +38,7 @@ void *ion_heap_map_kernel(struct ion_heap *heap,
 	else
 		pgprot = pgprot_writecombine(PAGE_KERNEL);
 
-	for_each_sg(table->sgl, sg, table->nents, i) {
+	for_each_sg(table->sgl, sg, table->orig_nents, i) {
 		int npages_this_entry = PAGE_ALIGN(sg->length) / PAGE_SIZE;
 		struct page *page = sg_page(sg);
 
@@ -71,7 +71,7 @@ int ion_heap_map_user(struct ion_heap *heap, struct ion_buffer *buffer,
 	int i;
 	int ret;
 
-	for_each_sg(table->sgl, sg, table->nents, i) {
+	for_each_sg(table->sgl, sg, table->orig_nents, i) {
 		struct page *page = sg_page(sg);
 		unsigned long remainder = vma->vm_end - addr;
 		unsigned long len = sg->length;
@@ -142,7 +142,7 @@ int ion_heap_buffer_zero(struct ion_buffer *buffer)
 	else
 		pgprot = pgprot_writecombine(PAGE_KERNEL);
 
-	return ion_heap_sglist_zero(table->sgl, table->nents, pgprot);
+	return ion_heap_sglist_zero(table->sgl, table->orig_nents, pgprot);
 }
 
 int ion_heap_pages_zero(struct page *page, size_t size, pgprot_t pgprot)
diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
index b83a1d1..34f6e81 100644
--- a/drivers/staging/android/ion/ion_system_heap.c
+++ b/drivers/staging/android/ion/ion_system_heap.c
@@ -162,7 +162,7 @@ static void ion_system_heap_free(struct ion_buffer *buffer)
 	if (!(buffer->private_flags & ION_PRIV_FLAG_SHRINKER_FREE))
 		ion_heap_buffer_zero(buffer);
 
-	for_each_sg(table->sgl, sg, table->nents, i)
+	for_each_sg(table->sgl, sg, table->orig_nents, i)
 		free_buffer_page(sys_heap, buffer, sg_page(sg));
 	sg_free_table(table);
 	kfree(table);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
