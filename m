Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B14E0981C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 19:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9wRcgHLlt8OSOGPEgu+OtttTMKtM+NyQzNIrUbbbtw=; b=uQs2y078hzAI6J
	jE/91+nG7mqxeN+DO872UbgG1BvceiDi0yhpg+cNoCbp9W7SJbowxDyu6yp1Bd4RhImZEseB2qIOB
	L6mGkE/NUxc8HPpHjgjl7ZjsrXzUeLf7VAd+leAtgilk2sEfAgqHMkFqYoPSAjFgeBmzfvks5DmiL
	DpBm5EGCW8EREDnTwKVP2tbFJjVx8KYQSuaaMeMQHH7nbp3auhZ6gdu7kHvgtxVLrlpbpK+N3zOag
	7WEu7v6QMZZn3CMXImchSnTO/9shv6Zrk7mxR6JA9v91/LooWTqUENUD+slslvyYS1jMEVUkEwWXr
	GJzZbxWbZF7ZDd/hvw7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Umd-0003lF-Kh; Wed, 21 Aug 2019 17:52:31 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0UmQ-0003jj-Sy; Wed, 21 Aug 2019 17:52:22 +0000
Received: from [172.16.25.5] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1i0UmE-0003cz-Ms; Wed, 21 Aug 2019 20:52:06 +0300
Subject: Re: [PATCH v4] kasan: add memory corruption identification for
 software tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>
References: <20190806054340.16305-1-walter-zh.wu@mediatek.com>
 <1566279478.9993.21.camel@mtksdccf07>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <3318f9d7-a760-3cc8-b700-f06108ae745f@virtuozzo.com>
Date: Wed, 21 Aug 2019 20:52:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566279478.9993.21.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_105219_336245_E6B983E4 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: wsd_upstream@mediatek.com, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/20/19 8:37 AM, Walter Wu wrote:
> On Tue, 2019-08-06 at 13:43 +0800, Walter Wu wrote:
>> This patch adds memory corruption identification at bug report for
>> software tag-based mode, the report show whether it is "use-after-free"
>> or "out-of-bound" error instead of "invalid-access" error. This will make
>> it easier for programmers to see the memory corruption problem.
>>
>> We extend the slab to store five old free pointer tag and free backtrace,
>> we can check if the tagged address is in the slab record and make a
>> good guess if the object is more like "use-after-free" or "out-of-bound".
>> therefore every slab memory corruption can be identified whether it's
>> "use-after-free" or "out-of-bound".
>>
>> ====== Changes
>> Change since v1:
>> - add feature option CONFIG_KASAN_SW_TAGS_IDENTIFY.
>> - change QUARANTINE_FRACTION to reduce quarantine size.
>> - change the qlist order in order to find the newest object in quarantine
>> - reduce the number of calling kmalloc() from 2 to 1 time.
>> - remove global variable to use argument to pass it.
>> - correct the amount of qobject cache->size into the byes of qlist_head.
>> - only use kasan_cache_shrink() to shink memory.
>>
>> Change since v2:
>> - remove the shinking memory function kasan_cache_shrink()
>> - modify the description of the CONFIG_KASAN_SW_TAGS_IDENTIFY
>> - optimize the quarantine_find_object() and qobject_free()
>> - fix the duplicating function name 3 times in the header.
>> - modify the function name set_track() to kasan_set_track()
>>
>> Change since v3:
>> - change tag-based quarantine to extend slab to identify memory corruption
> 
> Hi,Andrey,
> 
> Would you review the patch,please?


I didn't notice anything fundamentally wrong, but I find there are some
questionable implementation choices that makes code look weirder than necessary
and harder to understand. So I ended up with cleaning it up, see the diff bellow.
I'll send v5 with that diff folded.




diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 26cb3bcc9258..6c9682ce0254 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -140,7 +140,7 @@ config KASAN_SW_TAGS_IDENTIFY
 	help
 	  This option enables best-effort identification of bug type
 	  (use-after-free or out-of-bounds) at the cost of increased
-	  memory consumption for slab extending.
+	  memory consumption.
 
 config TEST_KASAN
 	tristate "Module for testing KASAN for bug detection"
diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 2cdcb16b9c2d..6814d6d6a023 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -71,7 +71,7 @@ static inline depot_stack_handle_t save_stack(gfp_t flags)
 	return stack_depot_save(entries, nr_entries, flags);
 }
 
-void kasan_set_track(struct kasan_track *track, gfp_t flags)
+static inline void set_track(struct kasan_track *track, gfp_t flags)
 {
 	track->pid = current->pid;
 	track->stack = save_stack(flags);
@@ -304,8 +304,6 @@ size_t kasan_metadata_size(struct kmem_cache *cache)
 struct kasan_alloc_meta *get_alloc_info(struct kmem_cache *cache,
 					const void *object)
 {
-	if (!IS_ENABLED(CONFIG_KASAN_SW_TAGS_IDENTIFY))
-		BUILD_BUG_ON(sizeof(struct kasan_alloc_meta) > 32);
 	return (void *)object + cache->kasan_info.alloc_meta_offset;
 }
 
@@ -316,6 +314,24 @@ struct kasan_free_meta *get_free_info(struct kmem_cache *cache,
 	return (void *)object + cache->kasan_info.free_meta_offset;
 }
 
+
+static void kasan_set_free_info(struct kmem_cache *cache,
+		void *object, u8 tag)
+{
+	struct kasan_alloc_meta *alloc_meta;
+	u8 idx = 0;
+
+	alloc_meta = get_alloc_info(cache, object);
+
+#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
+	idx = alloc_meta->free_track_idx;
+	alloc_meta->free_pointer_tag[idx] = tag;
+	alloc_meta->free_track_idx = (idx + 1) % KASAN_NR_FREE_STACKS;
+#endif
+
+	set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
+}
+
 void kasan_poison_slab(struct page *page)
 {
 	unsigned long i;
@@ -452,11 +468,8 @@ static bool __kasan_slab_free(struct kmem_cache *cache, void *object,
 			unlikely(!(cache->flags & SLAB_KASAN)))
 		return false;
 
-	if (IS_ENABLED(CONFIG_KASAN_SW_TAGS_IDENTIFY))
-		kasan_set_free_info(cache, object, tag);
-	else
-		kasan_set_track(&get_alloc_info(cache, object)->free_track,
-						GFP_NOWAIT);
+	kasan_set_free_info(cache, object, tag);
+
 	quarantine_put(get_free_info(cache, object), cache);
 
 	return IS_ENABLED(CONFIG_KASAN_GENERIC);
@@ -494,8 +507,7 @@ static void *__kasan_kmalloc(struct kmem_cache *cache, const void *object,
 		KASAN_KMALLOC_REDZONE);
 
 	if (cache->flags & SLAB_KASAN)
-		kasan_set_track(&get_alloc_info(cache, object)->alloc_track,
-						flags);
+		set_track(&get_alloc_info(cache, object)->alloc_track, flags);
 
 	return set_tag(object, tag);
 }
diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
index 531a5823e8c6..35cff6bbb716 100644
--- a/mm/kasan/kasan.h
+++ b/mm/kasan/kasan.h
@@ -96,21 +96,17 @@ struct kasan_track {
 };
 
 #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
-#define KASAN_EXTRA_FREE_INFO_COUNT 4
-#define KASAN_TOTAL_FREE_INFO_COUNT  (KASAN_EXTRA_FREE_INFO_COUNT + 1)
-struct extra_free_info {
-	/* Round-robin FIFO array. */
-	struct kasan_track free_track[KASAN_EXTRA_FREE_INFO_COUNT];
-	u8 free_pointer_tag[KASAN_TOTAL_FREE_INFO_COUNT];
-	u8 free_track_tail;
-};
+#define KASAN_NR_FREE_STACKS 5
+#else
+#define KASAN_NR_FREE_STACKS 1
 #endif
 
 struct kasan_alloc_meta {
 	struct kasan_track alloc_track;
-	struct kasan_track free_track;
+	struct kasan_track free_track[KASAN_NR_FREE_STACKS];
 #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
-	struct extra_free_info free_info;
+	u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
+	u8 free_track_idx;
 #endif
 };
 
@@ -160,28 +156,7 @@ void kasan_report(unsigned long addr, size_t size,
 		bool is_write, unsigned long ip);
 void kasan_report_invalid_free(void *object, unsigned long ip);
 
-struct page *addr_to_page(const void *addr);
-
-void kasan_set_track(struct kasan_track *track, gfp_t flags);
-
-#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
-void kasan_set_free_info(struct kmem_cache *cache, void *object, u8 tag);
-struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
-		void *object, u8 tag);
-char *kasan_get_corruption_type(void *addr);
-#else
-static inline void kasan_set_free_info(struct kmem_cache *cache,
-		void *object, u8 tag) { }
-static inline struct kasan_track *kasan_get_free_track(
-		struct kmem_cache *cache, void *object, u8 tag)
-{
-	return NULL;
-}
-static inline char *kasan_get_corruption_type(void *addr)
-{
-	return NULL;
-}
-#endif
+struct page *kasan_addr_to_page(const void *addr);
 
 #if defined(CONFIG_KASAN_GENERIC) && \
 	(defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
diff --git a/mm/kasan/report.c b/mm/kasan/report.c
index 9ea7a4265b42..621782100eaa 100644
--- a/mm/kasan/report.c
+++ b/mm/kasan/report.c
@@ -111,6 +111,14 @@ static void print_track(struct kasan_track *track, const char *prefix)
 	}
 }
 
+struct page *kasan_addr_to_page(const void *addr)
+{
+	if ((addr >= (void *)PAGE_OFFSET) &&
+			(addr < high_memory))
+		return virt_to_head_page(addr);
+	return NULL;
+}
+
 static void describe_object_addr(struct kmem_cache *cache, void *object,
 				const void *addr)
 {
@@ -143,28 +151,42 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
 		(void *)(object_addr + cache->object_size));
 }
 
+static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
+		void *object, u8 tag)
+{
+	struct kasan_alloc_meta *alloc_meta;
+	int i = 0;
+
+	alloc_meta = get_alloc_info(cache, object);
+
+#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
+	for (i = 0; i < KASAN_NR_FREE_STACKS; i++) {
+		if (alloc_meta->free_pointer_tag[i] == tag)
+			break;
+	}
+	if (i == KASAN_NR_FREE_STACKS)
+		i = alloc_meta->free_track_idx;
+#endif
+
+	return &alloc_meta->free_track[i];
+}
+
 static void describe_object(struct kmem_cache *cache, void *object,
-				const void *tagged_addr)
+				const void *addr, u8 tag)
 {
-	void *untagged_addr = reset_tag(tagged_addr);
 	struct kasan_alloc_meta *alloc_info = get_alloc_info(cache, object);
 
 	if (cache->flags & SLAB_KASAN) {
+		struct kasan_track *free_track;
+
 		print_track(&alloc_info->alloc_track, "Allocated");
 		pr_err("\n");
-		if (IS_ENABLED(CONFIG_KASAN_SW_TAGS_IDENTIFY)) {
-			struct kasan_track *free_track;
-			u8 tag = get_tag(tagged_addr);
-
-			free_track = kasan_get_free_track(cache, object, tag);
-			print_track(free_track, "Freed");
-		} else {
-			print_track(&alloc_info->free_track, "Freed");
-			pr_err("\n");
-		}
+		free_track = kasan_get_free_track(cache, object, tag);
+		print_track(free_track, "Freed");
+		pr_err("\n");
 	}
 
-	describe_object_addr(cache, object, untagged_addr);
+	describe_object_addr(cache, object, addr);
 }
 
 static inline bool kernel_or_module_addr(const void *addr)
@@ -345,25 +367,23 @@ static void print_address_stack_frame(const void *addr)
 	print_decoded_frame_descr(frame_descr);
 }
 
-static void print_address_description(void *tagged_addr)
+static void print_address_description(void *addr, u8 tag)
 {
-	void *untagged_addr = reset_tag(tagged_addr);
-	struct page *page = addr_to_page(untagged_addr);
+	struct page *page = kasan_addr_to_page(addr);
 
 	dump_stack();
 	pr_err("\n");
 
 	if (page && PageSlab(page)) {
 		struct kmem_cache *cache = page->slab_cache;
-		void *object = nearest_obj(cache, page,	untagged_addr);
+		void *object = nearest_obj(cache, page,	addr);
 
-		describe_object(cache, object, tagged_addr);
+		describe_object(cache, object, addr, tag);
 	}
 
-	if (kernel_or_module_addr(untagged_addr) &&
-			!init_task_stack_addr(untagged_addr)) {
+	if (kernel_or_module_addr(addr) && !init_task_stack_addr(addr)) {
 		pr_err("The buggy address belongs to the variable:\n");
-		pr_err(" %pS\n", tagged_addr);
+		pr_err(" %pS\n", addr);
 	}
 
 	if (page) {
@@ -371,7 +391,7 @@ static void print_address_description(void *tagged_addr)
 		dump_page(page, "kasan: bad access detected");
 	}
 
-	print_address_stack_frame(untagged_addr);
+	print_address_stack_frame(addr);
 }
 
 static bool row_is_guilty(const void *row, const void *guilty)
@@ -435,25 +455,18 @@ static bool report_enabled(void)
 	return !test_and_set_bit(KASAN_BIT_REPORTED, &kasan_flags);
 }
 
-struct page *addr_to_page(const void *addr)
-{
-	if ((addr >= (void *)PAGE_OFFSET) &&
-			(addr < high_memory))
-		return virt_to_head_page(addr);
-	return NULL;
-}
-
 void kasan_report_invalid_free(void *object, unsigned long ip)
 {
 	unsigned long flags;
+	u8 tag = get_tag(object);
 
+	object = reset_tag(object);
 	start_report(&flags);
 	pr_err("BUG: KASAN: double-free or invalid-free in %pS\n", (void *)ip);
-	print_tags(get_tag(object), reset_tag(object));
+	print_tags(tag, object);
 	pr_err("\n");
-	print_address_description(object);
+	print_address_description(object, tag);
 	pr_err("\n");
-	object = reset_tag(object);
 	print_shadow_for_address(object);
 	end_report(&flags);
 }
@@ -490,7 +503,7 @@ void __kasan_report(unsigned long addr, size_t size, bool is_write, unsigned lon
 	pr_err("\n");
 
 	if (addr_has_shadow(untagged_addr)) {
-		print_address_description(tagged_addr);
+		print_address_description(untagged_addr, get_tag(tagged_addr));
 		pr_err("\n");
 		print_shadow_for_address(info.first_bad_addr);
 	} else {
diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
index 05a11f1cfff7..0e987c9ca052 100644
--- a/mm/kasan/tags.c
+++ b/mm/kasan/tags.c
@@ -161,89 +161,3 @@ void __hwasan_tag_memory(unsigned long addr, u8 tag, unsigned long size)
 	kasan_poison_shadow((void *)addr, size, tag);
 }
 EXPORT_SYMBOL(__hwasan_tag_memory);
-
-#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
-void kasan_set_free_info(struct kmem_cache *cache,
-		void *object, u8 tag)
-{
-	struct kasan_alloc_meta *alloc_meta;
-	struct extra_free_info *free_info;
-	u8 idx;
-
-	alloc_meta = get_alloc_info(cache, object);
-	free_info = &alloc_meta->free_info;
-
-	if (free_info->free_track_tail == 0)
-		free_info->free_track_tail = KASAN_EXTRA_FREE_INFO_COUNT;
-	else
-		free_info->free_track_tail -= 1;
-
-	idx = free_info->free_track_tail;
-	free_info->free_pointer_tag[idx] = tag;
-
-	if (idx == KASAN_EXTRA_FREE_INFO_COUNT)
-		kasan_set_track(&alloc_meta->free_track, GFP_NOWAIT);
-	else
-		kasan_set_track(&free_info->free_track[idx], GFP_NOWAIT);
-}
-
-struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
-		void *object, u8 tag)
-{
-	struct kasan_alloc_meta *alloc_meta;
-	struct extra_free_info *free_info;
-	int idx, i;
-
-	alloc_meta = get_alloc_info(cache, object);
-	free_info = &alloc_meta->free_info;
-
-	for (i = 0; i < KASAN_TOTAL_FREE_INFO_COUNT; i++) {
-		idx = free_info->free_track_tail + i;
-		if (idx >= KASAN_TOTAL_FREE_INFO_COUNT)
-			idx -= KASAN_TOTAL_FREE_INFO_COUNT;
-
-		if (free_info->free_pointer_tag[idx] == tag) {
-			if (idx == KASAN_EXTRA_FREE_INFO_COUNT)
-				return &alloc_meta->free_track;
-			else
-				return &free_info->free_track[idx];
-		}
-	}
-	if (free_info->free_track_tail == KASAN_EXTRA_FREE_INFO_COUNT)
-		return &alloc_meta->free_track;
-	else
-		return &free_info->free_track[free_info->free_track_tail];
-}
-
-char *kasan_get_corruption_type(void *addr)
-{
-	struct kasan_alloc_meta *alloc_meta;
-	struct extra_free_info *free_info;
-	struct page *page;
-	struct kmem_cache *cache;
-	void *object;
-	u8 tag;
-	int idx, i;
-
-	tag = get_tag(addr);
-	addr = reset_tag(addr);
-	page = addr_to_page(addr);
-	if (page && PageSlab(page)) {
-		cache = page->slab_cache;
-		object = nearest_obj(cache, page, addr);
-		alloc_meta = get_alloc_info(cache, object);
-		free_info = &alloc_meta->free_info;
-
-		for (i = 0; i < KASAN_TOTAL_FREE_INFO_COUNT; i++) {
-			idx = free_info->free_track_tail + i;
-			if (idx >= KASAN_TOTAL_FREE_INFO_COUNT)
-				idx -= KASAN_TOTAL_FREE_INFO_COUNT;
-
-			if (free_info->free_pointer_tag[idx] == tag)
-				return "use-after-free";
-		}
-		return "out-of-bounds";
-	}
-	return "invalid-access";
-}
-#endif
diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
index 6d8cdb91c4b6..969ae08f59d7 100644
--- a/mm/kasan/tags_report.c
+++ b/mm/kasan/tags_report.c
@@ -36,10 +36,31 @@
 
 const char *get_bug_type(struct kasan_access_info *info)
 {
-	if (IS_ENABLED(CONFIG_KASAN_SW_TAGS_IDENTIFY))
-		return(kasan_get_corruption_type((void *)info->access_addr));
-	else
-		return "invalid-access";
+#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
+	struct kasan_alloc_meta *alloc_meta;
+	struct kmem_cache *cache;
+	struct page *page;
+	const void *addr;
+	void *object;
+	u8 tag;
+	int i;
+
+	tag = get_tag(info->access_addr);
+	addr = reset_tag(info->access_addr);
+	page = kasan_addr_to_page(addr);
+	if (page && PageSlab(page)) {
+		cache = page->slab_cache;
+		object = nearest_obj(cache, page, (void *)addr);
+		alloc_meta = get_alloc_info(cache, object);
+
+		for (i = 0; i < KASAN_NR_FREE_STACKS; i++)
+			if (alloc_meta->free_pointer_tag[i] == tag)
+				return "use-after-free";
+		return "out-of-bounds";
+	}
+
+#endif
+	return "invalid-access";
 }
 
 void *find_first_bad_addr(void *addr, size_t size)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
