Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C75A87B11
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 15:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ufP6Z4zEOhagO1ApDqKT5xlsGNtcJva+mlQ3qrDu7x4=; b=VOSBiPfnLastsE7nZMjG0nXjok
	Mqn+HkrBkHROPSsKqgZ0JDK95Pfj3vsi24L73bktAvBrh3LghiJPOrX1Wklu2HMe/fdEtvsDJ46pT
	Um6BVi9N6unr6aRp4AysVSA0xx/wWbA2btn9ir04xVH7vpUl8kMg1t12CDPZ71T0DfEwrYr9ljpqt
	3aSk/LiaH17NgLERC26CxyQHTTebw0LJYXo3uwCJbN5Fh0uKwSnPJ6FhPBbsL73axxdKqJnHgXWKv
	YfwHdTYl8/nqu4+iLH6Ona2Y/uo7oxvfNwb82m1xCoUPyMRnjQJL+purmFUrQMHXKLqRLqX84Y6Tl
	3IzbvAfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4sl-0002Nf-DO; Fri, 09 Aug 2019 13:24:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4rK-000171-Hw
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 13:23:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE5831684;
 Fri,  9 Aug 2019 06:23:05 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 68CD83F706;
 Fri,  9 Aug 2019 06:23:04 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 6/6] smccc: make 1.1 macros value-returning
Date: Fri,  9 Aug 2019 14:22:45 +0100
Message-Id: <20190809132245.43505-7-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190809132245.43505-1-mark.rutland@arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_062306_694716_7AD820C7 
X-CRM114-Status: GOOD (  12.75  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, suzuki.poulose@arm.com,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, james.morse@arm.com, robin.murphy@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm_smccc_1_1_{smc,hvc}() macros for inline invocation take a res
pointer as their final argument, matching the out-of-line SMCCC
invocation functions.

However, the inline invocation macros are variadic, so it's easy to mess
up passsing the correct parameters.

Instead, let's make them value-returning, which is less confusing.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm/mm/proc-v7-bugs.c     | 12 +++++------
 arch/arm64/kernel/cpu_errata.c | 24 ++++++++++-----------
 arch/arm64/kvm/hyp/switch.c    |  4 ++--
 include/linux/arm-smccc.h      | 49 +++++++++++++++++++-----------------------
 4 files changed, 42 insertions(+), 47 deletions(-)

diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
index 54d87506d3b5..6ceee88b1ffc 100644
--- a/arch/arm/mm/proc-v7-bugs.c
+++ b/arch/arm/mm/proc-v7-bugs.c
@@ -28,12 +28,12 @@ static void harden_branch_predictor_iciallu(void)
 
 static void __maybe_unused call_smc_arch_workaround_1(void)
 {
-	arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
+	arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_1);
 }
 
 static void __maybe_unused call_hvc_arch_workaround_1(void)
 {
-	arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
+	arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_1);
 }
 
 static void cpu_v7_spectre_init(void)
@@ -76,8 +76,8 @@ static void cpu_v7_spectre_init(void)
 
 		switch (arm_smccc_1_1_get_conduit()) {
 		case SMCCC_CONDUIT_HVC:
-			arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+			res = arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+						ARM_SMCCC_ARCH_WORKAROUND_1);
 			if ((int)res.a0 != 0)
 				break;
 			per_cpu(harden_branch_predictor_fn, cpu) =
@@ -87,8 +87,8 @@ static void cpu_v7_spectre_init(void)
 			break;
 
 		case SMCCC_CONDUIT_SMC:
-			arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+			res = arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+						ARM_SMCCC_ARCH_WORKAROUND_1);
 			if ((int)res.a0 != 0)
 				break;
 			per_cpu(harden_branch_predictor_fn, cpu) =
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 6ee09bca82f8..8d4e7d3514b4 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -169,12 +169,12 @@ static void install_bp_hardening_cb(bp_hardening_cb_t fn,
 
 static void call_smc_arch_workaround_1(void)
 {
-	arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
+	arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_1);
 }
 
 static void call_hvc_arch_workaround_1(void)
 {
-	arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
+	arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_1);
 }
 
 static void qcom_link_stack_sanitization(void)
@@ -211,8 +211,8 @@ static int detect_harden_bp_fw(void)
 
 	switch (arm_smccc_1_1_get_conduit()) {
 	case SMCCC_CONDUIT_HVC:
-		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+		res = arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+					ARM_SMCCC_ARCH_WORKAROUND_1);
 		switch ((int)res.a0) {
 		case 1:
 			/* Firmware says we're just fine */
@@ -229,8 +229,8 @@ static int detect_harden_bp_fw(void)
 		break;
 
 	case SMCCC_CONDUIT_SMC:
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+		res = arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+					ARM_SMCCC_ARCH_WORKAROUND_1);
 		switch ((int)res.a0) {
 		case 1:
 			/* Firmware says we're just fine */
@@ -347,11 +347,11 @@ void arm64_set_ssbd_mitigation(bool state)
 
 	switch (arm_smccc_1_1_get_conduit()) {
 	case SMCCC_CONDUIT_HVC:
-		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_2, state, NULL);
+		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_2, state);
 		break;
 
 	case SMCCC_CONDUIT_SMC:
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, state, NULL);
+		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, state);
 		break;
 
 	default:
@@ -386,13 +386,13 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 
 	switch (arm_smccc_1_1_get_conduit()) {
 	case SMCCC_CONDUIT_HVC:
-		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-				  ARM_SMCCC_ARCH_WORKAROUND_2, &res);
+		res = arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+					ARM_SMCCC_ARCH_WORKAROUND_2);
 		break;
 
 	case SMCCC_CONDUIT_SMC:
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-				  ARM_SMCCC_ARCH_WORKAROUND_2, &res);
+		res = arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+					ARM_SMCCC_ARCH_WORKAROUND_2);
 		break;
 
 	default:
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index adaf266d8de8..ac8351a57c29 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -479,7 +479,7 @@ static void __hyp_text __set_guest_arch_workaround_state(struct kvm_vcpu *vcpu)
 	 */
 	if (__needs_ssbd_off(vcpu) &&
 	    __hyp_this_cpu_read(arm64_ssbd_callback_required))
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, 0, NULL);
+		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, 0);
 #endif
 }
 
@@ -491,7 +491,7 @@ static void __hyp_text __set_host_arch_workaround_state(struct kvm_vcpu *vcpu)
 	 */
 	if (__needs_ssbd_off(vcpu) &&
 	    __hyp_this_cpu_read(arm64_ssbd_callback_required))
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, 1, NULL);
+		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, 1);
 #endif
 }
 
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index df01a8579034..1e0bcb292d17 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -177,7 +177,7 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 
 #endif
 
-#define ___count_args(_0, _1, _2, _3, _4, _5, _6, _7, _8, x, ...) x
+#define ___count_args(_0, _1, _2, _3, _4, _5, _6, _7, x, ...) x
 
 #define __count_args(...)						\
 	___count_args(__VA_ARGS__, 7, 6, 5, 4, 3, 2, 1, 0)
@@ -204,58 +204,54 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 #define __constraint_read_6	__constraint_read_5, "r" (r6)
 #define __constraint_read_7	__constraint_read_6, "r" (r7)
 
-#define __declare_arg_0(a0, res)					\
-	struct arm_smccc_res   *___res = res;				\
+#define __declare_arg_0(a0)						\
 	register unsigned long r0 asm("r0") = (u32)a0;			\
 	register unsigned long r1 asm("r1");				\
 	register unsigned long r2 asm("r2");				\
 	register unsigned long r3 asm("r3")
 
-#define __declare_arg_1(a0, a1, res)					\
+#define __declare_arg_1(a0, a1)						\
 	typeof(a1) __a1 = a1;						\
-	struct arm_smccc_res   *___res = res;				\
 	register unsigned long r0 asm("r0") = (u32)a0;			\
 	register unsigned long r1 asm("r1") = __a1;			\
 	register unsigned long r2 asm("r2");				\
 	register unsigned long r3 asm("r3")
 
-#define __declare_arg_2(a0, a1, a2, res)				\
+#define __declare_arg_2(a0, a1, a2)					\
 	typeof(a1) __a1 = a1;						\
 	typeof(a2) __a2 = a2;						\
-	struct arm_smccc_res   *___res = res;				\
 	register unsigned long r0 asm("r0") = (u32)a0;			\
 	register unsigned long r1 asm("r1") = __a1;			\
 	register unsigned long r2 asm("r2") = __a2;			\
 	register unsigned long r3 asm("r3")
 
-#define __declare_arg_3(a0, a1, a2, a3, res)				\
+#define __declare_arg_3(a0, a1, a2, a3)					\
 	typeof(a1) __a1 = a1;						\
 	typeof(a2) __a2 = a2;						\
 	typeof(a3) __a3 = a3;						\
-	struct arm_smccc_res   *___res = res;				\
 	register unsigned long r0 asm("r0") = (u32)a0;			\
 	register unsigned long r1 asm("r1") = __a1;			\
 	register unsigned long r2 asm("r2") = __a2;			\
 	register unsigned long r3 asm("r3") = __a3
 
-#define __declare_arg_4(a0, a1, a2, a3, a4, res)			\
+#define __declare_arg_4(a0, a1, a2, a3, a4)				\
 	typeof(a4) __a4 = a4;						\
-	__declare_arg_3(a0, a1, a2, a3, res);				\
+	__declare_arg_3(a0, a1, a2, a3);				\
 	register unsigned long r4 asm("r4") = __a4
 
-#define __declare_arg_5(a0, a1, a2, a3, a4, a5, res)			\
+#define __declare_arg_5(a0, a1, a2, a3, a4, a5)				\
 	typeof(a5) __a5 = a5;						\
-	__declare_arg_4(a0, a1, a2, a3, a4, res);			\
+	__declare_arg_4(a0, a1, a2, a3, a4);				\
 	register unsigned long r5 asm("r5") = __a5
 
-#define __declare_arg_6(a0, a1, a2, a3, a4, a5, a6, res)		\
+#define __declare_arg_6(a0, a1, a2, a3, a4, a5, a6)			\
 	typeof(a6) __a6 = a6;						\
-	__declare_arg_5(a0, a1, a2, a3, a4, a5, res);			\
+	__declare_arg_5(a0, a1, a2, a3, a4, a5);			\
 	register unsigned long r6 asm("r6") = __a6
 
-#define __declare_arg_7(a0, a1, a2, a3, a4, a5, a6, a7, res)		\
+#define __declare_arg_7(a0, a1, a2, a3, a4, a5, a6, a7)			\
 	typeof(a7) __a7 = a7;						\
-	__declare_arg_6(a0, a1, a2, a3, a4, a5, a6, res);		\
+	__declare_arg_6(a0, a1, a2, a3, a4, a5, a6);			\
 	register unsigned long r7 asm("r7") = __a7
 
 #define ___declare_args(count, ...) __declare_arg_ ## count(__VA_ARGS__)
@@ -273,22 +269,21 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
  * makes it stick.
  */
 #define __arm_smccc_1_1(inst, ...)					\
-	do {								\
+	({								\
 		__declare_args(__count_args(__VA_ARGS__), __VA_ARGS__);	\
 		asm volatile(inst "\n"					\
 			     __constraints(__count_args(__VA_ARGS__)));	\
-		if (___res)						\
-			*___res = (typeof(*___res)){r0, r1, r2, r3};	\
-	} while (0)
+		(struct arm_smccc_res){ r0, r1, r2, r3 };		\
+	})
 
 /*
  * arm_smccc_1_1_smc() - make an SMCCC v1.1 compliant SMC call
  *
- * This is a variadic macro taking one to eight source arguments, and
- * an optional return structure.
+ * This is a variadic macro taking one to eight source arguments.
  *
  * @a0-a7: arguments passed in registers 0 to 7
- * @res: result values from registers 0 to 3
+ *
+ * returns result values from registers 0 to 3
  *
  * This macro is used to make SMC calls following SMC Calling Convention v1.1.
  * The content of the supplied param are copied to registers 0 to 7 prior
@@ -300,11 +295,11 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 /*
  * arm_smccc_1_1_hvc() - make an SMCCC v1.1 compliant HVC call
  *
- * This is a variadic macro taking one to eight source arguments, and
- * an optional return structure.
+ * This is a variadic macro taking one to eight source arguments.
  *
  * @a0-a7: arguments passed in registers 0 to 7
- * @res: result values from registers 0 to 3
+ *
+ * returns result values from registers 0 to 3
  *
  * This macro is used to make HVC calls following SMC Calling Convention v1.1.
  * The content of the supplied param are copied to registers 0 to 7 prior
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
