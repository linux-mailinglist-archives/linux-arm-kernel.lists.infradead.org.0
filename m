Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05C2105EA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 03:25:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83wz+LyZHoU8gvUmjDhpes/Wrdx5zL18RT64sPjps8c=; b=aCkpLs9mRW/w9/
	o9Lcj9zwYyfz8a61ljx+sbq7b8ewHOMR5cclgpErfKmq0HbYDv/S2IHUIKnVKr4frGq4usFt8RPHn
	UzbLHH/sUtY8qkRyegJ055tNh17zYYKydi8Y34sshAbjDnV4wC2QgqyuLIX4pyyu49PvgCSpJjnqj
	EcV5ByUPVGP1qQs8e81Uwm/c8hGkK3R9h88Ide3oBF63j2GG1i62MqkM50ZpiKKCnWuKmxVKroqIj
	uPBHTmJXn1BczVLiXygM1Ou/yXVrQR63Y5XIYn7SR5TSQDV/yDlvu66v48wcLgbDObLYqNeeYo+ks
	oGfhRHhMfSVAL2pYjvug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXydI-0006NQ-8P; Fri, 22 Nov 2019 02:25:16 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXycK-0005WB-9p
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 02:24:18 +0000
Received: by mail-qk1-x742.google.com with SMTP id i3so4977537qkk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 18:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Vc6oPAqmMqVCIczgKwZs+8hK0w4omxkwGTKIqDEJ73U=;
 b=kwnVkpxGQoCtsJNASNIZDVDRzn/vp16uisiSxJCrDZMvkgMG+MsqKetS8v4OgzSilK
 4JvYSVEyU7KrZTJYLt+1IrdKcb1VCPHZQhGChvWCXi8Ukw1Xkjv0RenuU3sCy7l5LbeK
 nxdquDRZNLmOq9URwEGMSpS+E+mDwSF7nrgFHyzxNMWBosn1GMIP0ztA8BRYlCJA/Wgl
 cZ7QPRe0j6941FI0Yi8wSCtbC3KYyf//tsPi5eBL7gUPWkir5axoF1VQX2NXzWTfgmDX
 TOuRq+q5Jp6n3+ZZs4yMyiG4KSPUHgNWiBcCY2ydi7yle4vEaHPGt4M0l6PbpaiY3sMZ
 SkuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vc6oPAqmMqVCIczgKwZs+8hK0w4omxkwGTKIqDEJ73U=;
 b=bsqlcQjANHpxXnIzF4kt1Nw4lZEkNMbUOry3roGaH8iy6YNt8OP/OFYWS3rIK6At0i
 NT7XqPhduCscDFk+Y1C12KhZUhIdyC5h49p5IEWABDuJs/SDqIdN0WTSHKTzN8Sk8ot3
 AgAe9jqu5M/1CnhadJ0IUUFhqRR9ycy2yHM+NVzezFWkl7ZjmRTn1F3m4sF6Jh4jl/XY
 Osg2B6JP/e9O7dMg9xgHFXJ//2OparJ+C24abh+yA+CupY3OJ1iu5+dd1T4RUFi+xq+W
 G5RVZRSW2yYwS9r83zHH/UvFQtKKRyPi9JJO5FSKkcg8KflgUKzyw1K+MLI6rRDx3RPE
 Ouiw==
X-Gm-Message-State: APjAAAUajjC3lDsjser3M1V6cHGee+A+ZE/2e1RdsJ+qDnPJ7z1xRCAe
 gd/zJXXtwWe49GbsT/5lpqYpmA==
X-Google-Smtp-Source: APXvYqzJF3qnLMfzHgSwlWYs/UJk7GCvCnhv4oTIwSXg5D3daIPC/puS357rga4cHnfLQ3u54qVatw==
X-Received: by 2002:a05:620a:219b:: with SMTP id
 g27mr2734759qka.137.1574389453243; 
 Thu, 21 Nov 2019 18:24:13 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id z5sm2609801qtm.9.2019.11.21.18.24.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 18:24:12 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com,
 sstabellini@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 stefan@agner.ch, yamada.masahiro@socionext.com,
 xen-devel@lists.xenproject.org, linux@armlinux.org.uk
Subject: [PATCH v2 3/3] arm64: remove the rest of asm-uaccess.h
Date: Thu, 21 Nov 2019 21:24:06 -0500
Message-Id: <20191122022406.590141-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122022406.590141-1-pasha.tatashin@soleen.com>
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_182416_341727_E2E2B2BA 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The __uaccess_ttbr0_disable and __uaccess_ttbr0_enable,
are the last two macros defined in asm-uaccess.h.

Replace them with C wrappers and call C functions from
kernel_entry and kernel_exit.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/asm-uaccess.h | 38 ----------------------------
 arch/arm64/kernel/entry.S            |  6 ++---
 arch/arm64/lib/clear_user.S          |  2 +-
 arch/arm64/lib/copy_from_user.S      |  2 +-
 arch/arm64/lib/copy_in_user.S        |  2 +-
 arch/arm64/lib/copy_to_user.S        |  2 +-
 arch/arm64/mm/cache.S                |  1 -
 arch/arm64/mm/context.c              | 12 +++++++++
 8 files changed, 19 insertions(+), 46 deletions(-)
 delete mode 100644 arch/arm64/include/asm/asm-uaccess.h

diff --git a/arch/arm64/include/asm/asm-uaccess.h b/arch/arm64/include/asm/asm-uaccess.h
deleted file mode 100644
index 8f763e5b41b1..000000000000
--- a/arch/arm64/include/asm/asm-uaccess.h
+++ /dev/null
@@ -1,38 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef __ASM_ASM_UACCESS_H
-#define __ASM_ASM_UACCESS_H
-
-#include <asm/alternative.h>
-#include <asm/kernel-pgtable.h>
-#include <asm/mmu.h>
-#include <asm/sysreg.h>
-#include <asm/assembler.h>
-
-/*
- * User access enabling/disabling macros.
- */
-#ifdef CONFIG_ARM64_SW_TTBR0_PAN
-	.macro	__uaccess_ttbr0_disable, tmp1
-	mrs	\tmp1, ttbr1_el1			// swapper_pg_dir
-	bic	\tmp1, \tmp1, #TTBR_ASID_MASK
-	sub	\tmp1, \tmp1, #RESERVED_TTBR0_SIZE	// reserved_ttbr0 just before swapper_pg_dir
-	msr	ttbr0_el1, \tmp1			// set reserved TTBR0_EL1
-	isb
-	add	\tmp1, \tmp1, #RESERVED_TTBR0_SIZE
-	msr	ttbr1_el1, \tmp1		// set reserved ASID
-	isb
-	.endm
-
-	.macro	__uaccess_ttbr0_enable, tmp1, tmp2
-	get_current_task \tmp1
-	ldr	\tmp1, [\tmp1, #TSK_TI_TTBR0]	// load saved TTBR0_EL1
-	mrs	\tmp2, ttbr1_el1
-	extr    \tmp2, \tmp2, \tmp1, #48
-	ror     \tmp2, \tmp2, #16
-	msr	ttbr1_el1, \tmp2		// set the active ASID
-	isb
-	msr	ttbr0_el1, \tmp1		// set the non-PAN TTBR0_EL1
-	isb
-	.endm
-#endif
-#endif
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 583f71abbe98..c7b571e6d0f2 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -22,8 +22,8 @@
 #include <asm/mmu.h>
 #include <asm/processor.h>
 #include <asm/ptrace.h>
+#include <asm/kernel-pgtable.h>
 #include <asm/thread_info.h>
-#include <asm/asm-uaccess.h>
 #include <asm/unistd.h>
 
 /*
@@ -219,7 +219,7 @@ alternative_else_nop_endif
 	and	x23, x23, #~PSR_PAN_BIT		// Clear the emulated PAN in the saved SPSR
 	.endif
 
-	__uaccess_ttbr0_disable x21
+	bl __uaccess_ttbr0_disable_c
 1:
 #endif
 
@@ -293,7 +293,7 @@ alternative_else_nop_endif
 	tbnz	x22, #22, 1f			// Skip re-enabling TTBR0 access if the PSR_PAN_BIT is set
 	.endif
 
-	__uaccess_ttbr0_enable x0, x1
+	bl	__uaccess_ttbr0_enable_c
 
 	.if	\el == 0
 	/*
diff --git a/arch/arm64/lib/clear_user.S b/arch/arm64/lib/clear_user.S
index aeafc03e961a..b0b4a86a09e2 100644
--- a/arch/arm64/lib/clear_user.S
+++ b/arch/arm64/lib/clear_user.S
@@ -6,7 +6,7 @@
  */
 #include <linux/linkage.h>
 
-#include <asm/asm-uaccess.h>
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 
 	.text
diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index ebb3c06cbb5d..142bc7505518 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -5,7 +5,7 @@
 
 #include <linux/linkage.h>
 
-#include <asm/asm-uaccess.h>
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 #include <asm/cache.h>
 
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index 3d8153a1ebce..04dc48ca26f7 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -7,7 +7,7 @@
 
 #include <linux/linkage.h>
 
-#include <asm/asm-uaccess.h>
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 #include <asm/cache.h>
 
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index 357eae2c18eb..8f3218ae88ab 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -5,7 +5,7 @@
 
 #include <linux/linkage.h>
 
-#include <asm/asm-uaccess.h>
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 #include <asm/cache.h>
 
diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index 408d317a47d2..7940d6ef5da5 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -12,7 +12,6 @@
 #include <asm/assembler.h>
 #include <asm/cpufeature.h>
 #include <asm/alternative.h>
-#include <asm/asm-uaccess.h>
 
 /*
  *	__arch_flush_icache_range(start,end)
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index b5e329fde2dd..4fc32c504dea 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -237,6 +237,18 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 		cpu_switch_mm(mm->pgd, mm);
 }
 
+#ifdef CONFIG_ARM64_SW_TTBR0_PAN
+asmlinkage void __uaccess_ttbr0_enable_c(void)
+{
+	__uaccess_ttbr0_enable();
+}
+
+asmlinkage void __uaccess_ttbr0_disable_c(void)
+{
+	__uaccess_ttbr0_disable();
+}
+#endif
+
 /* Errata workaround post TTBRx_EL1 update. */
 asmlinkage void post_ttbr_update_workaround(void)
 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
