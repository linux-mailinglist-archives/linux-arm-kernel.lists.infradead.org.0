Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B9B134B22
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:00:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BW7E/02KJijlxLPjDvDXi1ggc0j1yv6wPFBJyYtsA0c=; b=bRNno6nqN+UWJjpfZu5VmAYeLK
	Y2k3VehX8+tYVqFKeh5MgOvbkTqFKdY7nxsey7Zby/4fqTpLZPfnn70AcAeOXN6wwLDkICkKNIRrI
	ImXNa8Of6rdXzEl0p12gYeUHC6D/IeTXyOYRYnUuAtzLA8n12XUg2K4X2acxME6Q6yozuKJOVCflI
	7Ad0hoN+qI5AnEj8ILx1Lt11OtgvRwjCjyzYVQsxpiH2IlOaoCjuNoYOEmJQpDoXKms0tIM89rnjt
	Sm1Cw/GKdQ8rnIJq+W2tRmyi1UooW3UXazob4nbL3xsP1K2BCLQ5AQd+eJKTK7Qh2Ls8kdJEhgOEp
	PiS6wmZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGZ1-0001tF-HX; Wed, 08 Jan 2020 19:00:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGW5-0007hV-5O
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65F771FB;
 Wed,  8 Jan 2020 10:57:16 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D68743F534;
 Wed,  8 Jan 2020 10:57:14 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 12/17] arm64: debug-monitors: refactor MDSCR manipulation
Date: Wed,  8 Jan 2020 18:56:29 +0000
Message-Id: <20200108185634.1163-13-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105717_319615_52464AE5 
X-CRM114-Status: GOOD (  13.01  )
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

When we convert the ret_to_user/work_pending code to C, we're going to
want to poke the MDSCR to enable/disable single-step. Let's factor out
the existing code for this from debug-monitors.c.

At the same time, we can make use of {read,write}_sysreg() directly, and
get rid of the mdscr_{read,write} wrappers.

The existing code masked DAIF when manipulating MDSCR_EL1, but this
should not be necessary. Exceptions can be taken immediately before DAIF
is masked, and given the lack of an ISB can also be taken after DAIF is
unmasked as writes to DAIF are only self-synchronizing and not
context-synchronizing in general. We may want to add an ISB to ensure
that updates to MDSCR have taken effect, however.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/debug-monitors.h | 10 ++++++++++
 arch/arm64/kernel/debug-monitors.c      | 32 +++++++-------------------------
 2 files changed, 17 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
index 7619f473155f..342867e50c54 100644
--- a/arch/arm64/include/asm/debug-monitors.h
+++ b/arch/arm64/include/asm/debug-monitors.h
@@ -107,6 +107,16 @@ enum dbg_active_el {
 void enable_debug_monitors(enum dbg_active_el el);
 void disable_debug_monitors(enum dbg_active_el el);
 
+static __always_inline void __enable_single_step_nosync(void)
+{
+	sysreg_clear_set(mdscr_el1, 0, DBG_MDSCR_SS);
+}
+
+static __always_inline void __disable_single_step_nosync(void)
+{
+	sysreg_clear_set(mdscr_el1, DBG_MDSCR_SS, 0);
+}
+
 void user_rewind_single_step(struct task_struct *task);
 void user_fastforward_single_step(struct task_struct *task);
 
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 48222a4760c2..fa2d4145bd07 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -32,24 +32,6 @@ u8 debug_monitors_arch(void)
 }
 
 /*
- * MDSCR access routines.
- */
-static void mdscr_write(u32 mdscr)
-{
-	unsigned long flags;
-	flags = local_daif_save();
-	write_sysreg(mdscr, mdscr_el1);
-	local_daif_restore(flags);
-}
-NOKPROBE_SYMBOL(mdscr_write);
-
-static u32 mdscr_read(void)
-{
-	return read_sysreg(mdscr_el1);
-}
-NOKPROBE_SYMBOL(mdscr_read);
-
-/*
  * Allow root to disable self-hosted debug from userspace.
  * This is useful if you want to connect an external JTAG debugger.
  */
@@ -91,9 +73,9 @@ void enable_debug_monitors(enum dbg_active_el el)
 		enable |= DBG_MDSCR_KDE;
 
 	if (enable && debug_enabled) {
-		mdscr = mdscr_read();
+		mdscr = read_sysreg(mdscr_el1);
 		mdscr |= enable;
-		mdscr_write(mdscr);
+		write_sysreg(mdscr, mdscr_el1);
 	}
 }
 NOKPROBE_SYMBOL(enable_debug_monitors);
@@ -112,9 +94,9 @@ void disable_debug_monitors(enum dbg_active_el el)
 		disable &= ~DBG_MDSCR_KDE;
 
 	if (disable) {
-		mdscr = mdscr_read();
+		mdscr = read_sysreg(mdscr_el1);
 		mdscr &= disable;
-		mdscr_write(mdscr);
+		write_sysreg(mdscr, mdscr_el1);
 	}
 }
 NOKPROBE_SYMBOL(disable_debug_monitors);
@@ -409,7 +391,7 @@ void kernel_enable_single_step(struct pt_regs *regs)
 {
 	WARN_ON(!irqs_disabled());
 	set_regs_spsr_ss(regs);
-	mdscr_write(mdscr_read() | DBG_MDSCR_SS);
+	__enable_single_step_nosync();
 	enable_debug_monitors(DBG_ACTIVE_EL1);
 }
 NOKPROBE_SYMBOL(kernel_enable_single_step);
@@ -417,7 +399,7 @@ NOKPROBE_SYMBOL(kernel_enable_single_step);
 void kernel_disable_single_step(void)
 {
 	WARN_ON(!irqs_disabled());
-	mdscr_write(mdscr_read() & ~DBG_MDSCR_SS);
+	__disable_single_step_nosync();
 	disable_debug_monitors(DBG_ACTIVE_EL1);
 }
 NOKPROBE_SYMBOL(kernel_disable_single_step);
@@ -425,7 +407,7 @@ NOKPROBE_SYMBOL(kernel_disable_single_step);
 int kernel_active_single_step(void)
 {
 	WARN_ON(!irqs_disabled());
-	return mdscr_read() & DBG_MDSCR_SS;
+	return read_sysreg(mdscr_el1) & DBG_MDSCR_SS;
 }
 NOKPROBE_SYMBOL(kernel_active_single_step);
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
