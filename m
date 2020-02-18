Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCEB16313C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGwBq0C7eYDzT2sRiaMp66xeiymOyhTrTawNhZ7DOXY=; b=hSvRojtttqEF/X
	MS3v/un1shTraLirGA0gMtCYzTMEtVXflURqPrpo+RXXrF3BrZy1lgFSuT3jfH85tI0omMK5SxFgT
	aa7EEHjMKYXOzM4k571I6XR5QOo1VSlG3v9cpestUDySxoTmEtIcgmgDgrEsMwAszqDZgrBtPlBJE
	tlxFASTYAHHq67ORpN/sHDVMlehTziJe9oULBv9RJzlogerGq8YvbrP9Y2ZQW4lrlcHqWYuMmxQzy
	N8YvC2KtmmOiaikutVXrh23ASYSbsVAS4EinxgLVpQ5T+WM74oHEf82PnrMvar3FLgASwRXtrnAQJ
	JaMOoO9LcKAfBhGn9yfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j493D-0008O5-R2; Tue, 18 Feb 2020 20:00:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j491P-0005YX-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:59:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B5C5FEC;
 Tue, 18 Feb 2020 11:59:07 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C1D9C3F68F;
 Tue, 18 Feb 2020 11:59:06 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH 06/18] arm64: entry-ftrace.S: Convert to modern annotations
 for assembly functions
Date: Tue, 18 Feb 2020 19:58:30 +0000
Message-Id: <20200218195842.34156-7-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218195842.34156-1-broonie@kernel.org>
References: <20200218195842.34156-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115907_888632_5FDD5646 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Brown <broonie@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These replace ENTRY and
ENDPROC and also add a new annotation for static functions which previously
had no ENTRY equivalent. Update the annotations in the core kernel code to
the new macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/entry-ftrace.S | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kernel/entry-ftrace.S b/arch/arm64/kernel/entry-ftrace.S
index 7d02f9966d34..3d32b6d325d7 100644
--- a/arch/arm64/kernel/entry-ftrace.S
+++ b/arch/arm64/kernel/entry-ftrace.S
@@ -91,11 +91,11 @@ ENTRY(ftrace_common)
 	ldr_l	x2, function_trace_op		// op
 	mov	x3, sp				// regs
 
-GLOBAL(ftrace_call)
+SYM_INNER_LABEL(ftrace_call, SYM_L_GLOBAL)
 	bl	ftrace_stub
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
-GLOBAL(ftrace_graph_call)		// ftrace_graph_caller();
+SYM_INNER_LABEL(ftrace_graph_call, SYM_L_GLOBAL) // ftrace_graph_caller();
 	nop				// If enabled, this will be replaced
 					// "b ftrace_graph_caller"
 #endif
@@ -218,7 +218,7 @@ ENDPROC(ftrace_graph_caller)
  *     - tracer function to probe instrumented function's entry,
  *     - ftrace_graph_caller to set up an exit hook
  */
-ENTRY(_mcount)
+SYM_FUNC_START(_mcount)
 	mcount_enter
 
 	ldr_l	x2, ftrace_trace_function
@@ -242,7 +242,7 @@ skip_ftrace_call:			// }
 	b.ne	ftrace_graph_caller	//     ftrace_graph_caller();
 #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
 	mcount_exit
-ENDPROC(_mcount)
+SYM_FUNC_END(_mcount)
 EXPORT_SYMBOL(_mcount)
 NOKPROBE(_mcount)
 
@@ -253,9 +253,9 @@ NOKPROBE(_mcount)
  * and later on, NOP to branch to ftrace_caller() when enabled or branch to
  * NOP when disabled per-function base.
  */
-ENTRY(_mcount)
+SYM_FUNC_START(_mcount)
 	ret
-ENDPROC(_mcount)
+SYM_FUNC_END(_mcount)
 EXPORT_SYMBOL(_mcount)
 NOKPROBE(_mcount)
 
@@ -268,24 +268,24 @@ NOKPROBE(_mcount)
  *     - tracer function to probe instrumented function's entry,
  *     - ftrace_graph_caller to set up an exit hook
  */
-ENTRY(ftrace_caller)
+SYM_FUNC_START(ftrace_caller)
 	mcount_enter
 
 	mcount_get_pc0	x0		//     function's pc
 	mcount_get_lr	x1		//     function's lr
 
-GLOBAL(ftrace_call)			// tracer(pc, lr);
+SYM_INNER_LABEL(ftrace_call, SYM_L_GLOBAL)	// tracer(pc, lr);
 	nop				// This will be replaced with "bl xxx"
 					// where xxx can be any kind of tracer.
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
-GLOBAL(ftrace_graph_call)		// ftrace_graph_caller();
+SYM_INNER_LABEL(ftrace_graph_call)		// ftrace_graph_caller();
 	nop				// If enabled, this will be replaced
 					// "b ftrace_graph_caller"
 #endif
 
 	mcount_exit
-ENDPROC(ftrace_caller)
+SYM_FUNC_END(ftrace_caller)
 #endif /* CONFIG_DYNAMIC_FTRACE */
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
@@ -298,20 +298,20 @@ ENDPROC(ftrace_caller)
  * the call stack in order to intercept instrumented function's return path
  * and run return_to_handler() later on its exit.
  */
-ENTRY(ftrace_graph_caller)
+SYM_FUNC_START(ftrace_graph_caller)
 	mcount_get_pc		  x0	//     function's pc
 	mcount_get_lr_addr	  x1	//     pointer to function's saved lr
 	mcount_get_parent_fp	  x2	//     parent's fp
 	bl	prepare_ftrace_return	// prepare_ftrace_return(pc, &lr, fp)
 
 	mcount_exit
-ENDPROC(ftrace_graph_caller)
+SYM_FUNC_END(ftrace_graph_caller)
 #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
 #endif /* CONFIG_DYNAMIC_FTRACE_WITH_REGS */
 
-ENTRY(ftrace_stub)
+SYM_FUNC_START(ftrace_stub)
 	ret
-ENDPROC(ftrace_stub)
+SYM_FUNC_END(ftrace_stub)
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
