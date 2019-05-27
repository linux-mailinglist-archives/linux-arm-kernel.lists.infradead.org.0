Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BF82AD79
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 06:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=frqyLxtYpw3ev9Ib+TQ/9uhBHU7XcsgEO9Ih/SBEXYg=; b=lk3
	iOJEndPMbuOKY8aFE2UHXfRl4cepFKXKtgMfSKOpzCi+UA+4wfbaTG37T8V4s27gtTqqFtKX5IILc
	VaUzo+FD1GrpEUHk15R9L4lnAL9E0n93YBjzvTEw9rx5AEuoRGRoaT/Vl9OPyVOrwn2Q6QnKQC6+P
	Ic+LPJziaxv20ZTF2HNClSIW2YKprfnwMpvabZaW8v8eXR041AnLgTdTGEmDL4umtXd7sXJUfdTmm
	9c0m7xwkxJ+xlqoWco1xeHjSAcbVh9qwTFitzIeDQjLzNQ0NBlMulungGdvwNH5VoAYZIdpnhUlkT
	pWj5ELqKoq+bgH8nP8LvlICvQVa0AuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV6qW-0005wj-EX; Mon, 27 May 2019 04:02:48 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV6qN-0005vs-U2
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 04:02:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F0F2A78;
 Sun, 26 May 2019 21:02:39 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.17])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CE1763F690;
 Sun, 26 May 2019 21:02:36 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64/mm: Drop BUG_ON() from [pmd|pud]_set_huge()
Date: Mon, 27 May 2019 09:32:14 +0530
Message-Id: <1558929734-20051-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_210239_969310_4F95BC3C 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are no callers for the functions which will pass unaligned physical
addresses. Hence just drop these BUG_ON() checks which are not required.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/mm/mmu.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 22c2e4f0768f..629011c6238d 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -978,7 +978,6 @@ int pud_set_huge(pud_t *pudp, phys_addr_t phys, pgprot_t prot)
 				   pud_val(new_pud)))
 		return 0;
 
-	BUG_ON(phys & ~PUD_MASK);
 	set_pud(pudp, new_pud);
 	return 1;
 }
@@ -992,7 +991,6 @@ int pmd_set_huge(pmd_t *pmdp, phys_addr_t phys, pgprot_t prot)
 				   pmd_val(new_pmd)))
 		return 0;
 
-	BUG_ON(phys & ~PMD_MASK);
 	set_pmd(pmdp, new_pmd);
 	return 1;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
