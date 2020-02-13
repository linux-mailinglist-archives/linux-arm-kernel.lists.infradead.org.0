Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F5E15B794
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:12:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PfYRFGQUkcvcMSFd6rrcvCpXfqqOYJlCxbPZiuBE8GA=; b=NekFmw4L+PwKQuv7eLpLJemoox
	Rqylsa28u7UOZ4scbRvJkyRBd8fgC6HU6ynHDrVLCpRefkQvB7OnBVlJSE2b1l6pGy0B9Ww4VPwhb
	bleX2qUihl+IWbsxWBpotY1MFAIzeQPGaC2gQ7Ki5m47oW8P7F2jSSSawyuBxcJtnYLkAiW88HK3p
	rD7RlA6P/UW0wxReUpeGZCKxIPNldwofkJbboaC3PzkBPRPG+p+Ap1nZ6P91oB1TZwfKBiXivyob2
	YhMCVscLBbLE3U6p3SCpSRc2gp7nA+smuEO8MrhQ8ek8NGHbvpmr0PqAUpNBm5qKraGQEbivSrClC
	0dOjGRdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24v1-0008QX-9A; Thu, 13 Feb 2020 03:11:59 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24uh-0008Gy-KL
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 03:11:41 +0000
Received: by mail-oi1-x243.google.com with SMTP id d62so4296381oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 19:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KJ1cbKxSOkkJkYmSO9MG9FaSPDVN9iwyOwbghCa/jtg=;
 b=oXBOKXpcItHfv4s3EsQVQteHfurtrQ6mrHee+WEyMt4RcFVZVzPrAM2IX5iVcqFHDF
 ggdFJebWJo4tS2fy1u82DGyu7AW2TuLpNKof9ZOh+RUhr2PO+KyLj1GVBY1UnnsPyHRT
 YmEVVRfl9Rsmj/Onq2+50dIBVXupdYVBaKcQfnJB0mtWRvPldzjzG5igdgrzDZO7eteP
 WZIV1dnrzILifztrU0tTKRnvkkONqpZGXdz2gql0XUkvgan+ZFcn7L9ijKNR2Y8FoAIT
 DGJIRLbALOyvLyW0pR1HZR4RDhMoLNJa7uNVOX5PiUGthjljSuDbCVmYjra+DUQkhj84
 VxDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references;
 bh=KJ1cbKxSOkkJkYmSO9MG9FaSPDVN9iwyOwbghCa/jtg=;
 b=DhaShuKl1ZdBGG5D5AlApHFx/uMdiOmDVon7x4udwkVhpcm4jL0QJUXLMjQIUSMgiF
 b0h1zWhosfWVh5ZYNy/f8ttsEVBhQif2j1/saEYoeb9GP3D75f5i4fauxsYQW+PnuG8K
 8fVgek7mb5F7tyt+py2S9WFonQbFDo6GzqJCamBQR92yEoBAiWnbK7wQFDmlYqQKBzmk
 UzctA7WuYb9oS47hQndRVfya7zc7OFN4PL4ZGjFuX1YvHUaeqqSpZq4LP+V+5FRZ7vnP
 Aw7oder4aodTo44H5B2zw9AuEcOZB8CQ2kImGJKuduezrtVadgT7E5u0FlebCT0VG/Zp
 y3bg==
X-Gm-Message-State: APjAAAWN46NohvHHxBO2osFa3s4XSc90M55oMpdZ4jcE/JW+9hip1OO7
 wLhg7iHvkOtXxHWqVhpkHw==
X-Google-Smtp-Source: APXvYqyM14DgLsOUslHynlzF8FJnfHQ8NGtfE7G0/E9SFAd6NbDwI+ZX+AsWAWB2Q3W3IzL6oj454A==
X-Received: by 2002:aca:f1d4:: with SMTP id p203mr1558648oih.116.1581563497684; 
 Wed, 12 Feb 2020 19:11:37 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id t20sm307533oij.19.2020.02.12.19.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 19:11:36 -0800 (PST)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e166:6491:dd75:4196])
 by serve.minyard.net (Postfix) with ESMTPA id 84C4B180055;
 Thu, 13 Feb 2020 03:11:36 +0000 (UTC)
From: minyard@acm.org
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 2/2] arm64:kgdb: Fix kernel single-stepping
Date: Wed, 12 Feb 2020 21:11:31 -0600
Message-Id: <20200213031131.13255-3-minyard@acm.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213031131.13255-1-minyard@acm.org>
References: <20200213031131.13255-1-minyard@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_191139_695642_3DA3C187 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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

Single stepping on arm64 in kernel mode was just broken.  Here are the
problems:

If single step is set and an interrupt is pending, the interrupt is
taken.  The interrupt should run and then return and the single stepped
instruction run.  However, instead, as soon as the kernel calls
enable_dbg, the single step happens right there.  To fix this,
disable SS in the MDSCR register on entry and save it's value for later
use.

The SS bit in the MDSCR register is set globally for the CPU, not for the
task being single stepped.  If the task migrates, that could cause the
bit to be set on the wrong core.  So instead, store the value of SS in
the thread structure and set it properly on exit back to the kernel.

If a single step occurs, it clears the SS bit in PSTATE.  So subsiquent
single steps will not work.  The bit needs to be reset on each single
step operation.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 arch/arm64/include/asm/ptrace.h    |  4 ++--
 arch/arm64/kernel/asm-offsets.c    |  1 +
 arch/arm64/kernel/debug-monitors.c |  7 ++++---
 arch/arm64/kernel/entry.S          | 21 +++++++++++++++++++++
 arch/arm64/kernel/kgdb.c           |  3 +++
 5 files changed, 31 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index fbebb411ae20..a07847deff8f 100644
--- a/arch/arm64/include/asm/ptrace.h
+++ b/arch/arm64/include/asm/ptrace.h
@@ -168,11 +168,11 @@ struct pt_regs {
 	};
 	u64 orig_x0;
 #ifdef __AARCH64EB__
-	u32 unused2;
+	u32 ss_enable; /* Kernel single-step for a task */
 	s32 syscallno;
 #else
 	s32 syscallno;
-	u32 unused2;
+	u32 ss_enable;
 #endif
 
 	u64 orig_addr_limit;
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index a5bdce8af65b..038e76d2f0c4 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -62,6 +62,7 @@ int main(void)
   DEFINE(S_PSTATE,		offsetof(struct pt_regs, pstate));
   DEFINE(S_PC,			offsetof(struct pt_regs, pc));
   DEFINE(S_SYSCALLNO,		offsetof(struct pt_regs, syscallno));
+  DEFINE(S_SS_ENABLE,		offsetof(struct pt_regs, ss_enable));
   DEFINE(S_ORIG_ADDR_LIMIT,	offsetof(struct pt_regs, orig_addr_limit));
   DEFINE(S_PMR_SAVE,		offsetof(struct pt_regs, pmr_save));
   DEFINE(S_STACKFRAME,		offsetof(struct pt_regs, stackframe));
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 2a0dfd8b1265..d4085cfef5a7 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -409,7 +409,7 @@ void kernel_enable_single_step(struct pt_regs *regs)
 {
 	WARN_ON(!irqs_disabled());
 	set_regs_spsr_ss(regs);
-	mdscr_write(mdscr_read() | DBG_MDSCR_SS);
+	regs->ss_enable = DBG_MDSCR_SS;
 	enable_debug_monitors(DBG_ACTIVE_EL1);
 }
 NOKPROBE_SYMBOL(kernel_enable_single_step);
@@ -417,7 +417,8 @@ NOKPROBE_SYMBOL(kernel_enable_single_step);
 void kernel_disable_single_step(struct pt_regs *regs)
 {
 	WARN_ON(!irqs_disabled());
-	mdscr_write(mdscr_read() & ~DBG_MDSCR_SS);
+	regs->ss_enable = 0;
+	clear_regs_spsr_ss(regs);
 	disable_debug_monitors(DBG_ACTIVE_EL1);
 }
 NOKPROBE_SYMBOL(kernel_disable_single_step);
@@ -425,7 +426,7 @@ NOKPROBE_SYMBOL(kernel_disable_single_step);
 int kernel_active_single_step(struct pt_regs *regs)
 {
 	WARN_ON(!irqs_disabled());
-	return mdscr_read() & DBG_MDSCR_SS;
+	return regs->ss_enable;
 }
 NOKPROBE_SYMBOL(kernel_active_single_step);
 
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 7c6a0a41676f..fcf979b17d94 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -174,6 +174,17 @@ alternative_cb_end
 	apply_ssbd 1, x22, x23
 
 	.else
+	/*
+	 * If single-step was enabled, save it off and disable it,
+	 * or it will trap on clearing the D bit in PSTATE.
+	 * The restore code will re-enable it if necessary.
+	 */
+	mrs	x20, mdscr_el1
+	bic	x21, x20, #1
+	msr	mdscr_el1, x21
+	and	x20, x20, #1
+	str	w20, [sp, #S_SS_ENABLE]
+
 	add	x21, sp, #S_FRAME_SIZE
 	get_current_task tsk
 	/* Save the task's original addr_limit and set USER_DS */
@@ -349,6 +360,16 @@ alternative_else_nop_endif
 
 	msr	elr_el1, x21			// set up the return data
 	msr	spsr_el1, x22
+
+	.if	\el != 0
+	/* Restore the single-step bit. */
+	ldr	w21, [sp, #S_SS_ENABLE]
+	mrs	x20, mdscr_el1
+	orr	x20, x20, x21
+	msr	mdscr_el1, x20
+	/* PSTATE.D and PSTATE.SS will be restored from SPSR_EL1. */
+	.endif
+
 	ldp	x0, x1, [sp, #16 * 0]
 	ldp	x2, x3, [sp, #16 * 1]
 	ldp	x4, x5, [sp, #16 * 2]
diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
index 220fe8fd6ace..260f12c76b6e 100644
--- a/arch/arm64/kernel/kgdb.c
+++ b/arch/arm64/kernel/kgdb.c
@@ -223,6 +223,9 @@ int kgdb_arch_handle_exception(int exception_vector, int signo,
 		 */
 		if (!kernel_active_single_step(linux_regs))
 			kernel_enable_single_step(linux_regs);
+		else
+			/* Doing a single-step clears ss, reset it. */
+			linux_regs->pstate |= DBG_SPSR_SS;
 		err = 0;
 		break;
 	default:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
