Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E470C8BF27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OGlAxui9YluveTe+rBMqF20xYTGKaOp0BnG6QwQe9xg=; b=daRHD/e3VCwhO6TGAgknGtbphV
	uIa0Dbqz9wiBcPNb06ZcO8o4S3GOVZzYS900cVcZqFeq81tLyXK5nOmDd/Oq1h3D58ZDmWqcBQdJ/
	Zv4B7OobXHvrAY1xhYJ4ENmYVZM9cefG0X45Oi0x+CPQlhLBo1U6oJxhnxkK1MThBlyIjN3QZ6SG/
	+OaP5S3P/48bGa2AdJvXEHTqLZXG8JFsseQCtWX1UEjNi6mm0q/6JbyQ007clerSYg99kvzN4S0JD
	RAerw5C3AReruczlQFm3W+llZJPceHc+/t0Up4pRUrDkn8PNPPTTAyem/jT09aOCBn5Qclkxza9Un
	T9othxvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaC9-0000QN-Hh; Tue, 13 Aug 2019 17:02:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaBJ-0008MO-Ky
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:01:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB60E15AB;
 Tue, 13 Aug 2019 10:01:56 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CD3453F706;
 Tue, 13 Aug 2019 10:01:55 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/8] arm64: memory: Ensure address tag is masked in conversion
 macros
Date: Tue, 13 Aug 2019 18:01:43 +0100
Message-Id: <20190813170149.26037-3-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190813170149.26037-1-will@kernel.org>
References: <20190813170149.26037-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100157_812267_7970A63B 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When converting a linear virtual address to a physical address, pfn or
struct page *, we must make sure that the tag bits are masked before the
calculation otherwise we end up with corrupt pointers when running with
CONFIG_KASAN_SW_TAGS=y:

  | Unable to handle kernel paging request at virtual address 0037fe0007580d08
  | [0037fe0007580d08] address between user and kernel address ranges

Mask out the tag in __virt_to_phys_nodebug() and virt_to_page().

Reported-by: Qian Cai <cai@lca.pw>
Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Fixes: 9cb1c5ddd2c4 ("arm64: mm: Remove bit-masking optimisations for PAGE_OFFSET and VMEMMAP_START")
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/memory.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 442ab861cab8..47b4dc73b8bf 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -252,7 +252,7 @@ static inline const void *__tag_set(const void *addr, u8 tag)
 #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
 
 #define __virt_to_phys_nodebug(x) ({					\
-	phys_addr_t __x = (phys_addr_t)(x);				\
+	phys_addr_t __x = (phys_addr_t)(__tag_reset(x));		\
 	__is_lm_address(__x) ? __lm_to_phys(__x) :			\
 			       __kimg_to_phys(__x);			\
 })
@@ -324,7 +324,8 @@ static inline void *phys_to_virt(phys_addr_t x)
 	((void *)__addr_tag);						\
 })
 
-#define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
+#define virt_to_page(vaddr)	\
+	((struct page *)((__virt_to_pgoff(__tag_reset(vaddr))) + VMEMMAP_START))
 #endif
 
 #define virt_addr_valid(addr)	({					\
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
