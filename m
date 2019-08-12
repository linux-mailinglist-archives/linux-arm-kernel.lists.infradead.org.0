Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702898A14D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiLl4aGyCYxIFrbHvyEdzO941HK9UR7kqRmmRXejF6s=; b=opORhWBKidqxtz
	E98jtYlzUyFM4xm7KfxGc8+dKBFkd7Qq0lZvAybdhaiXRsTP7NgBGqvTQizbXbd2tyf3y8Nv5mov/
	53J3b26asaYyHjHnZPCFs2NYSO5gS+CqF7IctI6fe+FPVujzHOM4NiS3WOemVIkbUQhHwatFmsEfX
	vHRQk9/hJKbnRL/CbiWWsExszvxP00CjF4ukIBl/Q5ZaUyMTV4G3lwht6JMApRHgzzYF389bobxyQ
	hFdNVJJmZdes3Mo5dM+/+vQgm9yiBGwZhsqrI2znUhfYZgYRVh0Hk3vH8s/aVdLEmGyDpwaTKYT79
	oGxQZXXatqivDH7Hw1vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBSj-00051Y-OV; Mon, 12 Aug 2019 14:38:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBRC-0003pC-TK
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:36:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 731031715;
 Mon, 12 Aug 2019 07:36:42 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A4E33F718;
 Mon, 12 Aug 2019 07:36:40 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ard.Biesheuvel@arm.com
Subject: [PATCH v3 5/5] arm64: atomics: remove atomic_ll_sc compilation unit
Date: Mon, 12 Aug 2019 15:36:25 +0100
Message-Id: <20190812143625.42745-6-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190812143625.42745-1-andrew.murray@arm.com>
References: <20190812143625.42745-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_073643_291365_5582BA38 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We no longer fall back to out-of-line atomics on systems with
CONFIG_ARM64_LSE_ATOMICS where ARM64_HAS_LSE_ATOMICS is not set. Let's
remove the now unused compilation unit which provided these symbols.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/lib/Makefile       | 19 -------------------
 arch/arm64/lib/atomic_ll_sc.c |  3 ---
 2 files changed, 22 deletions(-)
 delete mode 100644 arch/arm64/lib/atomic_ll_sc.c

diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
index 33c2a4abda04..f10809ef1690 100644
--- a/arch/arm64/lib/Makefile
+++ b/arch/arm64/lib/Makefile
@@ -11,25 +11,6 @@ CFLAGS_REMOVE_xor-neon.o	+= -mgeneral-regs-only
 CFLAGS_xor-neon.o		+= -ffreestanding
 endif
 
-# Tell the compiler to treat all general purpose registers (with the
-# exception of the IP registers, which are already handled by the caller
-# in case of a PLT) as callee-saved, which allows for efficient runtime
-# patching of the bl instruction in the caller with an atomic instruction
-# when supported by the CPU. Result and argument registers are handled
-# correctly, based on the function prototype.
-lib-$(CONFIG_ARM64_LSE_ATOMICS) += atomic_ll_sc.o
-CFLAGS_atomic_ll_sc.o	:= -ffixed-x1 -ffixed-x2        		\
-		   -ffixed-x3 -ffixed-x4 -ffixed-x5 -ffixed-x6		\
-		   -ffixed-x7 -fcall-saved-x8 -fcall-saved-x9		\
-		   -fcall-saved-x10 -fcall-saved-x11 -fcall-saved-x12	\
-		   -fcall-saved-x13 -fcall-saved-x14 -fcall-saved-x15	\
-		   -fcall-saved-x18 -fomit-frame-pointer
-CFLAGS_REMOVE_atomic_ll_sc.o := $(CC_FLAGS_FTRACE)
-GCOV_PROFILE_atomic_ll_sc.o	:= n
-KASAN_SANITIZE_atomic_ll_sc.o	:= n
-KCOV_INSTRUMENT_atomic_ll_sc.o	:= n
-UBSAN_SANITIZE_atomic_ll_sc.o	:= n
-
 lib-$(CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE) += uaccess_flushcache.o
 
 obj-$(CONFIG_CRC32) += crc32.o
diff --git a/arch/arm64/lib/atomic_ll_sc.c b/arch/arm64/lib/atomic_ll_sc.c
deleted file mode 100644
index b0c538b0da28..000000000000
--- a/arch/arm64/lib/atomic_ll_sc.c
+++ /dev/null
@@ -1,3 +0,0 @@
-#include <asm/atomic.h>
-#define __ARM64_IN_ATOMIC_IMPL
-#include <asm/atomic_ll_sc.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
