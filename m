Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739D37E7F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aba2NAgeVNioybm8MhYTWKkZWCHuESm2O+1x45fij7Q=; b=dvgD3/WGtYKkfl
	ECvz/j1uVsDO0XXplEGb6iD9m4PSbEFZxMFRSI4f77DxxheFNZl7vgmSu94e4d4ubsDQcS7mc6+F5
	Z3peEdlx3UaLkrHiQCTZlaw/PkELyOmGdnhzIKuNls6mwoIHazFE1RyYZWLaPcUBod0SddivQI5s6
	3gpepLCIhfePdQmUN30AWsIrDTvDK3k9tfQPFZ0DG+c+gHw79aQjSqzZ9oSucOAEIviTa5w5Pil5H
	LEPAAloxF07IbaxEcXCHzmxrl/44dM1r9xBgJsm2xeu+aDIveWqjzCmHLAy7p0rGO6mAG6757A9DX
	xLcebSa3TmLuJEnqzJUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htN8e-0008NK-Re; Fri, 02 Aug 2019 02:17:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htN7t-0007qm-JO; Fri, 02 Aug 2019 02:17:03 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so35235375pgj.7;
 Thu, 01 Aug 2019 19:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qVOEtC+FJUT8up8TCOoMm5YvZPMSmdk5e2B42ED2yyM=;
 b=ukzb5bY0dD46KGXV7CH7yz04BRNR061FKYR9hNz7rbtA4m3PeuF0KKl8eqWWySHPYx
 qHTCJ+DrmOmw/+xikP17jl7twdln0u0SFZpk1B09q/bQ6IEd1+91SkWVISKDmwJ5R6GK
 4WWyhsPvTSwbTlkNgQnhHFgrn3+x9+K64k+sI36/9jpXOmtjH/jmUA/Sj4SYmn10jDnE
 r7TYPK4sSlnEUUDApSOXFQUX5rQcwET4H+VN6Xe+iN1m2f84OQcRvPADB5Aml4BXycR/
 T5z1ogXjUH/b2fTUcxAlW+xo8tStjNqQXkZJM1EXcCk/zT8JQ66XBoqwU6t+J0iFbLQP
 +KbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qVOEtC+FJUT8up8TCOoMm5YvZPMSmdk5e2B42ED2yyM=;
 b=aL1vl1AdLultNvmZAnwl6vJYjujwkcMUyfKp1OYA+7e+zIM1QLKgUc24ot8F4d1cai
 6ZmyPW4r98TWKIyOjdkLgpYXlFVB68OUXH1o/zHuUSD+5x/82XPy9Q4eqg2uO42bJNcP
 BbnnCBeuoDYh6tYrnBD8KUEsC/5gkcRwhLit6ZU1LV9IGSDcGaAEEkrykh668lR0+yaQ
 cqNAOfKttnpx5m5KK2NNAIlldmySLrULHuJ74i2sPyAJ5iYy7a5oieyn1P/v2z2fKanr
 XrfPkeCeyk+bS62508G4G6JXd+plHPxUBGTG7rHqPw+myeOBDFVT9+JvGqHSNQMmYPPM
 E0IQ==
X-Gm-Message-State: APjAAAW0eA0pPNVl4I1/924QwYybWXpLY0FQFEo/+hcUR7R4m+hE/Swk
 yp+aOflNrHinSUT7tECpzQ8=
X-Google-Smtp-Source: APXvYqw2S5JdGupbqvZdIIqjMukPwNC3gLPKrMG21trP7y7Ol04k+QnkewfeqIGmjfDk06lFiTCaHg==
X-Received: by 2002:aa7:90d4:: with SMTP id k20mr12633478pfk.78.1564712219893; 
 Thu, 01 Aug 2019 19:16:59 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 p187sm118200292pfg.89.2019.08.01.19.16.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:16:59 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 01/34] mm/gup: add make_dirty arg to
 put_user_pages_dirty_lock()
Date: Thu,  1 Aug 2019 19:16:20 -0700
Message-Id: <20190802021653.4882-2-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802021653.4882-1-jhubbard@nvidia.com>
References: <20190802021653.4882-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_191701_641064_45B074B0 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@lst.de>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Hubbard <jhubbard@nvidia.com>

Provide more capable variation of put_user_pages_dirty_lock(),
and delete put_user_pages_dirty(). This is based on the
following:

1. Lots of call sites become simpler if a bool is passed
into put_user_page*(), instead of making the call site
choose which put_user_page*() variant to call.

2. Christoph Hellwig's observation that set_page_dirty_lock()
is usually correct, and set_page_dirty() is usually a
bug, or at least questionable, within a put_user_page*()
calling chain.

This leads to the following API choices:

    * put_user_pages_dirty_lock(page, npages, make_dirty)

    * There is no put_user_pages_dirty(). You have to
      hand code that, in the rare case that it's
      required.

Cc: Matthew Wilcox <willy@infradead.org>
Cc: Jan Kara <jack@suse.cz>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/infiniband/core/umem.c             |   5 +-
 drivers/infiniband/hw/hfi1/user_pages.c    |   5 +-
 drivers/infiniband/hw/qib/qib_user_pages.c |   5 +-
 drivers/infiniband/hw/usnic/usnic_uiom.c   |   5 +-
 drivers/infiniband/sw/siw/siw_mem.c        |  10 +-
 include/linux/mm.h                         |   5 +-
 mm/gup.c                                   | 115 +++++++++------------
 7 files changed, 58 insertions(+), 92 deletions(-)

diff --git a/drivers/infiniband/core/umem.c b/drivers/infiniband/core/umem.c
index 08da840ed7ee..965cf9dea71a 100644
--- a/drivers/infiniband/core/umem.c
+++ b/drivers/infiniband/core/umem.c
@@ -54,10 +54,7 @@ static void __ib_umem_release(struct ib_device *dev, struct ib_umem *umem, int d
 
 	for_each_sg_page(umem->sg_head.sgl, &sg_iter, umem->sg_nents, 0) {
 		page = sg_page_iter_page(&sg_iter);
-		if (umem->writable && dirty)
-			put_user_pages_dirty_lock(&page, 1);
-		else
-			put_user_page(page);
+		put_user_pages_dirty_lock(&page, 1, umem->writable && dirty);
 	}
 
 	sg_free_table(&umem->sg_head);
diff --git a/drivers/infiniband/hw/hfi1/user_pages.c b/drivers/infiniband/hw/hfi1/user_pages.c
index b89a9b9aef7a..469acb961fbd 100644
--- a/drivers/infiniband/hw/hfi1/user_pages.c
+++ b/drivers/infiniband/hw/hfi1/user_pages.c
@@ -118,10 +118,7 @@ int hfi1_acquire_user_pages(struct mm_struct *mm, unsigned long vaddr, size_t np
 void hfi1_release_user_pages(struct mm_struct *mm, struct page **p,
 			     size_t npages, bool dirty)
 {
-	if (dirty)
-		put_user_pages_dirty_lock(p, npages);
-	else
-		put_user_pages(p, npages);
+	put_user_pages_dirty_lock(p, npages, dirty);
 
 	if (mm) { /* during close after signal, mm can be NULL */
 		atomic64_sub(npages, &mm->pinned_vm);
diff --git a/drivers/infiniband/hw/qib/qib_user_pages.c b/drivers/infiniband/hw/qib/qib_user_pages.c
index bfbfbb7e0ff4..6bf764e41891 100644
--- a/drivers/infiniband/hw/qib/qib_user_pages.c
+++ b/drivers/infiniband/hw/qib/qib_user_pages.c
@@ -40,10 +40,7 @@
 static void __qib_release_user_pages(struct page **p, size_t num_pages,
 				     int dirty)
 {
-	if (dirty)
-		put_user_pages_dirty_lock(p, num_pages);
-	else
-		put_user_pages(p, num_pages);
+	put_user_pages_dirty_lock(p, num_pages, dirty);
 }
 
 /**
diff --git a/drivers/infiniband/hw/usnic/usnic_uiom.c b/drivers/infiniband/hw/usnic/usnic_uiom.c
index 0b0237d41613..62e6ffa9ad78 100644
--- a/drivers/infiniband/hw/usnic/usnic_uiom.c
+++ b/drivers/infiniband/hw/usnic/usnic_uiom.c
@@ -75,10 +75,7 @@ static void usnic_uiom_put_pages(struct list_head *chunk_list, int dirty)
 		for_each_sg(chunk->page_list, sg, chunk->nents, i) {
 			page = sg_page(sg);
 			pa = sg_phys(sg);
-			if (dirty)
-				put_user_pages_dirty_lock(&page, 1);
-			else
-				put_user_page(page);
+			put_user_pages_dirty_lock(&page, 1, dirty);
 			usnic_dbg("pa: %pa\n", &pa);
 		}
 		kfree(chunk);
diff --git a/drivers/infiniband/sw/siw/siw_mem.c b/drivers/infiniband/sw/siw/siw_mem.c
index 67171c82b0c4..ab83a9cec562 100644
--- a/drivers/infiniband/sw/siw/siw_mem.c
+++ b/drivers/infiniband/sw/siw/siw_mem.c
@@ -63,15 +63,7 @@ struct siw_mem *siw_mem_id2obj(struct siw_device *sdev, int stag_index)
 static void siw_free_plist(struct siw_page_chunk *chunk, int num_pages,
 			   bool dirty)
 {
-	struct page **p = chunk->plist;
-
-	while (num_pages--) {
-		if (!PageDirty(*p) && dirty)
-			put_user_pages_dirty_lock(p, 1);
-		else
-			put_user_page(*p);
-		p++;
-	}
+	put_user_pages_dirty_lock(chunk->plist, num_pages, dirty);
 }
 
 void siw_umem_release(struct siw_umem *umem, bool dirty)
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 0334ca97c584..9759b6a24420 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -1057,8 +1057,9 @@ static inline void put_user_page(struct page *page)
 	put_page(page);
 }
 
-void put_user_pages_dirty(struct page **pages, unsigned long npages);
-void put_user_pages_dirty_lock(struct page **pages, unsigned long npages);
+void put_user_pages_dirty_lock(struct page **pages, unsigned long npages,
+			       bool make_dirty);
+
 void put_user_pages(struct page **pages, unsigned long npages);
 
 #if defined(CONFIG_SPARSEMEM) && !defined(CONFIG_SPARSEMEM_VMEMMAP)
diff --git a/mm/gup.c b/mm/gup.c
index 98f13ab37bac..7fefd7ab02c4 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -29,85 +29,70 @@ struct follow_page_context {
 	unsigned int page_mask;
 };
 
-typedef int (*set_dirty_func_t)(struct page *page);
-
-static void __put_user_pages_dirty(struct page **pages,
-				   unsigned long npages,
-				   set_dirty_func_t sdf)
-{
-	unsigned long index;
-
-	for (index = 0; index < npages; index++) {
-		struct page *page = compound_head(pages[index]);
-
-		/*
-		 * Checking PageDirty at this point may race with
-		 * clear_page_dirty_for_io(), but that's OK. Two key cases:
-		 *
-		 * 1) This code sees the page as already dirty, so it skips
-		 * the call to sdf(). That could happen because
-		 * clear_page_dirty_for_io() called page_mkclean(),
-		 * followed by set_page_dirty(). However, now the page is
-		 * going to get written back, which meets the original
-		 * intention of setting it dirty, so all is well:
-		 * clear_page_dirty_for_io() goes on to call
-		 * TestClearPageDirty(), and write the page back.
-		 *
-		 * 2) This code sees the page as clean, so it calls sdf().
-		 * The page stays dirty, despite being written back, so it
-		 * gets written back again in the next writeback cycle.
-		 * This is harmless.
-		 */
-		if (!PageDirty(page))
-			sdf(page);
-
-		put_user_page(page);
-	}
-}
-
 /**
- * put_user_pages_dirty() - release and dirty an array of gup-pinned pages
- * @pages:  array of pages to be marked dirty and released.
+ * put_user_pages_dirty_lock() - release and optionally dirty gup-pinned pages
+ * @pages:  array of pages to be maybe marked dirty, and definitely released.
  * @npages: number of pages in the @pages array.
+ * @make_dirty: whether to mark the pages dirty
  *
  * "gup-pinned page" refers to a page that has had one of the get_user_pages()
  * variants called on that page.
  *
  * For each page in the @pages array, make that page (or its head page, if a
- * compound page) dirty, if it was previously listed as clean. Then, release
- * the page using put_user_page().
+ * compound page) dirty, if @make_dirty is true, and if the page was previously
+ * listed as clean. In any case, releases all pages using put_user_page(),
+ * possibly via put_user_pages(), for the non-dirty case.
  *
  * Please see the put_user_page() documentation for details.
  *
- * set_page_dirty(), which does not lock the page, is used here.
- * Therefore, it is the caller's responsibility to ensure that this is
- * safe. If not, then put_user_pages_dirty_lock() should be called instead.
+ * set_page_dirty_lock() is used internally. If instead, set_page_dirty() is
+ * required, then the caller should a) verify that this is really correct,
+ * because _lock() is usually required, and b) hand code it:
+ * set_page_dirty_lock(), put_user_page().
  *
  */
-void put_user_pages_dirty(struct page **pages, unsigned long npages)
+void put_user_pages_dirty_lock(struct page **pages, unsigned long npages,
+			       bool make_dirty)
 {
-	__put_user_pages_dirty(pages, npages, set_page_dirty);
-}
-EXPORT_SYMBOL(put_user_pages_dirty);
+	unsigned long index;
 
-/**
- * put_user_pages_dirty_lock() - release and dirty an array of gup-pinned pages
- * @pages:  array of pages to be marked dirty and released.
- * @npages: number of pages in the @pages array.
- *
- * For each page in the @pages array, make that page (or its head page, if a
- * compound page) dirty, if it was previously listed as clean. Then, release
- * the page using put_user_page().
- *
- * Please see the put_user_page() documentation for details.
- *
- * This is just like put_user_pages_dirty(), except that it invokes
- * set_page_dirty_lock(), instead of set_page_dirty().
- *
- */
-void put_user_pages_dirty_lock(struct page **pages, unsigned long npages)
-{
-	__put_user_pages_dirty(pages, npages, set_page_dirty_lock);
+	/*
+	 * TODO: this can be optimized for huge pages: if a series of pages is
+	 * physically contiguous and part of the same compound page, then a
+	 * single operation to the head page should suffice.
+	 */
+
+	if (!make_dirty) {
+		put_user_pages(pages, npages);
+		return;
+	}
+
+	for (index = 0; index < npages; index++) {
+		struct page *page = compound_head(pages[index]);
+		/*
+		 * Checking PageDirty at this point may race with
+		 * clear_page_dirty_for_io(), but that's OK. Two key
+		 * cases:
+		 *
+		 * 1) This code sees the page as already dirty, so it
+		 * skips the call to set_page_dirty(). That could happen
+		 * because clear_page_dirty_for_io() called
+		 * page_mkclean(), followed by set_page_dirty().
+		 * However, now the page is going to get written back,
+		 * which meets the original intention of setting it
+		 * dirty, so all is well: clear_page_dirty_for_io() goes
+		 * on to call TestClearPageDirty(), and write the page
+		 * back.
+		 *
+		 * 2) This code sees the page as clean, so it calls
+		 * set_page_dirty(). The page stays dirty, despite being
+		 * written back, so it gets written back again in the
+		 * next writeback cycle. This is harmless.
+		 */
+		if (!PageDirty(page))
+			set_page_dirty_lock(page);
+		put_user_page(page);
+	}
 }
 EXPORT_SYMBOL(put_user_pages_dirty_lock);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
