Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535751CCFBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CDOwkNwPXCNLTPg05voxex1L6PvCMzJPBMR6fg8P/4I=; b=W5choKDOxu1YhI
	S/dnxCAwoEoWoTYMYoQz/mSGpvK7jfx5rLSayDtbBNKILHouTUfDK+LOpyZ1x8iwr6eKUjrECe41M
	cneM/t9BejFQbEvTnPozPs69fNdPo/CPDe9KDk/p8IFULdv63Qid8ncwE78UuwSNT6t7TFZO4ilYT
	Y1ccc+oRL/LOk40Ncwrc4sJMsIVWaGl7w2SzUiO7wbCo1VxV/fS8n5/I2hCyfrgLr2dfg2ZvMIBe6
	5VEtUOCbszIuu6Tsxo3suDvVDzu8vKwmWJhMLtqKnVcXoi2TU8r7RynHuXwERr5KM615ELH0rpGg8
	8Pycrsr6hWW6nOo9pBGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXyEB-0001GF-3Y; Mon, 11 May 2020 02:31:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXyE2-0001F0-92; Mon, 11 May 2020 02:31:28 +0000
X-UUID: 2cdcca41f2634417bf2bd5bfbaf1cc2d-20200510
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=YtnofhKrp6VKNNkt1aec9PQCdva125/vHWFsb6tBfsY=; 
 b=C3pMuKZeGnRjV1ypH/mhfnu4HivZM0PKjwYnJEBO3+RgCw0HN4EH1anGKTSIBOQnlKwT0im8WrI4g+TwC2eb1Kyc7sqW2+huQpnE1WDFGLd2v0cL+uLaRx1S39DMm5QTg/AJ7L1pJF3SteY3S6P1pL4Lss6KIKZXO3yfm3yiTT4=;
X-UUID: 2cdcca41f2634417bf2bd5bfbaf1cc2d-20200510
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 978768073; Sun, 10 May 2020 18:31:15 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 10 May 2020 19:31:09 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 10:31:12 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 11 May 2020 10:31:12 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, "Paul E . McKenney" <paulmck@kernel.org>, "Josh
 Triplett" <josh@joshtriplett.org>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Joel Fernandes <joel@joelfernandes.org>, Andrew Morton
 <akpm@linux-foundation.org>
Subject: [PATCH v2 1/3] rcu/kasan: record and print call_rcu() call stack
Date: Mon, 11 May 2020 10:31:11 +0800
Message-ID: <20200511023111.15310-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_193126_331949_97D4C93C 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This feature will record first and last call_rcu() call stack and
print two call_rcu() call stack in KASAN report.

When call_rcu() is called, we store the call_rcu() call stack into
slub alloc meta-data, so that KASAN report can print rcu stack.

It doesn't increase the cost of memory consumption. Because we don't
enlarge struct kasan_alloc_meta size.
- add two call_rcu() call stack into kasan_alloc_meta, size is 8 bytes.
- remove free track from kasan_alloc_meta, size is 8 bytes.

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
 kernel/rcu/tree.c     |  3 +++
 lib/Kconfig.kasan     |  2 ++
 mm/kasan/common.c     |  4 ++--
 mm/kasan/generic.c    | 29 +++++++++++++++++++++++++++++
 mm/kasan/kasan.h      | 19 +++++++++++++++++++
 mm/kasan/report.c     | 21 +++++++++++++++++----
 7 files changed, 74 insertions(+), 6 deletions(-)

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
index 06548e2ebb72..de872b6cc261 100644
--- a/kernel/rcu/tree.c
+++ b/kernel/rcu/tree.c
@@ -57,6 +57,7 @@
 #include <linux/slab.h>
 #include <linux/sched/isolation.h>
 #include <linux/sched/clock.h>
+#include <linux/kasan.h>
 #include "../time/tick-internal.h"
 
 #include "tree.h"
@@ -2694,6 +2695,8 @@ __call_rcu(struct rcu_head *head, rcu_callback_t func)
 		trace_rcu_callback(rcu_state.name, head,
 				   rcu_segcblist_n_cbs(&rdp->cblist));
 
+	kasan_record_aux_stack(head);
+
 	/* Go handle any RCU core processing required. */
 	if (IS_ENABLED(CONFIG_RCU_NOCB_CPU) &&
 	    unlikely(rcu_segcblist_is_offloaded(&rdp->cblist))) {
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 81f5464ea9e1..56a89291f1cc 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -58,6 +58,8 @@ config KASAN_GENERIC
 	  For better error detection enable CONFIG_STACKTRACE.
 	  Currently CONFIG_KASAN_GENERIC doesn't work with CONFIG_DEBUG_SLAB
 	  (the resulting kernel does not boot).
+	  Currently CONFIG_KASAN_GENERIC will print first and last call_rcu()
+	  call stack. It doesn't increase the cost of memory consumption.
 
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
index 56ff8885fe2e..b86880c338e2 100644
--- a/mm/kasan/generic.c
+++ b/mm/kasan/generic.c
@@ -325,3 +325,32 @@ DEFINE_ASAN_SET_SHADOW(f2);
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
+	if (!alloc_info->rcu_stack[0])
+		/* record first call_rcu() call stack */
+		alloc_info->rcu_stack[0] = kasan_save_stack(GFP_NOWAIT);
+	else
+		/* record last call_rcu() call stack */
+		alloc_info->rcu_stack[1] = kasan_save_stack(GFP_NOWAIT);
+}
+
+struct kasan_track *kasan_get_aux_stack(struct kasan_alloc_meta *alloc_info,
+						u8 idx)
+{
+	return container_of(&alloc_info->rcu_stack[idx],
+						struct kasan_track, stack);
+}
diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
index e8f37199d885..1cc1fb7b0de3 100644
--- a/mm/kasan/kasan.h
+++ b/mm/kasan/kasan.h
@@ -96,15 +96,28 @@ struct kasan_track {
 	depot_stack_handle_t stack;
 };
 
+#ifdef CONFIG_KASAN_GENERIC
+#define SIZEOF_PTR sizeof(void *)
+#define KASAN_NR_RCU_CALL_STACKS 2
+#else /* CONFIG_KASAN_GENERIC */
 #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
 #define KASAN_NR_FREE_STACKS 5
 #else
 #define KASAN_NR_FREE_STACKS 1
 #endif
+#endif /* CONFIG_KASAN_GENERIC */
 
 struct kasan_alloc_meta {
 	struct kasan_track alloc_track;
+#ifdef CONFIG_KASAN_GENERIC
+	/*
+	 * call_rcu() call stack is stored into struct kasan_alloc_meta.
+	 * The free stack is stored into freed object.
+	 */
+	depot_stack_handle_t rcu_stack[KASAN_NR_RCU_CALL_STACKS];
+#else
 	struct kasan_track free_track[KASAN_NR_FREE_STACKS];
+#endif
 #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
 	u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
 	u8 free_track_idx;
@@ -159,16 +172,22 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
 
 struct page *kasan_addr_to_page(const void *addr);
 
+depot_stack_handle_t kasan_save_stack(gfp_t flags);
+
 #if defined(CONFIG_KASAN_GENERIC) && \
 	(defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
 void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache);
 void quarantine_reduce(void);
 void quarantine_remove_cache(struct kmem_cache *cache);
+struct kasan_track *kasan_get_aux_stack(struct kasan_alloc_meta *alloc_info,
+			u8 idx);
 #else
 static inline void quarantine_put(struct kasan_free_meta *info,
 				struct kmem_cache *cache) { }
 static inline void quarantine_reduce(void) { }
 static inline void quarantine_remove_cache(struct kmem_cache *cache) { }
+static inline struct kasan_track *kasan_get_aux_stack(
+			struct kasan_alloc_meta *alloc_info, u8 idx) { return NULL; }
 #endif
 
 #ifdef CONFIG_KASAN_SW_TAGS
diff --git a/mm/kasan/report.c b/mm/kasan/report.c
index 80f23c9da6b0..f16a1a210815 100644
--- a/mm/kasan/report.c
+++ b/mm/kasan/report.c
@@ -105,9 +105,13 @@ static void end_report(unsigned long *flags)
 	kasan_enable_current();
 }
 
-static void print_track(struct kasan_track *track, const char *prefix)
+static void print_track(struct kasan_track *track, const char *prefix,
+						bool is_callrcu)
 {
-	pr_err("%s by task %u:\n", prefix, track->pid);
+	if (is_callrcu)
+		pr_err("%s:\n", prefix);
+	else
+		pr_err("%s by task %u:\n", prefix, track->pid);
 	if (track->stack) {
 		unsigned long *entries;
 		unsigned int nr_entries;
@@ -187,11 +191,20 @@ static void describe_object(struct kmem_cache *cache, void *object,
 	if (cache->flags & SLAB_KASAN) {
 		struct kasan_track *free_track;
 
-		print_track(&alloc_info->alloc_track, "Allocated");
+		print_track(&alloc_info->alloc_track, "Allocated", false);
 		pr_err("\n");
 		free_track = kasan_get_free_track(cache, object, tag);
-		print_track(free_track, "Freed");
+		print_track(free_track, "Freed", false);
 		pr_err("\n");
+
+		if (IS_ENABLED(CONFIG_KASAN_GENERIC)) {
+			free_track = kasan_get_aux_stack(alloc_info, 0);
+			print_track(free_track, "First call_rcu() call stack", true);
+			pr_err("\n");
+			free_track = kasan_get_aux_stack(alloc_info, 1);
+			print_track(free_track, "Last call_rcu() call stack", true);
+			pr_err("\n");
+		}
 	}
 
 	describe_object_addr(cache, object, addr);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
