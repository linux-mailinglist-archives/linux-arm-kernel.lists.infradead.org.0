Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45D3171329
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 09:50:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0NE1aBxlYAy3B66IDDa/8uA83uzlXnDIobYetqGp1U=; b=MlR6SRc7ArHtuT
	qEVIz9CTMWNOmvjII79C01vQEtExB+JZkCfdX7UyJG2jXB1/4MwpgPURHPNdtpmezKqmfcO58VXTw
	fvGfP5U/9VVDmGXizPd5Esu5cFHPn/SERIGSiA30ua3aCP/LHDRs6JhNlyGMubRWpG42JPWZWWoHu
	Vs/CYXw2yb82FX4hXOiDJq4hh2CWpLkiT1WMotAxZUgTCqp3zRtOTdOIi/vzyjfMzqCB0QesmT7qH
	8A5C/I21NAZnPcRyP2HaxnXV+XCw22f4uq8sTiUWvyiZVrgFR++iAw7o4TjzpcEuH514h0sMfexSw
	bggjyduEYK4BsPW/D+rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Err-0005kO-SI; Thu, 27 Feb 2020 08:50:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Er5-0005Oa-FU
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 08:49:16 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1FE62467B;
 Thu, 27 Feb 2020 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582793355;
 bh=W4eq3oKBNtn5njtCQFUl0E8W7deUmxpRXFBznDlnmPc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GWg6a4X86jnLVYeXklLgcO156TnY++Xe71DSE6B1Y2Dk/Puxcd0a8LMs3S0xl5CFX
 5YlbgPgfYKgyFMe1wYpSYNS9erfRpNc1gh2Fq6vTszeT2r9rd+OFjzSzuA3OpDO4u2
 Mmx5ZuMnIcG1AOK95gK1Usu2hj4aFWzw+k/5D5Ss=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 06/14] openrisc: add support for folded p4d page tables
Date: Thu, 27 Feb 2020 10:46:00 +0200
Message-Id: <20200227084608.18223-7-rppt@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200227084608.18223-1-rppt@kernel.org>
References: <20200227084608.18223-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_004915_577301_CC88377C 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/openrisc/include/asm/pgtable.h |  1 -
 arch/openrisc/mm/fault.c            | 10 ++++++++--
 arch/openrisc/mm/init.c             |  4 +++-
 3 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/arch/openrisc/include/asm/pgtable.h b/arch/openrisc/include/asm/pgtable.h
index 248d22d8faa7..c072943fc721 100644
--- a/arch/openrisc/include/asm/pgtable.h
+++ b/arch/openrisc/include/asm/pgtable.h
@@ -21,7 +21,6 @@
 #ifndef __ASM_OPENRISC_PGTABLE_H
 #define __ASM_OPENRISC_PGTABLE_H
 
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopmd.h>
 
 #ifndef __ASSEMBLY__
diff --git a/arch/openrisc/mm/fault.c b/arch/openrisc/mm/fault.c
index 5d4d3a9691d0..44aa04545de3 100644
--- a/arch/openrisc/mm/fault.c
+++ b/arch/openrisc/mm/fault.c
@@ -296,6 +296,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs, unsigned long address,
 
 		int offset = pgd_index(address);
 		pgd_t *pgd, *pgd_k;
+		p4d_t *p4d, *p4d_k;
 		pud_t *pud, *pud_k;
 		pmd_t *pmd, *pmd_k;
 		pte_t *pte_k;
@@ -322,8 +323,13 @@ asmlinkage void do_page_fault(struct pt_regs *regs, unsigned long address,
 		 * it exists.
 		 */
 
-		pud = pud_offset(pgd, address);
-		pud_k = pud_offset(pgd_k, address);
+		p4d = p4d_offset(pgd, address);
+		p4d_k = p4d_offset(pgd_k, address);
+		if (!p4d_present(*p4d_k))
+			goto no_context;
+
+		pud = pud_offset(p4d, address);
+		pud_k = pud_offset(p4d_k, address);
 		if (!pud_present(*pud_k))
 			goto no_context;
 
diff --git a/arch/openrisc/mm/init.c b/arch/openrisc/mm/init.c
index 1f87b524db78..2536aeae0975 100644
--- a/arch/openrisc/mm/init.c
+++ b/arch/openrisc/mm/init.c
@@ -71,6 +71,7 @@ static void __init map_ram(void)
 	unsigned long v, p, e;
 	pgprot_t prot;
 	pgd_t *pge;
+	p4d_t *p4e;
 	pud_t *pue;
 	pmd_t *pme;
 	pte_t *pte;
@@ -90,7 +91,8 @@ static void __init map_ram(void)
 
 		while (p < e) {
 			int j;
-			pue = pud_offset(pge, v);
+			p4e = p4d_offset(pge, v);
+			pue = pud_offset(p4e, v);
 			pme = pmd_offset(pue, v);
 
 			if ((u32) pue != (u32) pge || (u32) pme != (u32) pge) {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
