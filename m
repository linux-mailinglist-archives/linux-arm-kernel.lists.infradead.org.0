Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76209F0C90
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:08:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4S3sz8bsn8BBeRZ/EqtOyCz23VxR1GDhNGF0jY11DAY=; b=QPLlU4vHMceGdm
	hg2d53xfLVUlpAf6j51L2E4WbI1jMi2LQfbnEp/3gtP71x3g4MSKxbw9DuNDtbKYXmExq5UptVnE6
	ZsOboLPQ8cI4VncnNK0nhKM5LS+yMDCSio6sDV0CWcai4nKXjzvcBpCTA0DmTL4umNLG9goo2xWs3
	kdw/BJP+n103vJgaT6Bf/gLaGoZtKDJaF6Bv6B98IFWEkIRDkM4PlTrE3/MqyB0A0W3exZ3aaGQuW
	jf8EUhINUmyeVy40q4MSG91V6BIgC2JiYIJ8k/835OwNZm7EbgbuCmoLSJ/EBNEU3x6RTJo3A1+N3
	g11oh+uqGwYfToysrlRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBgT-0003Rr-5p; Wed, 06 Nov 2019 03:08:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBek-00023g-DZ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:06:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id r18so404948pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mH9KBFdGIy02JZxT1QReQ3QmWD9fRQIiXWuOgQOgh+g=;
 b=Jc8ZhbezELpHMdltV8DPzafP6vQPlh9x0UnT0wZTbJ93Lv27yVRmw0i5uB6Sfry2Xw
 zHs4cDo0LnqrZ2Q/3dPFMmVATW/oOv7iF2B1g7gRWbYsCrIr74NZXnPkckBTS0lE3KFD
 mjQsEokBqEgD5N5oh2i94TH/aMRrY0RDS14DsUmfwuxPHzCaFdrMWU5wFlEbarOaf/zr
 M6lFGSdNkQ+ax9MBJKMJBsO8DLzLX0cEeO8Zf3A6/s2QQSf4NlewIwZwcrDfJOVYW2Qs
 A78WUTGbd4UxOgdaUV+DZRRFd8by+KR11frl8Mohd7YR6t16xtINiBkTBULikYl1wjab
 j3AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mH9KBFdGIy02JZxT1QReQ3QmWD9fRQIiXWuOgQOgh+g=;
 b=fFBF+7FfIE2438234xQgtlNJbmyTXaQqMEImOfzv6epcth1dof0103O/zTYC3MHQUw
 ZsGBO+xutq6WCCIYrdjAAcBww8rZOOiA7yq/Igm7Kcc2SNCl9U6ms5yykbSLI2WQV1Zj
 Za1CsiEJloXELrceOEKAUAjsY6AKVr5EwSUCPnQYGdXLGEv/HyxDtl52nwnfoPk82EqA
 9zE7Zme3EFSr29iWijXb3NBwLOBlsQlNZFy23DMhbPhpNGJfQ/ClO6RlddK7zLk9CIma
 it6Q5NnYF2YBOcp7F4IO+lhMaiu4a3q3Qz5gjEveDKtyhqu1HJ2vhhZDVX5vZYUrGjPx
 Dqng==
X-Gm-Message-State: APjAAAW3fWtiGRAk0BmVOAdvzifV3a2UqV/aikhPx+kgPbDD0A4o5uLD
 PcBu2QY4OrNBu6OR6vZyp5mpTw==
X-Google-Smtp-Source: APXvYqxDneNdofpipCrXEwSDGjej3gjw6AcUjr3U7+ngBaLcpr/45Qz5Ohf6pjxPgm1QHxP2sjlCJg==
X-Received: by 2002:a17:90a:9741:: with SMTP id i1mr664978pjw.2.1573009609310; 
 Tue, 05 Nov 2019 19:06:49 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:06:48 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 10/50] arm64: Add show_stack_loglvl()
Date: Wed,  6 Nov 2019 03:05:01 +0000
Message-Id: <20191106030542.868541-11-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190650_510682_9D675AEF 
X-CRM114-Status: GOOD (  12.09  )
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
Cc: Petr Mladek <pmladek@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <dima@arista.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
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

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm64/kernel/traps.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 59072c7b9fb4..5b3ae8ed33fd 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -136,12 +136,18 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
 	put_task_stack(tsk);
 }
 
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
