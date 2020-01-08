Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8A4134B09
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QHQ+ZgrPJ5u6FaJ00jUh15UoI68FrC23SqJ84WRn2kQ=; b=L8daHkb7MBXhvzJBOV6zAREbXz
	E6ECAoto0STIiUusOauhjtoNwQxxT57VaBD9tuDSzLRMpb+zx9o8n95qWYMYiuCkS5cc4AYJzhX4l
	1PJDYIQ/2T+gh/EIo5AgfuPCoFMmMToo1gxPwSWNWD7nTAX0QClzEHLblxuPtSXd+H+y2W+QjAsDc
	5BEhgDY4bIEW5eSVf4xCoCUigY1yjowdSM49KsB/0NlVLKNMU5MftdjMrgda4XgjYw8Cv2EixO2En
	HGwJDQzBP2a6Fx4ToeFm5GUqer/fcmRci5Kmlpsazs1y3nwk225oG+aZmbu6XWfF6V7qHPDh8j+oj
	CjLac1PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGWV-0007s2-H4; Wed, 08 Jan 2020 18:57:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGVj-0007Jw-FI
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:56:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B84D01FB;
 Wed,  8 Jan 2020 10:56:54 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 347753F534;
 Wed,  8 Jan 2020 10:56:53 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 02/17] arm64: entry: cleanup el0 svc handler naming
Date: Wed,  8 Jan 2020 18:56:19 +0000
Message-Id: <20200108185634.1163-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105655_574682_245D6BD3 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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

For most of the exception entry code, <foo>_handler() is the first C
function called from the entry assembly in entry-common.c, and external
functions handling the bulk of the logic are called do_<foo>().

For consistency, apply this scheme to el0_svc_handler and
el0_svc_compat_hander, renaming them to do_el0_svc and do_el0_svc_compat
respectively.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/exception.h | 4 ++--
 arch/arm64/kernel/entry-common.c   | 4 ++--
 arch/arm64/kernel/syscall.c        | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index 4d5f3b5f50cd..b87c6e276ab1 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -45,8 +45,8 @@ void do_sysinstr(unsigned int esr, struct pt_regs *regs);
 void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
 void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr);
 void do_cp15instr(unsigned int esr, struct pt_regs *regs);
-void el0_svc_handler(struct pt_regs *regs);
-void el0_svc_compat_handler(struct pt_regs *regs);
+void do_el0_svc(struct pt_regs *regs);
+void do_el0_svc_compat(struct pt_regs *regs);
 void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
 			    struct pt_regs *regs);
 
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index 67198142a0fc..fde59981445c 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -215,7 +215,7 @@ static void notrace el0_svc(struct pt_regs *regs)
 	if (system_uses_irq_prio_masking())
 		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
 
-	el0_svc_handler(regs);
+	do_el0_svc(regs);
 }
 NOKPROBE_SYMBOL(el0_svc);
 
@@ -281,7 +281,7 @@ static void notrace el0_svc_compat(struct pt_regs *regs)
 	if (system_uses_irq_prio_masking())
 		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
 
-	el0_svc_compat_handler(regs);
+	do_el0_svc_compat(regs);
 }
 NOKPROBE_SYMBOL(el0_svc_compat);
 
diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
index 9a9d98a443fc..a12c0c88d345 100644
--- a/arch/arm64/kernel/syscall.c
+++ b/arch/arm64/kernel/syscall.c
@@ -154,14 +154,14 @@ static inline void sve_user_discard(void)
 	sve_user_disable();
 }
 
-void el0_svc_handler(struct pt_regs *regs)
+void do_el0_svc(struct pt_regs *regs)
 {
 	sve_user_discard();
 	el0_svc_common(regs, regs->regs[8], __NR_syscalls, sys_call_table);
 }
 
 #ifdef CONFIG_COMPAT
-void el0_svc_compat_handler(struct pt_regs *regs)
+void do_el0_svc_compat(struct pt_regs *regs)
 {
 	el0_svc_common(regs, regs->regs[7], __NR_compat_syscalls,
 		       compat_sys_call_table);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
