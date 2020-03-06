Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA9D17B6D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 07:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F2w91+n2yn87WDKxiAQTUIST94q+PadPOde9I1YXxlI=; b=tbqXUdkq8m2NSuR4yYtA49rjn7
	1vB2IdzTD4SecBm6ZGKIkzKeIB6qIXbHwmbmfWsoEagAdq85ZQHSsJ74rYWIVFybeOK7mwdgMpWij
	9fSahWqeCp7Jot5bKl/G6aRmyPgZaPz70SfhGd96Xbt3byewVnBFiWph6KWZfRFe1Ywb+hGirBEq0
	6UiMX7+vY7si3nxcziA+Bd4YjalzqQzvv+bff5sCMTBT0ewQGiz5vcvmCUpnGSgnEDRpAxWvyM1Bs
	z+nHpWtQB+spCicbUN2nj7DOsezWy71OuIK/UPaOxn5N31HbeTgk1JTmq98J67mwHVHh03IB8zTy0
	0aPOX2vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6da-0007Rc-Re; Fri, 06 Mar 2020 06:39:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6av-0005Dl-5r
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 06:36:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45CA44B2;
 Thu,  5 Mar 2020 22:36:24 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 429093F6CF;
 Thu,  5 Mar 2020 22:40:16 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 11/18] arm64: initialize ptrauth keys for kernel booting
 task
Date: Fri,  6 Mar 2020 12:05:18 +0530
Message-Id: <1583476525-13505-12-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_223625_323533_42168000 
X-CRM114-Status: GOOD (  13.78  )
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

This patch uses the existing boot_init_stack_canary arch function
to initialize the ptrauth keys for the booting task in the primary
core. The requirement here is that it should be always inline and
the caller must never return.

As pointer authentication too detects a subset of stack corruption
so it makes sense to place this code here.

Both pointer authentication and stack canary codes are protected
by their respective config option.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/include/asm/pointer_auth.h   | 11 ++++++++++-
 arch/arm64/include/asm/stackprotector.h |  5 +++++
 include/linux/stackprotector.h          |  2 +-
 3 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index aa956ca..833d3f9 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -54,12 +54,18 @@ do {								\
 	write_sysreg_s(__pki_v.hi, SYS_ ## k ## KEYHI_EL1);	\
 } while (0)
 
-static inline void ptrauth_keys_init_kernel(struct ptrauth_keys_kernel *keys)
+static __always_inline void ptrauth_keys_init_kernel(struct ptrauth_keys_kernel *keys)
 {
 	if (system_supports_address_auth())
 		get_random_bytes(&keys->apia, sizeof(keys->apia));
 }
 
+static __always_inline void ptrauth_keys_switch_kernel(struct ptrauth_keys_kernel *keys)
+{
+	if (system_supports_address_auth())
+		__ptrauth_key_install(APIA, keys->apia);
+}
+
 extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
 
 /*
@@ -78,12 +84,15 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
 	ptrauth_keys_init_user(&(tsk)->thread.keys_user)
 #define ptrauth_thread_init_kernel(tsk)					\
 	ptrauth_keys_init_kernel(&(tsk)->thread.keys_kernel)
+#define ptrauth_thread_switch_kernel(tsk)				\
+	ptrauth_keys_switch_kernel(&(tsk)->thread.keys_kernel)
 
 #else /* CONFIG_ARM64_PTR_AUTH */
 #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
 #define ptrauth_strip_insn_pac(lr)	(lr)
 #define ptrauth_thread_init_user(tsk)
 #define ptrauth_thread_init_kernel(tsk)
+#define ptrauth_thread_switch_kernel(tsk)
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
 #endif /* __ASM_POINTER_AUTH_H */
diff --git a/arch/arm64/include/asm/stackprotector.h b/arch/arm64/include/asm/stackprotector.h
index 5884a2b..7263e0b 100644
--- a/arch/arm64/include/asm/stackprotector.h
+++ b/arch/arm64/include/asm/stackprotector.h
@@ -15,6 +15,7 @@
 
 #include <linux/random.h>
 #include <linux/version.h>
+#include <asm/pointer_auth.h>
 
 extern unsigned long __stack_chk_guard;
 
@@ -26,6 +27,7 @@ extern unsigned long __stack_chk_guard;
  */
 static __always_inline void boot_init_stack_canary(void)
 {
+#if defined(CONFIG_STACKPROTECTOR)
 	unsigned long canary;
 
 	/* Try to get a semi random initial value. */
@@ -36,6 +38,9 @@ static __always_inline void boot_init_stack_canary(void)
 	current->stack_canary = canary;
 	if (!IS_ENABLED(CONFIG_STACKPROTECTOR_PER_TASK))
 		__stack_chk_guard = current->stack_canary;
+#endif
+	ptrauth_thread_init_kernel(current);
+	ptrauth_thread_switch_kernel(current);
 }
 
 #endif	/* _ASM_STACKPROTECTOR_H */
diff --git a/include/linux/stackprotector.h b/include/linux/stackprotector.h
index 6b792d0..4c678c4 100644
--- a/include/linux/stackprotector.h
+++ b/include/linux/stackprotector.h
@@ -6,7 +6,7 @@
 #include <linux/sched.h>
 #include <linux/random.h>
 
-#ifdef CONFIG_STACKPROTECTOR
+#if defined(CONFIG_STACKPROTECTOR) || defined(CONFIG_ARM64_PTR_AUTH)
 # include <asm/stackprotector.h>
 #else
 static inline void boot_init_stack_canary(void)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
