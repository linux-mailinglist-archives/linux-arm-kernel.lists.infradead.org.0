Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1740F84054
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJ9pbpTphfrbP2xYIHI/uC/UItu07xgPdsGNSfRD8F8=; b=s6xDKqzMMCSDBB
	S7BT7Z+MUwwAx185pO+wrOpHowGBAjgST+Ru8go4ziuY20YI4FYbv/d04QS6GT8DSMIpjcN3uhprc
	jFVY6yb5fpy+1tQnRLmlIuRtGYQP/V2Jc+1Z8XXgUX577pJ7/St6tuyZli3cDR6X6qxTKH6XLUzr9
	VWTDkbTZYS0btDwgAAKrzOoGLZBmKuBlwYptfGlGdVu1cYak4yaumt9b+3K04kuzsVtwL9vq1p4zu
	htjb4vIdveRokffVN56bcRbUA6fqNS8xj1LEUO/SZektVeyS/3rjLXsqnTdpYAOIlzQZJy4w6Pvxw
	RjCqyZC2VLCNQ+EUe4ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAtl-0007Nq-8w; Wed, 07 Aug 2019 01:37:53 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAq4-000277-AB; Wed, 07 Aug 2019 01:34:07 +0000
Received: by mail-pl1-x643.google.com with SMTP id c14so38504906plo.0;
 Tue, 06 Aug 2019 18:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wKnEf1dGeTf0vHOLp5WCTJvqak8NT8hcLNnzrVdQpMI=;
 b=K8d7XfBVJ8I/mb7D/So0s6zKV29K6nxqxOt+bscjBjWDfj0QC4+NZ8AYd4oczxdsUX
 7wYPGKgQnoRkCSwDEzT5rYkfZH7JJhJa6zaR/ydsa7uoMZJ2HjI2/BwiodCRxy0cgQ7K
 XR5LIHl94MzAJMcKyHWewTAlNkEf03nHhilsBgX1FcYreTK5la4X960fbNds2SN0gwIm
 bKXQLrcvXV5StThdICG212KTTY6r0QHSstMpGRVtwfJea1D8uaBa/9MN3hrGQMnPOq1P
 vjikEXBKeoKeYn0bHuTZu93yS1xwpaeL4dzZeJbSwqGj8iWMWHA9ZukGsRqP3BMDHZZx
 L72g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wKnEf1dGeTf0vHOLp5WCTJvqak8NT8hcLNnzrVdQpMI=;
 b=lBqG5XIBIbOE8u3YWepsohylbUTdlgSDur3ric3ZDcOD+rzUwtth1r72xxWAzvUt1j
 4+MgZisPlMa16wUyZk6TIl9qt/pXLHaeluYbVV7MYUefwTi4B6UMmP5I9c1uNnpr9pcn
 zqvGzdoR0PSNRl9T2yDIIiQxjsVdSmn5ir8GYkt4K8kvigF+QZbxRIr6cS5J8HRjScdA
 JjAyH77k+qzVGdh9dKfrfv12/s4eFD//NT2RFkmTlX2MAET7LODeNSqArxNFa/U2ARZj
 2ewrPwM9lZtLSvl2UL6xLM2aMaylvoBt0Bk1RsetVhS8jbnYncj5QeZjMvsW8vXUc3/7
 NRMA==
X-Gm-Message-State: APjAAAXaS+ShZI41SKRWT8uNLGGEznJ54n9KPqnAkRIduct3qrrSm8M9
 uaXRxdEHHFPsqKj6yVZ8bJM=
X-Google-Smtp-Source: APXvYqyq3BsS9DZUg5HbsH/cxAQFP71mzzuud27zN7KWsFT/18m4ES12yBRl2dAxm3nkOU3YhT47jw==
X-Received: by 2002:a17:902:e30b:: with SMTP id
 cg11mr5920567plb.335.1565141643695; 
 Tue, 06 Aug 2019 18:34:03 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:03 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 12/41] genwqe: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:11 -0700
Message-Id: <20190807013340.9706-13-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183404_517112_6BC44ABE 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Guilherme G . Piccoli" <gpiccoli@linux.vnet.ibm.com>,
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

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Cc: Frank Haverkamp <haver@linux.vnet.ibm.com>
Cc: Guilherme G. Piccoli <gpiccoli@linux.vnet.ibm.com>
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
