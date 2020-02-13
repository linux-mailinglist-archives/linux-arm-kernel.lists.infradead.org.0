Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0256515BE31
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:02:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYMIGZijt6Y/kw69xsFuLGJkckFCpbVLHY24iT2VkIQ=; b=V17LI0TIHsm7Il
	kGW5x9RHa/K1kw4F+B7judf0k7vYb/UIgeptPad4pfgVY3fPurxzm2FTe4wshZ4aUAV1LVY8newzH
	cDRvVH/AePKtIkjM6mmN3m6tZ0gVXzUfNFsf0lhrSNtRQS0fKF0OZwjEl7B8o/15njQ4TMLxMJdiR
	zw7tBX0zTmU/ELqLNUePXdPsyySVrrxvO3gbYfgcgZvxqiomGu9VjG0nBHa5Bwuf+cVvtNkngEhCF
	g2Qhw+1kA5zFnCRhpzJviIcy132yeIdoUDZtIFn5CDYMGT1kf1pNvdcNDDF8+n5pVMWn65ZpavVeN
	Vheapm2lKsDHOuYvgRrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2DBq-0003gZ-BV; Thu, 13 Feb 2020 12:01:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DBK-0003SR-IB
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 12:01:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2CBC2082F;
 Thu, 13 Feb 2020 12:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581595280;
 bh=wu+vptNyhSoBNDNxkbpt4hjBwGr88rji7g0c6Wnae0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=csZWmlQ7xmjDIhdY34kBn9rokzBY1jOYV7OJI93Gx+og7FMlt9cnnEEKJfm1n/F/r
 lcsxfMYVXZUgmh/yScwF2JNMke2nRBka+DvIXb+H3QZ3L/6fxl9/9TsfnMZZwsVcPA
 vfC3HerkDoB6UgIIqqbT70cdolDtVCGcj1Q/VSyk=
Date: Thu, 13 Feb 2020 12:01:16 +0000
From: Will Deacon <will@kernel.org>
To: Luis Machado <luis.machado@linaro.org>
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
Message-ID: <20200213120115.GD1405@willie-the-truck>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
 <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_040122_660004_40E25A1A 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luis,

Sorry for the very slow reply. I talked to Mark about this a bit but it
seems that we never followed up here.

On Tue, Dec 10, 2019 at 05:00:18PM -0300, Luis Machado wrote:
> Do you have any input regarding this particular situation?
> 
> It would be nice to get this fixed before the release of another GDB
> version, if the fix is to live in GDB itself.

Basically, I'm very nervous about fixing this in the kernel because
whatever we do will be visible to userspace. On the other hand, this
part of the ptrace interface is only seriously used by GDB and we should
make sure that it works well.

Does the diff below solve the problem? If so, can you confirm that it
doesn't appear to regress anything else for GDB?

Cheers,

Will

--->8

diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
index 7619f473155f..d825e3585e28 100644
--- a/arch/arm64/include/asm/debug-monitors.h
+++ b/arch/arm64/include/asm/debug-monitors.h
@@ -109,6 +109,8 @@ void disable_debug_monitors(enum dbg_active_el el);
 
 void user_rewind_single_step(struct task_struct *task);
 void user_fastforward_single_step(struct task_struct *task);
+void user_regs_reset_single_step(struct user_pt_regs *regs,
+				 struct task_struct *task);
 
 void kernel_enable_single_step(struct pt_regs *regs);
 void kernel_disable_single_step(void);
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 48222a4760c2..7569deb1eac1 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -141,17 +141,20 @@ postcore_initcall(debug_monitors_init);
 /*
  * Single step API and exception handling.
  */
-static void set_regs_spsr_ss(struct pt_regs *regs)
+static void set_user_regs_spsr_ss(struct user_pt_regs *regs)
 {
 	regs->pstate |= DBG_SPSR_SS;
 }
-NOKPROBE_SYMBOL(set_regs_spsr_ss);
+NOKPROBE_SYMBOL(set_user_regs_spsr_ss);
 
-static void clear_regs_spsr_ss(struct pt_regs *regs)
+static void clear_user_regs_spsr_ss(struct user_pt_regs *regs)
 {
 	regs->pstate &= ~DBG_SPSR_SS;
 }
-NOKPROBE_SYMBOL(clear_regs_spsr_ss);
+NOKPROBE_SYMBOL(clear_user_regs_spsr_ss);
+
+#define set_regs_spsr_ss(r)	set_user_regs_spsr_ss(&(r)->user_regs)
+#define clear_regs_spsr_ss(r)	clear_user_regs_spsr_ss(&(r)->user_regs)
 
 static DEFINE_SPINLOCK(debug_hook_lock);
 static LIST_HEAD(user_step_hook);
@@ -404,6 +407,15 @@ void user_fastforward_single_step(struct task_struct *task)
 		clear_regs_spsr_ss(task_pt_regs(task));
 }
 
+void user_regs_reset_single_step(struct user_pt_regs *regs,
+				 struct task_struct *task)
+{
+	if (test_tsk_thread_flag(task, TIF_SINGLESTEP))
+		set_user_regs_spsr_ss(regs);
+	else
+		clear_user_regs_spsr_ss(regs);
+}
+
 /* Kernel API */
 void kernel_enable_single_step(struct pt_regs *regs)
 {
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index cd6e5fa48b9c..d479fbcbd0d2 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1934,8 +1934,8 @@ static int valid_native_regs(struct user_pt_regs *regs)
  */
 int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task)
 {
-	if (!test_tsk_thread_flag(task, TIF_SINGLESTEP))
-		regs->pstate &= ~DBG_SPSR_SS;
+	/* https://lore.kernel.org/lkml/20191118131525.GA4180@willie-the-truck */
+	user_regs_reset_single_step(regs, task);
 
 	if (is_compat_thread(task_thread_info(task)))
 		return valid_compat_regs(regs);
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index 339882db5a91..bc54bdbfd760 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -505,8 +505,12 @@ static int restore_sigframe(struct pt_regs *regs,
 	forget_syscall(regs);
 
 	err |= !valid_user_regs(&regs->user_regs, current);
-	if (err == 0)
+
+	if (err == 0) {
+		/* Make it look like we stepped the sigreturn system call */
+		user_fastforward_single_step(current);
 		err = parse_user_sigframe(&user, sf);
+	}
 
 	if (err == 0 && system_supports_fpsimd()) {
 		if (!user.fpsimd)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
