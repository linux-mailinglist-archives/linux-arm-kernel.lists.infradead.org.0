Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7101F1E5231
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 02:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MoDp61WoGDoXfGN1naQOJpCHxFS5LyHnwfZXqb9FRjY=; b=ZqFXG1rf2lgvxS
	nGKsdhrN7BekbqgjhpgkODIv5O+DaI2+XRDcn90P4wwdm0ZL2kJQXLt4V7Gi7rf/MWAhVoppyE9MX
	CrkY3670GoOj6jN9IBbXSgz9Th3JxshPQAZ2Me+lg8SaiONpHS7ljrkIqfaxBCJ48K5mZDoOMHmSZ
	ndpIh9x67x364EUpFb2rm4pauw/iBwG4xfsRnulDLOA34jfBsSnficOWrCdhFwJCEL8O0RoHVtNPj
	ZACY04z0EWND196+fr0oZq7sbyPxfQuyuRj6I/oK7Lim6KsPy2zLBp6vFqCuUQmvuJ22du1zvYRar
	Y2bcj1KMYWOw2peJ5H8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je6KH-0005yc-Kd; Thu, 28 May 2020 00:23:13 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je6K8-0005xe-S7
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 00:23:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590625381;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=3NfM/YRWw8tWtCVntluiCugDqJX5J7Mi6y5RyulO5Co=;
 b=DtC9ez39MIRaRkHUY0UQA794jqsVcW7kxaLCrUXsPs86TOSWcskoUyvPOReoQ1k0mSvVmD
 ry6D6mQI2T7LNNrBUJb0bRds9FkyQblbQnkLWiyAMEGgsntgY2fswh0QnuVjRNAOas+R1V
 UEGCsiRCAmPlilvPMbbf5dqx11PEoVA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262--4PlExgtPwKJVseeIiuy9A-1; Wed, 27 May 2020 20:20:44 -0400
X-MC-Unique: -4PlExgtPwKJVseeIiuy9A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D96EC460;
 Thu, 28 May 2020 00:20:40 +0000 (UTC)
Received: from redhat.com (ovpn-119-19.rdu2.redhat.com [10.10.119.19])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FCE85D9CC;
 Thu, 28 May 2020 00:20:35 +0000 (UTC)
Date: Wed, 27 May 2020 20:20:33 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Huang Ying <ying.huang@intel.com>
Subject: Cache flush issue with page_mapping_file() and swap back shmem page ?
Message-ID: <20200528002033.GB1992500@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_172305_115518_36BD1A71 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 linux-mm@kvack.org, Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Helge Deller <deller@gmx.de>,
 James Hogan <jhogan@kernel.org>, rmk+kernel@arm.linux.org.uk,
 linux-xtensa@linux-xtensa.org, Steven Capper <steve.capper@linaro.org>,
 Rabin Vincent <rabinv@axis.com>, Ley Foon Tan <lftan@altera.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-parisc@vger.kernel.org, Max Filippov <jcmvbkbc@gmail.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 nios2-dev@lists.rocketboards.org, "David S. Miller" <davem@davemloft.net>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

So any arch code which uses page_mapping_file() might get the wrong
answer, this function will return NULL for a swap backed page which
can be a shmem pages. But shmem pages can still be shared among
multiple process (and possibly at different virtual addresses if
mremap was use).

Attached is a patch that changes page_mapping_file() to return the
shmem mapping for swap backed shmem page. I have not tested it (no
way for me to test all those architecture) and i spotted this while
working on something else. So i hope someone can take a closer look.

Cheers,
Jérôme

--/04w6evG8XlLl3ft
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: attachment;
	filename="0001-mm-fix-cache-flush-for-shmem-page-that-are-swap-back.patch"
Content-Transfer-Encoding: 8bit

From 6c76b9f8baa87ff872f6be5a44805a74c1e07fea Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>
Date: Wed, 27 May 2020 20:18:59 -0400
Subject: [PATCH] mm: fix cache flush for shmem page that are swap backed.
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This might be a shmem page that is in a sense a file that
can be mapped multiple times in different processes at
possibly different virtual addresses (fork + mremap). So
return the shmem mapping that will allow any arch code to
find all mappings of the page.

Note that even if page is not anonymous then the page might
have a NULL page->mapping field if it is being truncated,
but then it is fine as each pte poiting to the page will be
remove and cache flushing should be handled properly by that
part of the code.

Signed-off-by: Jérôme Glisse <jglisse@redhat.com>
Cc: "Huang, Ying" <ying.huang@intel.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Mel Gorman <mgorman@techsingularity.net>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: "James E.J. Bottomley" <jejb@parisc-linux.org>
---
 mm/util.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/mm/util.c b/mm/util.c
index 988d11e6c17c..ec8739ab0cc3 100644
--- a/mm/util.c
+++ b/mm/util.c
@@ -685,8 +685,24 @@ EXPORT_SYMBOL(page_mapping);
  */
 struct address_space *page_mapping_file(struct page *page)
 {
-	if (unlikely(PageSwapCache(page)))
+	if (unlikely(PageSwapCache(page))) {
+		/*
+		 * This might be a shmem page that is in a sense a file that
+		 * can be mapped multiple times in different processes at
+		 * possibly different virtual addresses (fork + mremap). So
+		 * return the shmem mapping that will allow any arch code to
+		 * find all mappings of the page.
+		 *
+		 * Note that even if page is not anonymous then the page might
+		 * have a NULL page->mapping field if it is being truncated,
+		 * but then it is fine as each pte poiting to the page will be
+		 * remove and cache flushing should be handled properly by that
+		 * part of the code.
+		 */
+		if (!PageAnon(page))
+			return page->mapping;
 		return NULL;
+	}
 	return page_mapping(page);
 }
 
-- 
2.26.2


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--/04w6evG8XlLl3ft--


