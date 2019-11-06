Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5F6F0C6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVgh2xawnN32t1sf7MdjBTXSRLhpDFIiGJfVG8PyYnQ=; b=f4BOIAKDWSLgX8
	mexeHQEnxH+fBvD+BNwhpkADugyvOYUH6nKTBireMhjEsQSP7wWHVkqW68L372LUyoCx82PpaoKuN
	PqmdjRh/G6bxBGRqOs8H6ge/ahvbXlDdGEmD/iUvdHEoIK8B7w9IfKK/odob6gwfi0MXPHQUb3qnC
	JXYKCCoMLX4z/B9JrlYe48PsQ5IqIZ5ljWZnj5JBZCwOodx6Muh7k78osW71wq6IP0lErV9ESPoDf
	m02W7PFrJVu0mUh4PyOnbZnj5+V+lKWskJJUOWqejsDX5nhh/ikostR4bJzAjZTbwpdQqZ6tO2ndM
	IWnjAWkTICLP8/87CZVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBex-0001tU-2B; Wed, 06 Nov 2019 03:07:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBeO-0001hP-Vh
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:06:30 +0000
Received: by mail-pg1-x542.google.com with SMTP id f19so7013693pgk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0JSJptxyMyyawlDIBafWZUWHnWl6qdn6DTmb9gqM8mc=;
 b=JHekqEdxHHGq9kYP65o2sun5nG9SgZ6ZvelgmrQOBAd6nSZPqd+KI8tFb+/BxnkoRt
 fEqocTcau1xtvO8DXbt5MpnFCejfVZXd46xYnzH3azls0EE9UxNKyBeCQiDfnZ6m/2H7
 Y0G6x6Mt6/7pcjhvQR7RmJjwYgecku2UfMAKf5CBM4QwylzBcNVp6BZOPcI00JwR0w8t
 93oVAESRdy2IE8lRGfRSuHkvNNIZWDbL7p9v5L7iQk1lH3tW0U4NVRUJRxvLswfvcaKs
 eB6xY45UcfkHCgQpoez5YKail4THuaGs9qT1052KKwRhyNoEgPzvIermNmfAWoi3aY4L
 DZQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0JSJptxyMyyawlDIBafWZUWHnWl6qdn6DTmb9gqM8mc=;
 b=VgdTPTFXnY+kqhNp0e62GpcxXem65nUi5vFQ4Fyo5iy8Dhtz8lf+uobgseEbbff1/J
 4milAphBM3qU4xqKH8dhls9BdyHCkH1tK1qZIEFR3Pobsyomtem9gb28pJEasBND4jW6
 DXhTzatuROEytGV5Fi33VL19J5Zcc05+duMSSonyVTK4g1VeCGQA3FnOZhdIta01PwSF
 WfCKlIIay/b7s6gaHd0z8iL3mv+85WGUkmkh5QG8qWuBhqSJSzwzrwBf6PUZq+GrZpXa
 Z0UkXeaSD3+l5XCHwANkd0WFCNlpEAtZ/PA8CRmYO4FcdoKi5kD5wuZ0AzV3ynL31T7f
 fpOA==
X-Gm-Message-State: APjAAAVmg+t//M7wndYR4IMmcdzwp2Eo4hxIBUPd2/+wN3prKeq830Nb
 fSo7U+filTsbxL2PFwbqR7+85w==
X-Google-Smtp-Source: APXvYqzMex0R0bYN510KHz0M3qzyYI08t2BEtaQ5LiAHiQZF5atMOFpXXMlmxNnasjCDeyjokgwVbQ==
X-Received: by 2002:a63:d1a:: with SMTP id c26mr225690pgl.24.1573009588153;
 Tue, 05 Nov 2019 19:06:28 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:06:27 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 05/50] arm: Add loglvl to unwind_backtrace()
Date: Wed,  6 Nov 2019 03:04:56 +0000
Message-Id: <20191106030542.868541-6-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190629_039987_D785677C 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 arch/arm/kernel/unwind.c      | 7 ++++---
 3 files changed, 9 insertions(+), 7 deletions(-)

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
index 7c3f32b26585..69e35462c9e9 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -202,7 +202,7 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
 #ifdef CONFIG_ARM_UNWIND
 static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 {
-	unwind_backtrace(regs, tsk);
+	unwind_backtrace(regs, tsk, KERN_DEBUG);
 }
 #else
 static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
@@ -660,10 +660,10 @@ asmlinkage int arm_syscall(int no, struct pt_regs *regs)
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
index 0a65005e10f0..caaae1b6f721 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -455,11 +455,12 @@ int unwind_frame(struct stackframe *frame)
 	return URC_OK;
 }
 
-void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+		      const char *loglvl)
 {
 	struct stackframe frame;
 
-	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
+	printk("%s%s(regs = %p tsk = %p)\n", loglvl, __func__, regs, tsk);
 
 	if (!tsk)
 		tsk = current;
@@ -493,7 +494,7 @@ void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		urc = unwind_frame(&frame);
 		if (urc < 0)
 			break;
-		dump_backtrace_entry(where, frame.pc, frame.sp - 4, NULL);
+		dump_backtrace_entry(where, frame.pc, frame.sp - 4, loglvl);
 	}
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
