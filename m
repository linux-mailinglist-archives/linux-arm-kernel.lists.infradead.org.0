Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EAA139BF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yyBVJtDHeXReyZJzZQhkLoS9lnXhs07UTQdQgW1QEn0=; b=ogB9VjE2O+9203
	DP9kVVTMeK1Fo9/LZXZxTszZ9NhsI3oQ+2R6GUMPGcurKta3eBCzakfXpInv0gkqQVcX+626XOKsY
	g8s5zY5RMoHFeS3LGFqiNSVtgc1gG09tOfsVovisxT6FQ1mYYDwVGhMWFgCnP751P3wukauvdhU2D
	0iKOz8FTYrfN8wvQVxrMsifvXdxkq+mkH6ZVYGseaMEMsTsP1fAicJ+9UOrjWNGN7vLec5ooITQkJ
	0hE7agJLMcf5Eu9yJJWmikeeFbOaWnj55+uLLn2N3gx2jj5aNxqOBsge1HvE79ajEM6SIHWW9dUD/
	DN9Gc+ZZ/Ph+swlie64A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7fN-00081Y-Ag; Mon, 13 Jan 2020 21:54:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7ej-0007ba-5U
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:53:54 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A4E42072B;
 Mon, 13 Jan 2020 21:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578952432;
 bh=8jIrRvTBvhwRnHPF9wiMJlVhIJl++fsonZ0U2nqG8Sc=;
 h=Subject:To:Cc:From:Date:From;
 b=vmBlzp8NS7ugEec/nUarnI+cx9XMfO3nYRJDq4vX9aZB4xU9KoGeoIn31FuPQvtu4
 NXJzIwHhH8nkhzuSRx9uVvCWbko3g27LW7qHHoRfgullmlx9Ag+7+x7ITXm0RG1z+4
 Y+IeF/gnExfmXM9eMw6p0T9SgEsuR+k9s0uvHduI=
Subject: Patch "arm: Implement copy_thread_tls" has been added to the
 5.4-stable tree
To: 20200102172413.654385-4-amanieu@gmail.com, amanieu@gmail.com,
 christian.brauner@ubuntu.com, gregkh@linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
From: <gregkh@linuxfoundation.org>
Date: Mon, 13 Jan 2020 22:53:35 +0100
Message-ID: <157895241592143@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_135353_271390_A901A484 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    arm: Implement copy_thread_tls

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm-implement-copy_thread_tls.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 167ee0b82429cb5df272808c7a21370b7c961ab2 Mon Sep 17 00:00:00 2001
From: Amanieu d'Antras <amanieu@gmail.com>
Date: Thu, 2 Jan 2020 18:24:09 +0100
Subject: arm: Implement copy_thread_tls

From: Amanieu d'Antras <amanieu@gmail.com>

commit 167ee0b82429cb5df272808c7a21370b7c961ab2 upstream.

This is required for clone3 which passes the TLS value through a
struct rather than a register.

Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: <stable@vger.kernel.org> # 5.3.x
Link: https://lore.kernel.org/r/20200102172413.654385-4-amanieu@gmail.com
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/arm/Kconfig          |    1 +
 arch/arm/kernel/process.c |    6 +++---
 2 files changed, 4 insertions(+), 3 deletions(-)

--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -73,6 +73,7 @@ config ARM
 	select HAVE_ARM_SMCCC if CPU_V7
 	select HAVE_EBPF_JIT if !CPU_ENDIAN_BE32
 	select HAVE_CONTEXT_TRACKING
+	select HAVE_COPY_THREAD_TLS
 	select HAVE_C_RECORDMCOUNT
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DMA_CONTIGUOUS if MMU
--- a/arch/arm/kernel/process.c
+++ b/arch/arm/kernel/process.c
@@ -224,8 +224,8 @@ void release_thread(struct task_struct *
 asmlinkage void ret_from_fork(void) __asm__("ret_from_fork");
 
 int
-copy_thread(unsigned long clone_flags, unsigned long stack_start,
-	    unsigned long stk_sz, struct task_struct *p)
+copy_thread_tls(unsigned long clone_flags, unsigned long stack_start,
+	    unsigned long stk_sz, struct task_struct *p, unsigned long tls)
 {
 	struct thread_info *thread = task_thread_info(p);
 	struct pt_regs *childregs = task_pt_regs(p);
@@ -259,7 +259,7 @@ copy_thread(unsigned long clone_flags, u
 	clear_ptrace_hw_breakpoint(p);
 
 	if (clone_flags & CLONE_SETTLS)
-		thread->tp_value[0] = childregs->ARM_r3;
+		thread->tp_value[0] = tls;
 	thread->tp_value[1] = get_tpuser();
 
 	thread_notify(THREAD_NOTIFY_COPY, thread);


Patches currently in stable-queue which might be from amanieu@gmail.com are

queue-5.4/arm-implement-copy_thread_tls.patch
queue-5.4/arm64-implement-copy_thread_tls.patch
queue-5.4/xtensa-implement-copy_thread_tls.patch
queue-5.4/arm64-move-__arch_want_sys_clone3-definition-to-uapi-headers.patch
queue-5.4/parisc-implement-copy_thread_tls.patch
queue-5.4/clone3-ensure-copy_thread_tls-is-implemented.patch
queue-5.4/riscv-implement-copy_thread_tls.patch
queue-5.4/um-implement-copy_thread_tls.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
