Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4FAA18DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUzMsTM8rT7kVhOx81C5WHkrg8jiP2LmyKuQT4fknjs=; b=PmfvipfoI8POJw
	gaW3mIndbbZttNBBFlmlZiiNKCZeOBkNEF1a0Im7AbC2Ml44GF5GS948qAIDeJJ7dkS3lFbfTrpXJ
	bqSj6sVls2AU8GR/fkxSMTOrJZBkNJKTT8Ikw9fq52jsddhEyEODKsm1K7mJS7kz1XT9JPOMjTqU3
	zCK+HnvZJhSY3C/8EwkWZQdkIvI0rOtaHWreDFO6MSHRiZN8S9L5wLmaSJG43R9VB+doykJIKX6J0
	U2LHRqVzEs1cCKPwGxSDB0OnG2FLK+4/a1hc1U3I92UOfUtHtd/H0I3G+vc8U9YsbRY6LcoYpg0My
	Jd8k31u8H2SBR+2Frm+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Iir-0006jj-83; Thu, 29 Aug 2019 11:36:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ihg-0004le-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id w26so1845157pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ES6KJwQvdOYp/ZF0zdgUUsDi+h2pkDI/v1RQA0OQPVY=;
 b=N8ypWh9bUBCQg5Qrp3UqxAwWng+Qg3fzHmDGkcGYs3MmNmm2g40ZfbG6LcePKVNtcN
 2SqhleEP3CF+UMjT+Q8lIsUUb04onlh1FnqC+rOlnICQ5SY72w9ZTRSz+Ssvc6ocLrB2
 t7UZ9Ici3AH5doJc+q+SWI6Mpno9SBbcmKo/oYyy9Dub9FpEdk6mbwwKHfmKfAC8GCOR
 P/hlqL30UkbzV3NZhDtedPQ8hNugxum8f6BjdZDwMHsIboa30nvtGlJICaeHXjA1rqLp
 E6UpmqFPrUEn3Muc2TJPfcw7aGy3xgrPS0UMR6jaUZNekPVxRXqeM1jxxTZMs/IAvZ9O
 +g5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ES6KJwQvdOYp/ZF0zdgUUsDi+h2pkDI/v1RQA0OQPVY=;
 b=LzLrBVWPhhQRrMPYxdhw8TgQSyX6r5LtNYXruXzGQpJZBOMPyvvinOYDlClBqDBhuT
 JBnA6aQRpeUmwYQug+jAJRS0x+lcZC3w3O/W9xE0Kttr5jcEqowPA3JMR6tvLtuI58ay
 x2GwiHhqiYYB8qqSKAeaidOa1iNLNYUyROt4Rfj+R0rY/xvZPMVR90g7HnZ3x0sSZcqs
 GW3+IDQy7M0K/TAD+LJ3/45+3P8xl6OuVEPN++o7Q4pgpXGr5v0GY7A8gUDChoWUiEdV
 w6LBPbSBKT19dK4b+Ds4fOjxGEz34YGzFuo0jbtWDhGakG+5XWxUeEjp15+sTNRzZduq
 FsPQ==
X-Gm-Message-State: APjAAAWj4k1cNZ3K7uL4CW161Dm8UytE4rpDX2dD8nThlOjh5t9aJKko
 d3TAFos7uCDyIIgziWIbtDtpQA==
X-Google-Smtp-Source: APXvYqxr33ZzfzDwQVSTt96WoT+YgW+FF6uN6OiW9GTsMKP0VTDzy6Vho/bY8M4uoVrl+6Phw5Lq0Q==
X-Received: by 2002:a63:9e56:: with SMTP id r22mr7890169pgo.221.1567078500171; 
 Thu, 29 Aug 2019 04:35:00 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id p2sm5205020pfb.122.2019.08.29.04.34.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:34:59 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 03/44] arm64: move TASK_* definitions to
 <asm/processor.h>
Date: Thu, 29 Aug 2019 17:03:48 +0530
Message-Id: <687d13717c9736bc33b9128bd09371fc0453fbdd.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043501_006904_BEA6D6DE 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yury Norov <ynorov@caviumnetworks.com>

commit eef94a3d09aab437c8c254de942d8b1aa76455e2 upstream.

ILP32 series [1] introduces the dependency on <asm/is_compat.h> for
TASK_SIZE macro. Which in turn requires <asm/thread_info.h>, and
<asm/thread_info.h> include <asm/memory.h>, giving a circular dependency,
because TASK_SIZE is currently located in <asm/memory.h>.

In other architectures, TASK_SIZE is defined in <asm/processor.h>, and
moving TASK_SIZE there fixes the problem.

Discussion: https://patchwork.kernel.org/patch/9929107/

[1] https://github.com/norov/linux/tree/ilp32-next

CC: Will Deacon <will.deacon@arm.com>
CC: Laura Abbott <labbott@redhat.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Suggested-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Yury Norov <ynorov@caviumnetworks.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/memory.h    | 15 ---------------
 arch/arm64/include/asm/processor.h | 21 +++++++++++++++++++++
 arch/arm64/kernel/entry.S          |  2 +-
 3 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index b42b930cc19a..959a1e9188fe 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -43,8 +43,6 @@
  *		 (VA_BITS - 1))
  * VA_BITS - the maximum number of bits for virtual addresses.
  * VA_START - the first kernel virtual address.
- * TASK_SIZE - the maximum size of a user space task.
- * TASK_UNMAPPED_BASE - the lower boundary of the mmap VM area.
  * The module space lives between the addresses given by TASK_SIZE
  * and PAGE_OFFSET - it must be within 128MB of the kernel text.
  */
@@ -58,19 +56,6 @@
 #define PCI_IO_END		(MODULES_VADDR - SZ_2M)
 #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
 #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
-#define TASK_SIZE_64		(UL(1) << VA_BITS)
-
-#ifdef CONFIG_COMPAT
-#define TASK_SIZE_32		UL(0x100000000)
-#define TASK_SIZE		(test_thread_flag(TIF_32BIT) ? \
-				TASK_SIZE_32 : TASK_SIZE_64)
-#define TASK_SIZE_OF(tsk)	(test_tsk_thread_flag(tsk, TIF_32BIT) ? \
-				TASK_SIZE_32 : TASK_SIZE_64)
-#else
-#define TASK_SIZE		TASK_SIZE_64
-#endif /* CONFIG_COMPAT */
-
-#define TASK_UNMAPPED_BASE	(PAGE_ALIGN(TASK_SIZE / 4))
 
 /*
  * Physical vs virtual RAM address space conversion.  These are
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index d08559528927..75d9ef6c457c 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -19,6 +19,10 @@
 #ifndef __ASM_PROCESSOR_H
 #define __ASM_PROCESSOR_H
 
+#define TASK_SIZE_64		(UL(1) << VA_BITS)
+
+#ifndef __ASSEMBLY__
+
 /*
  * Default implementation of macro that returns current
  * instruction pointer ("program counter").
@@ -36,6 +40,22 @@
 #include <asm/types.h>
 
 #ifdef __KERNEL__
+/*
+ * TASK_SIZE - the maximum size of a user space task.
+ * TASK_UNMAPPED_BASE - the lower boundary of the mmap VM area.
+ */
+#ifdef CONFIG_COMPAT
+#define TASK_SIZE_32		UL(0x100000000)
+#define TASK_SIZE		(test_thread_flag(TIF_32BIT) ? \
+				TASK_SIZE_32 : TASK_SIZE_64)
+#define TASK_SIZE_OF(tsk)	(test_tsk_thread_flag(tsk, TIF_32BIT) ? \
+				TASK_SIZE_32 : TASK_SIZE_64)
+#else
+#define TASK_SIZE		TASK_SIZE_64
+#endif /* CONFIG_COMPAT */
+
+#define TASK_UNMAPPED_BASE	(PAGE_ALIGN(TASK_SIZE / 4))
+
 #define STACK_TOP_MAX		TASK_SIZE_64
 #ifdef CONFIG_COMPAT
 #define AARCH32_VECTORS_BASE	0xffff0000
@@ -188,4 +208,5 @@ static inline void spin_lock_prefetch(const void *x)
 
 int cpu_enable_pan(void *__unused);
 
+#endif /* __ASSEMBLY__ */
 #endif /* __ASM_PROCESSOR_H */
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 586326981769..c849be9231bb 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -27,7 +27,7 @@
 #include <asm/cpufeature.h>
 #include <asm/errno.h>
 #include <asm/esr.h>
-#include <asm/memory.h>
+#include <asm/processor.h>
 #include <asm/thread_info.h>
 #include <asm/asm-uaccess.h>
 #include <asm/unistd.h>
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
