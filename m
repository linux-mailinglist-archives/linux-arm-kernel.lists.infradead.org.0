Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31B3134B13
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:59:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8kqRzMChhcJxCEQc9sR1VsYDgM7Whkw4GMj+RO4EI+I=; b=toRKhaMQlbwSd4qwDt1ZbZzLmR
	6tN8j/jJ5vvz18dRWU/ImPzfMDG9SdQvDlt6JMvs+AyIgNOcu8YR5TqxGy9q53Wr2WL+3Lq5no0Wq
	A3U6+sKNqO+sxGxX561ru5wr3zK31E+jUBqNbF8pk+95H/Y1nz+iXSdusEzLuQmJ+zWNzuRp+bl5V
	HECZWO63CEroUOMFuVdo7CveoUe4ro6RU+p4IqxQHCZ+E/OPscRe8k31Dv2DTCKU/QtPZGUeNM9zb
	jZdb5+1O3sfJ2PBLhWKI9iKngTYNeRfZZu4vchAac+dr4P9PGu56fGUWwVY1PxnWJ0fi4N2DyGz25
	Xkwmjd/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGXc-0000a2-L3; Wed, 08 Jan 2020 18:58:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGVu-0007XU-To
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F931DA7;
 Wed,  8 Jan 2020 10:57:05 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0B7293F534;
 Wed,  8 Jan 2020 10:57:03 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 07/17] arm64: entry: convert error entry to C
Date: Wed,  8 Jan 2020 18:56:24 +0000
Message-Id: <20200108185634.1163-8-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105707_298106_F1C25C57 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, keescook@chromium.org, maz@kernel.org,
 broonie@kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 julien.thierry.kdev@gmail.com, alex.popov@linux.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Portions of our error entry logic are handled in C while other parts are
handled in assembly. Let's migrate the bulk of it to C so that it's
easier to follow and maintain.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/exception.h |  1 +
 arch/arm64/kernel/entry-common.c   | 26 ++++++++++++++++++++++++++
 arch/arm64/kernel/entry.S          | 19 ++++++-------------
 arch/arm64/kernel/traps.c          |  2 +-
 4 files changed, 34 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index a49038fa4faf..220a7c3971d8 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -51,5 +51,6 @@ void do_el0_svc(struct pt_regs *regs);
 void do_el0_svc_compat(struct pt_regs *regs);
 void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
 			    struct pt_regs *regs);
+void do_serror(struct pt_regs *regs, unsigned int esr);
 
 #endif	/* __ASM_EXCEPTION_H */
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index 45155d9f72da..bf9d497e620c 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -442,3 +442,29 @@ asmlinkage void notrace el0_irq_handler(struct pt_regs *regs)
 	trace_hardirqs_on();
 }
 NOKPROBE_SYMBOL(el0_irq_handler);
+
+asmlinkage void el1_error_handler(struct pt_regs *regs)
+{
+	unsigned long esr = read_sysreg(esr_el1);
+
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
+
+	local_daif_restore(DAIF_ERRCTX);
+	do_serror(regs, esr);
+}
+NOKPROBE_SYMBOL(el1_error_handler);
+
+asmlinkage void el0_error_handler(struct pt_regs *regs)
+{
+	unsigned long esr = read_sysreg(esr_el1);
+
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
+
+	user_exit_irqoff();
+	local_daif_restore(DAIF_ERRCTX);
+	do_serror(regs, esr);
+	local_daif_restore(DAIF_PROCCTX_NOIRQ);
+}
+NOKPROBE_SYMBOL(el0_error_handler);
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 55c4be1e996a..0c5117ef7c3c 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -559,7 +559,10 @@ ENDPROC(el0_irq_compat)
 
 el0_error_compat:
 	kernel_entry 0, 32
-	b	el0_error_naked
+	mov	x0, sp
+	bl	el0_error_handler
+	b	ret_to_user
+ENDPROC(el0_error_compat)
 #endif
 
 	.align	6
@@ -572,25 +575,15 @@ ENDPROC(el0_irq)
 
 el1_error:
 	kernel_entry 1
-	mrs	x1, esr_el1
-	gic_prio_kentry_setup tmp=x2
-	enable_dbg
 	mov	x0, sp
-	bl	do_serror
+	bl	el1_error_handler
 	kernel_exit 1
 ENDPROC(el1_error)
 
 el0_error:
 	kernel_entry 0
-el0_error_naked:
-	mrs	x25, esr_el1
-	gic_prio_kentry_setup tmp=x2
-	ct_user_exit_irqoff
-	enable_dbg
 	mov	x0, sp
-	mov	x1, x25
-	bl	do_serror
-	enable_da_f
+	bl	el0_error_handler
 	b	ret_to_user
 ENDPROC(el0_error)
 
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 73caf35c2262..170e637bb87b 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -901,7 +901,7 @@ bool arm64_is_fatal_ras_serror(struct pt_regs *regs, unsigned int esr)
 	}
 }
 
-asmlinkage void do_serror(struct pt_regs *regs, unsigned int esr)
+void do_serror(struct pt_regs *regs, unsigned int esr)
 {
 	const bool was_in_nmi = in_nmi();
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
