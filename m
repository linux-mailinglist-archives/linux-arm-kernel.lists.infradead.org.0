Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5291CCFC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oRwnDh5KAvzGUenorYgK80bKO0CrdKX297DcNnTdJWw=; b=L7Q1bfSYAdj1wX
	NJb2P7Gp9kFrc+Wx8/1ZW6HjR6gUiWgHrpFw63vFEjGUwc7Y6z7lyElkI5uCT0ckgUGkQAIABuyzU
	KN4Ox0HS2VztPE9OSz59M6x5SMwHgfbs8N1ynWIUz896PtsKoTD3qlOAb6e8nPBUnqPckvbDEMHEE
	mu6B35vFwPikSBNKRg/oFtydi9/eRLFSV2izR8k6REKtY8FAzXpUoLWKt9XMTf+EJTHS7PJRsHlRk
	OITL2+883GSr4+O4uQjvLKI0eW3kqnBtzShujKuUEx2vidyMDRkWxHZYeH3prkS6ESAeb+ALDgWL+
	DPv0Xu3uwJZ9Y3flHl6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXyEp-0001d5-6w; Mon, 11 May 2020 02:32:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXyEc-0001cI-FT; Mon, 11 May 2020 02:32:04 +0000
X-UUID: f11051168277475ba4446d47018d1700-20200510
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=AKvJsme/BN0IY0oO7wwke7B4wAJvK+2g3DFOzBvrhf0=; 
 b=RrigfM2lQhETnypvFTLuZl8aFBr0LH8YjK9jp09D0jR7PKCh1HZX+jDGk2OeMVOss6TqaOv7iOh6Z2sCNtEPO6lqXrjpOw8yIok8j0Lr1lKkG/w9pXaAAyMg69L8nyW/Cq7IVsfDIV1/FxYpI9ollOKKkSo9JbCc4DdoyS7fuVA=;
X-UUID: f11051168277475ba4446d47018d1700-20200510
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1886240284; Sun, 10 May 2020 18:31:57 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 10 May 2020 19:31:52 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 10:31:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 11 May 2020 10:31:55 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v2 2/3] kasan: record and print the free track
Date: Mon, 11 May 2020 10:31:53 +0800
Message-ID: <20200511023153.15376-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_193202_518978_B46267F8 
X-CRM114-Status: GOOD (  11.83  )
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

In order not to enlarge slub meta-data size, so we move free track
from slub meta-data (struct kasan_alloc_meta) into freed object.

Modification of struct kasan_alloc_meta:
- add two call_rcu() stack into kasan_alloc_meta, size is 8 bytes.
- remove free track from kasan_alloc_meta, size is 8 bytes.

Because free track is stored in freed object, so that if it is an
allocation objects, then it will not have free track information in
KASAN report.

This feature is only suitable for generic KASAN, because we need to
know whether objects are allocation or free.
- if slub object is allocation state, it will not print free stack.
- if slub oeject is free state, it will print free stack.

[1]https://bugzilla.kernel.org/show_bug.cgi?id=198437

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
Suggested-by: Dmitry Vyukov <dvyukov@google.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>
---
 mm/kasan/common.c  | 22 ++--------------------
 mm/kasan/generic.c | 22 ++++++++++++++++++++++
 mm/kasan/kasan.h   |  4 ++++
 mm/kasan/report.c  | 28 +++++-----------------------
 mm/kasan/tags.c    | 37 +++++++++++++++++++++++++++++++++++++
 5 files changed, 70 insertions(+), 43 deletions(-)

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
index b86880c338e2..dacff05a8107 100644
--- a/mm/kasan/generic.c
+++ b/mm/kasan/generic.c
@@ -354,3 +354,25 @@ struct kasan_track *kasan_get_aux_stack(struct kasan_alloc_meta *alloc_info,
 	return container_of(&alloc_info->rcu_stack[idx],
 						struct kasan_track, stack);
 }
+
+void kasan_set_free_info(struct kmem_cache *cache,
+						void *object, u8 tag)
+{
+	/* store free track into freed object */
+	kasan_set_track((struct kasan_track *)(object + SIZEOF_PTR), GFP_NOWAIT);
+}
+
+struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
+						void *object, u8 tag, const void *addr)
+{
+	u8 *shadow_addr = (u8 *)kasan_mem_to_shadow(addr);
+
+	/*
+	 * Only the freed object can get free track,
+	 * because free track information is stored to freed object.
+	 */
+	if (*shadow_addr == KASAN_KMALLOC_FREE)
+		return (struct kasan_track *)(object + SIZEOF_PTR);
+	else
+		return NULL;
+}
diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
index 1cc1fb7b0de3..f88d13f86ed3 100644
--- a/mm/kasan/kasan.h
+++ b/mm/kasan/kasan.h
@@ -173,6 +173,10 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
 struct page *kasan_addr_to_page(const void *addr);
 
 depot_stack_handle_t kasan_save_stack(gfp_t flags);
+void kasan_set_track(struct kasan_track *track, gfp_t flags);
+void kasan_set_free_info(struct kmem_cache *cache, void *object, u8 tag);
+struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
+				void *object, u8 tag, const void *addr);
 
 #if defined(CONFIG_KASAN_GENERIC) && \
 	(defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
diff --git a/mm/kasan/report.c b/mm/kasan/report.c
index f16a1a210815..51813f02992c 100644
--- a/mm/kasan/report.c
+++ b/mm/kasan/report.c
@@ -163,26 +163,6 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
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
@@ -193,9 +173,11 @@ static void describe_object(struct kmem_cache *cache, void *object,
 
 		print_track(&alloc_info->alloc_track, "Allocated", false);
 		pr_err("\n");
-		free_track = kasan_get_free_track(cache, object, tag);
-		print_track(free_track, "Freed", false);
-		pr_err("\n");
+		free_track = kasan_get_free_track(cache, object, tag, addr);
+		if (free_track) {
+			print_track(free_track, "Freed", false);
+			pr_err("\n");
+		}
 
 		if (IS_ENABLED(CONFIG_KASAN_GENERIC)) {
 			free_track = kasan_get_aux_stack(alloc_info, 0);
diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
index 25b7734e7013..30a27f8c1e6e 100644
--- a/mm/kasan/tags.c
+++ b/mm/kasan/tags.c
@@ -162,3 +162,40 @@ void __hwasan_tag_memory(unsigned long addr, u8 tag, unsigned long size)
 	kasan_poison_shadow((void *)addr, size, tag);
 }
 EXPORT_SYMBOL(__hwasan_tag_memory);
+
+void kasan_set_free_info(struct kmem_cache *cache,
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
+	kasan_set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
+}
+
+struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
+		void *object, u8 tag, const void *addr)
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
