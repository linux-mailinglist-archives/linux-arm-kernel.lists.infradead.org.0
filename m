Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DBE1B58EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f+82KSwm3iFN61ugbSCPf4IVvs3JSVhC0ZhyGSiO5do=; b=cg1YhWlC8xp6RbZX9gc7tVmobb
	4hV36iL8HY7r5Sg2D4cFMy7PdiTH+oYuMeLHcN1TWIbkOKTyQhUfKRp5MCJkETuYkEgdtuSfHHHpo
	v+gxT2ksULs6jJm5yCc0WSxYuba8gWvoadYF0w9HKPd1Zc6G0dMVkll4phk6iFWs11H0Gil5Ns0Zb
	VFwVudQ6HPa8QT807IdV9U9HMIv9ZnH93VaB0oLCgtIL0bEqfrkBZl1YjiSgeUQaig2hq/jNmsnmS
	GGMR6gNIGfnT26gHKwPN5CxvjcLZpG2kLwBdPBnBlXg1U52mlgs65JGyVFIwPX8d3gco3C8hi68Si
	T0hxf2Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYuc-0001oQ-Fb; Thu, 23 Apr 2020 10:16:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYu3-0000r5-Mu
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:16:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A65FE31B;
 Thu, 23 Apr 2020 03:16:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A733C3F68F;
 Thu, 23 Apr 2020 03:16:17 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: remove ptrauth_keys_install_kernel sync arg
Date: Thu, 23 Apr 2020 11:16:05 +0100
Message-Id: <20200423101606.37601-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200423101606.37601-1-mark.rutland@arm.com>
References: <20200423101606.37601-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_031619_843062_71D65F03 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, amit.kachhap@arm.com, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'sync' argument to ptrauth_keys_install_kernel macro is somewhat
opaque at callsites, so instead lets have regular and _nosync variants
of the macro to make this a little more obvious.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/asm_pointer_auth.h | 21 ++++++++++++++++-----
 arch/arm64/kernel/entry.S                 |  4 ++--
 arch/arm64/mm/proc.S                      |  2 +-
 3 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
index ce2a8486992b..c85540a911d3 100644
--- a/arch/arm64/include/asm/asm_pointer_auth.h
+++ b/arch/arm64/include/asm/asm_pointer_auth.h
@@ -39,16 +39,24 @@ alternative_if ARM64_HAS_GENERIC_AUTH
 alternative_else_nop_endif
 	.endm
 
-	.macro ptrauth_keys_install_kernel tsk, sync, tmp1, tmp2, tmp3
-alternative_if ARM64_HAS_ADDRESS_AUTH
+	.macro __ptrauth_keys_install_kernel_nosync tsk, tmp1, tmp2, tmp3
 	mov	\tmp1, #THREAD_KEYS_KERNEL
 	add	\tmp1, \tsk, \tmp1
 	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KERNEL_KEY_APIA]
 	msr_s	SYS_APIAKEYLO_EL1, \tmp2
 	msr_s	SYS_APIAKEYHI_EL1, \tmp3
-	.if     \sync == 1
+	.endm
+
+	.macro ptrauth_keys_install_kernel_nosync tsk, tmp1, tmp2, tmp3
+alternative_if ARM64_HAS_ADDRESS_AUTH
+	__ptrauth_keys_install_kernel_nosync \tsk, \tmp1, \tmp2, \tmp3
+alternative_else_nop_endif
+	.endm
+
+	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
+alternative_if ARM64_HAS_ADDRESS_AUTH
+	__ptrauth_keys_install_kernel_nosync \tsk, \tmp1, \tmp2, \tmp3
 	isb
-	.endif
 alternative_else_nop_endif
 	.endm
 
@@ -57,7 +65,10 @@ alternative_else_nop_endif
 	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
 	.endm
 
-	.macro ptrauth_keys_install_kernel tsk, sync, tmp1, tmp2, tmp3
+	.macro ptrauth_keys_install_kernel_nosync tsk, tmp1, tmp2, tmp3
+	.endm
+
+	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
 	.endm
 
 #endif /* CONFIG_ARM64_PTR_AUTH */
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ddcde093c433..a9265fef914f 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -178,7 +178,7 @@ alternative_cb_end
 
 	apply_ssbd 1, x22, x23
 
-	ptrauth_keys_install_kernel tsk, 1, x20, x22, x23
+	ptrauth_keys_install_kernel tsk, x20, x22, x23
 	.else
 	add	x21, sp, #S_FRAME_SIZE
 	get_current_task tsk
@@ -900,7 +900,7 @@ SYM_FUNC_START(cpu_switch_to)
 	ldr	lr, [x8]
 	mov	sp, x9
 	msr	sp_el0, x1
-	ptrauth_keys_install_kernel x1, 1, x8, x9, x10
+	ptrauth_keys_install_kernel x1, x8, x9, x10
 	ret
 SYM_FUNC_END(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 197a9ba2d5ea..0401342741e6 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -139,7 +139,7 @@ alternative_if ARM64_HAS_RAS_EXTN
 	msr_s	SYS_DISR_EL1, xzr
 alternative_else_nop_endif
 
-	ptrauth_keys_install_kernel x14, 0, x1, x2, x3
+	ptrauth_keys_install_kernel_nosync x14, x1, x2, x3
 	isb
 	ret
 SYM_FUNC_END(cpu_do_resume)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
