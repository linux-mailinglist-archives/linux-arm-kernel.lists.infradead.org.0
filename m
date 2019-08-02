Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BF37E916
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01oKqaDSq/G9HH/F+GgM/TrBbdMFG3PRQm7AiP77YQg=; b=PIT0V/ISa06cFM
	7IS1OMFbjWzqqSn5b19WUELLdJILL5/SFeHXEjqK8OstlbkjIzlEvPRbNAQwWOM+eHZm8j9PtNrSh
	n/3iuD/5oEWdhp4J+/Dj+PW8cTaL6f89R1fVfTbdp5WZC7cfp+nxVlid6bBN3IkdryAR4P+Jy8HJ2
	PvvklMwKMBahYM2iHwa+40RPBXfiRCqeSaT3pnons9jBt/aOCHaorx8JReYsVTNuteJG7A1CAPA1I
	H48Y69cWqEIx9WhpSZxg8KSSVm6pkKNQpqLmYWR8vWO9yGSOC4+eEUwu0vH1wPvhutCt5eHNZTujN
	1F5veMGPZOtrVoX8VqlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNEV-000554-7f; Fri, 02 Aug 2019 02:23:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBE-0001oh-2V; Fri, 02 Aug 2019 02:20:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so24888310pgg.8;
 Thu, 01 Aug 2019 19:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qd17+I20JNTl38JpPt9ENs79+ajS7TX5o2e3ywFXns4=;
 b=gkgYcjKv8mviCpscfvidKdy0yp2exmwhbdFHg1VYLE3YGnNwT45rP9cYRgwxWvdSGD
 XzCmVpBd7+RlIjI+MEb+wWJpyo2f4ZmUYQSjUgDqWwLqeKRJRBA6AZnXsK08IyCyXhiy
 4dNgArxki6iOU/cWoHR8rdD6eQRfJHzRIm1i/ZNo3u5RbTwbDPqtUA6ksm0/Lv2IxLjK
 q70kCAhSPRAGOQENe2IrIBNCWn54pipkVfZgN+QCwPKsZgDTTDuP78ZHv5mKxve9ym1t
 pLsjPHA1rQycUPxkIzWtiiwiI/XQHl1n8MJ/ZwIZ8xTcRU1Mrrugy/JGwgBrkRXuy135
 NXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qd17+I20JNTl38JpPt9ENs79+ajS7TX5o2e3ywFXns4=;
 b=l9jiswh0l/96jdbHHqN/1wFtDNdWjm1L8ZHYdflLJhM//rbs38/O1WbJGWVsReAEYD
 4Nto3JWetwJOwzL5YhTCxRDj1kESJLxh2plHbAkXj4LgSI9PKPxvqKV4Pyl3nUb6XpO+
 Lni5vYQfC3McugMoZQU39q8fL+9i8ybp9qqOY3iXHnuhXFNjvTAXm7+dVGuAJHW60n49
 6VshAVedQbbZ/1f6ojviBCc7AzCrxH04r2Xo3jj8H0jnsUA/rbTEAqWPMxyOs1eUtcUp
 YHDLfqm57eqiKjM/wzJDFnJJsYOrL8qzoqXnJuKVlZ4kmbJHv/MXJrHFbByu0oUS6Qln
 y+IQ==
X-Gm-Message-State: APjAAAV76HbN5r3/VlOHDh6J56geJlqJersSLUlDDn+2NrJP8HRhU0DO
 4KAUZRTIgGkkrMrN7KP/IGU=
X-Google-Smtp-Source: APXvYqzcfAPxLmmHN9CIJXSofnjYAmirbplKZ2y79i+8ei53QCOaijMzmdrNExYuUwo7YKHbzyVulQ==
X-Received: by 2002:a63:4e60:: with SMTP id o32mr124066909pgl.68.1564712427200; 
 Thu, 01 Aug 2019 19:20:27 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:26 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 10/34] genwqe: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:41 -0700
Message-Id: <20190802022005.5117-11-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192028_198483_457D193E 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 "Guilherme G. Piccoli" <gpiccoli@linux.vnet.ibm.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Frank Haverkamp <haver@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Hubbard <jhubbard@nvidia.com>

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page() or
release_pages().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

This changes the release code slightly, because each page slot in the
page_list[] array is no longer checked for NULL. However, that check
was wrong anyway, because the get_user_pages() pattern of usage here
never allowed for NULL entries within a range of pinned pages.

Cc: Frank Haverkamp <haver@linux.vnet.ibm.com>
Cc: "Guilherme G. Piccoli" <gpiccoli@linux.vnet.ibm.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/misc/genwqe/card_utils.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/misc/genwqe/card_utils.c b/drivers/misc/genwqe/card_utils.c
index 2e1c4d2905e8..2a888f31d2c5 100644
--- a/drivers/misc/genwqe/card_utils.c
+++ b/drivers/misc/genwqe/card_utils.c
@@ -517,24 +517,13 @@ int genwqe_free_sync_sgl(struct genwqe_dev *cd, struct genwqe_sgl *sgl)
 /**
  * genwqe_free_user_pages() - Give pinned pages back
  *
- * Documentation of get_user_pages is in mm/gup.c:
- *
- * If the page is written to, set_page_dirty (or set_page_dirty_lock,
- * as appropriate) must be called after the page is finished with, and
- * before put_page is called.
+ * The pages may have been written to, so we call put_user_pages_dirty_lock(),
+ * rather than put_user_pages().
  */
 static int genwqe_free_user_pages(struct page **page_list,
 			unsigned int nr_pages, int dirty)
 {
-	unsigned int i;
-
-	for (i = 0; i < nr_pages; i++) {
-		if (page_list[i] != NULL) {
-			if (dirty)
-				set_page_dirty_lock(page_list[i]);
-			put_page(page_list[i]);
-		}
-	}
+	put_user_pages_dirty_lock(page_list, nr_pages, dirty);
 	return 0;
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
