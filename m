Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3D81D576F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhuWiiDyB0pzThdxLEaOYwtpKtXXpQ5WF4LirXwmyQc=; b=MsyzG/ufCt8GIi
	4r6JgxZHzDaSSpu8XH/fpnJKbKHG8KQ4Rb78D7aI1ptept8wXj3JYou4uPwWYnsaXCRjUcH8jNroT
	dDbNAYQBYte/mNgLfJimYv+bRC+BW5QADOlrhbjf3CmbI2+Wr1KTKu+vO264ssyANf54/DxMj6KZn
	IJ3CnbQ6kYubriNE7nvjJrcAg50T1UrCUqt0bcNZlZ1xuby6Pw4duoDmv5zp0SEsdHf+CGLq6z0Xa
	xGcACiDtJRZKhOvwNxwweV2I0p+gbFaUqpZVpbGfrrbGld8p9t6VP/14C+ls4dr6hPVbn/oXPNw6n
	w4X03fTBJG27ZKMk/NtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdzS-0004Y0-Sw; Fri, 15 May 2020 17:19:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdwt-0002Ja-4Y
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:16:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 735701063;
 Fri, 15 May 2020 10:16:38 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D68D93F305;
 Fri, 15 May 2020 10:16:36 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 08/26] arm64: mte: Tags-aware copy_page() implementation
Date: Fri, 15 May 2020 18:15:54 +0100
Message-Id: <20200515171612.1020-9-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101639_262809_4980C904 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vincenzo Frascino <vincenzo.frascino@arm.com>

When the Memory Tagging Extension is enabled, the tags need to be
preserved across page copy (e.g. for copy-on-write).

Introduce MTE-aware copy_page() which preserves the tags across page
copy.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---

Notes:
    v4:
    - Moved the tag copying to a separate function in mte.S and only called
      if the source page has the PG_mte_tagged flag set.

 arch/arm64/include/asm/mte.h |  4 ++++
 arch/arm64/lib/mte.S         | 19 +++++++++++++++++++
 arch/arm64/mm/copypage.c     | 14 ++++++++++++--
 3 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/mte.h b/arch/arm64/include/asm/mte.h
index 4310a7ff10c0..c1a09499c678 100644
--- a/arch/arm64/include/asm/mte.h
+++ b/arch/arm64/include/asm/mte.h
@@ -19,6 +19,7 @@ void mte_clear_page_tags(void *addr, size_t size);
 #define PG_mte_tagged	PG_arch_2
 
 void mte_sync_tags(pte_t *ptep, pte_t pte);
+void mte_copy_page_tags(void *kto, const void *kfrom);
 void flush_mte_state(void);
 
 #else
@@ -29,6 +30,9 @@ void flush_mte_state(void);
 static inline void mte_sync_tags(pte_t *ptep, pte_t pte)
 {
 }
+static inline void mte_copy_page_tags(void *kto, const void *kfrom)
+{
+}
 static inline void flush_mte_state(void)
 {
 }
diff --git a/arch/arm64/lib/mte.S b/arch/arm64/lib/mte.S
index 130fb7047e17..a531b52fa5ba 100644
--- a/arch/arm64/lib/mte.S
+++ b/arch/arm64/lib/mte.S
@@ -5,6 +5,7 @@
 #include <linux/linkage.h>
 
 #include <asm/assembler.h>
+#include <asm/page.h>
 
 	.arch	armv8.5-a+memtag
 
@@ -21,3 +22,21 @@ SYM_FUNC_START(mte_clear_page_tags)
 	cbnz	x1, 1b
 	ret
 SYM_FUNC_END(mte_clear_page_tags)
+
+/*
+ * Copy the tags from the source page to the destination one
+ *   x0 - address of the destination page
+ *   x1 - address of the source page
+ */
+SYM_FUNC_START(mte_copy_page_tags)
+	mov	x2, x0
+	mov	x3, x1
+	multitag_transfer_size x5, x6
+1:	ldgm	x4, [x3]
+	stgm	x4, [x2]
+	add	x2, x2, x5
+	add	x3, x3, x5
+	tst	x2, #(PAGE_SIZE - 1)
+	b.ne	1b
+2:
+SYM_FUNC_END(mte_copy_page_tags)
diff --git a/arch/arm64/mm/copypage.c b/arch/arm64/mm/copypage.c
index 2ee7b73433a5..2560ddc479ac 100644
--- a/arch/arm64/mm/copypage.c
+++ b/arch/arm64/mm/copypage.c
@@ -6,16 +6,26 @@
  * Copyright (C) 2012 ARM Ltd.
  */
 
+#include <linux/bitops.h>
 #include <linux/mm.h>
 
 #include <asm/page.h>
 #include <asm/cacheflush.h>
+#include <asm/cpufeature.h>
+#include <asm/mte.h>
 
 void __cpu_copy_user_page(void *kto, const void *kfrom, unsigned long vaddr)
 {
-	struct page *page = virt_to_page(kto);
+	struct page *to_page = virt_to_page(kto);
+	struct page *from_page = virt_to_page(kfrom);
+
 	copy_page(kto, kfrom);
-	flush_dcache_page(page);
+	if (system_supports_mte() &&
+	    test_bit(PG_mte_tagged, &from_page->flags)) {
+		mte_copy_page_tags(kto, kfrom);
+		set_bit(PG_mte_tagged, &to_page->flags);
+	}
+	flush_dcache_page(to_page);
 }
 EXPORT_SYMBOL_GPL(__cpu_copy_user_page);
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
