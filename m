Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492DAF0C87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ab7E40NBTpqnGLRONlQ+8DbiMFymtOxEFumiNeDNkGY=; b=ClotcCechUSkXQ
	QvZRvad4rCbZaTV+gnCAsyzbGUcVW1IE6B+Q+iUvt4dTyby4j5C/StLzbfeKXBuhDQDX3/q91QN4p
	9oHY4HaGorzkZE3YDpSjNvBV61xF2o/n3xBNCXWrT3Xa31clQmj//i480NkOjG3Igg18RJobkInph
	XHmq4vQjDobrj95VS39FEHZoENeiuHbcoV+w8mR/gYrg3SHRK4aKCxEWMVEms3uxCSdn1iw8+u/v4
	tW6Wg3AxRFGlIL8CTuKkuE/CfR6/xUEB7u8h/cS7GCO7ncgvp+cG4RsDUIDCN+h2mLAQHEBnnB5wa
	hBPTfYs5FNWX5fs/AVBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBff-0002po-Vj; Wed, 06 Nov 2019 03:07:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBeb-0001un-J3
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:06:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id k13so4802032pgh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qXN4VoYXZLjoYLR8zStHwRbThHFXnU8fItsQR3wjSkM=;
 b=RN13XpUnxis0vk5gPGJp6+dY9DlNm0ZQrqCwj1T26hAGxXObJCbCXQVc9I2VKGte9X
 NfzEbyIStYyWaqh8Clu6LMnK+2y8wkiRkhD7iQ/ScpwJuP3DRyV7agtrG4XWiCX0STCz
 h5HFQ4X1K1/WT/0hzY7aKGYOAgleW6SpJhfFzHzmRp4MQfd8i7RHgDjcKptPWjcfX/UW
 vYDoJZFEvKMlpmxwDv5aLm4p4hFyyurvZ5oTdgk+jXHhWT03qO/DSJdp6mUyEQP3Yhty
 z/V+PgX/Zq8d7oQFmnTN1R97lsSiUldejfqyOINyzRY9L38E8DEAQpimASQEh+h6fglI
 5C0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qXN4VoYXZLjoYLR8zStHwRbThHFXnU8fItsQR3wjSkM=;
 b=XMyVI4ZDIhec+F/qSp8u7xxGodxKK9imOYu25xieB9/l9SwtUHvZS0R/pUiY0JRAQd
 bC10E64i9b/RxiKotIVz2im2Hl/IgtEZrjZ7wtpN6QCPOyKoh+/bODoV8QQfF1Hnirk2
 F7+/Cdn5D0z6Dywu5FZlgMrpTQaacULDR6BQIkKC4gSqUkCx/uSf3VD4tRTYCQa9NsBk
 DOomNa3hsCvxpHLDKU27IT5135bVFLvEhEUyWBlNSj+buZn0aWmwN9aIJm15E7zmr+jc
 +XtLWeyjRES0aCyvt2SEeDYClEiOPXeNTQ7FqIqs5mr1VsMZLrkOkwwnz9RZfnaUD9NR
 ne+A==
X-Gm-Message-State: APjAAAWPbQyB9ozRGUdF5UkZ7m8jhjJfVmhP0MPH/AKd4EqzUQ7Vh2BQ
 a4cl44lizj5qnf2XpCqXCjm2mA==
X-Google-Smtp-Source: APXvYqzXQgzKriGqFThfTpYY4opwddI1pJhg56tQrXSwvvuR38gNJcnYpJcf43MM7J1IVkzKA44VnA==
X-Received: by 2002:a63:5951:: with SMTP id j17mr204680pgm.294.1573009600708; 
 Tue, 05 Nov 2019 19:06:40 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:06:39 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 08/50] arm: Add show_stack_loglvl()
Date: Wed,  6 Nov 2019 03:04:59 +0000
Message-Id: <20191106030542.868541-9-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190641_697174_D4A30C73 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Introduce show_stack_loglvl(), that eventually will substitute
show_stack().

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/kernel/traps.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 16022b75a72f..f999a0e4bab8 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -246,12 +246,18 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
 }
 #endif
 
-void show_stack(struct task_struct *tsk, unsigned long *sp)
+void show_stack_loglvl(struct task_struct *tsk, unsigned long *sp,
+		       const char *loglvl)
 {
-	dump_backtrace(NULL, tsk, KERN_DEFAULT);
+	dump_backtrace(NULL, tsk, loglvl);
 	barrier();
 }
 
+void show_stack(struct task_struct *tsk, unsigned long *sp)
+{
+	show_stack_loglvl(tsk, sp, KERN_DEFAULT);
+}
+
 #ifdef CONFIG_PREEMPT
 #define S_PREEMPT " PREEMPT"
 #else
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
