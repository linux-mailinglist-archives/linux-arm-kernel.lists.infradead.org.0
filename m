Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E886A20BAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:55:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGzRBVG5JvAtccDuDt8YMJTNCuZEhb2Ja2g81X2Xeuk=; b=eyx2cYsSjW+RY3
	4jz2MYcP9QXHSO8TpGvEB7QfJLYr4isvvV2GzMtq1KPjeP34jlUoBwExRd91/QYMUEg7onHBR/fXs
	O/o8n4xjuc7qNKiuLUAEO+zOn0uD68oGzYU2+RkVrO3YmVY36ot0Cx65blJ3juom9R84n8pp5bMKj
	CoiZ/PwQJWK5/LloPsXLPgqjyErSOgz2fBi6b69CmTJCGthsui0Qwpz4KE/UbEbFN9arnL7NPO4vG
	1SbIviYP9RY320tKHY+Ws6iv/QHXQz3/Pvn5UWRIb5ixxWT4XWAPQXLZ3g6PqdJios8EKxpVR7uKq
	qh7pDAisr3589TtYTD7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIiq-0000OQ-HX; Thu, 16 May 2019 15:55:08 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIhl-0007gY-Nf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:54:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DC3D1A25;
 Thu, 16 May 2019 08:54:01 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 211DB3F71E;
 Thu, 16 May 2019 08:53:59 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ard.Biesheuvel@arm.com
Subject: [PATCH v1 5/5] arm64: atomics: remove atomic_ll_sc compilation unit
Date: Thu, 16 May 2019 16:53:44 +0100
Message-Id: <20190516155344.24060-6-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190516155344.24060-1-andrew.murray@arm.com>
References: <20190516155344.24060-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_085402_391923_7A3CC1A6 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Boqun Feng <boqun.feng@gmail.com>, linux-arm-kernel@lists.infradead.org
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
index 5540a1638baf..f10809ef1690 100644
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
-CFLAGS_REMOVE_atomic_ll_sc.o := -pg
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
