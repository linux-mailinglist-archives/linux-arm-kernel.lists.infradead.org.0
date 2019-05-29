Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5B12DD3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:35:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YZktyg5sFKWHgxdlQv/IPkZj2IUu86V3T/fl4Z0z9kM=; b=qaGPtVXPMneNrFCyS99rDqATFy
	4jF1exmiNdyfa2GM3PeXtN7cEX9bI4KYbaXjuKa2JBAJ1PGbfoVP32uRNeJZenf/tn+AYEWQAhByP
	K4GN1ifW2O57pcpJfQzulYzV0QACMz+btATPwyCCT7z7IDAM9si4dQnV+MehRErMyNyNSMemBM7+i
	caArInSBj2KxxYuleKc12CFFRsZPUbU1QNhZB/WTgUru8iHQ50LqDePfAKdGTcj6WAkX3Tq2WCoHb
	/eBKSCup2Bt/Cxj3t8vsfFiyQoJ/lTrMbCyT+iOP0/JsDfUV3d2Bwfefv516saqFzgehzqBKo94zY
	nRrM3T7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxnL-0007mP-3N; Wed, 29 May 2019 12:35:03 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxn3-0007aC-Tc
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:34:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B81BA78;
 Wed, 29 May 2019 05:34:45 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.41.181])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6A3943F59C;
 Wed, 29 May 2019 05:34:42 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] arm64/mm: Drop mmap_sem before calling __do_kernel_fault()
Date: Wed, 29 May 2019 18:04:42 +0530
Message-Id: <1559133285-27986-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_053446_186213_A3451B29 
X-CRM114-Status: GOOD (  13.62  )
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
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>, Andrey Konovalov <andreyknvl@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is an inconsistency between down_read_trylock() success and failure
paths while dealing with kernel access for non exception table areas where
it calls __do_kernel_fault(). In case of failure it just bails out without
holding mmap_sem but when it succeeds it does so while holding mmap_sem.
Fix this inconsistency by just dropping mmap_sem in success path as well.

__do_kernel_fault() calls die_kernel_fault() which then calls show_pte().
show_pte() in this path might become bit more unreliable without holding
mmap_sem. But there are already instances [1] in do_page_fault() where
die_kernel_fault() gets called without holding mmap_sem. show_pte() can
be made more robust independently but in a later patch.

[1] Conditional block for (is_ttbr0_addr && is_el1_permission_fault)

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
---
 arch/arm64/mm/fault.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index a30818e..dc1cf32 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -503,8 +503,10 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 		 */
 		might_sleep();
 #ifdef CONFIG_DEBUG_VM
-		if (!user_mode(regs) && !search_exception_tables(regs->pc))
+		if (!user_mode(regs) && !search_exception_tables(regs->pc)) {
+			up_read(&mm->mmap_sem);
 			goto no_context;
+		}
 #endif
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
