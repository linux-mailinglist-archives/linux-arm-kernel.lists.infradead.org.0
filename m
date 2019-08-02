Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC647EA47
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cvgp5cfT6lEWsUGey1vVq5M3gNzR5TpFm0rMUzeVuiM=; b=b/ERJHvt34Oxcw
	eYtBLfeC17jSRwSUz7304lwWhd6cRAXmH9/Gc8/rLJ0TDmOqAU/mWPLCw0ptjVAeNv0rIfdD2GoUI
	rpC/uLJbjLCb7k86Ydj5Ge1+f6dwt0JHeneG/rJ3GcOMPkHy7cgKmuujNDCWhJ428fI5pAl/43HXj
	t2iWTj+QD0Gid2W97XSjtqWN0eWd91vdF8rl17UZbVnOhlUmE+arblClPOvgzs1VQ1Z1KK+JnBJ7n
	RIt/3DWLLvfQilHFqwO1WzwUPeQMbI4elwqrmoIeD4uaKBSHtvkSuo1OmH1rh3DXQyxC4MmY8Pj3a
	pIlLrbZqKazOAsKpjLwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNIs-0002UQ-9W; Fri, 02 Aug 2019 02:28:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBb-0002Jy-7y; Fri, 02 Aug 2019 02:20:53 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so35122859pfe.11;
 Thu, 01 Aug 2019 19:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XDFswRI13oGzit66yuxshlgOj+nOKd4gwJhAdxr7MGM=;
 b=hP1EduyKMG+yuXrF7KrLXpEWytv06HPkyhEngT/TxypVjl15UFdBSQ01HK831DacB6
 y18d2lzANesimTaq9XDZY67ictckhnVqIa+djvmZG+RwwqwovWVosZPm2hXdPP8mZbc0
 0yKrCu+VZPWp1BX7LdN24uYM7pD4/H1JhmD/G5vWAzU3HcQxPlc6uryb9qFNED1nmvuy
 vlc0Xyq/DfVAu1bkczBpbXVhlvoDYp/Xx1PasljpvjsnXilMO1dGN5gCe8VOPhx84A7a
 m7JqyBz4DRJG/5S/1NCOJ5bKHp9eLh6RG6N9nPftC1UPm2sven5C2Ciggp1fXGl7R4y9
 0EuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XDFswRI13oGzit66yuxshlgOj+nOKd4gwJhAdxr7MGM=;
 b=fnHBurRy07HIetsI/PKfAiuwfqx3c4xzc5l8vX0UWdvGGv4a6u9I4sedtWnYdiWA4x
 Bcl3Um+xyc00mBThG8R5gu9pymOdsetfxg2j7aCxk8zMbIT4N8zPm6AVPZy87aTM1OE2
 mW2nqskaJ2emZ9EMdXhIUdjrJfgux1XSg78HDMkVWTEGo7Z1E+c5EaixPFvnzUpD1BUu
 Q3T52n80HWLVT5Re41giQpd7NvivOBbSp80C3GA55X+QGRozwl2ABebaYpAmbpHmc3UL
 uTNZi81D3sZfOXTVLDRsM0EqgpRFl6I6ADAedPyOwD+xVWFkeUra13M+J6wOxvd8wU3z
 Um2w==
X-Gm-Message-State: APjAAAU0lNuICGXUpkboG9sc1dRh92Dpz/RuZr4Op7BO+xLHw0wuNVPT
 0yTkwk6M7Y8/t+9XQUUflgA=
X-Google-Smtp-Source: APXvYqxrGBxtmn7yAK9mdNxfQbE+IWGBlk1o9qGDinrparVfdT4goa6Xy1ipLTWrwKQoX2yj/q+h8w==
X-Received: by 2002:aa7:8218:: with SMTP id k24mr54831158pfi.221.1564712450876; 
 Thu, 01 Aug 2019 19:20:50 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:50 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 25/34] mm/frame_vector.c: convert put_page() to
 put_user_page*()
Date: Thu,  1 Aug 2019 19:19:56 -0700
Message-Id: <20190802022005.5117-26-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192051_717826_5E085EC4 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 Jason Gunthorpe <jgg@ziepe.ca>, Mel Gorman <mgorman@suse.de>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Vlastimil Babka <vbabka@suse.cz>,
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

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page() or
release_pages().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Jan Kara <jack@suse.cz>
Cc: Mel Gorman <mgorman@suse.de>
Cc: Vlastimil Babka <vbabka@suse.cz>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 mm/frame_vector.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/mm/frame_vector.c b/mm/frame_vector.c
index c64dca6e27c2..f590badac776 100644
--- a/mm/frame_vector.c
+++ b/mm/frame_vector.c
@@ -120,7 +120,6 @@ EXPORT_SYMBOL(get_vaddr_frames);
  */
 void put_vaddr_frames(struct frame_vector *vec)
 {
-	int i;
 	struct page **pages;
 
 	if (!vec->got_ref)
@@ -133,8 +132,7 @@ void put_vaddr_frames(struct frame_vector *vec)
 	 */
 	if (WARN_ON(IS_ERR(pages)))
 		goto out;
-	for (i = 0; i < vec->nr_frames; i++)
-		put_page(pages[i]);
+	put_user_pages(pages, vec->nr_frames);
 	vec->got_ref = false;
 out:
 	vec->nr_frames = 0;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
