Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A423133F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 21:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/aXvMbNXRTefqIhzcBeC4FbJOzPl1HaBYhqwlPg5sM=; b=eP1HW4i0JBu4Jc
	62e/1bQCiNcGwm2Xg3TiZG5p9rYCnd/QvU3gLvgPv4x2HSVZmfGu7a/1oNo4UcPhR4rs/he9rJ/OH
	9XpzrF4WgAap4q9gz2K4ZzwPVb3hvSrQ73SHBEZrQqP2VJNLjT5ZV9e+NUuON9E0TeJp7Pv0xmi+M
	IN0fIcc3g0WV7CPEpvHCkoBnTIPwa9+LWPxKQAxPwtdlzaTYFqJMT68f/yIYWV0Glr3qb0wdYzwmF
	QVSNTmQOqObhrh2sjEgY0PqcfqInCKtCIKojP223sAT4H5zqdtFfWpfZw1cNlR5q0vmrYItvP84Jv
	fw97duob1lh3UywEbpzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdcL-0007E1-Kc; Fri, 03 May 2019 19:13:09 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdbq-0006h8-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 19:12:43 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id l4so1587904vsq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 12:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=EcPHLwy0dCi679PF7uGrTMs+xhbUxRGLn32SYROJYvw=;
 b=YLFHAU8YrQv2L3qLUIRIUFaA//HQ2PTUT2tQAQ3bVB5YXHf3sPtdpPJ3AzmtBzMA20
 pl7TJ+wPrFjZN+K0uBhTzkBD8Vqk6Qjh4SgIcmYfdq3zDUrO5lk6zxLHB4SXdw5EEZpL
 3kI7Wh8e2tzg3/hkf5RzXYRjF5PJqtnwYSEvJYv66eYq8nJC4K9CbQp4wyPrsBEB8cxm
 NfNOmDgcFsb44qlE/L+7rGdc4ipvtVM/GabjMDgb8WAk/GJTauCtt4k2JZgka4TxcKJK
 QFD8EthWTMFSTJV4ZCZRDD2nuLtLeblnp5Q0wFfDFnw6mmrLJ+SkorKuCJwF6D5t2TOZ
 GH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=EcPHLwy0dCi679PF7uGrTMs+xhbUxRGLn32SYROJYvw=;
 b=a4jAj+HWFhqSt+Y0QfAnkJQz1LRIXZF5u1lpkDjhIWM3NfLqwBmvHlHC1XLHm5J+mQ
 Oxm/wGI0sbM6/MKArqrGUQ8oG4DDvIZQN98RzVx35PTABawycGwJIt9lnzmHwWCOcfaF
 w55BbmBLYYRA77hFHJ37BPNJaU7/Mhw9gbWBFg4FFCXc1hNuc1YBg5Qw9jlJRXqDqwfr
 jn5dIRVYQh45cDnMXWJ9Tw4ohu3xcJLDoPZabxszl4uDHiGoZMswpIyd8QKhR8NImDrm
 SKyw6Fpi0i9H5inTnz0J0VnuSedIG6/K4OAsFn8fn7JI0QmMFp+oYbFifmkrKs0diopB
 LgSQ==
X-Gm-Message-State: APjAAAUNgpM3kg8amZjjBRYqAR2V4Fl7PuLhO8cHvGWrOm0R35/jCE+F
 RkaSAyBW6KsIaDmHpchHQvKoN6F4YnG07YpCQcI=
X-Google-Smtp-Source: APXvYqz3X6wLfh9y0/O31fmiME1JiH9Kqs2sD7BYj6u6wf2rTqpjbK4TN6PXWfzH04i2vRVD5JNXI7BgKdBh64F1RVA=
X-Received: by 2002:a67:7b56:: with SMTP id w83mr6710305vsc.79.1556910756261; 
 Fri, 03 May 2019 12:12:36 -0700 (PDT)
Date: Fri,  3 May 2019 12:12:25 -0700
In-Reply-To: <20190503191225.6684-1-samitolvanen@google.com>
Message-Id: <20190503191225.6684-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20190503191225.6684-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v2 3/3] arm64: use the correct function type for
 __arm64_sys_ni_syscall
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_121238_583406_956ADD6B 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Sami Tolvanen <samitolvanen@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Calling sys_ni_syscall through a syscall_fn_t pointer trips indirect
call Control-Flow Integrity checking due to a function type
mismatch. Use SYSCALL_DEFINE0 for __arm64_sys_ni_syscall instead and
remove the now unnecessary casts.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/sys.c   | 14 +++++++++-----
 arch/arm64/kernel/sys32.c | 12 ++++++++----
 2 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/sys.c b/arch/arm64/kernel/sys.c
index b44065fb16160..4f8e8a7237a85 100644
--- a/arch/arm64/kernel/sys.c
+++ b/arch/arm64/kernel/sys.c
@@ -47,22 +47,26 @@ SYSCALL_DEFINE1(arm64_personality, unsigned int, personality)
 	return ksys_personality(personality);
 }
 
+asmlinkage long sys_ni_syscall(void);
+
+SYSCALL_DEFINE0(ni_syscall)
+{
+	return sys_ni_syscall();
+}
+
 /*
  * Wrappers to pass the pt_regs argument.
  */
 #define sys_personality		sys_arm64_personality
 
-asmlinkage long sys_ni_syscall(const struct pt_regs *);
-#define __arm64_sys_ni_syscall	sys_ni_syscall
-
 #undef __SYSCALL
 #define __SYSCALL(nr, sym)	asmlinkage long __arm64_##sym(const struct pt_regs *);
 #include <asm/unistd.h>
 
 #undef __SYSCALL
-#define __SYSCALL(nr, sym)	[nr] = (syscall_fn_t)__arm64_##sym,
+#define __SYSCALL(nr, sym)	[nr] = __arm64_##sym,
 
 const syscall_fn_t sys_call_table[__NR_syscalls] = {
-	[0 ... __NR_syscalls - 1] = (syscall_fn_t)sys_ni_syscall,
+	[0 ... __NR_syscalls - 1] = __arm64_sys_ni_syscall,
 #include <asm/unistd.h>
 };
diff --git a/arch/arm64/kernel/sys32.c b/arch/arm64/kernel/sys32.c
index 0f8bcb7de7008..f8f6c26cfd326 100644
--- a/arch/arm64/kernel/sys32.c
+++ b/arch/arm64/kernel/sys32.c
@@ -133,17 +133,21 @@ COMPAT_SYSCALL_DEFINE6(aarch32_fallocate, int, fd, int, mode,
 	return ksys_fallocate(fd, mode, arg_u64(offset), arg_u64(len));
 }
 
-asmlinkage long sys_ni_syscall(const struct pt_regs *);
-#define __arm64_sys_ni_syscall	sys_ni_syscall
+asmlinkage long sys_ni_syscall(void);
+
+COMPAT_SYSCALL_DEFINE0(ni_syscall)
+{
+	return sys_ni_syscall();
+}
 
 #undef __SYSCALL
 #define __SYSCALL(nr, sym)	asmlinkage long __arm64_##sym(const struct pt_regs *);
 #include <asm/unistd32.h>
 
 #undef __SYSCALL
-#define __SYSCALL(nr, sym)	[nr] = (syscall_fn_t)__arm64_##sym,
+#define __SYSCALL(nr, sym)	[nr] = __arm64_##sym,
 
 const syscall_fn_t compat_sys_call_table[__NR_compat_syscalls] = {
-	[0 ... __NR_compat_syscalls - 1] = (syscall_fn_t)sys_ni_syscall,
+	[0 ... __NR_compat_syscalls - 1] = __arm64_sys_ni_syscall,
 #include <asm/unistd32.h>
 };
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
