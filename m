Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693FAB3755
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzdJPdecvPVv5wKHRuUhf+j0KO8LcsTval3uqldVSyI=; b=lyojueet0Rhz9x
	y+1G5GwPbimYBdNiH9ik9k9aWZs6wfl6napTMN7VeVLOU/QIO5Q6SzPgLXuzIOSDS03kdp5gYaSew
	iUN3DBoyabZ69hmDxfb9ox0pnJp96/vGo+P5ICmjqq4dLTGlOp11jjmuc9jLvBA8D3dRvYr0c5ESN
	kwIpyeA4+t1Bb2SXN83UlvdUcvMekzwRdu8SGa6b9qZkBmVGAgT4JBCHIUFdme4tWW5G5w2D4MYBD
	vPIA/BumbxFE/yJNIbqvD3NbWUiYY56wA7kLwzoi7KDCXm8X8ir/TqF426cSEbeETORva4bSOqrMy
	xXgnge0j+TRQBf1vcdPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nX4-0002UI-Ho; Mon, 16 Sep 2019 09:42:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nWo-0002TN-7d; Mon, 16 Sep 2019 09:42:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BCBB6AFE2;
 Mon, 16 Sep 2019 09:42:34 +0000 (UTC)
Subject: Re: [PATCH v3] mm/kasan: dump alloc and free stack for page allocator
To: Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Walter Wu <walter-zh.wu@mediatek.com>
References: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
 <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
 <c4d2518f-4813-c941-6f47-73897f420517@suse.cz>
 <1568297308.19040.5.camel@mtksdccf07>
 <613f9f23-c7f0-871f-fe13-930c35ef3105@suse.cz>
 <79fede05-735b-8477-c273-f34db93fd72b@virtuozzo.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <6d58ce86-b2a4-40af-bf40-c604b457d086@suse.cz>
Date: Mon, 16 Sep 2019 11:42:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <79fede05-735b-8477-c273-f34db93fd72b@virtuozzo.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_024238_569487_B33E3CB3 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: wsd_upstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, Andrey Konovalov <andreyknvl@google.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/12/19 7:05 PM, Andrey Ryabinin wrote:
> 
> Or another alternative option (and actually easier one to implement), leave PAGE_OWNER as is (no "select"s in Kconfigs)
> Make PAGE_OWNER_FREE_STACK like this:
> 
> +config PAGE_OWNER_FREE_STACK
> +	def_bool KASAN || DEBUG_PAGEALLOC
> +	depends on PAGE_OWNER
> +
> 
> So, users that want alloc/free stack will have to enable CONFIG_PAGE_OWNER=y and add page_owner=on to boot cmdline.
> 
> 
> Basically the difference between these alternative is whether we enable page_owner by default or not. But there is always a possibility to disable it.

OK, how about this?

BTW, the bugzilla [1] also mentions that on overflow we might be dumping
the wrong page (including stacks). I'll leave that to somebody familiar
with KASAN internals though.

[1] https://bugzilla.kernel.org/show_bug.cgi?id=203967

----8<----
From 887e3c092c073d996098ac2b101b0feaef110b54 Mon Sep 17 00:00:00 2001
From: Vlastimil Babka <vbabka@suse.cz>
Date: Mon, 16 Sep 2019 11:28:19 +0200
Subject: [PATCH] mm, debug, kasan: save and dump freeing stack trace for kasan

The commit "mm, page_owner, debug_pagealloc: save and dump freeing stack trace"
enhanced page_owner to also store freeing stack trace, when debug_pagealloc is
also enabled. KASAN would also like to do this [1] to improve error reports to
debug e.g. UAF issues. This patch therefore introduces a helper config option
PAGE_OWNER_FREE_STACK, which is enabled when PAGE_OWNER and either of
DEBUG_PAGEALLOC or KASAN is enabled. Boot-time, the free stack saving is
enabled when booting a KASAN kernel with page_owner=on, or non-KASAN kernel
with debug_pagealloc=on and page_owner=on.

[1] https://bugzilla.kernel.org/show_bug.cgi?id=203967

Suggested-by: Dmitry Vyukov <dvyukov@google.com>
Suggested-by: Walter Wu <walter-zh.wu@mediatek.com>
Suggested-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Signed-off-by: Vlastimil Babka <vbabka@suse.cz>
---
 Documentation/dev-tools/kasan.rst |  4 ++++
 include/linux/page_owner.h        |  1 +
 mm/Kconfig.debug                  |  4 ++++
 mm/page_alloc.c                   |  6 +++++-
 mm/page_owner.c                   | 35 +++++++++++++++++++------------
 5 files changed, 36 insertions(+), 14 deletions(-)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index b72d07d70239..434e605030e9 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -41,6 +41,10 @@ smaller binary while the latter is 1.1 - 2 times faster.
 Both KASAN modes work with both SLUB and SLAB memory allocators.
 For better bug detection and nicer reporting, enable CONFIG_STACKTRACE.
 
+To augment reports with last allocation and freeing stack of the physical
+page, it is recommended to configure kernel also with CONFIG_PAGE_OWNER = y
+and boot with page_owner=on.
+
 To disable instrumentation for specific files or directories, add a line
 similar to the following to the respective kernel Makefile:
 
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
diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
index 327b3ebf23bf..1ea247da3322 100644
--- a/mm/Kconfig.debug
+++ b/mm/Kconfig.debug
@@ -62,6 +62,10 @@ config PAGE_OWNER
 
 	  If unsure, say N.
 
+config PAGE_OWNER_FREE_STACK
+	def_bool KASAN || DEBUG_PAGEALLOC
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
index dee931184788..b589bfbc4795 100644
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
@@ -46,6 +48,9 @@ static int __init early_page_owner_param(char *buf)
 	if (strcmp(buf, "on") == 0)
 		page_owner_disabled = false;
 
+	if (!page_owner_disabled && IS_ENABLED(CONFIG_KASAN))
+		page_owner_free_stack_disabled = false;
+
 	return 0;
 }
 early_param("page_owner", early_page_owner_param);
@@ -91,6 +96,8 @@ static void init_page_owner(void)
 	register_failure_stack();
 	register_early_stack();
 	static_branch_enable(&page_owner_inited);
+	if (!page_owner_free_stack_disabled)
+		static_branch_enable(&page_owner_free_stack);
 	init_early_allocated_pages();
 }
 
@@ -148,11 +155,11 @@ void __reset_page_owner(struct page *page, unsigned int order)
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
 
@@ -161,8 +168,8 @@ void __reset_page_owner(struct page *page, unsigned int order)
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
@@ -451,14 +458,16 @@ void __dump_page_owner(struct page *page)
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
