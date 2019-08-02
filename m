Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BB07E981
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmQZDQbp0GSmyuBII2VuAqrEooVyEU143huy9w9uNS4=; b=rU58jIwuw/LPFX
	mdUHiI5Pbg6RkeMLKUcl+EZpWcVhNv5CBe7WMA/Kpwkiq+2lqWKfPRsJ58RKhjHysj3fV73hClXaq
	3FSGm4pPBTZ5f2fgjvfZxT9X0Tb4Ypde3QnEsDr1SdtT1MBS1mcGjOczi0DPaTu22Y1hlG/m+6IrV
	ucGTjNxBhwi4Wjo5QTZwZIvXWxhhONBXnEoYe0L0kN4n93SmJgQLPcBMrtwwp1hJQYukhG3hL2V/i
	rh+/E2kuGgsFjqlpGsr2tZGviWK3BXec0+KgwILQkRHFcoiwFRm0OdtNI/XrSB+xuDKgxrec4ek6g
	QYQXwXfAq6c9Tl5/b8jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNFx-0007UU-8M; Fri, 02 Aug 2019 02:25:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBM-0001zk-E4; Fri, 02 Aug 2019 02:20:38 +0000
Received: by mail-pf1-x443.google.com with SMTP id b13so35151842pfo.1;
 Thu, 01 Aug 2019 19:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UPRfD7vyasD2XVfdl0NeBW26eHm6l3ABDQSSTKq1HX4=;
 b=TDJzpDwE2oXFjm8cRNjQ8xrt4Ta2d3wf2Cpo0GoFM9thJ0XtvCvH4mP4rm1obsYrxe
 XfcKcMWeGW7+jGqqsIeZqIQivf0rjt9KMIQPJwYrX9aXaeynZfYblNMyZkWwFJwZth79
 e4fMCJd20kqdE18/wOh4Jbz0PSr2Nv8bt8KSNv7hBSUy22vg0EGXVDctxg6pWi24C6E/
 aytHIR9O0Oe5Nfk4mH6Tawu8cduDw0xsgEveOl493+9jCWiudUUBNmztlAbrHUK6dK5c
 cZre9/z25iL+oH1skqqYaquBXUxt6bEZ/OhP0nmn5k+Ox8GOIXBHEB9I8h3iWNYPWkz5
 1iug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UPRfD7vyasD2XVfdl0NeBW26eHm6l3ABDQSSTKq1HX4=;
 b=kfdrpM1ZEos4CAIn01qdI2H2TA6Tx57Sg6xSBYbi/ELzWOP/D57z81HqYcE34nfV7N
 rwKF5b4z4fACtBN5rrVuv5D/xK8YiO33h+TW4lhbd3Gz8PVM70MqZYgfclHH8KmD1PDf
 gBinZ5P9vAl0ENjAcwWJcrDkNewJEa9wwNzXnC79/nzSzzwzS17zTNVG39RKb4EYDR0j
 77inJRKMBI19YjeODjKVTTzZg4qq3S03JVYyv/OB5bg2gLE6pT8AJmuQst92QbjrRXwV
 uLGuwY/m6ojXpwwhDM/DbDyf2XlXUZQFWpEsZVsDuviLdZ/dFFWUIFlq4jmdflwSWM0Y
 SD0Q==
X-Gm-Message-State: APjAAAV8vO4l5LiA/9o+UGj6cMbzqsqhYE6/1zKbo9LZuQkVlTu0/jLN
 wBeQbC1Kp93154ROlN5az6k=
X-Google-Smtp-Source: APXvYqzQQn/4+/qhyIZ5gzUBopHqYfn0J/db4aXm+9arPe8eAWsGtJFKretZ1QBLJdXBLY5X+jbCWQ==
X-Received: by 2002:a17:90a:7f85:: with SMTP id
 m5mr1901500pjl.78.1564712435904; 
 Thu, 01 Aug 2019 19:20:35 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:35 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 15/34] staging/vc04_services: convert put_page() to
 put_user_page*()
Date: Thu,  1 Aug 2019 19:19:46 -0700
Message-Id: <20190802022005.5117-16-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192036_518068_6FE39B9B 
X-CRM114-Status: GOOD (  13.15  )
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
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org,
 Suniel Mahesh <sunil.m@techveda.org>, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Mihaela Muraru <mihaela.muraru21@gmail.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Stefan Wahren <stefan.wahren@i2se.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Kishore KP <kishore.p@techveda.org>, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Sidong Yang <realwakka@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>
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

Cc: Eric Anholt <eric@anholt.net>
Cc: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: Suniel Mahesh <sunil.m@techveda.org>
Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: Sidong Yang <realwakka@gmail.com>
Cc: Kishore KP <kishore.p@techveda.org>
Cc: linux-rpi-kernel@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 61c69f353cdb..ec92b4c50e95 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -336,10 +336,7 @@ cleanup_pagelistinfo(struct vchiq_pagelist_info *pagelistinfo)
 	}
 
 	if (pagelistinfo->pages_need_release) {
-		unsigned int i;
-
-		for (i = 0; i < pagelistinfo->num_pages; i++)
-			put_page(pagelistinfo->pages[i]);
+		put_user_pages(pagelistinfo->pages, pagelistinfo->num_pages);
 	}
 
 	dma_free_coherent(g_dev, pagelistinfo->pagelist_buffer_size,
@@ -454,10 +451,7 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 				       __func__, actual_pages, num_pages);
 
 			/* This is probably due to the process being killed */
-			while (actual_pages > 0) {
-				actual_pages--;
-				put_page(pages[actual_pages]);
-			}
+			put_user_pages(pages, actual_pages);
 			cleanup_pagelistinfo(pagelistinfo);
 			return NULL;
 		}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
