Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BE922BA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 08:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWFC+y2HB18Qx5Qc8UbntbYmXGD946u2RRyLAn9/6lo=; b=A53pVYAp990gii
	dDKvTywFpUh2jWPWdpi0evJWppwKSCFiw0GxD+9k8jcqh/7pOU0O0n8TDtoJBEYA0VHG8SHkkQQ7i
	nO8D5ZpnZg5bRoO7NdU3owShtOlDtwUjwElA76Rgqg6xqcEhVxELujf4okEBbY5wgbhwjawg0bM6Q
	GbKMPAEt1la1FoD29DtdgRF824rFD/LdS08+ucoI2TYYRNGLkrwMMqjykBoVONDiGk5ghOZw+CXJK
	9zbvM5E48/ZUA1jTFq1D3ZRevLdi0xJdntrKk+qFhpq8bE+n/lOBhR87u3KNCtewrj7RV1KmKPwWc
	XAGk2KxcMCQlRSOW9RHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbMW-0001ek-FI; Mon, 20 May 2019 06:01:28 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbMH-0001T5-7v; Mon, 20 May 2019 06:01:13 +0000
From: Christoph Hellwig <hch@lst.de>
To: Oleg Nesterov <oleg@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 1/5] arm64: don't use asm-generic/ptrace.h
Date: Mon, 20 May 2019 08:00:14 +0200
Message-Id: <20190520060018.25569-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520060018.25569-1-hch@lst.de>
References: <20190520060018.25569-1-hch@lst.de>
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
Cc: linux-arch@vger.kernel.org, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Doing the indirection through macros for the regs accessors just
makes them harder to read, so implement the helpers directly.

Note that only the helpers actually used are implemented now.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/ptrace.h | 31 +++++++++++++++++++------------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index b2de32939ada..584261e00619 100644
--- a/arch/arm64/include/asm/ptrace.h
+++ b/arch/arm64/include/asm/ptrace.h
@@ -228,11 +228,12 @@ static inline void forget_syscall(struct pt_regs *regs)
 #define fast_interrupts_enabled(regs) \
 	(!((regs)->pstate & PSR_F_BIT))
 
-#define GET_USP(regs) \
-	(!compat_user_mode(regs) ? (regs)->sp : (regs)->compat_sp)
-
-#define SET_USP(ptregs, value) \
-	(!compat_user_mode(regs) ? ((regs)->sp = value) : ((regs)->compat_sp = value))
+static inline unsigned long user_stack_pointer(struct pt_regs *regs)
+{
+	if (compat_user_mode(regs))
+		return regs->compat_sp;
+	return regs->sp;
+}
 
 extern int regs_query_register_offset(const char *name);
 extern unsigned long regs_get_kernel_stack_nth(struct pt_regs *regs,
@@ -331,13 +332,20 @@ static inline unsigned long regs_get_kernel_argument(struct pt_regs *regs,
 struct task_struct;
 int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task);
 
-#define GET_IP(regs)		((unsigned long)(regs)->pc)
-#define SET_IP(regs, value)	((regs)->pc = ((u64) (value)))
-
-#define GET_FP(ptregs)		((unsigned long)(ptregs)->regs[29])
-#define SET_FP(ptregs, value)	((ptregs)->regs[29] = ((u64) (value)))
+static inline unsigned long instruction_pointer(struct pt_regs *regs)
+{
+	return regs->pc;
+}
+static inline void instruction_pointer_set(struct pt_regs *regs,
+		unsigned long val)
+{
+	regs->pc = val;
+}
 
-#include <asm-generic/ptrace.h>
+static inline unsigned long frame_pointer(struct pt_regs *regs)
+{
+	return regs->regs[29];
+}
 
 #define procedure_link_pointer(regs)	((regs)->regs[30])
 
@@ -347,7 +355,6 @@ static inline void procedure_link_pointer_set(struct pt_regs *regs,
 	procedure_link_pointer(regs) = val;
 }
 
-#undef profile_pc
 extern unsigned long profile_pc(struct pt_regs *regs);
 
 #endif /* __ASSEMBLY__ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
