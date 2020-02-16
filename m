Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A231602D9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 09:21:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyDk5v8DfsyVwljYhokAId5Frm/4A7bAwUi3ImA5r5E=; b=j5QD0lLbfkLS8k
	X28z2TehgIxJP8Gtt2/SoQbHdI7AzgovqRnt7gMlQ98CRDilwcnKPk590CMNIYoQNarh6W8YO47ov
	bWJdcTyKrEIAm0zA4sytIZYn432jGg0TfP72nrjLatvYhU1h7LbwqdlYJjWUSn6FIUKRNtzuxxz8R
	Ihd7NDNMFWUoxNJ38PdOtEL+ySYMfzlcfcC0fl23XZa2h8ZS1jc5eojcmK/sLbjSvTjaJYFncMj1E
	kl5cTIzUhlKSfINf2Do6xJ5Ng0Lz3ByRtNqSmfSSyBHWkainq7wQ3VLwuq+C/sd1PH2OjiB8MaBUn
	zbCqJYVrlFnImUPAQTqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3FAa-0005Lb-C7; Sun, 16 Feb 2020 08:20:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3F9T-0003SD-2A
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 08:19:44 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CE7A227BF;
 Sun, 16 Feb 2020 08:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581841182;
 bh=71MnpEc+yFN5lenidv0+rt0LqtwQ5nS0iIQpg548uOQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Wy2OJnniPmauzyvPuXM1rSnjZ+QIN/dI8qvYMe+YlQnoKh7/RdA7/BUNyzslxJlvq
 z3POnN3JZ8sA1lndaJxCBe1sVPRZD4njKdp1QPN16lBjujoOPi+4j/C19LGwv79kZv
 s6GEvyiPxSFMkia/5jxu4RzXpPtIJoxsD47rJZIc=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 05/13] nios2: add support for folded p4d page tables
Date: Sun, 16 Feb 2020 10:18:35 +0200
Message-Id: <20200216081843.28670-6-rppt@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200216081843.28670-1-rppt@kernel.org>
References: <20200216081843.28670-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_001943_162983_CEFAD662 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Yoshinori Sato <ysato@users.sourceforge.jp>, James Morse <james.morse@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

Implement primitives necessary for the 4th level folding, add walks of p4d
level where appropriate and remove usage of __ARCH_USE_5LEVEL_HACK.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/nios2/include/asm/pgtable.h | 3 +--
 arch/nios2/mm/fault.c            | 9 +++++++--
 arch/nios2/mm/ioremap.c          | 6 +++++-
 3 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/arch/nios2/include/asm/pgtable.h b/arch/nios2/include/asm/pgtable.h
index 99985d8b7166..54305aa09b74 100644
--- a/arch/nios2/include/asm/pgtable.h
+++ b/arch/nios2/include/asm/pgtable.h
@@ -22,7 +22,6 @@
 #include <asm/tlbflush.h>
 
 #include <asm/pgtable-bits.h>
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopmd.h>
 
 #define FIRST_USER_ADDRESS	0UL
@@ -100,7 +99,7 @@ extern pte_t invalid_pte_table[PAGE_SIZE/sizeof(pte_t)];
  */
 static inline void set_pmd(pmd_t *pmdptr, pmd_t pmdval)
 {
-	pmdptr->pud.pgd.pgd = pmdval.pud.pgd.pgd;
+	*pmdptr = pmdval;
 }
 
 /* to find an entry in a page-table-directory */
diff --git a/arch/nios2/mm/fault.c b/arch/nios2/mm/fault.c
index 6a2e716b959f..d3da995665c3 100644
--- a/arch/nios2/mm/fault.c
+++ b/arch/nios2/mm/fault.c
@@ -245,6 +245,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs, unsigned long cause,
 		 */
 		int offset = pgd_index(address);
 		pgd_t *pgd, *pgd_k;
+		p4d_t *p4d, *p4d_k;
 		pud_t *pud, *pud_k;
 		pmd_t *pmd, *pmd_k;
 		pte_t *pte_k;
@@ -256,8 +257,12 @@ asmlinkage void do_page_fault(struct pt_regs *regs, unsigned long cause,
 			goto no_context;
 		set_pgd(pgd, *pgd_k);
 
-		pud = pud_offset(pgd, address);
-		pud_k = pud_offset(pgd_k, address);
+		p4d = p4d_offset(pgd, address);
+		p4d_k = p4d_offset(pgd_k, address);
+		if (!p4d_present(*p4d_k))
+			goto no_context;
+		pud = pud_offset(p4d, address);
+		pud_k = pud_offset(p4d_k, address);
 		if (!pud_present(*pud_k))
 			goto no_context;
 		pmd = pmd_offset(pud, address);
diff --git a/arch/nios2/mm/ioremap.c b/arch/nios2/mm/ioremap.c
index 819bdfcc2e71..fe821efb9a99 100644
--- a/arch/nios2/mm/ioremap.c
+++ b/arch/nios2/mm/ioremap.c
@@ -86,11 +86,15 @@ static int remap_area_pages(unsigned long address, unsigned long phys_addr,
 	if (address >= end)
 		BUG();
 	do {
+		p4d_t *p4d;
 		pud_t *pud;
 		pmd_t *pmd;
 
 		error = -ENOMEM;
-		pud = pud_alloc(&init_mm, dir, address);
+		p4d = p4d_alloc(&init_mm, dir, address);
+		if (!p4d)
+			break;
+		pud = pud_alloc(&init_mm, p4d, address);
 		if (!pud)
 			break;
 		pmd = pmd_alloc(&init_mm, pud, address);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
