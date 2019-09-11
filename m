Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3460CAF821
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4+scLqlHhBU3p8/HU2o4C4Zwc6xEhzKPjqM3Xkk4NAY=; b=WNQv/RB/NOeRcj
	B1zr1zUGAB5zp5YpvWVmgdlkWJwO8DthWP+9TgdGH4yEepN1Ompg/IVDBm3P4AcgfZq2XMggIpdi+
	if4eqJE0itKRDdvY9gkF/Z501C2MIpEjVKvKKoLX6YZSHltt/q02bjt5nM+T2SPx2/DtTPVi/KP9O
	dXQykW0yx1jtfdWRHcEpwhFj3K0ROPcH47uoN1d7mUhevjdB0VjwJXbQdFS80xXMalw+YYo0/SQha
	4jZaYkG2ynPk6OVSRqJdx6gknR+AQ8axd4em/QZYcpzESrwezSQaMFrcEfDlH1SupRir15ZPWMB49
	sPxRWfKq1p3XKOSqtYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7yAK-0003TV-Mi; Wed, 11 Sep 2019 08:39:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7yA2-0003SF-Ab; Wed, 11 Sep 2019 08:39:35 +0000
X-UUID: 58ddb690ac584148baa79e4ab800ce74-20190911
X-UUID: 58ddb690ac584148baa79e4ab800ce74-20190911
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1633767191; Wed, 11 Sep 2019 00:39:25 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 01:39:25 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 16:39:23 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Sep 2019 16:39:23 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, "Martin
 Schwidefsky" <schwidefsky@de.ibm.com>, Andrey Konovalov
 <andreyknvl@google.com>, Qian Cai <cai@lca.pw>, Vlastimil Babka
 <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v3] mm/kasan: dump alloc and free stack for page allocator
Date: Wed, 11 Sep 2019 16:39:21 +0800
Message-ID: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_013934_373980_AADAD64A 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is KASAN's report adds the alloc/free stack for page allocator
in order to help programmer to see memory corruption caused by the page.

By default, KASAN doesn't record alloc or free stack for page allocator.
It is difficult to fix up the page use-after-free or double-free issue.

We add the following changing:
1) KASAN enable PAGE_OWNER by default to get the alloc stack of the page.
2) Add new feature option to get the free stack of the page.

The new feature KASAN_DUMP_PAGE depends on DEBUG_PAGEALLOC, it will help
to record free stack of the page, it is very helpful for solving the page
use-after-free or double-free issue.

When KASAN_DUMP_PAGE is enabled then KASAN's report will show the last
alloc and free stack of the page, it should be:

BUG: KASAN: use-after-free in kmalloc_pagealloc_uaf+0x70/0x80
Write of size 1 at addr ffffffc0d60e4000 by task cat/115
...
 prep_new_page+0x1c8/0x218
 get_page_from_freelist+0x1ba0/0x28d0
 __alloc_pages_nodemask+0x1d4/0x1978
 kmalloc_order+0x28/0x58
 kmalloc_order_trace+0x28/0xe0
 kmalloc_pagealloc_uaf+0x2c/0x80
page last free stack trace:
 __free_pages_ok+0x116c/0x1630
 __free_pages+0x50/0x78
 kfree+0x1c4/0x250
 kmalloc_pagealloc_uaf+0x38/0x80

Changes since v1:
- slim page_owner and move it into kasan
- enable the feature by default

Changes since v2:
- enable PAGE_OWNER by default
- use DEBUG_PAGEALLOC to get page information

cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
cc: Vlastimil Babka <vbabka@suse.cz>
cc: Andrey Konovalov <andreyknvl@google.com>
Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
 lib/Kconfig.kasan | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 4fafba1a923b..4d59458c0c5a 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -41,6 +41,7 @@ config KASAN_GENERIC
 	select SLUB_DEBUG if SLUB
 	select CONSTRUCTORS
 	select STACKDEPOT
+	select PAGER_OWNER
 	help
 	  Enables generic KASAN mode.
 	  Supported in both GCC and Clang. With GCC it requires version 4.9.2
@@ -63,6 +64,7 @@ config KASAN_SW_TAGS
 	select SLUB_DEBUG if SLUB
 	select CONSTRUCTORS
 	select STACKDEPOT
+	select PAGER_OWNER
 	help
 	  Enables software tag-based KASAN mode.
 	  This mode requires Top Byte Ignore support by the CPU and therefore
@@ -135,6 +137,19 @@ config KASAN_S390_4_LEVEL_PAGING
 	  to 3TB of RAM with KASan enabled). This options allows to force
 	  4-level paging instead.
 
+config KASAN_DUMP_PAGE
+	bool "Dump the last allocation and freeing stack of the page"
+	depends on KASAN
+	select DEBUG_PAGEALLOC
+	help
+	  By default, KASAN enable PAGE_OWNER only to record alloc stack
+	  for page allocator. It is difficult to fix up page use-after-free
+	  or double-free issue.
+	  This feature depends on DEBUG_PAGEALLOC, it will extra record
+	  free stack of page. It is very helpful for solving the page
+	  use-after-free or double-free issue.
+	  This option will have a small memory overhead.
+
 config TEST_KASAN
 	tristate "Module for testing KASAN for bug detection"
 	depends on m && KASAN
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
