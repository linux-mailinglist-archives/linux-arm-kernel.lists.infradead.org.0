Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B321D5769
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exe2mzr8NblKxRECDYfFwKKXJd6RoaTMsej4fpk0hmg=; b=ZP57SbPX9QSb+K
	MTpd9QGPirhlDRS/8Y2NhOUgPc9vyPpO0GKflkkV1RrOPxqPCLzCTm5Qvqd1mCcvd/XIU/zWnEMTR
	EISVbjTvJahA8nBiu8eKWWwFE//PhadSVvJEM716GPjTuWumR52Guu8+j9paP5N4DgwzR+1WGIC+E
	SzcYoYG8fotZNdwyvweiSC/nV0qz4cyo1ArqVxwvWKV2bbp4REoxZXE4GJkAidhnfI6p/2ePmI3Bv
	7BLzbqLkJg11YQsmipi9E8iHYIrImWPMzvFK+O1XpSJ7fne/Le20piCVwueHYwvpYEgLoK/rt1H2y
	ZxGV9z3vx8flotR5kmzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdz0-00047u-PR; Fri, 15 May 2020 17:18:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdwp-0002EO-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:16:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 93EDF1063;
 Fri, 15 May 2020 10:16:34 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C315D3F305;
 Fri, 15 May 2020 10:16:32 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 06/26] mm: Add PG_ARCH_2 page flag
Date: Fri, 15 May 2020 18:15:52 +0100
Message-Id: <20200515171612.1020-7-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101635_406052_7FE1FF26 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Steven Price <steven.price@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steven Price <steven.price@arm.com>

For arm64 MTE support it is necessary to be able to mark pages that
contain user space visible tags that will need to be saved/restored e.g.
when swapped out.

To support this add a new arch specific flag (PG_ARCH_2) that arch code
can opt into using ARCH_USES_PG_ARCH_2.

Signed-off-by: Steven Price <steven.price@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
---

Notes:
    New in v4.

 fs/proc/page.c                    | 3 +++
 include/linux/kernel-page-flags.h | 1 +
 include/linux/page-flags.h        | 3 +++
 include/trace/events/mmflags.h    | 9 ++++++++-
 mm/Kconfig                        | 3 +++
 tools/vm/page-types.c             | 2 ++
 6 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/fs/proc/page.c b/fs/proc/page.c
index f909243d4a66..1b6cbe0849a8 100644
--- a/fs/proc/page.c
+++ b/fs/proc/page.c
@@ -217,6 +217,9 @@ u64 stable_page_flags(struct page *page)
 	u |= kpf_copy_bit(k, KPF_PRIVATE_2,	PG_private_2);
 	u |= kpf_copy_bit(k, KPF_OWNER_PRIVATE,	PG_owner_priv_1);
 	u |= kpf_copy_bit(k, KPF_ARCH,		PG_arch_1);
+#ifdef CONFIG_ARCH_USES_PG_ARCH_2
+	u |= kpf_copy_bit(k, KPF_ARCH_2,	PG_arch_2);
+#endif
 
 	return u;
 };
diff --git a/include/linux/kernel-page-flags.h b/include/linux/kernel-page-flags.h
index abd20ef93c98..eee1877a354e 100644
--- a/include/linux/kernel-page-flags.h
+++ b/include/linux/kernel-page-flags.h
@@ -17,5 +17,6 @@
 #define KPF_ARCH		38
 #define KPF_UNCACHED		39
 #define KPF_SOFTDIRTY		40
+#define KPF_ARCH_2		41
 
 #endif /* LINUX_KERNEL_PAGE_FLAGS_H */
diff --git a/include/linux/page-flags.h b/include/linux/page-flags.h
index 222f6f7b2bb3..1d4971fe4fee 100644
--- a/include/linux/page-flags.h
+++ b/include/linux/page-flags.h
@@ -135,6 +135,9 @@ enum pageflags {
 #if defined(CONFIG_IDLE_PAGE_TRACKING) && defined(CONFIG_64BIT)
 	PG_young,
 	PG_idle,
+#endif
+#ifdef CONFIG_ARCH_USES_PG_ARCH_2
+	PG_arch_2,
 #endif
 	__NR_PAGEFLAGS,
 
diff --git a/include/trace/events/mmflags.h b/include/trace/events/mmflags.h
index 5fb752034386..5d098029a2d8 100644
--- a/include/trace/events/mmflags.h
+++ b/include/trace/events/mmflags.h
@@ -79,6 +79,12 @@
 #define IF_HAVE_PG_IDLE(flag,string)
 #endif
 
+#ifdef CONFIG_ARCH_USES_PG_ARCH_2
+#define IF_HAVE_PG_ARCH_2(flag,string) ,{1UL << flag, string}
+#else
+#define IF_HAVE_PG_ARCH_2(flag,string)
+#endif
+
 #define __def_pageflag_names						\
 	{1UL << PG_locked,		"locked"	},		\
 	{1UL << PG_waiters,		"waiters"	},		\
@@ -105,7 +111,8 @@ IF_HAVE_PG_MLOCK(PG_mlocked,		"mlocked"	)		\
 IF_HAVE_PG_UNCACHED(PG_uncached,	"uncached"	)		\
 IF_HAVE_PG_HWPOISON(PG_hwpoison,	"hwpoison"	)		\
 IF_HAVE_PG_IDLE(PG_young,		"young"		)		\
-IF_HAVE_PG_IDLE(PG_idle,		"idle"		)
+IF_HAVE_PG_IDLE(PG_idle,		"idle"		)		\
+IF_HAVE_PG_ARCH_2(PG_arch_2,		"arch_2"	)
 
 #define show_page_flags(flags)						\
 	(flags) ? __print_flags(flags, "|",				\
diff --git a/mm/Kconfig b/mm/Kconfig
index c1acc34c1c35..60427ccc3cb8 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -867,4 +867,7 @@ config ARCH_HAS_HUGEPD
 config MAPPING_DIRTY_HELPERS
         bool
 
+config ARCH_USES_PG_ARCH_2
+	bool
+
 endmenu
diff --git a/tools/vm/page-types.c b/tools/vm/page-types.c
index 58c0eab71bca..0517c744b04e 100644
--- a/tools/vm/page-types.c
+++ b/tools/vm/page-types.c
@@ -78,6 +78,7 @@
 #define KPF_ARCH		38
 #define KPF_UNCACHED		39
 #define KPF_SOFTDIRTY		40
+#define KPF_ARCH_2		41
 
 /* [48-] take some arbitrary free slots for expanding overloaded flags
  * not part of kernel API
@@ -135,6 +136,7 @@ static const char * const page_flag_names[] = {
 	[KPF_ARCH]		= "h:arch",
 	[KPF_UNCACHED]		= "c:uncached",
 	[KPF_SOFTDIRTY]		= "f:softdirty",
+	[KPF_ARCH_2]		= "H:arch_2",
 
 	[KPF_READAHEAD]		= "I:readahead",
 	[KPF_SLOB_FREE]		= "P:slob_free",

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
