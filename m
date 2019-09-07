Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B64AC820
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MU+dWJ1Ohq1rdvBZmeOlqMJoRVJWWRzY+Xp0AC3LbHQ=; b=iORc9ETjJqTMzd
	uMwzOgWCwIZ4ZqtLFJYUWgjKZRNWsx9UWgJVCfdIFpObWfgnw0Xth4kPzLpGahr/D4SH+rSLRdtu4
	XZP2Rt+QCkRyx7Iz27D9hB3Sr6IOwqEzY5a1oAAyzHLHOFvH5tfVbEUWCh5HARsI7Jhw9hIFSmy+f
	c2iC3+4T5AkL9QJjanVj7EkDhiBVl0gjErhz/iDDaRMfXvqer++QPE1ifTyUpLPbIjdmlJkLlXcR8
	5y/IL8ZcE4DSPfXHLdYDcNxnQ62sEdy1F3Jv9GJCSESaXmZeGMCUIeHWzrqAgNnZVYEEaDNk+avG6
	D3HZzeIrlciXn7aeKdJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6eTc-0000B1-44; Sat, 07 Sep 2019 17:26:20 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6eSq-00089a-E1
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:25:34 +0000
Received: by mail-ot1-x341.google.com with SMTP id g19so8692930otg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=XeOFbkXePrFioXOb6FAIERJbwcp7KIiK2/+DoMA6rcA=;
 b=rYZVLzjvr5yE4QlzHHD82dZS2lBNT8G+0FQqFRdBYAjb/wKgN0lU5D1lBtoQWqfTjX
 aSCp6awRi7fd3X5kAvvuGccRdgGzZtxlICkGXwUikok0PX+w0BwbIa3SKAUzKWWokUeZ
 Qps21btfn9+VGyzAHOVRDS6z2Kqho67V64Mbajq6dDKkghbv6HLu8OoqaTF3ne8jpW/A
 uy6B4yNR064NWLAcd1nJqcMiDvCWIWDdSqgiAzUal7K14B5N6xMLv4F+4vPTHKSWOCJI
 Yzxr0oGW//qzZPv/1RcDfTKG18YRItPedk5lEVTeukfviAzCKHdYZIHdUFfHEbJsMsKs
 NGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=XeOFbkXePrFioXOb6FAIERJbwcp7KIiK2/+DoMA6rcA=;
 b=toiikJP/i2wDSHdtghCGMNh6X23P1g9shYQB+ib1QaX/l8GBZX0iaGEBNfMYsGEbb1
 5DNYols6CfVgC6gnFdC/GV7g3jqXRttN5FPDK92sOU9znJxRjY27VcM7wd2n4IutJsp6
 XbPBj3et/FTibu3A1Jn5C6R79YAk4/SFgiY1EtK1an9dEc/dDRmj5Zlo8hxC0maAnOVm
 Rg/29HmFsPXU07Lk+PqCEaeTGPwWoPxaFypbmJQHyssqC4O750VU3QI6iM9Z3xK6lJcj
 bYpfqgWgcaet5hgfRLqQqVGLPi3JJum561xx9BRenfrw05VViDh07s+dJdBI4Y3+EDGI
 3Cqw==
X-Gm-Message-State: APjAAAULqXv6yr+USgnOvmaoLUIgIyteh1UhoWVc+HB8eoY6IrZaKRD5
 ynqGqPTeXBxHaHTzh5agYJc=
X-Google-Smtp-Source: APXvYqwv1SFq7ObWqAIFpc+/RF0fOZtse6a3DjMkC4Rs/jY3P0in4RopuF/MfrzoMf7ETBATX4C09g==
X-Received: by 2002:a9d:1921:: with SMTP id j33mr12440399ota.304.1567877131742; 
 Sat, 07 Sep 2019 10:25:31 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id p28sm3582003oth.38.2019.09.07.10.25.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:25:31 -0700 (PDT)
Subject: [PATCH v9 3/8] mm: Move set/get_pcppage_migratetype to mmzone.h
From: Alexander Duyck <alexander.duyck@gmail.com>
To: virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 catalin.marinas@arm.com, david@redhat.com, dave.hansen@intel.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, mhocko@kernel.org,
 linux-mm@kvack.org, akpm@linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Sat, 07 Sep 2019 10:25:28 -0700
Message-ID: <20190907172528.10910.37051.stgit@localhost.localdomain>
In-Reply-To: <20190907172225.10910.34302.stgit@localhost.localdomain>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_102532_596413_EB463261 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, ying.huang@intel.com, lcapitulino@redhat.com,
 wei.w.wang@intel.com, aarcange@redhat.com, nitesh@redhat.com,
 pbonzini@redhat.com, dan.j.williams@intel.com, fengguang.wu@intel.com,
 alexander.h.duyck@linux.intel.com, kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

In order to support page reporting it will be necessary to store and
retrieve the migratetype of a page. To enable that I am moving the set and
get operations for pcppage_migratetype into the mm/internal.h header so
that they can be used outside of the page_alloc.c file.

Reviewed-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 mm/internal.h   |   18 ++++++++++++++++++
 mm/page_alloc.c |   18 ------------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/mm/internal.h b/mm/internal.h
index 0d5f720c75ab..e4a1a57bbd40 100644
--- a/mm/internal.h
+++ b/mm/internal.h
@@ -549,6 +549,24 @@ static inline bool is_migrate_highatomic_page(struct page *page)
 	return get_pageblock_migratetype(page) == MIGRATE_HIGHATOMIC;
 }
 
+/*
+ * A cached value of the page's pageblock's migratetype, used when the page is
+ * put on a pcplist. Used to avoid the pageblock migratetype lookup when
+ * freeing from pcplists in most cases, at the cost of possibly becoming stale.
+ * Also the migratetype set in the page does not necessarily match the pcplist
+ * index, e.g. page might have MIGRATE_CMA set but be on a pcplist with any
+ * other index - this ensures that it will be put on the correct CMA freelist.
+ */
+static inline int get_pcppage_migratetype(struct page *page)
+{
+	return page->index;
+}
+
+static inline void set_pcppage_migratetype(struct page *page, int migratetype)
+{
+	page->index = migratetype;
+}
+
 void setup_zone_pageset(struct zone *zone);
 extern struct page *alloc_new_node_page(struct page *page, unsigned long node);
 #endif	/* __MM_INTERNAL_H */
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 4e4356ba66c7..a791f2baeeeb 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -185,24 +185,6 @@ static int __init early_init_on_free(char *buf)
 }
 early_param("init_on_free", early_init_on_free);
 
-/*
- * A cached value of the page's pageblock's migratetype, used when the page is
- * put on a pcplist. Used to avoid the pageblock migratetype lookup when
- * freeing from pcplists in most cases, at the cost of possibly becoming stale.
- * Also the migratetype set in the page does not necessarily match the pcplist
- * index, e.g. page might have MIGRATE_CMA set but be on a pcplist with any
- * other index - this ensures that it will be put on the correct CMA freelist.
- */
-static inline int get_pcppage_migratetype(struct page *page)
-{
-	return page->index;
-}
-
-static inline void set_pcppage_migratetype(struct page *page, int migratetype)
-{
-	page->index = migratetype;
-}
-
 #ifdef CONFIG_PM_SLEEP
 /*
  * The following functions are used by the suspend/hibernate code to temporarily


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
