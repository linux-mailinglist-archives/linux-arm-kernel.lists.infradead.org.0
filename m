Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776C61D8DA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OjOMHLcA9npyJxIdXJytYsusGvxyUQRe1kFbMn+XLF8=; b=i7KuBphvDPx4n4
	WC57Z1fKX6fBidEnC1w5p9nbOiXTp2HpNW/twNgYvZvMCMI8W9Ee2BbWYFZF/kemAuB44O3mHlIMY
	703LOV4iBGWdppyhE/aZ+wNozhwHBklTlH5WI09Iy5M+3glySO1HoZ/DY8wJRoMvqEigDyIWlW7tB
	KQcoFvH5khbXhZ9sO6eDcpUXAh+Q6hHScQqHCuU1ec981acU35IAeME+XI8VZOPCR0Hub1xBjqFJn
	GDEROdlafhCK3wY861dt6rLXGhhdZcK8pmDpjKBCXosNOqjg8DnQ2oNlgfJ1pF/dg/Sy2XfS9P52o
	6HjrBOpMxPd9Cq7ayKLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jas1e-000166-6O; Tue, 19 May 2020 02:30:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jas19-00076T-8r; Tue, 19 May 2020 02:30:09 +0000
X-UUID: 02f9434c60874d118af544ad57848dfd-20200518
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=lZEdQ8ioW1/xHKs8HqXHOWda86nayj2lVNOArdxGEpk=; 
 b=EAT1mBoQ8s1j6oDGs22AqFRclIance+ScdO0PFt3SveTYIcETVaIjKXvIq/9HZk5/zeykfI2oGcjqYUSNSYonKlNkZ0b42Lv8MoffcAkQp7NWxn0bWF3U5IeNZRXyhJKTxJLlLTjqot+dcVGPdHYEVYnFeVPC6ETNTrFYus5xm0=;
X-UUID: 02f9434c60874d118af544ad57848dfd-20200518
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 301471746; Mon, 18 May 2020 18:30:06 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 18 May 2020 19:24:01 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 10:24:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 19 May 2020 10:23:59 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, "Paul E . McKenney" <paulmck@kernel.org>, "Josh
 Triplett" <josh@joshtriplett.org>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Joel Fernandes <joel@joelfernandes.org>, Andrew Morton
 <akpm@linux-foundation.org>
Subject: [PATCH v4 1/4] rcu/kasan: record and print call_rcu() call stack
Date: Tue, 19 May 2020 10:23:59 +0800
Message-ID: <20200519022359.24115-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_193007_324893_B94346F4 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This feature will record the last two call_rcu() call stacks and
prints up to 2 call_rcu() call stacks in KASAN report.

When call_rcu() is called, we store the call_rcu() call stack into
slub alloc meta-data, so that the KASAN report can print rcu stack.

[1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
[2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
Suggested-by: Dmitry Vyukov <dvyukov@google.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Paul E. McKenney <paulmck@kernel.org>
Cc: Josh Triplett <josh@joshtriplett.org>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: Lai Jiangshan <jiangshanlai@gmail.com>
Cc: Joel Fernandes <joel@joelfernandes.org>
---
 include/linux/kasan.h |  2 ++
 kernel/rcu/tree.c     |  2 ++
 lib/Kconfig.kasan     |  2 ++
 mm/kasan/common.c     |  4 ++--
 mm/kasan/generic.c    | 19 +++++++++++++++++++
 mm/kasan/kasan.h      | 10 ++++++++++
 mm/kasan/report.c     | 24 ++++++++++++++++++++++++
 7 files changed, 61 insertions(+), 2 deletions(-)

diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index 31314ca7c635..23b7ee00572d 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -174,11 +174,13 @@ static inline size_t kasan_metadata_size(struct kmem_cache *cache) { return 0; }
 
 void kasan_cache_shrink(struct kmem_cache *cache);
 void kasan_cache_shutdown(struct kmem_cache *cache);
+void kasan_record_aux_stack(void *ptr);
 
 #else /* CONFIG_KASAN_GENERIC */
 
 static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
 static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
+static inline void kasan_record_aux_stack(void *ptr) {}
 
 #endif /* CONFIG_KASAN_GENERIC */
 
diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
index 06548e2ebb72..36a4ff7f320b 100644
--- a/kernel/rcu/tree.c
+++ b/kernel/rcu/tree.c
@@ -57,6 +57,7 @@
 #include <linux/slab.h>
 #include <linux/sched/isolation.h>
 #include <linux/sched/clock.h>
+#include <linux/kasan.h>
 #include "../time/tick-internal.h"
 
 #include "tree.h"
@@ -2668,6 +2669,7 @@ __call_rcu(struct rcu_head *head, rcu_callback_t func)
 	head->func = func;
 	head->next = NULL;
 	local_irq_save(flags);
+	kasan_record_aux_stack(head);
 	rdp = this_cpu_ptr(&rcu_data);
 
 	/* Add the callback to our list. */
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 81f5464ea9e1..4e83cf6e3caa 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -58,6 +58,8 @@ config KASAN_GENERIC
 	  For better error detection enable CONFIG_STACKTRACE.
 	  Currently CONFIG_KASAN_GENERIC doesn't work with CONFIG_DEBUG_SLAB
 	  (the resulting kernel does not boot).
+	  In generic mode KASAN prints the last two call_rcu() call stacks in
+	  reports.
 
 config KASAN_SW_TAGS
 	bool "Software tag-based mode"
diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 2906358e42f0..8bc618289bb1 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -41,7 +41,7 @@
 #include "kasan.h"
 #include "../slab.h"
 
-static inline depot_stack_handle_t save_stack(gfp_t flags)
+depot_stack_handle_t kasan_save_stack(gfp_t flags)
 {
 	unsigned long entries[KASAN_STACK_DEPTH];
 	unsigned int nr_entries;
@@ -54,7 +54,7 @@ static inline depot_stack_handle_t save_stack(gfp_t flags)
 static inline void set_track(struct kasan_track *track, gfp_t flags)
 {
 	track->pid = current->pid;
-	track->stack = save_stack(flags);
+	track->stack = kasan_save_stack(flags);
 }
 
 void kasan_enable_current(void)
diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
index 56ff8885fe2e..3372bdcaf92a 100644
--- a/mm/kasan/generic.c
+++ b/mm/kasan/generic.c
@@ -325,3 +325,22 @@ DEFINE_ASAN_SET_SHADOW(f2);
 DEFINE_ASAN_SET_SHADOW(f3);
 DEFINE_ASAN_SET_SHADOW(f5);
 DEFINE_ASAN_SET_SHADOW(f8);
+
+void kasan_record_aux_stack(void *addr)
+{
+	struct page *page = kasan_addr_to_page(addr);
+	struct kmem_cache *cache;
+	struct kasan_alloc_meta *alloc_info;
+	void *object;
+
+	if (!(page && PageSlab(page)))
+		return;
+
+	cache = page->slab_cache;
+	object = nearest_obj(cache, page, addr);
+	alloc_info = get_alloc_info(cache, object);
+
+	/* record the last two call_rcu() call stacks */
+	alloc_info->aux_stack[1] = alloc_info->aux_stack[0];
+	alloc_info->aux_stack[0] = kasan_save_stack(GFP_NOWAIT);
+}
diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
index e8f37199d885..a7391bc83070 100644
--- a/mm/kasan/kasan.h
+++ b/mm/kasan/kasan.h
@@ -104,7 +104,15 @@ struct kasan_track {
 
 struct kasan_alloc_meta {
 	struct kasan_track alloc_track;
+#ifdef CONFIG_KASAN_GENERIC
+	/*
+	 * call_rcu() call stack is stored into struct kasan_alloc_meta.
+	 * The free stack is stored into struct kasan_free_meta.
+	 */
+	depot_stack_handle_t aux_stack[2];
+#else
 	struct kasan_track free_track[KASAN_NR_FREE_STACKS];
+#endif
 #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
 	u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
 	u8 free_track_idx;
@@ -159,6 +167,8 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
 
 struct page *kasan_addr_to_page(const void *addr);
 
+depot_stack_handle_t kasan_save_stack(gfp_t flags);
+
 #if defined(CONFIG_KASAN_GENERIC) && \
 	(defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
 void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache);
diff --git a/mm/kasan/report.c b/mm/kasan/report.c
index 80f23c9da6b0..6f8f2bf8f53b 100644
--- a/mm/kasan/report.c
+++ b/mm/kasan/report.c
@@ -179,6 +179,17 @@ static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
 	return &alloc_meta->free_track[i];
 }
 
+#ifdef CONFIG_KASAN_GENERIC
+static void print_stack(depot_stack_handle_t stack)
+{
+	unsigned long *entries;
+	unsigned int nr_entries;
+
+	nr_entries = stack_depot_fetch(stack, &entries);
+	stack_trace_print(entries, nr_entries, 0);
+}
+#endif
+
 static void describe_object(struct kmem_cache *cache, void *object,
 				const void *addr, u8 tag)
 {
@@ -192,6 +203,19 @@ static void describe_object(struct kmem_cache *cache, void *object,
 		free_track = kasan_get_free_track(cache, object, tag);
 		print_track(free_track, "Freed");
 		pr_err("\n");
+
+#ifdef CONFIG_KASAN_GENERIC
+		if (alloc_info->aux_stack[0]) {
+			pr_err("Last one call_rcu() call stack:\n");
+			print_stack(alloc_info->aux_stack[0]);
+			pr_err("\n");
+		}
+		if (alloc_info->aux_stack[1]) {
+			pr_err("Second to last call_rcu() call stack:\n");
+			print_stack(alloc_info->aux_stack[1]);
+			pr_err("\n");
+		}
+#endif
 	}
 
 	describe_object_addr(cache, object, addr);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
