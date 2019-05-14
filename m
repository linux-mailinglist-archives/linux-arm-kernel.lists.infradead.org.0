Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 239AC1CF5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XTtKhGnnePa4SWS4tXlAj5a3W7SjhJ2FMvqWYkaiy3s=; b=LQYW5toscp4BSt
	roJq85mGhZNVAigmPFA7F1Thtkzb60SeYtyH56hYCsydoZyBpy7VeFTXCdqpzLdguz/XvUU6eNz3x
	071+ZvIOg6qnByBnFJohsKnSD0dwOLmtlC46DfiDB7p/GsaTAiVWbVoWsyMquImUfUj3LrFEWTKie
	cr3jNCNYHKQKOR58All6qVKizgCx7U9LHaKrSE9FspstybbakPol07GLD161HrJNRGbay0NOP9vmA
	fx279xj++Y1RkEyPvr+mGnuCQ716TWxbsC9jhzcYy/hkdFoWO8jNQuTCh0g0gwsBwR2y4dUEMZdsY
	p2GyOgQOwnbGfb1kVpdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcU4-0002fb-1Y; Tue, 14 May 2019 18:49:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcTv-0002fE-Pi
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 18:48:57 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6FBD20879;
 Tue, 14 May 2019 18:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557859735;
 bh=gCxGmf7+mS/kC1PPcPWFXipWebBHHMfGSduse5vjzMk=;
 h=Subject:To:Cc:From:Date:From;
 b=QVPsjG1iGW6FD7ycqYB4AlkZ6qrIwlJbT8PdqyPoGX2VEbNePR43qb5cFqCCNF4a/
 3pnLe6bRdvRtml5hH54szkpKYehKHGhiI4Gnc7vB0KkdRUJGbavUD6ppK704w0cfkv
 /O21y7SqCO0fSHW4CftPm+ZlqHtUSzXWSzuj+OCI=
Subject: Patch "locking/atomics,
 asm-generic: Move some macros from <linux/bitops.h> to a new
 <linux/bits.h> file" has been added to the 4.4-stable tree
To: 1529412794-17720-4-git-send-email-will.deacon@arm.com, ben@decadent.org.uk,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 mingo@kernel.org, peterz@infradead.org, tglx@linutronix.de,
 torvalds@linux-foundation.org, will.deacon@arm.com,
 yamada.masahiro@socionext.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 14 May 2019 20:30:35 +0200
Message-ID: <1557858635146173@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_114855_871801_824CA9A2 
X-CRM114-Status: GOOD (  13.59  )
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

    locking/atomics, asm-generic: Move some macros from <linux/bitops.h> to a new <linux/bits.h> file

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     locking-atomics-asm-generic-move-some-macros-from-linux-bitops.h-to-a-new-linux-bits.h-file.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue 14 May 2019 08:29:35 PM CEST
From: Will Deacon <will.deacon@arm.com>
Date: Tue, 19 Jun 2018 13:53:08 +0100
Subject: locking/atomics, asm-generic: Move some macros from <linux/bitops.h> to a new <linux/bits.h> file

From: Will Deacon <will.deacon@arm.com>

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
 include/linux/bitops.h |   22 +---------------------
 include/linux/bits.h   |   26 ++++++++++++++++++++++++++
 2 files changed, 27 insertions(+), 21 deletions(-)
 create mode 100644 include/linux/bits.h

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


Patches currently in stable-queue which might be from will.deacon@arm.com are

queue-4.4/cpu-speculation-add-mitigations-cmdline-option.patch
queue-4.4/trace-fix-preempt_enable_no_resched-abuse.patch
queue-4.4/locking-atomics-asm-generic-move-some-macros-from-linux-bitops.h-to-a-new-linux-bits.h-file.patch
queue-4.4/x86-speculation-support-mitigations-cmdline-option.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
