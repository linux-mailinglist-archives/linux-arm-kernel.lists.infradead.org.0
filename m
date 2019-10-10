Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEEED2EA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w1s7qg1dL/HE0Hq2DxHaZCCAjrNuvhe04wadWBlawDs=; b=qa4sr/Al6N22oF
	w9tTOCxCa/0KJ7Rkhr+4kvNpFKjANYHySj7gBJZyZZATlL9dlBSL3W1nQ6bBKj7mkaOi0vf8Onv3W
	cwdEhiYnp+TrXgnT/1srp5NFqIVAeqBw5AhtJGB4gkmYIGXckimCsOmU+yXSWRf8ct/g9pQe0hiMs
	XA8/cUEeSNm9aR8bt93+/9kgO5cjshXxSbFJ0cSBzmEEyIG/G607wJ5wVR+PQHM2xblgapJlSbL4c
	7Y6ajhTftSJMxShg4PlE3ALhw9zsKCQfLsKXQnRH8MV3uaNF0oHs84e/2MU2JCHdtK28tRyxZUmc+
	We1kwop94RMjbJFk7SUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbPD-0005Wc-V0; Thu, 10 Oct 2019 16:35:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbOy-0005W7-Qg
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:34:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37D6E28;
 Thu, 10 Oct 2019 09:34:53 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3455E3F71A;
 Thu, 10 Oct 2019 09:34:52 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: entry.S: Do not preempt from IRQ before all
 cpufeatures are enabled
Date: Thu, 10 Oct 2019 17:34:47 +0100
Message-Id: <20191010163447.136049-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_093456_951252_C139ACC2 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Thierry <julien.thierry@arm.com>

Preempting from IRQ-return means that the task has its PSTATE saved
on the stack, which will get restored when the task is resumed and does
the actual IRQ return.

However, enabling some CPU features requires modifying the PSTATE. This
means that, if a task was scheduled out during an IRQ-return before all
CPU features are enabled, the task might restore a PSTATE that does not
include the feature enablement changes once scheduled back in.

* Task 1:

PAN == 0 ---|                          |---------------
            |                          |<- return from IRQ, PSTATE.PAN = 0
            | <- IRQ                   |
            +--------+ <- preempt()  +--
                                     ^
                                     |
                                     reschedule Task 1, PSTATE.PAN == 1
* Init:
        --------------------+------------------------
                            ^
                            |
                            enable_cpu_features
                            set PSTATE.PAN on all CPUs

Worse than this, since PSTATE is untouched when task switching is done,
a task missing the new bits in PSTATE might affect another task, if both
do direct calls to schedule() (outside of IRQ/exception contexts).

Fix this by preventing preemption on IRQ-return until features are
enabled on all CPUs.

This way the only PSTATE values that are saved on the stack are from
synchronous exceptions. These are expected to be fatal this early, the
exception is BRK for WARN_ON(), but as this uses do_debug_exception()
which keeps IRQs masked, it shouldn't call schedule().

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
[Replaced a really cool hack, with a simpler branch->nop transition,
 expanded commit message with Julien's cover-letter ascii art]
Signed-off-by: James Morse <james.morse@arm.com>
---
I think we don't see this happen because cpufeature enable calls happen
early, when there is not a lot going on. I couldn't hit it when trying.
I believe Julien did, by adding sleep statements(?) to kthread().

If we want to send this to stable, the first feature that depended on this
was PAN:
Fixes: 7209c868600b ("arm64: mm: Set PSTATE.PAN from the cpu_enable_pan() call")


 arch/arm64/kernel/cpufeature.c | 8 ++++++++
 arch/arm64/kernel/entry.S      | 7 +++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9323bcc40a58..3b8c3f1c6d3f 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -2071,6 +2071,14 @@ void __init setup_cpu_features(void)
 			ARCH_DMA_MINALIGN);
 }
 
+void __init arm64_cpufeature_cb_nop(struct alt_instr *alt, __le32 *origptr,
+				    __le32 *updptr, int nr_inst)
+{
+	BUG_ON(nr_inst != 1);
+
+	*updptr = cpu_to_le32(aarch64_insn_gen_nop());
+}
+
 static bool __maybe_unused
 cpufeature_pan_not_uao(const struct arm64_cpu_capabilities *entry, int __unused)
 {
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 84a822748c84..7ab139c44ca5 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -670,6 +670,13 @@ el1_irq:
 	irq_handler
 
 #ifdef CONFIG_PREEMPT
+alternative_cb arm64_cpufeature_cb_nop
+	/*
+	 * Prevent preempt from IRQ until cpufeatures are enabled. This branch
+	 * is replaced by a nop by the callback.
+	 */
+	b	1f
+alternative_cb_end
 	ldr	x24, [tsk, #TSK_TI_PREEMPT]	// get preempt count
 alternative_if ARM64_HAS_IRQ_PRIO_MASKING
 	/*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
