Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C49379FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1R45fw6Cv7jQ6sVXQDtxbRZG5fl1oFeTRelbDPRAbyg=; b=n7U+x1GPE0SYqw4CuXko9Uu3/S
	TOMcPUdaxFzbRgK3YKSJwRW6YTAJifXZLB7qp+v+GkkAMIe+iT1WOcrAozA8Hynx+X8zg1WCGH31a
	MCCfAH8wz9TdacNNMkI+ZK3//qUrqlV6OjnOfyOT3pS6BWSngeiqT2Ol7jaAokyIyq6r3WFkUUaf2
	EzcBpSeyA7mGwKinHD4qKhEwgCNZiP2fkghydoWjs+NGZszFlq4dqm3+bUJoLSwSB68WHGf6c8OuY
	XwC+go+qqA6ITABZyMHxr1ME3ReuraNLa/6M1o+L5XqS4LLM2gHvGwwqhdpr7CoKHAE5IPjTaCvTv
	GdNE5igQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvWb-0008Ev-O0; Thu, 06 Jun 2019 16:46:01 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvWM-00087n-Bv
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:45:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4129E15A2;
 Thu,  6 Jun 2019 09:45:46 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D8F163F690;
 Thu,  6 Jun 2019 09:45:44 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64/sve: Fix missing SVE/FPSIMD endianness conversions
Date: Thu,  6 Jun 2019 17:44:55 +0100
Message-Id: <1559839495-22315-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_094546_411927_92725629 
X-CRM114-Status: GOOD (  23.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Will Deacon <will.deacon@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Julien Grall <julien.grall@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The in-memory representation of SVE and FPSIMD registers is
different: the FPSIMD V-registers are stored as single 128-bit
host-endian values, whereas SVE registers are stored in an
endianness-invariant byte order.

This means that the two representations differ when running on a
big-endian host.  But we blindly copy data from one representation
to another when converting between the two, resulting in the
register contents being unintentionally byteswapped in certain
situations.  Currently this can be triggered by the first SVE
instruction after a syscall, for example (though the potential
trigger points may vary in future).

So, fix the conversion functions __fpsimd_to_sve() and
sve_to_fpsimd() to swab where appropriate.

There is no common swahl128() or swab128() that we could use here.
Maybe it would be worth making this generic, but for now add a
simple local hack.

Since the byte order differences are exposed in ABI, also clarify
the docuentation.

Fixes: bc0ee4760364 ("arm64/sve: Core task context handling")
Fixes: 8cd969d28fd2 ("arm64/sve: Signal handling support")
Fixes: 43d4da2c45b2 ("arm64/sve: ptrace and ELF coredump support")
Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

The ptrace change is theoretically an ABI break, but since the current
behaviour is obviously wrong, I consider this a fix.

Tested on the Arm Fast Model, using:

 * asm code that mixes SVE instructions and syscalls;

 * ptrace interactions that mix the SVE_PT_REGS_FPSIMD and
   SVE_PT_REGS_SVE views of NT_ARM_SVE.

Signal frame behaviour not directly tested (since the underlying
conversion functions are the same in all cases).

Demonstrator code, on a big-endian platform:

.arch_extension sve

	index	z0.b, #0, #1
	str	v0, [x0]
// x0 -> 0f 0e 0d 0c 0b 0a 09 08 07 06 05 04 03 02 01 00

	mov	w8, #__NR_getpid
	svc	#0	// any noop syscall, reverts to non-SVE regs
	str	v0, [x0]
// x0 -> 0f 0e 0d 0c 0b 0a 09 08 07 06 05 04 03 02 01 00

	mov	z0.d, z0.d
	// triggers an SVE trap and buggy FPSIMD->SVE conversion
	str	v0, [x0]
// x0 -> 00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f

While a "cool feature", this is not what was intended.
---
 Documentation/arm64/sve.txt              | 16 +++++++++++++++
 arch/arm64/include/uapi/asm/kvm.h        |  7 +++++++
 arch/arm64/include/uapi/asm/ptrace.h     |  4 ++++
 arch/arm64/include/uapi/asm/sigcontext.h | 14 +++++++++++++
 arch/arm64/kernel/fpsimd.c               | 34 ++++++++++++++++++++++++++------
 5 files changed, 69 insertions(+), 6 deletions(-)

diff --git a/Documentation/arm64/sve.txt b/Documentation/arm64/sve.txt
index 9940e92..6c0bed3 100644
--- a/Documentation/arm64/sve.txt
+++ b/Documentation/arm64/sve.txt
@@ -56,6 +56,18 @@ model features for SVE is included in Appendix A.
   is to connect to a target process first and then attempt a
   ptrace(PTRACE_GETREGSET, pid, NT_ARM_SVE, &iov).
 
+* Whenever SVE scalable register values (Zn, Pn, FFR) are exchanged in memory
+  between userspace and the kernel, the register value is encoded in memory in
+  an endianness-invariant layout, with bits [(8 * i + 7) : (8 * i)] encoded at
+  byte offset i in from the start of the memory representation.  This affects
+  for example the signal frame (struct sve_context) and ptrace interface
+  (struct user_sve_header) and associated data.
+
+  Beware that on big-endian systems this results in a different byte order than
+  for the FPSIMD V-registers, which are stored as single host-endian 128-bit
+  values, with bits [(127 - 8 * i) : (120 - 8 * i)] of the register encoded at
+  byte offset i.  (struct fpsimd_context, struct user_fpsimd_state).
+
 
 2.  Vector length terminology
 -----------------------------
@@ -124,6 +136,10 @@ the SVE instruction set architecture.
   size and layout.  Macros SVE_SIG_* are defined [1] to facilitate access to
   the members.
 
+* Each scalable register (Zn, Pn, FFR) is stored in an endianness-invariant
+  layout, with bits [(8 * i + 7) : (8 * i)] stored at byte offset i from the
+  start of the register's representation in memory.
+
 * If the SVE context is too big to fit in sigcontext.__reserved[], then extra
   space is allocated on the stack, an extra_context record is written in
   __reserved[] referencing this space.  sve_context is then written in the
diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
index 7b7ac0f..072ea1e 100644
--- a/arch/arm64/include/uapi/asm/kvm.h
+++ b/arch/arm64/include/uapi/asm/kvm.h
@@ -260,6 +260,13 @@ struct kvm_vcpu_events {
 	 KVM_REG_SIZE_U256 |						\
 	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
 
+/*
+ * Register values for KVM_REG_ARM64_SVE_ZREG(), KVM_REG_ARM64_SVE_PREG() and
+ * KVM_REG_ARM64_SVE_FFR() and represented in memory in an endianness-
+ * invariant layout which differs from the layout used for the FPSIMD
+ * V-registers on big-endian systems: see sigcontext.h for more explanaion.
+ */
+
 #define KVM_ARM64_SVE_VQ_MIN __SVE_VQ_MIN
 #define KVM_ARM64_SVE_VQ_MAX __SVE_VQ_MAX
 
diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
index d78623a..018bf7d 100644
--- a/arch/arm64/include/uapi/asm/ptrace.h
+++ b/arch/arm64/include/uapi/asm/ptrace.h
@@ -176,6 +176,10 @@ struct user_sve_header {
  *	FPCR	uint32_t			FPCR
  *
  * Additional data might be appended in the future.
+ *
+ * The Z-, P- and FFR registers and represented in memory in an endianness-
+ * invariant layout which differs from the layout used for the FPSIMD
+ * V-registers on big-endian systems: see sigcontext.h for more explanaion.
  */
 
 #define SVE_PT_SVE_ZREG_SIZE(vq)	__SVE_ZREG_SIZE(vq)
diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
index 5f3c0ce..5231569 100644
--- a/arch/arm64/include/uapi/asm/sigcontext.h
+++ b/arch/arm64/include/uapi/asm/sigcontext.h
@@ -77,6 +77,15 @@ struct fpsimd_context {
 	__uint128_t vregs[32];
 };
 
+/*
+ * Note: similarly to all other integer fields, each V-register is stored in an
+ * endianness-dependent format, with the byte at offset i from the start of the
+ * in-memory representation of the register value containing
+ *
+ *    bits [(7 + 8 * i) : (8 * i)] of the register on little-endian hosts; or
+ *    bits [(127 - 8 * i) : (120 - 8 * i)] on big-endian hosts.
+ */
+
 /* ESR_EL1 context */
 #define ESR_MAGIC	0x45535201
 
@@ -204,6 +213,11 @@ struct sve_context {
  *	FFR	uint16_t[vq]			first-fault status register
  *
  * Additional data might be appended in the future.
+ *
+ * Unlike vregs[] in fpsimd_context, each SVE scalable register (Z-, P- or FFR)
+ * is encoded in memory an endianness-invariant format, with the byte at offset
+ * i from the start of the in-memory representation containing bits
+ * [(7 + 8 * i) : (8 * i)] of the register value.
  */
 
 #define SVE_SIG_ZREG_SIZE(vq)	__SVE_ZREG_SIZE(vq)
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 61ceeb9..d2f7544 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -39,6 +39,7 @@
 #include <linux/slab.h>
 #include <linux/stddef.h>
 #include <linux/sysctl.h>
+#include <linux/swab.h>
 
 #include <asm/esr.h>
 #include <asm/fpsimd.h>
@@ -352,14 +353,33 @@ static int __init sve_sysctl_init(void) { return 0; }
 #define ZREG(sve_state, vq, n) ((char *)(sve_state) +		\
 	(SVE_SIG_ZREG_OFFSET(vq, n) - SVE_SIG_REGS_OFFSET))
 
+#ifdef CONFIG_CPU_BIG_ENDIAN
+static __uint128_t arm64_cpu_to_le128(__uint128_t x)
+{
+	u64 a = swab64(x);
+	u64 b = swab64(x >> 64);
+
+	return ((__uint128_t)a << 64) | b;
+}
+#else
+static __uint128_t arm64_cpu_to_le128(__uint128_t x)
+{
+	return x;
+}
+#endif
+
+#define arm64_le128_to_cpu(x) arm64_cpu_to_le128(x)
+
 static void __fpsimd_to_sve(void *sst, struct user_fpsimd_state const *fst,
 			    unsigned int vq)
 {
 	unsigned int i;
+	__uint128_t *p;
 
-	for (i = 0; i < 32; ++i)
-		memcpy(ZREG(sst, vq, i), &fst->vregs[i],
-		       sizeof(fst->vregs[i]));
+	for (i = 0; i < 32; ++i) {
+		p = (__uint128_t *)ZREG(sst, vq, i);
+		*p = arm64_cpu_to_le128(fst->vregs[i]);
+	}
 }
 
 /*
@@ -402,14 +422,16 @@ static void sve_to_fpsimd(struct task_struct *task)
 	void const *sst = task->thread.sve_state;
 	struct user_fpsimd_state *fst = &task->thread.uw.fpsimd_state;
 	unsigned int i;
+	__uint128_t const *p;
 
 	if (!system_supports_sve())
 		return;
 
 	vq = sve_vq_from_vl(task->thread.sve_vl);
-	for (i = 0; i < 32; ++i)
-		memcpy(&fst->vregs[i], ZREG(sst, vq, i),
-		       sizeof(fst->vregs[i]));
+	for (i = 0; i < 32; ++i) {
+		p = (__uint128_t const *)ZREG(sst, vq, i);
+		fst->vregs[i] = arm64_le128_to_cpu(*p);
+	}
 }
 
 #ifdef CONFIG_ARM64_SVE
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
