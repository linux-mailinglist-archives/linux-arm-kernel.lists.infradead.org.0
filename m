Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5ED840A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EADqEp0pHjD0c19Tt3ic5ciSC9YCxv3hEmV166dTOis=; b=CUOwluDs7c6pQl
	Aq8q5pmWe+s2L6psoMPLD70BiS82c9Bajzj9B4/FxG+cMHly6CS/zrLj0KSzv1YS1W7OJwGPedRGA
	KTRQiIWk26RyUTtQUShrmccWO3T8DfwggpaqsVoq1APPsFmfPDkU7UETtvXg34jFsgcNhmcBs0ZpL
	LEVexYnNJfWvSpIQ2u2DgE7Vtrdleh6gTLnWOaXcQZSa9mHNsnnkG23mODLTBtWdUb43v8mQZKF11
	qZAfUQNExraWnFfuXsiQJfOukhUJMiHKhYB/lgz2MNZnQP9lOtdR0e95WyLi1lW/+2BGaa8owkYWW
	gQp/JEweMIUfBw2Ee9Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAv4-0000NO-9q; Wed, 07 Aug 2019 01:39:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAqC-0002Ig-QX; Wed, 07 Aug 2019 01:34:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so42507754pff.8;
 Tue, 06 Aug 2019 18:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JsaN0a6ImilSblrGqgWWjtVL4aaUVqoBD3LMggUShuU=;
 b=GqUNc3X3RUD+fMQ/tQov0eVptsX6vtpAZn07Fz7EwuEqRFmPs6eCUIqWfymN9U5tJQ
 Hp7GWk6oPhSKnPDc9mTSSc0b1ETtX6WZgNyVT9i/ZAc9DVX2wgidQTYQD678snuo6Uld
 OC0AxpA2rwU9kzsgxg4J7222NtI9nwWIQ3kKBxRvKJz1x31XBYs72NYIFgvDtQhOtH6x
 c30ljXQcc0npojtfiU8d5Zil2HhFRjkicdzBOPLsXrn4hkS7yUXDhahjzIOv/1HcFIxR
 8vAP8M1yLlIpgKytXt/GLUCaDmX+n+gX0JAtjCLQsjpUrzEN6iMEgLfOxOdX4VT9I1MD
 gqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JsaN0a6ImilSblrGqgWWjtVL4aaUVqoBD3LMggUShuU=;
 b=gMGFOsD8WXzK+5fZ1Qkz+mSo4A08WuLr2jqFFSowuuRwWASOUJMRbpszy/CWCJKnXc
 2MbnfT3BzG4ALUx7T7qaeh5oZnk/Zoepb9LC9lML3St0RFDxBYjiasN11Vw1moipDJ/x
 QtM2kndbVkpSoHSro1PISB0OPkmuR30j4BFv037c2oeyuSJlUiQWLIHUMMeYF1RNVRGw
 P1i3uw7CPt45T9Sx2YewEDbs0SN7lR8+0LP64TIR3McIxQBHreMkqqbSLygi3p14gdMs
 d3GTPIyG229NaxnQPx3wR1/v9ILts0PY4FcfK1xErCiNrZkLcFxd3JmNLRXXTLY1pGlN
 vc7A==
X-Gm-Message-State: APjAAAW1NsXO84L2eVLsc14w4jQkzv3cRpZzmSWA3S4LCXrNL3QBPEdb
 OhwHidHpFMk96RpqQ3A6IVs=
X-Google-Smtp-Source: APXvYqxA3xyoDOQ03wz3+MrAsxUgDjCiiP1q/97dVlMDAvCMqLwWlj7LgNPejGHFGrv69vRcUlGBpA==
X-Received: by 2002:a63:3112:: with SMTP id x18mr5571166pgx.385.1565141652072; 
 Tue, 06 Aug 2019 18:34:12 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:11 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 17/41] staging/vc04_services: convert put_page() to
 put_user_page*()
Date: Tue,  6 Aug 2019 18:33:16 -0700
Message-Id: <20190807013340.9706-18-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183413_114371_04D74246 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

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
