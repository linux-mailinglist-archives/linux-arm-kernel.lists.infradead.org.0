Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322D513A4F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYG5AU6nwo94DTvU9mDOtQschychHnRfrV5qHJhWhfY=; b=Vy+SxnUyDfo+H1
	vdGObnoAix3yjvG7sEWb1/WQygOigvJrgLfD9bun9d9TOexCj8ZiF0af+1h16bjrmGRSTy+ccG3ck
	TlVp87KF4XkRcAikCPz/8L+yx9OAVSsoOgRq+lcXfzg0ondSfY4qVgmUtfbwvCfc3Z6FlK7N5fAbu
	nmJ+2SNwmbX0aebgJRGmX+l2Q1KR2sVtqLhFumXISGgTQdM8XNzM6m0nRfVxP4tyaTutUTVHedJ8N
	bEwTepuQBQhWYYK13Fzm98JpERxctkszWraH6vLxVZQF9eP1ofG8dvh2sWE9WkoZjQ8HLcPwpP11F
	tWbfMpKPUrqZHNEcAiCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJ5T-0005a5-Bs; Tue, 14 Jan 2020 10:06:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJ4m-00057i-SL
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 10:05:36 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06FD02467D;
 Tue, 14 Jan 2020 10:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578996332;
 bh=YCf5PWWDVWJ847+R08vWx2HT4qX17hPoH9QOn8WjUZE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kWcupiyUgWFzd01gIE+s3gx3MEsfrZw4/TcnkRP86BrLTQqrCHjlq2IVd24yTmbT2
 YjD8PpKXxkMyagY6WKIFwk3CHQvnEPcv7Q3au9myctoQymoWAW8RUQaQkbo3pLWj4u
 4+owoXnGzGpUryxcRA4KF35pjvFFi4jtPe8KC4IU=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.4 59/78] arm: Implement copy_thread_tls
Date: Tue, 14 Jan 2020 11:01:33 +0100
Message-Id: <20200114094401.337985296@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114094352.428808181@linuxfoundation.org>
References: <20200114094352.428808181@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_020532_940342_8850AEBB 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Amanieu dAntras <amanieu@gmail.com>, linux-arm-kernel@lists.infradead.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
