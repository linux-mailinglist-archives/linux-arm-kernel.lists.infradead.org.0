Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98CBA1FE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xtWDKcIcuCg1Tk/faMqiUz2sA9KjPTrvInWaFuO4hNY=; b=ACDMpMZHN+RFc0xAMIYLRfRdZY
	qtE8OnBI7Yuuz4aZdLiuUaYXnTyUmmD7pf6hPZjRn+GB32oOu0Kr+rKdLs608wn9mr7fTl/9/yG2z
	qba+3O2vt+LkTJjuqJ4hR+bDm5ooJKZs4fuaZ/qZQzRD3Hk4TDhThrLA24NssrxgkgIZCzi3qWcAF
	RU1oq7LlYabpnPbddQgpAJVc8jbC5I0SQ07IEH9LGPFWGnAoxhlBZQB6tBS+TAl1XkY/qyxAnTfAw
	yHQTzLrEE3ZWl8gWd+sNFiLndGxV8/5wf2e6fYCJCi6E8tm6198g9Igui3Vp1YqRm/l+QflLYvWYj
	A+CqkxaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Mi4-0004PA-0c; Thu, 29 Aug 2019 15:51:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfJ-0001cD-Sg
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9855815BE;
 Thu, 29 Aug 2019 08:48:49 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 447903F718;
 Thu, 29 Aug 2019 08:48:48 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 05/10] arm64: atomics: Remove atomic_ll_sc compilation unit
Date: Thu, 29 Aug 2019 16:48:29 +0100
Message-Id: <20190829154834.26547-6-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190829154834.26547-1-will@kernel.org>
References: <20190829154834.26547-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084850_042972_CE53D825 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, robin.murphy@arm.com, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, natechancellor@gmail.com, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

We no longer fall back to out-of-line atomics on systems with
CONFIG_ARM64_LSE_ATOMICS where ARM64_HAS_LSE_ATOMICS is not set.

Remove the unused compilation unit which provided these symbols.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
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
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
