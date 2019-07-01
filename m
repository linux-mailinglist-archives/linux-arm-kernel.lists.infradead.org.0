Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C0910C45
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbz2o//QdCz0CYn4fhIy10aCs/3ruYnHFWuEuTQTZpU=; b=dtyM+SVzRLPS1b
	QVt6RPYshHN2KyKSwdlCBzrjZ16PB15PZeXPzQmFK6KaUfq0+KXPmzweg9tuVM9hwSQJMNp+I+s1V
	Gcr40UKXadw64pWB0QCcdzNnklaiBTWjHDvVPBqwMOY5YgOfrtYMvrbd3/UvfpR5CmZPFlgEV3NSQ
	6Q98HvXk7hmeTFLy8YpgxxbwslQRhZ043bKFM8AvElBe918HZvO0yaQQpKUuGrQADJMg8CC2L3MvR
	bXJVibX1HprRO+CTC4J05C1zeaFGB8PxaxBzz/xQnXBx9Tjq7mWUeTf1hFvNhYW0HAWyf6w+grAbC
	DUM9GSgceVOgIfVbMCyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtEG-0006uB-D2; Wed, 01 May 2019 17:41:12 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtDa-00061g-9E; Wed, 01 May 2019 17:40:30 +0000
From: Christoph Hellwig <hch@lst.de>
To: Oleg Nesterov <oleg@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 5/5] asm-generic: remove ptrace.h
Date: Wed,  1 May 2019 13:39:43 -0400
Message-Id: <20190501173943.5688-6-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501173943.5688-1-hch@lst.de>
References: <20190501173943.5688-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-arch@vger.kernel.org, linux-sh@vger.kernel.org, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No one is using this helper anymore.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 MAINTAINERS                    |  1 -
 arch/mips/include/asm/ptrace.h |  5 ---
 include/asm-generic/ptrace.h   | 74 ----------------------------------
 3 files changed, 80 deletions(-)
 delete mode 100644 include/asm-generic/ptrace.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 5c38f21aee78..0d44b2369f42 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12586,7 +12586,6 @@ F:	include/linux/regset.h
 F:	include/linux/tracehook.h
 F:	include/uapi/linux/ptrace.h
 F:	include/uapi/linux/ptrace.h
-F:	include/asm-generic/ptrace.h
 F:	kernel/ptrace.c
 F:	arch/*/ptrace*.c
 F:	arch/*/*/ptrace*.c
diff --git a/arch/mips/include/asm/ptrace.h b/arch/mips/include/asm/ptrace.h
index b6578611dddb..1e76774b36dd 100644
--- a/arch/mips/include/asm/ptrace.h
+++ b/arch/mips/include/asm/ptrace.h
@@ -56,11 +56,6 @@ static inline unsigned long kernel_stack_pointer(struct pt_regs *regs)
 	return regs->regs[31];
 }
 
-/*
- * Don't use asm-generic/ptrace.h it defines FP accessors that don't make
- * sense on MIPS.  We rather want an error if they get invoked.
- */
-
 static inline void instruction_pointer_set(struct pt_regs *regs,
                                            unsigned long val)
 {
diff --git a/include/asm-generic/ptrace.h b/include/asm-generic/ptrace.h
deleted file mode 100644
index 82e674f6b337..000000000000
--- a/include/asm-generic/ptrace.h
+++ /dev/null
@@ -1,74 +0,0 @@
-/*
- * Common low level (register) ptrace helpers
- *
- * Copyright 2004-2011 Analog Devices Inc.
- *
- * Licensed under the GPL-2 or later.
- */
-
-#ifndef __ASM_GENERIC_PTRACE_H__
-#define __ASM_GENERIC_PTRACE_H__
-
-#ifndef __ASSEMBLY__
-
-/* Helpers for working with the instruction pointer */
-#ifndef GET_IP
-#define GET_IP(regs) ((regs)->pc)
-#endif
-#ifndef SET_IP
-#define SET_IP(regs, val) (GET_IP(regs) = (val))
-#endif
-
-static inline unsigned long instruction_pointer(struct pt_regs *regs)
-{
-	return GET_IP(regs);
-}
-static inline void instruction_pointer_set(struct pt_regs *regs,
-                                           unsigned long val)
-{
-	SET_IP(regs, val);
-}
-
-#ifndef profile_pc
-#define profile_pc(regs) instruction_pointer(regs)
-#endif
-
-/* Helpers for working with the user stack pointer */
-#ifndef GET_USP
-#define GET_USP(regs) ((regs)->usp)
-#endif
-#ifndef SET_USP
-#define SET_USP(regs, val) (GET_USP(regs) = (val))
-#endif
-
-static inline unsigned long user_stack_pointer(struct pt_regs *regs)
-{
-	return GET_USP(regs);
-}
-static inline void user_stack_pointer_set(struct pt_regs *regs,
-                                          unsigned long val)
-{
-	SET_USP(regs, val);
-}
-
-/* Helpers for working with the frame pointer */
-#ifndef GET_FP
-#define GET_FP(regs) ((regs)->fp)
-#endif
-#ifndef SET_FP
-#define SET_FP(regs, val) (GET_FP(regs) = (val))
-#endif
-
-static inline unsigned long frame_pointer(struct pt_regs *regs)
-{
-	return GET_FP(regs);
-}
-static inline void frame_pointer_set(struct pt_regs *regs,
-                                     unsigned long val)
-{
-	SET_FP(regs, val);
-}
-
-#endif /* __ASSEMBLY__ */
-
-#endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
