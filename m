Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42651432E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 08:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SKFmMycs/akaYWMStDCTwJGyULDpnKbgkn/JmSc8gPs=; b=rax
	Z9tGfpbkPuUo1/jW0fruVLhK/K1PEgme6hUgj7pRGUnOICN6we4UxJOzytQbPUsfGueD37AhHvgFq
	bsR4NCMYJWuIx4/EDF+C7krSx/gCqTPzkoeT2+JczTlNvhcwnzkz+6Q+a0ecy1BbdevwPW+aM+UkN
	9SsvX9o1ArvOF8sFQPS69zBCMcjW2y+7kUJm8SKEDva8Poz0iqK7mn3lKvGHDrtML2BnNvLien+qo
	PIuyf3WabZUU9oEZ32Qxa1N66AkqBmNueE2N9rtOeesagMHuNT29lEvjUuiIHvd7xXtYr4fdgZRMG
	Sw6b51iJtsd1qv1cBo2R6B+hY5n6ySg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJ5k-0007P9-Q4; Thu, 13 Jun 2019 06:20:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJ5U-0007Ol-TR
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 06:19:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F15028;
 Wed, 12 Jun 2019 23:19:50 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.191])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3CB5A3F73C;
 Wed, 12 Jun 2019 23:19:46 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org, akpm@linux-foundation.org
Subject: [PATCH] mm/ioremap: Probe platform for p4d huge map support
Date: Thu, 13 Jun 2019 11:49:41 +0530
Message-Id: <1560406781-14253-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_231953_041971_45164C41 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: x86@kernel.org, Anshuman Khandual <anshuman.khandual@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 Michal Hocko <mhocko@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Finishing up what the commit c2febafc67734a ("mm: convert generic code to
5-level paging") started out while levelling up P4D huge mapping support
at par with PUD and PMD. A new arch call back arch_ioremap_p4d_supported()
is being added which just maintains status quo (P4D huge map not supported)
on x86 and arm64.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: x86@kernel.org

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
- Detected this from code audit while reviewing Nicholas Piggin's proposed
  ioremap changes https://patchwork.kernel.org/project/linux-mm/list/?series=129479
- Build and boot tested on x86 and arm64 platforms
- Build tested on some others

Changes in V1:

- No changes

Original RFC (https://patchwork.kernel.org/patch/10985009/)

 arch/arm64/mm/mmu.c   | 5 +++++
 arch/x86/mm/ioremap.c | 5 +++++
 include/linux/io.h    | 1 +
 lib/ioremap.c         | 2 ++
 4 files changed, 13 insertions(+)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a1bfc44..646c829 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -953,6 +953,11 @@ void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
 	return dt_virt;
 }
 
+int __init arch_ioremap_p4d_supported(void)
+{
+	return 0;
+}
+
 int __init arch_ioremap_pud_supported(void)
 {
 	/*
diff --git a/arch/x86/mm/ioremap.c b/arch/x86/mm/ioremap.c
index 4b6423e..6cbbec8 100644
--- a/arch/x86/mm/ioremap.c
+++ b/arch/x86/mm/ioremap.c
@@ -440,6 +440,11 @@ void iounmap(volatile void __iomem *addr)
 }
 EXPORT_SYMBOL(iounmap);
 
+int __init arch_ioremap_p4d_supported(void)
+{
+	return 0;
+}
+
 int __init arch_ioremap_pud_supported(void)
 {
 #ifdef CONFIG_X86_64
diff --git a/include/linux/io.h b/include/linux/io.h
index 32e30e8..58514ce 100644
--- a/include/linux/io.h
+++ b/include/linux/io.h
@@ -45,6 +45,7 @@ static inline int ioremap_page_range(unsigned long addr, unsigned long end,
 
 #ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
 void __init ioremap_huge_init(void);
+int arch_ioremap_p4d_supported(void);
 int arch_ioremap_pud_supported(void);
 int arch_ioremap_pmd_supported(void);
 #else
diff --git a/lib/ioremap.c b/lib/ioremap.c
index 0632136..c3dc213 100644
--- a/lib/ioremap.c
+++ b/lib/ioremap.c
@@ -30,6 +30,8 @@ early_param("nohugeiomap", set_nohugeiomap);
 void __init ioremap_huge_init(void)
 {
 	if (!ioremap_huge_disabled) {
+		if (arch_ioremap_p4d_supported())
+			ioremap_p4d_capable = 1;
 		if (arch_ioremap_pud_supported())
 			ioremap_pud_capable = 1;
 		if (arch_ioremap_pmd_supported())
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
