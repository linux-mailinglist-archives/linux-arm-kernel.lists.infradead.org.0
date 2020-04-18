Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104A91AF4B0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 22:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkEkxdKZHPNSRXMgc4H8OkbX99E37DcNeE35E06R87s=; b=hiKvO5cF4avQqy
	VPraxnqzMuA9oJe+xLkGsS9uMJW9ajnULtnKBnkVHYJ/E23BwTAMr2rjDop9Hb+GQzpCdN5Yyp+rm
	7M0AFVONCLEZglwZAkIAaUYSnwKKz6r6ZstWIuLPtqi3kZZVd/uLmCVhtT1V2/F1R6Q9qO6fDeYO5
	DQPuXk0KPIk5cplvl6eRir0TtDQfEFMqVLmrZbzNrQJaxFimMj3XP5+dwDLZJgfcPiTybbr5WsUP5
	IrW7huQwaMm+RTVy4rUM7V8c9xt+Wry07euuuUpNYC1gSC2ruzs836KjQbiILgOSRwXnQzJv7tfT3
	E3lkKNNm2/uo4QypuSSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtxP-0004Gi-MR; Sat, 18 Apr 2020 20:20:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtwV-0001UZ-0c
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 20:20:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id d17so7133359wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 13:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9gJWg9flNrZ5TbihOoh/z3AJf3d2tqOa4g2mAiThDeM=;
 b=PVxE82lm6zbJXbMlOBH7658BN1LsmSNhLelmCSYXbCLzMKXqjTZVdq6I18YXHTLKE/
 D2dhd++/3+gAA3ytlUmItZdaIHfuzKaaiC+57QTDrsosqrFpUS/1mJ0ygyE8pGwat5PE
 nngmmT3wXVtmunDk+UBSuYjIUANSD9Cq93k2oNIyRt0/U4GEMs/irJoXa1JFpU7SWyX4
 AT2k90PUslP4Cfb0gO+z37SG7WRMImujj+Df6z1CwN1jmhx43WF3e7N8GJzRS6HOkVUr
 teCLTNUBqt6xuUfX6x/qTW/fjF4z3+BgqKx5k13N2iWJ9nMdDgeYooRmorapGeOEo/3f
 3sFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9gJWg9flNrZ5TbihOoh/z3AJf3d2tqOa4g2mAiThDeM=;
 b=a5y1XNw7G0NoD8zPEwvgdl761B1AENWjDQp+u84LMivKFscw4V5JPUUMRcUpS+5qzY
 Ky8yY7EXRHAQOxkULqU9GNNw6OSz3HKyqRH07J10UL0KqPt7KFJ56ytozRKjjR3Le2Vv
 mTmUA8Gj1fzWIzcJALw7MHOtVWuIuCSECjdDhrcOGcvovkqfFxEmJNN25vHiCZ/xGPpn
 cM05l8zHQnk0b9sQ0zqp9fVcnE56ACuqMN1UMq+uHs45PShiVm0bnNN/dXeSIINt+5P8
 Clm6JImeNlKtZDQpUabV0jddsDvJ/O0h/e2pD6zONOeGhO3Sx2KUfAonMJxKr9pTSTXR
 b/aw==
X-Gm-Message-State: AGi0PuZ//DdzT++spvWqtVzxoRlfYDq1tA9+CT0WCi0Omkxp2NPVIAzA
 HMnzwYdbckm8OkK3jUx52JFjSg==
X-Google-Smtp-Source: APiQypKRG49fXk4T9AfC+xyEPdGlqmTjbP7MwJqjfc6m6jwOkEUzENR06R4k2aboxmy2IHqqdJKvHA==
X-Received: by 2002:a05:6000:12c5:: with SMTP id
 l5mr10920553wrx.185.1587241197758; 
 Sat, 18 Apr 2020 13:19:57 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id
 m1sm31735255wro.64.2020.04.18.13.19.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 13:19:56 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv3 05/50] arm: Add loglvl to unwind_backtrace()
Date: Sat, 18 Apr 2020 21:18:59 +0100
Message-Id: <20200418201944.482088-6-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_131959_085023_E6DC7B98 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 343cc27b36c4..d2bd0df2318d 100644
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
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
