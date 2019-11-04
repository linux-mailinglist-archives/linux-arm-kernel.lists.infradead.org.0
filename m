Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A64ED766
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 03:05:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BmZxzBhvwxwqFQ0XkHsSszIvBOEwLW8s+fdjAwF+wPQ=; b=AUB7C9BnRBlSyI
	StKpMUM2qs01l6GnQtH1qHXCYWvyt/v6qpPlHowpp5v2LnJlMI5i1qWLaizCRyoCVOTHAZhgpMjf/
	fKxvy+ypOVLHIveTKTTPrB46e53dLA30uOz0WL5os/P3oZBAK6Cja6HboO0ZLykLHrEbvPSw5AH+4
	XCiKeo2B2RpsQVT8kDBHG0UGBunIet1RFNo4kKP7EbLYVnRZx0+CAw0188H4uPAma2tfTeZ/oXS9m
	6Gc3USqOQqsCa/VCwq950S6/jZFHJSd5qJNWrtbQPca8/Xs47Gz593nBlHX55FnUNeAShxQX+JNiz
	qVeCmXqgI+DyQntVqL1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRkQ-00068k-RM; Mon, 04 Nov 2019 02:05:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRkI-00067v-QM
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 02:05:33 +0000
X-UUID: f32fdaa2158f4a7980629dc727f914ca-20191103
X-UUID: f32fdaa2158f4a7980629dc727f914ca-20191103
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1678371820; Sun, 03 Nov 2019 18:05:24 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 3 Nov 2019 18:05:23 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 10:05:20 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 4 Nov 2019 10:05:20 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v3 1/2] kasan: detect negative size in memory operation
 function
Date: Mon, 4 Nov 2019 10:05:19 +0800
Message-ID: <20191104020519.27988-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1D3F81C588A033BF399029246331A216836E7AD6682CE88A56765C49DA8899102000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_180530_860227_E0ED19C2 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KASAN missed detecting size is negative numbers in memset(), memcpy(),
and memmove(), it will cause out-of-bounds bug and need to be detected by KASAN.

If size is negative numbers, then it has three reasons to be
defined as heap-out-of-bounds bug type.
1) Casting negative numbers to size_t would indeed turn up as
   a large size_t and its value will be larger than ULONG_MAX/2,
   so that this can qualify as out-of-bounds.
2) If KASAN has new bug type and user-space passes negative size,
   then there are duplicate reports. So don't produce new bug type
   in order to prevent duplicate reports by some systems (e.g. syzbot)
   to report the same bug twice.
3) When size is negative numbers, it may be passed from user-space.
   So we always print heap-out-of-bounds in order to prevent that
   kernel-space and user-space have the same bug but have duplicate
   reports.

KASAN report:

 BUG: KASAN: heap-out-of-bounds in kmalloc_memmove_invalid_size+0x70/0xa0
 Read of size 18446744073709551608 at addr ffffff8069660904 by task cat/72

 CPU: 2 PID: 72 Comm: cat Not tainted 5.4.0-rc1-next-20191004ajb-00001-gdb8af2f372b2-dirty #1
 Hardware name: linux,dummy-virt (DT)
 Call trace:
  dump_backtrace+0x0/0x288
  show_stack+0x14/0x20
  dump_stack+0x10c/0x164
  print_address_description.isra.9+0x68/0x378
  __kasan_report+0x164/0x1a0
  kasan_report+0xc/0x18
  check_memory_region+0x174/0x1d0
  memmove+0x34/0x88
  kmalloc_memmove_invalid_size+0x70/0xa0

[1] https://bugzilla.kernel.org/show_bug.cgi?id=199341


Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
Reported-by: Dmitry Vyukov <dvyukov@google.com>
Suggested-by: Dmitry Vyukov <dvyukov@google.com>
Reviewed-by: Dmitry Vyukov <dvyukov@google.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
Reported-by: kernel test robot <lkp@intel.com>
---
 mm/kasan/common.c         | 18 +++++++++++++-----
 mm/kasan/generic.c        |  5 +++++
 mm/kasan/generic_report.c | 18 ++++++++++++++++++
 mm/kasan/report.c         |  2 +-
 mm/kasan/tags.c           |  5 +++++
 mm/kasan/tags_report.c    | 18 ++++++++++++++++++
 6 files changed, 60 insertions(+), 6 deletions(-)

diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 6814d6d6a023..4ff67e2fd2db 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -99,10 +99,14 @@ bool __kasan_check_write(const volatile void *p, unsigned int size)
 }
 EXPORT_SYMBOL(__kasan_check_write);
 
+extern bool report_enabled(void);
+
 #undef memset
 void *memset(void *addr, int c, size_t len)
 {
-	check_memory_region((unsigned long)addr, len, true, _RET_IP_);
+	if (report_enabled() &&
+	    !check_memory_region((unsigned long)addr, len, true, _RET_IP_))
+		return NULL;
 
 	return __memset(addr, c, len);
 }
@@ -110,8 +114,10 @@ void *memset(void *addr, int c, size_t len)
 #undef memmove
 void *memmove(void *dest, const void *src, size_t len)
 {
-	check_memory_region((unsigned long)src, len, false, _RET_IP_);
-	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
+	if (report_enabled() &&
+	   (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
+	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
+		return NULL;
 
 	return __memmove(dest, src, len);
 }
@@ -119,8 +125,10 @@ void *memmove(void *dest, const void *src, size_t len)
 #undef memcpy
 void *memcpy(void *dest, const void *src, size_t len)
 {
-	check_memory_region((unsigned long)src, len, false, _RET_IP_);
-	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
+	if (report_enabled() &&
+	   (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
+	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
+		return NULL;
 
 	return __memcpy(dest, src, len);
 }
diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
index 616f9dd82d12..02148a317d27 100644
--- a/mm/kasan/generic.c
+++ b/mm/kasan/generic.c
@@ -173,6 +173,11 @@ static __always_inline bool check_memory_region_inline(unsigned long addr,
 	if (unlikely(size == 0))
 		return true;
 
+	if (unlikely((long)size < 0)) {
+		kasan_report(addr, size, write, ret_ip);
+		return false;
+	}
+
 	if (unlikely((void *)addr <
 		kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
 		kasan_report(addr, size, write, ret_ip);
diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
index 36c645939bc9..52a92c7db697 100644
--- a/mm/kasan/generic_report.c
+++ b/mm/kasan/generic_report.c
@@ -107,6 +107,24 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
 
 const char *get_bug_type(struct kasan_access_info *info)
 {
+	/*
+	 * If access_size is negative numbers, then it has three reasons
+	 * to be defined as heap-out-of-bounds bug type.
+	 * 1) Casting negative numbers to size_t would indeed turn up as
+	 *    a large size_t and its value will be larger than ULONG_MAX/2,
+	 *    so that this can qualify as out-of-bounds.
+	 * 2) If KASAN has new bug type and user-space passes negative size,
+	 *    then there are duplicate reports. So don't produce new bug type
+	 *    in order to prevent duplicate reports by some systems
+	 *    (e.g. syzbot) to report the same bug twice.
+	 * 3) When size is negative numbers, it may be passed from user-space.
+	 *    So we always print heap-out-of-bounds in order to prevent that
+	 *    kernel-space and user-space have the same bug but have duplicate
+	 *    reports.
+	 */
+	if ((long)info->access_size < 0)
+		return "heap-out-of-bounds";
+
 	if (addr_has_shadow(info->access_addr))
 		return get_shadow_bug_type(info);
 	return get_wild_bug_type(info);
diff --git a/mm/kasan/report.c b/mm/kasan/report.c
index 621782100eaa..c79e28814e8f 100644
--- a/mm/kasan/report.c
+++ b/mm/kasan/report.c
@@ -446,7 +446,7 @@ static void print_shadow_for_address(const void *addr)
 	}
 }
 
-static bool report_enabled(void)
+bool report_enabled(void)
 {
 	if (current->kasan_depth)
 		return false;
diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
index 0e987c9ca052..b829535a3ad7 100644
--- a/mm/kasan/tags.c
+++ b/mm/kasan/tags.c
@@ -86,6 +86,11 @@ bool check_memory_region(unsigned long addr, size_t size, bool write,
 	if (unlikely(size == 0))
 		return true;
 
+	if (unlikely((long)size < 0)) {
+		kasan_report(addr, size, write, ret_ip);
+		return false;
+	}
+
 	tag = get_tag((const void *)addr);
 
 	/*
diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
index 969ae08f59d7..f7ae474aef3a 100644
--- a/mm/kasan/tags_report.c
+++ b/mm/kasan/tags_report.c
@@ -36,6 +36,24 @@
 
 const char *get_bug_type(struct kasan_access_info *info)
 {
+	/*
+	 * If access_size is negative numbers, then it has three reasons
+	 * to be defined as heap-out-of-bounds bug type.
+	 * 1) Casting negative numbers to size_t would indeed turn up as
+	 *    a large size_t and its value will be larger than ULONG_MAX/2,
+	 *    so that this can qualify as out-of-bounds.
+	 * 2) If KASAN has new bug type and user-space passes negative size,
+	 *    then there are duplicate reports. So don't produce new bug type
+	 *    in order to prevent duplicate reports by some systems
+	 *    (e.g. syzbot) to report the same bug twice.
+	 * 3) When size is negative numbers, it may be passed from user-space.
+	 *    So we always print heap-out-of-bounds in order to prevent that
+	 *    kernel-space and user-space have the same bug but have duplicate
+	 *    reports.
+	 */
+	if ((long)info->access_size < 0)
+		return "heap-out-of-bounds";
+
 #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
 	struct kasan_alloc_meta *alloc_meta;
 	struct kmem_cache *cache;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
