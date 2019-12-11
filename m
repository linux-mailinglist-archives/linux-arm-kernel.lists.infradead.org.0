Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B1811BC0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/JK3jZW7EDOepu9A+tPseeRc3TRI32WRHE0y14+yTw=; b=WHrn8W7IPgfHbY
	IMT2GCifO+zYUBvRM0zaxAWnsiI+TOdLf8rMiqhGp0Cu9NLajqhSQZu/eNnUx4aL/75Ai78RBBYmR
	XAMxAdg6zVa6jvf3pY2C73y1cCHPQ1zPjX9JpYLvgyw/jkb4nnFDqAuGyIu78S3LcFXgoEhHcfoNm
	atf7d8LynobBl+aM30DvFye8o/jau7xMYQN/Akl8XVY4wbmQ0FWE2uDFXeuZvIw4CGNLQHLa7UIOi
	KnFwTYrtmWAsTSKBSouGaBRykLb03j0l/LNfpzYCHYEc9LoNsjqfUk7Pw8D9Apzx9wgfKJ0zYq2PJ
	Qr4kxV2p6ygQVsqOPkxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6xt-00064R-QM; Wed, 11 Dec 2019 18:44:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6uu-0003HM-7k
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:40:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E47FD1474;
 Wed, 11 Dec 2019 10:40:55 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7A7C13F6CF;
 Wed, 11 Dec 2019 10:40:54 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 11/22] arm64: Tags-aware memcmp_pages() implementation
Date: Wed, 11 Dec 2019 18:40:16 +0000
Message-Id: <20191211184027.20130-12-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104056_396160_F4B3961F 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the Memory Tagging Extension is enabled, two pages are identical
only if both their data and tags are identical.

Make the generic memcmp_pages() a __weak function and add an
arm64-specific implementation which takes care of the tags comparison.

Co-developed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/mte.h | 11 +++++++++
 arch/arm64/lib/Makefile      |  2 ++
 arch/arm64/lib/mte.S         | 46 ++++++++++++++++++++++++++++++++++++
 arch/arm64/mm/Makefile       |  1 +
 arch/arm64/mm/cmppages.c     | 26 ++++++++++++++++++++
 mm/util.c                    |  2 +-
 6 files changed, 87 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/include/asm/mte.h
 create mode 100644 arch/arm64/lib/mte.S
 create mode 100644 arch/arm64/mm/cmppages.c

diff --git a/arch/arm64/include/asm/mte.h b/arch/arm64/include/asm/mte.h
new file mode 100644
index 000000000000..64e814273659
--- /dev/null
+++ b/arch/arm64/include/asm/mte.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_MTE_H
+#define __ASM_MTE_H
+
+#ifndef __ASSEMBLY__
+
+/* Memory Tagging API */
+int mte_memcmp_pages(const void *page1_addr, const void *page2_addr);
+
+#endif /* __ASSEMBLY__ */
+#endif /* __ASM_MTE_H  */
diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
index c21b936dc01d..178879a754b0 100644
--- a/arch/arm64/lib/Makefile
+++ b/arch/arm64/lib/Makefile
@@ -16,3 +16,5 @@ lib-$(CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE) += uaccess_flushcache.o
 obj-$(CONFIG_CRC32) += crc32.o
 
 obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
+
+obj-$(CONFIG_ARM64_MTE) += mte.o
diff --git a/arch/arm64/lib/mte.S b/arch/arm64/lib/mte.S
new file mode 100644
index 000000000000..d41955ab4134
--- /dev/null
+++ b/arch/arm64/lib/mte.S
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 ARM Ltd.
+ */
+#include <linux/linkage.h>
+
+#include <asm/assembler.h>
+
+/*
+ * Compare tags of two pages
+ *   x0 - page1 address
+ *   x1 - page2 address
+ * Returns:
+ *   w0 - negative, zero or positive value if the tag in the first page is
+ *	  less than, equal to or greater than the tag in the second page
+ */
+ENTRY(mte_memcmp_pages)
+	multitag_transfer_size x7, x5
+1:
+	ldgm	x2, [x0]
+	ldgm	x3, [x1]
+
+	eor	x4, x2, x3
+	cbnz	x4, 2f
+
+	add	x0, x0, x7
+	add	x1, x1, x7
+
+	tst	x0, #(PAGE_SIZE - 1)
+	b.ne	1b
+
+	mov	w0, #0
+	ret
+2:
+	rbit	x4, x4
+	clz	x4, x4			// count the least significant equal bits
+	and	x4, x4, #~3		// round down to a multiple of 4 (bits per tag)
+
+	lsr	x2, x2, x4		// remove equal tags
+	lsr	x3, x3, x4
+
+	lsl	w2, w2, #28		// compare the differing tags
+	sub	w0, w2, w3, lsl #28
+
+	ret
+ENDPROC(mte_memcmp_pages)
diff --git a/arch/arm64/mm/Makefile b/arch/arm64/mm/Makefile
index 849c1df3d214..7a556e9a19dc 100644
--- a/arch/arm64/mm/Makefile
+++ b/arch/arm64/mm/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_ARM64_PTDUMP_CORE)	+= dump.o
 obj-$(CONFIG_ARM64_PTDUMP_DEBUGFS)	+= ptdump_debugfs.o
 obj-$(CONFIG_NUMA)		+= numa.o
 obj-$(CONFIG_DEBUG_VIRTUAL)	+= physaddr.o
+obj-$(CONFIG_ARM64_MTE)		+= cmppages.o
 KASAN_SANITIZE_physaddr.o	+= n
 
 obj-$(CONFIG_KASAN)		+= kasan_init.o
diff --git a/arch/arm64/mm/cmppages.c b/arch/arm64/mm/cmppages.c
new file mode 100644
index 000000000000..943c1877e014
--- /dev/null
+++ b/arch/arm64/mm/cmppages.c
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 ARM Ltd.
+ */
+
+#include <linux/mm.h>
+#include <linux/string.h>
+
+#include <asm/cpufeature.h>
+#include <asm/mte.h>
+
+int memcmp_pages(struct page *page1, struct page *page2)
+{
+	char *addr1, *addr2;
+	int ret;
+
+	addr1 = page_address(page1);
+	addr2 = page_address(page2);
+
+	ret = memcmp(addr1, addr2, PAGE_SIZE);
+	/* if page content identical, check the tags */
+	if (ret == 0 && system_supports_mte())
+		ret = mte_memcmp_pages(addr1, addr2);
+
+	return ret;
+}
diff --git a/mm/util.c b/mm/util.c
index 988d11e6c17c..662fb3da6d01 100644
--- a/mm/util.c
+++ b/mm/util.c
@@ -899,7 +899,7 @@ int get_cmdline(struct task_struct *task, char *buffer, int buflen)
 	return res;
 }
 
-int memcmp_pages(struct page *page1, struct page *page2)
+int __weak memcmp_pages(struct page *page1, struct page *page2)
 {
 	char *addr1, *addr2;
 	int ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
