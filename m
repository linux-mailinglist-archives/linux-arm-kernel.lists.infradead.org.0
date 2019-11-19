Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54669102484
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yyctDI4e+op+W3IsFHIdVWBk36Tzpc4zMfC3/txWmS0=; b=dURhK7Ao/UeXVKmQacNTSTFyXl
	lcwd2lUgo7k+aq2rOvUr+YJ3taoUPHQ7T5/mHGsmv0pE2OMkoCXRE60hjeYKKsJ2iYUb+AgSRywcx
	im8LP2bAuYAer4r31n15czwdyAnyk1NAzg/T8EbMquLiqHSo2dJNznIL7PhqUstBYP9Q2SI6hy+MR
	1LQm/76zEPd8m2eQgujlxfW3eGmyu0Ci/6kZRGPJR6P6CVBAjNOqOtIFOIH6NnKQhHDoh8gtuGrs3
	yT2I133ku/RpoPxQ+J2BH1mIcvwpk28VzvEsC3SYqpeuAnwLj87Ja21X7AS8DKj5pxG5Hunkvs55a
	79WZbc0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2j1-0008WI-Ql; Tue, 19 Nov 2019 12:35:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2hA-00074u-0o
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:33:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C9441FB;
 Tue, 19 Nov 2019 04:33:22 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1DE473F703;
 Tue, 19 Nov 2019 04:33:18 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/14] arm64: rename ptrauth key structures to be
 user-specific
Date: Tue, 19 Nov 2019 18:02:18 +0530
Message-Id: <1574166746-27197-7-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_043324_193458_BBBA954C 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kristina Martsenko <kristina.martsenko@arm.com>

We currently enable ptrauth for userspace, but do not use it within the
kernel. We're going to enable it for the kernel, and will need to manage
a separate set of ptrauth keys for the kernel.

We currently keep all 5 keys in struct ptrauth_keys. However, as the
kernel will only need to use 1 key, it is a bit wasteful to allocate a
whole ptrauth_keys struct for every thread.

Therefore, a subsequent patch will define a separate struct, with only 1
key, for the kernel. In preparation for that, rename the existing struct
(and associated macros and functions) to reflect that they are specific
to userspace.

Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
* None

 arch/arm64/include/asm/asm_pointer_auth.h | 10 +++++-----
 arch/arm64/include/asm/pointer_auth.h     |  6 +++---
 arch/arm64/include/asm/processor.h        |  2 +-
 arch/arm64/kernel/asm-offsets.c           | 10 +++++-----
 arch/arm64/kernel/pointer_auth.c          |  4 ++--
 arch/arm64/kernel/ptrace.c                | 16 ++++++++--------
 6 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
index cb21a06..3d39788 100644
--- a/arch/arm64/include/asm/asm_pointer_auth.h
+++ b/arch/arm64/include/asm/asm_pointer_auth.h
@@ -15,21 +15,21 @@
 alternative_if_not ARM64_HAS_ADDRESS_AUTH
 	b	.Laddr_auth_skip_\@
 alternative_else_nop_endif
-	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIA]
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIA]
 	msr_s	SYS_APIAKEYLO_EL1, \tmp2
 	msr_s	SYS_APIAKEYHI_EL1, \tmp3
-	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIB]
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIB]
 	msr_s	SYS_APIBKEYLO_EL1, \tmp2
 	msr_s	SYS_APIBKEYHI_EL1, \tmp3
-	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDA]
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDA]
 	msr_s	SYS_APDAKEYLO_EL1, \tmp2
 	msr_s	SYS_APDAKEYHI_EL1, \tmp3
-	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDB]
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDB]
 	msr_s	SYS_APDBKEYLO_EL1, \tmp2
 	msr_s	SYS_APDBKEYHI_EL1, \tmp3
 .Laddr_auth_skip_\@:
 alternative_if ARM64_HAS_GENERIC_AUTH
-	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APGA]
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APGA]
 	msr_s	SYS_APGAKEYLO_EL1, \tmp2
 	msr_s	SYS_APGAKEYHI_EL1, \tmp3
 alternative_else_nop_endif
diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 21c2115..cc42145 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -22,7 +22,7 @@ struct ptrauth_key {
  * We give each process its own keys, which are shared by all threads. The keys
  * are inherited upon fork(), and reinitialised upon exec*().
  */
-struct ptrauth_keys {
+struct ptrauth_keys_user {
 	struct ptrauth_key apia;
 	struct ptrauth_key apib;
 	struct ptrauth_key apda;
@@ -30,7 +30,7 @@ struct ptrauth_keys {
 	struct ptrauth_key apga;
 };
 
-static inline void ptrauth_keys_init(struct ptrauth_keys *keys)
+static inline void ptrauth_keys_init_user(struct ptrauth_keys_user *keys)
 {
 	if (system_supports_address_auth()) {
 		get_random_bytes(&keys->apia, sizeof(keys->apia));
@@ -58,7 +58,7 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
 }
 
 #define ptrauth_thread_init_user(tsk)					\
-	ptrauth_keys_init(&(tsk)->thread.keys_user)
+	ptrauth_keys_init_user(&(tsk)->thread.keys_user)
 
 #else /* CONFIG_ARM64_PTR_AUTH */
 #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5623685..8ec792d 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -144,7 +144,7 @@ struct thread_struct {
 	unsigned long		fault_code;	/* ESR_EL1 value */
 	struct debug_info	debug;		/* debugging */
 #ifdef CONFIG_ARM64_PTR_AUTH
-	struct ptrauth_keys	keys_user;
+	struct ptrauth_keys_user	keys_user;
 #endif
 };
 
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index ef0c24b..cf15182 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -131,11 +131,11 @@ int main(void)
   DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
 #endif
 #ifdef CONFIG_ARM64_PTR_AUTH
-  DEFINE(PTRAUTH_KEY_APIA,	offsetof(struct ptrauth_keys, apia));
-  DEFINE(PTRAUTH_KEY_APIB,	offsetof(struct ptrauth_keys, apib));
-  DEFINE(PTRAUTH_KEY_APDA,	offsetof(struct ptrauth_keys, apda));
-  DEFINE(PTRAUTH_KEY_APDB,	offsetof(struct ptrauth_keys, apdb));
-  DEFINE(PTRAUTH_KEY_APGA,	offsetof(struct ptrauth_keys, apga));
+  DEFINE(PTRAUTH_USER_KEY_APIA,		offsetof(struct ptrauth_keys_user, apia));
+  DEFINE(PTRAUTH_USER_KEY_APIB,		offsetof(struct ptrauth_keys_user, apib));
+  DEFINE(PTRAUTH_USER_KEY_APDA,		offsetof(struct ptrauth_keys_user, apda));
+  DEFINE(PTRAUTH_USER_KEY_APDB,		offsetof(struct ptrauth_keys_user, apdb));
+  DEFINE(PTRAUTH_USER_KEY_APGA,		offsetof(struct ptrauth_keys_user, apga));
   BLANK();
 #endif
   return 0;
diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
index 95985be..1e77736 100644
--- a/arch/arm64/kernel/pointer_auth.c
+++ b/arch/arm64/kernel/pointer_auth.c
@@ -9,7 +9,7 @@
 
 int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
 {
-	struct ptrauth_keys *keys = &tsk->thread.keys_user;
+	struct ptrauth_keys_user *keys = &tsk->thread.keys_user;
 	unsigned long addr_key_mask = PR_PAC_APIAKEY | PR_PAC_APIBKEY |
 				      PR_PAC_APDAKEY | PR_PAC_APDBKEY;
 	unsigned long key_mask = addr_key_mask | PR_PAC_APGAKEY;
@@ -18,7 +18,7 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
 		return -EINVAL;
 
 	if (!arg) {
-		ptrauth_keys_init(keys);
+		ptrauth_keys_init_user(keys);
 		return 0;
 	}
 
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index 21176d0..0793739 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -986,7 +986,7 @@ static struct ptrauth_key pac_key_from_user(__uint128_t ukey)
 }
 
 static void pac_address_keys_to_user(struct user_pac_address_keys *ukeys,
-				     const struct ptrauth_keys *keys)
+				     const struct ptrauth_keys_user *keys)
 {
 	ukeys->apiakey = pac_key_to_user(&keys->apia);
 	ukeys->apibkey = pac_key_to_user(&keys->apib);
@@ -994,7 +994,7 @@ static void pac_address_keys_to_user(struct user_pac_address_keys *ukeys,
 	ukeys->apdbkey = pac_key_to_user(&keys->apdb);
 }
 
-static void pac_address_keys_from_user(struct ptrauth_keys *keys,
+static void pac_address_keys_from_user(struct ptrauth_keys_user *keys,
 				       const struct user_pac_address_keys *ukeys)
 {
 	keys->apia = pac_key_from_user(ukeys->apiakey);
@@ -1008,7 +1008,7 @@ static int pac_address_keys_get(struct task_struct *target,
 				unsigned int pos, unsigned int count,
 				void *kbuf, void __user *ubuf)
 {
-	struct ptrauth_keys *keys = &target->thread.keys_user;
+	struct ptrauth_keys_user *keys = &target->thread.keys_user;
 	struct user_pac_address_keys user_keys;
 
 	if (!system_supports_address_auth())
@@ -1025,7 +1025,7 @@ static int pac_address_keys_set(struct task_struct *target,
 				unsigned int pos, unsigned int count,
 				const void *kbuf, const void __user *ubuf)
 {
-	struct ptrauth_keys *keys = &target->thread.keys_user;
+	struct ptrauth_keys_user *keys = &target->thread.keys_user;
 	struct user_pac_address_keys user_keys;
 	int ret;
 
@@ -1043,12 +1043,12 @@ static int pac_address_keys_set(struct task_struct *target,
 }
 
 static void pac_generic_keys_to_user(struct user_pac_generic_keys *ukeys,
-				     const struct ptrauth_keys *keys)
+				     const struct ptrauth_keys_user *keys)
 {
 	ukeys->apgakey = pac_key_to_user(&keys->apga);
 }
 
-static void pac_generic_keys_from_user(struct ptrauth_keys *keys,
+static void pac_generic_keys_from_user(struct ptrauth_keys_user *keys,
 				       const struct user_pac_generic_keys *ukeys)
 {
 	keys->apga = pac_key_from_user(ukeys->apgakey);
@@ -1059,7 +1059,7 @@ static int pac_generic_keys_get(struct task_struct *target,
 				unsigned int pos, unsigned int count,
 				void *kbuf, void __user *ubuf)
 {
-	struct ptrauth_keys *keys = &target->thread.keys_user;
+	struct ptrauth_keys_user *keys = &target->thread.keys_user;
 	struct user_pac_generic_keys user_keys;
 
 	if (!system_supports_generic_auth())
@@ -1076,7 +1076,7 @@ static int pac_generic_keys_set(struct task_struct *target,
 				unsigned int pos, unsigned int count,
 				const void *kbuf, const void __user *ubuf)
 {
-	struct ptrauth_keys *keys = &target->thread.keys_user;
+	struct ptrauth_keys_user *keys = &target->thread.keys_user;
 	struct user_pac_generic_keys user_keys;
 	int ret;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
