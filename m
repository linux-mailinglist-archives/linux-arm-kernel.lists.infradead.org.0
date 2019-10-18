Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D1CDCCCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QIL3M3gm3zTAWIu7T3iBBQZgWE6fzr9NrOnYjNCIfMo=; b=E9AeQABFBrcruf92xXBV6+kJK3
	o0n/I8BKtIIyaiZzTClIqyQfIt/2otEAU/FZNCVAo6NZ4tAoH8BrJmN6fu2hNMd9+Py8YO+SxCDar
	pA9SPwLA+CHwF8+U89+75gloxZh5ENAOWIagoC8Ut6YPHXeQocp8/wn4AkfQ/xZUsAja+izdxPv+Q
	iATx/vT9nzdtjMP9edJzaLSBaKfbDKU1urWG6xyPc6w/59bLoLOykSqYay8WHJdDTUlbLb9legAvo
	tdKVzWxPgpWErC5OqVG9qgEXD/MSE982IcoGtuDQ+I7T2sg6G8n5VuDGSQ1+nU2ShHPSeE6cwusz3
	3x6Vi05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLW5B-0000VZ-Pp; Fri, 18 Oct 2019 17:30:33 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLW1x-0004sG-Bj
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:27:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 712401476;
 Fri, 18 Oct 2019 10:27:02 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A5F203F718;
 Fri, 18 Oct 2019 10:26:59 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 09/12] arm64: traps: Fix inconsistent faulting instruction
 skipping
Date: Fri, 18 Oct 2019 18:25:42 +0100
Message-Id: <1571419545-20401-10-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1571419545-20401-1-git-send-email-Dave.Martin@arm.com>
References: <1571419545-20401-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_102713_599545_53CD6E9D 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct skipping of an instruction on AArch32 works a bit
differently from AArch64, mainly due to the different CPSR/PSTATE
semantics.

There have been various attempts to get this right.  Currenty
arm64_skip_faulting_instruction() mostly does the right thing, but
does not advance the IT state machine for the AArch32 case.

arm64_compat_skip_faulting_instruction() handles the IT state
machine but is local to traps.c, and porting other code to use it
will make a mess since there are some call sites that apply for
both the compat and native cases.

Since manual instruction skipping implies a trap, it's a relatively
slow path.

So, make arm64_skip_faulting_instruction() handle both compat and
native, and get rid of the arm64_compat_skip_faulting_instruction()
special case.

Fixes: 32a3e635fb0e ("arm64: compat: Add CNTFRQ trap handler")
Fixes: 1f1c014035a8 ("arm64: compat: Add condition code checks and IT advance")
Fixes: 6436beeee572 ("arm64: Fix single stepping in kernel traps")
Fixes: bd35a4adc413 ("arm64: Port SWP/SWPB emulation support from arm")
Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

**NOTE**

Despite discussions on the v2 series to the effect that the prior
behaviour is not broken, I'm now not so sure:

Taking another look, I now can't track down for example where SWP in an
IT block is specified to be UNPREDICTABLE.  I only see e.g., ARM DDI
0487E.a Section 1.8.2 ("F1.8.2 Partial deprecation of IT"), which only
deprecates the affected instructions.

The legacy AArch32 SWP{B} insn is obsoleted by ARMv8, but the whole
point of the armv8_deprecated stuff is to provide some backwards
compatiblity with v7.

So, this looks like it needs a closer look.

I'll leave the Fixes tags for now, so that the archaeology doesn't need
to be repeated if we conclude that this patch really is a fix.
---
 arch/arm64/kernel/traps.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 15e3c4f..44c91d4 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -268,6 +268,8 @@ void arm64_notify_die(const char *str, struct pt_regs *regs,
 	}
 }
 
+static void advance_itstate(struct pt_regs *regs);
+
 void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
 {
 	regs->pc += size;
@@ -278,6 +280,9 @@ void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
 	 */
 	if (user_mode(regs))
 		user_fastforward_single_step(current);
+
+	if (regs->pstate & PSR_MODE32_BIT)
+		advance_itstate(regs);
 }
 
 static LIST_HEAD(undef_hook);
@@ -629,19 +634,12 @@ static void advance_itstate(struct pt_regs *regs)
 	compat_set_it_state(regs, it);
 }
 
-static void arm64_compat_skip_faulting_instruction(struct pt_regs *regs,
-						   unsigned int sz)
-{
-	advance_itstate(regs);
-	arm64_skip_faulting_instruction(regs, sz);
-}
-
 static void compat_cntfrq_read_handler(unsigned int esr, struct pt_regs *regs)
 {
 	int reg = (esr & ESR_ELx_CP15_32_ISS_RT_MASK) >> ESR_ELx_CP15_32_ISS_RT_SHIFT;
 
 	pt_regs_write_reg(regs, reg, arch_timer_get_rate());
-	arm64_compat_skip_faulting_instruction(regs, 4);
+	arm64_skip_faulting_instruction(regs, 4);
 }
 
 static const struct sys64_hook cp15_32_hooks[] = {
@@ -661,7 +659,7 @@ static void compat_cntvct_read_handler(unsigned int esr, struct pt_regs *regs)
 
 	pt_regs_write_reg(regs, rt, lower_32_bits(val));
 	pt_regs_write_reg(regs, rt2, upper_32_bits(val));
-	arm64_compat_skip_faulting_instruction(regs, 4);
+	arm64_skip_faulting_instruction(regs, 4);
 }
 
 static const struct sys64_hook cp15_64_hooks[] = {
@@ -682,7 +680,7 @@ asmlinkage void __exception do_cp15instr(unsigned int esr, struct pt_regs *regs)
 		 * There is no T16 variant of a CP access, so we
 		 * always advance PC by 4 bytes.
 		 */
-		arm64_compat_skip_faulting_instruction(regs, 4);
+		arm64_skip_faulting_instruction(regs, 4);
 		return;
 	}
 
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
