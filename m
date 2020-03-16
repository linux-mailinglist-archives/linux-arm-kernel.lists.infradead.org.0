Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14CD186D8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:42:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UY7/tA5iyXdRvsQc7rAaIaQJUwReSnOd/xigDCjhRI=; b=QjpsrqH6kRJn8N
	3WEO4+smXSR6HzHv7GMJpcMBxHaGtoHnkHDt/wZYjZcbJuMTiOw3TmfCDVqhLsITipi/iAhGkmsbf
	HwJDxbjo3tAxvl+0pI9FChuYPp/phIlTs+fYPjk01GJ9YXqaLEoFEZG1k+YsQy+FRUD8MuVEb4/76
	G56tUZqDJdW2gXhpQ67o5l60dbcqgmMhrHjr2P5Z4FQb0ZW/8Tk3iXWBzXxanWrmkGbz4mKbhsJzi
	hRzv/20aofq1g+C0GzBNoRXNQ8ZXBknQqD7DhNfDt5vdGWH++SvMNQQS/bPJAPeDorQq4pxFZkGO9
	KV4Y4n/V1JclmwaVnAiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqwf-0003pn-E4; Mon, 16 Mar 2020 14:42:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqur-0002HU-Le
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:40:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id z72so30077pgz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 07:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=urHNLfQhgSZxhId56CerdA8qI/pTbhkDosMJIMc+96U=;
 b=VuXFV4S0p0zJmT/b+BXBnIRAf1LhgKRfV+wV0VKglRwBXnyYsZ+d/LLoFN9TM94zgr
 WaR17JqMlUJ+8g6UmGbhdYsuQmZ97yoo3xfFPTrWl2mOrNWT/0G0RctGc6XyIJO/PkF/
 fec1+IeB7QaFr+T8k9/1vEkm/zWL/TCZVG9ZLlcdIDsK7rcmbRtNI+lAWScVc+paWYyZ
 wcvOwUcaUWUxbALtVG0cagwlZA+zEN3O6whFXkuK1Rw3lkn3NSg+zw1viytV7bZhJCyo
 lsPfOYuqPwqPhLoFFwOB3Eij2tAYAKEJL0hcNjqCf2hxscyrl6CFrVrMVgTJ2oGc1Lc4
 5k+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=urHNLfQhgSZxhId56CerdA8qI/pTbhkDosMJIMc+96U=;
 b=sLx17sQbf5gET6gJMe/jMPeEgB/JABzcTjxQvUnt5ji2weD3c+xL9lCJi2RzLwdtkK
 EdFY48KLeGRGF1XQbRrmQy/PCyy83CuV+TaKK3wCqMkAhIspB5S6Ie+RRR4EKx6L1TPu
 YP8qxExAtvWK6zmyo9gocGoc5WIeqskj2+XGsqlswaHmC8WjnaytWQgSMH0iQf9AbsYt
 6kTbBIaH6HhxOulbjXo2cBq0RvnNYnOkHV3dfm0t+Q/E5Rx1j4v2L784aBa0tBcuehnp
 rx/hr346pAjwmpmrNDjkOYoeVFg9sRn0GytIPE4jgNK+Hlw01XB4IohEpY3rx2kA1ObZ
 NlLA==
X-Gm-Message-State: ANhLgQ3MdPUN6T7+gvOcwBPTy2YocdpDFm7uFInx7pKS+BxMQ5WrTkcA
 1WYx+okNiyruCtQY3i/qQUVMc4PsvW1V4g==
X-Google-Smtp-Source: ADFU+vvLU6h1iizXDZ/c/OPZjgMmyqrH0GBzKwotMVtaEeH10SOiZn0xdM5t+Ga+ptP79KwZ0D1zPw==
X-Received: by 2002:a63:ff20:: with SMTP id k32mr138425pgi.371.1584369628536; 
 Mon, 16 Mar 2020 07:40:28 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:40:27 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 10/50] arm64: Add show_stack_loglvl()
Date: Mon, 16 Mar 2020 14:38:36 +0000
Message-Id: <20200316143916.195608-11-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074029_832772_F6254C1B 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
index 6e777cbd4eb5..516e92332fd0 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -137,12 +137,18 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
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
 #elif defined(CONFIG_PREEMPT_RT)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
