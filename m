Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B632CB56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bip5XUmb03ZDSiTHESUHAGN+6SJOT2eIL8kuEeR86SI=; b=axFPzjvq+DMsvp
	Ib5jzSZgAiNt09q7IflxhmA8Dgp1GaDlWIKRVgvTR3kDzfzBESeY5WrR0qQ+lhEEIgKt+sT6zmKgm
	bP3nP+WJX5Zo5fPgD/TB4hAUVA/0erO1IxKB81a9/uVP3sl9ljCFXzmiMeeIakAlRRQZxfHoQ4j9M
	oAkacAz8/CoJ1Cw3oXyq5v0Yhyk090G4FiLt8goaiAF8h96En25siC6uCOH7scYuaDbSgkhO3wxMl
	mK6/mTMCUkTQ122PyBy+Qec9deC+TTdXLZzG80Bvd8LlrizB/rIt37TiNuvMh8k0FtJJBVR4iSphh
	xcsRWUHaR/3gBaE84G0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVejU-0007IH-1M; Tue, 28 May 2019 16:13:48 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeh5-0004rV-E9
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:11:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCDF615AB;
 Tue, 28 May 2019 09:11:18 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 659E73F59C;
 Tue, 28 May 2019 09:11:17 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 11/12] arm64: mm: Tweak PAGE_OFFSET logic
Date: Tue, 28 May 2019 17:10:25 +0100
Message-Id: <20190528161026.13193-12-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091119_870516_CE3F38C9 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch introduces _PAGE_OFFSET(va) to allow for computing the
largest possible direct linear map for use with 48/52-bit selectable
kernel VAs.

Also, this patch removes the PAGE_OFFSET bit masking logic in
virt_to_pgoff as this optimisation can paint us into a corner for
permissible PAGE_OFFSET values in future.

Lastly, this patch modifies the definition of _virt_addr_valid to use
__virt_to_phys rather than a bitmasked PAGE_OFFSET formula.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/include/asm/memory.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index e9af8aa36612..c817ee71e201 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -55,8 +55,9 @@
  * VA_START - the first kernel virtual address.
  */
 #define VA_BITS			(CONFIG_ARM64_VA_BITS)
-#define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
-	(UL(1) << VA_BITS) + 1)
+#define _PAGE_OFFSET(va)	(UL(0xffffffffffffffff) - \
+					(UL(1) << (va)) + 1)
+#define PAGE_OFFSET		(_PAGE_OFFSET(VA_BITS))
 #define PAGE_OFFSET_END		(VA_START)
 #define KIMAGE_VADDR		(MODULES_END)
 #define BPF_JIT_REGION_START	(KASAN_SHADOW_END)
@@ -325,7 +326,7 @@ static inline void *phys_to_virt(phys_addr_t x)
 #define virt_to_page(kaddr)	pfn_to_page(__pa(kaddr) >> PAGE_SHIFT)
 #define _virt_addr_valid(kaddr)	pfn_valid(__pa(kaddr) >> PAGE_SHIFT)
 #else
-#define __virt_to_pgoff(kaddr)	(((u64)(kaddr) & ~PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
+#define __virt_to_pgoff(kaddr)	(((u64)(kaddr) - PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
 #define __page_to_voff(kaddr)	(((u64)(kaddr) - VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
 
 #define page_to_virt(page)	({					\
@@ -338,8 +339,7 @@ static inline void *phys_to_virt(phys_addr_t x)
 
 #define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) | VMEMMAP_START))
 
-#define _virt_addr_valid(kaddr)	pfn_valid((((u64)(kaddr) & ~PAGE_OFFSET) \
-					   + PHYS_OFFSET) >> PAGE_SHIFT)
+#define _virt_addr_valid(kaddr)	pfn_valid(__virt_to_phys((u64)(kaddr)) >> PAGE_SHIFT)
 #endif
 #endif
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
