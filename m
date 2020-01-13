Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4476B139BED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zABd/LVdF6DlHnUe6WkjWPvHpvcFv4/r4L6IquQpc10=; b=P4AFKsZ3QMYfNC
	0e888g33+Qr3OkxLFwxrsgOG22tF3unh8ymzYZd0by3gxIPx52b3+Q7iLLK05saQsBDpzpq9AoZ+5
	m27cvoCTDqtVjNcVCHvYmf9pQdIqdN2KM0iFEUyvUJ1S+AcNP9OrMY6TfhjevmuxDyZHJn3OJ8HIg
	4UwS3xqzmpZPyyO86znJ0+J/7YCoEil4Sc6epZvl82DDQuBLwtIhSJ+NszaN7TXQuyal4K7bpJ9qJ
	o7Mn/p/w96ouAKno2TFOeyUyfGDwAfxGAOcurKRTVdfjjyt7JX1RWuKJX9N62IVYTShrtj7r3tgIw
	msieOhod3CKIfkLuypNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7el-0007Yg-NY; Mon, 13 Jan 2020 21:53:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7ee-0007Xv-8B
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:53:49 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B6F421569;
 Mon, 13 Jan 2020 21:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578952426;
 bh=GFQnshSETvbEDlF28EvtV4bdghDNPLN8w00/hc4Yl58=;
 h=Subject:To:Cc:From:Date:From;
 b=qGKcSKdrhtSzWloCfNau0/CXM0OlfrOi/+HMEtV+qruOQ/GcCyHE1utUH70Qc8BEx
 GqqYoyzemegv+TSbJ2Bsfy7ZH1jkzkHQJ4q+vL9nRe615b7g9KmRNFdVjvcKg2nsmZ
 KalVwNtM8clcMfkaaGipfn2g+pgF6NhbRcnrU2VI=
Subject: Patch "arm64: Implement copy_thread_tls" has been added to the
 5.4-stable tree
To: 20200102172413.654385-3-amanieu@gmail.com, amanieu@gmail.com,
 christian.brauner@ubuntu.com, gregkh@linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org, will@kernel.org
From: <gregkh@linuxfoundation.org>
Date: Mon, 13 Jan 2020 22:53:35 +0100
Message-ID: <1578952415233140@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_135348_332385_FA76F687 
X-CRM114-Status: GOOD (  13.54  )
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

    arm64: Implement copy_thread_tls

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm64-implement-copy_thread_tls.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From a4376f2fbcc8084832f2f114577c8d68234c7903 Mon Sep 17 00:00:00 2001
From: Amanieu d'Antras <amanieu@gmail.com>
Date: Thu, 2 Jan 2020 18:24:08 +0100
Subject: arm64: Implement copy_thread_tls

From: Amanieu d'Antras <amanieu@gmail.com>

commit a4376f2fbcc8084832f2f114577c8d68234c7903 upstream.

This is required for clone3 which passes the TLS value through a
struct rather than a register.

Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: <stable@vger.kernel.org> # 5.3.x
Acked-by: Will Deacon <will@kernel.org>
Link: https://lore.kernel.org/r/20200102172413.654385-3-amanieu@gmail.com
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/arm64/Kconfig          |    1 +
 arch/arm64/kernel/process.c |   10 +++++-----
 2 files changed, 6 insertions(+), 5 deletions(-)

--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -139,6 +139,7 @@ config ARM64
 	select HAVE_CMPXCHG_DOUBLE
 	select HAVE_CMPXCHG_LOCAL
 	select HAVE_CONTEXT_TRACKING
+	select HAVE_COPY_THREAD_TLS
 	select HAVE_DEBUG_BUGVERBOSE
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DMA_CONTIGUOUS
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -360,8 +360,8 @@ int arch_dup_task_struct(struct task_str
 
 asmlinkage void ret_from_fork(void) asm("ret_from_fork");
 
-int copy_thread(unsigned long clone_flags, unsigned long stack_start,
-		unsigned long stk_sz, struct task_struct *p)
+int copy_thread_tls(unsigned long clone_flags, unsigned long stack_start,
+		unsigned long stk_sz, struct task_struct *p, unsigned long tls)
 {
 	struct pt_regs *childregs = task_pt_regs(p);
 
@@ -394,11 +394,11 @@ int copy_thread(unsigned long clone_flag
 		}
 
 		/*
-		 * If a TLS pointer was passed to clone (4th argument), use it
-		 * for the new thread.
+		 * If a TLS pointer was passed to clone, use it for the new
+		 * thread.
 		 */
 		if (clone_flags & CLONE_SETTLS)
-			p->thread.uw.tp_value = childregs->regs[3];
+			p->thread.uw.tp_value = tls;
 	} else {
 		memset(childregs, 0, sizeof(struct pt_regs));
 		childregs->pstate = PSR_MODE_EL1h;


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
