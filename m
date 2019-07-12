Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF6066647
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUzMsTM8rT7kVhOx81C5WHkrg8jiP2LmyKuQT4fknjs=; b=UKE3L+8zHrMm8p
	E+VwwqEFEJJR6iwHxSKUNuacuxOIBFMCGbdqmI5XIsxB6M44igKh7CLY3aW2jmy78L/hoJYCs4BcQ
	mi37YcKrB8GvOXueGpQmPXYcJCKZuGFfD+GlC6TzGjtks2stCSvIzzE0YG0mmYsJtuo0JpdHlTatO
	HYWOaL+G3XtxjVEwwU8+3S9TrRV4tNtZO2xr4AaNOiXMpJTaroTWQlkBB3fFvCE7kCI6/laiOlJwt
	vd4tR4JD4DQACbT2jgKqaPIWXj7WMlXGhcqLIjcN57LNyVqXKLsVKa+Ed7rWOYDsH1gtGjmll8Hod
	k87QkkOD497tTRyegb9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlo8j-0002OD-Me; Fri, 12 Jul 2019 05:30:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7I-0000KI-JK
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so3999665pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ES6KJwQvdOYp/ZF0zdgUUsDi+h2pkDI/v1RQA0OQPVY=;
 b=tmwltFcg11BComY5zOAw8U//kYuDnhwsBHYjvOdsbZqTgJ5Id3gL5+Ajk+Nf+99t0v
 cKAm1+okktz4oy5g8Y9Qt81vbaUbIQ7noZVvtk3HSxB72w6+rHQbtYFoPBtZRofPyPWm
 aqeqe59em/UaytGZ/SM2ScjksqxhmXmTvYgumAVaWkGB5Z3moF0IqDRMQ0GJOq+ZdauP
 fqSwueqQT5umFL1tyGAjyiRNH4En80WhQzaeubt+gxBunRvZlUql1u8KzNqFMCLgq5I7
 sJ7C7MHmGv4nOeGxmoQgWcXAJ6eF4sgorFYTdfnY55ZMgGVDv3zTCHNCEnJsJUPoYtBh
 sGvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ES6KJwQvdOYp/ZF0zdgUUsDi+h2pkDI/v1RQA0OQPVY=;
 b=sLkT46RZ6yn17FPQhyUsVqPxjS2ynwMASDf5TKQKEz1dw4s/zSO99TCiPOh/rK67QI
 ZcN6IU7FMtpOymyZQCKWv1SMnPqBIAtIknvLyJ4qBOfBWOjVJpMgEZA57EYzSPFBGiOm
 JPoOJHmFXVcVypFChomrxVHl3OrYD8dlJRkJP3KrxMTiRU47YyCmF+v8qyflDKjmh7ch
 GJNVb52B3Yz5JbY/of3HRxg5gL4LAeim1LN1X+bbE9xJySkRP+ueLtIZwuo+VT/KbWoR
 6vXVFaLj0rNIibn2CkxD86h9/DqOHAAXbBOhQoPBnes/6yqDxAQJ5CiQazCFSahGm+1N
 fpCA==
X-Gm-Message-State: APjAAAXqJfTc3pekm2vI73M+e2YE24B0KrtqX/Z2EBhV6LhfrTII1VvL
 xZRSmdILqSoXbccGti2iYiPvyQ==
X-Google-Smtp-Source: APXvYqzAbSLyLsROez7wch0OL8jIX2SSoeyNRYw8RM5zbUv/l35K5aOpVmAs/r+nr2xuTMZT6TZtFg==
X-Received: by 2002:a17:90a:eb08:: with SMTP id
 j8mr9632470pjz.72.1562909347630; 
 Thu, 11 Jul 2019 22:29:07 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id a25sm6920396pfn.1.2019.07.11.22.29.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:06 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 03/43] arm64: move TASK_* definitions to
 <asm/processor.h>
Date: Fri, 12 Jul 2019 10:57:51 +0530
Message-Id: <d1358018a1c0558cf775865f5a497f689f1c0beb.1562908074.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222908_825405_B024FE9E 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
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
