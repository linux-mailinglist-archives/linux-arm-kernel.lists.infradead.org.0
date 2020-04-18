Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527661AF4B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 22:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIgU17GWJ3lARE/f7/qjf+7BnJ1wNzvX7O6mV7QUDsE=; b=Qhgh0uiO9IP8k+
	C6t02GSjNCnOrYrY+LqJjMw3LoZYsJjdhp+7TUvKDvPKFopbq2nhyG1PgE2X6M/bA7cUxSeF3UQh3
	3krTSy5UZLcy4kS0mk236BTmGYY5KNVaDLE14ya2FcK11M1qEfPqt4CJiUqLE4QGp7QLo2/o36Uvt
	xdQh4QCwUwZGt0KQgNQlTNvUJIvKDTLD1LAwWJvNVh0u/WyY11mxHF4W9KefT4Sjf+EGviClKMDHl
	Vw8OcivdSzdy3Sb34PrrB6+fYBRGNko08q9ICxrBIsTFgH+L7HO9whNzwwVLUc7rT39zUWQlhDg8n
	G+ox3J2WIhMYi69FHCug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtxu-0004qB-1Z; Sat, 18 Apr 2020 20:21:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtwb-0001Zi-0B
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 20:20:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id x18so7197952wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 13:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z+YS35j1pthADYOggJksZ21+AYvy9Q5Svl8xq7/1/0E=;
 b=Nn/+89+nvtJcrb7DBbO2QVeuqrrEAsfyt8w3dgJayKBBa48cP9wU+J/JHNKkkhWcZ9
 3c1FWeoaX9CRuZ2udzCWwNPqp+c1Vu3b8YX7z+YwUKwd0bBcNVnK5Tm5zvBX5CmNP2R/
 OimT+kEn+UBfklPCBzqtZkhoZraW1G/57/Thrj0BMB8D1FHsGXkgJeHGCMwV4hPy1Te7
 9Rn0VwctIieJF37geg3dxzn8wxqWSbalM/ps5C2DcoDKs87qrBgZ4LsXaHI79fkXpbzl
 k2kKban/YP7QixnAgSGf+yyKRxSSlgQyBZyJn+dj0bztNz0rShgW9OCTShudtJiOg97x
 QB/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z+YS35j1pthADYOggJksZ21+AYvy9Q5Svl8xq7/1/0E=;
 b=NlYXWP9FOphj9XKZmMr4jphHQySrYNTnPfsCoSD+KRgcDKt4KlZPwG2My8ST/pCpZA
 uaArtqAalW08rjFct5UsH8iBH5Fr9F8PORf9Dnun6WAYcp+iFXNbHJbNBPwgH42o3idH
 PzTd6qpSYfTtJgLr6Wn0IyP5PHTQNyICLPyBZMlK8j0ogpMw+6/oBTSahGODA8YVPFR2
 lqX1QmXeLvF02/5oUxHDNckU18mRwO1vmcwBAfZxt+iAxrM0SQnOeZoS5u0CD0euH3CZ
 qv3odVEzlec3e6O1MmlUX/rczQDMFrh9BYeeN2XP4RVs608+wX7n2PBArPiPtEpnY9vk
 /75Q==
X-Gm-Message-State: AGi0Puaarmc/7c0t8ZfJAeRG5Zc3XkhRF2LU9X01JfUZzNMcnOD9/n1F
 6ZLHFp0y/uKTQCwnH77YoLnQ5w==
X-Google-Smtp-Source: APiQypIYLF+ATds0aKxggIYh9U9zg3NGkQVvBb/u4rvxkjM65KuNTWBa954InfurDolr1GHhBYSjxA==
X-Received: by 2002:adf:e98a:: with SMTP id h10mr10648536wrm.370.1587241201776; 
 Sat, 18 Apr 2020 13:20:01 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id
 m1sm31735255wro.64.2020.04.18.13.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 13:20:01 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv3 08/50] arm: Add show_stack_loglvl()
Date: Sat, 18 Apr 2020 21:19:02 +0100
Message-Id: <20200418201944.482088-9-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_132005_390577_8AE7352F 
X-CRM114-Status: GOOD (  12.58  )
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
index e1be6c85327c..00455b5bbf8a 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -247,12 +247,18 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
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
 #elif defined(CONFIG_PREEMPT_RT)
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
