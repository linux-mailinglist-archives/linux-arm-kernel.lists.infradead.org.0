Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511C7145EA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 23:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EgJZjLdGvBYpiwpSqwUaRbJSIB/DPdrn0qCCxyrHQi4=; b=LQF8q0HpJxmysh
	PzL4YowzKfYZdBaS2/pm9j/dBWivnWW8VCvsZKRwkb7sYoqoJVlldDbLbWtlTuVjjmtiAqpkVZr0O
	N5r7OZT2yAYCe3r5QEIAWQEynRUXQN+Q/dFFkR26/OAlYU+56XiK4PZbxDjb1PngcilbqTxlRLggB
	fKcbkLCtvBrHtNUuRUdZTj5OB9IADXsHHLUczxK2oW2J1KrLGuPocGNObMk1xiOq5NymHbZ2F7B/M
	DCo7losJjCFece3swaxM78XGPvbi/DSVTlGXdquIkwW/upbjdQ7IfdYEDnrUr7ByDNbWjOB2+Pz59
	XxzkYm3UZtjXO8G14mVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuOa3-0007cw-Mp; Wed, 22 Jan 2020 22:34:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuOZe-0007Vx-Tt
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 22:34:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9267631B;
 Wed, 22 Jan 2020 14:34:05 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B59443F6C4;
 Wed, 22 Jan 2020 14:34:04 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 1/2] arm64: ftrace: Correct annotation of ftrace_caller
 assembly
Date: Wed, 22 Jan 2020 22:33:56 +0000
Message-Id: <20200122223357.25593-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_143411_007595_AF6DE2BD 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly
functions new macros have been introduced. These replace ENTRY and
ENDPROC with two different annotations for normal functions and those
with unusual calling conventions.

The patchable function entry versions of ftrace_*_caller don't follow the
usual AAPCS rules, pushing things onto the stack which they don't clean up,
and therefore should be annotated as code rather than functions.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/entry-ftrace.S | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kernel/entry-ftrace.S b/arch/arm64/kernel/entry-ftrace.S
index 7d02f9966d34..0cbc44d480fe 100644
--- a/arch/arm64/kernel/entry-ftrace.S
+++ b/arch/arm64/kernel/entry-ftrace.S
@@ -75,17 +75,17 @@
 	add	x29, sp, #S_STACKFRAME
 	.endm
 
-ENTRY(ftrace_regs_caller)
+SYM_CODE_START(ftrace_regs_caller)
 	ftrace_regs_entry	1
 	b	ftrace_common
-ENDPROC(ftrace_regs_caller)
+SYM_CODE_END(ftrace_regs_caller)
 
-ENTRY(ftrace_caller)
+SYM_CODE_START(ftrace_caller)
 	ftrace_regs_entry	0
 	b	ftrace_common
-ENDPROC(ftrace_caller)
+SYM_CODE_END(ftrace_caller)
 
-ENTRY(ftrace_common)
+SYM_CODE_START(ftrace_common)
 	sub	x0, x30, #AARCH64_INSN_SIZE	// ip (callsite's BL insn)
 	mov	x1, x9				// parent_ip (callsite's LR)
 	ldr_l	x2, function_trace_op		// op
@@ -122,17 +122,17 @@ ftrace_common_return:
 	add	sp, sp, #S_FRAME_SIZE + 16
 
 	ret	x9
-ENDPROC(ftrace_common)
+SYM_CODE_END(ftrace_common)
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
-ENTRY(ftrace_graph_caller)
+SYM_CODE_START(ftrace_graph_caller)
 	ldr	x0, [sp, #S_PC]
 	sub	x0, x0, #AARCH64_INSN_SIZE	// ip (callsite's BL insn)
 	add	x1, sp, #S_LR			// parent_ip (callsite's LR)
 	ldr	x2, [sp, #S_FRAME_SIZE]	   	// parent fp (callsite's FP)
 	bl	prepare_ftrace_return
 	b	ftrace_common_return
-ENDPROC(ftrace_graph_caller)
+SYM_CODE_END(ftrace_graph_caller)
 #endif
 
 #else /* CONFIG_DYNAMIC_FTRACE_WITH_REGS */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
