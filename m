Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A71817B6DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 07:40:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c2DdwtDuhvb/jC6aqaBRU/z2KYNUyJ9D4n33rNECdbc=; b=b9ucGLl3KcdwJyGKuo+iS2ZGqv
	atyV6TWcVX1+/Dkxj2V84P1gMyElXuJSlxXPj3OJdIgL/HraNLrEascu5h/LvsXGomYH0SkhhriIK
	88ZuwCn2c7GtmhUGM/WroCdk+54SN+FRzZ2pcNsm0oAcx/9F//7c9Q9xo019A/wqHdWzlvNz2v2bv
	Abvz+pyF4woA3lIw0+4ZfDkc6X845kyVvAk+osjnbejyCQCZl5UJzG+bcXngioucevLQZ9hXzUvtl
	DswoYrD8IxVEJ7mFbmhIyqGpZa2KU6Eg27rNqDfqP0StHsJbOnKzk7+Jd8Yyj9IM7KwAflG83DoQI
	sm9dsTdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6er-0001Hq-UV; Fri, 06 Mar 2020 06:40:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6bB-0005X4-BQ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 06:36:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1CBE30E;
 Thu,  5 Mar 2020 22:36:40 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E11233F6CF;
 Thu,  5 Mar 2020 22:40:32 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 15/18] arm64: suspend: restore the kernel ptrauth keys
Date: Fri,  6 Mar 2020 12:05:22 +0530
Message-Id: <1583476525-13505-16-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_223641_523236_A9F549FF 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch restores the kernel keys from current task during cpu resume
after the mmu is turned on and ptrauth is enabled.

A flag is added in macro ptrauth_keys_install_kernel to check if isb
instruction needs to executed.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since v5:
 * Moved ptrauth_keys_install_kernel inside function cpu_do_resume.
 * Added a flag in ptrauth_keys_install_kernel to provide options for isb
   instruction.

 arch/arm64/include/asm/asm_pointer_auth.h | 6 ++++--
 arch/arm64/kernel/entry.S                 | 4 ++--
 arch/arm64/mm/proc.S                      | 2 ++
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
index 4152afe..899a007 100644
--- a/arch/arm64/include/asm/asm_pointer_auth.h
+++ b/arch/arm64/include/asm/asm_pointer_auth.h
@@ -39,14 +39,16 @@ alternative_if ARM64_HAS_GENERIC_AUTH
 alternative_else_nop_endif
 	.endm
 
-	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
+	.macro ptrauth_keys_install_kernel tsk, sync, tmp1, tmp2, tmp3
 alternative_if ARM64_HAS_ADDRESS_AUTH
 	mov	\tmp1, #THREAD_KEYS_KERNEL
 	add	\tmp1, \tsk, \tmp1
 	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KERNEL_KEY_APIA]
 	msr_s	SYS_APIAKEYLO_EL1, \tmp2
 	msr_s	SYS_APIAKEYHI_EL1, \tmp3
+	.if     \sync == 1
 	isb
+	.endif
 alternative_else_nop_endif
 	.endm
 
@@ -55,7 +57,7 @@ alternative_else_nop_endif
 	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
 	.endm
 
-	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
+	.macro ptrauth_keys_install_kernel tsk, sync, tmp1, tmp2, tmp3
 	.endm
 
 #endif /* CONFIG_ARM64_PTR_AUTH */
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 3dad2d0..6273d7b 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -178,7 +178,7 @@ alternative_cb_end
 
 	apply_ssbd 1, x22, x23
 
-	ptrauth_keys_install_kernel tsk, x20, x22, x23
+	ptrauth_keys_install_kernel tsk, 1, x20, x22, x23
 	.else
 	add	x21, sp, #S_FRAME_SIZE
 	get_current_task tsk
@@ -900,7 +900,7 @@ ENTRY(cpu_switch_to)
 	ldr	lr, [x8]
 	mov	sp, x9
 	msr	sp_el0, x1
-	ptrauth_keys_install_kernel x1, x8, x9, x10
+	ptrauth_keys_install_kernel x1, 1, x8, x9, x10
 	ret
 ENDPROC(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 5a11a89..4450dc8 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -11,6 +11,7 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 #include <asm/asm-offsets.h>
+#include <asm/asm_pointer_auth.h>
 #include <asm/hwcap.h>
 #include <asm/pgtable.h>
 #include <asm/pgtable-hwdef.h>
@@ -137,6 +138,7 @@ alternative_if ARM64_HAS_RAS_EXTN
 	msr_s	SYS_DISR_EL1, xzr
 alternative_else_nop_endif
 
+	ptrauth_keys_install_kernel x14, 0, x1, x2, x3
 	isb
 	ret
 SYM_FUNC_END(cpu_do_resume)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
