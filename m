Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F413B700
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UQaTGB0NSXspAHwQf0dEyh7Vk+nEDaoVxj0Yz3YWSuo=; b=Qht
	DZJ5UxB8owmxvtTXFtADOk+Gwdg8Rv2p1g5ONtFKhBaA4sf4FJUbCROD+ijUgLCXxv/WWKT6KfSEI
	V5wy6YfRLRDH0L5O9EqEdYq8jsnO11G2WNnyLn49SvwZthfwLTXSHKiOsXJuuEWlY4oFIK98LD2/v
	GBzSdF5ipK83C52K4BCCrmEtn5kxRhkVTe8I4Hpp7cxFKeFTK88kuFNLDy5qtgXNK7/VJ8L0pUIRh
	eKka8Qs7C73Fe8hfhF6bJRrnoqL6hOqhUUl/PS4qT2sejxtmOERQaQZCLz3/T2apMsRknM/JQdDhN
	84rxekWTTjQXv9RpV7r0NtAEEyxL95A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haL2L-00025x-24; Mon, 10 Jun 2019 14:12:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haL29-000253-Kn
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:12:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54E5D346;
 Mon, 10 Jun 2019 07:12:23 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E49C33F73C;
 Mon, 10 Jun 2019 07:12:18 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	linux-kernel@vger.kernel.org
Subject: [RFC] mm/ioremap: Probe platform for p4d huge map support
Date: Mon, 10 Jun 2019 19:42:26 +0530
Message-Id: <1560175946-25231-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_071225_771857_FF4DB4E6 
X-CRM114-Status: GOOD (  13.12  )
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
 Andrew Morton <akpm@linux-foundation.org>,
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

- Detected this from code audit while reviewing Nicholas Piggin's ioremap
  changes https://patchwork.kernel.org/project/linux-mm/list/?series=129479

- Build and boot tested on x86 and arm64 platforms
- Build tested on some others

 arch/arm64/mm/mmu.c   | 5 +++++
 arch/x86/mm/ioremap.c | 5 +++++
 include/linux/io.h    | 1 +
 lib/ioremap.c         | 2 ++
 4 files changed, 13 insertions(+)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a1bfc4413982..646c82922d77 100644
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
index 4b6423e7bd21..6cbbec83991d 100644
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
index 32e30e8fb9db..58514cebfce6 100644
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
index 063213685563..c3dc213b6980 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
