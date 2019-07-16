Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4983E6A719
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uwD4xuAt8gk2Gz29pPVsp59gYxwYNQTAi1I8cuQkIpM=; b=iNQocNEMrpJxj+9EjY5Fv4gtJQ
	/LCGrnx+nuoW1Io65CO8KwakCVbRyMbeK+bZvzifjw41NkoNYFVi0zpyGwICKqyDj0AoLQGxGADCX
	aKSBB48iwg/XT2HreKH+q/Vsr6oh8OIstkl3Irz1pnvA8sNuTJsABS47vN4KOoECbM9YUPVIZffIq
	MFXCQPdj7EwCfLXavlXeGNLrBHsOjbwXSa3Q+2LkezXE+jNv9OsKV68m365HuuywC1ASKvaEpvr/F
	UuGDKs0stoJK6vDHls0ituuAeIrB6XDXmlJ7IE/SwT9w/EtE2shiZxwSYMM7VLMZYMUQLaS94tFML
	sgP3Itww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLP5-0000ah-Qi; Tue, 16 Jul 2019 11:13:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLOg-0000Rn-Kv
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:13:28 +0000
Received: by mail-pg1-x543.google.com with SMTP id f5so448785pgu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 04:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E2i/udg2w3wrGveXxZ0CfGzob3tFFx0rfm+JzVT0Ufc=;
 b=jHKzaY6922Yu28T9Bff5NZORO93a7cXFLmiZuwi4qLfbemKA5hga13MQN3haCO8ena
 q/ri2Qg7dE7VL8A1Kl2QztmGDv+YCLGTjyZpEIFPN9KWjOxdu5RE9PZMsFjxXTV5ds8V
 NN/qh4zAHXZCvvb17yStTthsdlNay9Z2Kstc4El8pGQcaPZ5aSDbtMG/j1GQJp8vuIU5
 4hP+vogcQvMmDhOSAmBxXLAPCOCXH2gIuKG8Aq1pRi9aYQC6LcbpNS/drPm6r1XW3T9e
 VUR3ZRnPGlAfN/jbriW+1ll6DXsv5rVCEXrNEz7ww2hwuKQXLbY3wow52xMceZB0oK7W
 Y3ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E2i/udg2w3wrGveXxZ0CfGzob3tFFx0rfm+JzVT0Ufc=;
 b=bgm41FPnvTo4OALqE3TRXh1hYhVFj5lnjMykN4gRYbpM0s43mHbigbLiCSB2Dv7ZsF
 5QL/zNZfAdjy3+yQ+9JXxRKi6V+Heqi67WVmZBHpNzXunFNwPCV3S6dM/su0ak9gBr4v
 4x2WHnkggSgenznOBVEHRiEZK07Zt5OnM9hiQFXP8x3mU8g/qTfS9MkrTu4+zDwMkvsD
 yN/dYDaexYpJmMPrjBvNdgU09LpOZUi3kfeNMUqZJmH3ZOQ3X2Af5y7fTfy8WXFyuFb6
 gN8faPrbXHegpU2yJVj5+NsgKnkZ4SPPFrlTAU6FBS8uwFn7WuiEhplOhA63yzpIVI4O
 gOgQ==
X-Gm-Message-State: APjAAAVOtETwTb5Mtx5RQ3D3oxSaE5UalfapZ1hRU7Q6njjhGJvvgV7x
 kWedGayyMSiSj1FFQkjB7/o4WA==
X-Google-Smtp-Source: APXvYqxH/LGB+HIDp3yR3h8D9gmqijBTeEMxlQPvdHS35dIb8U6g8YLCFVj2tj/OrIFeqjNGQFTSsA==
X-Received: by 2002:a63:d315:: with SMTP id b21mr8418386pgg.326.1563275605529; 
 Tue, 16 Jul 2019 04:13:25 -0700 (PDT)
Received: from localhost.localdomain (li1433-81.members.linode.com.
 [45.33.106.81])
 by smtp.gmail.com with ESMTPSA id 21sm19324907pjh.25.2019.07.16.04.13.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:13:25 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, Justin He <Justin.He@arm.com>
Subject: [PATCH 1/2] arm64: Add support for function error injection
Date: Tue, 16 Jul 2019 19:13:00 +0800
Message-Id: <20190716111301.1855-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190716111301.1855-1-leo.yan@linaro.org>
References: <20190716111301.1855-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_041326_867355_D2475D8D 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
for arm64.

In the exception flow, arm64's general register x30 contains the value
for the link register; so we can just update pt_regs::pc with it rather
than redirecting execution to a dummy function that returns.

This patch is heavily inspired by the commit 7cd01b08d35f ("powerpc:
Add support for function error injection").

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/Kconfig                       |  1 +
 arch/arm64/include/asm/error-injection.h | 13 +++++++++++++
 arch/arm64/include/asm/ptrace.h          |  5 +++++
 arch/arm64/lib/Makefile                  |  2 ++
 arch/arm64/lib/error-inject.c            | 19 +++++++++++++++++++
 5 files changed, 40 insertions(+)
 create mode 100644 arch/arm64/include/asm/error-injection.h
 create mode 100644 arch/arm64/lib/error-inject.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 697ea0510729..a6d9e622977d 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -142,6 +142,7 @@ config ARM64
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
+	select HAVE_FUNCTION_ERROR_INJECTION
 	select HAVE_FUNCTION_GRAPH_TRACER
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
diff --git a/arch/arm64/include/asm/error-injection.h b/arch/arm64/include/asm/error-injection.h
new file mode 100644
index 000000000000..da057e8ed224
--- /dev/null
+++ b/arch/arm64/include/asm/error-injection.h
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
diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index dad858b6adc6..3aafbbe218a2 100644
--- a/arch/arm64/include/asm/ptrace.h
+++ b/arch/arm64/include/asm/ptrace.h
@@ -294,6 +294,11 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
 	return regs->regs[0];
 }
 
+static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
+{
+	regs->regs[0] = rc;
+}
+
 /**
  * regs_get_kernel_argument() - get Nth function argument in kernel
  * @regs:	pt_regs of that context
diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
index 33c2a4abda04..f182ccb0438e 100644
--- a/arch/arm64/lib/Makefile
+++ b/arch/arm64/lib/Makefile
@@ -33,3 +33,5 @@ UBSAN_SANITIZE_atomic_ll_sc.o	:= n
 lib-$(CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE) += uaccess_flushcache.o
 
 obj-$(CONFIG_CRC32) += crc32.o
+
+obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
diff --git a/arch/arm64/lib/error-inject.c b/arch/arm64/lib/error-inject.c
new file mode 100644
index 000000000000..35661c2de4b0
--- /dev/null
+++ b/arch/arm64/lib/error-inject.c
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
+	 * 'regs->regs[30]' contains the the link register for the probed
+	 * function and assign it to 'regs->pc', so when kprobe returns
+	 * back from exception it will override the end of probed function
+	 * and drirectly return to the predefined function's caller.
+	 */
+	regs->pc = regs->regs[30];
+}
+NOKPROBE_SYMBOL(override_function_with_return);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
