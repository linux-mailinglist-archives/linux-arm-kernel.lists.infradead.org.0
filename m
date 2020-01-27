Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9497D14A12F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u23yORh/gxsDBcWwacRatEuZ/Gr28TOBs5cPLGJpalM=; b=PjF
	mmhVL+rEOEYzypJHBZWnebvgkoVyeWmv1Ew4zoofm0cv5wh0P9gbZ8VE2FhsIeNuCOJxlE+GG6tC1
	ZEADBF8ocs3OY3yZj10v5vE4P7B/RE1Hm4nR+8Ok5lp5lpQnRT4Hi6vY+SemDItXfbmxKuPJw6NRG
	SRjgXnO9HnnjU9JKOHMPfccHgG7kdFplP8ftG+rk4HYxYZoQbWL07wybhdRT2n5ZC5A0hEYN9KsQF
	wBxg5CnL7zcb/OS129BBrxicxsdFEJm/4qtpcosL98M5A5UPdDzZVuFT6T2kqA1+28mfmsVDWDefF
	QQlIQbDiEQBf9uOE0kjf6NnpTAX0t/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw12K-0003Qv-CW; Mon, 27 Jan 2020 09:50:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw12B-0003EX-97
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:50:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5390731B;
 Mon, 27 Jan 2020 01:50:16 -0800 (PST)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.16.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EF42C3F52E;
 Mon, 27 Jan 2020 01:50:13 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Drop do_el0_ia_bp_hardening() & do_sp_pc_abort()
 declarations
Date: Mon, 27 Jan 2020 15:19:35 +0530
Message-Id: <1580118575-1705-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_015019_370051_A5059687 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a redundant do_sp_pc_abort() declaration in exceptions.h which can
be removed. Also do_el0_ia_bp_hardening() as been already been dropped with
the commit bfe298745afc ("arm64: entry-common: don't touch daif before
bp-hardening") and hence does not need a declaration any more. This should
not introduce any functional change.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/exception.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index b87c6e276ab1..7a6e81ca23a8 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -33,7 +33,6 @@ static inline u32 disr_to_esr(u64 disr)
 
 asmlinkage void enter_from_user_mode(void);
 void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
-void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
 void do_undefinstr(struct pt_regs *regs);
 asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
 void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
@@ -47,7 +46,4 @@ void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr);
 void do_cp15instr(unsigned int esr, struct pt_regs *regs);
 void do_el0_svc(struct pt_regs *regs);
 void do_el0_svc_compat(struct pt_regs *regs);
-void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
-			    struct pt_regs *regs);
-
 #endif	/* __ASM_EXCEPTION_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
