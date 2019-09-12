Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF48B106F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 15:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHriwVf9zHABpiyxh8C1y0Nzy1lY4pjnxpqBXaH0EUw=; b=BaVzdX1YlNJx/D
	gXoy8GbVsVPrC8SUvDCwWm/RNpfeQ9IZMlY9C/4ZrsDNEtej/IuxnFwLCxFbnibGz5bDpxv2ZNA2p
	ipd6m+JSqfshWJP0V1z5qWOnYabKepNZaJ7Tg4T66iYtZR6ynPkTvigxm7LebjVxcdp7eY26yDYva
	knHAOMofqfHdGGF9OcT8mg/8p2HBHS5NkkkE7oWknumhlSrcwXU/tLUaj4KmF/CDRTW0iPURCd1WK
	QmAmrWomQ/OjXUoK4eYv8odblH6Sb2MK5eCvhH+2Ck6C+qFvq8q8de9QZcXHjx1AdSQ9ebPL2D4bk
	krLl5SIBU4fdntIhi7ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PXz-0004i8-N9; Thu, 12 Sep 2019 13:54:07 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PXl-0004hK-DY; Thu, 12 Sep 2019 13:53:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AD654B7D4;
 Thu, 12 Sep 2019 13:53:49 +0000 (UTC)
Subject: Re: [PATCH v3] mm/kasan: dump alloc and free stack for page allocator
To: Qian Cai <cai@lca.pw>, Walter Wu <walter-zh.wu@mediatek.com>
References: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
 <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <c4d2518f-4813-c941-6f47-73897f420517@suse.cz>
Date: Thu, 12 Sep 2019 15:53:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_065353_753309_ADF1D458 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wsd_upstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, Andrey Konovalov <andreyknvl@google.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/11/19 5:19 PM, Qian Cai wrote:
> 
> The new config looks redundant and confusing. It looks to me more of a document update
> in Documentation/dev-tools/kasan.txt to educate developers to select PAGE_OWNER and
> DEBUG_PAGEALLOC if needed.
 
Agreed. But if you want it fully automatic, how about something
like this (on top of mmotm/next)? If you agree I'll add changelog
and send properly.

----8<----

From a528d14c71d7fdf5872ca8ab3bd1b5bad26670c9 Mon Sep 17 00:00:00 2001
From: Vlastimil Babka <vbabka@suse.cz>
Date: Thu, 12 Sep 2019 15:51:23 +0200
Subject: [PATCH] make KASAN enable page_owner with free stack capture

---
 include/linux/page_owner.h |  1 +
 lib/Kconfig.kasan          |  4 ++++
 mm/Kconfig.debug           |  5 +++++
 mm/page_alloc.c            |  6 +++++-
 mm/page_owner.c            | 37 ++++++++++++++++++++++++-------------
 5 files changed, 39 insertions(+), 14 deletions(-)

diff --git a/include/linux/page_owner.h b/include/linux/page_owner.h
index 8679ccd722e8..6ffe8b81ba85 100644
--- a/include/linux/page_owner.h
+++ b/include/linux/page_owner.h
@@ -6,6 +6,7 @@
 
 #ifdef CONFIG_PAGE_OWNER
 extern struct static_key_false page_owner_inited;
+extern bool page_owner_free_stack_disabled;
 extern struct page_ext_operations page_owner_ops;
 
 extern void __reset_page_owner(struct page *page, unsigned int order);
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 6c9682ce0254..dc560c7562e8 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -41,6 +41,8 @@ config KASAN_GENERIC
 	select SLUB_DEBUG if SLUB
 	select CONSTRUCTORS
 	select STACKDEPOT
+	select PAGE_OWNER
+	select PAGE_OWNER_FREE_STACK
 	help
 	  Enables generic KASAN mode.
 	  Supported in both GCC and Clang. With GCC it requires version 4.9.2
@@ -63,6 +65,8 @@ config KASAN_SW_TAGS
 	select SLUB_DEBUG if SLUB
 	select CONSTRUCTORS
 	select STACKDEPOT
+	select PAGE_OWNER
+	select PAGE_OWNER_FREE_STACK
 	help
 	  Enables software tag-based KASAN mode.
 	  This mode requires Top Byte Ignore support by the CPU and therefore
diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
index 327b3ebf23bf..a71d52636687 100644
--- a/mm/Kconfig.debug
+++ b/mm/Kconfig.debug
@@ -13,6 +13,7 @@ config DEBUG_PAGEALLOC
 	depends on DEBUG_KERNEL
 	depends on !HIBERNATION || ARCH_SUPPORTS_DEBUG_PAGEALLOC && !PPC && !SPARC
 	select PAGE_POISONING if !ARCH_SUPPORTS_DEBUG_PAGEALLOC
+	select PAGE_OWNER_FREE_STACK if PAGE_OWNER
 	---help---
 	  Unmap pages from the kernel linear mapping after free_pages().
 	  Depending on runtime enablement, this results in a small or large
@@ -62,6 +63,10 @@ config PAGE_OWNER
 
 	  If unsure, say N.
 
+config PAGE_OWNER_FREE_STACK
+	def_bool n
+	depends on PAGE_OWNER
+
 config PAGE_POISONING
 	bool "Poison pages after freeing"
 	select PAGE_POISONING_NO_SANITY if HIBERNATION
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index c5d62f1c2851..d9e44671af3f 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -710,8 +710,12 @@ static int __init early_debug_pagealloc(char *buf)
 	if (kstrtobool(buf, &enable))
 		return -EINVAL;
 
-	if (enable)
+	if (enable) {
 		static_branch_enable(&_debug_pagealloc_enabled);
+#ifdef CONFIG_PAGE_OWNER
+		page_owner_free_stack_disabled = false;
+#endif
+	}
 
 	return 0;
 }
diff --git a/mm/page_owner.c b/mm/page_owner.c
index dee931184788..d4551d7012d0 100644
--- a/mm/page_owner.c
+++ b/mm/page_owner.c
@@ -24,13 +24,15 @@ struct page_owner {
 	short last_migrate_reason;
 	gfp_t gfp_mask;
 	depot_stack_handle_t handle;
-#ifdef CONFIG_DEBUG_PAGEALLOC
+#ifdef CONFIG_PAGE_OWNER_FREE_STACK
 	depot_stack_handle_t free_handle;
 #endif
 };
 
 static bool page_owner_disabled = true;
+bool page_owner_free_stack_disabled = true;
 DEFINE_STATIC_KEY_FALSE(page_owner_inited);
+static DEFINE_STATIC_KEY_FALSE(page_owner_free_stack);
 
 static depot_stack_handle_t dummy_handle;
 static depot_stack_handle_t failure_handle;
@@ -46,6 +48,11 @@ static int __init early_page_owner_param(char *buf)
 	if (strcmp(buf, "on") == 0)
 		page_owner_disabled = false;
 
+	if (IS_ENABLED(CONFIG_KASAN)) {
+		page_owner_disabled = false;
+		page_owner_free_stack_disabled = false;
+	}
+
 	return 0;
 }
 early_param("page_owner", early_page_owner_param);
@@ -91,6 +98,8 @@ static void init_page_owner(void)
 	register_failure_stack();
 	register_early_stack();
 	static_branch_enable(&page_owner_inited);
+	if (!page_owner_free_stack_disabled)
+		static_branch_enable(&page_owner_free_stack);
 	init_early_allocated_pages();
 }
 
@@ -148,11 +157,11 @@ void __reset_page_owner(struct page *page, unsigned int order)
 {
 	int i;
 	struct page_ext *page_ext;
-#ifdef CONFIG_DEBUG_PAGEALLOC
+#ifdef CONFIG_PAGE_OWNER_FREE_STACK
 	depot_stack_handle_t handle = 0;
 	struct page_owner *page_owner;
 
-	if (debug_pagealloc_enabled())
+	if (static_branch_unlikely(&page_owner_free_stack))
 		handle = save_stack(GFP_NOWAIT | __GFP_NOWARN);
 #endif
 
@@ -161,8 +170,8 @@ void __reset_page_owner(struct page *page, unsigned int order)
 		if (unlikely(!page_ext))
 			continue;
 		__clear_bit(PAGE_EXT_OWNER_ACTIVE, &page_ext->flags);
-#ifdef CONFIG_DEBUG_PAGEALLOC
-		if (debug_pagealloc_enabled()) {
+#ifdef CONFIG_PAGE_OWNER_FREE_STACK
+		if (static_branch_unlikely(&page_owner_free_stack)) {
 			page_owner = get_page_owner(page_ext);
 			page_owner->free_handle = handle;
 		}
@@ -451,14 +460,16 @@ void __dump_page_owner(struct page *page)
 		stack_trace_print(entries, nr_entries, 0);
 	}
 
-#ifdef CONFIG_DEBUG_PAGEALLOC
-	handle = READ_ONCE(page_owner->free_handle);
-	if (!handle) {
-		pr_alert("page_owner free stack trace missing\n");
-	} else {
-		nr_entries = stack_depot_fetch(handle, &entries);
-		pr_alert("page last free stack trace:\n");
-		stack_trace_print(entries, nr_entries, 0);
+#ifdef CONFIG_PAGE_OWNER_FREE_STACK
+	if (static_branch_unlikely(&page_owner_free_stack)) {
+		handle = READ_ONCE(page_owner->free_handle);
+		if (!handle) {
+			pr_alert("page_owner free stack trace missing\n");
+		} else {
+			nr_entries = stack_depot_fetch(handle, &entries);
+			pr_alert("page last free stack trace:\n");
+			stack_trace_print(entries, nr_entries, 0);
+		}
 	}
 #endif
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
