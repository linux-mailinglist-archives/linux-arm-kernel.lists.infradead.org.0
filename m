Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A507E517A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 18:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quZddwxnJcVgsremUjcH+E9TmznX74tqiG3z3KlRFVU=; b=XTtODJfdxdkIy4
	9cAHwMNnuBsAqQH+aInIgyHUoRMm45CF8Hx3qSHyLxJtvZG6GzgOEqQxb42uTGqfHNQBGYmdsZreh
	oLiOWQo42hfD9jPt4IodK0cL6DgS62rYQqoA8+K4vYAloh9hf+OdvVNloWLhRAGNYbLUXnyr+kpE/
	yXnvmLw04CVlG7wCEwC2Y9EqVeis7fd6PSNJYBXRBY7EToLAUWr++JVqRsFmFWChDjXwg8Z3wSiMu
	QlR5TUX/H9DtiTvL6lEiwY4jNn9Fsm1fs3ZWSja7kirr0mYGpW9TYxVu76bQ6Xt/Y/sBsRmO9DjCW
	uLz/5mUu+RFvwjA5SoLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO2gN-0006Uc-Sa; Fri, 25 Oct 2019 16:43:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO2fq-0006FG-4x
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 16:42:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C425B337;
 Fri, 25 Oct 2019 09:42:49 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C05BD3F71A;
 Fri, 25 Oct 2019 09:42:48 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/7] arm64: Add prototypes for functions called by entry.S
Date: Fri, 25 Oct 2019 17:42:11 +0100
Message-Id: <20191025164216.53626-3-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025164216.53626-1-james.morse@arm.com>
References: <20191025164216.53626-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_094250_238131_172C96B9 
X-CRM114-Status: GOOD (  10.00  )
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
 Masami Hiramatsu <mhiramat@kernel.org>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Functions that are only called by assembly don't always have a
C header file prototype.

Add the prototypes before moving the assembly callers to C.

Signed-off-by: James Morse <james.morse@arm.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/exception.h | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index b0b3ba56e919..a9e376623ecf 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -9,6 +9,7 @@
 
 #include <asm/esr.h>
 #include <asm/kprobes.h>
+#include <asm/ptrace.h>
 
 #include <linux/interrupt.h>
 
@@ -31,5 +32,26 @@ static inline u32 disr_to_esr(u64 disr)
 }
 
 asmlinkage void enter_from_user_mode(void);
+asmlinkage void do_mem_abort(unsigned long addr, unsigned int esr,
+			     struct pt_regs *regs);
+asmlinkage void do_sp_pc_abort(unsigned long addr, unsigned int esr,
+			       struct pt_regs *regs);
+asmlinkage void do_undefinstr(struct pt_regs *regs);
+asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
+asmlinkage void do_debug_exception(unsigned long addr_if_watchpoint,
+				   unsigned int esr, struct pt_regs *regs);
+asmlinkage void do_fpsimd_acc(unsigned int esr, struct pt_regs *regs);
+asmlinkage void do_sve_acc(unsigned int esr, struct pt_regs *regs);
+asmlinkage void do_fpsimd_exc(unsigned int esr, struct pt_regs *regs);
+asmlinkage void do_sysinstr(unsigned int esr, struct pt_regs *regs);
+asmlinkage void do_sp_pc_abort(unsigned long addr, unsigned int esr,
+			       struct pt_regs *regs);
+asmlinkage void bad_el0_sync(struct pt_regs *regs, int reason,
+			     unsigned int esr);
+asmlinkage void do_cp15instr(unsigned int esr, struct pt_regs *regs);
+asmlinkage void el0_svc_handler(struct pt_regs *regs);
+asmlinkage void el0_svc_compat_handler(struct pt_regs *regs);
+asmlinkage void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
+				       struct pt_regs *regs);
 
 #endif	/* __ASM_EXCEPTION_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
