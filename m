Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF001E9D29
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 07:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tMJrLwXpaSQcOqQTY1IDND74bdVC6uJhGLZYMY5V//Q=; b=gA688iUL1rQD7u
	DqynDid2bPC3R1b5FSNt6E4T5+pGIqijrP0cit/xXW4VESph8JyZU4WY/H9Pg9N4s4c7bm4OlaFYC
	gvz0W1bl54ndovdemqebYN7Elj5ZC0gazBhRbQngjJvT+mHh3+TnjjSaXhrW8KVagsd6604dl4LZs
	/X5iQ5pEKEcin4Vocni+suYkidMd6FKkJu4Vj1sTJADF+VjG/Z95TcDVhDtNI3tNuKtry/OcDTWIW
	jjzdyUo+AsKtFwjdDY5CZxJuAp8/1JcH4ggz2BHT3TgbxNzesECNTgTKPfeF4mThuCajPLRh4yPSa
	widIAScXcLMAdNdetE7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfcrJ-0007VW-3b; Mon, 01 Jun 2020 05:19:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfcqm-0007IH-6i; Mon, 01 Jun 2020 05:19:06 +0000
X-UUID: 0b2d4b3c93c64690846a9d1a4742fff8-20200531
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=co+J9kGSLsuZqwzKx9sgfxcjEsF3XOHEfEFldRg7xfo=; 
 b=SfFFeBqNihULQ+ySbcDFYYTrY2H25c4IpfGhsI7KPrX4e5q6FMKWa4dvuDQtgk8fYy84+YmaJhKFjiBOpPG0j95QEGhSeFaFLA9wbBVtdJVu8Q7FQ4aNmuRgIMZYLtgWkwNpr0W5vUletKjfCQPJOW6n8spgbzhbmtL/KAZ6f5Y=;
X-UUID: 0b2d4b3c93c64690846a9d1a4742fff8-20200531
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 481153487; Sun, 31 May 2020 21:18:42 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 31 May 2020 22:10:24 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 13:10:17 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 1 Jun 2020 13:10:17 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>
Subject: [PATCH v7 2/4] kasan: record and print the free track
Date: Mon, 1 Jun 2020 13:10:22 +0800
Message-ID: <20200601051022.1230-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_221904_250829_B81D4791 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Move free track from kasan_alloc_meta to kasan_free_meta in order
to make struct kasan_alloc_meta and kasan_free_meta size are both
16 bytes. It is a good size because it is the minimal redzone size
and a good number of alignment.

For free track, we make some modifications as shown below:
1) Remove the free_track from struct kasan_alloc_meta.
2) Add the free_track into struct kasan_free_meta.
3) Add a macro KASAN_KMALLOC_FREETRACK in order to check whether
   it can print free stack in KASAN report.

[1]https://bugzilla.kernel.org/show_bug.cgi?id=198437

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
Suggested-by: Dmitry Vyukov <dvyukov@google.com>
Co-developed-by: Dmitry Vyukov <dvyukov@google.com>
Reviewed-and-tested-by: Dmitry Vyukov <dvyukov@google.com>
Reviewed-by: Andrey Konovalov <andreyknvl@google.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
---
 mm/kasan/common.c         | 22 ++--------------------
 mm/kasan/generic.c        | 22 ++++++++++++++++++++++
 mm/kasan/generic_report.c |  1 +
 mm/kasan/kasan.h          | 13 +++++++++++--
 mm/kasan/quarantine.c     |  1 +
 mm/kasan/report.c         | 26 ++++----------------------
 mm/kasan/tags.c           | 37 +++++++++++++++++++++++++++++++++++++
 7 files changed, 78 insertions(+), 44 deletions(-)

diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 8bc618289bb1..47b53912f322 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -51,7 +51,7 @@ depot_stack_handle_t kasan_save_stack(gfp_t flags)
 	return stack_depot_save(entries, nr_entries, flags);
 }
 
-static inline void set_track(struct kasan_track *track, gfp_t flags)
+void kasan_set_track(struct kasan_track *track, gfp_t flags)
 {
 	track->pid = current->pid;
 	track->stack = kasan_save_stack(flags);
@@ -299,24 +299,6 @@ struct kasan_free_meta *get_free_info(struct kmem_cache *cache,
 	return (void *)object + cache->kasan_info.free_meta_offset;
 }
 
-
-static void kasan_set_free_info(struct kmem_cache *cache,
-		void *object, u8 tag)
-{
-	struct kasan_alloc_meta *alloc_meta;
-	u8 idx = 0;
-
-	alloc_meta = get_alloc_info(cache, object);
-
-#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
-	idx = alloc_meta->free_track_idx;
-	alloc_meta->free_pointer_tag[idx] = tag;
-	alloc_meta->free_track_idx = (idx + 1) % KASAN_NR_FREE_STACKS;
-#endif
-
-	set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
-}
-
 void kasan_poison_slab(struct page *page)
 {
 	unsigned long i;
@@ -492,7 +474,7 @@ static void *__kasan_kmalloc(struct kmem_cache *cache, const void *object,
 		KASAN_KMALLOC_REDZONE);
 
 	if (cache->flags & SLAB_KASAN)
-		set_track(&get_alloc_info(cache, object)->alloc_track, flags);
+		kasan_set_track(&get_alloc_info(cache, object)->alloc_track, flags);
 
 	return set_tag(object, tag);
 }
diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
index 8acf48882ba2..4b3cbad7431b 100644
--- a/mm/kasan/generic.c
+++ b/mm/kasan/generic.c
@@ -346,3 +346,25 @@ void kasan_record_aux_stack(void *addr)
 	alloc_info->aux_stack[1] = alloc_info->aux_stack[0];
 	alloc_info->aux_stack[0] = kasan_save_stack(GFP_NOWAIT);
 }
+
+void kasan_set_free_info(struct kmem_cache *cache,
+				void *object, u8 tag)
+{
+	struct kasan_free_meta *free_meta;
+
+	free_meta = get_free_info(cache, object);
+	kasan_set_track(&free_meta->free_track, GFP_NOWAIT);
+
+	/*
+	 *  the object was freed and has free track set
+	 */
+	*(u8 *)kasan_mem_to_shadow(object) = KASAN_KMALLOC_FREETRACK;
+}
+
+struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
+				void *object, u8 tag)
+{
+	if (*(u8 *)kasan_mem_to_shadow(object) != KASAN_KMALLOC_FREETRACK)
+		return NULL;
+	return &get_free_info(cache, object)->free_track;
+}
diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
index e200acb2d292..a38c7a9e192a 100644
--- a/mm/kasan/generic_report.c
+++ b/mm/kasan/generic_report.c
@@ -80,6 +80,7 @@ static const char *get_shadow_bug_type(struct kasan_access_info *info)
 		break;
 	case KASAN_FREE_PAGE:
 	case KASAN_KMALLOC_FREE:
+	case KASAN_KMALLOC_FREETRACK:
 		bug_type = "use-after-free";
 		break;
 	case KASAN_ALLOCA_LEFT:
diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
index a7391bc83070..ef655a1c6e15 100644
--- a/mm/kasan/kasan.h
+++ b/mm/kasan/kasan.h
@@ -17,15 +17,17 @@
 #define KASAN_PAGE_REDZONE      0xFE  /* redzone for kmalloc_large allocations */
 #define KASAN_KMALLOC_REDZONE   0xFC  /* redzone inside slub object */
 #define KASAN_KMALLOC_FREE      0xFB  /* object was freed (kmem_cache_free/kfree) */
+#define KASAN_KMALLOC_FREETRACK 0xFA  /* object was freed and has free track set */
 #else
 #define KASAN_FREE_PAGE         KASAN_TAG_INVALID
 #define KASAN_PAGE_REDZONE      KASAN_TAG_INVALID
 #define KASAN_KMALLOC_REDZONE   KASAN_TAG_INVALID
 #define KASAN_KMALLOC_FREE      KASAN_TAG_INVALID
+#define KASAN_KMALLOC_FREETRACK KASAN_TAG_INVALID
 #endif
 
-#define KASAN_GLOBAL_REDZONE    0xFA  /* redzone for global variable */
-#define KASAN_VMALLOC_INVALID   0xF9  /* unallocated space in vmapped page */
+#define KASAN_GLOBAL_REDZONE    0xF9  /* redzone for global variable */
+#define KASAN_VMALLOC_INVALID   0xF8  /* unallocated space in vmapped page */
 
 /*
  * Stack redzone shadow values
@@ -127,6 +129,9 @@ struct kasan_free_meta {
 	 * Otherwise it might be used for the allocator freelist.
 	 */
 	struct qlist_node quarantine_link;
+#ifdef CONFIG_KASAN_GENERIC
+	struct kasan_track free_track;
+#endif
 };
 
 struct kasan_alloc_meta *get_alloc_info(struct kmem_cache *cache,
@@ -168,6 +173,10 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
 struct page *kasan_addr_to_page(const void *addr);
 
 depot_stack_handle_t kasan_save_stack(gfp_t flags);
+void kasan_set_track(struct kasan_track *track, gfp_t flags);
+void kasan_set_free_info(struct kmem_cache *cache, void *object, u8 tag);
+struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
+				void *object, u8 tag);
 
 #if defined(CONFIG_KASAN_GENERIC) && \
 	(defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
diff --git a/mm/kasan/quarantine.c b/mm/kasan/quarantine.c
index 978bc4a3eb51..4c5375810449 100644
--- a/mm/kasan/quarantine.c
+++ b/mm/kasan/quarantine.c
@@ -145,6 +145,7 @@ static void qlink_free(struct qlist_node *qlink, struct kmem_cache *cache)
 	if (IS_ENABLED(CONFIG_SLAB))
 		local_irq_save(flags);
 
+	*(u8 *)kasan_mem_to_shadow(object) = KASAN_KMALLOC_FREE;
 	___cache_free(cache, object, _THIS_IP_);
 
 	if (IS_ENABLED(CONFIG_SLAB))
diff --git a/mm/kasan/report.c b/mm/kasan/report.c
index 2421a4bd9227..fed3c8fdfd25 100644
--- a/mm/kasan/report.c
+++ b/mm/kasan/report.c
@@ -164,26 +164,6 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
 		(void *)(object_addr + cache->object_size));
 }
 
-static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
-		void *object, u8 tag)
-{
-	struct kasan_alloc_meta *alloc_meta;
-	int i = 0;
-
-	alloc_meta = get_alloc_info(cache, object);
-
-#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
-	for (i = 0; i < KASAN_NR_FREE_STACKS; i++) {
-		if (alloc_meta->free_pointer_tag[i] == tag)
-			break;
-	}
-	if (i == KASAN_NR_FREE_STACKS)
-		i = alloc_meta->free_track_idx;
-#endif
-
-	return &alloc_meta->free_track[i];
-}
-
 static void describe_object(struct kmem_cache *cache, void *object,
 				const void *addr, u8 tag)
 {
@@ -195,8 +175,10 @@ static void describe_object(struct kmem_cache *cache, void *object,
 		print_track(&alloc_info->alloc_track, "Allocated");
 		pr_err("\n");
 		free_track = kasan_get_free_track(cache, object, tag);
-		print_track(free_track, "Freed");
-		pr_err("\n");
+		if (free_track) {
+			print_track(free_track, "Freed");
+			pr_err("\n");
+		}
 
 #ifdef CONFIG_KASAN_GENERIC
 		if (alloc_info->aux_stack[0]) {
diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
index 25b7734e7013..201dee5d6ae0 100644
--- a/mm/kasan/tags.c
+++ b/mm/kasan/tags.c
@@ -162,3 +162,40 @@ void __hwasan_tag_memory(unsigned long addr, u8 tag, unsigned long size)
 	kasan_poison_shadow((void *)addr, size, tag);
 }
 EXPORT_SYMBOL(__hwasan_tag_memory);
+
+void kasan_set_free_info(struct kmem_cache *cache,
+				void *object, u8 tag)
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
+	kasan_set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
+}
+
+struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
+				void *object, u8 tag)
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
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
