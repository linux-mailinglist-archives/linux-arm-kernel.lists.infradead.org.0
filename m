Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1091F92FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76XTSoN6v2f/XLJ3ItmHTEprJzQKPwgfz14OlD4RIgs=; b=AihmrLGw7ddwtD
	AQbQ/DSbZxSEeWinUWiY9+Dh8/7RGw/Gg5uhFNpq+rS35xZt6Iokkj59CS85vDtUuLQ8NgHX+KqLA
	iy5Qj8GW5EO1dswMdTK3X8PAPUNKRy/xTuAbOVHnl/yqpMpYgecPmnAWqEjw/0aqSGNiA7l+6rSmy
	TvnSrVpI6cKTgMmYXIhasUWrimyb2I7ndbXbP37F2OYK7lfMEEUpyf7AG7wLmH6/kaKcGOJx/osGY
	kYTl2+zYNMVYeCbjKcF7J+QIl4yoaXnRlqRYOj3Z2tFgtLw8PQmv/JJpi/KhOyA3coOJ9CCVrH261
	V8HrfURHAAODjUykXsOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklBj-000403-Ne; Mon, 15 Jun 2020 09:13:55 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl37-0000ls-Cx
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:05:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id s1so18244938ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2t87GoMlPh2dorSIQAkabSduSK+wjadgDKYeyfZ8Pvs=;
 b=bU0P1jDZyh9NF7mojGFdLKcy6Pv8wWlEr/AIE33w0gSOZjb71z8zLTXKo8XwOW5Q0H
 rtbC46d3QRDejGN9eCEXHhHvG5baoiGmDSWVy7C2cx30+MOFl4q2V81LGLwDrB0HQ0Nz
 RPVHNyN1kqDuaTAQcwIcanLsl2/+q05efYRDZzItcofdZwsEF8E0ObTg3SUjLIIjRoIs
 Fto6Yj1TEe2Iand0NQKoOOOj/mVT8/p23G9GcqQb9v8ZMPkIVmJSDtAnjPDHgwN+xwd7
 KIUuZFYUfjEHM0qj/zUKleB+297pjKYpY5De+YKp4+r/eMS56RUh2rGQi2D9XEQuFIQN
 4U7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2t87GoMlPh2dorSIQAkabSduSK+wjadgDKYeyfZ8Pvs=;
 b=GccLZD7ccmIPpum/HW02PTHh1l0g1Zf9YT9m0E9CZcW2JzIkAZB6acfiRDm/3XEKdi
 13lkgOYjGoDnXa/Wk/t2BVMekI21k94NpYwiJ3+OsUNMmYSC+TZHZp8EB9n9Nucrxr+X
 oEgeKUpUfDeWfaBj1toANwM61AoxiLGqAF3hkOPfw2rEauQbGrTrVI4a8cEBaktZrkXr
 qnu8OIoM5IF1NC6oVHEvo3exddvZAkLNyvQYPr4zdlvUpHI3lExp2KLN1uBPnbGyxZfT
 W2JreYMh5Mc8vC4lZHNK68K6l2VpOEB7hPqUhTO6TDjEebQG9JLwg8UuKRugrjww2SIs
 TFWg==
X-Gm-Message-State: AOAM533SQQ1NXJ92loieojsqVdsw+P7kPrpfYPH+/3nFyx8h/oldXldh
 Im92FgvFKMubRK/8t5A4wAQ5Og==
X-Google-Smtp-Source: ABdhPJy/dFW0RNnS5ksSsSdX+BsbwO5Xn4zospuq55zHwdYsxNBFCgXKdzLuSjlpFtF62vhIAu8wCA==
X-Received: by 2002:a2e:81d4:: with SMTP id s20mr12108269ljg.248.1592211899436; 
 Mon, 15 Jun 2020 02:04:59 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id c78sm5284434lfd.63.2020.06.15.02.04.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:04:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Mike Rapoport <rppt@linux.ibm.com>
Subject: [PATCH 3/5 v10] ARM: Define the virtual space of KASan's shadow region
Date: Mon, 15 Jun 2020 11:02:45 +0200
Message-Id: <20200615090247.5218-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200615090247.5218-1-linus.walleij@linaro.org>
References: <20200615090247.5218-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020501_842285_9C8D9194 
X-CRM114-Status: GOOD (  32.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 kasan-dev@googlegroups.com, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Abbott Liu <liuwenliang@huawei.com>

Define KASAN_SHADOW_OFFSET,KASAN_SHADOW_START and KASAN_SHADOW_END for
the Arm kernel address sanitizer. We are "stealing" lowmem (the 4GB
addressable by a 32bit architecture) out of the virtual address
space to use as shadow memory for KASan as follows:

 +----+ 0xffffffff
 |    |\
 |    | |-> Static kernel image (vmlinux) BSS and page table
 |    |/
 +----+ PAGE_OFFSET
 |    |\
 |    | |->  Loadable kernel modules virtual address space area
 |    |/
 +----+ MODULES_VADDR = KASAN_SHADOW_END
 |    |\
 |    | |-> The shadow area of kernel virtual address.
 |    |/
 +----+->  TASK_SIZE (start of kernel space) = KASAN_SHADOW_START the
 |    |\   shadow address of MODULES_VADDR
 |    | |
 |    | |
 |    | |-> The user space area in lowmem. The kernel address
 |    | |   sanitizer do not use this space, nor does it map it.
 |    | |
 |    | |
 |    | |
 |    | |
 |    |/
 ------ 0

0 .. TASK_SIZE is the memory that can be used by shared
userspace/kernelspace. It us used for userspace processes and for
passing parameters and memory buffers in system calls etc. We do not
need to shadow this area.

KASAN_SHADOW_START:
 This value begins with the MODULE_VADDR's shadow address. It is the
 start of kernel virtual space. Since we have modules to load, we need
 to cover also that area with shadow memory so we can find memory
 bugs in modules.

KASAN_SHADOW_END
 This value is the 0x100000000's shadow address: the mapping that would
 be after the end of the kernel memory at 0xffffffff. It is the end of
 kernel address sanitizer shadow area. It is also the start of the
 module area.

KASAN_SHADOW_OFFSET:
 This value is used to map an address to the corresponding shadow
 address by the following formula:

   shadow_addr = (address >> 3) + KASAN_SHADOW_OFFSET;

 As you would expect, >> 3 is equal to dividing by 8, meaning each
 byte in the shadow memory covers 8 bytes of kernel memory, so one
 bit shadow memory per byte of kernel memory is used.

 The KASAN_SHADOW_OFFSET is provided in a Kconfig option depending
 on the VMSPLIT layout of the system: the kernel and userspace can
 split up lowmem in different ways according to needs, so we calculate
 the shadow offset depending on this.

When kasan is enabled, the definition of TASK_SIZE is not an 8-bit
rotated constant, so we need to modify the TASK_SIZE access code in the
*.s file.

The kernel and modules may use different amounts of memory,
according to the VMSPLIT configuration, which in turn
determines the PAGE_OFFSET.

We use the following KASAN_SHADOW_OFFSETs depending on how the
virtual memory is split up:

- 0x1f000000 if we have 1G userspace / 3G kernelspace split:
  - The kernel address space is 3G (0xc0000000)
  - PAGE_OFFSET is then set to 0x40000000 so the kernel static
    image (vmlinux) uses addresses 0x40000000 .. 0xffffffff
  - On top of that we have the MODULES_VADDR which under
    the worst case (using ARM instructions) is
    PAGE_OFFSET - 16M (0x01000000) = 0x3f000000
    so the modules use addresses 0x3f000000 .. 0x3fffffff
  - So the addresses 0x3f000000 .. 0xffffffff need to be
    covered with shadow memory. That is 0xc1000000 bytes
    of memory.
  - 1/8 of that is needed for its shadow memory, so
    0x18200000 bytes of shadow memory is needed. We
    "steal" that from the remaining lowmem.
  - The KASAN_SHADOW_START becomes 0x26e00000, to
    KASAN_SHADOW_END at 0x3effffff.
  - Now we can calculate the KASAN_SHADOW_OFFSET for any
    kernel address as 0x3f000000 needs to map to the first
    byte of shadow memory and 0xffffffff needs to map to
    the last byte of shadow memory. Since:
    SHADOW_ADDR = (address >> 3) + KASAN_SHADOW_OFFSET
    0x26e00000 = (0x3f000000 >> 3) + KASAN_SHADOW_OFFSET
    KASAN_SHADOW_OFFSET = 0x26e00000 - (0x3f000000 >> 3)
    KASAN_SHADOW_OFFSET = 0x26e00000 - 0x07e00000
    KASAN_SHADOW_OFFSET = 0x1f000000

- 0x5f000000 if we have 2G userspace / 2G kernelspace split:
  - The kernel space is 2G (0x80000000)
  - PAGE_OFFSET is set to 0x80000000 so the kernel static
    image uses 0x80000000 .. 0xffffffff.
  - On top of that we have the MODULES_VADDR which under
    the worst case (using ARM instructions) is
    PAGE_OFFSET - 16M (0x01000000) = 0x7f000000
    so the modules use addresses 0x7f000000 .. 0x7fffffff
  - So the addresses 0x7f000000 .. 0xffffffff need to be
    covered with shadow memory. That is 0x81000000 bytes
    of memory.
  - 1/8 of that is needed for its shadow memory, so
    0x10200000 bytes of shadow memory is needed. We
    "steal" that from the remaining lowmem.
  - The KASAN_SHADOW_START becomes 0x6ee00000, to
    KASAN_SHADOW_END at 0x7effffff.
  - Now we can calculate the KASAN_SHADOW_OFFSET for any
    kernel address as 0x7f000000 needs to map to the first
    byte of shadow memory and 0xffffffff needs to map to
    the last byte of shadow memory. Since:
    SHADOW_ADDR = (address >> 3) + KASAN_SHADOW_OFFSET
    0x6ee00000 = (0x7f000000 >> 3) + KASAN_SHADOW_OFFSET
    KASAN_SHADOW_OFFSET = 0x6ee00000 - (0x7f000000 >> 3)
    KASAN_SHADOW_OFFSET = 0x6ee00000 - 0x0fe00000
    KASAN_SHADOW_OFFSET = 0x5f000000

- 0x9f000000 if we have 3G userspace / 1G kernelspace split,
  and this is the default split for ARM:
  - The kernel address space is 1GB (0x40000000)
  - PAGE_OFFSET is set to 0xc0000000 so the kernel static
    image uses 0xc0000000 .. 0xffffffff.
  - On top of that we have the MODULES_VADDR which under
    the worst case (using ARM instructions) is
    PAGE_OFFSET - 16M (0x01000000) = 0xbf000000
    so the modules use addresses 0xbf000000 .. 0xbfffffff
  - So the addresses 0xbf000000 .. 0xffffffff need to be
    covered with shadow memory. That is 0x41000000 bytes
    of memory.
  - 1/8 of that is needed for its shadow memory, so
    0x08200000 bytes of shadow memory is needed. We
    "steal" that from the remaining lowmem.
  - The KASAN_SHADOW_START becomes 0xb6e00000, to
    KASAN_SHADOW_END at 0xbfffffff.
  - Now we can calculate the KASAN_SHADOW_OFFSET for any
    kernel address as 0xbf000000 needs to map to the first
    byte of shadow memory and 0xffffffff needs to map to
    the last byte of shadow memory. Since:
    SHADOW_ADDR = (address >> 3) + KASAN_SHADOW_OFFSET
    0xb6e00000 = (0xbf000000 >> 3) + KASAN_SHADOW_OFFSET
    KASAN_SHADOW_OFFSET = 0xb6e00000 - (0xbf000000 >> 3)
    KASAN_SHADOW_OFFSET = 0xb6e00000 - 0x17e00000
    KASAN_SHADOW_OFFSET = 0x9f000000

- 0x8f000000 if we have 3G userspace / 1G kernelspace with
  full 1 GB low memory (VMSPLIT_3G_OPT):
  - The kernel address space is 1GB (0x40000000)
  - PAGE_OFFSET is set to 0xb0000000 so the kernel static
    image uses 0xb0000000 .. 0xffffffff.
  - On top of that we have the MODULES_VADDR which under
    the worst case (using ARM instructions) is
    PAGE_OFFSET - 16M (0x01000000) = 0xaf000000
    so the modules use addresses 0xaf000000 .. 0xaffffff
  - So the addresses 0xaf000000 .. 0xffffffff need to be
    covered with shadow memory. That is 0x51000000 bytes
    of memory.
  - 1/8 of that is needed for its shadow memory, so
    0x0a200000 bytes of shadow memory is needed. We
    "steal" that from the remaining lowmem.
  - The KASAN_SHADOW_START becomes 0xa4e00000, to
    KASAN_SHADOW_END at 0xaeffffff.
  - Now we can calculate the KASAN_SHADOW_OFFSET for any
    kernel address as 0xaf000000 needs to map to the first
    byte of shadow memory and 0xffffffff needs to map to
    the last byte of shadow memory. Since:
    SHADOW_ADDR = (address >> 3) + KASAN_SHADOW_OFFSET
    0xa4e00000 = (0xaf000000 >> 3) + KASAN_SHADOW_OFFSET
    KASAN_SHADOW_OFFSET = 0xa4e00000 - (0xaf000000 >> 3)
    KASAN_SHADOW_OFFSET = 0xa4e00000 - 0x15e00000
    KASAN_SHADOW_OFFSET = 0x8f000000

- The default value of 0xffffffff for KASAN_SHADOW_OFFSET
  is an error value. We should always match one of the
  above shadow offsets.

When we do this, TASK_SIZE will sometimes get a bit odd values
that will not fit into immediate mov assembly instructions.
To account for this, we need to rewrite some assembly using
TASK_SIZE like this:

-       mov     r1, #TASK_SIZE
+       ldr     r1, =TASK_SIZE

or

-       cmp     r4, #TASK_SIZE
+       ldr     r0, =TASK_SIZE
+       cmp     r4, r0

this is done to avoid the immediate #TASK_SIZE that need to
fit into a limited number of bits.

Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: kasan-dev@googlegroups.com
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Ard Biesheuvel <ardb@kernel.org> # QEMU/KVM/mach-virt/LPAE/8G
Reported-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v9->v10:
- Rebase on v5.8-rc1
ChangeLog v8->v9:
- Collect Ard's tags.
ChangeLog v7->v8:
- Rewrote the PMD clearing code to take into account that
  KASan may not always be adjacent to MODULES_VADDR: if we
  compile for thumb, then there will be an 8 MB hole between
  the shadow memory and MODULES_VADDR. Make this explicit and
  use the KASAN defines with an explicit ifdef so it is clear
  what is going on in the prepare_page_table().
- Patch memory.rst to reflect the location of KASan shadow
  memory.
ChangeLog v6->v7:
- Use the SPDX license identifier.
- Rewrote the commit message and updates the illustration.
- Move KASAN_OFFSET Kconfig set-up into this patch and put it
  right after PAGE_OFFSET so it is clear how this works, and
  we have all defines in one patch.
- Added KASAN_SHADOW_OFFSET of 0x8f000000 for 3G_OPT.
  See the calculation in the commit message.
- Updated the commit message with detailed information on
  how KASAN_SHADOW_OFFSET is obtained for the different
  VMSPLIT/PAGE_OFFSET options.
---
 Documentation/arm/memory.rst       |  5 ++
 arch/arm/Kconfig                   |  9 ++++
 arch/arm/include/asm/kasan_def.h   | 81 ++++++++++++++++++++++++++++++
 arch/arm/include/asm/memory.h      |  5 ++
 arch/arm/include/asm/uaccess-asm.h |  2 +-
 arch/arm/kernel/entry-armv.S       |  3 +-
 arch/arm/kernel/entry-common.S     |  9 ++--
 arch/arm/mm/mmu.c                  | 18 +++++++
 8 files changed, 127 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/include/asm/kasan_def.h

diff --git a/Documentation/arm/memory.rst b/Documentation/arm/memory.rst
index 0521b4ce5c96..36bae90cfb1e 100644
--- a/Documentation/arm/memory.rst
+++ b/Documentation/arm/memory.rst
@@ -72,6 +72,11 @@ MODULES_VADDR	MODULES_END-1	Kernel module space
 				Kernel modules inserted via insmod are
 				placed here using dynamic mappings.
 
+TASK_SIZE	MODULES_VADDR-1	KASAn shadow memory when KASan is in use.
+				The range from MODULES_VADDR to the top
+				of the memory is shadowed here with 1 bit
+				per byte of memory.
+
 00001000	TASK_SIZE-1	User space mappings
 				Per-thread mappings are placed here via
 				the mmap() system call.
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2ac74904a3ce..d291cdb84c9d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1328,6 +1328,15 @@ config PAGE_OFFSET
 	default 0xB0000000 if VMSPLIT_3G_OPT
 	default 0xC0000000
 
+config KASAN_SHADOW_OFFSET
+	hex
+	depends on KASAN
+	default 0x1f000000 if PAGE_OFFSET=0x40000000
+	default 0x5f000000 if PAGE_OFFSET=0x80000000
+	default 0x9f000000 if PAGE_OFFSET=0xC0000000
+	default 0x8f000000 if PAGE_OFFSET=0xB0000000
+	default 0xffffffff
+
 config NR_CPUS
 	int "Maximum number of CPUs (2-32)"
 	range 2 32
diff --git a/arch/arm/include/asm/kasan_def.h b/arch/arm/include/asm/kasan_def.h
new file mode 100644
index 000000000000..5739605aa7cf
--- /dev/null
+++ b/arch/arm/include/asm/kasan_def.h
@@ -0,0 +1,81 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  arch/arm/include/asm/kasan_def.h
+ *
+ *  Copyright (c) 2018 Huawei Technologies Co., Ltd.
+ *
+ *  Author: Abbott Liu <liuwenliang@huawei.com>
+ */
+
+#ifndef __ASM_KASAN_DEF_H
+#define __ASM_KASAN_DEF_H
+
+#ifdef CONFIG_KASAN
+
+/*
+ * Define KASAN_SHADOW_OFFSET,KASAN_SHADOW_START and KASAN_SHADOW_END for
+ * the Arm kernel address sanitizer. We are "stealing" lowmem (the 4GB
+ * addressable by a 32bit architecture) out of the virtual address
+ * space to use as shadow memory for KASan as follows:
+ *
+ * +----+ 0xffffffff
+ * |    |							\
+ * |    | |-> Static kernel image (vmlinux) BSS and page table
+ * |    |/
+ * +----+ PAGE_OFFSET
+ * |    |							\
+ * |    | |->  Loadable kernel modules virtual address space area
+ * |    |/
+ * +----+ MODULES_VADDR = KASAN_SHADOW_END
+ * |    |						\
+ * |    | |-> The shadow area of kernel virtual address.
+ * |    |/
+ * +----+->  TASK_SIZE (start of kernel space) = KASAN_SHADOW_START the
+ * |    |\   shadow address of MODULES_VADDR
+ * |    | |
+ * |    | |
+ * |    | |-> The user space area in lowmem. The kernel address
+ * |    | |   sanitizer do not use this space, nor does it map it.
+ * |    | |
+ * |    | |
+ * |    | |
+ * |    | |
+ * |    |/
+ * ------ 0
+ *
+ * 1) KASAN_SHADOW_START
+ *   This value begins with the MODULE_VADDR's shadow address. It is the
+ *   start of kernel virtual space. Since we have modules to load, we need
+ *   to cover also that area with shadow memory so we can find memory
+ *   bugs in modules.
+ *
+ * 2) KASAN_SHADOW_END
+ *   This value is the 0x100000000's shadow address: the mapping that would
+ *   be after the end of the kernel memory at 0xffffffff. It is the end of
+ *   kernel address sanitizer shadow area. It is also the start of the
+ *   module area.
+ *
+ * 3) KASAN_SHADOW_OFFSET:
+ *   This value is used to map an address to the corresponding shadow
+ *   address by the following formula:
+ *
+ *	shadow_addr = (address >> 3) + KASAN_SHADOW_OFFSET;
+ *
+ *  As you would expect, >> 3 is equal to dividing by 8, meaning each
+ *  byte in the shadow memory covers 8 bytes of kernel memory, so one
+ *  bit shadow memory per byte of kernel memory is used.
+ *
+ *  The KASAN_SHADOW_OFFSET is provided in a Kconfig option depending
+ *  on the VMSPLIT layout of the system: the kernel and userspace can
+ *  split up lowmem in different ways according to needs, so we calculate
+ *  the shadow offset depending on this.
+ */
+
+#define KASAN_SHADOW_SCALE_SHIFT	3
+#define KASAN_SHADOW_OFFSET	_AC(CONFIG_KASAN_SHADOW_OFFSET, UL)
+#define KASAN_SHADOW_END	((UL(1) << (32 - KASAN_SHADOW_SCALE_SHIFT)) \
+				 + KASAN_SHADOW_OFFSET)
+#define KASAN_SHADOW_START      ((KASAN_SHADOW_END >> 3) + KASAN_SHADOW_OFFSET)
+
+#endif
+#endif
diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index 99035b5891ef..5cfa9e5dc733 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -18,6 +18,7 @@
 #ifdef CONFIG_NEED_MACH_MEMORY_H
 #include <mach/memory.h>
 #endif
+#include <asm/kasan_def.h>
 
 /* PAGE_OFFSET - the virtual address of the start of the kernel image */
 #define PAGE_OFFSET		UL(CONFIG_PAGE_OFFSET)
@@ -28,7 +29,11 @@
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
diff --git a/arch/arm/include/asm/uaccess-asm.h b/arch/arm/include/asm/uaccess-asm.h
index 907571fd05c6..e6eb7a2aaf1e 100644
--- a/arch/arm/include/asm/uaccess-asm.h
+++ b/arch/arm/include/asm/uaccess-asm.h
@@ -85,7 +85,7 @@
 	 */
 	.macro	uaccess_entry, tsk, tmp0, tmp1, tmp2, disable
 	ldr	\tmp1, [\tsk, #TI_ADDR_LIMIT]
-	mov	\tmp2, #TASK_SIZE
+	ldr	\tmp2, =TASK_SIZE
 	str	\tmp2, [\tsk, #TI_ADDR_LIMIT]
  DACR(	mrc	p15, 0, \tmp0, c3, c0, 0)
  DACR(	str	\tmp0, [sp, #SVC_DACR])
diff --git a/arch/arm/kernel/entry-armv.S b/arch/arm/kernel/entry-armv.S
index 55a47df04773..c4220f51fcf3 100644
--- a/arch/arm/kernel/entry-armv.S
+++ b/arch/arm/kernel/entry-armv.S
@@ -427,7 +427,8 @@ ENDPROC(__fiq_abt)
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
index 271cb8a1eba1..fee279e28a72 100644
--- a/arch/arm/kernel/entry-common.S
+++ b/arch/arm/kernel/entry-common.S
@@ -50,7 +50,8 @@ __ret_fast_syscall:
  UNWIND(.cantunwind	)
 	disable_irq_notrace			@ disable interrupts
 	ldr	r2, [tsk, #TI_ADDR_LIMIT]
-	cmp	r2, #TASK_SIZE
+	ldr	r1, =TASK_SIZE
+	cmp	r2, r1
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]		@ re-check for syscall tracing
 	tst	r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
@@ -87,7 +88,8 @@ __ret_fast_syscall:
 #endif
 	disable_irq_notrace			@ disable interrupts
 	ldr	r2, [tsk, #TI_ADDR_LIMIT]
-	cmp	r2, #TASK_SIZE
+	ldr     r1, =TASK_SIZE
+	cmp     r2, r1
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]		@ re-check for syscall tracing
 	tst	r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
@@ -128,7 +130,8 @@ ret_slow_syscall:
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
index 628028bfbb92..46ee62d39f04 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -29,6 +29,7 @@
 #include <asm/traps.h>
 #include <asm/procinfo.h>
 #include <asm/memory.h>
+#include <asm/kasan_def.h>
 
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
@@ -1264,8 +1265,25 @@ static inline void prepare_page_table(void)
 	/*
 	 * Clear out all the mappings below the kernel image.
 	 */
+#ifdef CONFIG_KASAN
+	/*
+	 * KASan's shadow memory inserts itself between the TASK_SIZE
+	 * and MODULES_VADDR. Do not clear the KASan shadow memory mappings.
+	 */
+	for (addr = 0; addr < KASAN_SHADOW_START; addr += PMD_SIZE)
+		pmd_clear(pmd_off_k(addr));
+	/*
+	 * Skip over the KASan shadow area. KASAN_SHADOW_END is sometimes
+	 * equal to MODULES_VADDR and then we exit the pmd clearing. If we
+	 * are using a thumb-compiled kernel, there there will be 8MB more
+	 * to clear as KASan always offset to 16 MB below MODULES_VADDR.
+	 */
+	for (addr = KASAN_SHADOW_END; addr < MODULES_VADDR; addr += PMD_SIZE)
+		pmd_clear(pmd_off_k(addr));
+#else
 	for (addr = 0; addr < MODULES_VADDR; addr += PMD_SIZE)
 		pmd_clear(pmd_off_k(addr));
+#endif
 
 #ifdef CONFIG_XIP_KERNEL
 	/* The XIP kernel is mapped in the module area -- skip over it */
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
