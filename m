Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BAA1C676A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 07:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4g9jpAT7DcdvIm29UBOqbZahM7acGP//K8Q23c1MdIo=; b=UpbN+QXceiPORo
	jGQi0P0IvwWfno7dNgaQfmfRz2wlcr2YkKTJHcqxVDD/vUE3+9sxXUxPZd/oAxPJwHjXBabGMuI4c
	/ygAPi8J/9b6xMQQLZIANR3rGNRGAV7ZEkJmQN35PzilIfG/PCqx9A1BOxpU1kqlY+7U4kxi2cy/c
	xABWwSJisGs2JjvfWG8ZnBycQlLN0f/JhzhG0RPwyPBLCZ1jyA+sFctrKZ7mlKNnc9CXEZxQJmo2N
	2An9dx1hY1DAxLA8Gqdrgk7xm8pCwDx+gzSqHX6hc0lieybRx2MDGKXWSzxjpoOunieApmy/AK5T9
	KbcSxxT5iyJsX0LIbkrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCVb-00035a-Vv; Wed, 06 May 2020 05:22:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCVU-00034V-Fb; Wed, 06 May 2020 05:22:10 +0000
X-UUID: f034640fdcbd4e75baa140cf878c242f-20200505
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=lTgBW2WWuXjTeKkJYnAtJb3HmcIPptLcokJVsELZxTw=; 
 b=s4FoA3LLrANr2cDEstJiiQZMcGvcPI1bXlSJb9twtE/IoZ1+3EYlclN3xheo+gO6JlSi7Gm3fPChs34hcnC54v7WJjgewYXc5V3P6DeYAfRSr6/ed5+o0AcxWnKxsAjooBc2ETp1MxtvsuxyLD9UG9THkXZB0QO+ZoTbEMFRoIY=;
X-UUID: f034640fdcbd4e75baa140cf878c242f-20200505
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 499038752; Tue, 05 May 2020 21:21:59 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 5 May 2020 22:21:56 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 13:21:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 6 May 2020 13:21:55 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH 2/3] kasan: record and print the free track
Date: Wed, 6 May 2020 13:21:55 +0800
Message-ID: <20200506052155.14515-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_222208_524923_2F532821 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

We add new KASAN_RCU_STACK_RECORD configuration option. It will move
free track from slub meta-data (struct kasan_alloc_meta) into freed object.
Because we hope this options doesn't enlarge slub meta-data size.

This option doesn't enlarge struct kasan_alloc_meta size.
- add two call_rcu() call stack into kasan_alloc_meta, size is 8 bytes.
- remove free track from kasan_alloc_meta, size is 8 bytes.

This option is only suitable for generic KASAN, because we move free track
into the freed object, so free track is valid information only when it
exists in quarantine. If the object is in-use state, then the KASAN report
doesn't print call_rcu() free track information.

[1]https://bugzilla.kernel.org/show_bug.cgi?id=198437

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>
---
 mm/kasan/common.c | 10 +++++++++-
 mm/kasan/report.c | 24 +++++++++++++++++++++---
 2 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 32d422bdf127..13ec03e225a7 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -321,8 +321,15 @@ void kasan_record_callrcu(void *addr)
 		/* record last call_rcu() call stack */
 		alloc_info->rcu_free_stack[1] = save_stack(GFP_NOWAIT);
 }
-#endif
 
+static void kasan_set_free_info(struct kmem_cache *cache,
+		void *object, u8 tag)
+{
+	/* store free track into freed object */
+	set_track((struct kasan_track *)(object + BYTES_PER_WORD), GFP_NOWAIT);
+}
+
+#else
 static void kasan_set_free_info(struct kmem_cache *cache,
 		void *object, u8 tag)
 {
@@ -339,6 +346,7 @@ static void kasan_set_free_info(struct kmem_cache *cache,
 
 	set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
 }
+#endif
 
 void kasan_poison_slab(struct page *page)
 {
diff --git a/mm/kasan/report.c b/mm/kasan/report.c
index 7aaccc70b65b..f2b0c6b9dffa 100644
--- a/mm/kasan/report.c
+++ b/mm/kasan/report.c
@@ -175,8 +175,23 @@ static void kasan_print_rcu_free_stack(struct kasan_alloc_meta *alloc_info)
 	print_track(&free_track, "Last call_rcu() call stack", true);
 	pr_err("\n");
 }
-#endif
 
+static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
+		void *object, u8 tag, const void *addr)
+{
+	u8 *shadow_addr = (u8 *)kasan_mem_to_shadow(addr);
+
+	/*
+	 * Only the freed object can get free track,
+	 * because free track information is stored to freed object.
+	 */
+	if (*shadow_addr == KASAN_KMALLOC_FREE)
+		return (struct kasan_track *)(object + BYTES_PER_WORD);
+	else
+		return NULL;
+}
+
+#else
 static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
 		void *object, u8 tag, const void *addr)
 {
@@ -196,6 +211,7 @@ static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
 
 	return &alloc_meta->free_track[i];
 }
+#endif
 
 static void describe_object(struct kmem_cache *cache, void *object,
 				const void *addr, u8 tag)
@@ -208,8 +224,10 @@ static void describe_object(struct kmem_cache *cache, void *object,
 		print_track(&alloc_info->alloc_track, "Allocated", false);
 		pr_err("\n");
 		free_track = kasan_get_free_track(cache, object, tag, addr);
-		print_track(free_track, "Freed", false);
-		pr_err("\n");
+		if (free_track) {
+			print_track(free_track, "Freed", false);
+			pr_err("\n");
+		}
 #ifdef CONFIG_KASAN_RCU_STACK_RECORD
 		kasan_print_rcu_free_stack(alloc_info);
 #endif
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
