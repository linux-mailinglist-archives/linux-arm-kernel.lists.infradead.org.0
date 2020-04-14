Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D92D1A8337
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXIGftl96pevIW2HUIJnXwCwMUI/qote0yMcmAKAlBg=; b=T4Kx7Lpdeqes3X
	FckbBTFNUrqV6z/0XpvMbzUz8+dzie7SMVb/nmy5NlrI5YGa6p/+HAVlBczNKsFsJiClxJLRiUgZv
	q5/aPsbQAc2XjL4GWGIiYaPX5EXbie5hFXRob4qBDRsHx3VQYb9FTaHsy6MVQU3demD0SabKQh8bp
	Yu1E0wNZod+U5FYJV+LSzrW1ypN4+E+6NL83Y0EpJaXj8ykO238dJoM/MM6kY+0ChVdd+NWuMM2VN
	SEhLjvl2DWan9xuoZdt/INZIjZSd3Tw3orqX9wyYdCD3VaijdMZ7TFJ6iCMZY+srvCfSD8gzNTXFp
	CaAJ8C7rlcnbM5cslp2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONdt-0003lz-FR; Tue, 14 Apr 2020 15:38:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONc5-0002MC-M2
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:36:40 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C03320678;
 Tue, 14 Apr 2020 15:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586878596;
 bh=ybPPvADQAq307A0mTIfstOnJj2n8fbsD+ITheeuQdo0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t/yCmpCcn8sCzGMmKhQcslmtaEsbx0+I+UZtglQV6ojnIQromBlhZlaLBILJGAd6y
 4Vn8iZPrK0sW8k+OougefKf9e1ZgbFEiDkY2u2fJZMlwXYYyOiu+omc8hiEdMujXQD
 1OSJEg4mIUApPR9xNP/PjDEgG9IK6jvSzBnwpCpg=
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v4 09/14] sh: fault: Modernize printing of kernel messages
Date: Tue, 14 Apr 2020 18:34:50 +0300
Message-Id: <20200414153455.21744-10-rppt@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414153455.21744-1-rppt@kernel.org>
References: <20200414153455.21744-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_083637_778577_1F5A1B05 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Geert Uytterhoeven <geert+renesas@glider.be>

  - Convert from printk() to pr_*(),
  - Add missing continuations,
  - Use "%llx" to format u64,
  - Join multiple prints in show_fault_oops() into a single print.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/sh/mm/fault.c | 39 ++++++++++++++++++---------------------
 1 file changed, 18 insertions(+), 21 deletions(-)

diff --git a/arch/sh/mm/fault.c b/arch/sh/mm/fault.c
index 5f23d7907597..7b74e18b71d7 100644
--- a/arch/sh/mm/fault.c
+++ b/arch/sh/mm/fault.c
@@ -47,10 +47,10 @@ static void show_pte(struct mm_struct *mm, unsigned long addr)
 			pgd = swapper_pg_dir;
 	}
 
-	printk(KERN_ALERT "pgd = %p\n", pgd);
+	pr_alert("pgd = %p\n", pgd);
 	pgd += pgd_index(addr);
-	printk(KERN_ALERT "[%08lx] *pgd=%0*Lx", addr,
-	       (u32)(sizeof(*pgd) * 2), (u64)pgd_val(*pgd));
+	pr_alert("[%08lx] *pgd=%0*llx", addr, (u32)(sizeof(*pgd) * 2),
+		 (u64)pgd_val(*pgd));
 
 	do {
 		pud_t *pud;
@@ -61,33 +61,33 @@ static void show_pte(struct mm_struct *mm, unsigned long addr)
 			break;
 
 		if (pgd_bad(*pgd)) {
-			printk("(bad)");
+			pr_cont("(bad)");
 			break;
 		}
 
 		pud = pud_offset(pgd, addr);
 		if (PTRS_PER_PUD != 1)
-			printk(", *pud=%0*Lx", (u32)(sizeof(*pud) * 2),
-			       (u64)pud_val(*pud));
+			pr_cont(", *pud=%0*llx", (u32)(sizeof(*pud) * 2),
+				(u64)pud_val(*pud));
 
 		if (pud_none(*pud))
 			break;
 
 		if (pud_bad(*pud)) {
-			printk("(bad)");
+			pr_cont("(bad)");
 			break;
 		}
 
 		pmd = pmd_offset(pud, addr);
 		if (PTRS_PER_PMD != 1)
-			printk(", *pmd=%0*Lx", (u32)(sizeof(*pmd) * 2),
-			       (u64)pmd_val(*pmd));
+			pr_cont(", *pmd=%0*llx", (u32)(sizeof(*pmd) * 2),
+				(u64)pmd_val(*pmd));
 
 		if (pmd_none(*pmd))
 			break;
 
 		if (pmd_bad(*pmd)) {
-			printk("(bad)");
+			pr_cont("(bad)");
 			break;
 		}
 
@@ -96,11 +96,11 @@ static void show_pte(struct mm_struct *mm, unsigned long addr)
 			break;
 
 		pte = pte_offset_kernel(pmd, addr);
-		printk(", *pte=%0*Lx", (u32)(sizeof(*pte) * 2),
-		       (u64)pte_val(*pte));
+		pr_cont(", *pte=%0*llx", (u32)(sizeof(*pte) * 2),
+			(u64)pte_val(*pte));
 	} while (0);
 
-	printk("\n");
+	pr_cont("\n");
 }
 
 static inline pmd_t *vmalloc_sync_one(pgd_t *pgd, unsigned long address)
@@ -188,14 +188,11 @@ show_fault_oops(struct pt_regs *regs, unsigned long address)
 	if (!oops_may_print())
 		return;
 
-	printk(KERN_ALERT "BUG: unable to handle kernel ");
-	if (address < PAGE_SIZE)
-		printk(KERN_CONT "NULL pointer dereference");
-	else
-		printk(KERN_CONT "paging request");
-
-	printk(KERN_CONT " at %08lx\n", address);
-	printk(KERN_ALERT "PC:");
+	pr_alert("BUG: unable to handle kernel %s at %08lx\n",
+		 address < PAGE_SIZE ? "NULL pointer dereference"
+				     : "paging request",
+		 address);
+	pr_alert("PC:");
 	printk_address(regs->pc, 1);
 
 	show_pte(NULL, address);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
