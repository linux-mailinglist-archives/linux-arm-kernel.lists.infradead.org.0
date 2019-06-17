Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E36494F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 00:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sW/t/sSDXSourXEcZkzRFT2/aZIMzc4STvhTiWOuYho=; b=dFRSw/tfH5IUiaY30pVcfOpaBN
	91an/J3zgBP3XrWQ1lMv1Kz2re4+bxft04kuoznozGEtT0wjbnpqkM2Jlfl9RtRsbF+75YQIZR/y9
	dUb79wqLoE0Vbin23XdkDojCNVpkBXMGZYRgvCSMpruFKN4x4RHSy109bz2hC0vCLADa3OHZY69z0
	+JNvb41ty7EKrlbI7VD368ZJuOZzMaEyFwGpXqUbzhZnXE8dzVnhOtBsevSR5u0zvfK8ogzYnL67b
	tPT4/oMZFPBzUbeaVCzk5Kdebk3C2smEYJJvx9I4lzhJSxwdR7uw4jck8ZvRDI337fi7DRw9w1bf8
	zYk25TUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcztM-0003b0-Op; Mon, 17 Jun 2019 22:14:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczra-0002IS-6v
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 22:12:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id n2so6509798pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 15:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7DrG5+RQG0FCVM4nQANaF2hEes9VxzWs9d/hV5PsNqg=;
 b=XyDwQXzNnEij5TW9Icqwv/CiWNVb5T+NWkPGhFjfrSpTK2s8KmaXHMuwW5UXiSQy/Y
 hsHRRWSHbDpn/fZmM9n89xSTJEFW15xamSdjj2kfvj48wHQDBul+Teb7O076bKCSS2nZ
 C5GncPJXbGCAQEsP5eT/pDsHSal7Xkd5Wefa0xjxYnidkLCQwAC9QI+Ki0snnNa4XWRp
 Pq8+H1mOEkReVCWrjLpMYIpWKAKFRrymvAFDjDYH2IMUvA2ORvMBSwjmPZZDmQZE42rT
 Bz2t0TaVE4AQZkIvPvy7Yhy7Bi+gvFSdHRvbnLGkjpYFFkQRgTfOG9lC6rXugAz3SflF
 G7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7DrG5+RQG0FCVM4nQANaF2hEes9VxzWs9d/hV5PsNqg=;
 b=IfYZdlPcNClGrEnGRv5/TS2wQjRqrAK5oTNybrj/V1XrKGyApfsNcOv8U8x+ytsf7j
 6DUeES/AoCWDT8QWH3UsMjZ6Psg19ehXNxNUwOrDPcmitHkuScZkwqyKMqdsDQn11DY1
 /LnZtVUZ8JZD69Zd8VooOVRT6dS76R7abWkCrOk/PA0wOYZXXdJIF07h3p5u58h8eXYk
 JTjqzgLrUWW7xVplT0cWvEMg4QeqiWaxXk/v+oOqCAm9n4ye2jCRUxnAeinMF1Lk8tjc
 QB69zY0gfFEeHwCmyZFX6QKJI8oRIQ1fUv6g51TOyCwdWpLZdBsmXpvFSEycvxn8liXY
 XI+Q==
X-Gm-Message-State: APjAAAVGyg0SnqnPyNeb/lIE2JRy1+xLETlKjv2ShzoDXhx9ZyokecFF
 /9voJRif5Zx8U3iW80kGKbF+WT0C
X-Google-Smtp-Source: APXvYqzALF9X8zx3ACx38xgnCez+oxMQ0D3gKMg8/imffldM/5SvhkikVjpppW+WO/yVXbAhtFw/vQ==
X-Received: by 2002:a62:1d11:: with SMTP id d17mr24476871pfd.249.1560809510618; 
 Mon, 17 Jun 2019 15:11:50 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s129sm12551020pfb.186.2019.06.17.15.11.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 15:11:49 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 4/6] ARM: Define the virtual space of KASan's shadow region
Date: Mon, 17 Jun 2019 15:11:32 -0700
Message-Id: <20190617221134.9930-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190617221134.9930-1-f.fainelli@gmail.com>
References: <20190617221134.9930-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_151230_303789_B1CCCAB9 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, mhocko@suse.com,
 julien.thierry@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, yamada.masahiro@socionext.com, ryabinin.a.a@gmail.com,
 glider@google.com, kvmarm@lists.cs.columbia.edu,
 Florian Fainelli <f.fainelli@gmail.com>, corbet@lwn.net,
 Abbott Liu <liuwenliang@huawei.com>, daniel.lezcano@linaro.org,
 linux@armlinux.org.uk, kasan-dev@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, drjones@redhat.com,
 vladimir.murzin@arm.com, keescook@chromium.org, arnd@arndb.de,
 marc.zyngier@arm.com, andre.przywara@arm.com, philip@cog.systems,
 jinb.park7@gmail.com, tglx@linutronix.de, dvyukov@google.com, nico@fluxnic.net,
 gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 linux-doc@vger.kernel.org, christoffer.dall@arm.com, geert@linux-m68k.org,
 rob@landley.net, pombredanne@nexb.com, akpm@linux-foundation.org,
 thgarnie@google.com, kirill.shutemov@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Abbott Liu <liuwenliang@huawei.com>

Define KASAN_SHADOW_OFFSET,KASAN_SHADOW_START and KASAN_SHADOW_END for arm
kernel address sanitizer.

     +----+ 0xffffffff
     |    |
     |    |
     |    |
     +----+ CONFIG_PAGE_OFFSET
     |    |     |    | |->  module virtual address space area.
     |    |/
     +----+ MODULE_VADDR = KASAN_SHADOW_END
     |    |     |    | |-> the shadow area of kernel virtual address.
     |    |/
     +----+ TASK_SIZE(start of kernel space) = KASAN_SHADOW_START  the
     |    |\  shadow address of MODULE_VADDR
     |    | ---------------------+
     |    |                      |
     +    + KASAN_SHADOW_OFFSET  |-> the user space area. Kernel address
     |    |                      |    sanitizer do not use this space.
     |    | ---------------------+
     |    |/
     ------ 0

1)KASAN_SHADOW_OFFSET:
  This value is used to map an address to the corresponding shadow
address by the following formula:
shadow_addr = (address >> 3) + KASAN_SHADOW_OFFSET;

2)KASAN_SHADOW_START
  This value is the MODULE_VADDR's shadow address. It is the start
of kernel virtual space.

3)KASAN_SHADOW_END
  This value is the 0x100000000's shadow address. It is the end of
kernel addresssanitizer's shadow area. It is also the start of the
module area.

When enable kasan, the definition of TASK_SIZE is not an an 8-bit
rotated constant, so we need to modify the TASK_SIZE access code
in the *.s file.

Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Reported-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/include/asm/kasan_def.h | 64 ++++++++++++++++++++++++++++++++
 arch/arm/include/asm/memory.h    |  5 +++
 arch/arm/kernel/entry-armv.S     |  5 ++-
 arch/arm/kernel/entry-common.S   |  9 +++--
 arch/arm/mm/mmu.c                |  7 +++-
 5 files changed, 84 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/include/asm/kasan_def.h

diff --git a/arch/arm/include/asm/kasan_def.h b/arch/arm/include/asm/kasan_def.h
new file mode 100644
index 000000000000..7b7f42435146
--- /dev/null
+++ b/arch/arm/include/asm/kasan_def.h
@@ -0,0 +1,64 @@
+/*
+ *  arch/arm/include/asm/kasan_def.h
+ *
+ *  Copyright (c) 2018 Huawei Technologies Co., Ltd.
+ *
+ *  Author: Abbott Liu <liuwenliang@huawei.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef __ASM_KASAN_DEF_H
+#define __ASM_KASAN_DEF_H
+
+#ifdef CONFIG_KASAN
+
+/*
+ *    +----+ 0xffffffff
+ *    |    |
+ *    |    |
+ *    |    |
+ *    +----+ CONFIG_PAGE_OFFSET
+ *    |    |\
+ *    |    | |->  module virtual address space area.
+ *    |    |/
+ *    +----+ MODULE_VADDR = KASAN_SHADOW_END
+ *    |    |\
+ *    |    | |-> the shadow area of kernel virtual address.
+ *    |    |/
+ *    +----+ TASK_SIZE(start of kernel space) = KASAN_SHADOW_START  the
+ *    |    |\  shadow address of MODULE_VADDR
+ *    |    | ---------------------+
+ *    |    |                      |
+ *    +    + KASAN_SHADOW_OFFSET  |-> the user space area. Kernel address
+ *    |    |                      |    sanitizer do not use this space.
+ *    |    | ---------------------+
+ *    |    |/
+ *    ------ 0
+ *
+ *1)KASAN_SHADOW_OFFSET:
+ *    This value is used to map an address to the corresponding shadow
+ * address by the following formula:
+ * shadow_addr = (address >> 3) + KASAN_SHADOW_OFFSET;
+ *
+ * 2)KASAN_SHADOW_START
+ *     This value is the MODULE_VADDR's shadow address. It is the start
+ * of kernel virtual space.
+ *
+ * 3) KASAN_SHADOW_END
+ *   This value is the 0x100000000's shadow address. It is the end of
+ * kernel addresssanitizer's shadow area. It is also the start of the
+ * module area.
+ *
+ */
+
+#define KASAN_SHADOW_OFFSET     (KASAN_SHADOW_END - (1<<29))
+
+#define KASAN_SHADOW_START      ((KASAN_SHADOW_END >> 3) + KASAN_SHADOW_OFFSET)
+
+#define KASAN_SHADOW_END        (UL(CONFIG_PAGE_OFFSET) - UL(SZ_16M))
+
+#endif
+#endif
diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index ed8fd0d19a3e..6e099a5458db 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -21,6 +21,7 @@
 #ifdef CONFIG_NEED_MACH_MEMORY_H
 #include <mach/memory.h>
 #endif
+#include <asm/kasan_def.h>
 
 /* PAGE_OFFSET - the virtual address of the start of the kernel image */
 #define PAGE_OFFSET		UL(CONFIG_PAGE_OFFSET)
@@ -31,7 +32,11 @@
  * TASK_SIZE - the maximum size of a user space task.
  * TASK_UNMAPPED_BASE - the lower boundary of the mmap VM area
  */
+#ifndef CONFIG_KASAN
 #define TASK_SIZE		(UL(CONFIG_PAGE_OFFSET) - UL(SZ_16M))
+#else
+#define TASK_SIZE		(KASAN_SHADOW_START)
+#endif
 #define TASK_UNMAPPED_BASE	ALIGN(TASK_SIZE / 3, SZ_16M)
 
 /*
diff --git a/arch/arm/kernel/entry-armv.S b/arch/arm/kernel/entry-armv.S
index ce4aea57130a..c3ca3b96f22a 100644
--- a/arch/arm/kernel/entry-armv.S
+++ b/arch/arm/kernel/entry-armv.S
@@ -183,7 +183,7 @@ ENDPROC(__und_invalid)
 
 	get_thread_info tsk
 	ldr	r0, [tsk, #TI_ADDR_LIMIT]
-	mov	r1, #TASK_SIZE
+	ldr	r1, =TASK_SIZE
 	str	r1, [tsk, #TI_ADDR_LIMIT]
 	str	r0, [sp, #SVC_ADDR_LIMIT]
 
@@ -437,7 +437,8 @@ ENDPROC(__fiq_abt)
 	@ if it was interrupted in a critical region.  Here we
 	@ perform a quick test inline since it should be false
 	@ 99.9999% of the time.  The rest is done out of line.
-	cmp	r4, #TASK_SIZE
+	ldr	r0, =TASK_SIZE
+	cmp	r4, r0
 	blhs	kuser_cmpxchg64_fixup
 #endif
 #endif
diff --git a/arch/arm/kernel/entry-common.S b/arch/arm/kernel/entry-common.S
index f7649adef505..0dfa3153d633 100644
--- a/arch/arm/kernel/entry-common.S
+++ b/arch/arm/kernel/entry-common.S
@@ -53,7 +53,8 @@ __ret_fast_syscall:
  UNWIND(.cantunwind	)
 	disable_irq_notrace			@ disable interrupts
 	ldr	r2, [tsk, #TI_ADDR_LIMIT]
-	cmp	r2, #TASK_SIZE
+	ldr	r1, =TASK_SIZE
+	cmp	r2, r1
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]		@ re-check for syscall tracing
 	tst	r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
@@ -90,7 +91,8 @@ __ret_fast_syscall:
 #endif
 	disable_irq_notrace			@ disable interrupts
 	ldr	r2, [tsk, #TI_ADDR_LIMIT]
-	cmp	r2, #TASK_SIZE
+	ldr     r1, =TASK_SIZE
+	cmp     r2, r1
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]		@ re-check for syscall tracing
 	tst	r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
@@ -131,7 +133,8 @@ ret_slow_syscall:
 	disable_irq_notrace			@ disable interrupts
 ENTRY(ret_to_user_from_irq)
 	ldr	r2, [tsk, #TI_ADDR_LIMIT]
-	cmp	r2, #TASK_SIZE
+	ldr     r1, =TASK_SIZE
+	cmp	r2, r1
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]
 	tst	r1, #_TIF_WORK_MASK
diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index f3ce34113f89..3ae33c2dc1ad 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -1256,9 +1256,14 @@ static inline void prepare_page_table(void)
 	/*
 	 * Clear out all the mappings below the kernel image.
 	 */
-	for (addr = 0; addr < MODULES_VADDR; addr += PMD_SIZE)
+	for (addr = 0; addr < TASK_SIZE; addr += PMD_SIZE)
 		pmd_clear(pmd_off_k(addr));
 
+#ifdef CONFIG_KASAN
+	/*TASK_SIZE ~ MODULES_VADDR is the KASAN's shadow area -- skip over it*/
+	addr = MODULES_VADDR;
+#endif
+
 #ifdef CONFIG_XIP_KERNEL
 	/* The XIP kernel is mapped in the module area -- skip over it */
 	addr = ((unsigned long)_exiprom + PMD_SIZE - 1) & PMD_MASK;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
