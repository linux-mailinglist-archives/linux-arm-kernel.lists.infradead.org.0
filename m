Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD712A10A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 00:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqR40JxkQ5no0Ld0g8FB6KxAe8o0KipDwTk6tKxFIM4=; b=n27H/ROHZ+Rid5
	sG24YDL0k6pprpXlTNOmAJRZDreIBRiGF7lqaOnZNjlLbGxx7Sxz9TltdlT7jp5NCHvjkpmCO9qDc
	1KBFJ5D1J75CimZrRA7iB4QWRjlTRlU9vW1IhDL4+gT14Xv97yUP4ulUzXKoy+L8WlGrM0BtLC9zX
	RRvrknE2xTnhcvdW34++qphsN1uF8tjjcvM3J0nVgJbmm71TTi6UBIyxRT976gOG3N/f7dKHkNBDI
	1kfyUee7Gm4GlK7fe1EOmJ1yzKNEMyauDNbNC8QC4MaThRJKM0mC9OVua7MWHPTL0XDb5ivqRPKWr
	4R9lhjotXwiKF+uMGdYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIQ5-0002uI-On; Fri, 24 May 2019 22:12:09 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIPV-0002J6-4G
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 22:11:36 +0000
Received: by mail-yw1-xc49.google.com with SMTP id g203so9744815ywe.21
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 15:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=q0pnEpuGpsfO4o4/PpGY6OcjeWOaJUu326iPNm0R3Pc=;
 b=RNG0ZKg6/OghWFPwBoYwNzzYloxIFDIocpLzYRM7vLV5WjfKTdG0n8nzOmvNytNZF6
 sfTW8MpEGAm41YabVTVREGIGWD6JHYrXq8KmQPoaszezFCDN1Dxmz5Qbva8y/LYgPCtO
 ce3D+ayaKaJaDDrKEKplXgZQoRMLisOlwkdsPuJcLrOTxavfI22g+OKZ1MTHn4qK1gA+
 cZqSbSqI5bkynak7VLvlSPeenO0NkiFk5E0iq3pq8ibZbXC5xv6IOnQepuR6bpn9v/S/
 lV75WhtPEZjzQnpCk6/yGlc9a8T5mp/CvOQgr4k8ZchtltDF/h+lqFOKDiP2tL9xS90Y
 n0JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=q0pnEpuGpsfO4o4/PpGY6OcjeWOaJUu326iPNm0R3Pc=;
 b=rlE09OnauA0W/h1A/F8ilWoqPuruiartwfj+xMm2KAonxiy2WvWx6klF5XHIiwGUJI
 kMtI0bbLf7eMOETv5jqiU1oOKxJZnLHXmwLelMphfihJR17h5bZLx/IThhAkduGp0EiH
 CllOaCYYcA4/CF32+h86d+hRi4Y9uUOLJgLOGU6BE6iHra6ax4IB1nwi+h+OgL4Z39K0
 Q2l5o0JQvenmBJLC+p2xR486azwJutFV4O438lqcvjAve94686/hjfO9OL8gOwRGE6eR
 ZVbTorDtgGI/dGwQGYcYF20JcQxf6qIrb5dtPWIZZsmR16jQe9RobE4xcyxagAB9+x/6
 7Jvw==
X-Gm-Message-State: APjAAAWleTEB1G2n132rR+21HfDfK4/6irTBulRWoXg9Juz3aanePJN2
 LjMV9Fk1kDoSW5lIbie5pdPrepUMpZptHpfFKHw=
X-Google-Smtp-Source: APXvYqxDeASkLXDKWGHrVqaBSK/xzXsxmzMcmmg5HzG3TNLITJge2KYm2eHYLxy/MUCdgQ/j1WC7sUY9hOVabnK32vo=
X-Received: by 2002:a81:a34a:: with SMTP id a71mr37463051ywh.318.1558735890589; 
 Fri, 24 May 2019 15:11:30 -0700 (PDT)
Date: Fri, 24 May 2019 15:11:18 -0700
In-Reply-To: <20190524221118.177548-1-samitolvanen@google.com>
Message-Id: <20190524221118.177548-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20190524221118.177548-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
Subject: [PATCH v3 3/3] arm64: use the correct function type for
 __arm64_sys_ni_syscall
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_151133_481492_148A2267 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
 arch/arm64/kernel/sys32.c |  7 ++-----
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/sys.c b/arch/arm64/kernel/sys.c
index 6f91e81165147..d8b35cfe5e94e 100644
--- a/arch/arm64/kernel/sys.c
+++ b/arch/arm64/kernel/sys.c
@@ -47,22 +47,26 @@ SYSCALL_DEFINE1(arm64_personality, unsigned int, personality)
 	return ksys_personality(personality);
 }
 
+asmlinkage long sys_ni_syscall(void);
+
+asmlinkage long __arm64_sys_ni_syscall(const struct pt_regs *__unused)
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
index 0f8bcb7de7008..3c80a40c1c9d6 100644
--- a/arch/arm64/kernel/sys32.c
+++ b/arch/arm64/kernel/sys32.c
@@ -133,17 +133,14 @@ COMPAT_SYSCALL_DEFINE6(aarch32_fallocate, int, fd, int, mode,
 	return ksys_fallocate(fd, mode, arg_u64(offset), arg_u64(len));
 }
 
-asmlinkage long sys_ni_syscall(const struct pt_regs *);
-#define __arm64_sys_ni_syscall	sys_ni_syscall
-
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
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
