Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE44C10C2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlsafOiSOjsN3TaTv4Tq9WouA9bDGBAman7yq0o8f1o=; b=qxO0UynrFyjmNX
	v6oWHLPfMTJVyiNGFg4HTbF8Blc5fLrfM14kR1ABy3128aoi004SbcneGfLGFbAOmApgJwi3gwU8n
	ub5ZX6evolF1WHs3s9DKeXSSR9l0jbL5Oj+qbmlM/vVS7BBF6YXqHiFvlp5x+/Pm8JS4itTJhnaZn
	GiNGonmVdUAwGdXZhL7kRV+rR36kWx+Tat86NgbA6LNnBusow3ca0KqHJHkFXE0FiD/StpP0qL+zL
	kkU03Sl7j5V3klhQ+QR5GWiN24BH9j8ycEorFEDMB2Dg4rUdH+lvmpHBJJzuxXAOd2ahvRajpEp6B
	qcqOjY/QbrNSIpTjBMEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtDf-0005zB-Fy; Wed, 01 May 2019 17:40:35 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtDS-0005tm-QA; Wed, 01 May 2019 17:40:23 +0000
From: Christoph Hellwig <hch@lst.de>
To: Oleg Nesterov <oleg@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 1/5] arm64: don't use asm-generic/ptrace.h
Date: Wed,  1 May 2019 13:39:39 -0400
Message-Id: <20190501173943.5688-2-hch@lst.de>
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

Doing the indirection through macros for the regs accessors just
makes them harder to read, so implement the helpers directly.

Note that only the helpers actually used are implemented now.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm64/include/asm/ptrace.h | 31 +++++++++++++++++++------------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index ec60174c8c18..55c1fb25cf32 100644
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
@@ -309,13 +310,20 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
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
 
@@ -325,7 +333,6 @@ static inline void procedure_link_pointer_set(struct pt_regs *regs,
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
