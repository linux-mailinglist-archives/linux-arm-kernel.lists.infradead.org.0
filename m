Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2936A722
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2b2HGDdOJRgbENjyuA+5rn3JPmo2NqJBBkM3pJjypyY=; b=dIApnFnayOz0zwdJ0INitN2D12
	blK8gNWXlUq0erUeXBqopPaDclumNrz3orNzugQt1p+O5hsnljZFLlw5qjyOou+4ueLue2+rrecpP
	pH2cWkeMRAnoEngQfYoyLzUnw6FvvZf6PpdbiX3egxlbeZb98ddRHUZwGZVhR2FEyvoxrkxtDKTmJ
	pJQ+cST3BcOqGuZ2ccPNvVDW/h6Jfia3VC/1uAVr+C9yaNa6+pH5RkxGBvFQqg+7HEc23kol0x+xz
	s7FNgXJbI9rkhXM65oJD0KYkKWtjzeDAzfcdYHPr9O4VS77gS5GUbpEM/Rg45fSdYqOn4f4QcAM9c
	UlkcpPqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLPT-0000sk-0l; Tue, 16 Jul 2019 11:14:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLOm-0000YJ-Ph
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:13:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id r1so8939706pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 04:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8NFJGPVlVAuYMPwOwTl0aBkcJ7/1gJuCLWe4ZLruxuU=;
 b=eFbk7M92HouroEKZP0msAOxYiaXaS/2dbFJatwM4kpmpNxCG2xYCHSOShlXhHmfE/y
 HGkpLzpVjnxwwgeoDQJJKFh0lBYkIHTQa7SmPAqKRACozyFI1kfcxgyGAhe+PYMgiKoV
 TxyhCnO8KPyvyLcGu/qiDr7sGSerQN8PJUUr+ZQITlUAG3FZs1YFtHMqvb5GXWip8Cd6
 x879/KTZqwwgfqf8qTL/8Fhu2rsWdmSFSKgR7tTOmxeuPB4LV1h8KvWPxzLdT/FYmbzt
 Re6WG4jGnGzfkzfMqkQE+3p6FC6FWaId7hHmYWWVkEQiHCKVqOeGmEHXPEfk69iWGxsa
 1r6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8NFJGPVlVAuYMPwOwTl0aBkcJ7/1gJuCLWe4ZLruxuU=;
 b=AAekXOY2Kp1yXob5tTKpwWIrE/Jr6vfH6faJdrVqrdWU+CjL9BqpkBI6+2M+h8PB5J
 srsp7m2aWUDi7a1lqxChzS6NgfLP1OHVsGVd8c92sbmyU9nR5uRzNwglKbf7Q6dZ/q88
 ZzH3fp2E8asrJZKARcMgPeOb7VX8lmrHXottDWNBt/Yp+a/Lst70ji23oSggooSaGRMB
 v9X73NlezySFE4KEhSddkjbYidO9mmQXqOHarmvcSyKRABJ6IjXU5VjlVOmKKQYmhve+
 mLHOouODeHYRRmVvQiPOFihjpc1uNF7B1wmopH6VhEYwqkZcJCKL8ERAHXwTMtPHXZ32
 4jGA==
X-Gm-Message-State: APjAAAUOqI7q+ZRDnwxrZUKQ1uCJsGwtHoT6kZ04ieyCVlvnA6SsSyZT
 qovdIMX8+LNQEr1o2QD7G1X4N1rM1lQ=
X-Google-Smtp-Source: APXvYqxM/EzG6XkGwFUq5lCZpCu7Qc8I2MK4CsmMFswEozlWGhc+DzYVPw/ySuvYYAujJtb6hXwP4Q==
X-Received: by 2002:a17:90a:db52:: with SMTP id
 u18mr35690859pjx.107.1563275611836; 
 Tue, 16 Jul 2019 04:13:31 -0700 (PDT)
Received: from localhost.localdomain (li1433-81.members.linode.com.
 [45.33.106.81])
 by smtp.gmail.com with ESMTPSA id 21sm19324907pjh.25.2019.07.16.04.13.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:13:31 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, Justin He <Justin.He@arm.com>
Subject: [PATCH 2/2] arm: Add support for function error injection
Date: Tue, 16 Jul 2019 19:13:01 +0800
Message-Id: <20190716111301.1855-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190716111301.1855-1-leo.yan@linaro.org>
References: <20190716111301.1855-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_041332_923992_691A26AD 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch implement regs_set_return_value() and
override_function_with_return() to support function error injection
for arm.

In the exception flow, we can update pt_regs::ARM_pc with
pt_regs::ARM_lr so that can override the probed function return.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/Kconfig                       |  1 +
 arch/arm/include/asm/error-injection.h | 13 +++++++++++++
 arch/arm/include/asm/ptrace.h          |  5 +++++
 arch/arm/lib/Makefile                  |  2 ++
 arch/arm/lib/error-inject.c            | 19 +++++++++++++++++++
 5 files changed, 40 insertions(+)
 create mode 100644 arch/arm/include/asm/error-injection.h
 create mode 100644 arch/arm/lib/error-inject.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8869742a85df..f7932a5e29ea 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -74,6 +74,7 @@ config ARM
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS if (CPU_V6 || CPU_V6K || CPU_V7) && MMU
 	select HAVE_EXIT_THREAD
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
+	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
 	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
 	select HAVE_GCC_PLUGINS
diff --git a/arch/arm/include/asm/error-injection.h b/arch/arm/include/asm/error-injection.h
new file mode 100644
index 000000000000..da057e8ed224
--- /dev/null
+++ b/arch/arm/include/asm/error-injection.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+
+#ifndef __ASM_ERROR_INJECTION_H_
+#define __ASM_ERROR_INJECTION_H_
+
+#include <linux/compiler.h>
+#include <linux/linkage.h>
+#include <asm/ptrace.h>
+#include <asm-generic/error-injection.h>
+
+void override_function_with_return(struct pt_regs *regs);
+
+#endif /* __ASM_ERROR_INJECTION_H_ */
diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
index 91d6b7856be4..3b41f37b361a 100644
--- a/arch/arm/include/asm/ptrace.h
+++ b/arch/arm/include/asm/ptrace.h
@@ -89,6 +89,11 @@ static inline long regs_return_value(struct pt_regs *regs)
 	return regs->ARM_r0;
 }
 
+static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
+{
+	regs->ARM_r0 = rc;
+}
+
 #define instruction_pointer(regs)	(regs)->ARM_pc
 
 #ifdef CONFIG_THUMB2_KERNEL
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 0bff0176db2c..d3d7430ecd76 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -43,3 +43,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
   CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
   obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
 endif
+
+obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
new file mode 100644
index 000000000000..96319d017114
--- /dev/null
+++ b/arch/arm/lib/error-inject.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/error-injection.h>
+#include <linux/kprobes.h>
+
+void override_function_with_return(struct pt_regs *regs)
+{
+	/*
+	 * 'regs' represents the state on entry of a predefined function in
+	 * the kernel/module and which is captured on a kprobe.
+	 *
+	 * 'regs->ARM_lr' contains the the link register for the probed
+	 * function and assign it to 'regs->ARM_pc', so when kprobe returns
+	 * back from exception it will override the end of probed function
+	 * and drirectly return to the predefined function's caller.
+	 */
+	regs->ARM_pc = regs->ARM_lr;
+}
+NOKPROBE_SYMBOL(override_function_with_return);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
