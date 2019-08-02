Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C997E92A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8Z4sA/EDlyjFYUE+ilVrfUdC1HCGgMKzvUweF2mTtw=; b=AoNlBFElDbhWrJ
	r2Lo1SVJu8grqLkuBiwd6hZjW20w18YB84g+mUpwfbaYz22976dihN7RHN9az2IvcQh0+/m+iWx1V
	tf3QSt/cHovyqElK4Hw1mYhs1jNvyUHP/xIL1C9WKNwOJI6rT5I9QuTtY37ociEpqZZt5nwWeJswM
	LAUYPJY6+ViFDVBeNdV6aC1O5dREwM4H/az4RYr5O/LMqaR0vIJx2xTkp8l8OSIetHJOnqvDDPw4f
	p7vLPSHZ9v2rwFKac8SEKtTwJZs294sQWw0OUNUmlApHTWSDGjnnr7H7tIVC7f4/o7GZSLNOwMKLZ
	Rys25h3uWcD855tpbkXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNF7-0005gk-0f; Fri, 02 Aug 2019 02:24:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBH-0001tT-Jy; Fri, 02 Aug 2019 02:20:33 +0000
Received: by mail-pl1-x641.google.com with SMTP id c2so32983840plz.13;
 Thu, 01 Aug 2019 19:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qtbgyNHZ/W16Wsr49ObVlGXNsYs5Ix8cECAWpHw8QNg=;
 b=RO5t4Ioq4WOEkql+z1BxTA9XpQ5l0uBsUNJdBVpEbEdDpylZNAFokBSBfkt63Vmsnw
 KKnFnDLW2SLxaXe4yEcd4Uwphs0F9rh9yrBF7wrtI6jX7Smsup4E8B+OCU5PAghiuPUe
 n/rru2nRkN4fBDLxv0E5LWIc3+ez3bVuBV4gRzIu0YbbR7/jG/nHlqRg4ui2ABpoKbbs
 zzA9SmSgidMvseL2Kb+bN8XRYc2qyorbmCL2eKn81WG2j5TabLu8TlIG3hp8Y7Gq/i02
 vYgsWfOu94xgHEddrADmlOmkGGALS2TQwhC3ZfS61Jjz+jw13+1q5hfNRcQVjxbv88fI
 6ULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qtbgyNHZ/W16Wsr49ObVlGXNsYs5Ix8cECAWpHw8QNg=;
 b=sflbOCNne8erpfPWR72C7gk3jC5nz6S52o++emtqw4XMJKoEIwx/YAjsBQo+2CqI13
 opcemq3CvRBSiYcQ7+oZ74YcCW4UBNJ5h9mx7Ue4uVdao845SC39cnffbqJtDtBkpEk2
 za/2Wr5oQAoTTRO8Q2t3Q91loOY4a56pOGPtEoK4C2oXqZqglxMna+cQPQZn7eWwQvMY
 fHFJLfgAfi9MwEg3LzCera93wP4WeK9S6M2o3MwGcovQ54fKeKF62c1VIVesveLia8BW
 ja/64K0EwpC2gf/s4VX5ZblAoaCneo970mQOAq6b9+Tt7ZjipCmS/Ip1Op6azrYhTNFf
 JVUQ==
X-Gm-Message-State: APjAAAVCNbP+3c4LWVcRFH6OpcCj1FmbWxrN34wdizhz5tMcbpPtxcFV
 zyQGcyQ7yDQ34CGOs8rCGQo=
X-Google-Smtp-Source: APXvYqwKrOY4Kztkj41s0a6oi7zayzaXd8LpjaiCIksbrU4wJsvnJgU6mF0Bb9Hw/Pj5xfTEZIafcQ==
X-Received: by 2002:a17:902:5ac4:: with SMTP id
 g4mr131986648plm.80.1564712430821; 
 Thu, 01 Aug 2019 19:20:30 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:30 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 12/34] vmci: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:43 -0700
Message-Id: <20190802022005.5117-13-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192032_182981_044B6D81 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>
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

Note that this effectively changes the code's behavior in
qp_release_pages(): it now ultimately calls set_page_dirty_lock(),
instead of set_page_dirty(). This is probably more accurate.

As Christophe Hellwig put it, "set_page_dirty() is only safe if we are
dealing with a file backed page where we have reference on the inode it
hangs off." [1]

[1] https://lore.kernel.org/r/20190723153640.GB720@lst.de

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/misc/vmw_vmci/vmci_context.c    |  2 +-
 drivers/misc/vmw_vmci/vmci_queue_pair.c | 11 ++---------
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/misc/vmw_vmci/vmci_context.c b/drivers/misc/vmw_vmci/vmci_context.c
index 16695366ec92..9daa52ee63b7 100644
--- a/drivers/misc/vmw_vmci/vmci_context.c
+++ b/drivers/misc/vmw_vmci/vmci_context.c
@@ -587,7 +587,7 @@ void vmci_ctx_unset_notify(struct vmci_ctx *context)
 
 	if (notify_page) {
 		kunmap(notify_page);
-		put_page(notify_page);
+		put_user_page(notify_page);
 	}
 }
 
diff --git a/drivers/misc/vmw_vmci/vmci_queue_pair.c b/drivers/misc/vmw_vmci/vmci_queue_pair.c
index 8531ae781195..e5434551d0ef 100644
--- a/drivers/misc/vmw_vmci/vmci_queue_pair.c
+++ b/drivers/misc/vmw_vmci/vmci_queue_pair.c
@@ -626,15 +626,8 @@ static void qp_release_queue_mutex(struct vmci_queue *queue)
 static void qp_release_pages(struct page **pages,
 			     u64 num_pages, bool dirty)
 {
-	int i;
-
-	for (i = 0; i < num_pages; i++) {
-		if (dirty)
-			set_page_dirty(pages[i]);
-
-		put_page(pages[i]);
-		pages[i] = NULL;
-	}
+	put_user_pages_dirty_lock(pages, num_pages, dirty);
+	memset(pages, 0, num_pages * sizeof(struct page *));
 }
 
 /*
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
