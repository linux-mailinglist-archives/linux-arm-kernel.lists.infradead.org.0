Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1504D186D61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7ELNQKauneBf36hX1/iFyGJ8yeSiPy33ZgJc/QmbgE=; b=ZamDegifkpF8xt
	7LBykU4rLueg65cFDSHadCZnTJJkWuNorhYrqm/2UonWe0YDfiOR7mnYf4g3CYh6zSypYC6M11AKM
	a0mTDjX818mBV8IG460/iqebP0TS08X7qqswx8CzgxdrnJ3AxDzeQpHr36Yaif9vUX2OqbAMoSGtU
	CQHGuMbR8g9ir7z1XnzqS+QF8/yx6tqWzy5UxvI+RqgB/qK7+nC6UvW6zDr0wehm6JL9biLMcUas0
	fCI5200wTiVhL0gCTE01VzeSTQyURK+gmzNNuqBVUYfVXbLB/XrYC3Ubtdt8LnmeAaXJXZqB2upLT
	Yq1ij4iEkVLCg/r7b8zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqv7-00021B-WF; Mon, 16 Mar 2020 14:40:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDquU-0000iZ-Fx
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:40:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id m5so9887253pgg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 07:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hoy3hKjGTKbXFgtJqdy0XVVKGayseSyt+olpDXinT2U=;
 b=Cc7unAu9Anwjtat9ViQI6hUMfTEEr1QN/Dk29hmYCfqmNwxS4G5mt3+ZknLVZwK9lJ
 Fn7kw+SwhGfcAb7zqmUQcmZD24weZEW0zbW/DoklcrkKTFtFerRcTWx5A8gRnLnpMTlT
 Wsgt2fqKgd4ZvGX/uMiX69EjDzE69BCoA6X/qVbPaLAgNRi7in7XhdgI3scFNC2beP6a
 y3OKV8DrhUnZfZRR77Df4TYIbFLZRbOEh6l9JBjHbqD6Ga+TjalZKArVThDDH+k/n36z
 Jnbp92mVIIMKt17zJduWtYAbxpeiRK0bjtQdu+50/oPlAiolhCUsCTWJmmAkQI3LOWpb
 olDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hoy3hKjGTKbXFgtJqdy0XVVKGayseSyt+olpDXinT2U=;
 b=tFCcHGl5YOjoyXe+1t1sCSycChYBiFYak/IxuLqmHlE7RbIrsbsGLGfJ367UiYr+pU
 mLgoCCXU6JStfhH+T6J94WhBsVAC/+brxlWIax6ZD8EP9wezyY3xd7UJ4VWZI3ZgSJ3t
 IKQjMCf2wgB65d25nuCSJjB/zc2QYMdQqOvyyWZOh99sXFmqEM8d8zytPS448alN9dYo
 TcC/eA6xBZgngZJuCOIXP5Rn6afEGlIqPhtb0MvnKq0Tm0QhNwAM8e4Ur/1UUSat3vxO
 ySPsiU6FtAf+GsooMMF9IwXX2u+Z2z7k36k4TpFLllM7z5mNNN08FmYto4hIgW355Z+I
 mpBw==
X-Gm-Message-State: ANhLgQ1EYoBU9/hqiK7xDvaDp4SxZoQxJw2Vk4ljbouIlGBlOVloqUwk
 32Vo39suVJk31zXKCKpM065tlg==
X-Google-Smtp-Source: ADFU+vsmdBTG8h+I0+57PwK8SCtkglhmlOG2yqWD9E6W5HThFUi8tikgPfVL5i1Ky7xL1/ihQ/QiLQ==
X-Received: by 2002:a63:330f:: with SMTP id z15mr215975pgz.104.1584369605413; 
 Mon, 16 Mar 2020 07:40:05 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:40:04 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 05/50] arm: Add loglvl to unwind_backtrace()
Date: Mon, 16 Mar 2020 14:38:31 +0000
Message-Id: <20200316143916.195608-6-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074006_602352_1809F709 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Dmitry Safonov <dima@arista.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 clang-built-linux@googlegroups.com, Jiri Slaby <jslaby@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the log-level of show_stack() depends on a platform
realization. It creates situations where the headers are printed with
lower log level or higher than the stacktrace (depending on
a platform or user).

Furthermore, it forces the logic decision from user to an architecture
side. In result, some users as sysrq/kdb/etc are doing tricks with
temporary rising console_loglevel while printing their messages.
And in result it not only may print unwanted messages from other CPUs,
but also omit printing at all in the unlucky case where the printk()
was deferred.

Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
an easier approach than introducing more printk buffers.
Also, it will consolidate printings with headers.

Add log level argument to unwind_backtrace() as a preparation for
introducing show_stack_loglvl().

As a good side-effect arm_syscall() is now printing errors with the same
log level as the backtrace.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/include/asm/unwind.h | 3 ++-
 arch/arm/kernel/traps.c       | 6 +++---
 arch/arm/kernel/unwind.c      | 5 +++--
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/unwind.h b/arch/arm/include/asm/unwind.h
index 6e282c33126b..0f8a3439902d 100644
--- a/arch/arm/include/asm/unwind.h
+++ b/arch/arm/include/asm/unwind.h
@@ -36,7 +36,8 @@ extern struct unwind_table *unwind_table_add(unsigned long start,
 					     unsigned long text_addr,
 					     unsigned long text_size);
 extern void unwind_table_del(struct unwind_table *tab);
-extern void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk);
+extern void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+			     const char *loglvl);
 
 #endif	/* !__ASSEMBLY__ */
 
diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 2030611f22b8..685e17c2e275 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -204,7 +204,7 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
 #ifdef CONFIG_ARM_UNWIND
 static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 {
-	unwind_backtrace(regs, tsk);
+	unwind_backtrace(regs, tsk, KERN_DEFAULT);
 }
 #else
 static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
@@ -664,10 +664,10 @@ asmlinkage int arm_syscall(int no, struct pt_regs *regs)
 	if (user_debug & UDBG_SYSCALL) {
 		pr_err("[%d] %s: arm syscall %d\n",
 		       task_pid_nr(current), current->comm, no);
-		dump_instr("", regs);
+		dump_instr(KERN_ERR, regs);
 		if (user_mode(regs)) {
 			__show_regs(regs);
-			c_backtrace(frame_pointer(regs), processor_mode(regs), NULL);
+			c_backtrace(frame_pointer(regs), processor_mode(regs), KERN_ERR);
 		}
 	}
 #endif
diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
index 0a65005e10f0..9222649ebe0f 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -455,7 +455,8 @@ int unwind_frame(struct stackframe *frame)
 	return URC_OK;
 }
 
-void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+		      const char *loglvl)
 {
 	struct stackframe frame;
 
@@ -493,7 +494,7 @@ void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		urc = unwind_frame(&frame);
 		if (urc < 0)
 			break;
-		dump_backtrace_entry(where, frame.pc, frame.sp - 4, NULL);
+		dump_backtrace_entry(where, frame.pc, frame.sp - 4, loglvl);
 	}
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
