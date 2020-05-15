Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C541D57DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ky2AJnDfwrStooUJ90z7xxIGEjkMbz+NVGUH3AhDY4=; b=F4kJ70zvPvWijC
	R8UKPflpQbhC8hov/ZG1D9ClO5fvfRxkVi+tOt99aLCUSjZrta8FO7+z+ohg0pQJ9kfVuPcfSja1q
	oPnNg2/yZQ3lFxzypcGYg145kbcrUWuRo2Vj8R6t9pUXhFJiRMlHaegLjEySSy7P2i74rPhCTnprq
	YciUSdFjEdwYMU+dHCu6lVj7rdcFb4fzIJ8P1UvealiOlZUl88e7YHchVg2o6Svb/WWcBY9mSV/sJ
	tuxTqYWky6jKfy9A1dmwPOrDDLLxp5sHOSxD8DLkz5DZ1+Egp5hJjw1E017Usq77dur2MjI2wZMzs
	IYqVqalgxj0oDB7Z7FRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe92-0000mK-ML; Fri, 15 May 2020 17:29:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZe85-00009U-Om
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:28:15 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 664B420756;
 Fri, 15 May 2020 17:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589563693;
 bh=p66GI+uTo7YFHULVF+gV8GMNJV+n4qtI5rkkXvHNSgA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MzT4gx/SEvgCF35wdoC8o12qutuMXLDyvFTvlIapI95GJch+y536OIiJeafpy7ktV
 PRPft1PnSAwuL2gnIi72NGdVmAEKyRUHbLwyjtFw1nqHf+WMWjtRXfcEwPQMuppVGS
 OgLKeU41E1vqgbhfujljiGor4MjYsDSlaKhIKjFk=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] arm64: scs: Use 'scs_sp' register alias for x18
Date: Fri, 15 May 2020 18:27:53 +0100
Message-Id: <20200515172756.27185-4-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515172756.27185-1-will@kernel.org>
References: <20200515172756.27185-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_102813_849751_043035D1 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel-team@android.com, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@am.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

x18 holds the SCS stack pointer value, so introduce a register alias to
make this easier to read in assembly code.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/scs.h |  6 ++++--
 arch/arm64/kernel/entry.S    | 10 +++++-----
 arch/arm64/kernel/head.S     |  2 +-
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
index 6b8cf4352fe3..d46efdd2060a 100644
--- a/arch/arm64/include/asm/scs.h
+++ b/arch/arm64/include/asm/scs.h
@@ -7,12 +7,14 @@
 #include <asm/asm-offsets.h>
 
 #ifdef CONFIG_SHADOW_CALL_STACK
+	scs_sp	.req	x18
+
 	.macro scs_load tsk, tmp
-	ldr	x18, [\tsk, #TSK_TI_SCS_SP]
+	ldr	scs_sp, [\tsk, #TSK_TI_SCS_SP]
 	.endm
 
 	.macro scs_save tsk, tmp
-	str	x18, [\tsk, #TSK_TI_SCS_SP]
+	str	scs_sp, [\tsk, #TSK_TI_SCS_SP]
 	.endm
 #else
 	.macro scs_load tsk, tmp
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index cb0516e6f963..741faf0706f1 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -394,7 +394,7 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 	.macro	irq_stack_entry
 	mov	x19, sp			// preserve the original sp
 #ifdef CONFIG_SHADOW_CALL_STACK
-	mov	x24, x18		// preserve the original shadow stack
+	mov	x24, scs_sp		// preserve the original shadow stack
 #endif
 
 	/*
@@ -416,7 +416,7 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
 #ifdef CONFIG_SHADOW_CALL_STACK
 	/* also switch to the irq shadow stack */
-	adr_this_cpu x18, irq_shadow_call_stack, x26
+	adr_this_cpu scs_sp, irq_shadow_call_stack, x26
 #endif
 
 9998:
@@ -430,7 +430,7 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 	.macro	irq_stack_exit
 	mov	sp, x19
 #ifdef CONFIG_SHADOW_CALL_STACK
-	mov	x18, x24
+	mov	scs_sp, x24
 #endif
 	.endm
 
@@ -1071,9 +1071,9 @@ SYM_CODE_START(__sdei_asm_handler)
 #ifdef CONFIG_SHADOW_CALL_STACK
 	/* Use a separate shadow call stack for normal and critical events */
 	cbnz	w4, 3f
-	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal, tmp=x6
+	adr_this_cpu dst=scs_sp, sym=sdei_shadow_call_stack_normal, tmp=x6
 	b	4f
-3:	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical, tmp=x6
+3:	adr_this_cpu dst=scs_sp, sym=sdei_shadow_call_stack_critical, tmp=x6
 4:
 #endif
 
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 2b01c19c5483..1293baddfd20 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -426,7 +426,7 @@ SYM_FUNC_START_LOCAL(__primary_switched)
 	mov	x29, sp
 
 #ifdef CONFIG_SHADOW_CALL_STACK
-	adr_l	x18, init_shadow_call_stack	// Set shadow call stack
+	adr_l	scs_sp, init_shadow_call_stack	// Set shadow call stack
 #endif
 
 	str_l	x21, __fdt_pointer, x5		// Save FDT pointer
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
