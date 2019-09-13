Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A92CB1DE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 14:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uYlNTkHmMn8eIElzlO0bE+ntjHBC9ZxZALwBfWXaLUc=; b=e+S
	43dBz4ojlpzJrbblVprkmGQEA32nzjWDW2JwYZS+OgwyjHDljhd23V8A5+BhfP+36Ga7R3NcfQy6c
	inXhPLSpPyimHyoPfDa1nxODdsqFBcS9mKOlCZaaJWm7dS+p0mTqtF9o8yfeXRkGPAMxeZqw49qxs
	mryk4/1twQEy2qNj2bZzGtw6kGhM6FA8snClcIJ7628io3R253qsv11jcL3FrRM/XMAJDetdNXcpC
	ulnOvrVViSaPUOX6PJpMYjjcDgzkq7KkSRaU41rAX85mDEv9ZBSJMz+ccxpfblTW454MKORzL+mQl
	Xkuivse43dO18GXGEiZ7qHHxNJ0A1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8l7Y-00079q-JE; Fri, 13 Sep 2019 12:56:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8l7E-00079S-Kv
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 12:55:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C241C28;
 Fri, 13 Sep 2019 05:55:54 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1A5593F67D;
 Fri, 13 Sep 2019 05:55:53 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: simplify syscall wrapper ifdeffery
Date: Fri, 13 Sep 2019 13:55:50 +0100
Message-Id: <20190913125550.7053-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_055556_730628_95EB9071 
X-CRM114-Status: GOOD (  10.04  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Back in commit:

  4378a7d4be30ec69 ("arm64: implement syscall wrappers")

... I implemented the arm64 syscall wrapper glue following the approach
taken on x86. While doing so, I also copied across some ifdeffery that
isn't necessary on arm64.

On arm64 we don't share any of the native wrappers with compat tasks,
and unlike x86 we don't have alternative implementations of
SYSCALL_DEFINE0(), COND_SYSCALL(), or SYS_NI() defined when AArch32
compat support is enabled.

Thus we don't need to prevent multiple definitions of these macros, and
can remove the #ifndef ... #endif guards protecting them. If any of
these had been previously defined elsewhere, syscalls are unlikely to
work correctly, and we'd want the compiler to warn about the multiple
definitions.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/syscall_wrapper.h | 6 ------
 1 file changed, 6 deletions(-)

Hi Will, Catalin,

This is based on Sami's patch [1] implementing a type-safe COND_SYSCALL on
arm64. I've given both a spin atop of today's arm64 for-next/core branch.

Mark.

[1] https://lore.kernel.org/r/20190910224044.100388-1-samitolvanen@google.com

diff --git a/arch/arm64/include/asm/syscall_wrapper.h b/arch/arm64/include/asm/syscall_wrapper.h
index 06d880b3526c..b383b4802a7b 100644
--- a/arch/arm64/include/asm/syscall_wrapper.h
+++ b/arch/arm64/include/asm/syscall_wrapper.h
@@ -66,24 +66,18 @@ struct pt_regs;
 	}									\
 	static inline long __do_sys##name(__MAP(x,__SC_DECL,__VA_ARGS__))
 
-#ifndef SYSCALL_DEFINE0
 #define SYSCALL_DEFINE0(sname)							\
 	SYSCALL_METADATA(_##sname, 0);						\
 	asmlinkage long __arm64_sys_##sname(const struct pt_regs *__unused);	\
 	ALLOW_ERROR_INJECTION(__arm64_sys_##sname, ERRNO);			\
 	asmlinkage long __arm64_sys_##sname(const struct pt_regs *__unused)
-#endif
 
-#ifndef COND_SYSCALL
 #define COND_SYSCALL(name)							\
 	asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)	\
 	{									\
 		return sys_ni_syscall();					\
 	}
-#endif
 
-#ifndef SYS_NI
 #define SYS_NI(name) SYSCALL_ALIAS(__arm64_sys_##name, sys_ni_posix_timers);
-#endif
 
 #endif /* __ASM_SYSCALL_WRAPPER_H */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
