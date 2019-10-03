Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C220C9B02
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 11:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3Kg2gVdhoFIVo3G9PgEi7HN9hQch+W3Z3C4/vOJhi7c=; b=R8t
	d9jrgOivVkYKRS0usCphZP60eT5AmVpFpofTrEnCqPGl6h0RVlxIlx6t82uiSnDWhu3mrZgUUojAj
	OZltPoSZRWRe+buGJPodOueTpavNqmtlgwIrV7GlKp1nZeowRZLBeVeKAflN58w7yg/hGQMwPExDk
	u0JRj24Fu8kcfuDqeECj0D+6mlrw/lpRD+YYJDQ7538n+Ka/ev3mXJ8JCGWIpFVGUhdHFU/4V0luM
	SobYK3Lj6070qQ/SU/KAK2xuGhWTzQbvP5rg9vXiA2bXZlA8A96kTVdZAc0LINNmX26stsRB2xH4J
	rGPciJFiGyQBQonbQt1u23qnYydRNSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxk9-0006iU-Gk; Thu, 03 Oct 2019 09:49:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxk2-0006hk-9Q
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 09:49:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 969A61000;
 Thu,  3 Oct 2019 02:49:39 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C900A3F739;
 Thu,  3 Oct 2019 02:49:38 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: mm: avoid virt_to_phys(init_mm.pgd)
Date: Thu,  3 Oct 2019 10:49:32 +0100
Message-Id: <20191003094932.10216-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_024946_373560_1E90C4A2 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we take an unhandled fault in the kernel, we call show_pte() to dump
the {PGDP,PGD,PUD,PMD,PTE} values for the corresponding page table walk,
where the PGDP value is virt_to_phys(mm->pgd).

The boot-time and runtime kernel page tables, init_pg_dir and
swapper_pg_dir respectively, are kernel symbols. Thus, it is not valid
to call virt_to_phys() on either of these, though we'll do so if we take
a fault on a TTBR1 address.

When CONFIG_DEBUG_VIRTUAL is not selected, virt_to_phys() will silently
fix this up. However, when CONFIG_DEBUG_VIRTUAL is selected, this
results in splats as below. Depending on when these occur, they can
happen to suppress information needed to debug the original unhandled
fault, such as the backtrace:

| Unable to handle kernel paging request at virtual address ffff7fffec73cf0f
| Mem abort info:
|   ESR = 0x96000004
|   EC = 0x25: DABT (current EL), IL = 32 bits
|   SET = 0, FnV = 0
|   EA = 0, S1PTW = 0
| Data abort info:
|   ISV = 0, ISS = 0x00000004
|   CM = 0, WnR = 0
| ------------[ cut here ]------------
| virt_to_phys used for non-linear address: 00000000102c9dbe (swapper_pg_dir+0x0/0x1000)
| WARNING: CPU: 1 PID: 7558 at arch/arm64/mm/physaddr.c:15 __virt_to_phys+0xe0/0x170 arch/arm64/mm/physaddr.c:12
| Kernel panic - not syncing: panic_on_warn set ...
| SMP: stopping secondary CPUs
| Dumping ftrace buffer:
|    (ftrace buffer empty)
| Kernel Offset: disabled
| CPU features: 0x0002,23000438
| Memory Limit: none
| Rebooting in 1 seconds..

We can avoid this by ensuring that we call __pa_symbol() for
init_mm.pgd, as this will always be a kernel symbol. As the dumped
{PGD,PUD,PMD,PTE} values are the raw values from the relevant entries we
don't need to handle these specially.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/mm/fault.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 115d7a0e4b08..6acd866f31fd 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -113,6 +113,15 @@ static inline bool is_ttbr1_addr(unsigned long addr)
 	return arch_kasan_reset_tag(addr) >= PAGE_OFFSET;
 }
 
+static inline unsigned long mm_to_pgd_phys(struct mm_struct *mm)
+{
+	/* Either init_pg_dir or swapper_pg_dir */
+	if (mm == &init_mm)
+		return __pa_symbol(mm->pgd);
+
+	return (unsigned long)virt_to_phys(mm->pgd);
+}
+
 /*
  * Dump out the page tables associated with 'addr' in the currently active mm.
  */
@@ -141,7 +150,7 @@ static void show_pte(unsigned long addr)
 
 	pr_alert("%s pgtable: %luk pages, %llu-bit VAs, pgdp=%016lx\n",
 		 mm == &init_mm ? "swapper" : "user", PAGE_SIZE / SZ_1K,
-		 vabits_actual, (unsigned long)virt_to_phys(mm->pgd));
+		 vabits_actual, mm_to_pgd_phys(mm));
 	pgdp = pgd_offset(mm, addr);
 	pgd = READ_ONCE(*pgdp);
 	pr_alert("[%016lx] pgd=%016llx", addr, pgd_val(pgd));
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
