Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C41158EA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:40:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jidyv0lHQTZfiysCh1qiJCQlPBEvcvNptFIfmhCdws=; b=R0CWxzYB1fHStL
	01u+wyeZenHRNeuYdCNm4ZGmfIfn2JNw0tznet9YZ95Ov9eSbztrAVqjEuwbpjnfKg3kb9IHtUCjP
	7HGozwteCzsos1T0HHorDYh3yKT1Zx1W6AQkdF/R8fF4u9VMkYgugFrCsnZ0IBqttInVqj8/j81Tb
	9RThIJYdeiVwj953TmTV0qYX+RfeaUzVRbXSoeT7/69M/HBAeuJIQup+G6rKLKclPYotbEZThj3Eu
	Q6EHe2CnAGVTHR35kZ4iMpcRhwkxzC5ZQ7yqkW3TBMZvK1gKlclnxa7Nkv6zEg/2z3O/qvqr8dlJM
	CulC9qR24Gd1qKFW2l/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Uq2-0001qr-LO; Tue, 11 Feb 2020 12:40:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UpZ-0000O6-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:39:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1596E31B;
 Tue, 11 Feb 2020 04:39:57 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F2693F6CF;
 Tue, 11 Feb 2020 04:39:56 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 2/3] arm64: ftrace: Correct annotation of ftrace_caller
 assembly
Date: Tue, 11 Feb 2020 12:39:50 +0000
Message-Id: <20200211123951.6945-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211123951.6945-1-broonie@kernel.org>
References: <20200211123951.6945-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_043957_524571_D37DDA72 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
index 3d32b6d325d7..baf5a20a5566 100644
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
