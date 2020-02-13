Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1848E15B795
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hSzeRIyieF1C3t2BsAG5Nn6Zr2jICCcNeQVjjLL3TI0=; b=uoe4LvHg/FudEfBe7JCJnEt3nO
	Q5oC5z5iymsZpmYniAXjn2plweHTNYTU6JPBy8YNJyaZv+m87Nnyo6c0fOZj6KL+UBhclpb/jA25w
	abvy+pcCu65YadlIYyVv0Tx1MJC0u4e+Xff8lyi6FKQuf1X+zLrpJFHVA9dNm1HFzkZjpHNO791S9
	552yBTzMeazkP5EQNZH0KLN/Ai5wBa/DhRRVy0F45sjJVno4ycYR+QA8/7l7nRR8yTZk1dDnxdItV
	dqmdVbDypNcffUDriIKI5hUCBB4ksfl/odv/oSvUW5nM7GKW4n+hgqGkug0x71wkL7qP1RMxx7TVJ
	D/ZKhVPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24vE-0000E2-Fe; Thu, 13 Feb 2020 03:12:12 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24uh-0008Gx-Sn
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 03:11:42 +0000
Received: by mail-oi1-x242.google.com with SMTP id d62so4296369oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 19:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8yL7iUZLlDcWI/hz8OXwlSrnW+RQAzQUw/NYymBX6Xg=;
 b=g5LdkQicWog5B/IhutWPsbAlMBNOVtHT+iHIggE1NmzAkvGYMo3XVtvDzMbvcclAQx
 HOzLo6ocZ40bWeLZwDMdsITnH6K5hq98fNPzsrucQPhIHZ8gHH9nnTkO2GPuXfoTZHOU
 ATUVfqfevRboK+XDtxQ04FrHy0dhMwY1aV/wsVo2TcOmVKU8phUlMyXavaxtNRSbu1vr
 orMRFwi/oE9JgXLqtRVPDR669S7sICwgwS3lB95DReN4nbBWYG9A44HWsHWEVOdNsxHG
 sODipyUDZgthIOc4Deiama0Rn30E0VJtFz6KJ3hm/Qnx75ZQu9X7RQv8FqQUrd4oyzzo
 XORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references;
 bh=8yL7iUZLlDcWI/hz8OXwlSrnW+RQAzQUw/NYymBX6Xg=;
 b=LcQsAy1th8IK//QJ9cm4HflbycvcxUUo417tSAnnQzbHiDwnIQ1BuDqTdxpVpfKaCt
 cZ2EHCxIGFVCOAFG07fgZgjGoJH2bOFyICPq0h/1Fc/sDmXymsLZRBA8tpbizP35ThhK
 S0vJZm3HNoLzVLGRrHdDIGPLJ/DbZeIEILOsb1YB3V+IXCx/77zs0k601Djj+MLkQyHp
 csEqbjpEE6Y1AA2sW4qCr9DmjObHfDo03ZZ/hB0bukKbNXZjvkd2dSr3XkWlDDlLUdsA
 USduBgWlK8IQCul/c6ehVmninu5xt+ouB0PO8dJhD679C/RhYYhvQejUsVW+S/MIwlFT
 GifQ==
X-Gm-Message-State: APjAAAWnLjUp+v2so5/5uibFIywAcpegywtfLmday8+8gFNIlICCbL9I
 HYX7IyJwl0X8irOsgFZA5g==
X-Google-Smtp-Source: APXvYqwlCkCidibdWZXqORr5Z1LDxXrg1K9Z9Te7n583TI937al7BnaO+AEgibCe5jg2r6ePg2hMkQ==
X-Received: by 2002:aca:6542:: with SMTP id j2mr1569376oiw.69.1581563497381;
 Wed, 12 Feb 2020 19:11:37 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id n25sm317517oic.6.2020.02.12.19.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 19:11:36 -0800 (PST)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e166:6491:dd75:4196])
 by serve.minyard.net (Postfix) with ESMTPA id 779C9180054;
 Thu, 13 Feb 2020 03:11:36 +0000 (UTC)
From: minyard@acm.org
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 1/2] arm64: Pass registers to all single-step handling
 routines
Date: Wed, 12 Feb 2020 21:11:30 -0600
Message-Id: <20200213031131.13255-2-minyard@acm.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213031131.13255-1-minyard@acm.org>
References: <20200213031131.13255-1-minyard@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_191139_927402_AA75AA3E 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Corey Minyard <cminyard@mvista.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Corey Minyard <cminyard@mvista.com>

Get ready to set the SS bit in the MDSCR register in the kernel restore
handler.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 arch/arm64/include/asm/debug-monitors.h | 4 ++--
 arch/arm64/kernel/debug-monitors.c      | 4 ++--
 arch/arm64/kernel/hw_breakpoint.c       | 6 +++---
 arch/arm64/kernel/kgdb.c                | 6 +++---
 arch/arm64/kernel/probes/kprobes.c      | 4 ++--
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
index 7619f473155f..73ce974bf754 100644
--- a/arch/arm64/include/asm/debug-monitors.h
+++ b/arch/arm64/include/asm/debug-monitors.h
@@ -111,8 +111,8 @@ void user_rewind_single_step(struct task_struct *task);
 void user_fastforward_single_step(struct task_struct *task);
 
 void kernel_enable_single_step(struct pt_regs *regs);
-void kernel_disable_single_step(void);
-int kernel_active_single_step(void);
+void kernel_disable_single_step(struct pt_regs *regs);
+int kernel_active_single_step(struct pt_regs *regs);
 
 #ifdef CONFIG_HAVE_HW_BREAKPOINT
 int reinstall_suspended_bps(struct pt_regs *regs);
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 48222a4760c2..2a0dfd8b1265 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -414,7 +414,7 @@ void kernel_enable_single_step(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(kernel_enable_single_step);
 
-void kernel_disable_single_step(void)
+void kernel_disable_single_step(struct pt_regs *regs)
 {
 	WARN_ON(!irqs_disabled());
 	mdscr_write(mdscr_read() & ~DBG_MDSCR_SS);
@@ -422,7 +422,7 @@ void kernel_disable_single_step(void)
 }
 NOKPROBE_SYMBOL(kernel_disable_single_step);
 
-int kernel_active_single_step(void)
+int kernel_active_single_step(struct pt_regs *regs)
 {
 	WARN_ON(!irqs_disabled());
 	return mdscr_read() & DBG_MDSCR_SS;
diff --git a/arch/arm64/kernel/hw_breakpoint.c b/arch/arm64/kernel/hw_breakpoint.c
index 0b727edf4104..785c9a5060a6 100644
--- a/arch/arm64/kernel/hw_breakpoint.c
+++ b/arch/arm64/kernel/hw_breakpoint.c
@@ -682,7 +682,7 @@ static int breakpoint_handler(unsigned long unused, unsigned int esr,
 		if (*kernel_step != ARM_KERNEL_STEP_NONE)
 			return 0;
 
-		if (kernel_active_single_step()) {
+		if (kernel_active_single_step(regs)) {
 			*kernel_step = ARM_KERNEL_STEP_SUSPEND;
 		} else {
 			*kernel_step = ARM_KERNEL_STEP_ACTIVE;
@@ -825,7 +825,7 @@ static int watchpoint_handler(unsigned long addr, unsigned int esr,
 		if (*kernel_step != ARM_KERNEL_STEP_NONE)
 			return 0;
 
-		if (kernel_active_single_step()) {
+		if (kernel_active_single_step(regs)) {
 			*kernel_step = ARM_KERNEL_STEP_SUSPEND;
 		} else {
 			*kernel_step = ARM_KERNEL_STEP_ACTIVE;
@@ -882,7 +882,7 @@ int reinstall_suspended_bps(struct pt_regs *regs)
 			toggle_bp_registers(AARCH64_DBG_REG_WCR, DBG_ACTIVE_EL0, 1);
 
 		if (*kernel_step != ARM_KERNEL_STEP_SUSPEND) {
-			kernel_disable_single_step();
+			kernel_disable_single_step(regs);
 			handled_exception = 1;
 		} else {
 			handled_exception = 0;
diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
index 43119922341f..220fe8fd6ace 100644
--- a/arch/arm64/kernel/kgdb.c
+++ b/arch/arm64/kernel/kgdb.c
@@ -200,8 +200,8 @@ int kgdb_arch_handle_exception(int exception_vector, int signo,
 		/*
 		 * Received continue command, disable single step
 		 */
-		if (kernel_active_single_step())
-			kernel_disable_single_step();
+		if (kernel_active_single_step(linux_regs))
+			kernel_disable_single_step(linux_regs);
 
 		err = 0;
 		break;
@@ -221,7 +221,7 @@ int kgdb_arch_handle_exception(int exception_vector, int signo,
 		/*
 		 * Enable single step handling
 		 */
-		if (!kernel_active_single_step())
+		if (!kernel_active_single_step(linux_regs))
 			kernel_enable_single_step(linux_regs);
 		err = 0;
 		break;
diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index d1c95dcf1d78..3082dfc3cd99 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -308,7 +308,7 @@ int __kprobes kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr)
 		if (!instruction_pointer(regs))
 			BUG();
 
-		kernel_disable_single_step();
+		kernel_disable_single_step(regs);
 
 		if (kcb->kprobe_status == KPROBE_REENTER)
 			restore_previous_kprobe(kcb);
@@ -415,7 +415,7 @@ kprobe_single_step_handler(struct pt_regs *regs, unsigned int esr)
 
 	if (retval == DBG_HOOK_HANDLED) {
 		kprobes_restore_local_irqflag(kcb, regs);
-		kernel_disable_single_step();
+		kernel_disable_single_step(regs);
 
 		post_kprobe_handler(kcb, regs);
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
