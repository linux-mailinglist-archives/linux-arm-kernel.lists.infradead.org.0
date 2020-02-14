Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2042815E46B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:36:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKpxnPjsgAk7+94li3aXEVVHDR8R4bnKgx+8beWSyEA=; b=Dj2oGtd4iKTlI5
	8KG1h9DpoEM5CiBxrlGo2OzbUtq8l2Q4okPBQLMG4WwKOEVloxWqqKbwGegLEhSegby1ahjceGmvn
	9lDZNaxOIanXB5pnj2sHubH91dfgdHzaXPp3sVN8qdBnd18c/atinR8Fawmv0nSfTHwGaZ1A3Prp3
	87QKDsShE433G09+EX5W+7uYKy5s/DUxdQevkf+ymfpuRq4SFQQ16IszybSmqhMRDAiR5qXeJ04UT
	AceO39ByxrdjoGKeebPT4Wbqhq3KPbatsx/w4Qt+Nz4RgluzI/TOVrb9d9yZ2tG9QoSlhcFqx0MW4
	/xWIPtCYmtQbc49ZMa7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dx1-0005bn-RR; Fri, 14 Feb 2020 16:36:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dWV-00005K-I8
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:09:05 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96C77222C2;
 Fri, 14 Feb 2020 16:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696538;
 bh=D9HbhU+UcBqY4TECvMjvT7jGgCD4EUBgLOFoAnWmjsE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dF2IWggzO/IyUk4RTremagjqcCY3L8KuIdp2ZmP++LvlI+2yUkBSxED2eY1Pm1e5X
 27KbxgXL5EjG0HP9y65HjhgdZ7BAzIcfqsCYhsmjcY66F26zilVKAiq+f5RhBAR6Bl
 8jDBAv72RrL/UCtlX8prBlRdMa5Fr+k5XAL0SIuE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 334/459] arm64: lse: fix LSE atomics with LLVM's
 integrated assembler
Date: Fri, 14 Feb 2020 10:59:44 -0500
Message-Id: <20200214160149.11681-334-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080859_708424_4B094618 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Sami Tolvanen <samitolvanen@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sami Tolvanen <samitolvanen@google.com>

[ Upstream commit e0d5896bd356cd577f9710a02d7a474cdf58426b ]

Unlike gcc, clang considers each inline assembly block to be independent
and therefore, when using the integrated assembler for inline assembly,
any preambles that enable features must be repeated in each block.

This change defines __LSE_PREAMBLE and adds it to each inline assembly
block that has LSE instructions, which allows them to be compiled also
with clang's assembler.

Link: https://github.com/ClangBuiltLinux/linux/issues/671
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/atomic_lse.h | 19 +++++++++++++++++++
 arch/arm64/include/asm/lse.h        |  6 +++---
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index 574808b9df4c8..da3280f639cd7 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -14,6 +14,7 @@
 static inline void __lse_atomic_##op(int i, atomic_t *v)			\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 "	" #asm_op "	%w[i], %[v]\n"					\
 	: [i] "+r" (i), [v] "+Q" (v->counter)				\
 	: "r" (v));							\
@@ -30,6 +31,7 @@ ATOMIC_OP(add, stadd)
 static inline int __lse_atomic_fetch_##op##name(int i, atomic_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 "	" #asm_op #mb "	%w[i], %w[i], %[v]"				\
 	: [i] "+r" (i), [v] "+Q" (v->counter)				\
 	: "r" (v)							\
@@ -58,6 +60,7 @@ static inline int __lse_atomic_add_return##name(int i, atomic_t *v)	\
 	u32 tmp;							\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
 	"	add	%w[i], %w[i], %w[tmp]"				\
 	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
@@ -77,6 +80,7 @@ ATOMIC_OP_ADD_RETURN(        , al, "memory")
 static inline void __lse_atomic_and(int i, atomic_t *v)
 {
 	asm volatile(
+	__LSE_PREAMBLE
 	"	mvn	%w[i], %w[i]\n"
 	"	stclr	%w[i], %[v]"
 	: [i] "+&r" (i), [v] "+Q" (v->counter)
@@ -87,6 +91,7 @@ static inline void __lse_atomic_and(int i, atomic_t *v)
 static inline int __lse_atomic_fetch_and##name(int i, atomic_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	mvn	%w[i], %w[i]\n"					\
 	"	ldclr" #mb "	%w[i], %w[i], %[v]"			\
 	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
@@ -106,6 +111,7 @@ ATOMIC_FETCH_OP_AND(        , al, "memory")
 static inline void __lse_atomic_sub(int i, atomic_t *v)
 {
 	asm volatile(
+	__LSE_PREAMBLE
 	"	neg	%w[i], %w[i]\n"
 	"	stadd	%w[i], %[v]"
 	: [i] "+&r" (i), [v] "+Q" (v->counter)
@@ -118,6 +124,7 @@ static inline int __lse_atomic_sub_return##name(int i, atomic_t *v)	\
 	u32 tmp;							\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	neg	%w[i], %w[i]\n"					\
 	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
 	"	add	%w[i], %w[i], %w[tmp]"				\
@@ -139,6 +146,7 @@ ATOMIC_OP_SUB_RETURN(        , al, "memory")
 static inline int __lse_atomic_fetch_sub##name(int i, atomic_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	neg	%w[i], %w[i]\n"					\
 	"	ldadd" #mb "	%w[i], %w[i], %[v]"			\
 	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
@@ -159,6 +167,7 @@ ATOMIC_FETCH_OP_SUB(        , al, "memory")
 static inline void __lse_atomic64_##op(s64 i, atomic64_t *v)		\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 "	" #asm_op "	%[i], %[v]\n"					\
 	: [i] "+r" (i), [v] "+Q" (v->counter)				\
 	: "r" (v));							\
@@ -175,6 +184,7 @@ ATOMIC64_OP(add, stadd)
 static inline long __lse_atomic64_fetch_##op##name(s64 i, atomic64_t *v)\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 "	" #asm_op #mb "	%[i], %[i], %[v]"				\
 	: [i] "+r" (i), [v] "+Q" (v->counter)				\
 	: "r" (v)							\
@@ -203,6 +213,7 @@ static inline long __lse_atomic64_add_return##name(s64 i, atomic64_t *v)\
 	unsigned long tmp;						\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
 	"	add	%[i], %[i], %x[tmp]"				\
 	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
@@ -222,6 +233,7 @@ ATOMIC64_OP_ADD_RETURN(        , al, "memory")
 static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
 {
 	asm volatile(
+	__LSE_PREAMBLE
 	"	mvn	%[i], %[i]\n"
 	"	stclr	%[i], %[v]"
 	: [i] "+&r" (i), [v] "+Q" (v->counter)
@@ -232,6 +244,7 @@ static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
 static inline long __lse_atomic64_fetch_and##name(s64 i, atomic64_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	mvn	%[i], %[i]\n"					\
 	"	ldclr" #mb "	%[i], %[i], %[v]"			\
 	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
@@ -251,6 +264,7 @@ ATOMIC64_FETCH_OP_AND(        , al, "memory")
 static inline void __lse_atomic64_sub(s64 i, atomic64_t *v)
 {
 	asm volatile(
+	__LSE_PREAMBLE
 	"	neg	%[i], %[i]\n"
 	"	stadd	%[i], %[v]"
 	: [i] "+&r" (i), [v] "+Q" (v->counter)
@@ -263,6 +277,7 @@ static inline long __lse_atomic64_sub_return##name(s64 i, atomic64_t *v)	\
 	unsigned long tmp;						\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	neg	%[i], %[i]\n"					\
 	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
 	"	add	%[i], %[i], %x[tmp]"				\
@@ -284,6 +299,7 @@ ATOMIC64_OP_SUB_RETURN(        , al, "memory")
 static inline long __lse_atomic64_fetch_sub##name(s64 i, atomic64_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	neg	%[i], %[i]\n"					\
 	"	ldadd" #mb "	%[i], %[i], %[v]"			\
 	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
@@ -305,6 +321,7 @@ static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
 	unsigned long tmp;
 
 	asm volatile(
+	__LSE_PREAMBLE
 	"1:	ldr	%x[tmp], %[v]\n"
 	"	subs	%[ret], %x[tmp], #1\n"
 	"	b.lt	2f\n"
@@ -332,6 +349,7 @@ __lse__cmpxchg_case_##name##sz(volatile void *ptr,			\
 	unsigned long tmp;						\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	mov	%" #w "[tmp], %" #w "[old]\n"			\
 	"	cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"	\
 	"	mov	%" #w "[ret], %" #w "[tmp]"			\
@@ -379,6 +397,7 @@ __lse__cmpxchg_double##name(unsigned long old1,				\
 	register unsigned long x4 asm ("x4") = (unsigned long)ptr;	\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	casp" #mb "\t%[old1], %[old2], %[new1], %[new2], %[v]\n"\
 	"	eor	%[old1], %[old1], %[oldval1]\n"			\
 	"	eor	%[old2], %[old2], %[oldval2]\n"			\
diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 80b3882781496..73834996c4b6d 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -6,6 +6,8 @@
 
 #if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
 
+#define __LSE_PREAMBLE	".arch armv8-a+lse\n"
+
 #include <linux/compiler_types.h>
 #include <linux/export.h>
 #include <linux/jump_label.h>
@@ -14,8 +16,6 @@
 #include <asm/atomic_lse.h>
 #include <asm/cpucaps.h>
 
-__asm__(".arch_extension	lse");
-
 extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
 extern struct static_key_false arm64_const_caps_ready;
 
@@ -34,7 +34,7 @@ static inline bool system_uses_lse_atomics(void)
 
 /* In-line patching at runtime */
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
-	ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
+	ALTERNATIVE(llsc, __LSE_PREAMBLE lse, ARM64_HAS_LSE_ATOMICS)
 
 #else	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
