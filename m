Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F135D3CC51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LA8W/M56oh3iCWc3MSN1bbKn0Y2MeuPpPQX1e4+Oclw=; b=YrjHesTUUkqunolR4ZZYC+J83z
	Xfq3wn1E3BI933MDoNC98un/zBZMjpLV0bX081RtwFRF1OCL863NIy8yLblFQyDKYomNQzvcpQkIh
	F82xL6GYqohavi4kFaoex+G9Z37XxdRkPNBsJCJzFlSb3X7GwvxhlLA2Jvmwe0OuK7eWaRX464fDF
	D0bwMIOHC8ovxRmgJs7Xmk9TJLp+TuPzjsF2DG4SuakYGccvN5I76ckyCJ4VoieYu5pEfBkWOxWwK
	37Q2XMBfRv0b3wGILg8y4CkKCKPsVWxQIKpP6WOWJkCm41BJG0qzxgTVxorfEcFDwWjkGvyY4jYjY
	sdvMLbNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagIb-0002xQ-8G; Tue, 11 Jun 2019 12:54:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hagHV-0002Ea-Kj
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:53:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54AA1C1D;
 Tue, 11 Jun 2019 05:53:41 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (unknown [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F27F53F557;
 Tue, 11 Jun 2019 05:53:39 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] perf: arm64: Use rseq to test userspace access to pmu
 counters
Date: Tue, 11 Jun 2019 13:53:11 +0100
Message-Id: <20190611125315.18736-4-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611125315.18736-1-raphael.gault@arm.com>
References: <20190611125315.18736-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_055341_911224_BF53FF56 
X-CRM114-Status: GOOD (  20.36  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, acme@kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an extra test to check userspace access to pmu hardware counters.
This test doesn't rely on the seqlock as a synchronisation mechanism but
instead uses the restartable sequences to make sure that the thread is
not interrupted when reading the index of the counter and the associated
pmu register.

In addition to reading the pmu counters, this test is run several time
in order to measure the ratio of failures:
I ran this test on the Juno development platform, which is big.LITTLE
with 4 Cortex A53 and 2 Cortex A57. The results vary quite a lot
(running it with 100 tests is not so long and I did it several times).
I ran it once with 10000 iterations:
`runs: 10000, abort: 62.53%, zero: 34.93%, success: 2.54%`

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/perf/arch/arm64/include/arch-tests.h    |   5 +-
 tools/perf/arch/arm64/include/rseq-arm64.h    | 220 ++++++++++++++++++
 tools/perf/arch/arm64/tests/Build             |   1 +
 tools/perf/arch/arm64/tests/arch-tests.c      |   6 +
 tools/perf/arch/arm64/tests/rseq-pmu-events.c | 219 +++++++++++++++++
 5 files changed, 450 insertions(+), 1 deletion(-)
 create mode 100644 tools/perf/arch/arm64/include/rseq-arm64.h
 create mode 100644 tools/perf/arch/arm64/tests/rseq-pmu-events.c

diff --git a/tools/perf/arch/arm64/include/arch-tests.h b/tools/perf/arch/arm64/include/arch-tests.h
index a9b17ae0560b..4164762b43c6 100644
--- a/tools/perf/arch/arm64/include/arch-tests.h
+++ b/tools/perf/arch/arm64/include/arch-tests.h
@@ -13,6 +13,9 @@ int test__arch_unwind_sample(struct perf_sample *sample,
 extern struct test arch_tests[];
 int test__rd_pmevcntr(struct test *test __maybe_unused,
 		      int subtest __maybe_unused);
-
+#ifdef CONFIG_RSEQ
+int rseq__rd_pmevcntr(struct test *test __maybe_unused,
+		      int subtest __maybe_unused);
+#endif
 
 #endif
diff --git a/tools/perf/arch/arm64/include/rseq-arm64.h b/tools/perf/arch/arm64/include/rseq-arm64.h
new file mode 100644
index 000000000000..00d6960915a9
--- /dev/null
+++ b/tools/perf/arch/arm64/include/rseq-arm64.h
@@ -0,0 +1,220 @@
+/* SPDX-License-Identifier: LGPL-2.1 OR MIT */
+/*
+ * rseq-arm64.h
+ *
+ * This file is mostly a copy from
+ * tools/testing/selftests/rseq/rseq-arm64.h
+ */
+
+/*
+ * aarch64 -mbig-endian generates mixed endianness code vs data:
+ * little-endian code and big-endian data. Ensure the RSEQ_SIG signature
+ * matches code endianness.
+ */
+#define __rseq_str_1(x)  #x
+#define __rseq_str(x)            __rseq_str_1(x)
+
+#define RSEQ_ACCESS_ONCE(x)	(*(__volatile__  __typeof__(x) *)&(x))
+#define RSEQ_SIG_CODE	0xd428bc00	/* BRK #0x45E0.  */
+
+#ifdef __AARCH64EB__
+#define RSEQ_SIG_DATA	0x00bc28d4	/* BRK #0x45E0.  */
+#else
+#define RSEQ_SIG_DATA	RSEQ_SIG_CODE
+#endif
+
+#define RSEQ_SIG	RSEQ_SIG_DATA
+
+#define rseq_smp_mb()	__asm__ __volatile__ ("dmb ish" ::: "memory")
+#define rseq_smp_rmb()	__asm__ __volatile__ ("dmb ishld" ::: "memory")
+#define rseq_smp_wmb()	__asm__ __volatile__ ("dmb ishst" ::: "memory")
+
+#define rseq_smp_load_acquire(p)						\
+__extension__ ({								\
+	__typeof(*p) ____p1;							\
+	switch (sizeof(*p)) {							\
+	case 1:									\
+		asm volatile ("ldarb %w0, %1"					\
+			: "=r" (*(__u8 *)p)					\
+			: "Q" (*p) : "memory");					\
+		break;								\
+	case 2:									\
+		asm volatile ("ldarh %w0, %1"					\
+			: "=r" (*(__u16 *)p)					\
+			: "Q" (*p) : "memory");					\
+		break;								\
+	case 4:									\
+		asm volatile ("ldar %w0, %1"					\
+			: "=r" (*(__u32 *)p)					\
+			: "Q" (*p) : "memory");					\
+		break;								\
+	case 8:									\
+		asm volatile ("ldar %0, %1"					\
+			: "=r" (*(__u64 *)p)					\
+			: "Q" (*p) : "memory");					\
+		break;								\
+	}									\
+	____p1;									\
+})
+
+#define rseq_smp_acquire__after_ctrl_dep()	rseq_smp_rmb()
+
+#define rseq_smp_store_release(p, v)						\
+do {										\
+	switch (sizeof(*p)) {							\
+	case 1:									\
+		asm volatile ("stlrb %w1, %0"					\
+				: "=Q" (*p)					\
+				: "r" ((__u8)v)					\
+				: "memory");					\
+		break;								\
+	case 2:									\
+		asm volatile ("stlrh %w1, %0"					\
+				: "=Q" (*p)					\
+				: "r" ((__u16)v)				\
+				: "memory");					\
+		break;								\
+	case 4:									\
+		asm volatile ("stlr %w1, %0"					\
+				: "=Q" (*p)					\
+				: "r" ((__u32)v)				\
+				: "memory");					\
+		break;								\
+	case 8:									\
+		asm volatile ("stlr %1, %0"					\
+				: "=Q" (*p)					\
+				: "r" ((__u64)v)				\
+				: "memory");					\
+		break;								\
+	}									\
+} while (0)
+
+#ifdef RSEQ_SKIP_FASTPATH
+#include "rseq-skip.h"
+#else /* !RSEQ_SKIP_FASTPATH */
+
+#define RSEQ_ASM_TMP_REG32	"w15"
+#define RSEQ_ASM_TMP_REG	"x15"
+#define RSEQ_ASM_TMP_REG_2	"x14"
+
+#define INJECT_ASM_REG	RSEQ_ASM_TMP_REG32
+
+#define __RSEQ_ASM_DEFINE_TABLE(label, version, flags, start_ip,		\
+				post_commit_offset, abort_ip)			\
+	"	.pushsection	__rseq_cs, \"aw\"\n"				\
+	"	.balign	32\n"							\
+	__rseq_str(label) ":\n"							\
+	"	.long	" __rseq_str(version) ", " __rseq_str(flags) "\n"	\
+	"	.quad	" __rseq_str(start_ip) ", "				\
+			  __rseq_str(post_commit_offset) ", "			\
+			  __rseq_str(abort_ip) "\n"				\
+	"	.popsection\n\t"						\
+	"	.pushsection __rseq_cs_ptr_array, \"aw\"\n"				\
+	"	.quad " __rseq_str(label) "b\n"					\
+	"	.popsection\n"
+
+#define RSEQ_ASM_DEFINE_TABLE(label, start_ip, post_commit_ip, abort_ip)	\
+	__RSEQ_ASM_DEFINE_TABLE(label, 0x0, 0x0, start_ip,			\
+				(post_commit_ip - start_ip), abort_ip)
+
+/*
+ * Exit points of a rseq critical section consist of all instructions outside
+ * of the critical section where a critical section can either branch to or
+ * reach through the normal course of its execution. The abort IP and the
+ * post-commit IP are already part of the __rseq_cs section and should not be
+ * explicitly defined as additional exit points. Knowing all exit points is
+ * useful to assist debuggers stepping over the critical section.
+ */
+#define RSEQ_ASM_DEFINE_EXIT_POINT(start_ip, exit_ip)				\
+	"	.pushsection __rseq_exit_point_array, \"aw\"\n"			\
+	"	.quad " __rseq_str(start_ip) ", " __rseq_str(exit_ip) "\n"	\
+	"	.popsection\n"
+
+#define RSEQ_ASM_STORE_RSEQ_CS(label, cs_label, rseq_cs)			\
+	"	adrp	" RSEQ_ASM_TMP_REG ", " __rseq_str(cs_label) "\n"	\
+	"	add	" RSEQ_ASM_TMP_REG ", " RSEQ_ASM_TMP_REG		\
+			", :lo12:" __rseq_str(cs_label) "\n"			\
+	"	str	" RSEQ_ASM_TMP_REG ", %[" __rseq_str(rseq_cs) "]\n"	\
+	__rseq_str(label) ":\n"
+
+#define RSEQ_ASM_DEFINE_ABORT(label, abort_label)				\
+	"	b	222f\n"							\
+	"	.inst 	"	__rseq_str(RSEQ_SIG_CODE) "\n"			\
+	__rseq_str(label) ":\n"							\
+	"	b	%l[" __rseq_str(abort_label) "]\n"			\
+	"222:\n"
+
+#define RSEQ_ASM_OP_STORE(value, var)						\
+	"	str	%[" __rseq_str(value) "], %[" __rseq_str(var) "]\n"
+
+#define RSEQ_ASM_OP_STORE_RELEASE(value, var)					\
+	"	stlr	%[" __rseq_str(value) "], %[" __rseq_str(var) "]\n"
+
+#define RSEQ_ASM_OP_FINAL_STORE(value, var, post_commit_label)			\
+	RSEQ_ASM_OP_STORE(value, var)						\
+	__rseq_str(post_commit_label) ":\n"
+
+#define RSEQ_ASM_OP_FINAL_STORE_RELEASE(value, var, post_commit_label)		\
+	RSEQ_ASM_OP_STORE_RELEASE(value, var)					\
+	__rseq_str(post_commit_label) ":\n"
+
+#define RSEQ_ASM_OP_CMPEQ(var, expect, label)					\
+	"	ldr	" RSEQ_ASM_TMP_REG ", %[" __rseq_str(var) "]\n"		\
+	"	sub	" RSEQ_ASM_TMP_REG ", " RSEQ_ASM_TMP_REG		\
+			", %[" __rseq_str(expect) "]\n"				\
+	"	cbnz	" RSEQ_ASM_TMP_REG ", " __rseq_str(label) "\n"
+
+#define RSEQ_ASM_OP_CMPEQ32(var, expect, label)					\
+	"	ldr	" RSEQ_ASM_TMP_REG32 ", %[" __rseq_str(var) "]\n"	\
+	"	sub	" RSEQ_ASM_TMP_REG32 ", " RSEQ_ASM_TMP_REG32		\
+			", %w[" __rseq_str(expect) "]\n"			\
+	"	cbnz	" RSEQ_ASM_TMP_REG32 ", " __rseq_str(label) "\n"
+
+#define RSEQ_ASM_OP_CMPNE(var, expect, label)					\
+	"	ldr	" RSEQ_ASM_TMP_REG ", %[" __rseq_str(var) "]\n"		\
+	"	sub	" RSEQ_ASM_TMP_REG ", " RSEQ_ASM_TMP_REG		\
+			", %[" __rseq_str(expect) "]\n"				\
+	"	cbz	" RSEQ_ASM_TMP_REG ", " __rseq_str(label) "\n"
+
+#define RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, label)			\
+	RSEQ_ASM_OP_CMPEQ32(current_cpu_id, cpu_id, label)
+
+#define RSEQ_ASM_OP_R_LOAD(var)							\
+	"	ldr	" RSEQ_ASM_TMP_REG ", [%[" __rseq_str(var) "]], #0\n"
+
+#define RSEQ_ASM_OP_R_STORE(var)						\
+	"	str	" RSEQ_ASM_TMP_REG ", %[" __rseq_str(var) "]\n"
+
+#define RSEQ_ASM_OP_R_LOAD_OFF(offset)						\
+	"	ldr	" RSEQ_ASM_TMP_REG ", [" RSEQ_ASM_TMP_REG		\
+			", %[" __rseq_str(offset) "]]\n"
+
+#define RSEQ_ASM_OP_R_ADD(count)						\
+	"	add	" RSEQ_ASM_TMP_REG ", " RSEQ_ASM_TMP_REG		\
+			", %[" __rseq_str(count) "]\n"
+
+#define RSEQ_ASM_OP_R_SUB(imm)						\
+	"	sub	" RSEQ_ASM_TMP_REG ", " RSEQ_ASM_TMP_REG		\
+			", #" __rseq_str(imm) "\n"
+
+#define RSEQ_ASM_OP_R_AND(mask)							\
+	"	and	" RSEQ_ASM_TMP_REG ", " RSEQ_ASM_TMP_REG		\
+			", #" __rseq_str(mask) "\n"
+
+#define RSEQ_ASM_OP_R_FINAL_STORE(var, post_commit_label)			\
+	"	str	" RSEQ_ASM_TMP_REG ", %[" __rseq_str(var) "]\n"		\
+	__rseq_str(post_commit_label) ":\n"
+
+#define RSEQ_ASM_OP_R_BAD_MEMCPY(dst, src, len)					\
+	"	cbz	%[" __rseq_str(len) "], 333f\n"				\
+	"	mov	" RSEQ_ASM_TMP_REG_2 ", %[" __rseq_str(len) "]\n"	\
+	"222:	sub	" RSEQ_ASM_TMP_REG_2 ", " RSEQ_ASM_TMP_REG_2 ", #1\n"	\
+	"	ldrb	" RSEQ_ASM_TMP_REG32 ", [%[" __rseq_str(src) "]"	\
+			", " RSEQ_ASM_TMP_REG_2 "]\n"				\
+	"	strb	" RSEQ_ASM_TMP_REG32 ", [%[" __rseq_str(dst) "]"	\
+			", " RSEQ_ASM_TMP_REG_2 "]\n"				\
+	"	cbnz	" RSEQ_ASM_TMP_REG_2 ", 222b\n"				\
+	"333:\n"
+
+
+#endif /* !RSEQ_SKIP_FASTPATH */
diff --git a/tools/perf/arch/arm64/tests/Build b/tools/perf/arch/arm64/tests/Build
index 3f9a20c17fc6..b53823603066 100644
--- a/tools/perf/arch/arm64/tests/Build
+++ b/tools/perf/arch/arm64/tests/Build
@@ -1,5 +1,6 @@
 perf-y += regs_load.o
 perf-$(CONFIG_DWARF_UNWIND) += dwarf-unwind.o
+perf-$(CONFIG_RSEQ) += rseq-pmu-events.o
 
 perf-y += user-events.o
 perf-y += arch-tests.o
diff --git a/tools/perf/arch/arm64/tests/arch-tests.c b/tools/perf/arch/arm64/tests/arch-tests.c
index 57df9b89dede..5f08bdc41d89 100644
--- a/tools/perf/arch/arm64/tests/arch-tests.c
+++ b/tools/perf/arch/arm64/tests/arch-tests.c
@@ -14,6 +14,12 @@ struct test arch_tests[] = {
 		.desc = "User counter access",
 		.func = test__rd_pmevcntr,
 	},
+#ifdef CONFIG_RSEQ
+	{
+		.desc = "User counter access with rseq",
+		.func = rseq__rd_pmevcntr,
+	},
+#endif
 	{
 		.func = NULL,
 	},
diff --git a/tools/perf/arch/arm64/tests/rseq-pmu-events.c b/tools/perf/arch/arm64/tests/rseq-pmu-events.c
new file mode 100644
index 000000000000..4d9578d7e056
--- /dev/null
+++ b/tools/perf/arch/arm64/tests/rseq-pmu-events.c
@@ -0,0 +1,219 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <asm/bug.h>
+#include <linux/rseq.h>
+#include <errno.h>
+#include <unistd.h>
+#include <sched.h>
+#include <stdlib.h>
+#include <signal.h>
+#include <sys/mman.h>
+#include <sys/sysinfo.h>
+#include <sys/types.h>
+#include <sys/wait.h>
+#include <linux/types.h>
+#include "perf.h"
+#include "debug.h"
+#include "tests/tests.h"
+#include "cloexec.h"
+#include "util.h"
+#include "arch-tests.h"
+#include "rseq-arm64.h"
+
+static __thread volatile struct rseq __rseq_abi;
+
+static int sys_rseq(volatile struct rseq *rseq_abi, uint32_t rseq_len,
+		    int flags, uint32_t sig)
+{
+	return syscall(__NR_rseq, rseq_abi, rseq_len, flags, sig);
+}
+
+static int rseq_register_current_thread(void)
+{
+	return sys_rseq(&__rseq_abi, sizeof(struct rseq), 0, RSEQ_SIG);
+}
+
+static int rseq_unregister_current_thread(void)
+{
+	return sys_rseq(&__rseq_abi, sizeof(struct rseq),
+			RSEQ_FLAG_UNREGISTER, RSEQ_SIG);
+}
+
+static u64 noinline mmap_read_self(void *addr, int cpu)
+{
+	struct perf_event_mmap_page *pc = addr;
+	u32 idx = 0;
+	u64 count = 0;
+
+	asm volatile goto(
+                     RSEQ_ASM_DEFINE_TABLE(0, 1f, 2f, 3f)
+		     "nop\n"
+                     RSEQ_ASM_STORE_RSEQ_CS(1, 0b, rseq_cs)
+		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
+                     RSEQ_ASM_OP_R_LOAD(pc_idx)
+                     RSEQ_ASM_OP_R_AND(0xFF)
+		     RSEQ_ASM_OP_R_STORE(idx)
+                     RSEQ_ASM_OP_R_SUB(0x1)
+		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
+                     "msr pmselr_el0, " RSEQ_ASM_TMP_REG "\n"
+                     "isb\n"
+		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
+                     "mrs " RSEQ_ASM_TMP_REG ", pmxevcntr_el0\n"
+                     RSEQ_ASM_OP_R_FINAL_STORE(cnt, 2)
+		     "nop\n"
+                     RSEQ_ASM_DEFINE_ABORT(3, abort)
+                     :/* No output operands */
+		     :  [cpu_id] "r" (cpu),
+			[current_cpu_id] "Qo" (__rseq_abi.cpu_id),
+			[rseq_cs] "m" (__rseq_abi.rseq_cs),
+			[cnt] "m" (count),
+			[pc_idx] "r" (&pc->index),
+			[idx] "m" (idx)
+                     :"memory"
+                     :abort
+                    );
+
+	if (idx)
+		count += READ_ONCE(pc->offset);
+
+	return count;
+abort:
+        pr_debug("Abort handler\n");
+        exit(-2);
+}
+
+static int __test__rd_pmevcntr(void)
+{
+	volatile int tmp = 0;
+	u64 i, loops = 1000;
+	int n;
+	int fd;
+	int cpu;
+	void *addr;
+	struct perf_event_attr attr = {
+		.type = PERF_TYPE_HARDWARE,
+		.config = PERF_COUNT_HW_INSTRUCTIONS,
+		.exclude_kernel = 1,
+	};
+	u64 delta_sum = 0;
+	char sbuf[STRERR_BUFSIZE];
+
+	fd = rseq_register_current_thread();
+	if (fd) {
+		pr_err("Error: unable to register current thread "
+		       "return value: %d (%s)\n", fd,
+		       str_error_r(errno, sbuf, sizeof(sbuf)));
+		return -1;
+	}
+	cpu = RSEQ_ACCESS_ONCE(__rseq_abi.cpu_id_start);
+
+	pr_debug("cpu: %d\n", cpu);
+	fd = sys_perf_event_open(&attr, 0, -1, -1,
+				 perf_event_open_cloexec_flag());
+	if (fd < 0) {
+		pr_err("Error: sys_perf_event_open() syscall returned "
+		       "with %d (%s)\n", fd,
+		       str_error_r(errno, sbuf, sizeof(sbuf)));
+		return -1;
+	}
+
+	addr = mmap(NULL, page_size, PROT_READ, MAP_SHARED, fd, 0);
+	if (addr == (void *)(-1)) {
+		pr_err("Error: mmap() syscall returned with (%s)\n",
+		       str_error_r(errno, sbuf, sizeof(sbuf)));
+		goto out_close;
+	}
+
+	for (n = 0; n < 6; n++) {
+		u64 stamp, now, delta;
+
+		stamp = mmap_read_self(addr, cpu);
+
+		for (i = 0; i < loops; i++)
+			tmp++;
+
+		now = mmap_read_self(addr, cpu);
+		loops *= 10;
+
+		delta = now - stamp;
+		pr_debug("%14d: %14llu\n", n, (long long)delta);
+
+		delta_sum += delta;
+	}
+
+	munmap(addr, page_size);
+
+	rseq_unregister_current_thread();
+	pr_debug("   ");
+
+out_close:
+	close(fd);
+
+	if (!delta_sum)
+		return -1;
+
+	return 0;
+}
+
+int rseq__rd_pmevcntr(struct test __maybe_unused *test,
+		      int __maybe_unused subtest)
+{
+	int status = 0;
+	int wret = 0;
+	int ret = 0;
+	int i = 0;
+	int pid;
+	int nb_run = 100;
+	unsigned int run = 0;
+	unsigned int aborted = 0, zero = 0, success = 0;
+
+	for (i = 0; i < nb_run; i++) {
+		pid = fork();
+		if (pid < 0)
+			return -1;
+
+		if (!pid) {
+			ret = __test__rd_pmevcntr();
+			exit(ret);
+		}
+
+		wret = waitpid(pid, &status, 0);
+		if (wret < 0)
+			return -1;
+
+		if (WIFSIGNALED(status)) {
+			pr_err("Error: the child process was interrupted by a signal: %d\n", WTERMSIG(status));
+			return -1;
+		}
+
+		if (WIFEXITED(status) && WEXITSTATUS(status)) {
+			pr_err("Error: the child process exited with: %d\n",
+			       WEXITSTATUS(status));
+			/*
+			return -1;
+			*/
+			switch (WEXITSTATUS(status)) {
+			case 0:
+				success++;
+				break;
+			case 255:
+				zero++;
+				break;
+			case 254:
+				aborted++;
+				break;
+			default:
+				break;
+			}
+		}
+		else
+			success++;
+	}
+
+	run = aborted + zero + success;
+
+	pr_info("runs: %u, abort: %.2f%%, zero: %.2f%%, success: %.2f%%\n",
+		run, (aborted / (float)run) * 100,
+		(zero / (float)run) * 100,
+		(success / (float)run) * 100);
+	return 0;
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
