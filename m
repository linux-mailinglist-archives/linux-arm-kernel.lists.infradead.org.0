Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF91E7DF45
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CyAnZZwIGtdROFlZ+TVyESUNYE/Mv0B5HrcXbhrPQoU=; b=ufnjWeAeuEDo+e
	ge3tNHxVE9HSaJpDgy7dkaHK5HOA6rCbKl/MLLxSoDB+girkfvnJsIzWITh5wrCNR8u7jXMckSf5R
	XAJ9lpVWxzQM8+8h1kfRJ1T8wfA54v3tvK+tLSk4fdJornDe16ZpRszIewUTMGc//jduHf5uWzsVU
	34TADyFZPZ9bywlCIdTD2NF6a/TNVxapmuX3lJPSZoc0xUPQw188SEsIga/q7UtBcM4YXYbvUehOF
	uNJ5NYh8Lhp/at0JyOmjDfczb9utUlW3nCFEM5CKmAFNj/KuPJoV4oevkdTX63/GbV0nSwQtG2hJg
	Sem2eAOE6ZGQaa7guBzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDE0-0002yc-Fn; Thu, 01 Aug 2019 15:42:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htDDa-0002aX-Gv
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:42:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFCB3337;
 Thu,  1 Aug 2019 08:42:13 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F6553F694;
 Thu,  1 Aug 2019 08:42:12 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: entry: Move ct_user_exit before we can take
 another exception
Date: Thu,  1 Aug 2019 16:41:50 +0100
Message-Id: <20190801154150.195959-3-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801154150.195959-1-james.morse@arm.com>
References: <20190801154150.195959-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_084214_654278_A68713D0 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When taking an exception from EL0 we unmask exceptions before calling
ct_user_exit. This means we could take an interrupt or be single-stepped
in the gap. The entry from EL1 code sees that we took an exception from
the kernel, whereas the context_tracking code believes we are still in
user-space.

To keep these things consistent, move the ct_user_exit calls before
any unmask of exceptions.

Fixes: 6c81fe7925cc4c42 ("arm64: enable context tracking")
Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/entry.S | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 28681034d599..88f4ab21cb66 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -792,8 +792,8 @@ el0_cp15:
 	/*
 	 * Trapped CP15 (MRC, MCR, MRRC, MCRR) instructions
 	 */
-	enable_daif
 	ct_user_exit
+	enable_daif
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_cp15instr
@@ -805,8 +805,8 @@ el0_da:
 	 * Data abort handling
 	 */
 	mrs	x26, far_el1
-	enable_daif
 	ct_user_exit
+	enable_daif
 	clear_address_tag x0, x26
 	mov	x1, x25
 	mov	x2, sp
@@ -818,11 +818,11 @@ el0_ia:
 	 */
 	mrs	x26, far_el1
 	gic_prio_kentry_setup tmp=x0
+	ct_user_exit
 	enable_da_f
 #ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
 #endif
-	ct_user_exit
 	mov	x0, x26
 	mov	x1, x25
 	mov	x2, sp
@@ -832,8 +832,8 @@ el0_fpsimd_acc:
 	/*
 	 * Floating Point or Advanced SIMD access
 	 */
-	enable_daif
 	ct_user_exit
+	enable_daif
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_fpsimd_acc
@@ -842,8 +842,8 @@ el0_sve_acc:
 	/*
 	 * Scalable Vector Extension access
 	 */
-	enable_daif
 	ct_user_exit
+	enable_daif
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_sve_acc
@@ -852,8 +852,8 @@ el0_fpsimd_exc:
 	/*
 	 * Floating Point, Advanced SIMD or SVE exception
 	 */
-	enable_daif
 	ct_user_exit
+	enable_daif
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_fpsimd_exc
@@ -868,11 +868,11 @@ el0_sp_pc:
 	 * Stack or PC alignment exception handling
 	 */
 	gic_prio_kentry_setup tmp=x0
+	ct_user_exit
 	enable_da_f
 #ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
 #endif
-	ct_user_exit
 	mov	x0, x26
 	mov	x1, x25
 	mov	x2, sp
@@ -882,8 +882,8 @@ el0_undef:
 	/*
 	 * Undefined instruction
 	 */
-	enable_daif
 	ct_user_exit
+	enable_daif
 	mov	x0, sp
 	bl	do_undefinstr
 	b	ret_to_user
@@ -891,8 +891,8 @@ el0_sys:
 	/*
 	 * System instructions, for trapped cache maintenance instructions
 	 */
-	enable_daif
 	ct_user_exit
+	enable_daif
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_sysinstr
@@ -912,8 +912,8 @@ el0_dbg:
 	enable_da_f
 	b	ret_to_user
 el0_inv:
-	enable_daif
 	ct_user_exit
+	enable_daif
 	mov	x0, sp
 	mov	x1, #BAD_SYNC
 	mov	x2, x25
@@ -926,13 +926,13 @@ el0_irq:
 	kernel_entry 0
 el0_irq_naked:
 	gic_prio_irq_setup pmr=x20, tmp=x0
+	ct_user_exit
 	enable_da_f
 
 #ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
 #endif
 
-	ct_user_exit
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 	tbz	x22, #55, 1f
 	bl	do_el0_irq_bp_hardening
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
