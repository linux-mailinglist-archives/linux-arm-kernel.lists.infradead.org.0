Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3558F17039A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:00:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7izrDOfrWBZFzu3pZupNkZB9pdu0vKgqiOHXtC8i2Lo=; b=CfsYqhZJmh4pax
	0Gp+CvmuUjJt0v31caD2NxSAwWEhnhmmSas7bmCuis9Z8dPeT2oQ0Wn5boeHtZBKAeXdwvYVQvffE
	8ZcIErntbO7dLVqUBvpV2tWtRV5eHzwn64EeymHQH4mRbdutJTDMIGPv69JK4jrWj2JzZHHvDUkVv
	rM/fK8kW9yvpVnF/eFVzZ2h8Ue596pjdbL7maTMLApUcZTojCtVRr6vC02Izs7hInqgBpxB5B50VV
	YQXpkXTualsyv0v0oL/5l7kDeS6bjoHdaQrF/Cacy1x+Or2Aq8yc2Y5XKgp+poxJRfERidNvl0G61
	HUbQmGGwhvK8TIq93xqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6z6h-0002PH-F6; Wed, 26 Feb 2020 16:00:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6z47-0000HY-8n
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:57:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B80C330E;
 Wed, 26 Feb 2020 07:57:38 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01F6C3F819;
 Wed, 26 Feb 2020 07:57:38 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v7 07/11] arm64: unify native/compat instruction skipping
Date: Wed, 26 Feb 2020 15:57:10 +0000
Message-Id: <20200226155714.43937-8-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200226155714.43937-1-broonie@kernel.org>
References: <20200226155714.43937-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_075739_445861_81D38301 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Paul Elliott <paul.elliott@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

Skipping of an instruction on AArch32 works a bit differently from
AArch64, mainly due to the different CPSR/PSTATE semantics.

Currently arm64_skip_faulting_instruction() is only suitable for
AArch64, and arm64_compat_skip_faulting_instruction() handles the IT
state machine but is local to traps.c.

Since manual instruction skipping implies a trap, it's a relatively
slow path.

So, make arm64_skip_faulting_instruction() handle both compat and
native, and get rid of the arm64_compat_skip_faulting_instruction()
special case.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/traps.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index b8c714dda851..bc9f4292bfc3 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -272,6 +272,8 @@ void arm64_notify_die(const char *str, struct pt_regs *regs,
 	}
 }
 
+static void advance_itstate(struct pt_regs *regs);
+
 void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
 {
 	regs->pc += size;
@@ -282,6 +284,9 @@ void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
 	 */
 	if (user_mode(regs))
 		user_fastforward_single_step(current);
+
+	if (regs->pstate & PSR_MODE32_BIT)
+		advance_itstate(regs);
 }
 
 static LIST_HEAD(undef_hook);
@@ -644,19 +649,12 @@ static void advance_itstate(struct pt_regs *regs)
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
@@ -676,7 +674,7 @@ static void compat_cntvct_read_handler(unsigned int esr, struct pt_regs *regs)
 
 	pt_regs_write_reg(regs, rt, lower_32_bits(val));
 	pt_regs_write_reg(regs, rt2, upper_32_bits(val));
-	arm64_compat_skip_faulting_instruction(regs, 4);
+	arm64_skip_faulting_instruction(regs, 4);
 }
 
 static const struct sys64_hook cp15_64_hooks[] = {
@@ -697,7 +695,7 @@ void do_cp15instr(unsigned int esr, struct pt_regs *regs)
 		 * There is no T16 variant of a CP access, so we
 		 * always advance PC by 4 bytes.
 		 */
-		arm64_compat_skip_faulting_instruction(regs, 4);
+		arm64_skip_faulting_instruction(regs, 4);
 		return;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
