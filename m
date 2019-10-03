Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B052CA819
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDBBF8JLOEbMDeg1SV0RT1TOLKu+o0WQLVzlPjy3IOk=; b=Wc4tfc60g3wiFo
	Vmso560/OCGWDtGqgnV+7FXS7FVufvr/RRMDYqZANjx0siG++IED8FMJRFIktAFDL2y2MQ8f6P2kV
	mTTnqOmG8whVZj+xR2WNAvZkvLP5Mf5O07t92f2L3thU3M6r7TO/EBhWA3gwhQ2VKjnYv4TLCJbWe
	nr3nqKXFfMPN/WBMrwExsTuIdSrctn0w738OKJfYR5141gUTY7mBVZI/Wwh5oC8HlfVUX5QsyvoQa
	Qrw/+J2JafYAwGaa9yB42GfBmgju3BMryrgKacifGHQoqaqUTDVRrbWdnJsJZTujXUmW9QA9CGnjI
	sUGVKpxsWUBPrVO9yp/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4jm-0008TF-NT; Thu, 03 Oct 2019 17:17:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4j3-0007mA-93
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:17:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD5711000;
 Thu,  3 Oct 2019 10:17:12 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA5EB3F739;
 Thu,  3 Oct 2019 10:17:11 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/8] arm64: Add prototypes for functions called by entry.S
Date: Thu,  3 Oct 2019 18:16:37 +0100
Message-Id: <20191003171642.135652-4-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003171642.135652-1-james.morse@arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_101713_386444_E3B6A712 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
---
 arch/arm64/include/asm/exception.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index b0b3ba56e919..8bb3fe2d71a8 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -31,5 +31,26 @@ static inline u32 disr_to_esr(u64 disr)
 }
 
 asmlinkage void enter_from_user_mode(void);
+asmlinkage void do_mem_abort(unsigned long addr, unsigned int esr,
+			     struct pt_regs *regs);
+asmlinkage void do_sp_pc_abort(unsigned long addr, unsigned int esr,
+			       struct pt_regs *regs);
+asmlinkage void do_undefinstr(struct pt_regs *regs);
+asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
+asmlinkage void do_debug_exception(unsigned long addr, unsigned int esr,
+				   struct pt_regs *regs);
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
