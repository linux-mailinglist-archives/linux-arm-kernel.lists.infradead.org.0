Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBB98BF26
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f9ugGE9C8Q8skteS3vaPuQhaXZn9ePwHK+1CTRodhek=; b=BHwUpr92NaQq4pZ6QqeeLoFK3s
	9IP1PXM/g23jpRwBUOOt28wp7Qohbpzp14cEz4/De90TqxER8+ekF8h5+u0D6uNO/TctXvVmTIiTT
	OXMM38Py15k/G5mzxUvgJORgpBO3N7QTwRtmhBB6Pph6S6bgTblmEdyW/D8tNprTGIrzBdFXLZG7Q
	25ourV0oOaRkNgDaDyNTvRynvKRQm6/KiQPcTDcsg+1M1KtSBu2lVaBWLIcSgMnkltrg9nsEfWtDQ
	sLc7PD9YbMGjj8S+c1kHSmbdNiaCMAqOFm+G1z6lB9wgWgFydV88xRH3GmZptI29oL31GH+P9gPh2
	K/d+SW7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaBu-0000Ac-LQ; Tue, 13 Aug 2019 17:02:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaBH-0008Kb-Tx
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:01:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 97BA315A2;
 Tue, 13 Aug 2019 10:01:55 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 79D333F706;
 Tue, 13 Aug 2019 10:01:54 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Date: Tue, 13 Aug 2019 18:01:42 +0100
Message-Id: <20190813170149.26037-2-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190813170149.26037-1-will@kernel.org>
References: <20190813170149.26037-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100156_093345_3A379A0E 
X-CRM114-Status: GOOD (  11.23  )
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

virt_addr_valid() is intended to test whether or not the passed address
is a valid linear map address. Unfortunately, it relies on
_virt_addr_is_linear() which is broken because it assumes the linear
map is at the top of the address space, which it no longer is.

Reimplement virt_addr_valid() using __is_lm_address() and remove
_virt_addr_is_linear() entirely. At the same time, ensure we evaluate
the macro parameter only once and move it within the __ASSEMBLY__ block.

Reported-by: Qian Cai <cai@lca.pw>
Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Fixes: 14c127c957c1 ("arm64: mm: Flip kernel VA space")
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/memory.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index afaf512c0e1b..442ab861cab8 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
 /*
  * The linear kernel range starts in the middle of the virtual adddress
  * space. Testing the top bit for the start of the region is a
- * sufficient check.
+ * sufficient check and avoids having to worry about the tag.
  */
-#define __is_lm_address(addr)	(!((addr) & BIT(vabits_actual - 1)))
+#define __is_lm_address(addr)	(!(((u64)addr) & BIT(vabits_actual - 1)))
 
 #define __lm_to_phys(addr)	(((addr) + physvirt_offset))
 #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
@@ -326,13 +326,13 @@ static inline void *phys_to_virt(phys_addr_t x)
 
 #define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
 #endif
-#endif
 
-#define _virt_addr_is_linear(kaddr)	\
-	(__tag_reset((u64)(kaddr)) >= PAGE_OFFSET)
+#define virt_addr_valid(addr)	({					\
+	__typeof__(addr) __addr = addr;					\
+	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
+})
 
-#define virt_addr_valid(kaddr)		\
-	(_virt_addr_is_linear(kaddr) && pfn_valid(virt_to_pfn(kaddr)))
+#endif
 
 /*
  * Given that the GIC architecture permits ITS implementations that can only be
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
