Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602B182F54
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rS0IwQ4+OALEDu2iB2h7rN+rehfdd9Vk5EWYOTlwb4M=; b=l1c3JFGl+c/TWVo6WUG0WyrRk0
	aBEQjfnM32IOaCNP2sVG5l8MRjKmroPwbby2KfS4tl+Kw13F39ljw9gBfRjhvkWPBrdlIMDcixYlQ
	51OiU5D2ug0ZcXVkixntk3sQaUJCqZ3n7s7OBbX0JzL5WCfFLlPQQuEaajGMfUbrOiKJHdnSxF6pj
	EXA5sb8eO91XLC7sejkVk2yJl1vPq8Fvi0s34zJlhbTtHh/puGFyMLyX00OTLH1UKsfcgUck4PB/9
	9nnX8xz7ogIhzNWOZqwvFyQ226nGmqzQaE1zm7Y6QZ1iz68qVR90gWK8t9CW8Rpe0k/cLX/LcCs8O
	6rtehd1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwIn-0003gJ-4i; Tue, 06 Aug 2019 10:02:45 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwHT-0002jS-4s
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:01:24 +0000
Received: by mail-yb1-xb42.google.com with SMTP id e11so4019106ybq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 03:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SpJEkhv16jwVLO2sSfJ7SapVMbBMCm5PIZfy4pO40/c=;
 b=NcmXSNcyQXDjk3UYlgYN76nvMxC7M92+xGOU6qJ+B27Ib4OnaFsQUE4R4i6AgQ5Z27
 CrVPGUgZwTFsH/qOmNAZIQ9t8+tJQYLJRYwOgyGPNBTtVtV2+jhG318/V8R4JQ79LBji
 IXJFOhESxve1HFswgRG5nTJ/blfxFcD16f8zz9LuhnDFQEGvMLmUBnqt1xPDTPxTR3F2
 UHxlkCaew7fGYGA1NWH+bEsjzPS8fNmBKA8ge4sydhn43kds0Br7aJqOw8nsgys43bqq
 +XxhHjPci5pdYEoWKUtlQUEsK7RtCbrhP00EmAXuXadm7JEFV+so2h2c2OMhdTF7sOr/
 uDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SpJEkhv16jwVLO2sSfJ7SapVMbBMCm5PIZfy4pO40/c=;
 b=KIyf7TyhBwzKdy7rsszZ3JkYV71B1LFepJzMGsLScWGYNalqChMVj7DROfYu4qjhwf
 3w9uaqUS6JNmBDpYjKpUx/LCNEEAawwHdLr4dVw1x1A8r+aFoRFFQ5JIY8V/naWjCg5T
 LqfCNOkCVOIxtUrZgVHixJzshKP3UxZLOhr9+3jn+6Wrrqga62MiBYUaA/ITQJoe9EP8
 jXfdRLpVpshRexqGHIJ6ojLcAkShtsfJl5Wd+nCh29bhlk6m7xkfhMDbWJZ2wUmyphbm
 XdoP4j6qjWf+4Fi7KX+tlPFLyOORhX8F2OiTQKRshCahtmpsXBrFpU7ve6N6XWjIHpvX
 vsEw==
X-Gm-Message-State: APjAAAWnHJlB5O324fEoRKdv4vHFGKJgJlrdXl4E2NN30zWGXqUng+5P
 pluO8v0k+PQvQsMwLxNITr9YGw==
X-Google-Smtp-Source: APXvYqwTAorLnL1JJGzrv713O0sksEZzjbqxPPlxmNn5n95Bw8aIX/crRrWGGgZ7Emh+mOBZG+hc4w==
X-Received: by 2002:a25:1a82:: with SMTP id a124mr1799776yba.160.1565085681984; 
 Tue, 06 Aug 2019 03:01:21 -0700 (PDT)
Received: from localhost.localdomain (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id h12sm18316685ywm.91.2019.08.06.03.01.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 03:01:21 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arch@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>
Subject: [PATCH v2 3/3] arm: Add support for function error injection
Date: Tue,  6 Aug 2019 18:00:15 +0800
Message-Id: <20190806100015.11256-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806100015.11256-1-leo.yan@linaro.org>
References: <20190806100015.11256-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030123_376438_6D02D8B4 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patch implements arm specific functions regs_set_return_value() and
override_function_with_return() to support function error injection.

In the exception flow, it updates pt_regs::ARM_pc with pt_regs::ARM_lr
so can override the probed function return.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/Kconfig              |  1 +
 arch/arm/include/asm/ptrace.h |  5 +++++
 arch/arm/lib/Makefile         |  2 ++
 arch/arm/lib/error-inject.c   | 19 +++++++++++++++++++
 4 files changed, 27 insertions(+)
 create mode 100644 arch/arm/lib/error-inject.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 33b00579beff..2d3d44a037f6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -77,6 +77,7 @@ config ARM
 	select HAVE_EXIT_THREAD
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
+	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
 	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
 	select HAVE_GCC_PLUGINS
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
index b25c54585048..8f56484a7156 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -42,3 +42,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
   CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
   obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
 endif
+
+obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
new file mode 100644
index 000000000000..2d696dc94893
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
+	 * function, when kprobe returns back from exception it will override
+	 * the end of probed function and directly return to the predefined
+	 * function's caller.
+	 */
+	instruction_pointer_set(regs, regs->ARM_lr);
+}
+NOKPROBE_SYMBOL(override_function_with_return);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
