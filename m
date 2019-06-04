Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D8C3469C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=11A3DcPu2ck8pd80I9RzYnRovf9S6zh3RFoocr5Ycqs=; b=JX/ZA/7YTren1W
	zSSNmwKG2uPh6w3TWr2eW3iDB7d9tEVd12fgJBjVb3pMEDy56YBN6JrSPsdyUmG6oC5G43SkZQ+Vj
	//BE88KYlyOUuvIji4hmidw3UIfyHraxmbN40+zgH+YfySW2u0AbUfoIp+kU9iVhDsW9G1g/h+XPU
	1AvTKsSNaodjiIUJiRxbneuJe0w+CsUWVMeFyksonD/arHcsI24pygvjkBcFGHnBOHX0Dj6XZ9usf
	NrCk4qUcABYcNei0LLS2KXewBNmZFjpIjbCDve+WbnzKVo2K8lSmqaGDSNT9kCo2FOD424SOJboAV
	0Od+OKrTU7B0PTy4VUGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8WM-0003wX-Ea; Tue, 04 Jun 2019 12:26:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8WC-0003gd-Tm; Tue, 04 Jun 2019 12:26:23 +0000
X-UUID: a97748fadfb7498894f8967b6c39a431-20190604
X-UUID: a97748fadfb7498894f8967b6c39a431-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1748250433; Tue, 04 Jun 2019 04:26:17 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 05:26:15 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 20:26:13 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 20:26:13 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Christoph Lameter
 <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes
 <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>, "Arnd
 Bergmann" <arnd@arndb.de>, Vasily Gorbik <gor@linux.ibm.com>, Andrey
 Konovalov <andreyknvl@google.com>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Miles Chen <miles.chen@mediatek.com>, Walter Wu <walter-zh.wu@mediatek.com>
Subject: [PATCH v2] kasan: add memory corruption identification for software
 tag-based mode
Date: Tue, 4 Jun 2019 20:26:12 +0800
Message-ID: <1559651172-28989-1-git-send-email-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_052620_969134_DEB8CB2B 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds memory corruption identification at bug report for
software tag-based mode, the report show whether it is "use-after-free"
or "out-of-bound" error instead of "invalid-access" error.This will make
it easier for programmers to see the memory corruption problem.

Now we extend the quarantine to support both generic and tag-based kasan.
For tag-based kasan, the quarantine stores only freed object information
to check if an object is freed recently. When tag-based kasan reports an
error, we can check if the tagged addr is in the quarantine and make a
good guess if the object is more like "use-after-free" or "out-of-bound".

Due to tag-based kasan, the tag values are stored in the shadow memory,
all tag comparison failures are memory corruption. Even if those freed
object have been deallocated, we still can get the memory corruption.
So the freed object doesn't need to be kept in quarantine, it can be
immediately released after calling kfree(). We only need the freed object
information in quarantine, the error handler is able to use object
information to know if it has been allocated or deallocated, therefore
every slab memory corruption can be identified whether it's
"use-after-free" or "out-of-bound".

The difference between generic kasan and tag-based kasan quarantine is
slab memory usage. Tag-based kasan only stores freed object information
rather than the object itself. So tag-based kasan quarantine memory usage
is smaller than generic kasan.


====== Benchmarks

The following numbers were collected in QEMU.
Both generic and tag-based KASAN were used in inline instrumentation mode
and no stack checking.

Boot time :
* ~1.5 sec for clean kernel
* ~3 sec for generic KASAN
* ~3.5  sec for tag-based KASAN
* ~3.5 sec for tag-based KASAN + corruption identification

Slab memory usage after boot :
* ~10500 kb  for clean kernel
* ~30500 kb  for generic KASAN
* ~12300 kb  for tag-based KASAN
* ~17100 kb  for tag-based KASAN + corruption identification

====== Changes

Change since v1:
- add feature option CONFIG_KASAN_SW_TAGS_IDENTIFY.
- change QUARANTINE_FRACTION to reduce quarantine size.
- change the qlist order in order to find the newest object in quarantine
- reduce the number of calling kmalloc() from 2 to 1 time.
- remove global variable to use argument to pass it.
- correct the amount of qobject cache->size into the byes of qlist_head.
- only use kasan_cache_shrink() to shink memory.

Cc: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
 include/linux/kasan.h  |   4 ++
 lib/Kconfig.kasan      |   9 +++
 mm/kasan/Makefile      |   1 +
 mm/kasan/common.c      |   4 +-
 mm/kasan/kasan.h       |  50 +++++++++++++-
 mm/kasan/quarantine.c  | 146 ++++++++++++++++++++++++++++++++++++-----
 mm/kasan/report.c      |  37 +++++++----
 mm/kasan/tags.c        |  47 +++++++++++++
 mm/kasan/tags_report.c |   8 ++-
 mm/slub.c              |   2 +-
 10 files changed, 273 insertions(+), 35 deletions(-)

diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index b40ea104dd36..be0667225b58 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -164,7 +164,11 @@ void kasan_cache_shutdown(struct kmem_cache *cache);
 
 #else /* CONFIG_KASAN_GENERIC */
 
+#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
+void kasan_cache_shrink(struct kmem_cache *cache);
+#else
 static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
+#endif
 static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
 
 #endif /* CONFIG_KASAN_GENERIC */
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 9950b660e62d..17a4952c5eee 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -134,6 +134,15 @@ config KASAN_S390_4_LEVEL_PAGING
 	  to 3TB of RAM with KASan enabled). This options allows to force
 	  4-level paging instead.
 
+config KASAN_SW_TAGS_IDENTIFY
+       bool "Enable memory corruption idenitfication"
+       depends on KASAN_SW_TAGS
+       help
+         Now tag-based KASAN bug report always shows invalid-access error, This
+         options can identify it whether it is use-after-free or out-of-bound.
+         This will make it easier for programmers to see the memory corruption
+         problem.
+
 config TEST_KASAN
 	tristate "Module for testing KASAN for bug detection"
 	depends on m && KASAN
diff --git a/mm/kasan/Makefile b/mm/kasan/Makefile
index 5d1065efbd47..d8540e5070cb 100644
--- a/mm/kasan/Makefile
+++ b/mm/kasan/Makefile
@@ -19,3 +19,4 @@ CFLAGS_tags.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
 obj-$(CONFIG_KASAN) := common.o init.o report.o
 obj-$(CONFIG_KASAN_GENERIC) += generic.o generic_report.o quarantine.o
 obj-$(CONFIG_KASAN_SW_TAGS) += tags.o tags_report.o
+obj-$(CONFIG_KASAN_SW_TAGS_IDENTIFY) += quarantine.o
diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 80bbe62b16cd..e309fbbee831 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -81,7 +81,7 @@ static inline depot_stack_handle_t save_stack(gfp_t flags)
 	return depot_save_stack(&trace, flags);
 }
 
-static inline void set_track(struct kasan_track *track, gfp_t flags)
+void set_track(struct kasan_track *track, gfp_t flags)
 {
 	track->pid = current->pid;
 	track->stack = save_stack(flags);
@@ -457,7 +457,7 @@ static bool __kasan_slab_free(struct kmem_cache *cache, void *object,
 		return false;
 
 	set_track(&get_alloc_info(cache, object)->free_track, GFP_NOWAIT);
-	quarantine_put(get_free_info(cache, object), cache);
+	quarantine_put(get_free_info(cache, tagged_object), cache);
 
 	return IS_ENABLED(CONFIG_KASAN_GENERIC);
 }
diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
index 3e0c11f7d7a1..1be04abe2e0d 100644
--- a/mm/kasan/kasan.h
+++ b/mm/kasan/kasan.h
@@ -98,6 +98,12 @@ struct kasan_alloc_meta {
 struct qlist_node {
 	struct qlist_node *next;
 };
+struct qlist_object {
+	unsigned long addr;
+	unsigned int size;
+	struct kasan_track free_track;
+	struct qlist_node qnode;
+};
 struct kasan_free_meta {
 	/* This field is used while the object is in the quarantine.
 	 * Otherwise it might be used for the allocator freelist.
@@ -133,11 +139,12 @@ void kasan_report(unsigned long addr, size_t size,
 		bool is_write, unsigned long ip);
 void kasan_report_invalid_free(void *object, unsigned long ip);
 
-#if defined(CONFIG_KASAN_GENERIC) && \
-	(defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
+#if (defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS_IDENTIFY)) \
+	&& (defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
 void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache);
 void quarantine_reduce(void);
 void quarantine_remove_cache(struct kmem_cache *cache);
+void set_track(struct kasan_track *track, gfp_t flags);
 #else
 static inline void quarantine_put(struct kasan_free_meta *info,
 				struct kmem_cache *cache) { }
@@ -151,6 +158,31 @@ void print_tags(u8 addr_tag, const void *addr);
 
 u8 random_tag(void);
 
+#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
+bool quarantine_find_object(void *object,
+		struct kasan_track *free_track);
+
+struct qlist_object *qobject_create(struct kasan_free_meta *info,
+		struct kmem_cache *cache);
+
+void qobject_free(struct qlist_node *qlink, struct kmem_cache *cache);
+#else
+static inline bool quarantine_find_object(void *object,
+		struct kasan_track *free_track)
+{
+	return false;
+}
+
+static inline struct qlist_object *qobject_create(struct kasan_free_meta *info,
+		struct kmem_cache *cache)
+{
+	return NULL;
+}
+
+static inline void qobject_free(struct qlist_node *qlink,
+		struct kmem_cache *cache) {}
+#endif
+
 #else
 
 static inline void print_tags(u8 addr_tag, const void *addr) { }
@@ -160,6 +192,20 @@ static inline u8 random_tag(void)
 	return 0;
 }
 
+static inline bool quarantine_find_object(void *object,
+		struct kasan_track *free_track)
+{
+	return false;
+}
+
+static inline struct qlist_object *qobject_create(struct kasan_free_meta *info,
+		struct kmem_cache *cache)
+{
+	return NULL;
+}
+
+static inline void qobject_free(struct qlist_node *qlink,
+		struct kmem_cache *cache) {}
 #endif
 
 #ifndef arch_kasan_set_tag
diff --git a/mm/kasan/quarantine.c b/mm/kasan/quarantine.c
index 978bc4a3eb51..43b009659d80 100644
--- a/mm/kasan/quarantine.c
+++ b/mm/kasan/quarantine.c
@@ -61,12 +61,16 @@ static void qlist_init(struct qlist_head *q)
 static void qlist_put(struct qlist_head *q, struct qlist_node *qlink,
 		size_t size)
 {
-	if (unlikely(qlist_empty(q)))
+	struct qlist_node *prev_qlink = q->head;
+
+	if (unlikely(qlist_empty(q))) {
 		q->head = qlink;
-	else
-		q->tail->next = qlink;
-	q->tail = qlink;
-	qlink->next = NULL;
+		q->tail = qlink;
+		qlink->next = NULL;
+	} else {
+		q->head = qlink;
+		qlink->next = prev_qlink;
+	}
 	q->bytes += size;
 }
 
@@ -121,7 +125,11 @@ static unsigned long quarantine_batch_size;
  * Quarantine doesn't support memory shrinker with SLAB allocator, so we keep
  * the ratio low to avoid OOM.
  */
+#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
+#define QUARANTINE_FRACTION 128
+#else
 #define QUARANTINE_FRACTION 32
+#endif
 
 static struct kmem_cache *qlink_to_cache(struct qlist_node *qlink)
 {
@@ -139,16 +147,24 @@ static void *qlink_to_object(struct qlist_node *qlink, struct kmem_cache *cache)
 
 static void qlink_free(struct qlist_node *qlink, struct kmem_cache *cache)
 {
-	void *object = qlink_to_object(qlink, cache);
 	unsigned long flags;
+	struct kmem_cache *obj_cache;
+	void *object;
 
-	if (IS_ENABLED(CONFIG_SLAB))
-		local_irq_save(flags);
+	if (IS_ENABLED(CONFIG_KASAN_SW_TAGS_IDENTIFY)) {
+		qobject_free(qlink, cache);
+	} else {
+		obj_cache = cache ? cache :	qlink_to_cache(qlink);
+		object = qlink_to_object(qlink, obj_cache);
 
-	___cache_free(cache, object, _THIS_IP_);
+		if (IS_ENABLED(CONFIG_SLAB))
+			local_irq_save(flags);
 
-	if (IS_ENABLED(CONFIG_SLAB))
-		local_irq_restore(flags);
+		___cache_free(obj_cache, object, _THIS_IP_);
+
+		if (IS_ENABLED(CONFIG_SLAB))
+			local_irq_restore(flags);
+	}
 }
 
 static void qlist_free_all(struct qlist_head *q, struct kmem_cache *cache)
@@ -160,11 +176,9 @@ static void qlist_free_all(struct qlist_head *q, struct kmem_cache *cache)
 
 	qlink = q->head;
 	while (qlink) {
-		struct kmem_cache *obj_cache =
-			cache ? cache :	qlink_to_cache(qlink);
 		struct qlist_node *next = qlink->next;
 
-		qlink_free(qlink, obj_cache);
+		qlink_free(qlink, cache);
 		qlink = next;
 	}
 	qlist_init(q);
@@ -175,6 +189,8 @@ void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache)
 	unsigned long flags;
 	struct qlist_head *q;
 	struct qlist_head temp = QLIST_INIT;
+	struct kmem_cache *qobject_cache;
+	struct qlist_object *free_obj_info;
 
 	/*
 	 * Note: irq must be disabled until after we move the batch to the
@@ -187,7 +203,19 @@ void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache)
 	local_irq_save(flags);
 
 	q = this_cpu_ptr(&cpu_quarantine);
-	qlist_put(q, &info->quarantine_link, cache->size);
+	if (IS_ENABLED(CONFIG_KASAN_SW_TAGS_IDENTIFY)) {
+		free_obj_info = qobject_create(info, cache);
+		if (!free_obj_info) {
+			local_irq_restore(flags);
+			return;
+		}
+
+		qobject_cache = qlink_to_cache(&free_obj_info->qnode);
+		qlist_put(q, &free_obj_info->qnode, qobject_cache->size);
+	} else {
+		qlist_put(q, &info->quarantine_link, cache->size);
+	}
+
 	if (unlikely(q->bytes > QUARANTINE_PERCPU_SIZE)) {
 		qlist_move_all(q, &temp);
 
@@ -220,7 +248,6 @@ void quarantine_reduce(void)
 	if (likely(READ_ONCE(quarantine_size) <=
 		   READ_ONCE(quarantine_max_size)))
 		return;
-
 	/*
 	 * srcu critical section ensures that quarantine_remove_cache()
 	 * will not miss objects belonging to the cache while they are in our
@@ -327,3 +354,90 @@ void quarantine_remove_cache(struct kmem_cache *cache)
 
 	synchronize_srcu(&remove_cache_srcu);
 }
+
+#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
+static noinline bool qlist_find_object(struct qlist_head *from, void *arg)
+{
+	struct qlist_node *curr;
+	struct qlist_object *curr_obj;
+	struct qlist_object *target = (struct qlist_object *)arg;
+
+	if (unlikely(qlist_empty(from)))
+		return false;
+
+	curr = from->head;
+	while (curr) {
+		struct qlist_node *next = curr->next;
+
+		curr_obj = container_of(curr, struct qlist_object, qnode);
+		if (unlikely((target->addr >= curr_obj->addr) &&
+			(target->addr < (curr_obj->addr + curr_obj->size)))) {
+			target->free_track = curr_obj->free_track;
+			return true;
+		}
+
+		curr = next;
+	}
+	return false;
+}
+
+static noinline int per_cpu_find_object(void *arg)
+{
+	struct qlist_head *q;
+
+	q = this_cpu_ptr(&cpu_quarantine);
+	return qlist_find_object(q, arg);
+}
+
+struct cpumask cpu_allowed_mask __read_mostly;
+
+bool quarantine_find_object(void *addr, struct kasan_track *free_track)
+{
+	unsigned long flags;
+	bool find = false;
+	int cpu, i;
+	struct qlist_object target;
+
+	target.addr = (unsigned long)addr;
+
+	cpumask_copy(&cpu_allowed_mask, cpu_online_mask);
+	for_each_cpu(cpu, &cpu_allowed_mask) {
+		find = smp_call_on_cpu(cpu, per_cpu_find_object,
+				(void *)&target, true);
+		if (find) {
+			if (free_track)
+				*free_track = target.free_track;
+			return true;
+		}
+	}
+
+	raw_spin_lock_irqsave(&quarantine_lock, flags);
+	for (i = quarantine_tail; i >= 0; i--) {
+		if (qlist_empty(&global_quarantine[i]))
+			continue;
+		find = qlist_find_object(&global_quarantine[i],
+				(void *)&target);
+		if (find) {
+			if (free_track)
+				*free_track = target.free_track;
+			raw_spin_unlock_irqrestore(&quarantine_lock, flags);
+			return true;
+		}
+	}
+	for (i = QUARANTINE_BATCHES-1; i > quarantine_tail; i--) {
+		if (qlist_empty(&global_quarantine[i]))
+			continue;
+		find = qlist_find_object(&global_quarantine[i],
+				(void *)&target);
+		if (find) {
+			if (free_track)
+				*free_track = target.free_track;
+			raw_spin_unlock_irqrestore(&quarantine_lock, flags);
+			return true;
+		}
+	}
+	raw_spin_unlock_irqrestore(&quarantine_lock, flags);
+
+	return false;
+}
+#endif
diff --git a/mm/kasan/report.c b/mm/kasan/report.c
index ca9418fe9232..3cbc24cd3d43 100644
--- a/mm/kasan/report.c
+++ b/mm/kasan/report.c
@@ -150,18 +150,27 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
 }
 
 static void describe_object(struct kmem_cache *cache, void *object,
-				const void *addr)
+				const void *tagged_addr)
 {
+	void *untagged_addr = reset_tag(tagged_addr);
 	struct kasan_alloc_meta *alloc_info = get_alloc_info(cache, object);
+	struct kasan_track free_track;
 
 	if (cache->flags & SLAB_KASAN) {
-		print_track(&alloc_info->alloc_track, "Allocated");
-		pr_err("\n");
-		print_track(&alloc_info->free_track, "Freed");
-		pr_err("\n");
+		if (IS_ENABLED(CONFIG_KASAN_SW_TAGS_IDENTIFY) &&
+			quarantine_find_object((void *)tagged_addr,
+				&free_track)) {
+			print_track(&free_track, "Freed");
+			pr_err("\n");
+		} else {
+			print_track(&alloc_info->alloc_track, "Allocated");
+			pr_err("\n");
+			print_track(&alloc_info->free_track, "Freed");
+			pr_err("\n");
+		}
 	}
 
-	describe_object_addr(cache, object, addr);
+	describe_object_addr(cache, object, untagged_addr);
 }
 
 static inline bool kernel_or_module_addr(const void *addr)
@@ -180,23 +189,25 @@ static inline bool init_task_stack_addr(const void *addr)
 			sizeof(init_thread_union.stack));
 }
 
-static void print_address_description(void *addr)
+static void print_address_description(void *tagged_addr)
 {
-	struct page *page = addr_to_page(addr);
+	void *untagged_addr = reset_tag(tagged_addr);
+	struct page *page = addr_to_page(untagged_addr);
 
 	dump_stack();
 	pr_err("\n");
 
 	if (page && PageSlab(page)) {
 		struct kmem_cache *cache = page->slab_cache;
-		void *object = nearest_obj(cache, page,	addr);
+		void *object = nearest_obj(cache, page,	untagged_addr);
 
-		describe_object(cache, object, addr);
+		describe_object(cache, object, tagged_addr);
 	}
 
-	if (kernel_or_module_addr(addr) && !init_task_stack_addr(addr)) {
+	if (kernel_or_module_addr(untagged_addr) &&
+			!init_task_stack_addr(untagged_addr)) {
 		pr_err("The buggy address belongs to the variable:\n");
-		pr_err(" %pS\n", addr);
+		pr_err(" %pS\n", untagged_addr);
 	}
 
 	if (page) {
@@ -314,7 +325,7 @@ void kasan_report(unsigned long addr, size_t size,
 	pr_err("\n");
 
 	if (addr_has_shadow(untagged_addr)) {
-		print_address_description(untagged_addr);
+		print_address_description(tagged_addr);
 		pr_err("\n");
 		print_shadow_for_address(info.first_bad_addr);
 	} else {
diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
index 63fca3172659..7804b48f760e 100644
--- a/mm/kasan/tags.c
+++ b/mm/kasan/tags.c
@@ -124,6 +124,53 @@ void check_memory_region(unsigned long addr, size_t size, bool write,
 	}
 }
 
+#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
+void kasan_cache_shrink(struct kmem_cache *cache)
+{
+	quarantine_remove_cache(cache);
+}
+
+struct qlist_object *qobject_create(struct kasan_free_meta *info,
+						struct kmem_cache *cache)
+{
+	struct qlist_object *qobject_info;
+	void *object;
+
+	object = ((void *)info) - cache->kasan_info.free_meta_offset;
+	qobject_info = kmalloc(sizeof(struct qlist_object), GFP_NOWAIT);
+	if (!qobject_info)
+		return NULL;
+	qobject_info->addr = (unsigned long) object;
+	qobject_info->size = cache->object_size;
+	set_track(&qobject_info->free_track, GFP_NOWAIT);
+
+	return qobject_info;
+}
+
+static struct kmem_cache *qobject_to_cache(struct qlist_object *qobject)
+{
+	return virt_to_head_page(qobject)->slab_cache;
+}
+
+void qobject_free(struct qlist_node *qlink, struct kmem_cache *cache)
+{
+	struct qlist_object *qobject = container_of(qlink,
+			struct qlist_object, qnode);
+	unsigned long flags;
+
+	struct kmem_cache *qobject_cache =
+			cache ? cache :	qobject_to_cache(qobject);
+
+	if (IS_ENABLED(CONFIG_SLAB))
+		local_irq_save(flags);
+
+	___cache_free(qobject_cache, (void *)qobject, _THIS_IP_);
+
+	if (IS_ENABLED(CONFIG_SLAB))
+		local_irq_restore(flags);
+}
+#endif
+
 #define DEFINE_HWASAN_LOAD_STORE(size)					\
 	void __hwasan_load##size##_noabort(unsigned long addr)		\
 	{								\
diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
index 8eaf5f722271..63b0b1f381ff 100644
--- a/mm/kasan/tags_report.c
+++ b/mm/kasan/tags_report.c
@@ -36,7 +36,13 @@
 
 const char *get_bug_type(struct kasan_access_info *info)
 {
-	return "invalid-access";
+	if (IS_ENABLED(CONFIG_KASAN_SW_TAGS_IDENTIFY)) {
+		if (quarantine_find_object((void *)info->access_addr, NULL))
+			return "use-after-free";
+		else
+			return "out-of-bounds";
+	} else
+		return "invalid-access";
 }
 
 void *find_first_bad_addr(void *addr, size_t size)
diff --git a/mm/slub.c b/mm/slub.c
index 1b08fbcb7e61..751429d02846 100644
--- a/mm/slub.c
+++ b/mm/slub.c
@@ -3004,7 +3004,7 @@ static __always_inline void slab_free(struct kmem_cache *s, struct page *page,
 		do_slab_free(s, page, head, tail, cnt, addr);
 }
 
-#ifdef CONFIG_KASAN_GENERIC
+#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS_IDENTIFY)
 void ___cache_free(struct kmem_cache *cache, void *x, unsigned long addr)
 {
 	do_slab_free(cache, virt_to_head_page(x), x, NULL, 1, addr);
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
