Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B730172566
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/y9HI4zoP/L6LpFJyFixnJLF17IlvOK7Sdayhs9XKM=; b=t4G4BOEhaa2jrh
	NNxKiuaCPF0/fnjw8sLpwFhAErAtErETVGs30r/lZxHoZTCGrurLG4X1froO5XWvJtHEY/99RL8hh
	o2T8OVuEnwpn+K79oL370TASSsbvlOP41KGlocygHe137jmwPCmedJYSVsBnyFke1fFnRUCK4FEe4
	Z8QnuiicKpbsg7LIHQQSKOLS/F+EXq4k0aIMSj9y00OywnDLzasYCxfzzQ+r9hpL2x91oXqWgegPt
	rdcS5zgyfVmtnuAUHE6tYnPDMDvGixT1/2k6MK5bGtf/xPgf4ZQpmLIQcm4U+HXcuiFvt0uz8f3pg
	PnLU3NiuQNup4CAfE0gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NGb-00059m-3R; Thu, 27 Feb 2020 17:48:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NDF-0000yA-4c
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:44:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A0891FB;
 Thu, 27 Feb 2020 09:44:40 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB31D3F73B;
 Thu, 27 Feb 2020 09:44:39 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v8 08/11] arm64: traps: Shuffle code to eliminate forward
 declarations
Date: Thu, 27 Feb 2020 17:44:14 +0000
Message-Id: <20200227174417.23722-9-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227174417.23722-1-broonie@kernel.org>
References: <20200227174417.23722-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_094441_307892_98032AAD 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
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

Hoist the IT state handling code earlier in traps.c, to avoid
accumulating forward declarations.

No functional change.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/traps.c | 103 ++++++++++++++++++--------------------
 1 file changed, 50 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index bc9f4292bfc3..3c07a7074145 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -272,7 +272,55 @@ void arm64_notify_die(const char *str, struct pt_regs *regs,
 	}
 }
 
-static void advance_itstate(struct pt_regs *regs);
+#ifdef CONFIG_COMPAT
+#define PSTATE_IT_1_0_SHIFT	25
+#define PSTATE_IT_1_0_MASK	(0x3 << PSTATE_IT_1_0_SHIFT)
+#define PSTATE_IT_7_2_SHIFT	10
+#define PSTATE_IT_7_2_MASK	(0x3f << PSTATE_IT_7_2_SHIFT)
+
+static u32 compat_get_it_state(struct pt_regs *regs)
+{
+	u32 it, pstate = regs->pstate;
+
+	it  = (pstate & PSTATE_IT_1_0_MASK) >> PSTATE_IT_1_0_SHIFT;
+	it |= ((pstate & PSTATE_IT_7_2_MASK) >> PSTATE_IT_7_2_SHIFT) << 2;
+
+	return it;
+}
+
+static void compat_set_it_state(struct pt_regs *regs, u32 it)
+{
+	u32 pstate_it;
+
+	pstate_it  = (it << PSTATE_IT_1_0_SHIFT) & PSTATE_IT_1_0_MASK;
+	pstate_it |= ((it >> 2) << PSTATE_IT_7_2_SHIFT) & PSTATE_IT_7_2_MASK;
+
+	regs->pstate &= ~PSR_AA32_IT_MASK;
+	regs->pstate |= pstate_it;
+}
+
+static void advance_itstate(struct pt_regs *regs)
+{
+	u32 it;
+
+	/* ARM mode */
+	if (!(regs->pstate & PSR_AA32_T_BIT) ||
+	    !(regs->pstate & PSR_AA32_IT_MASK))
+		return;
+
+	it  = compat_get_it_state(regs);
+
+	/*
+	 * If this is the last instruction of the block, wipe the IT
+	 * state. Otherwise advance it.
+	 */
+	if (!(it & 7))
+		it = 0;
+	else
+		it = (it & 0xe0) | ((it << 1) & 0x1f);
+
+	compat_set_it_state(regs, it);
+}
 
 void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
 {
@@ -285,7 +333,7 @@ void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
 	if (user_mode(regs))
 		user_fastforward_single_step(current);
 
-	if (regs->pstate & PSR_MODE32_BIT)
+	if (compat_user_mode(regs))
 		advance_itstate(regs);
 }
 
@@ -578,34 +626,6 @@ static const struct sys64_hook sys64_hooks[] = {
 	{},
 };
 
-
-#ifdef CONFIG_COMPAT
-#define PSTATE_IT_1_0_SHIFT	25
-#define PSTATE_IT_1_0_MASK	(0x3 << PSTATE_IT_1_0_SHIFT)
-#define PSTATE_IT_7_2_SHIFT	10
-#define PSTATE_IT_7_2_MASK	(0x3f << PSTATE_IT_7_2_SHIFT)
-
-static u32 compat_get_it_state(struct pt_regs *regs)
-{
-	u32 it, pstate = regs->pstate;
-
-	it  = (pstate & PSTATE_IT_1_0_MASK) >> PSTATE_IT_1_0_SHIFT;
-	it |= ((pstate & PSTATE_IT_7_2_MASK) >> PSTATE_IT_7_2_SHIFT) << 2;
-
-	return it;
-}
-
-static void compat_set_it_state(struct pt_regs *regs, u32 it)
-{
-	u32 pstate_it;
-
-	pstate_it  = (it << PSTATE_IT_1_0_SHIFT) & PSTATE_IT_1_0_MASK;
-	pstate_it |= ((it >> 2) << PSTATE_IT_7_2_SHIFT) & PSTATE_IT_7_2_MASK;
-
-	regs->pstate &= ~PSR_AA32_IT_MASK;
-	regs->pstate |= pstate_it;
-}
-
 static bool cp15_cond_valid(unsigned int esr, struct pt_regs *regs)
 {
 	int cond;
@@ -626,29 +646,6 @@ static bool cp15_cond_valid(unsigned int esr, struct pt_regs *regs)
 	return aarch32_opcode_cond_checks[cond](regs->pstate);
 }
 
-static void advance_itstate(struct pt_regs *regs)
-{
-	u32 it;
-
-	/* ARM mode */
-	if (!(regs->pstate & PSR_AA32_T_BIT) ||
-	    !(regs->pstate & PSR_AA32_IT_MASK))
-		return;
-
-	it  = compat_get_it_state(regs);
-
-	/*
-	 * If this is the last instruction of the block, wipe the IT
-	 * state. Otherwise advance it.
-	 */
-	if (!(it & 7))
-		it = 0;
-	else
-		it = (it & 0xe0) | ((it << 1) & 0x1f);
-
-	compat_set_it_state(regs, it);
-}
-
 static void compat_cntfrq_read_handler(unsigned int esr, struct pt_regs *regs)
 {
 	int reg = (esr & ESR_ELx_CP15_32_ISS_RT_MASK) >> ESR_ELx_CP15_32_ISS_RT_SHIFT;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
