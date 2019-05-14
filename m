Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF27F1CD6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wjpzGh6JfdfVo1l35Lb++W8kKXqjZnOlJM/PCJjo2b8=; b=uoTyq8Qh6hyTrE
	0onrc+mvoQOeW20ir0PFpknUG3EBwxEuVoOTYvvvCwSA4jVGFdPk1fbI9mfmN3hySPfoD88uXbJrX
	eKJXFgy0iZG1ukOGGcxd6MLT0C8e1qgz0XDZyR53Qv2YYj9eVIUVGjWjJ5X4imZ9OQAwb5gMR/R7N
	9wC4CCIJ7hBh5x+lVifOLxuWxONg/FP363PlN26G2aca+Bj4oyjvxRbqRkkG+u2sgveSA6FxMt5E8
	S58RsokP4WG7O/EWoSidHl5pvK7RV9v2Yg9riw7a/Ea5TKe4fjybE6ikG32guWtSyDm+2jz+ZmVD0
	KXAtpPilkRXlsabHwNCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQasN-0000zG-Ku; Tue, 14 May 2019 17:06:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQasG-0000ys-BR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:05:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA8562084A;
 Tue, 14 May 2019 17:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557853555;
 bh=Mhv//pa3tZvwm+/u7/oWrEM/PvlutdD9x2clg6WnAeY=;
 h=Subject:To:Cc:From:Date:From;
 b=WYNzbVJpZBokbD/nyQgUjt/9W15PxmiiWYF48qUvKtu47lsQ+/ZTn+AdkxL4YjYCB
 BV8LU1a0V0WXZucSUF70uHRQdEh+q6eALy7IDhv6avzJIFtTT9CkufQ1Cw4Z+jgmog
 Jxu0tiI8Xnz4c9eR1l85HHnOoEk4t19+u0LRIfA0=
Subject: Patch "[PATCH 14/76] locking/atomics,
 asm-generic: Move some macros from" has been added to the 4.9-stable
 tree
To: 1529412794-17720-4-git-send-email-will.deacon@arm.com, ben@decadent.org.uk,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 mingo@kernel.org, peterz@infradead.org, tglx@linutronix.de,
 torvalds@linux-foundation.org, will.deacon@arm.com,
 yamada.masahiro@socionext.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 14 May 2019 19:05:43 +0200
Message-ID: <155785354312066@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_100556_431366_45B6B499 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    [PATCH 14/76] locking/atomics, asm-generic: Move some macros from

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     0014-locking-atomics-asm-generic-Move-some-macros-from-li.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From fa7ae5037fe9d229fa729d28e753fc78d60959ae Mon Sep 17 00:00:00 2001
From: Will Deacon <will.deacon@arm.com>
Date: Tue, 19 Jun 2018 13:53:08 +0100
Subject: [PATCH 14/76] locking/atomics, asm-generic: Move some macros from
 <linux/bitops.h> to a new <linux/bits.h> file

commit 8bd9cb51daac89337295b6f037b0486911e1b408 upstream.

In preparation for implementing the asm-generic atomic bitops in terms
of atomic_long_*(), we need to prevent <asm/atomic.h> implementations from
pulling in <linux/bitops.h>. A common reason for this include is for the
BITS_PER_BYTE definition, so move this and some other BIT() and masking
macros into a new header file, <linux/bits.h>.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: yamada.masahiro@socionext.com
Link: https://lore.kernel.org/lkml/1529412794-17720-4-git-send-email-will.deacon@arm.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Ben Hutchings <ben@decadent.org.uk>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 include/linux/bitops.h | 22 +---------------------
 include/linux/bits.h   | 26 ++++++++++++++++++++++++++
 2 files changed, 27 insertions(+), 21 deletions(-)
 create mode 100644 include/linux/bits.h

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 8fbe259b197c..d4b167fc9ecb 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -1,29 +1,9 @@
 #ifndef _LINUX_BITOPS_H
 #define _LINUX_BITOPS_H
 #include <asm/types.h>
+#include <linux/bits.h>
 
-#ifdef	__KERNEL__
-#define BIT(nr)			(1UL << (nr))
-#define BIT_ULL(nr)		(1ULL << (nr))
-#define BIT_MASK(nr)		(1UL << ((nr) % BITS_PER_LONG))
-#define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
-#define BIT_ULL_MASK(nr)	(1ULL << ((nr) % BITS_PER_LONG_LONG))
-#define BIT_ULL_WORD(nr)	((nr) / BITS_PER_LONG_LONG)
-#define BITS_PER_BYTE		8
 #define BITS_TO_LONGS(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(long))
-#endif
-
-/*
- * Create a contiguous bitmask starting at bit position @l and ending at
- * position @h. For example
- * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
- */
-#define GENMASK(h, l) \
-	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
-
-#define GENMASK_ULL(h, l) \
-	(((~0ULL) - (1ULL << (l)) + 1) & \
-	 (~0ULL >> (BITS_PER_LONG_LONG - 1 - (h))))
 
 extern unsigned int __sw_hweight8(unsigned int w);
 extern unsigned int __sw_hweight16(unsigned int w);
diff --git a/include/linux/bits.h b/include/linux/bits.h
new file mode 100644
index 000000000000..2b7b532c1d51
--- /dev/null
+++ b/include/linux/bits.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_BITS_H
+#define __LINUX_BITS_H
+#include <asm/bitsperlong.h>
+
+#define BIT(nr)			(1UL << (nr))
+#define BIT_ULL(nr)		(1ULL << (nr))
+#define BIT_MASK(nr)		(1UL << ((nr) % BITS_PER_LONG))
+#define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
+#define BIT_ULL_MASK(nr)	(1ULL << ((nr) % BITS_PER_LONG_LONG))
+#define BIT_ULL_WORD(nr)	((nr) / BITS_PER_LONG_LONG)
+#define BITS_PER_BYTE		8
+
+/*
+ * Create a contiguous bitmask starting at bit position @l and ending at
+ * position @h. For example
+ * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
+ */
+#define GENMASK(h, l) \
+	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
+
+#define GENMASK_ULL(h, l) \
+	(((~0ULL) - (1ULL << (l)) + 1) & \
+	 (~0ULL >> (BITS_PER_LONG_LONG - 1 - (h))))
+
+#endif	/* __LINUX_BITS_H */
-- 
2.21.0



Patches currently in stable-queue which might be from will.deacon@arm.com are

queue-4.9/0069-cpu-speculation-Add-mitigations-cmdline-option.patch
queue-4.9/0014-locking-atomics-asm-generic-Move-some-macros-from-li.patch
queue-4.9/0070-x86-speculation-Support-mitigations-cmdline-option.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
